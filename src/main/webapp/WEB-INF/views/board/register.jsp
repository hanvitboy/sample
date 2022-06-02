<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Icons -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <title>게시판</title>
    <style>
* {
    margin: 0;
    padding: 0;
  }
  
  body {
    background: linear-gradient(to right bottom,#0d324d
  , gray);
    display: flex;
    flex-direction: column;
    align-items: center;
  }

.body__main{
  margin-top: 20vh;
  display: flex;
  min-width: 1200px;
 
  justify-content: center;
  
}
.feed {
  flex: 0.6;
  
}


.input-title {
  width: 85%;
  border: 1px solid lightgray;
margin-bottom: 20px;
margin-top:20px;
border-radius: 30px;
padding: 10px;
}



.feed__inputContainer {
  display:flex;
  flex-direction: column;
  align-items: center;
  background-color: white;

  border-radius: 10px;
  margin-bottom: 20px;
}

.input-mainText {
  
  border: 1px solid lightgray;
  border-radius: 30px;
  min-height: 300px;
  max-width: 90%;
  padding: 10px;

  padding-left: 15px;
  display: block;
  width: 100%;
  height: 300px;
  resize:none;

}



.feed__inputOptions {
  width:90%;
  display: flex;
  justify-content: space-around;

}



.inputOption {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  color: gray;
  padding: 10px;
  width: 70%;
}



.upload-box__btn{

width: 100px;
padding: 10px;
border-radius: 20px;
border:2px solid #dcdde1;
cursor: pointer;

}

.upload-box__btn:hover{

background-color: antiquewhite;
border-color:gray;
box-shadow: 0 0 12px #353b48;
  
  }


.inputOption:first-child .upload-box__btn i{
  color: red;
  font-size: 25px;
}

.inputOption:nth-child(2) .upload-box__btn i{
  color: #0097e6;
  font-size: 25px;
}


.inputOption:last-child .upload-box__btn i{
  color: #fbc531;
  font-size: 25px;
}








@media screen and (max-width: 768px){
  .header-top{
    display: none;
  }

  .sidebar{

    display:none;
  }
  .body{
    width:100%;
  }
  .body__main{
    width:100%;
    min-width:auto;
  }

  .feed{
    flex:0.8;
  }

  .feed__inputContainer{
    width:100%;
  }

 
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
  

</style>
  </head>
  <body>
    <section class="header-top">
     
      <div class="header">
        <div class="logo">
          <a href="#">
            <img src="./assets/Logo.png" alt="Logo" />
            <p>
              <strong><span>fit</span>ness</strong>
            </p>
          </a>
          <div class="nav">
            <ul>
              <a class="nav-list" href="#"><li>체중관리</li></a>
              <a class="nav-list" href="#"><li>운동도우미</li></a>
              <a class="nav-list" href="#"><li>음식</li></a>
            </ul>
          </div>
        </div>

        <div class="button-group">
          <a class="button-login" href="#" role="button">LOGIN</a>
          <a class="button-logout" href="#" role="button">LOGOUT</a>
          <a class="button-info" href="#">Mypage</a>
          <a class="button-list" href="#" role="button">LIST</a>
          <a class="button-signup" href="#">SIGNUP</a>
        </div>
      </div>
    </section>
    
     <form action="/controller/board/register" method="post">
    <div class="body__main">
      <!-- Feed Starts -->
      <div class="feed">
        <div class="feed__inputContainer">
          <input type="text" name="title" class="input-title" placeholder="제목을 입력하세요"/>
          <textarea name="content" class="input-mainText"  placeholder="내용을 입력하세요"></textarea>

<input type="hidden" name="writer" value="${login_user.id}"/>

          <div class="feed__inputOptions">
            <div class="inputOption">
              <button type="button" class="upload-box__btn" onclick="location.href='/controller/board/boardpage'"><i class="fas fa-ban"></i><h4>リストへ</h4>
           </button>
          </div>

          <div class="inputOption">
            <button type="reset" class="upload-box__btn"><i class="fas fa-redo"></i><h4>リセット</h4>
         </button>
        </div>



          <div class="inputOption">
            <button type="submit" class="upload-box__btn"><i class="fas fa-arrow-circle-up"></i>
            <h4>書き込む</h4>
          </button>
          </div>
        </div>
      </div>

      <!-- Post Starts -->

      <!-- Feed Ends -->
    </div>
    <!-- Main Body Ends -->
</form>
  
  </body>

    <script
    src="https://kit.fontawesome.com/99b96296a9.js"
    crossorigin="anonymous"
  ></script>
</html>
