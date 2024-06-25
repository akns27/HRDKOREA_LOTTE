<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<h2><b>차량조회</b></h2>
	
	<form>
		<table border="1">
			<tr>
				<td>차량번호를 입력하세요</td>
				<td><input name="car_number" type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button onClick="searchCheck()">치량조회</button>
					<button onClick="home()">홈으로</button>
				</td>
			</tr>
		</table>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>