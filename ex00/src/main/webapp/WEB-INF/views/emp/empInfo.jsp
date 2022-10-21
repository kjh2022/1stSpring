<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 포맥과 관련된 tag(숫자,날짜) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
	<form action="updateSal" method="post">
		<table border="1">
			<tr>
				<th>사원번호</th>
				<td><input type="number" name="employeeId" id="employeeId" value="${empInfo.employeeId}" readonly></td>
			</tr>
			<tr>
				<th>성</th>
				<td>${empInfo.firstName}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${empInfo.lastName}</td>
			</tr>
			<tr>
				<th>입사일</th>
				<td><c:formatDate value="${empInfo.hireDate}" pattern="yyyy년MM월dd일"/></td>
			</tr>
			<tr>
				<th>부서번호</th>
				<td>${empInfo.departmentId}</td>
			</tr>
			<tr>
				<th>직업</th>
				<td>${empInfo.jobId}</td>
			</tr>
			<tr>
				<th>급여</th>
				<td>
					<c:formatNumber value="${empInfo.salary}" />
				</td>
			</tr>
		</table>
		<button type="submit">연봉 인상</button>
		<button type="submit">정보 수정</button>
		
	</form>
</body>
</html>