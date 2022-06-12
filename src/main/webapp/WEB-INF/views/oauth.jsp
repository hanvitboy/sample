<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KAKAO SIGNUP</title>
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

#btn-next {
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
  
  #btn-next:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}

  .int-area label {
 
  left: 10px;
  top: 0px;
  font-size: 15px;
color: #f7ca18;
}

.int-area input:focus + label,
.int-area input:valid + label {
  top: 0px;
  font-size: 14px;
  color: #f7ca18;
}

* {
  box-sizing: border-box;
  margin: 0;
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

/* signup-form */
form{
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
}

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

.signup-form h1 {
  font-size: 32px;
  letter-spacing: 0.3em;
  color: #fff;
  text-align: center;
  margin-bottom: 8px;
}

.signup-form h2 {
  font-size: 23px;
  letter-spacing: 0.3em;
  color: #fff;
  text-align: center;
  margin-bottom: 60px;
}

.signup-form h1 span {
  color: #f7ca18;
}

.int-area {
  width: 21%;
  position: relative;
  margin-top: 20px;
}

.int-area:first-child {
  margin-top: 0;
}

.int-area input {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  padding: 20px 10px 2px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #999;
  font-size: 18px;
  color: #fff;
}

  .int-area label {
 
  left: 10px;
  top: 0px;
  font-size: 15px;
color: #f7ca18;
}

.int-area input:focus + label,
.int-area input:valid + label {
  top: 0px;
  font-size: 14px;
  color: #f7ca18;
}

.btn-area {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 30px;
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



/*  <=768px (mobile) */
@media screen and (max-width:768px) {
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
  </head>
 
  <body>
    <section class="signup-form">
     <form id="actionForm" action="loginpage" method="post">
      <h1>
           <a id="home" href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      </h1>
      	</form>
      <h2>SIGNUP</h2>
      
      <form class="actionForm" method="post" action="/controller/addinfo">
        <div class="int-area">
          <input
            type="text"
            name="name"
            id="name"
            value="${nickname }"
            autocomplete="off"
            
          />
          <label for="name">USER NAME</label>
        </div>
        <div class="int-area">
          <input type="password" name="id" id="id" autofocus="autofocus" value="${kakaoid}" readonly autocomplete="off" required />
          <label for="id">KAKAO UUID</label>
         </div>
        
        <div class="int-area">
          <input
            type="hidden"
            name="pw"
            id="pw"
            autocomplete="off"
            value="masterkey123"
          />
        
        </div>
        <div class="btn-area">
          <button class="btn-next" type="submit">next</button>
         </div>
      </form>
     <br>
          <a id="btn-next" href="http://localhost:9090/controller/">home</a>
         <div>
        </div>
      
    </section>
      <script type="text/javascript">
     
     var dup; //중복 검사 변수
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		
            		$("#home").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/home").attr("method", "post");
            			actionForm.submit();
            		})
            		
            		
            		$("#btn-next").on("click",function(e){
						e.preventDefault();
            			
            			actionForm.attr("action", "/controller/home")
            			.attr("method", "post");
            			actionForm.submit();
            			
            	            		})
            		
            		
            	    $(".btn-next").on("submit",function(e){
            			e.preventDefault();
            			
            			actionForm.attr("action", "/controller/addinfo")
            			.attr("method", "post");
            			actionForm.submit();
            	            		})
            		
            		$(".btn-next").on("click",function(e){
            			if(dup){
            				alert("すでに加入されています。homeへお戻りください。")
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
							alert(result);
					}
					
				}
			})
		
	})		
	
	
	
		
	})
	
	
            	</script>
    
  </body>
</html>
	