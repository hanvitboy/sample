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
  
  </style>
  </head>
 
  <body>
    <section class="signup-form">
      <h1>
       <a href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      </h1>
      <h2>SIGNUP</h2>
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
          <a class="btn-next" href="#" role="button">next</a>
        </div>
      </form>
    </section>
      <script type="text/javascript">
     
     var dup; //중복 검사 변수
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		$(".btn-next").on("click",function(e){
            			e.preventDefault();
            			if(dup){
            				alert("正しいIDを入力お願いします。")
            				return false;
            			}
            			
            			actionForm.attr("action", "/controller/addinfo")
            			.attr("method", "post");
            			actionForm.submit();
            	            		})
            		
            	})
            	
            
		$(function(){ 
		
		//blur 이벤트는 요소에 포커싱이 해제 되었을때 발생하는 이벤트
	$("#id").on("blur" , function(){
			$.ajax({
				url : "checkId",
				type : "post",
				data : {"id" : $(this).val()},
				dataType : "json",
				success : function(data){
					let result = "";
					if(data.result){
						if(("#id") == null){
							result= "※IDを入力してください。";
							dup = true;}
						else{
						result= "※このIDは使用できます。";
						dup = false;}
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
	