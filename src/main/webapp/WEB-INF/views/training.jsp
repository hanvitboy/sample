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
<section class="video-main">
      <div class="video-wrap">
        <video muted autoplay loop>
          <source
            src="https://vod-progressive.akamaized.net/exp=1653548450~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F3208%2F10%2F266043652%2F984271706.mp4~hmac=f748a8e6150f9dbedd1608c253b2f9bb335bde3b651f71d682ecb640b3f575af/vimeo-prod-skyfire-std-us/01/3208/10/266043652/984271706.mp4?filename=Run+-+15748.mp4"
            type="video/mp4"
          />
        </video>
        <div class="text">
          <h1>運動サポート</h1>
          <p>
            運動は初心者に難しいかもしれません。私たちから、提供した動画を見て一緒に運動しましょう。
          </p>
        </div>
      </div>
    </section>

    <section class="video-desc">
      <div class="video-container">
        <div class="video-title">
          <span>運動サポート</span>
          <h1>代表運動３つ</h1>
          <p>
            運動は姿勢が大事です。姿勢が間違ったら、<br />
            大けがになるかもしれません。次の動画を見ながら正しい姿勢しませんか。
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
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Deserunt soluta, obcaecati eos dolore perferendis, sit
                perspiciatis ducimus, quasi expedita optio magni maiores
                doloremque aut voluptatibus? Commodi vero dolores quisquam
                maiores!
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
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Deserunt soluta, obcaecati eos dolore perferendis, sit
                perspiciatis ducimus, quasi expedita optio magni maiores
                doloremque aut voluptatibus? Commodi vero dolores quisquam
                maiores!
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
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Deserunt soluta, obcaecati eos dolore perferendis, sit
                perspiciatis ducimus, quasi expedita optio magni maiores
                doloremque aut voluptatibus? Commodi vero dolores quisquam
                maiores!
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