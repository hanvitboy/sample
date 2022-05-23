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
    <link rel="stylesheet" href="resources/css/style.css" />
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
.header {
  display: flex;
  align-items: center;
  justify-content:space-between;
  padding: 15px 0;
   margin-left: 180px;
  margin-right:300px;
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
.welcome{
width:100px;
}

.message{
   margin-right: 20px;
 	display : flex;
 	align-items: center;
 	font-weight:bold;
 	color:gray;
   animation: notificationAnimation 1s ease-in-out;
  }

.nav {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 300px;
}


  @keyframes notificationAnimation {
    0% {
      transform: scale(0.5);
    }
    40% {
      transform: scale(1.2);
    }
    100% {
      transform: scale(1);
    }
  }

	.header-left,
	.header-right{
	display: flex;
	}

.logo {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 30px;
  width: 200px;
}

.nav .nav-list li
{	display: flex;
	justify-content: center;
	width:120px;
}
.card {
  background: #000000d0;
  color: white;
  padding: 3px;
  border-radius: 30px;
  width: 250px;
  height: 70px;
  display: flex;
  justify-content: center;
  align-items: center;
  position:absolute;
  top: 100px;
  right:20px;
  overflow: hidden;
}

h1.temp {
  margin: 0;
 
}

.detail-info{
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.condition-box {
  align-items: center;
}

.description {
  text-transform: capitalize;
  margin-left: 8px;
}

.weather.loading {

  visibility: hidden;
  max-height: 20px;
  position: relative;
}

.weatherBox{
display:flex;

align-items: center;

}
.weather-info-box,
.condition-box{
  display:flex;
  flex-direction: column;
  justify-content: space-between;
}
condition-box

.weather.loading:after {
  visibility: visible;
  content: "Loading...";
  color: white;
  position: absolute;
  top: 0;
  left: 20px;
}
.flex,
.description,
.humidity,
.wind{
  font-size: 1px;
}

.temp{
  font-size:18px;
}
.city{
font-size: 12px;

}
  </style>
  
  </head>
  <body>
  
    <section class="header-top">
  <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="header">
            <div class="header-left">
              <div class="logo">
               <form class="actionForm" action="home" method="get">
                <a class="button-home" href="#">
                <img src="resources/assets/Logo.png" alt="Logo" />
                  <p>
                    <strong><span>fit</span>ness</strong>
                  </p>
                </a>
                </form>
              </div>
              <div class="nav">
                <ul>
                <form class="actionForm" method="post">
                  <a class="nav-list" href="#"><li class="abc">체중관리</li></a>
                  </form>
                 
                  <a class="nav-list" href="#"><li class="abc">운동도우미</li></a>
                  
                  <a class="nav-list" href="#"><li class="abc">음식</li></a>
               	
               	<a class="nav-listboard" href="#"><li class="abc">자유게시판</li></a>
               	
                </ul>
              </div>
              </div>
             <div class="header-right">
         <c:if test="${not empty login_user.name}">
         <div class="message">
	<span>Welcome, ${login_user.name}<i class="fas fa-birthday-cake"></i></span>
	</div> </c:if>
<c:if test="${not empty login_user.name}">
</c:if>
             
              <div class="button-group">
              
           <c:if test="${empty login_user.name}">
              <form class="actionForm" action="loginpage" method="post">
                <a class="button-login" href="#" role="button">LOGIN</a>
                </form>
                <a class="button-signup" href="#">SIGNUP</a>
                
                 </c:if>
                 <c:if test="${not empty login_user.name}">
                 <form class="actionForm" action="infopage" method="post">
                   <a class="button-info" href="#">Mypage</a>
                   </form>
<form class="actionForm" action="logout" method="get">
<a class="button-logout" href="#" role="button">LOGOUT</a>
</form>
<form class="actionForm" action="listpage" method="get">
 <a class="button-list" href="#" role="button">LIST</a>
</form>
</div>
</c:if>
</div>
</div>
</div>
              </div>
            </div>
          
    </section>

    <section class="main">
     <div class="card">
        <div class="weather loading">
          <div class="weatherBox">
            <div class="weather-info-box">
              <div class="city">Weather in Denver</div>
              <div class="temp">51°C</div>
            </div>
            <div class="condition-box">
              <img
                src="https://openweathermap.org/img/wn/04n.png"
                alt=""
                class="icon"
              />
              <div class="description">Cloudy</div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="main-title">
              <h1>당신의 몸을 생각하며 만들었습니다.</h1>
              <p>당신의 몸상태를 체크하세요.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
     <script type="text/javascript">
     let weather = {
 		    apiKey: "04677bb1adfaf876f2efbe954841c0b5",
 		    fetchWeather: function (city) {
 		      fetch(
 		        "https://api.openweathermap.org/data/2.5/weather?q=" +
 		          city +
 		          "&units=metric&appid=" +
 		          this.apiKey
 		      )
 		        .then((response) => {
 		          if (!response.ok) {
 		            alert("No weather found.");
 		            throw new Error("No weather found.");
 		          }
 		          return response.json();
 		        })
 		        .then((data) => this.displayWeather(data));
 		    },
 		    displayWeather: function (data) {
 		      const { name } = data;
 		      const { icon, description } = data.weather[0];
 		      const { temp } = data.main;
 		  
 		      document.querySelector(".city").innerText = "Weather in " + name;
 		      document.querySelector(".icon").src =
 		        "https://openweathermap.org/img/wn/" + icon + ".png";
 		      document.querySelector(".description").innerText = description;
 		      document.querySelector(".temp").innerText = temp + "°C";
 		      document.querySelector(".weather").classList.remove("loading");
 		    
 		    },
 		  
 		  };
 		  
 		  
 		    ;
 		  
 		  weather.fetchWeather("Seoul");
 		  
 		
 		  
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
            		$(".nav-list").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/kcalcalpage").attr("method", "post");
            			actionForm.submit();
            		})
            		$(".nav-listboard").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/boardpage").attr("method", "post");
            			actionForm.submit();
            		})
            	})
            	</script>
            	 <script
 	      src="https://kit.fontawesome.com/99b96296a9.js"
 	      crossorigin="anonymous"
 	    ></script>
  </body>
</html>
