<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
    <%@ include file="header.jsp" %>   
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

  button,
  input,
  textarea {
  font-family: "DM Sans", sans-serif;
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

.personal-comment{
  display: flex;
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


.post__info > h2 {
  font-size: 15px;
}





.post__title{
  border: 1px solid lightgray;
  margin-top:15px;
  margin-bottom: 20px;
  border-radius: 10px;
  max-width: 100%;
  max-height: 25px;
  padding-left: 4px;
  display: block;
  width: 100%;
  resize:none;
}

.post__maintext{
border: 1px solid lightgray;
border-radius: 10px;
min-height: 300px;
max-width: 100%;
display: block;
width: 100%;
resize:none;
padding-left:2px;

}


.post__title:focus,
.post__maintext:focus{
box-shadow: 0 0 8px #e1b12c;
}


.post-modify__btns{
display:flex;
justify-content: space-around;
margin-top: 20px;

}



.delete__btn i{
color:gray;
}

.cancel__btn i{
  color:red;
}

.complete__btn i{
  color:green;
}




  
  .delete__btn:hover,
  .cancel__btn:hover,
  .complete__btn:hover
  {
  
  background-color: antiquewhite;
  border-color:gray;
  box-shadow: 0 0 7px #353b48;
    
    }


.delete__btn,
.cancel__btn,
.complete__btn{
  width: 100px;
  height: 40px;
  border-radius: 20px;
  border:2px solid #dcdde1;
  cursor:pointer;
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





.justifying{
  display: flex;
  align-items: center;
  justify-content: center;
}













.comment-modify__box {
  flex: 1;
  position:absolute;
  top: 40%;
 
}



.comment-modify__container {
  display:flex;
  min-width: 500px;
  min-height: 200px;
  flex-direction: column;
  align-items: center;
  background-color: white;
  border-radius: 10px;
  margin-bottom: 20px;
}

.input-mainText {
  
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
  margin-top: 15px;
  color: gray;
  padding: 10px;
  width: 70%;
}



.modify-cancel__btn,
.modify-confirm__btn
{

width: 100px;
padding: 10px;
border-radius: 20px;
border:2px solid #dcdde1;
cursor: pointer;

}

.modify-cancel__btn:hover,
.modify-confirm__btn:hover
{

background-color: antiquewhite;
border-color:gray;
box-shadow: 0 0 12px #353b48;
  
  }


  .modify-cancel__btn i{
  color: red;
  font-size: 25px;
}

.modify-confirm__btn i{
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
   
    <div class="body__main">
      <div class="sidebar">
        <div class="sidebar__top">
          <img
            src="https://th.bing.com/th/id/OIP.hqJRscdDB4clU5YPhGeFvQHaEN?pid=ImgDet&rs=1"
            alt=""
          />
          <i class="material-icons sidebar__topAvatar"> account_circle </i>
          <h2><c:out value="${pageInfo.writer}"/></h2>
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
                <form id="modifyForm" action="/controller/board/modify" method="post">
   	<input id="bno" type="hidden" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
	<input type="hidden" name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
	
        <div class="post">
          <div class="post__header">
            <div class="post__header__left">
              <i class="material-icons sidebar__topAvatar"> account_circle </i>
              <div class="post__info">
        		<input name="writer" type="hidden" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
        
                <h2><c:out value="${pageInfo.writer}"/></h2>
              </div>
            </div>
            <div class="post__header__right"><fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/></div>
          </div>

          <div class="post__body">
            <textarea class="post__title" name="title"><c:out value="${pageInfo.title}"/> </textarea>
            <textarea class="post__maintext" name="content"><c:out value="${pageInfo.content}"/></textarea>
       <div class="post-modify__btns"> 
       <button class="delete__btn" id="delete_btn"><i class="fas fa-trash-alt"></i>削除</button>
       <button class="cancel__btn" id="cancel_btn"><i class="fas fa-ban"></i>取消</button> 
       <button class="complete__btn" id="modify_btn"><i class="fas fa-check"></i>修正完了</button> </div>
          </div>
</form>
      <!-- Feed Ends -->
    </div>
    <!-- Main Body Ends -->


	<form id="infoForm" action="" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno }"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'> 
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
		<input type="hidden" name="keyword" value="${cri.keyword }">
		<input type="hidden" name="type" value="${pageMaker.cri.type }">     
	</form>		

    <script
    src="https://kit.fontawesome.com/99b96296a9.js"
    crossorigin="anonymous"
  ></script>
 
    <script
    src="https://kit.fontawesome.com/99b96296a9.js"
    crossorigin="anonymous"
  ></script>

	
<script>


    let form = $("#infoForm");        // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
    let mForm = $("#modifyForm");    // 페이지 데이터 수정 from
    
    /* 목록 페이지 이동 버튼 */
    $("#list_btn").on("click", function(e){
    	e.preventDefault();
        
        form.attr("action", "/controller/board/boardpage");
        form.submit();
    });
    
    /* 수정 하기 버튼 */
    $("#modify_btn").on("click", function(e){
    	e.preventDefault();
        mForm.submit();
    });
    
    /* 취소 버튼 */
    $("#cancel_btn").on("click", function(e){
    	e.preventDefault();
        form.attr("action", "/controller/board/get").attr("method","get");
        form.submit();
    });
   
    /* 삭제 버튼 */
    $("#delete_btn").on("click", function(e){
    	e.preventDefault();
        form.attr("action", "/controller/board/delete");
        form.attr("method", "post");
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
</body>
</html>