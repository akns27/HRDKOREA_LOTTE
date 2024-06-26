<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>수강신청</title>

<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2><b>수강신청</b></h2>
<script type="text/javascript" src="check.js"></script>
	<form action="action.jsp" name="frm" method="post">
		<table border="1">
			<tr>
				<td>수강월</td>
				<td><input type="text" name="regist_month">2022년 03월 예)202203</td>
			</tr>
			<tr>
			<td>회원명</td>
				<td>
					<select name="c_name" onchange="get(this.value)">
						<option value="">회원명</option>
						<option value="10001">홍길동</option>
						<option value="10002">장발장</option>
						<option value="10003">임꺽정</option>
						<option value="10004">성춘향</option>
						<option value="10005">이몽룡</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>회원번호</td>
				<td><input type="text" name="c_no">예)10001</td>
			</tr>
			<tr>
				<td>강의장소</td>
				<td>
					<select name="class_area">
						<option value="강의장소">강의장소</option>
						<option value="서울분원">서울분원</option>
						<option value="성남분원">성남분원</option>
						<option value="대전분원">대전분원</option>
						<option value="부산분원">부산분원</option>
						<option value="대구분원">대구분원</option>
					</select>
				</td>
			</tr>
			<tr>
			<td>강의명</td>
			<td>
			<select name="class_name" onchange="make(this.value)">
					<option value="0"></option>
					<option value="100">초급반</option>
					<option value="200">중급반</option>
					<option value="300">고급반</option>
					<option value="400">심화반</option>
			</select>
			</td>
			</tr>
				<tr>
					<td>수강료</td>
					<td><input type="text" name="tuition">원</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수강신청" onClick="return joinCheck()">
						<input type="button" value="다시쓰기" onClick="return reset()">
					</td>
				</tr>
		</table>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>