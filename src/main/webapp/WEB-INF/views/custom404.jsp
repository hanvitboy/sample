<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>404page</title>
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
   <style>
   * {
  box-sizing: border-box;
  margin: 0;
}

body {
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

/* error page */
.header {
  margin: 10px 0 0 30px;
  font-size: 16px;
}

.header span {
  color: #f7ca18;
}

.error-information {
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 80vh;
}

.error-info {
  padding: 30px;
  margin-left: 60px;
}

.error-desc {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 60px;
}

.error-desc h1 {
  font-size: 50px;
}

.error-desc h2 {
  font-size: 20px;
}

.btn-area .btn-next {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100px;
  height: 30px;
  line-height: 40px;
  border: 2px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 13px;
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

.fly-image {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.error-page-img {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  width: 800px;
  height: auto;
  animation: up-down 1.4s infinite ease-in-out alternate;
}

@keyframes up-down {
  form {
    transform: translateY(0);
  }
  to {
    transform: translateY(-20px);
  }
}

.box {
  text-align: center;
  width: 150px;
  border-radius: 50%;
  background-color: black;
  opacity: 0.1;
  animation: left-right 1.4s infinite ease-in-out alternate;
}

@keyframes left-right {
  form {
    transform: scaleX(0);
  }
  to {
    transform: scaleX(2);
  }
}
   
    @media screen and (max-width: 768px){
    
    .fly-image{
    display:none;
    }
    
    .error-information {
    
    height: 40vh;
}

.error-info {
    padding: 0px; 
    margin-left: 0px; 
}

.error-desc h1 {
    font-size: 24px;
}
    
    }
    
   
   
   </style>
   
   </head>
  <body>
    <header class="header">
      <h1><span>404</span> Not Found</h1>
    </header>
    <div class="error-information">
      <div class="error-desc">
        <div class="error-info">
          <h1>申し訳ありません。</h1>
          <h2>
            ページが存在していないか、アドレスが間違っている可能性がございます。NOT FOUND PAGE。
          </h2>
         
        
        
         <div class="btn-area">
          <form id="actionForm" action="loginpage" method="post">
            <a id="home" class="btn-next" href="http://172.30.1.10:9090/controller/" role="button">ホーム</a>
          </form>
          </div>
        </div>
        <div class="fly-image">
          <img src="resources/assets/notfound.png" alt="" class="error-page-img" />
          <div class="box">test</div>
        </div>
      </div>
    </div>
    
   
  </body>
</html>
