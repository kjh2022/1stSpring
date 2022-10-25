<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>표지</th>
				<th>출판일</th>
				<th>가격</th>
				<th>작가</th>
				<th>내용</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="bookInfo">
				<tr>
					<td>${bookInfo.bookNo}</td>
					<td>${bookInfo.bookName}</td>
					<!-- 
					<td><img src="${pageContext.request.contextPath}/resources/images/${bookInfo.bookCovering}"></td>
					 -->
					 <td><img src="<c:url value='resources/images/${bookInfo.bookCovering}' />" style="width:200px"></td>
					<td><fmt:formatDate value="${bookInfo.bookDate}" pattern="yyyy년 MM월 dd일" /></td>
					<td><fmt:formatNumber value="${bookInfo.bookPrice}" ></fmt:formatNumber></td>
					<td>${bookInfo.bookPublisher}</td>
					<td>${bookInfo.bookInfo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>