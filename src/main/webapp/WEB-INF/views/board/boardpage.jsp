<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>


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
    <script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<script
      src="https://kit.fontawesome.com/3435530994.js"
      crossorigin="anonymous"
    ></script>
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
 

    <style>
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

.header-top{
width:100%;}

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
  flex-wrap : nowrap;
  width: 100%;
  background-color: white;
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


 .card {
 display: none;
 }


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

  /*.navbar-menu .weight-management {
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

  .navbar-menu .weight-management :hover {
    color: #fff !important;
    background-color: transparent;
    text-shadow: none;
  }

  .navbar-menu .weight-management :hover:before {
    top: 0%;
    bottom: auto;
    height: 100%;
  }

  .navbar-menu .weight-management :before {
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
  }*/
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

  /* main */
  .main {
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://img.wallpapersafari.com/phone/750/1334/58/45/4jw0uD.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-title p {
    font-size: 18px;
  }

  .main-information {
    height: auto;
  }

  .main-information.a {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://s1.1zoom.me/b5652/792/Fitness_Gym_Sitting_Pose_Panties_Singlet_Glove_584214_1080x1920.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-information.b {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://s1.1zoom.me/b5458/951/Salads_Vegetables_Tomatoes_Olive_Plate_514464_1080x1920.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-information.c {
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://images.pexels.com/photos/416754/pexels-photo-416754.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }

  .main-info {
    flex-direction: column;
    width: 100%;
  }

  .main-info-explain {
    margin-right: 0;
    padding: 20px 50px;
  }

  .main-info-img {
    display: none;
  }
  /*.main-info-img img {
    max-width: 100%;
    height: auto;
  }*/

  /* footer */

  footer {
    display: flex;
    flex-direction: column;
  }
}
    
    
    * {
  margin: 0;
  padding: 0;
}

.thumb__btn > i,
.comment__btn > i,
.total__thumbs{
  color:gray;
}

a{
text-decoration: none;
color : black;
}


body {
  background: linear-gradient(to right bottom,#0d324d
  , gray);
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
 
}



/* Main Body */
.body__main {
  margin-top: 10vh;
  display: flex;
  justify-content: center;

}
/* Sidebar */
.sidebar {
  position: sticky;
  top: 80px;
  min-width:250px;
  flex: 0.2;
  border-radius: 10px;
  text-align: center;
  height: fit-content;
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





.sidebar__top > h4 {
  color: gray;
  font-size: 12px;
  margin-top: 5px;
}

.sidebar__top > h2 {
  font-size: 18px;
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
  cursor: pointer;
  }
  
  


/* Feed */
.feed {
  flex: 0.6;
  margin: 0 20px;
  min-width: 700px;
  
}

.search-box{
 
  display: flex;
  justify-content: center;
  background-color: white;
  padding: 15px;
  border-radius: 10px;
  margin-bottom: 10px;
 
}

.serach-input-scroll{

  
  display: flex;
  justify-content: center;
  background-color: white;
  padding: 15px;
  margin-bottom: 10px;
  border-radius: 10px;
}

.serach-input-scroll-btn{

  border: 3px solid #e1b12c;
  border-radius: 5px;
}

.serach-input-scroll-btn > option{

  border: 3px solid #e1b12c;
  border-radius: 5px;
}




.search-input-bar{

 
  width: 50%;
  display: flex;
  justify-content: center;
  background-color: white;
  padding: 15px;
  margin-bottom: 10px;
  border-radius: 10px;


}

.searchTerm {
  width: 100%;
  border: 3px solid #e1b12c;
  border-right: none;
  border-radius: 5px 0 0 5px;
  color: black;
}


.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #e1b12c;
  background: #e1b12c;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

.write__box__for-mobile{
  display: none;
  justify-content: center;
  background-color: white;
  padding: 15px;
  border-radius: 10px;
  margin-bottom: 10px;

}


.write__btn__for-mobile{
  width:120px;
  height: 50px;
  box-sizing: border-box;
 background-color: transparent;
 color:gray;
  transition: all 300ms ease;
  border: 3px solid #e1b12c;
  border-radius: 10px;
  font-weight: 600;
 }
 
 .write__btn__for-mobile:hover {
color: white;
box-shadow: 0 0 12px #e1b12c;
background-color: #e1b12c;
cursor: pointer;
}



.feed__inputContainer {
  background-color: white;
  padding: 10px;
  padding-bottom: 20px;
  border-radius: 10px;
  margin-bottom: 20px;
}




.feed__inputOptions {
  display: flex;
  justify-content: space-around;
  align-items: center;
  
}



.post__body{
display: flex;
justify-content: center;
overflow:hidden;

}

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

.thumb__btn:hover,
.comment__btn:hover {
  background-color: #dcdde1;
  border-radius: 10px;
}

.thumb__btn:focus{
  color: black;
}

.thumb__btn:focus + .thumb__btn i{
  color: black;
}



.thumb__btn > h4,
.comment__btn > h4 {
  margin-left: 5px;
}





.comment__window{
  display: none;
}

.show-text .comment__window{
  display: block;
  font-size: 13px;
  font-weight: 600;
}




/* Post */
.post {
  background-color: white;
  padding: 15px;
  margin-bottom: 10px;
  border-radius: 10px;
  position: relative;
}

.post:hover {
  border: 4px solid gray;
  
}

.whole-box__click{
  position:absolute;
  height:100%;
  width:100%;

  cursor:pointer;
  z-index:2;
  opacity:0;


}


.post__header {
  display: flex;
  justify-content: space-between;


}


.post__header__left {
  display: flex;


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


.board_page {
  margin-top: 30px;
  margin-bottom: 30px;
  text-align: center;
  font-size: 12px;
  display:flex;
  justify-content: center;
  align-items: center;
  overflow:hidden;

  
}

.board_page a {
  text-decoration: none;
  width: 32px;
  height: 32px;
  color:  white;
  box-sizing: border-box;
  display:flex;
  justify-content: center;
  align-items: center;
  transition: all 300ms ease;
  border: 2px solid #e1b12c;
  border-radius: 10px;
  font-weight: 600;
  margin-right:5px;
  margin-left:5px;



}

.board_page a:hover {
color: white;
box-shadow: 0 0 12px #e1b12c;
background-color: #e1b12c;
}


.active2{
background-color:#e1b12c;
box-shadow: 0 0 12px #e1b12c;
text-decoration: none;
  width: 32px;
  height: 32px;
  color:  white;
  box-sizing: border-box;
  display:flex;
  justify-content: center;
  align-items: center;
  transition: all 300ms ease;
  border: 2px solid #e1b12c;
  border-radius: 10px;
  font-weight: 600;
  margin-right:5px;
  margin-left:5px;

	
	
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



@media screen and (max-width: 768px){


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
    min-width:200px;
  }
  
  .write__box__for-mobile{
    display:flex;
  }

.board_page {
  margin-top: 30px;
  margin-bottom: 30px;
  text-align: center;
  font-size: 12px;
  display:flex;
  justify-content: center;
  align-items: center;
  overflow:hidden;
}
.board_page a {
  width: 24px;
  height: 24px;
  margin-right:3px;
  margin-left:3px;
  border-radius:5px;

}

.active2{

  width: 24px;
  height: 24px;
  border-radius:5px;
}



}  
  ::-webkit-scrollbar {
display: none;
}
    
    </style>
    
  </head>
  <body onkeydown="javascript:onEnterLogin();">
        
        
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
          <li><a id="daieto" class="nav-list" href="http://localhost:9090/controller/diet">献立管理</a></li>
          <li><a id="torei" class="nav-list" href="http://localhost:9090/controller/training">運動情報</a></li>
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
          <h2><c:out value="${login_user.id }" /></h2>
        </div>
<c:if test="${not empty login_user}">
 
        <div class="sidebar__bottom">
          <button id="regBtn" class="sidebar__submit">書き込み</button>
        </div>
 </c:if>
      </div>
      <!-- Sidebar Ends -->

      <!-- Feed Starts -->
      <div class="feed">
        <div class="search_area">
        <div class="search-box">
          <div class="serach-input-scroll">
            <select class="serach-input-scroll-btn" name="type">
              <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--検索タイプ選択--</option>
			                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>タイトル</option>
			                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>内容</option>
			                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>作成者</option>
			                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>タイトル + 内容</option>
			                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>タイトル + 作成者</option>
            </select>
          </div>
          <div class="search-input-bar">
            <input
              type="text"
              class="searchTerm"
              placeholder="What are you looking for?"
              name="keyword"
              value="${pageMaker.cri.keyword }"
            />
            <button type="submit" class="searchButton">
              <i class="fas fa-search"></i>
            </button>
          </div>
          </div>
        </div>

 <c:if test="${not empty login_user}">
        <div class="write__box__for-mobile">
          <button id="regBtn2" class="write__btn__for-mobile">書き込み</button>
        </div>
      </c:if>

        <!-- Post Starts -->
        	<c:forEach items="${list }" var="board">
        <div class="post">
        <a class="move"	href='<c:out value="${board.bno}"/>'>
          <input type="button" class="whole-box__click" />
          <div class="post__header">
            <div class="post__header__left">
              <i class="material-icons sidebar__topAvatar"> account_circle </i>
              <div class="post__info">
                <h2><c:out value="${board.writer }" /></h2>
              </div>
            </div>
            <div class="post__header__right"><fmt:formatDate pattern="yyyy/MM/dd"
										value="${board.updateDate }" /></div>
          </div>

          <div class="post__body">
			<c:out value="${board.title}" />
          </div>

          <div class="feed__inputOptions">
            <div class="thumb__btn">
              <i class="material-icons"> visibility </i>
              <h4><c:out value="${board.hit }" /></h4>
            </div>
            <div class="thumb__btn">
              <i class="material-icons"> thumb_up </i>
              <h4><c:out value="${board.like_count }" /></h4>
            </div>

            <div class="comment__btn">
              <i class="material-icons"> comment </i>
              <h4><c:out value="${board.reply_count }" /></h4>
            </div>
          </div>
        </a>
        </div>
        </c:forEach>
        <!-- Post Ends -->

			<ul class="board_page">
			 <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}" class="bt prev"><i class="fas fa-angle-left"></i></a></li>
                </c:if>
				<!-- 각 번호 페이지 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
					<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active2":"" }"><a href="${num}" class="num">${num}</a></li>
					</c:forEach>
				<!-- 다음페이지 버튼 -->
	                <c:if test="${pageMaker.next}">
                <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }" class="bt next"><i class="fas fa-angle-right"></i></a></li>
                </c:if>   
					</ul>
					
         
         
      </div>

<form id="moveForm" method="get">
	<input type="hidden" id="pageNum" name="pageNum" value="${pageMaker.cri.pageNum }">					
	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	<input type="hidden" name="type" value="${pageMaker.cri.type }">
						
				</form>


      <!-- Feed Ends -->

    </div>
    <!-- Main Body Ends -->
  </body>

  <script
      src="https://kit.fontawesome.com/99b96296a9.js"
      crossorigin="anonymous"
    ></script>
    
<script>
/*
window.history.forward();		
function noBack() {			
	window.history.forward();
	}      */

let moveForm = $("#moveForm");
let moveObj = moveForm.clone();

function onEnterLogin(){
	var keyCode = window.event.keyCode;
	
	if (keyCode == 13) { //엔테키 이면
	
		let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("検索タイプを選択してください。");
            return false;
        }
        
        if(!keyword){
            alert("キーワードを入力してください。");
            return false;
        }        
        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();

	
	}
} //onEnterLogin()


$(document).ready(function() {
		$("#regBtn").on("click", function() {
			//controller한테 get방식으로 /board/register 요청
			self.location = "/controller/board/registpage";

		})
		
		$("#regBtn2").on("click", function() {
		self.location = "/controller/board/registpage";

		})

		$(".move").on("click", function(e){
			e.preventDefault();
		  if($("input[name='bno']").val() == null) {
				
		moveForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
		moveForm.attr("action", "/controller/board/get");	
		
				
          } else {
			
        moveForm.find($("input[name='bno']")).val($(this).attr("href"));
		moveForm.attr("action", "/controller/board/get");	
			}
		moveForm.submit(); 
		});
		
		
		

	})
	$(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("検索タイプを選択してください。");
            return false;
        }
        
        if(!keyword){
            alert("キーワードを入力してください。");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });

	
	
	 $(".board_page a").on("click", function(e){		 
		 e.preventDefault();
	        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	        moveForm.attr("action", "/controller/board/boardpage");
	        moveForm.submit();
	    });
	 
	
	let result = '<c:out value="${result}"/>';

	checkAlert(result);
	console.log(result);
	history.replaceState({},null,null);

	function checkAlert(result) {

		if (result === '' || history.state) {
			return;
		}
		if (result === 'regist success') {
			alert("게시글의 등록이 성공적으로 완료되었습니다")
		}
		if (result === 'modify success') {
			alert("게시글의 수정이 성공적으로 완료되었습니다")
		}
		if (result === 'remove success') {
			alert("게시글의 삭제가 성공적으로 완료되었습니다")
		}
	}
	

	
	 
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
	       		
	       		$("#daieto").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/diet").attr("method", "post");
       			actionForm.submit();
       		})
       		$("#torei").on("click",function(e){
       			e.preventDefault();
       			actionForm.attr("action", "/controller/training").attr("method", "post");
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
