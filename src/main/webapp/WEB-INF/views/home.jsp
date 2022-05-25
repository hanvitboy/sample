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
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="resources/css/style.css" />
     <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
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
margin-right: 50px;
margin-left:50px;
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


.message{
    width:180px;
   margin-right: 20px;
 	display : flex;
 	align-items: center;
 	font-weight:bold;
 	color:gray;
   animation: notificationAnimation 1s ease-in-out;
  }
.message span{
width: 180px;
}
.nav {
  display: flex;
  justify-content: center;
  align-items: center;

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
                  <a id="calo" class="nav-list" href="#"><li>体重管理</li></a>
                  </form>
                 
                  <a class="nav-list" href="http://localhost:9090/controller/"><li>献立管理</li></a>
                  
                  <a class="nav-list" href="#"><li>運動情報</li></a>
               	
               	<a id="nav-listboard" class="nav-list" href="#"><li>掲示板</li></a>
               	
                </ul>
              </div>
              </div>
             <div class="header-right">
         <c:if test="${not empty login_user.name}">
         <div class="message">
	<span>Welcome, ${login_user.name}様<i class="fas fa-birthday-cake"></i></span>
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
</form></c:if>
 <c:if test="${login_user.id == 'admin'}">
<form class="actionForm" action="listpage" method="get">
 <a class="button-list" href="#" role="button">LIST</a>
</form> </c:if>
</div>

</div>
</div>

           
          
    </section>

    <section class="main">
     <div class="card">
        <div class="weather loading">
          <div class="weatherBox">
            <div class="weather-info-box">
              <div class="city">Weather in Tokyo</div>
              <div class="temp">35°C</div>
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
              <h1>あなたの豊かなライフのために…</h1>
              <p>あなたの体をチェックしてみてください。</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="main-information a">
      <div class="main-info">
        <div data-aos="fade-right">
          <div class="main-info-explain">
            <h1>理論上、1kgの体重減量をするためには7000カロリーを減らさなければなりません。</h1>
            <p>
              急激な減量は体に良くないので、基本一週間あたり0.5kgの減量をお勧めします。
つまり1週間3500kcal、一日500kcalを減らしたほうが良いです。
しかし、摂取量だけで500kcalを減らすと栄養不足、空腹感が激しくなる可能性があります。
なので、運動で消耗するカロリーは増やし、食べ物で増されるカロリーは減らすことを共に行うべきです。
そんなあなたのためにカロリー計算をサポートします。

            </p>
            <div class="btn-area">
              <a class="btn-next" href="#" role="button">体重管理</a>
            </div>
          </div>
        </div>
        <div data-aos="fade-left">
          <div class="main-info-img">
            <img
              src="https://mocah.org/thumbs/589418-3840x2160-blonde.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <section class="main-information b">
      <div class="main-info">
        <div data-aos="fade-down-right" data-aos-delay="100">
          <div class="main-info-img">
            <img src="https://mocah.org/thumbs/542157-vegetables.jpg" alt="" />
          </div>
        </div>
        <div data-aos="fade-down-left" data-aos-delay="100">
          <div class="main-info-explain">
            <h1>自分の体に優しい食べ物</h1>
            <p>
              あなたの美しい体のために、健康的な食べ物情報を提供します。
            </p>
            <div class="btn-area">
              <a class="btn-next" href="#" role="button">献立管理</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="main-information c">
      <div class="main-info">
        <div data-aos="zoom-in">
          <div class="main-info-explain">
            <h1>自分の体が喜ぶ運動法</h1>
            <p>
             
正しくない姿勢でする運動は体に逆効果を与える可能性があります。
また、同じ部位の運動ばかりすると身体がアンバランスになります。
素敵なあなたの体のために運動方法の映像を提供します。
            </p>
            <div class="btn-area">
              <a class="btn-next" href="#" role="button">運動情報</a>
            </div>
          </div>
        </div>
        <div data-aos="zoom-in">
          <div class="main-info-img">
            <img
              src="https://mocah.org/thumbs/545292-exercise-female.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>

    <footer>
      <div class="property">
        <p>
          © 2022 fitness Pty Ltd. Trademarks and brands are the property of
          their respective owners.
        </p>
      </div>
      <div class="number">
        <p>利用規約</p>
        <p>問い合わせ:090-0000-0000</p>
      </div>
    </footer>

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
 		  
 		  weather.fetchWeather("Tokyo");
 		  
 		
 		  
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
            	
            	AOS.init({duration: 1500,});
            	</script>
            	 <script
 	      src="https://kit.fontawesome.com/99b96296a9.js"
 	      crossorigin="anonymous"
 	    ></script>
  </body>
</html>
