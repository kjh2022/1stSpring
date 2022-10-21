<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>

</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<td>${board.bno }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${board.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.writer }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="3" cols="2" style="width: 100px;" readonly>
					${board.contents}</textarea></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><img alt="이미지" src="<c:url value='/resources/images/${board.image}' />">
				
			</td>
		</tr>
		<tr>
			<th>작성일자</th>
			<td><fmt:formatDate value="${board.regdate}" pattern="yyyy년 MM월 dd일"/></td>
		</tr>
	</table>
</body>
</html>