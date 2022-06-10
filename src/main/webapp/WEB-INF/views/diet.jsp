<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
 <link rel="stylesheet" href="resources/css/diet.css" />
  <link href="resources/css/diet2.css" rel="stylesheet">
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
.food-main {
  width: 100%;
  height: 30vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(https://c.wallhere.com/photos/2a/5e/food_vegetables_tomatoes_salad_Pepper_Garlic_Paprika-1949021.jpg!d);
  background-repeat: no-repeat;
  background-size: cover;
}

::-webkit-scrollbar {
display: none;
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
            <a href="https://www.amazon.co.jp/s?k=%E3%83%88%E3%83%9E%E3%83%88+%E3%81%8F%E3%81%A0%E3%82%82%E3%81%AE&rh=n%3A70943051&__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&ref=nb_sb_noss" target='_blank'>
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
            <a href="https://www.amazon.co.jp/s?k=%E3%82%A2%E3%83%9C%E3%82%AB%E3%83%89+%E9%87%8E%E8%8F%9C&i=food-beverage&rh=n%3A57239051%2Cn%3A70993051&dc&ds=v1%3ATw2%2BNXzi4RIdRXmDfeojbfNMnuMDVoxWaWAqbo7UX8w&__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=16CPYEZCFIOYG&qid=1653891430&rnid=57239051&sprefix=%E3%82%A2%E3%83%9C%E3%82%AB%E3%83%89+%E9%87%8E%E8%8F%9C%2Cfood-beverage%2C203&ref=sr_nr_n_14" target='_blank'>
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
              <a href="https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%A3%E3%83%99%E3%83%84&rh=n%3A57239051%2Cn%3A3964634051&dc&ds=v1%3AQpozAZngb3Zyt1kDz51UNuSlnxUmFHZIyQtEIlIm1aQ&__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&qid=1653891687&refresh=1&rnid=2321267051&ref=sr_nr_n_2" target='_blank'>
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
