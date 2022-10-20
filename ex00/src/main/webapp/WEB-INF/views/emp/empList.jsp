<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
	table, tr, th, td{
		border : 1px solid black;
		margin : 0px;
		padding :  0px;
	}
</style>
</head>
<body>
	<div id="dataList">
		<button type="button" onclick="location.href='insertForm'">사원 등록</button>
			<table>
				<thead>
					<tr>
						<th>회원번호</th>
						<th>성</th>
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>업무ID</th>
						<th>급여</th>
						<th>매니저ID</th>
						<th>부서번호</th>
					</tr>
					<c:forEach items="${empInfoList}" var="empInfo">
						<tr onclick="location.href='info?employeeId=${empInfo.employeeId}'">
							<td>${empInfo.employeeId}</td>
							<td>${empInfo.firstName}</td>
							<td>${empInfo.lastName}</td>
							<td>${empInfo.email}</td>
							<td>${empInfo.phoneNumber}</td>
							<td>${empInfo.jobId}</td>
							<td>${empInfo.salary}</td>
							<td>${empInfo.managerId}</td>
							<td>${empInfo.departmentId}</td>
							<!-- 1020마지막시간 삭제기능 구현해보기 -->
							<td><button>삭제</button></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
			<form action="" id="input">
				<input type="hidden" name="employeeId">
			</form>
	</div>
<%-- 	<h1>${empInfoList}</h1> --%>
	<script type="text/javascript">
/* 		let empList = [];
		let emp = {};
			<c:forEach items="${empInfoList}" var="empInfo">
				emp = {
						employeeId : '${empInfo.employeeId}',
						firstName : '${empInfo.firstName}',
						lastName : '${empInfo.lastName}',
						departmentId : '${empInfo.departmentId}',
						jobId : '${empInfo.jobId}'
				}
				empList.push(emp);
			</c:forEach>
			console.log(empList);
			$('tbody').empty();
			let thTag = $('#dataList th');
			
			$(empList).each(function(idx, obj)                ) */
/* 			$('#dataList td').click(function(){
작동	안함			let empId= $(this).parent().attr('name');
				$.ajax({
					url : 'info',
					data : {"employeeId" : empId},
					async : true, //동기식으로 돌린다는 뜻 기본은 false(비동기)
					success : function(data){
						console.log(data);
					},
					error : function(rejcet){
						console.log(reject);
					}
				});
			}); */
			let message='${msg}';
			if(message != null && message !=''){
				alert(message);
			}
			
			$('#dataList td').click(function(){
				let empId = $(this).parent().attr('name');
				$('#input>input').val(empId);
				$('#input').prop('action', 'info').prop('method', 'get').submit();
			});
			
			$.ajax({
				url : 'delete/'+empId,
				success : function(data){
					console.log(data);
				},
				error : function(reject){
					console.log(reject)
				}
				/* 1020오후수어ㅜㅂ 이 후 url 구성해서 보내면 되는데
				데이터타입, 컨텐츠타입, 필요없음*/
			})
	</script>
 </body>
</html>