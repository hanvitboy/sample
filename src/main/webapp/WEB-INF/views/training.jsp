<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<%@ include file="header.jsp" %>
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
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <link rel="stylesheet" href="resources/css/media.css" />
    <style>
    .video-card {
  width: 400px;
  margin-right: 30px;
  background-color: rgba(0, 0, 0, 0.7);
  border-radius: 5px;
  transition-duration: 0.2s;
}

.video-card:hover {
  transform: scale(1.04);
  transition: 0.2s;
}
    </style>
<section class="video-main">
      <div class="video-wrap">
        <video autoplay loop muted>
          <source
            src="//player.vimeo.com/external/266043652.sd.mp4?s=98fbd5b5cbcc37404bb3bc1e63c85e1b7f2b6017&profile_id=164"
            type="video/mp4"
          />
        </video>
        <div class="text">
          <h1>運動サポート</h1>
          <p>
            初心者にとってトレーニングとなると、接近が難しいかも知れません。こちらから、提供している動画を見て一緒に運動しましょう。
          </p>
        </div>
      </div>
    </section>

    <section class="video-desc">
      <div class="video-container">
        <div class="video-title">
          <span>運動サポート</span>
          <h1>代表ウエイト運動３つ</h1>
          <p>
            ウエイトトレーニングは姿勢が大事です。姿勢が間違ったら、<br />
            大けがになる恐れがあります。次の動画を見ながら正しい姿勢で運動してみましょう。
          </p>
        </div>
        <div class="video-cards">
          <div class="video-card">
            <a
              href="https://www.youtube.com/watch?v=U3HlEF_E9fo&t=2s&ab_channel=JeremyEthier"
            >
              <h1>スクワット</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/U3HlEF_E9fo"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
                スクワットはバーベルもしくはダンベルを持ち、膝の関節を曲げて開く行動を繰り返すことで、下半身の筋肉を成長させる運動です。
                間違った姿勢、または無理な重量で行うと膝のケガの恐れがある運動でもあります。膝を曲げる際は
                膝が前に出てきて重さの中心が前にだけ行かないように注意し、腰を曲げずお尻を後方に出した姿勢で行うべきです。
               
              </p>
            </a>
          </div>
          <div class="video-card">
            <a
              href="https://www.youtube.com/watch?v=ytGaGIn3SjE&ab_channel=JeremyEthier"
            >
              <h1>デッドリフト</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/ytGaGIn3SjE"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
               デッドリフトは床においてあるバーベルを握り、腕を曲げないままお尻の高さまで持ち上げる形で行います。
               お腹の筋肉、背中の筋肉、お尻の筋肉、脚の筋肉など、関連のある筋肉が幅広くて数多く行われます。ダンベルを使ったり、
               片足だけ使うなど他の運動効果のための様々なバリエーションがあります。
              </p>
            </a>
          </div>
          <div class="video-card">
            <a
              href="https://www.youtube.com/watch?v=WODztEweakQ&ab_channel=JeremyEthier"
            >
              <h1>ベンチプレス</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/WODztEweakQ"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
               ベンチプレスは背中を固定して寝そべた姿勢で、バーベルを胸の高さまでおろして、曲げた肘を伸ばしながら持ち上げる形で行います。
               ベンチプレスをすると、一番は胸の筋肉の発達です。また腕も刺激され、肩の筋肉も肩の関節を安静させるため動作するので、ともに筋肉が発達します。
              </p>
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
        <p>이용약관</p>
        <p>문의:010-0000-0000</p>
      </div>
    </footer>
  </body>
  <style>
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
  background-color: #f7ca18;
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
  
</html>