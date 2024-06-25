<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량입차</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2><b>차량입차</b></h2>
<form method="post" name="frm" action="action.jsp">
<script type="text/javascript" src="check.js"></script>
<input type="hidden" name="mode" value="insert">
	<table border="1">
		
				<%
					request.setCharacterEncoding("UTF-8");
				%>
				<tr>
					<td>차량번호</td>
					<td><input type="text" name="car_number2">예)22가 1111</td>
				</tr>
				<tr>
					<td>소유자이름</td>
					<td><input type="text" name="owner_name">예)백선수</td>
				</tr>
				<tr>
					<td>주차위치선택</td>
					<td>
					<input type="radio" name="location" value="A001">A001
					<input type="radio" name="location" value="A002">A002
					<input type="radio" name="location" value="A003">A003
					<input type="radio" name="location" value="A004">A004
					<input type="radio" name="location" value="A005">A005
					</td>
				</tr>
				<tr>
					<td>입차시간</td>
					<td><input type="text" name="entrance_time">예)22:22</td>
				</tr>
				<tr>
					<td colspan="2">
						<button onClick="joinCheck()">입차등록</button>
						<button onClick="reset()">다시쓰기</button>
					</td>
				</tr>
				
			</table>
		</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>