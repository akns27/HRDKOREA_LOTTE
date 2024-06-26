<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>강사정보조회</b></h2>
	<form>
		<table border="1">
			<tr>
				<td>강사코드</td>
				<td>강의명</td>
				<td>강사명</td>
				<td>총매출</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				try{
					String sql = "select teacher_code, class_name, teacher_name, sum(tuition) " +
					"from tbl_teacher_202201 natural join tbl_member_202201 natural join tbl_class_202201 " +
					"group by teacher_code, class_name, teacher_name " +
					"order by teacher_code";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String money = rs.getString(4);
						money = '₩' + money.substring(0,3) + ',' + money.substring(3,6);
					
						
						%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=money %></td>
						</tr>
						<%
					
					
					}
					
				}catch(Exception e){
					e.printStackTrace();
				}
			%>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>