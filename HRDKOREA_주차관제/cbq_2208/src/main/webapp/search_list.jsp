<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>search list</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>차량조회</b></h2>
	<form>
		<table border="1">
			<tr>
				<td>차량번호</td>
				<td>차량종류</td>
				<td>소유자이름</td>
				<td>주차위치</td>
				<td>입차시간</td>
				<td>출차시간</td>
			</tr>
			<%
				request.setCharacterEncoding("UTF-8");
				String car_number = request.getParameter("car_number");
				try{
					String sql = "select * from tbl_car_202301 natural join tbl_parking_202301 ";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
								<td><%=rs.getString(6) %></td>
							</tr>
						<%
					}
					
					
				}
				catch(Exception e){
					e.printStackTrace();
				}
				
			%>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>