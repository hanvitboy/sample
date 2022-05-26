<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
 <link rel="stylesheet" href="resources/css/diet.css" />
 
    <section class="food-main">
      <div class="food-title">
        <h1>フード</h1>
        <div class="food-text">
          <a href="#" role="button">ホーム</a>
          <p>About</p>
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
                src="https://c.wallhere.com/photos/62/94/tomatoes_tomato_tasty_many-1019357.jpg!d"
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
    
    </script>
  </body>
</html>
