<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
 <a href="http://localhost:9090/controller/">
TO HOME</a>


Error Error!!! Mayday-!

Because of ...


<h4><c:out value="${exception.getMessage() }"></c:out></h4>

<ul>
<c:forEach items="${exception.getStackTrace() }" var="stack">
	<li><c:out value="${stack }"></c:out></li>
</c:forEach>
</ul>

</body>
</html>