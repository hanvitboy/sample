<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
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
    url(resources/assets/main.jpg);
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
    display: none;
  }

}


  </style>
  
  </head>
  <body>
  
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
             <form class="yapi" method="post">
            <div class="btn-area">
            
              <a id="yaps" class="btn-next" href="#" role="button">体重管理</a>
                        </div>
          </form>
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
              <a class="btn-next" href="http://localhost:9090/controller/diet" role="button">献立管理</a>
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
          <a class="btn-next" href="http://localhost:9090/controller/diet" role="button">献立管理</a>
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
  </body>
</html>
 
        
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
 		  
 	var yapi = $(".yapi");	
 	
	$(document).ready(function(){
		$("#yaps").on("click",function(e){
			e.preventDefault();
			actionForm.attr("action", "/controller/kcalcalpage").attr("method", "post");
			actionForm.submit();
		})
		})

 		  
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		$(".button-login").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/loginpage").attr("method", "post");
            			actionForm.submit();
            		})
            		$(".button-signup").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/rspage").attr("method", "post");
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
            	
            	const toggleBtn = document.querySelector(".navbar-toggleBtn");
            	const menu = document.querySelector(".navbar-menu");

            	toggleBtn.addEventListener("click", () => {
            	  menu.classList.toggle("active");
            	  login.classList.remove("active");
            	});

            	// toggleBtn.addEventListener("blur", () => {
            	//   menu.classList.remove("active");
            	// });

            	/* login */
            	const loginBtn = document.querySelector(".navbar-loginBtn");
            	const login = document.querySelector(".navbar-logins");

            	loginBtn.addEventListener("click", () => {
            	  login.classList.toggle("active");
            	  menu.classList.remove("active");
            	});

            	// loginBtn.addEventListener("blur", () => {
            	//   login.classList.remove("active");
            	// });

        
            	
            	</script>
            	 <script
 	      src="https://kit.fontawesome.com/99b96296a9.js"
 	      crossorigin="anonymous"
 	    ></script>
 	    
 	    
  </body>
</html>
