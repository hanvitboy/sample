<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>

<div id="youchu">
<iframe width="560" height="315" src="https://www.youtube.com/embed/wc_cmQmjHSY?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>
킨니쿠 운동
</div>

</body>
<style>
#youchu{
  margin-top: 25vh;
 }

</style>
<script>

 
var actionForm = $(".actionForm");
       	$(document).ready(function(){
       		$(".button-login").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/loginpage").attr("method", "post");
       			actionForm.submit();
       		})
       		$(".button-signup").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/registpage").attr("method", "post");
       			actionForm.submit();
       		})
       		$(".button-logout").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/logout");
       			actionForm.submit();
       		})
       		$(".button-info").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/infopage").attr("method", "post");
       			actionForm.submit();
       		})
       		$(".button-list").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/listpage");
       			actionForm.submit();
       		})
       		
       			$(".button-home").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/home").attr("method", "post");
       			actionForm.submit();
       		})
       		$("#calo").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/kcalcalpage").attr("method", "post");
       			actionForm.submit();
       		})
       		$("#nav-listboard").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/board/boardpage").attr("method", "get");
       			actionForm.submit();
       		})
       	})
       	
</script>

</html>