<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fitness Page</title>
    <script
      src="https://kit.fontawesome.com/3435530994.js"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
 <style>
 * {
  box-sizing: border-box;
  margin: 0;
}

body {
  font-family: "DM Sans", sans-serif;
  font-family: "Noto Sans JP", sans-serif;
}

/* Reset CSS */
a {
  color: inherit;
  text-decoration: none;
}

button,
input,
textarea {
  font-family: "DM Sans", sans-serif;
  font-size: 16px;
}

button:focus,
button:active,
input:focus,
input:active,
textarea:focus,
textarea:active {
  outline: none;
  box-shadow: none;
}

ol,
ul,
li {
  list-style-type: none;
  padding-left: 0;
  margin-left: 0;
}

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
  flex-wrap : nowrap;
}

/* logo */
.navbar-logo {
  display: flex;
  align-items: center;
}

.navbar-logo a {
  font-size: 30px;
}

.navbar-logo span {
  color: #f7ca18;
}

.navbar-logo img {
  max-width: 100%;
  max-height: 60px;
}

/* menu */
.navbar-menu {
  display: flex;
  margin-bottom: 0;
  
}

.navbar-menu li {
  padding: 8px 12px;
  font-size: 18px;
  letter-spacing: 0.2em;
}

.navbar-menu li:hover {
  color: #f7ca18;
  transition: all 0.3s ease;
}

.navbar-toggleBtn {
  display: none;
  position: absolute;
  top: 25px;
  right: 55px;
  color: #f7ca18;
}

/* logins */
.navbar-logins {
  display: flex;
  margin-bottom: 0;
}

.navbar-logins .message {
  display: flex;
  align-items: center;
  padding: 4px 8px;
  margin-right: 8px;
}

.button-group {
  display: flex;
}

.button-group .button-login {
  color: #000;
  cursor: pointer;
  display: block;
  position: relative;
  border: 2px solid #f7ca18;
  border-radius: 4px;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  text-align: center;
  padding: 4px 8px;
  font-size: 14px;
  margin-right: 8px;
}

.button-group .button-login:hover {
  color: #fff !important;
  background-color: transparent;
  text-shadow: none;
}

.button-group .button-login:hover:before {
  top: 0%;
  bottom: auto;
  height: 100%;
}

.button-group .button-login:before {
  display: block;
  position: absolute;
  left: 0px;
  top: 0px;
  height: 0px;
  width: 100%;
  z-index: -1;
  content: "";
  color: #000 !important;
  background: #f7ca18;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}

.button-group .button-logout {
  color: #000;
  cursor: pointer;
  display: block;
  position: relative;
  border: 2px solid #f7ca18;
  border-radius: 4px;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  text-align: center;
  padding: 4px 8px;
  font-size: 14px;
  margin-right: 8px;
}

.button-group .button-logout:hover {
  color: #fff !important;
  background-color: transparent;
  text-shadow: ntwo;
}
.button-group .button-logout:hover:before {
  bottom: 0%;
  top: auto;
  height: 100%;
}
.button-group .button-logout:before {
  display: block;
  position: absolute;
  left: 0px;
  bottom: 0px;
  height: 0px;
  width: 100%;
  z-index: -1;
  content: "";
  color: #000 !important;
  background: #f7ca18;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}

.button-group .button-info {
  color: #000;
  cursor: pointer;
  display: block;
  position: relative;
  border: 2px solid #f7ca18;
  border-radius: 4px;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  text-align: center;
  padding: 4px 8px;
  font-size: 14px;
  margin-right: 8px;
}

.button-group .button-info:hover {
  color: #fff !important;
  background-color: transparent;
  text-shadow: none;
}

.button-group .button-info:hover:before {
  top: 0%;
  bottom: auto;
  height: 100%;
}

.button-group .button-info:before {
  display: block;
  position: absolute;
  left: 0px;
  top: 0px;
  height: 0px;
  width: 100%;
  z-index: -1;
  content: "";
  color: #000 !important;
  background: #f7ca18;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}

.button-group .button-list {
  color: #000;
  cursor: pointer;
  display: block;
  position: relative;
  border: 2px solid #f7ca18;
  border-radius: 4px;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  text-align: center;
  padding: 4px 8px;
  font-size: 14px;
  margin-right: 8px;
}

.button-group .button-list:hover {
  color: #fff !important;
  background-color: transparent;
  text-shadow: none;
}

.button-group .button-list:hover:before {
  top: 0%;
  bottom: auto;
  height: 100%;
}

.button-group .button-list:before {
  display: block;
  position: absolute;
  left: 0px;
  top: 0px;
  height: 0px;
  width: 100%;
  z-index: -1;
  content: "";
  color: #000 !important;
  background: #f7ca18;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}

.button-group .button-signup {
  color: #000;
  cursor: pointer;
  display: block;
  position: relative;
  border: 2px solid #f7ca18;
  border-radius: 4px;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  text-align: center;
  padding: 4px 8px;
  font-size: 14px;
  margin-right: 8px;
}

.button-group .button-signup:hover {
  color: #fff !important;
  background-color: transparent;
  text-shadow: ntwo;
}
.button-group .button-signup:hover:before {
  bottom: 0%;
  top: auto;
  height: 100%;
}
.button-group .button-signup:before {
  display: block;
  position: absolute;
  left: 0px;
  bottom: 0px;
  height: 0px;
  width: 100%;
  z-index: -1;
  content: "";
  color: #000 !important;
  background: #f7ca18;
  transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
}

/*.navbar-logins li {
  padding: 8px 12px;
}

.navbar-logins li:hover {
  background-color: #f7ca18;
  color: #fff;
  border-radius: 5px;
  transition: all 0.3s ease;
}*/

.navbar-loginBtn {
  display: none;
  position: absolute;
  top: 25px;
  right: 20px;
  color: #f7ca18;
}

/* main */

.main {
  width: 100%;
  height: 100vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(./assets/main.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

.main-title {
  color: #fff;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.main-title p {
  font-size: 30px;
}

/* main-infomation */
.main-information {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100vh;
}

.main-information.a {
  background-color: #202020;
  background-size: cover;
}
.main-information.b {
  background-color: #2e2e2e;
}
.main-information.c {
  background-color: #3a3a3a;
}

.main-information h1 {
  color: lightgray;
}

.main-information p {
  color: #fff;
}

.main-info {
  display: flex;
  justify-items: center;
  align-items: center;
}

.main-info1 {
  margin-top: 50px;
}

.main-info-explain {
  padding: 100px;
  margin-right: 30px;
  text-align: center;
}

.main-info-explain h1 {
  margin-bottom: 20px;
}

.btn-area .btn-next {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 200px;
  height: 40px;
  line-height: 40px;
  border: 2px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
}

.btn-area .btn-next:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}

/* footer */
footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0;
  width: 100%;
  height: 15px;
  clear: both;
  font-size: 13px;
  background: #f7ca18;
}

footer p {
  margin-bottom: 0;
}

footer .number {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

footer .number p:first-child {
  margin-right: 10px;
}

/*  <=768px (mobile) */
@media screen and (max-width: 768px) {


 .card {
 display: none;
 }


  .s30 {
    font-size: 24px;
  }

  .navbar {
    min-width: 360px;
    flex-direction: column;
    align-items: flex-start;
    padding: 8px 24px;
    position: relative;
    z-index: 1;
  }

  /* logo */
  .navbar-logo img {
    max-width: 100%;
    max-height: 50px;
  }

  /* menu */
  .navbar-menu {
    display: none;
    flex-direction: column;
    text-align: center;
    width: 100%;
  }

  .navbar-menu li {
    border-bottom: 2px solid #f7ca18;
  }

  .navbar-menu.active {
    display: flex;
  }

  .navbar-toggleBtn {
    display: flex;
  }

  @media (hover: hover) {
    .navbar-menu li:hover {
      color: #f7ca18;
      transition: all 0.3s ease;
    }
  }

  /*.navbar-menu .weight-management {
    color: #000;
    cursor: pointer;
    display: block;
    position: relative;
    border: 2px solid #f7ca18;
    border-radius: 4px;
    transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
    text-align: center;
    padding: 4px 8px;
    font-size: 14px;
    margin-right: 8px;
  }

  .navbar-menu .weight-management :hover {
    color: #fff !important;
    background-color: transparent;
    text-shadow: none;
  }

  .navbar-menu .weight-management :hover:before {
    top: 0%;
    bottom: auto;
    height: 100%;
  }

  .navbar-menu .weight-management :before {
    display: block;
    position: absolute;
    left: 0px;
    top: 0px;
    height: 0px;
    width: 100%;
    z-index: -1;
    content: "";
    color: #000 !important;
    background: #f7ca18;
    transition: all 0.4s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;
  }*/
  /* logins */
  .navbar-logins {
    display: none;
    flex-direction: column;
    text-align: center;
    width: 100%;
  }

  .navbar-logins .message {
    flex-direction: column;
    margin-right: 0;
    margin-bottom: 3px;
  }

  .button-group {
    flex-direction: column;
  }

  .button-group li {
    margin-bottom: 3px;
  }

  .button-group .button-login {
    border: none;
    border-bottom: 2px solid #f7ca18;
    border-radius: 0;
    margin-right: 0;
  }

  .button-group .button-logout {
    border: none;
    border-bottom: 2px solid #f7ca18;
    border-radius: 0;
    margin-right: 0;
  }

  .button-group .button-info {
    border: none;
    border-bottom: 2px solid #f7ca18;
    border-radius: 0;
    margin-right: 0;
  }

  .button-group .button-list {
    border: none;
    border-bottom: 2px solid #f7ca18;
    border-radius: 0;
    margin-right: 0;
  }

  .button-group .button-signup {
    border: none;
    border-bottom: 2px solid #f7ca18;
    border-radius: 0;
    margin-right: 0;
  }

  .navbar-logins.active {
    display: flex;
  }

  .navbar-loginBtn {
    display: flex;
  }

  /* main */
  .main {
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://img.wallpapersafari.com/phone/750/1334/58/45/4jw0uD.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-title p {
    font-size: 18px;
  }

  .main-information {
    height: auto;
  }

  .main-information.a {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://s1.1zoom.me/b5652/792/Fitness_Gym_Sitting_Pose_Panties_Singlet_Glove_584214_1080x1920.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-information.b {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://s1.1zoom.me/b5458/951/Salads_Vegetables_Tomatoes_Olive_Plate_514464_1080x1920.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-information.c {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://images.pexels.com/photos/416754/pexels-photo-416754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-info {
    flex-direction: column;
    width: 100%;
  }

  .main-info-explain {
    margin-right: 0;
    padding: 20px 50px;
  }

  .main-info-img {
    display: none;
  }
  /*.main-info-img img {
    max-width: 100%;
    height: auto;
  }*/

  /* footer */

  footer {
    display: flex;
    flex-direction: column;
  }
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
       			actionForm.attr("action", "/controller/listpage").attr("method", "post");
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
 
 
 
  </head>
  <body>
    <section class="header-top">
      <nav class="navbar">
        <!--로고-->
        <form class="actionForm" action="home" method="get">
        <div class="navbar-logo">
          <img src="resources/assets/Logo.png" alt="logo" />
          <a class="button-home" href="#">
            <strong> <span>fit</span>ness</strong>
          </a>
        </div>
                </form>
        <!--메뉴-->
        <ul class="navbar-menu">
        <form class="actionForm" method="post">
          <li><a id="calo" class="nav-list" href="#">体重管理</a></li>
          </form>
          <li><a class="nav-list" href="http://localhost:9090/controller/diet">献立管理</a></li>
          <li><a class="nav-list" href="http://localhost:9090/controller/training">運動情報</a></li>
          <li><a id="nav-listboard" class="nav-list" href="#">掲示板</a></li>
        </ul>
        <a href="#" class="navbar-toggleBtn">
          <i class="fa-solid fa-bars s30"></i>
        </a>

        <!--로그인폼-->
        <ul class="navbar-logins">
         <c:if test="${not empty login_user.name}">
          <div class="message">
            <span>Welcome, ${login_user.name}様<i class="fas fa-birthday-cake"></i></span>
          </div></c:if>
          <div class="button-group">
          <c:if test="${empty login_user.name}">
           <form class="actionForm" action="loginpage" method="post">
            <li><a class="button-login" href="#" role="button">LOGIN</a></li>
            </form>
            <li><a class="button-signup" href="#" role="button">SIGNUP</a></li>
            </c:if>
            
             <c:if test="${not empty login_user.name}">
             <form class="actionForm" action="logout" method="get">
            <li><a class="button-logout" href="#" role="button">LOGOUT</a></li>
            </form>
            <form class="actionForm" action="infopage" method="post">
            <li><a class="button-info" href="#" role="button">Mypage</a></li>
           </form>
            </c:if>
           
           <c:if test="${login_user.id == 'admin'}">
            <form class="actionForm" action="listpage" method="get">
            <li><a class="button-list" href="#" role="button">LIST</a></li>
           </form>
           </c:if>
           </div>
        </ul>
        <a href="#" class="navbar-loginBtn">
          <i class="fa-solid fa-user s30"></i>
        </a>
      </nav>
    </section>
