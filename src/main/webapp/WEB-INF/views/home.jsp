<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<!DOCTYPE html>
<html lang="ko">
  <head>
   <link href="resources/css/style.css" rel="stylesheet">
  
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./style.css" />
  <style>

  a{ color: inherit;
  text-decoration: none;}
 
  .main {
  width: 100%;
  height: 100vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
  url("resources/assets/main.jpg");
  
  background-repeat: no-repeat;
  background-size: cover;
  
  
}
  
  </style>
  
  </head>
  <body>
  
    <section class="header-top">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="header">
              <div class="logo">
                <a href="#">
                <img src="resources/assets/Logo.png" alt="Logo" />
                  <p>
                    <strong><span>fit</span>ness</strong>
                  </p>
                </a>
              </div>
              <div class="nav">
                <ul>
                <form id="actionForm" method="post">
                  <a class="nav-list"  href="#"><li>체중관리</li></a>
                  </form>
                  
                  <a class="nav-list" href="#"><li>운동도우미</li></a>
               
                  <a class="nav-list" href="#"><li>음식</li></a>
                </ul>
              </div>
             <div>
         <c:if test="${not empty login_user.name}">
	<p><input class="message" type="text" value='${login_user.name}님 반갑습니다.'></p> </c:if>
<c:if test="${not empty login_user.name}">
</c:if>
             </div>
              <div class="button-group">
           <c:if test="${empty login_user.name}">
              <form id="actionForm" action="loginpage" method="post">
                <a class="button-login" href="#" role="button">LOGIN</a>
                </form>
                <a class="button-signup" href="#">SIGNUP</a>
                 </c:if>
                 <c:if test="${not empty login_user.name}">
<form action="logout" method="get">
<input type="submit" value="logout">
</form>
</c:if>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="main">
  
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="main-title">
              <h1>당신의 몸을 생각하며 만들었습니당.</h1>
              <p>당신의 몸상태를 체크하세용.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
     <script type="text/javascript">
     
            	$(document).ready(function(){
			     var actionForm = $("#actionForm");
            		$(".button-login").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/loginpage");
            			actionForm.submit();
            		})
            		$(".button-signup").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/registpage");
            			actionForm.submit();
            		})
            		$(".nav-list").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/kcalcalpage");
            			actionForm.submit();
            		})
            		
            	})
            	</script>
  </body>
</html>
