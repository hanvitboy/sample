<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>mypage</title>
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
    <link rel="stylesheet" href="resources/css/mypage.css" />
   <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 
  <style type="text/css">
  
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

body {
  width: 100%;
  height: 100vh;
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url(resources/assets/login.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}
/* mypage-form */
.mypage-form {
  display: flex;
  justify-content: flex-start;
  width: 100%;
  position: absolute;
  z-index: 1;
}

.logo {
  display: flex;
  justify-content: left;
  align-items: center;
  margin-top: 10px;
  margin-left: 20px;
}

.logo .logo-mypage p {
  display: flex;
  flex-direction: column;
  letter-spacing: 0.3em;
  color: #fff;
  padding: 8px 12px;
}

.logo .logo-mypage strong {
  font-size: 30px;
  margin-bottom: -15px;
}

.logo .logo-mypage strong span {
  color: #f7ca18;
}

/* member-information */

.member-infos {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  height: 100vh;
}

/* member-info */
.member-info {
  width: 500px;
  height: 300px;
  display: flex;
  justify-content: center;
  align-items: center;
  border: 2px solid #f7ca18;
  padding: 20px;
  text-align: center;
  border-radius: 5px;
}

#user-form .user-id input {
  margin-left: 60px;
}

#user-form .user-name,
.user-id {
  margin-bottom: 20px;
}

.user-name,
.user-id,
.user-pw {
  color: #999;
}

.user-name input,
.user-id input,
.user-pw input {
  margin-left: 30px;
  border: none;
  border-bottom: 2px solid #999;
  border-radius: 5px;
  cursor: auto;
  background-color: transparent;
  color: #fff;
  transition: all 0.7s;
}

.user-name input:hover,
.user-name input:focus,
.user-id input:hover,
.user-id input:focus,
.user-pw input:hover,
.user-pw input:focus {
  border-color: #f7ca18;
}

/*  member-info age*/

.user-age,
.user-height,
.user-weight,
.user-activity,
.user-gender {
  color: #999;
}

.user-age,
.user-height,
.user-weight,
.user-activity,
.user-gender {
  display: flex;
  margin-bottom: 20px;
  align-items: center;
  justify-content: space-between;
}

.user-age input {
  margin-right: 22px;
  border: none;
  border-bottom: 2px solid #999;
  border-radius: 5px;
  cursor: auto;
  background-color: transparent;
  color: #fff;
  transition: all 0.7s;
}

.user-height input {
  margin-left: 34px;
  border: none;
  border-bottom: 2px solid #999;
  border-radius: 5px;
  cursor: auto;
  background-color: transparent;
  color: #fff;
  transition: all 0.7s;
}

.user-weight input,
.user-activity input,
.user-gender input {
  margin-left: 30px;
  border: none;
  border-bottom: 2px solid #999;
  border-radius: 5px;
  cursor: pointer;
  background-color: transparent;
  color: #fff;
  transition: all 0.7s;
}

.user-age input:hover,
.user-age input:focus,
.user-height input:hover,
.user-height input:focus,
.user-weight input:hover,
.user-weight input:focus,
.user-activity input:hover,
.user-activity input:focus,
.user-gender input:hover,
.user-gender input:focus {
  border-color: #f7ca18;
}

.form-radio {
  cursor: pointer;
}

/*.form-radio::before {
  content: "";
  display: inline-block;
  width: 10px;
  height: 10px;
  background: #ffffff;
  border: 1px solid #e0e0e0;
  margin-right: 8px;
}

.form-radio::before {
  border-radius: 50%;
}

.input-chek,
.input-radio {
  display: none;
}

.input-chek:checked + .form-chek::before,
.input-radio:checked + .form-radio::before {
  background: #f7ca18;
  transition: all 0.5s;
}

.input-chek:checked + .form-chek,
.input-radio:checked + .form-radio {
  color: #f7ca18;
  transition: all 0.5s;
}*/

.member-info.two .user-activity input[type="radio"] {
  display: none;
}

.member-info.two .user-activity input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 24px;
  width: 53px;
  border-radius: 5px;
  line-height: 24px;
  text-align: center;
  font-size: 13px;
  transition: all 0.3s ease-in-out;
}

.member-info.two .user-activity input[type="radio"] + label {
  color: #999;
}

.member-info.two .user-activity input[type="radio"]:checked + label {
  background-color: #f7ca18;
  color: #fff;
}

.member-info.two .user-gender input[type="radio"] {
  display: none;
}

.member-info.two .user-gender input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 24px;
  width: 53px;
  border-radius: 5px;
  line-height: 24px;
  text-align: center;
  font-size: 13px;
  transition: all 0.3s ease-in-out;
}
.member-info.two .user-gender input[type="radio"] + label {
  color: #999;
}
.member-info.two .user-gender input[type="radio"]:checked + label {
  background-color: #f7ca18;
  color: #fff;
}

/* member-information two */
.member-information.two {
  display: none;
}

/* button */
#btn-form {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
}

#btn-form .button-area {
  display: flex;
  position: absolute;
  right: -105px;
  top: 155px;
}

#btn-form .button-area .btn-next {
  display: inline-flex;
  justify-content: center;
  align-items: center;
  width: 80px;
  height: 30px;
  line-height: 40px;
  border: 2px solid #f7ca18;
  border-radius: 5px;
  padding: 8px 12px;
  margin-top: 15px;
  margin-right: 10px;
  font-size: 12px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
}

#btn-form .button-area .btn-next:last-child {
  margin-right: 0;
}

#btn-form .button-area .btn-next:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}

/*  <=768px (mobile) */
@media screen and (max-width: 768px) {
  /* mypage-form */
  .mypage-form {
    justify-content: center;
    top: 70px;
  }

  /* member-information one*/
  .member-information.one {
    width: 100%;
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(resources/assets/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
  }

  .member-info {
    width: 91%;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 2px solid #f7ca18;
    padding: 20px;
    text-align: center;
    border-radius: 5px;
  }

  .user-name,
  .user-id,
  .user-pw {
    font-size: 15px;
  }

  .member-information.one.member-info.two {
    display: none;
  }

  /* member-infomation two */
  .member-information.two {
    display: flex;
    justify-content: center;
    width: 100%;
    height: 100vh;
    background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url(https://wallpapercave.com/wp/wp5412909.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }

  .member-information.two .member-info {
    width: 340px;
  }

  .member-information.two .member-infos {
    flex-direction: column;
    justify-content: center;
  }

  .user-age,
  .user-height,
  .user-weight,
  .user-activity,
  .user-gender {
    font-size: 15px;
  }

  .user-age input {
    margin-left: 14px;
  }

  .user-height input {
    margin-left: 13px;
  }

  .user-weight input,
  .user-activity input,
  .user-gender input {
    margin-left: 12px;
  }

  /* button */
  .member-information.one #btn-form {
    display: none;
  }

  #btn-form {
    display: flex;
  }

  #btn-form .button-area {
    display: flex;
    top: 5px;
    left: -58px;
  }
  #btn-form .button-area .btn-next {
    padding: 8px 12px;
    margin-top: 15px;
    margin-right: 10px;
  }

  #btn-form .button-area .btn-next:last-child {
    margin-right: 0;
  }
}
  
  </style>
  
  </head>
  <body>
     <body>
    <section class="mypage-form">
      <div class="logo">
        <div class="logo-mypage">
          <p>
            <strong><span>fit</span>ness</strong>mypage
          </p>
        </div>
      </div>
    </section>

    <section class="member-information one">
      <div class="member-infos">
        <div class="member-info">
        <form class="actionForm" method="post" action="">
          <div id="user-form">
            <div class="user-name">USER NAME<input type="text" id="namae" name="name" value="${login_user.name}" /></div>
            <div class="user-id">USER ID<input type="text" name="id" id="aidi" value="${login_user.id }" readonly/></div>
            <div class="user-pw">PASSWORD<input type="password" name="pw" id="pasowado" value="${login_user.pw }"/></div>
          </div>
        </div>
        <div class="member-info two">
          <div id="user-form" action="">
            <div class="user-age">AGE<input type="number"  name="age" value="${login_user.age }"/></div>
            <div class="user-height">
              HEIGHT<input type="number" name="height" value="${login_user.height }" /><span>cm</span>
            </div>
            <div class="user-weight">
              WEIGHT<input type="number" name="weight" value="${login_user.weight }"/> <span>kg</span>
            </div>
            <div class="user-activity">
              ACTIVITY
              <input
                id="few"
                type="radio"
                name="actindex"
                class="input-radio"
                value="25"
                <c:if test="${login_user.actindex == 25}"> checked </c:if>
              />
              <label for="few" class="form-radio">few</label>
              <input
                id="usual"
                type="radio"
                name="actindex"
                class="input-radio"
                value="33"
                <c:if test="${login_user.actindex == 33}"> checked </c:if>
              />
              <label for="usual" class="form-radio">usual</label>
              <input
                id="many"
                type="radio"
                name="actindex"
                class="input-radio"
                value="40"
                <c:if test="${login_user.actindex == 40}"> checked </c:if>
              />
              <label for="many" class="form-radio">many</label>
            </div>
            <div class="user-gender">
              GENDER
              <input
                id="man"
                type="radio"
                name="gender"
                class="input-radio"
                value="MAN"
                <c:if test="${login_user.gender == 'MAN'}"> checked </c:if>
              />
              <label for="man" class="form-radio">man</label>
              <input
                id="woman"
                type="radio"
                name="gender"
                class="input-radio"
                value="WOMAN"
                <c:if test="${login_user.gender == 'WOMAN'}"> checked </c:if>
              />
              <label for="woman" class="form-radio">woman</label>
               </form>
            </div>
          </div>
          
          <div id="btn-form">
            <div class="button-area">
              <a id="modify" class="btn-next" href="#" role="button">modify</a>
                <a id="withdrawal" class="btn-next" href="javascript:void(0)" onClick="javascript:goPost()" role="button" >withdrawal</a>
                <a id="home" class="btn-next" href="http://localhost:9090/controller/" role="button">home</a>
            </div>
          </div>
        </div>
       
        
      </div>
     
    </section>

    <section class="member-information two">
      <div class="member-infos">
        <div class="member-info two">
        <form class="actionForm2" method="post" action="">
          <div id="user-form" action="">
            <div class="user-age">AGE<input type="number" name="age" value="${login_user.age }"/></div>
            <div class="user-height">
              HEIGHT<input type="number" name="height" value="${login_user.height }"/><span>cm</span>
            </div>
            <div class="user-weight">
              WEIGHT<input type="number" name="weight" value="${login_user.weight }"/> <span>kg</span>
            </div>
            <div class="user-activity">
              ACTIVITY
              <input
                id="few2"
                type="radio"
                name="actindex"
                class="input-radio"
                value="25"
                      <c:if test="${login_user.actindex == 25}"> checked </c:if>
              />
              <label for="few2" class="form-radio">few</label>
              <input
                id="usual2"
                type="radio"
                name="actindex"
                class="input-radio"
                value="33"
                      <c:if test="${login_user.actindex == 33}"> checked </c:if>
              />
              <label for="usual2" class="form-radio">usual</label>
              <input
                id="many2"
                type="radio"
                name="actindex"
                class="input-radio"
                value="40"
                    <c:if test="${login_user.actindex == 40}"> checked </c:if>
              />
              <label for="many2" class="form-radio">many</label>
            </div>
            <div class="user-gender">
              GENDER
              <input
                id="man2"
                type="radio"
                name="gender"
                class="input-radio"
                 value="MAN"
                      <c:if test="${login_user.gender == 'MAN'}"> checked </c:if>
              />
              <label for="man2" class="form-radio">man</label>
              <input
                id="woman2"
                type="radio"
                name="gender"
                class="input-radio"
                 value="WOMAN"
                    <c:if test="${login_user.gender == 'WOMAN'}"> checked </c:if>
              />
              <label for="woman2" class="form-radio">woman</label>
              <input type="hidden" id="irum" name="name" value="${login_user.name}" />
            <input type="hidden" id="adi" name="id" value="${login_user.id }" />
           <input type="hidden" id="bibon" name="pw" value="${login_user.pw }"/> 
              </form>
            </div>
          </div>
        </div>
        <div id="btn-form">
          <div class="button-area">
            	<a id="modify2" class="btn-next" href="#" role="button">modify</a>
                <a id="withdrawal" class="btn-next" href="javascript:void(0)" onClick="javascript:goPost()" role="button" >withdrawal</a>
                <a id="home2" class="btn-next" href="http://localhost:9090/controller/" role="button">home</a>
          </div>
        </div>
      </div>
    </section>
    
     <script type="text/javascript">
     
     
     function goPost(){
    	    let f = document.createElement('form');
    	    f.setAttribute('method', 'post');
    	    f.setAttribute('action', '/controller/withdraw');
    	    document.body.appendChild(f);
    	    var result = confirm('本当に脱退なさいますか?'); 
    	    if(result) {  f.submit(); alert('本日までどうもありがとうございました。'); } 
    	    else { return false; }

    	   
    	}

    	
     var namae= document.getElementById("namae").value;          	
     var pasowado = document.getElementById("pasowado").value;   
   //  $("#irum").attr("value" , $("#namae").val());
    // $("#bibon").attr("value" , document.getElementById("pasowado").value);
     document.getElementById("irum").setAttribute('value', document.getElementById("namae").value);
    document.getElementById("bibon").setAttribute('value', document.getElementById("pasowado").value);
     
     
     var actionForm = $(".actionForm");
     var actionForm2 = $(".actionForm2");
            	$(document).ready(function(){
            		$("#modify").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/modify").attr("method", "post");
            			actionForm.submit();
            		})
            		
            		$("#modify2").on("click",function(e){
            			e.preventDefault();
            			actionForm2.attr("action", "/controller/modify").attr("method", "post");
            			actionForm2.submit();
            		})
            		
					$("#home").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/home").attr("method", "post");
            			actionForm.submit();
            		})
            		
            		$("#home2").on("click",function(e){
            			e.preventDefault();
            			actionForm2.attr("action", "/controller/home").attr("method", "post");
            			actionForm2.submit();
            		})
            		
            		
            	})
            	
            	
            	</script>
    
    
  </body>
</html>
    