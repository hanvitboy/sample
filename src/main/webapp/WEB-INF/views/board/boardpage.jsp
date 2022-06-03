<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
    <style>
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
 font-family: "DM Sans", sans-serif;
 
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


.active{
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
    min-width:auto;
  }
  
  .write__box__for-mobile{
    display:flex;
  }
  
}  
  
    
    </style>
    
  </head>
  <body onkeydown="javascript:onEnterLogin();" 
  onload="noBack();" onpageshow="if(event.persisted) noBack();">
        <div class="body__main">
      <div class="sidebar">
        <div class="sidebar__top">
          <img
            src="https://th.bing.com/th/id/OIP.hqJRscdDB4clU5YPhGeFvQHaEN?pid=ImgDet&rs=1"
            alt=""
          />
          <i class="material-icons sidebar__topAvatar"> account_circle </i>
          <h2><c:out value="${login_user.name }" /></h2>
        </div>

        <div class="sidebar__bottom">
          <button id="regBtn" class="sidebar__submit">글쓰기</button>
        </div>
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

        <div class="write__box__for-mobile">
          <button class="write__btn__for-mobile">글쓰기</button>
        </div>
      

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
					<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}" class="num">${num}</a></li>
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

window.history.forward();		
function noBack() {			
	window.history.forward();
	}      

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
	       		$("#nav-listboard").on("click",function(e){
	       			e.preventDefault();
	       			actionForm.attr("action", "/controller/board/boardpage").attr("method", "get");
	       			actionForm.submit();
	       		})
	       	})
	       	

</script>
    

</html>
