<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지-전체조회</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>가입일자</th>
				<th>연락처</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="mainInfo">
				<tr>
					<td>${mainInfo.uesrId}</td>
					<td>${mainInfo.userName}</td>
					<td><fmt:formatDate value="${mainInfo.userDate}" pattern="yyyy년 MM월 dd일"/></td>
					<td>${mainInfo.userPhone}</td>
					<td>${mainInfo.userEmail}</td>
				</tr>
			</c:forEach>	
		</tbody>	
	</table>
</body>
</html>