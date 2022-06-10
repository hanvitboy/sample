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
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link rel="stylesheet" href="resources/css/media.css" />
    <link rel="stylesheet" href="resources/css/training.css" />
   

<style>



.text {
  position: absolute;
  width: 100%;
  height: 170px;
  top: 55%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(0, 0, 0, 0.3);
  padding: 20px;
}
.text h1 {
  text-align: center;
  font-size: 48px;
  color: #fff;
}

.text p {
  font-size: 24px;
  color: #fff;
  text-align: center;
}



@media screen and (max-width: 768px) {
video {

  width: 100%;
}


.text {
  position: absolute;
  width: 100%;
  height: 170px;
  top: 55%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(0, 0, 0, 0.3);
  padding: 20px;
}
.text h1 {
  text-align: center;
  font-size: 40px;
  color: #fff;
}

.text p {
  font-size: 16px;
  color: #fff;
}

  
    .video-card {
    width: 100%;
    height: auto;
    margin:0 0 10px 0;
  }
      .video-cards {
      align-items:center;
 
  }
  
  .video-desc{
  align-items:center;
  }
  
  html,body{
  overflow-x:hidden;
  }
  
}

</style>


    <section class="video-main">
      <div class="video-wrap">
        <video muted autoplay loop>
          <source
            src="//player.vimeo.com/external/266043652.sd.mp4?s=98fbd5b5cbcc37404bb3bc1e63c85e1b7f2b6017&profile_id=164"
            type="video/mp4"
          />
        </video>
        <img
          src="https://images.unsplash.com/photo-1616279968481-f8717a710ef6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1965&q=80"
          alt=""
          class="video-main-img"
        />
        <div class="text">
          <h1>運動サポート</h1>
          <p>
              初心者にとってトレーニングとなるとなかなか難しいかも知れません。提供している動画を見て一緒に運動しましょう。
          </p>
        </div>
      </div>
    </section>

    <section class="video-desc">
      <div class="video-container">
        <div class="video-title" data-aos="zoom-out" data-aos-duration="1000">
          <span>運動サポート</span>
          <h1>代表ウエイト運動３つ</h1>
          <p>
             ウエイトトレーニングは姿勢が大事です。間違った姿勢で運動すると、<br />
            大けがになる恐れがあります。次の動画を見ながら正しい姿勢で運動してみましょう。
          </p>
        </div>
        <div class="video-cards">
          <div class="video-card" data-aos="fade-left" data-aos-duration="1000">
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
          <div class="video-card" data-aos="fade-down" data-aos-duration="1250">
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
          <div
            class="video-card"
            data-aos="fade-right"
            data-aos-duration="1000"
          >
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

    <section class="video-desc">
      <div class="video-container-2">
        <div class="video-title" data-aos="zoom-out" data-aos-duration="1000">
          <span>運動サポート</span>
          <h1 class="h1-color">ストレッチ</h1>
          <p>
             ストレッチは運動の前後に必ず行ってください。<br />
            筋肉の緊張を緩和させ、体が柔らかくなります。また、運動能力を向上させ、<br />怪我を予防する効果があります。一緒にやってみましょう。
          </p>
        </div>
        <div class="video-cards">
          <div
            class="video-card"
            data-aos="fade-down-left"
            data-aos-duration="1000"
          >
            <a
              href="https://www.youtube.com/watch?v=nm-fxV-bwWg&ab_channel=ToneandTighten"
            >
              <h1>股関節</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/nm-fxV-bwWg?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
                歩くときに必要なのは、両足だけじゃありません。　骨盤と大腿骨を繋いでくれる股関節がちゃんと働かないときちんと動けません。
                それほど大事な股関節のストレッチをしてみましょう。
        
              </p>
            </a>
          </div>
          <div
            class="video-card"
            data-aos="zoom-in-down"
            data-aos-duration="1250"
          >
            <a
              href="https://www.youtube.com/watch?v=0wAw1-1MHa4&ab_channel=ToneandTighten"
            >
              <h1>腰</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/0wAw1-1MHa4?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
             腰は日常での間違った姿勢と週間で、ディスクを含め様々な疾病を招きます。
               次の動画を参考し、ストレッチを通して日々腰の管理に気を付けましょう。
        
              </p>
            </a>
          </div>
          <div
            class="video-card"
            data-aos="fade-down-right"
            data-aos-duration="1000"
          >
            <a
              href="https://www.youtube.com/watch?v=1PdyCdtkcGk&ab_channel=ToneandTighten"
            >
              <h1>肩</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/1PdyCdtkcGk?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
                人間の体で最も運動範囲が広いところは肩です。体と腕を繋げてくれる連結器官と同時に様々な骨と筋肉を支え
               体で唯一360度回転が可能な関節です。
               その分損傷が発生しやすいところなので、ストレッチで毎日管理しておきましょう。
             
              </p>
            </a>
          </div>
        </div>
      </div>
    </section>

    <section class="video-desc">
      <div class="video-container-3">
        <div class="video-title" data-aos="zoom-out" data-aos-duration="1000">
          <span>運動サポート</span>
          <h1 class="h1-color">生活運動</h1>
          <p>
            生活の中で、簡単に運動できる運動を<br />
            準備してみました。一緒にしてみませんか。
          </p>
        </div>
        <div class="video-cards">
          <div
            class="video-card"
            data-aos="fade-up-left"
            data-aos-duration="1000"
          >
            <a
              href="https://www.youtube.com/watch?v=Y1-uwSGuD5w&ab_channel=HollyDolke"
            >
              <h1>階段の上り</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/Y1-uwSGuD5w?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
          日常生活に簡単にできる運動です。<br />
                膝の関節周辺の筋肉だけではなく、コア筋肉と呼ばれる脊椎周辺、お尻、太ももなどの筋肉発達にも役立ちます。
                また、階段登りは一般的なウォーキングや早歩きのような運動よりも多くのカロリーを消費することができ、有酸素運動としても効果的です。
             </p>
            </a>
          </div>
          <div class="video-card" data-aos="fade-up" data-aos-duration="1250">
            <a
              href="https://www.youtube.com/watch?v=KPWBUYpsWSY&ab_channel=BackIntelligence"
            >
              <h1>ITオフィスの運動</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/KPWBUYpsWSY"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
            ITオフィスの運動は、首や腰、肩が悪くなりやすいIT業界の人にぴったりの運動です。
         プログラミングが上手く行かない場合や、少しの合間にこの動画を見ながら運動したらいかがでしょう？       
                数分を投資して作業の能率をあげましょう。  </p>
            </a>
          </div>
          <div
            class="video-card"
            data-aos="fade-up-right"
            data-aos-duration="1000"
          >
            <a
              href="https://www.youtube.com/watch?v=CAq9vV7gkrs&ab_channel=AskDoctorJo"
            >
              <h1>事務オフィスの運動</h1>
              <iframe
                width="100%"
                height="200"
                src="https://www.youtube.com/embed/CAq9vV7gkrs?controls=0"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
              ></iframe>
              <p>
               事務系オフィスの運動は、一日中、体と心が緊張状態にある現代人のための運動法です。
                時間や場所に関係なく、通話中やコピーをしながら簡単に行うことができます。
                簡単な動作で体が軽くなる気分を感じてみてください。
     
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
        <p>利用規約</p>
        <p>問い合わせ:090-0000-0000</p>
      </div>
    </footer>
  </body>
 
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
  
</html>