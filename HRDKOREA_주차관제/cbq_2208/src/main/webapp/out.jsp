<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>차량출차</b></h2>
	<form method="post" name="frm" action="action.jsp">
	<input type="hidden" name="mode" value="out">
		<table border="1">
			<%
				request.setCharacterEncoding("UTF-8");
			%>
			<tr>
				<td>차량번호</td>
				<td><select name="car_number3">
					<option value="">차량번호</option>
					<option value="11가 1111">11가 1111</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>소유자이름</td>
				<td><input type="text" name="owner_name2" readonly></td>
			</tr>
			<tr>
				<td>출차시간</td>
				<td><input type="text" name="out2" onchange="get(this.value)">예)22:03</td>
			</tr>
			<tr>
				<td colspan="2">
					<button onClick="joinCheck2()">출차등록</button>
					<button onClick="reset()">다시쓰기</button>
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>