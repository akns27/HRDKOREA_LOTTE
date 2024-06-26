<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String date = request.getParameter("date");
	String c_name = request.getParameter("c_name");
	String c_no = request.getParameter("c_no");
	String class_area = request.getParameter("class_area");
	String class_name = request.getParameter("class_name");
	String money = request.getParameter("money");
	String grade = "null";
	
	try{
		String sql = " ";
		PreparedStatement pstmt = null;
		
		String Sql = "insert into tbl_class_202201 values(?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, date);
		pstmt.setString(2, c_no);
		pstmt.setString(3, c_name);
		pstmt.setString(4, class_name);
		pstmt.setString(5, class_area);
		pstmt.setInt(6, Integer.parseInt(money));
		pstmt.setString(7, grade);
		
		pstmt.executeUpdate();

		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>