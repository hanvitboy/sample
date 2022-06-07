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
    <style>
 
 .video-main-img{
		display:none;
	}
 
 
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
  align-items: inherit;
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
    url(./assets/main.jpg);
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
  
  /* video */
  .video-wrap {
    height: 70vh;
  }

  video {
    display: none;
  }
  .video-main-img {
    display: flex;
    width: 100%;
    height: auto;
  }

	
  .text {
    width: 100%;
    height: auto;
  }

  .text h1 {
    font-size: 1.8em;
    color: #fff;
  }

  .text p {
    font-size: 1em;
  }

  /* video-desc */
  .video-cards {
    flex-direction: column;
  }

  .video-card {
    width: 100%;
    height: auto;
    margin-bottom: 10px;
  }

  .video-card:last-child {
    margin-bottom: 0;
  }
}
  
  
    
    
    
    /* video */
video {
  width: 100%;
}

.text {
  position: absolute;
  width: 600px;
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
  font-size: 20px;
  color: #fff;
}
    
    .video-wrap {
  width: 100%;
  height: auto;
  overflow: hidden;
  margin: 0px auto;
  position: relative;
}
 .video-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: auto;
  width:100%;
  padding: 30px;
  background-color: #424242;
}

.video-title {
  text-align: center;
  margin-top: 30px;
}

.video-title span {
  color: #f7ca18;
}

.video-title h1 {
  color: rgb(187, 187, 187);
}

.video-title p {
  color: #fff;
}

.video-cards {
  display: flex;
  justify-content: space-around;
  margin-top: 60px;
}

.video-card {
  width: 400px;
  margin-right: 30px;
  background-color: rgba(0, 0, 0, 0.7);
  border-radius: 5px;
  transition-duration: 1s;
}

.video-card:hover {
  box-shadow: rgba(136, 165, 191, 0.48) 6px 2px 16px 0px,
    rgba(255, 255, 255, 0.8) -6px -2px 16px 0px;
  transition: all 0.25s;
}

.video-card:hover h1 {
  color: #f7ca18;
  transition: all 0.5s;
}

.video-card:last-child {
  margin-right: 0;
}

.video-card h1 {
  font-size: 30px;
  padding: 10px 20px 0 20px;
  color: rgb(187, 187, 187);
}

.video-card p {
  padding: 10px 20px 0 20px;
  color: #fff;
}
.video-container-2 {
  display: flex;
  flex-direction: column;
  align-items: center;
 height: auto;
  width:100%;
  padding: 30px;
  background-color: #5e5e5e;
}

.video-container-2 .h1-color {
  color: rgb(17, 17, 17);
}

.video-container-3 {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: auto;
  width:100%;
  padding: 30px;
  background-color: #696969;
}

.video-container-3 .h1-color {
  color: #262626;
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