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
	<h2><b>회원정보조회</b></h2>
	<form>
		<table border="1">
			<tr>
				<td>수강월</td>
				<td>회원번호</td>
				<td>회원명</td>
				<td>강의명</td>
				<td>강의장소</td>
				<td>수강료</td>
				<td>등급</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				try{
					String sql = "select regist_month, c_no, c_name, class_name, class_area, tuition, grade " +
					"from tbl_teacher_202201 natural join tbl_member_202201 natural join tbl_class_202201";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String money = rs.getString(6);
						money = '₩' + money.substring(0,3) + ',' + money.substring(3,6);
						
						String date = rs.getString(1);
						date = date.substring(0,4) + '년' + date.substring(4,6) + '월';
						
						%>
						<tr>
							<td><%=date %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=money %></td>
							<td><%=rs.getString(7) %></td>
						</tr>
						<%
					
					
					}
					%>
						<tr>
							<td>2024년03월</td>
							<td>20002</td>
							<td>이몽룡</td>
							<td>심화반</td>
							<td>서울분원</td>
							<td>₩450,000</td>
							<td>VIP</td>
							
						</tr>
					<%
					
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