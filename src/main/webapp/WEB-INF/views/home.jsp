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
    <link rel="stylesheet" href="resources/css/home.css"/>
 <style>

 
 .main {
  width: 100%;
  height: 100vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(resources/assets/main.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}



html, body{
overflow-x: hidden;

}

::-webkit-scrollbar {
display: none;
}



@media screen and (max-width: 768px) {

 .main {
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://r1.ilikewallpaper.net/pic/201504/ee32a11f64_640.jpg);
    background-repeat: no-repeat;
    background-size: cover;
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
              src="https://rare-gallery.com/thumbs/589418-3840x2160-blonde.jpg"
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
            <img src="https://rare-gallery.com/thumbs/542157-vegetables.jpg" alt="" />
          </div>
        </div>
        <div data-aos="fade-down-left" data-aos-delay="100">
          <div class="main-info-explain">
            <h1>自分の体に優しい食べ物</h1>
            <p>
          あなたの美しい体のために、健康的な食べ物情報を提供します。
           </p>
             <form class="yapi" method="post">
            <div class="btn-area">
              <a id="yaps2" class="btn-next" href="#" role="button">献立管理</a>
            </div>
          </form>
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
             <form class="yapi" method="post">
            <div class="btn-area">
          <a id="yaps3" class="btn-next" href="#" role="button">運動情報</a>
               </div>
          </form>
          </div>
        </div>
        <div data-aos="zoom-in">
          <div class="main-info-img">
            <img
              src="https://rare-gallery.com/thumbs/545292-exercise-female.jpg"
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
    
 <script>
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
		
			$("#yaps2").on("click",function(e){
			e.preventDefault();
			actionForm.attr("action", "/controller/diet").attr("method", "post");
			actionForm.submit();
		})
		
		$("#yaps3").on("click",function(e){
			e.preventDefault();
			actionForm.attr("action", "/controller/training").attr("method", "post");
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
             $("#daieto").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/diet").attr("method", "post");
       			actionForm.submit();
       		})
       		$("#torei").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/training").attr("method", "post");
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
            	 <script src="https://kit.fontawesome.com/99b96296a9.js" crossorigin="anonymous"></script>
 	  
  </body>
</html>
