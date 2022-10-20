<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<body>
	<form action="users" method="post">
		<input type="text" name="name">
		<input type="number" name="age">
		<button type="submit">전송</button>
	</form>
	<p>리스트로 처리</p>
	<form action="userList" method="post">
		<input type="text" name="list[0].name">
		<input type="number" name="list[0].age">
												<br>	
		<input type="text" name="list[1].name">
		<input type="number" name="list[1].age">
												<br>
		<button type="submit">전송</button>
	</form>
												<br>
	<button onclick="javascript:ajaxUserList();">ajax</button>
	<script type="text/javascript">
		function ajaxUserList(){
			let data = [
				{"name" : "한국사람", "age" : 31},
				{"name" : "신정환", "age" : 48}
			]
			$.ajax({
				url : 'userList',
				type : 'post',
				contentType : 'application/json',
				data : JSON.stringify(data),
				success : function(data){
					console.log(data);
				},
				error : function(reject){
					console.log(reject);
				}
			});
		}
	</script>
</body>
</html>