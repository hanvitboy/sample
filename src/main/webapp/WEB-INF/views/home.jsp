<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="/resources/jquery.min.js"></script>

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



<P>  여기는 홈이로다 - ${login_user.name} </P>
<iframe width="560" height="315" src="https://www.youtube.com/embed/wc_cmQmjHSY?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>

<form action="loginpage" method="post">
<input type="submit" value="login">
</form>
<form action="logout" method="get">
<input type="submit" value="logout">
</form>

<form action="registpage" method="post">
<input type="submit" value="regist">
</form>

<form action="withdrawalpage" method="post">
<input type="submit" value="withdrawal">
</form>

<form action="listpage" method="get">
<input type="submit" value="list">
</form>



</body>
</html>
