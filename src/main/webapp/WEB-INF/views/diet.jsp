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
    <title>diet</title>
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="resources/css/diet.css" />
  </head>
  <body>
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
          <h1>食べ物で、あなたの体を健康へ</h1>
          <p>
            食べ物を変えるだけで、健康的な生活ができます。健康的な食生活で、あなたのライフを変えてみませんか。
            ダイエットする時に、カロリーが大事です。下のボタンを押して、カロリーを計算してみませんか。
          </p>
          <div class="btn-area">
            <a class="btn-next" href="#" role="button">体重管理へ</a>
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
          <span>代表フード</span>
          <h2>代表フードで、ダイエットを成功しませんか。</h2>
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
                  トマトは低カロリーでさまざまな栄養成分が豊富な健康野菜。美肌効果や風邪予防に役立つビタミンC、老化を抑制するビタミンE、塩分の排出を助けるカリウム、腸内環境を整える食物繊維などをバランス良く含んでいます。
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
                  アボカドは満腹感が高いだけでなく、脂肪を燃焼してくれるというダイエット中の方には、嬉しい栄養効果も期待できます。
                  というのも、アボカドに含まれている消化酵素やオレイン酸には、脂肪を分解や燃焼させる効果が期待できるからです。活動量の多い時間帯にアボカドを口にすることで、効率よく脂肪を消化出来ます。
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
                  キャベツの特徴は豊富なビタミンCで、葉を生で2～3枚食べることで、1日に必要なビタミンC量の50％以上が満たされるといわれています。特にキャベツの外側の緑色の葉や、普段捨ててしまいがちな芯の近くには、特にビタミンCが多く含まれています。
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
