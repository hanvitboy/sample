<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<html>
<head>
	<title>Home</title>
	<script>
	
	
	</script>
	
</head>
<body>
<h1>
	Hello world!  
</h1>



<P>  여기는 홈이로다  </P>
<c:if test="${not empty login_user.name}">
	<p>${login_user.name}님 반갑습니다.</p>
</c:if>
<iframe width="560" height="315" src="https://www.youtube.com/embed/wc_cmQmjHSY?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>
<c:if test="${empty login_user.name}">
<form action="loginpage" method="post">
<input type="submit" value="login">
</form>
</c:if>
<c:if test="${not empty login_user.name}">
<form action="logout" method="get">
<input type="submit" value="logout">
</form>
</c:if>

<form action="registpage" method="post">
<input type="submit" value="regist">
</form>

<form action="infopage" method="post">
<input type="submit" value="myinfo">
</form>


<form action="withdrawalpage" method="post">
<input type="submit" value="withdrawal">
</form>

<form action="listpage" method="get">
<input type="submit" value="list">
</form>



</body>
</html>
