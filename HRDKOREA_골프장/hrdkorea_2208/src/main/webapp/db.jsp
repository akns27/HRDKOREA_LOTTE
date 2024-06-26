<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% /* 자바 DB 연동 샘플 소스코드 */ 
	Class.forName("oracle.jdbc.OracleDriver"); 
	Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@//localhost:1521/xe","system","1234"); 

%>
</body>
</html>