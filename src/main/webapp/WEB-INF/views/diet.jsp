<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
 <link rel="stylesheet" href="resources/css/diet.css" />
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

<style>

body {
  font-family: "DM Sans", sans-serif;
  font-family: "Noto Sans JP", sans-serif;
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

/* food-main */
.food-main {
  width: 100%;
  height: 60vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(https://c.wallhere.com/photos/2a/5e/food_vegetables_tomatoes_salad_Pepper_Garlic_Paprika-1949021.jpg!d);
  background-repeat: no-repeat;
  background-size: cover;
}

.food-title {
  color: #fff;
  position: absolute;
  left: 50%;
  top: 25%;
  transform: translate(-50%, -50%);
  text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.food-title h1 {
  font-size: 40px;
}

.food-text {
  display: flex;
  justify-content: space-between;
  
}

.food-text p {
  border: 1px;
}

/* food-about */
.food-information {
  background-color: #424242;
}

.food-about {
  display: flex;
  height: 80vh;
  background-color: #202020;
}

.food-desc {
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 600px;
}

.food-desc span {
  color: #f7ca18;
  font-size: 18px;
}

.food-desc h1 {
  color: rgb(187, 187, 187);
  font-size: 30px;
  margin-bottom: 5px;
}

.food-desc p {
  color: #fff;
  font-size: 20px;
}

.food-wrap {
  display: flex;
  justify-content: space-around;
  align-items: center;
  width: 100%;
  max-height: auto;
}


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

  /* food-main */
  .food-title {
    top: 38%;
  }

  .food-title h1 {
    font-size: 30px;
  }

  .food-text {
    font-size: 14px;
  }

  /* food-about */
  .food-about {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://fsa.zobj.net/crop.php?r=toWRpkPRDLnPACz1a-aZmk8dIX3qsj1Hizy5PFGaeKuZmI81ot1IJgeqJ0KAde2VKeGzJEYB3Alb30sRFGyrQNXuTLYlV0tQWA15F26vDSGEu4QiJLTmtuE8p-vpkcp5mCdfKSW_kBn_cEIE);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }
  .food-wrap img {
    display: none;
  }

  .food-desc {
    width: 90%;
  }

  .food-desc span {
    color: #f7ca18;
    font-size: 16px;
  }

  .food-desc h1 {
    font-size: 24px;
  }

  .food-desc p {
    font-size: 18px;
  }

  /* food-information */
  .food-card-title h2 {
    font-size: 24px;
  }

  .food-cards {
    flex-direction: column;
  }

  .card {
    width: 100%;
    margin-bottom: 30px;
 	display:flex;
 
  }
  
  footer {
   display: none;
   }
}


</style>

  <body>
  
    <section class="food-main">
      <div class="food-title">
        <h1>Healthy Food</h1>
        <div class="food-text">
          <p>体に優しい食べ物</p>
        </div>
      </div>
    </section>

    <section class="food-about">
      <div class="food-wrap">
        <div class="food-desc">
          <span>About</span>
          <h1>食べ物で、あなたを健康な体へ</h1>
          <p>
             食べ物を変えるだけで、より健康的な体になれます。健康的な食生活で、あなたのライフを変えてみませんか。
          </p>
          <div class="btn-area">
            <a class="btn-next" href="#" role="button">健康フード</a>
          </div>
        </div>
        <img
          src="https://cdn.pixabay.com/photo/2014/04/03/10/05/yoga-309782_960_720.png"
          alt="yoga"
        />
      </div>
    </section>

    <section class="food-information">
      <div class="food-info">
        <div class="food-card-title">
          <span>健康代表フード</span>
          <h2>健康フードで、ダイエットを成功しましょう。</h2>
        </div>

        <div class="food-cards">
          <div class="card">
            <a href="#">
              <img
                src="https://cdn.pixabay.com/photo/2020/09/12/21/14/tomatoes-5566744_960_720.jpg"
                alt="tomato"
              />
              <div class="card-content">
                <h3>トマト</h3>
                <p>
                       トマトは低カロリーで栄養が豊富な健康野菜です。美肌効果や風邪予防に役立つビタミンC、老化を抑制するビタミンE、塩分の排出を助けるカリウム、腸内環境を整える食物繊維などをバランス良く含んでいます。
                </p>
              </div>
            </a>
          </div>
          <div class="card">
            <a href="#">
              <img
                src="https://c.wallhere.com/photos/79/e5/avocado_fruit_stone-563812.jpg!d"
                alt=""
              />
              <div class="card-content">
                <h3>アボカド</h3>
                <p>
                   アボカドは満腹感が高く、脂肪を燃焼してくれるので、ダイエット中の方には嬉しい食べ物です。
                  アボカドに含まれている消化酵素やオレイン酸が、脂肪を分解してくれます。活動量の多い時間帯にアボカドを口にすることで、効率よく脂肪を消化出来ます。
                 </p>
              </div>
            </a>
          </div>
          <div class="card">
            <a href="#">
              <img
                src="https://cdn.pixabay.com/photo/2016/11/24/16/56/brussels-sprouts-1856711_960_720.jpg"
                alt=""
              />
              <div class="card-content">
                <h3>キャベツ</h3>
                <p>
                   キャベツの特徴は豊富なビタミンCで、葉を生で2～3枚食べることで、1日に必要なビタミンC量の50％以上が満たされるといわれています。特にキャベツの外側の緑色の葉や、普段捨ててしまいがちな芯の近くには、ビタミンCが多く含まれています。
               </p>
              </div>
            </a>
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
    
    
  </body>
</html>
