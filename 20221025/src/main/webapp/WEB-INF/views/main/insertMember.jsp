<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert User</title>

</head>
<body>
	<div id="container" align="center">
		<div>
			<h1>회원가입</h1>
		</div>
		<div>
			<form action="insert" method="post">
				<table>
					<tr>
						<th>아이디</th>
						<td><input name="userId" type="text"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input name="userPassword" type="password"></td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td><input name="userDate" type="date"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input name="userName" type="text"></td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td><input name="userNic" type="text"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input name="userPhone" type="text"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input name="userEmail" type="email"></td>
					</tr>
					<tr>
						<th>권한</th>
						<td><input name="userType" type="text" value="1"
							readonly="readonly"></td>
					</tr>
					<tr>
				</table>
				<br>
				<button type="submit">가입</button>
				<button type="button">취소</button>
			</form>
		</div>
	</div>
</body>
</html>