<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 동적인 sbmit 처리를 위한 onsubmit으로 함수 사용 -->
	<form action="bookinsert" method="post" onsubmit="return formOption()">
		<table>
			<tr>
				<th>도서 번호</th>
				<!-- 컨트롤러에서 받아오는것,  -->
				<td><input type="text" name="bookNo" value="${info.bookNo}" readonly></td>
			</tr>
			<tr>
				<th>도서명</th>
				<td><input type="text" name="bookName" value=""></td>
			</tr>
			<tr>
				<th>도서 표지</th>
				<td><input type="text" name="bookCovering" value=""></td>
			</tr>
			<tr>
				<th>출시일</th>
				<td><input type="date" name="bookDate" value=""></td>
			</tr>
			<tr>
				<th>금액</th>
				<td><input type="text" name="bookPrice" value=""></td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type="text" name="bookPublisher" value=""></td>
			</tr>
			<tr>
				<th>도서 소개</th>
				<td><textarea rows="3" cols="3" name="bookInfo"></textarea></td>
			</tr>
		</table>
		<button type="submit">등록</button>
		<button type="button">조회</button>
	</form>
	<script type="text/javascript">
	function formOption(){
		//1.도서명 입력여부 확인 name값이 중복이 안돼기 때문에 name값만으로도 찾기 가능
		let tag=$('input[name="bookName"]');
		if(tag.val() == ''){
			alert("도서명이 입력 되지 않았습니다.");
			tag.focus();
			return false;
		}
		//2.등록 알림창 띄우기
		alert("도서 등록이 완료되었습니다.");
		return true;
	}
	</script>
</body>
</html>