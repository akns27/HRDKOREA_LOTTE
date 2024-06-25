<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
		request.setCharacterEncoding("UTF-8");
		String mode = request.getParameter("mode");
		String car_number2 = request.getParameter("car_number2");
		String owner_name = request.getParameter("owner_name");
		String location = request.getParameter("location");
		String entrance_time = request.getParameter("entrance_time");
		String out2 = request.getParameter("out2");
		String car_number3 = request.getParameter("car_number3");
		String blank="";
		
		try{
			String sql = "";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			switch(mode){
			case "insert" :
				sql = String.format("insert into tbl_parking_202301 values('%s', '%s', '%s', '%s')", car_number2, location, entrance_time, blank);
				pstmt.executeUpdate(sql);
			
			%>
			<%
				break;
			case "out" :
				sql = String.format("update tbl_parking_202301 set departure_time='%s' where car_number = '%s'", out2, car_number3);
				pstmt.executeUpdate(sql);
			%>
			<%
				break;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>location.replace("search_list.jsp")</script>
</html>