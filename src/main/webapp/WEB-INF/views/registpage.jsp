<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>signup-form1</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
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
    
    
    <link rel="stylesheet" href="resources/css/signup-form1.css" />
  <style>
  
  .signup-form {
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
 background-color : rgb(99,98,80);
  transition: all 0.9s, color 0.3;
}
  
  </style>
  </head>
 
  <body>
    <section class="signup-form">
      <h1>
       <a href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      </h1>
      <h2>SIGNUP</h2>
      <a id="kakao-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=3c29e5973236d66995354c01142b54eb&redirect_uri=http://localhost:9090/controller/oauth&response_type=code">
       <img src="resources/assets/registimage.png"/></a>
        
      <form class="actionForm" method="post" action="/controller/addinfo">
        <div class="int-area">
          <input
            type="text"
            name="name"
            id="name"
            autocomplete="off"
            required
          />
          <label for="id">USER NAME</label>
        </div>
        <div class="int-area">
          <input type="text" name="id" id="id" autocomplete="off" required />
          <label for="id">USER ID<small>&nbsp; &nbsp; &nbsp;<span id="idResult"></span></small></p></label>
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
          <button class="btn-next" type="submit">next</button>
        </div>
      </form>
    </section>
      <script type="text/javascript">
     
     var dup; //중복 검사 변수
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		
            	            		
            	    $(".btn-next").on("submit",function(e){
            			e.preventDefault();
            			
            			actionForm.attr("action", "/controller/addinfo")
            			.attr("method", "post");
            			actionForm.submit();
            	            		})
            		
            		$(".btn-next").on("click",function(e){
            			if(dup){
            				alert("他のIDを入力お願いします。")
            				return false;
            			}
            			
            	            		})
            	
            	})
            	
            
		$(function(){ 
		
		//blur 이벤트는 요소에 포커싱이 해제 되었을때 발생하는 이벤트
		
		var id = $(id).val();
	$("#id").on("blur" , function(){
			$.ajax({
				url : "checkId",
				type : "post",
				data : {"id" : $(this).val()},
				dataType : "json",
				success : function(data){
					let result = "";
					if(data.result){
							dup = false;
						}else{
							result= "※すでに登録されているIDです。";
							dup = true;
					}
					$("#idResult").text(result);
				}
			})
		
	})		
	
	
	
		
	})
	
	
            	</script>
    
  </body>
</html>
	