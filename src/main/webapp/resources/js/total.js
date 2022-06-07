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

        
            	