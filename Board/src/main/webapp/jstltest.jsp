<%@page import="test.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstltest.jsp</title>
</head>
<body>
<%
ArrayList<UserVO> list = new ArrayList<>();
	list.add(new UserVO("이신"));
	list.add(new UserVO("순신"));
	list.add(new UserVO("신신"));
request.setAttribute("userList", list);
request.setAttribute("content", "<u>test</u>");
%>
${content} <hr>
<c:out value="${content}" /><hr>
<c:out value="${content}" escapeXml="fasle" /><hr>

${fn:startsWith(userList[0].username,'박')}<br>

총원 : ${fn:length(userList)} 명 입니다.<br>
<c:forEach items="${userList}" var="user" varStatus="st">
${st.count} ${user.username} <br>
</c:forEach>
</body>
</html>