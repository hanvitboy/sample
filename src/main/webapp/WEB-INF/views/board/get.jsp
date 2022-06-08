<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Icons -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <title>게시판</title>
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    <style>
    
    * {
  box-sizing: border-box;
  margin: 0;
}

.header-top{
width:100%;
background-color: white;}

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
  font-family: "Noto Sans JP", sans-serif;
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
    
    
    * {
  margin: 0;
  padding: 0;
}

li{

list-style: none;

}

  button,
  input,
  textarea {
  font-family: "DM Sans", sans-serif;
  font-family: "Noto Sans JP", sans-serif;
  font-size: 16px;
  }


.visibility__btn > i,
.thumb__btn > i,
.comment__btn > i,
.total__thumbs{
  color:gray;
}





body {
  background: linear-gradient(to right bottom,#0d324d
  , gray);
  display: flex;
  flex-direction: column;
  align-items: center;
}



/* Main Body */
.body__main {
  margin-top: 20vh;
  display: flex;
  justify-content: center;

}
/* Sidebar */
.sidebar {
  position: sticky;
  top: 80px;
  flex: 0.2;
  border-radius: 10px;
  text-align: center;
  height: fit-content;
  min-width: 250px;
}

.sidebar__top > img {
  margin-bottom: -20px;
  width: 100%;
  height: 60px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  object-fit: cover;
}



.sidebar__top {
  display: flex;
  flex-direction: column;
  align-items: center;
  border: 1px solid lightgray;
  border-bottom: 0;
  border-radius: 10px;
  background-color: white;
  padding-bottom: 10px;
  margin-bottom: 15px;
}

.sidebar__topAvatar {
  font-size: 40px;
}





.sidebar__submit {
  width:120px;
  height: 50px;
  box-sizing: border-box;
 background-color: transparent;
 color:white;
  transition: all 300ms ease;
  border: 3px solid #e1b12c;
  border-radius: 10px;
  font-weight: 600;
 }
 
 .sidebar__submit:hover {
   color: white;
   box-shadow: 0 0 12px #e1b12c;
   background-color: #e1b12c;
   cursor:pointer;
   }
  





.sidebar__recentItem {
  display: flex;
  font-size: 13px;
  color: gray;
  font-weight: bolder;
  cursor: pointer;
  margin-bottom: 5px;
  padding: 5px;
}

.sidebar__recentItem:hover {
  background-color: whitesmoke;
  border-radius: 10px;
  cursor: pointer;
  color: black;
}

.sidebar__hash {
  margin-right: 10px;
  margin-left: 10px;
}



/* Feed */
.feed {
  flex: 0.6;
  margin: 0 20px;
}



.feed__inputOptions {
  display: flex;
  justify-content: space-around;
  align-items: center;
  
}

.upload-data__nail{
  font-weight: 600;
  font-size: 14px;
  margin-top: 15px;
}


.post__body{
display: flex;
flex-direction: column;
justify-content: center;
}

.post__title{
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top:15px;
  margin-bottom: 20px;
  font-weight: 700;
}

.post__maintext{
padding: 15px;

  
}

.clip-file{
  display: flex;
  flex-direction: column;
  
  align-items: flex-end;
  
}

.clip-file-title{
  display: flex;
  justify-content: flex-end;
  align-items:flex-end;
  
  
}



.visibility__btn,
.thumb__btn,
.comment__btn {
  display: flex;
  align-items: center;
  margin-top: 15px;
  color: gray;
  padding: 10px;
  border:none;
  background-color: transparent;
  cursor: pointer;
}
.visibility__btn{
  cursor:default;
}


.thumb__btn:hover,
.comment__btn:hover {
  background-color: #dcdde1;
  border-radius: 10px;
}




.visibility__btn > h4,
.thumb__btn > h4,
.comment__btn > h4 {
  margin-left: 5px;
}





.comment__window{
  display: none;
}

.show-text .comment__window{
  display: flex;
  flex-direction: column;
  font-size: 13px;
  font-weight: 600;

}

.comments{
  margin-top: 20px;
  margin-bottom: 10px;

}

.comments p{
  margin-bottom: 15px;
  display: flex;
  align-items: center;
}

.comment__input{
display: flex;
width: 100%;
justify-content: space-between;

}



.comment__window input[type="text"] {
  border: 2px solid gray;
  border-radius: 10px;
  color: black;
  font-weight: 600;
  padding-left: 5px;
  width: 92%;
  box-shadow: 8px 7px 12px -4px rgba(0,0,0,0.75);
}




.filedown{
border:none;
cursor: pointer;

}


.replylist{

display:flex;
flex-direction: column;}


.replylist li{
display:flex;
justify-content: space-between;
align-items: center;}

p > span:nth-child(2){
display:flex;
white-space:nowrap}

p > span:nth-child(3){
display:flex;}

.comment__input button{
  background-color: #dcdde1;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 40px;
  height: 40px;
  border: 3px solid #f7ca18;
  border-radius: 5px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}





.comment__input button:hover{
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
  cursor: pointer;

}

.comment__input__btn i{
color: black;
}


p .sidebar__topAvatar{

font-size: 18px;

}

li > p{

display:flex;
align-items:center;

}



.post-modify__btn,
.comment-modify__btn,
.comment-delete__btn{
  margin-left: 5px;
  background-color: transparent;
  color:black;
  border-color: transparent;
  cursor:pointer;
}

.post-modify__btn:hover,
.comment-modify__btn:hover,
.comment-delete__btn:hover{
  color: red
}






/* Post */
.post {
  background-color: white;
  padding: 15px;
  margin-bottom: 10px;
  border-radius: 10px;
  max-width: 900px;
  box-shadow: 8px 7px 12px -4px rgba(0,0,0,0.75);
  min-width: 700px;
}

.post__header {
  display: flex;
  justify-content: space-between;


}


.post__header__left {
  display: flex;
  align-items: center;


}

.post__info {
  margin-left: 10px;
}

.post__info > p {
  font-size: 12px;
  color: gray;
}

.post__info > h2 {
  font-size: 15px;
}



.post__bottom{
display:none;
justify-content: center;


}

.post__write__btn{
    width:120px;
    height: 50px;
    box-sizing: border-box;
   background-color: transparent;
   color:white;
    transition: all 300ms ease;
    border: 3px solid #e1b12c;
    border-radius: 10px;
    font-weight: 600;
   }
   
.post__write__btn:hover {
  color: white;
  box-shadow: 0 0 12px #e1b12c;
  background-color: #e1b12c;
  cursor: pointer;
  }

}















  
  /* header */
  .header-top {
  background-color: #fff;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 99;
  }
  
  .header {
  margin-left: 22px;
  margin-right: 22px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px 0;
  }
  
  .logo {
  display: flex;
  justify-content: center;
  align-items: center;
  
  }
  
  .logo a {
  display: flex;
  justify-content: center;
  align-items: center;
  color: inherit;
  }
  
  .logo img {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 70px;
  height: auto;
  
  }
  
  .logo p {
  font-size: 30px;
  text-align: center;
  text-decoration: none;
  margin-bottom: 0;
  }
  
  .logo p span {
  color: #f7ca18;
  }
  
  .nav {
    margin-left: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  
  }
  
  .nav ul {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 0;
  }
  
  .nav .nav-list {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 18px;
  letter-spacing: 0.2em;
  margin-right: 30px;
  }
  
  .nav .nav-list:hover {
  color: #f7ca18;
  }
  
  .nav .nav-list li {
  width: 120px;
  }
  
  .button-group {
  display: flex;
  justify-content: center;
  align-items: center;
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
  
  
  
  
  
  
  
  .replyModal {
  
  flex: 1;
  position: fixed;
  top: 40%;
  left: 36%;
  z-index:1; 
  display:none;
}



.modalContent {
  display:flex;
  min-width: 500px;
  min-height: 200px;
  flex-direction: column;
  align-items: center;
  background-color: white;
  border-radius: 10px;
  margin-bottom: 20px;
}

.modal_repCon {
  
  border: 1px solid lightgray;
  border-radius: 30px;
  min-height: 200px;
  max-width: 450px;
  padding: 10px;
  margin-top:30px;
  padding-left: 15px;
  display: block;
  width: 100%;
  resize:none;

}



.comment-modify__btns {
  width:90%;
  display: flex;
  justify-content: space-around;

}



.comment-modify__btn {
  display: flex;
  align-items: center;
  justify-content: center;
  color: gray;
  padding: 10px;
}



.modal_cancel,
.modal_modify_btn
{

width: 100px;
padding: 10px;
border-radius: 20px;
border:2px solid #dcdde1;
cursor: pointer;

}

.modal_cancel:hover,
.modal_modify_btn:hover
{

background-color: antiquewhite;
border-color:gray;
box-shadow: 0 0 12px #353b48;
  
  }


  .modal_cancel i{
  color: red;
  font-size: 25px;
}

.modal_modify_btn i{
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
     
    }

    .feed{
      flex:1;
    }
    
    .post {
      min-width:auto;
      
    }

    .post__bottom{
      display: flex;
    }
    
  }
    </style>
  </head>
  <body>
   <section class="header-top">
      <nav class="navbar">
        <!--로고-->
        <form class="actionForm" action="home" method="get">
        <div class="navbar-logo">
          <img src="../resources/assets/Logo.png" alt="logo" />
          <a class="button-home" href="#">
            <strong> <span>fit</span>ness</strong>
          </a>
        </div>
                </form>
        <!--메뉴-->
        <ul class="navbar-menu">
        <form class="actionForm" method="post">
          <li><a id="calo" class="nav-list" href="#">体重管理</a></li>
          </form>
          <li><a class="nav-list" href="http://localhost:9090/controller/diet">献立管理</a></li>
          <li><a class="nav-list" href="http://localhost:9090/controller/training">運動情報</a></li>
          <li><a id="nav-listboard" class="nav-list" href="#">掲示板</a></li>
        </ul>
        <a href="#" class="navbar-toggleBtn">
          <i class="fa-solid fa-bars s30"></i>
        </a>

        <!--로그인폼-->
        <ul class="navbar-logins">
         <c:if test="${not empty login_user.name}">
          <div class="message">
            <span>Welcome, ${login_user.name}様<i class="fas fa-birthday-cake"></i></span>
          </div></c:if>
          <div class="button-group">
          <c:if test="${empty login_user.name}">
           <form class="actionForm" action="loginpage" method="post">
            <li><a class="button-login" href="#" role="button">LOGIN</a></li>
            </form>
            <li><a class="button-signup" href="#" role="button">SIGNUP</a></li>
            </c:if>
            
             <c:if test="${not empty login_user.name}">
             <form class="actionForm" action="logout" method="get">
            <li><a class="button-logout" href="#" role="button">LOGOUT</a></li>
            </form>
            <form class="actionForm" action="infopage" method="post">
            <li><a class="button-info" href="#" role="button">Mypage</a></li>
           </form>
            </c:if>
           
           <c:if test="${login_user.id == 'admin'}">
            <form class="actionForm" action="listpage" method="get">
            <li><a class="button-list" href="#" role="button">LIST</a></li>
           </form>
           </c:if>
           </div>
        </ul>
        <a href="#" class="navbar-loginBtn">
          <i class="fa-solid fa-user s30"></i>
        </a>
      </nav>
    </section>
        
    <div class="body__main">
      <div class="sidebar">
        <div class="sidebar__top">
          <img
            src="https://th.bing.com/th/id/OIP.hqJRscdDB4clU5YPhGeFvQHaEN?pid=ImgDet&rs=1"
            alt=""
          />
          <i class="material-icons sidebar__topAvatar"> account_circle </i>
          <h2><c:out value="${login_user.id }"/></h2>
        </div>
 <div class="btn_wrap">
		<a class="sidebar__submit" id="list_btn"><i class="fas fa-undo"></i>&nbsp;リストへ戻る</a>
		<form id="infoForm1" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>
	</div>
      
      </div>
      <!-- Sidebar Ends -->

      <!-- Feed Starts -->
      <div class="feed">
        <!-- Post Starts -->
        <div class="post">
        <div class="replyModal">
      <div class="modalContent">
        <textarea class="modal_repCon" name="modal_repCon" placeholder="コメント欄"></textarea>

        <div class="comment-modify__btns">
          <div class="comment-modify__btn">
            <button class="modal_cancel"><i class="fas fa-ban"></i><h4>取消し</h4>
         </button>
        </div>


        <div class="comment-modify__btn">
          <button class="modal_modify_btn"><i class="fas fa-pencil-alt"></i>
          <h4>修正</h4>
        </button>
        </div>
      </div>
    </div>
  </div>
          <div class="post__header">
            <div class="post__header__left">
              <i class="material-icons sidebar__topAvatar"> account_circle </i>
              <div class="post__info">
                <h2><c:out value="${pageInfo.writer}"/></h2>
              </div>
            </div>
            <div class="post__header__right">
            <c:if test="${login_user.id eq pageInfo.writer}"> 
		    <button class="post-modify__btn" id="modify_btn">
            <i class="fas fa-pen"></i></button>
        </c:if>
            <fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/></div>
          
          </div>

          <div class="post__body">
            <div class="post__title"><c:out value="${pageInfo.title}"/> </div>
            <div class="post__maintext"> <c:out value="${pageInfo.content}"/> </div>
            <ul class="clip-file">
             <div class="clip-file-title"><i class="fas fa-paperclip"></i>添付ファイル</div>
            <c:forEach items="${fileList}" var="fileList">
		   
		    <input dir="rtl" class="filedown" name="writer" readonly="readonly" value='<c:out value="${fileList.fileName}"/>◎' data-link='<c:out value="${fileList.uuid}"/>' data-path='<c:out value="${fileList.uploadPath}" />'>
		
		</c:forEach>
        
            </ul>
          
          
          </div>

          <div class="feed__inputOptions">
            <div class="visibility__btn">
              <i class="material-icons"> visibility </i>
              <h4><c:out value="${pageInfo.hit}"/></h4>
            </div>
            
            
           	<c:choose>
						<c:when test="${ltlike ==0}"> 
            <button class="thumb__btn" type="submit" id="likebtn" onclick="thumbUpChange();">
              <i class="material-icons" id="thumb-up__id" > thumb_up </i>
                          </button>
                          	<input type="hidden" id="likecheck" value="${ltlike }">
                          	</c:when>
                          	
                    	<c:when test="${ltlike ==1}">
					   <button class="thumb__btn" type="submit" id="likebtn" onclick="thumbUpChange();">
              <i class="material-icons" id="thumb-up__id" style="color:tomato" > thumb_up </i>
                          </button>
	<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>

</c:choose>	
<input type="hidden" value="${login_user.id}" id="mid">
		<input type="hidden" value="${pageInfo.bno}" id="bid">
		<input type="hidden" value="${ltlike}" id="likecheck">






            <div class="comment__btn">
              <i class="material-icons"> comment </i>
             
            </div>
          </div>


          <div class="comment__window">
            <div class="comments" id="reply">
           
            </div>
            <div class="replylist">
	
	</div>
          <form name="replyForm" method="post">
	  <input type="hidden" id="bno" name="bno" value="${pageInfo.bno}" />
	  <input type="hidden" id="page" name="page" value="${cri.pageNum}"> 
	  <input type="hidden" id="perPageNum" name="perPageNum" value="${cri.amount}"> 
	  <input type="hidden" id="searchType" name="searchType" value="${pageMaker.cri.type}"> 
	  <input type="hidden" id="keyword" name="keyword" value="${cri.keyword}"> 
          <input type="hidden" name="writer" value="${login_user.id}" id="reply_writer"/>
          <div class="comment__input">
          <input class="comment__input__box" name="content" id="reply_content" type="text" placeholder="덧글 입력">
        <button class="comment__input__btn" id="replyWriteBtn"> <i class="material-icons"> send </i> </button>
          </div>
          </form>
        </div>
        </div>
        
           	
		


	<!-- 목록페이지 눌렀을 시 기준 데이터를 유지하여 기존의 bno, pageNum, amount, keyword, type를 갖고있게 하기위해 -->
	<form id="infoForm2" action="/board/modify" method="get" >
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno }"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'> 
		<input type="hidden" name="keyword" value="${cri.keyword }">    
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		<input type="hidden" name="reply_bno" id="reply_bno" value="${pageInfo.bno }">
	</form>



      <!-- Feed Ends -->
    </div>
    <!-- Main Body Ends -->
    <script>

    const posts = document.querySelectorAll(".post");

    posts.forEach(function (post) {
      const btn = post.querySelector(".comment__btn");
       console.log(btn);

      btn.addEventListener("click", function () {
        

        posts.forEach(function (item) {
          if (item !== post) {
            item.classList.remove("show-text");
          }
        });

        post.classList.toggle("show-text");
      });
    });







    function thumbUpChange() {
    	var lc = document.getElementById("likecheck");
      var wholeThumbBtn = document.querySelector(".thumb__btn");
      var thumbBtnIcon = document.querySelector("#thumb-up__id");
      console.log(lc.value)
      if (lc.value == '1') {
        wholeThumbBtn.style.color = "gray"
        thumbBtnIcon.style.color = "gray"
      } else {
        wholeThumbBtn.style.color = "tomato";
        thumbBtnIcon.style.color = "tomato";
      }
    }
    


    $(document).ready(function(){
    	
    	getreplylist();
    	
    	var fileList = new Array();
    	
    	<c:forEach items="${fileList}" var="result">
    	   fileList.push({
    		   uuid:"${result.uuid}",
    		   fileType:"${result.fileType}",
    		   fileName:"${result.fileName}",
    		   uploadPath:"${result.uploadPath}",
    		   bno:"${result.bno}"
    	   })
    	</c:forEach>
    	
    	$(".filedown").on('click',function(){
    		var uuid = $(this).attr("data-link");
    		var uploadPath = $(this).attr("data-path");
    		
    		$.each(fileList, function(idx, item){
    			if(uuid == item.uuid){
    				var filepath = encodeURIComponent("/"+uploadPath+"/"+item.uuid+"_"+item.fileName);
    				var real = filepath.replace(new RegExp(/\\/g),"/");
    				location.href="/controller/download?fileName="+real;
    			}
    		})
    	})
    	
    });

    $(document).on("click", ".comment-modify__btn", function(){
    	 $(".replyModal").attr("style", "display:block;");
    	//$(".replyModal").fadeIn(200);
    	
    	var repNum = $(this).attr("data-repNum");
    	 var repCon = $(this).parent().parent().children(".replyContent").text();
    	 
    	 $(".modal_repCon").val(repCon);
    	 $(".modal_modify_btn").attr("data-repNum", repNum);
    	 console.log(repNum);
    	
    });
    $(".modal_cancel").click(function(){
    	
    	
    $(".replyModal").fadeOut(200);
  	      	
    	
    });
    $(".modal_modify_btn").click(function(){
    	 var modifyConfirm = confirm("정말로 수정하시겠습니까?");
    	 
    	 if(modifyConfirm) {
    	  var data = {
    	     rno : $(this).attr("data-repNum"),
    	     content : $(".modal_repCon").val()
    	     
    	    };  // ReplyVO 형태로 데이터 생성
    	  console.log(data.rno);
    	  console.log(data.content);
    	  $.ajax({
    	   url : "/controller/modifyReply",
    	   type : "post",
    	   data : data,
    	   success : function(result){	    
    	    
    	    	getreplylist();
    	     $(".replyModal").fadeOut(200);
    	    
    	      },
    	      
    	     });
    	    }
    	    
    	   });


    $(document).on("click", ".comment-delete__btn", function(){
     
     var data = {rno : $(this).attr("data-repNum")};
      
     $.ajax({
      url : "/controller/deleteReply",
      type : "post",
      data : data,
      success : function(){
    	  getreplylist();
      }
     });
    });

    function getreplylist(){
    	//var replyurl = "/controller/board/a";
    	var reply_bno = $('#reply_bno').val();
    	console.log(reply_bno);
    	//console.log(replyurl)
    	$.ajax({
    		url : "/controller/replylist",
    		type : 'get',
    		data: {bno: reply_bno},
    		dataType: 'json',
    		contentType: 'application/json',
    		success : function(result){
    			console.log(result);
    			var comments = "";
    			if(result < 1){
    				comments = "登録されているコメントがございません。";
    			}else{
    				for(let i=0; i<result.length; i++){
    					
    					console.log(result[i].rno);
    					comments += '<li data-repNum="'+ result[i].rno +'">';
    				
    					comments += '<p><i class="material-icons sidebar__topAvatar"> account_circle </i><span>'+ result[i].writer+' : &nbsp;</span> <span>'+result[i].content+'</span>'
    				       
    					let uid = '' + ${login_user.id};
    					if(uid == result[i].writer){
    						comments += '<button id="replyupdateBtn" class="comment-modify__btn" data-repNum="'+result[i].rno+'"><i class="fas fa-pen"></i></button> <button id="replydeletBtn" class="comment-delete__btn" data-repNum="'+ result[i].rno +'"><i class="fas fa-times"></i></button></p><div> '+result[i].regdate+'</div>'
    							}
    					comments += '</li>';
    					comments += '<br/>';
    				}
    			};
    			$(".replylist").html(comments);				
    		}
    	});
    };

    $(function(){
    	
    	$('#replyWriteBtn').click(function(){
    		
    		console.log("일미집");
    		var content = $('#reply_content').val();
    			writer = $('#reply_writer').val();
    			bno = (parseInt)($('#reply_bno').val());
    		
    		$.ajax({
    			url : "/controller/replywrite/"+bno+"/"+writer+"/"+content,
    			type : 'POST',
    			dataType : 'json',
    			success: function(result){
    				getreplylist();
    				$('#reply_content').val('');
    				$('#reply_writer').val('');
    			}
    			, error:function(error){
    				console.log("에러: " + error);
    			}
    			
    		})		
    		return false;
    	})
    	
    });


    function getFormatDate(data){
    	var year = date.getFullYear();
    	var month = (1+ date.getMonth());
    	month = month >= 10? month : '0' + month;
    	var day = date.getDate();
    	day = day >= 10 ? day : '0' + day;
    return year + '-' + month + '-' + day; 

    }
    $('#likebtn').click(function(){
    	likeupdate();
    });

    function likeupdate(){
    	var root = getContextPath(),
    	likeurl = "/like/likeupdate",
    	mid = $('#mid').val(),
    	bid = $('#bid').val(),
    	count = $('#likecheck').val(),
    	data = {"ltmid" : mid,
    			"ltbid" : bid,
    			"count" : count};
    	
    $.ajax({
    	url : root + likeurl,
    	type : 'POST',
    	contentType: 'application/json',
    	data : JSON.stringify(data),
    	success : function(result){
    		console.log("수정" + result.result);
    		if(count == 1){
    			console.log("좋아요 취소");
    			 $('#likecheck').val(0);
    			 console.log($('#likecheck').val());
    		}else if(count == 0){
    			console.log("좋아요!");
    			$('#likecheck').val(1);
    			console.log($('#likecheck').val());
    		}
    	}, error : function(request,status,error){
    		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    	}
    	
    	});
    };


    function getContextPath() {
        var hostIndex = location.href.indexOf( location.host ) + location.host.length;
        return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
    } 

    	let form = $("#infoForm2");
    	
    	
    	$("#list_btn").on("click", function(e){
    		
    		form.find("#bno").remove();
    		form.attr("action", "/controller/board/boardpage");
    		form.submit();
    		
    	});
    	
    	$("#modify_btn").on("click", function(e){
    		form.attr("action", "/controller/board/modifyenter").attr("method","post");		
    		form.submit();
    		
    	});	
    

    	 
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
    	       			actionForm.attr("action", "/controller/listpage").attr("method", "post");
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
    <script
    src="https://kit.fontawesome.com/99b96296a9.js"
    crossorigin="anonymous"
  ></script>
    
  </body>
</html>
