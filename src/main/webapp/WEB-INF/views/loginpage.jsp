<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>


<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>login</title>
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
    <style>
    
    * {
  box-sizing: border-box;
  margin: 0;
}

.kbt{
width:100%;

}

body {
  font-family: "DM Sans", sans-serif;
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

/* login-form */

.login-form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(resources/assets/login.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

.login-form h1 {
  font-size: 32px;
  letter-spacing: 0.3em;
  color: #fff;
  text-align: center;
  margin-bottom: 60px;
}

.login-form h1 span {
  color: #f7ca18;
}

.int-area {
  width: 400px;
  position: relative;
  margin-top: 20px;
}

.int-area:first-child {
  margin-top: 0;
}

.int-area input {
  width: 100%;
  padding: 20px 10px 2px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #999;
  font-size: 18px;
  color: #fff;
}

.int-area label {
  position: absolute;
  left: 10px;
  top: 15px;
  font-size: 15px;
  color: #999;
  transition: top 0.5s ease;
}

.int-area input:focus + label,
.int-area input:valid + label {
  top: -2px;
  font-size: 14px;
  color: #f7ca18;
}

.btn-area {
  margin-top: 30px;
}

.btn-area button {
  width: 100%;
  height: 50px;
  background: #166cea;
  color: #fff;
  font-size: 20px;
  letter-spacing: 0.05em;
  border: none;
  border-radius: 25px;
  margin-bottom: 12px;
}

.caption {
  margin-top: 20px;
  text-align: center;
}

.caption a {
  font-size: 15px;
  color: #999;
  text-decoration: none;
}

.caption a:hover {
  color: #f7ca18;
}
    
    
    
    /*  <=768px (mobile) */
@media screen and (max-width:768px){
  .login-form{
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(https://mfiles.alphacoders.com/794/thumb-1920-794726.jpg);
    
  }
  
  form{
    width: 80%;
  }

  .int-area{
    width: 100%;
  }

  .int-area input{
    width: 100%;
  }

  .btn-area {
    width: 100%;
  }
}
    </style>
    <link rel="stylesheet" href="resources/css/login.css" />
    
  </head>
  <body>
    <section class="login-form">
      <h1>
           <a href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      </h1>
      <form method="post" action="/controller/login">
        <div class="int-area">
          <input type="text" name="id" id="id" autocomplete="off" required />
          <label for="id">USER ID</label>
        </div>
        <div class="int-area">
          <input
            type="password"
            name="pw"
            id="pw"
            autocomplete="off"
            required
          />
          <label for="pw">PASSWORD</label>
        </div>
        <div class="btn-area">
          <button type="submit">LOGIN</button>
        </div>
        <div>
        <form method="get" action="kakaologin">
        <a id="kakao-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=3c29e5973236d66995354c01142b54eb&redirect_uri=http://localhost:9090/controller/kakaolog&response_type=code">
        <img class="kbt" src="resources/assets/loginimage.png"/></a>
        </form>
        </div>
        </form>
     <form id="actionForm" action="loginpage" method="post">
        <div class="caption">
                <a class="forget" href="#" role="button">Did you forget your password?</a>
          </div>
                </form>
    
    </section>
    
     <script type="text/javascript">
     
     var actionForm = $("#actionForm");
     
            	$(document).ready(function(){
            		$(".forget").on("click",function(e){
            			e.preventDefault();
            			actionForm.val($(this).attr("href"));
            			actionForm.attr("action", "/controller/findpwpage");
            			actionForm.submit();
            		})
            		
            	})
          	</script>
  </body>
</html>
