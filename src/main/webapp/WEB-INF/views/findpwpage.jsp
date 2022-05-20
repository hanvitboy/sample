<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<% request.setCharacterEncoding("UTF-8"); %>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>forget-pw</title>
    
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
    <link rel="stylesheet" href="resources/css/forget-pw.css" />
    <style>
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

.find-pw {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
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

.gender-info {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: left;
  width: 600px;
  position: relative;
  margin-top: 20px;
}

.gender-info h4 {
  margin-right: 140px;
  color: #999;
}

.genderForm {
  width: 268px;
}
.genderoption {
  display: flex;
  justify-content: space-between;
}

.genderoption label {
  color: #999;
}

.manoption {
  margin-right: 40px;
}

.form-radio::before {
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
}

.btn-area {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 30px;
  letter-spacing: 0.3em;
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
    
    </style>
  </head>
  <body>
    <section class="signup-form">
      <h1>
     <a href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
      </h1>
      <h2>find password</h2>
      
      <form class="find-pw" action="">
        <div class="int-area">
          <input
            type="text"
            name="name"
            id="name"
            autocomplete="off"
            required
          />
          <label for="id">USER ID</label>
        </div>
        <div class="int-area">
          <input type="text" name="id" id="id" autocomplete="off" required />
          <label for="id">USER NAME</label>
        </div>
        <div class="gender-info">
          <h4>Gender</h4>
          <div class="genderoption">
            <div class="manoption">
              <input
                type="radio"
                id="Man"
                name="gender"
                class="input-radio"
                value="MAN"
                required
              />
              <label for="Man" class="form-radio">Man</label>
            </div>
            <div class="womanoption">
              <input
                type="radio"
                id="Woman"
                name="gender"
                class="input-radio"
                value="WOMAN"
                required
              />
              <label for="Woman" class="form-radio">Woman</label>
            </div>
          </div>
        </div>
        </div>
        </form>
        <div class="btn-area">
          <a class="btn-next" href="#" role="button">find</a>
        </div>
      </form>
    </section>
    <script>
    var actionForm = $(".find-pw");
	$(document).ready(function(){
		$(".btn-next").on("click",function(e){
			e.preventDefault();
			actionForm.attr("action", "/controller/findpw").attr("method", "post");
			actionForm.submit();
		})
		
	})
</script>
  </body>
</html>
