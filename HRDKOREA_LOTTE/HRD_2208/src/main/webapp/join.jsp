<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src="check.js"></script>
<section>
	<h2><b>선수 등록</b></h2>
	<form method="post" action="action.jsp" name="frm">
	<input type="hidden" name="mode" value="insert">
	<table border="1">
		<%
		request.setCharacterEncoding("UTF-8");
		String pid="";
		try{
			String sql = "select max(pid)+1 pid from giants_player";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);
			rs.next();
			pid = rs.getString("pid");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		%>
		
		<tr>
			<td>선수번호</td>
			<td><input type="text" name="pid" value="<%=pid%>" readonly></td>
		</tr>
		<tr>
			<td>선수이름</td>
			<td><input type="text" name="pname"></td>
		</tr>
		<tr>
			<td>선수포지션</td>
			<td>
				<select name="pposition">
					<option value="">포지션선택</option>
					<option value="투수">투수</option>
					<option value="내야수">내야수</option>
					<option value="외야수">외야수</option>
					<option value="포수">포수</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>선수등록일</td>
			<td><input type="text" name="pdate"></td>
		</tr>
		<tr>
		<td>선수등급</td>
		<td>
		
			<input type="radio" name="pgrade" value="S">S
			<input type="radio" name="pgrade" value="A">A
			<input type="radio" name="pgrade" value="B">B
			<input type="radio" name="pgrade" value="C">C
		</td>
		</tr>
		<tr>
		<td colspan="2">
			<input type="button" value="등록" onClick="return joincheck()">
			<input type="button" value="다시쓰기" onClick="return reset2()">
		</td>
		</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>