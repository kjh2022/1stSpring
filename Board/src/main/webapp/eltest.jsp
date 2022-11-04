<%@page import="java.util.ArrayList"%>
<%@page import="test.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eltest.jsp</title>
</head>
<body>
<%//가장 작은 범위page < request < session < application
session.setAttribute("userInfo", new UserVO("홍길동"));
request.setAttribute("userInfo", new UserVO("이순신"));

ArrayList<UserVO> list = new ArrayList<>();
	list.add(new UserVO("이신"));
	list.add(new UserVO("순신"));
	list.add(new UserVO("신신"));
request.setAttribute("userList", list);
%>

<hr>
el내장객체 사용 : null Check, 자동형변환 모두 가능
<hr>
<%=request.getParameter("name") %> : ${param.name}
<hr>
<%-- 
 <%=((UserVO)request.getAttribute("userInfo")).getUsername()%> : 
 --%>
${requestScope.userInfo.getUsername()}
${sessionScope.userInfo.getUsername()}
<%=request.getContextPath()%> : ${pageContext.request.contextPath}
ip : ${pageContext.request.remoteAddr}
<hr>
<%=request.getHeader("User-Agent") %> : ${header['User-Agent'] }
<hr>
${cookie.JSESSIONID.value}

<script type="text/javascript">
obj = {name : '어버버', age : '으웨엑'}
sessionStorage.setItem("openYn", "YES")
localStorage.setItem("obj", JSON.stringify(obj))
</script>
</body>
</html>