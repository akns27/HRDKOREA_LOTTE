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
	<h2><b>강사조회</b></h2>
	<form>
		<table border="1">
			<tr>
				<td>강사코드</td>
				<td>강사명</td>
				<td>강의명</td>
				<td>수강료</td>
				<td>강사자격취득일</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				try{
					String sql = "select * from tbl_teacher_202201";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String money = rs.getString(4);
						money = '₩' + money.substring(0,3) + ',' + money.substring(3,6);
						
						String date = rs.getString(5);
						date = date.substring(0,4) + '년' + date.substring(4,6) + '월' + date.substring(6,8) + '일';
					
					%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=money %></td>
							<td><%=date %></td>
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