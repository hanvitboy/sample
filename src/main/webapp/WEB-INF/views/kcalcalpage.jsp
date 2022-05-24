<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<html lang="ko">
  <head>
   <link href="resources/css/style.css" rel="stylesheet">
  
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project</title>
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
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="resources/css/style.css" />
     <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<style>
body {
  font-family: "DM Sans", sans-serif;
  font-family: "Noto Sans JP", sans-serif;
}

.header {
  display: flex;
  align-items: center;
  justify-content:space-between;
  padding: 15px 0;
margin-right: 50px;
margin-left:50px;
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
.welcome{
width:100px;
}

.message{
    width:180px;
   margin-right: 20px;
 	display : flex;
 	align-items: center;
 	font-weight:bold;
 	color:gray;
   animation: notificationAnimation 1s ease-in-out;
  }
.message span{
width: 180px;
}

.nav {
  display: flex;
  justify-content: center;
  align-items: center;

}


  @keyframes notificationAnimation {
    0% {
      transform: scale(0.5);
    }
    40% {
      transform: scale(1.2);
    }
    100% {
      transform: scale(1);
    }
  }

	.header-left,
	.header-right{
	display: flex;
	}

.logo {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 30px;
  width: 200px;
}

.nav .nav-list li
{	display: flex;
	justify-content: center;
	width:120px;
}

.TodayKcal,
.recommendedKcal{
  display: flex;
  justify-content: center;
  align-items: center;

}

.calSubmit{
  display: flex;
  justify-content: center;
  align-items: center;
}
.calSumit_btn {
  background-color: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 200px;
  height: 40px;

  border: 3px solid #f7ca18;
  border-radius: 5px;
  margin: 15px auto;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  color: #999;
  transition: all 0.9s, color 0.3;
  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif
}

.fixedCalBox{
width:250px;
height: 300px;


font-size: 13px;
font-weight: 600;
display: flex;
flex-direction: column;
justify-content: space-evenly;
align-items: center;
background-color: black;
color:white;
border-radius: 30px;
box-shadow:10px 20px 50px rgba(0,0,0,0.10), 0 10px 10px rgba(0,0,0,0.10);
border: 4px solid yellow;

position:fixed;
bottom:40px;
right:50px;
overflow: hidden;

}



.calSumit_btn:hover {
  color: #fff;
  box-shadow: 200px 0 0 0 #f7ca18 inset;
  background-color: #f7ca18;
  transition: all 0.5s;
}


#kcalFromBack1,
#kcalFromBack2{
 
  height: 100%;
  width: 16%;
  background: none;
   color: inherit;
   border: none;
   padding: 0;
   font: inherit;
   cursor:default;
  pointer-events: none;
   outline: inherit;
  font-weight: 700;
  font-size: 17px;
  text-shadow: 2px 2px blueviolet;
}



</style>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	/* $("button").on("click", function(e) {
		e.preventDefault();
		$("input[type='checkbox']:checked").each(function(){
			const value = $(this).val();
			console.log(value);
			
		})
	})*/
	
	$("input[type='checkbox']").on("click", function() {
		
		var value = $("#kcalFromBack1").val();
		
		$("input[type='checkbox']:checked").each(function(){
			value -= parseInt($(this).val());
			
		})
		/*
		$("input[type='checkbox']:checked").each(function(){
			value += parseInt($(this).val());
			
		})
		*/
		$("#kcalFromBack2").val(value);
		
	})
	
})
</script>
 <link href="resources/css/calstyle.css" rel="stylesheet">
<body>
  <section class="header-top">

<div class="header">
            <div class="header-left">
              <div class="logo">
               <form class="actionForm" action="home" method="get">
                <a class="button-home" href="#">
                <img src="resources/assets/Logo.png" alt="Logo" />
                  <p>
                    <strong><span>fit</span>ness</strong>
                  </p>
                </a>
                </form>
              </div>
              <div class="nav">
                <ul>
                <form class="actionForm" method="post">
                  <a id="calo" class="nav-list" href="#"><li>体重管理</li></a>
                  </form>
                 
                  <a class="nav-list" href="#"><li>献立管理</li></a>
                  
                  <a class="nav-list" href="#"><li>運動情報</li></a>
               	
               	<a id="nav-listboard" class="nav-list" href="#"><li>掲示板</li></a>
               	
                </ul>
              </div>
              </div>
             <div class="header-right">
         <c:if test="${not empty login_user.name}">
         <div class="message">
	<span>Welcome, ${login_user.name}<i class="fas fa-birthday-cake"></i></span>
	</div> </c:if>
<c:if test="${not empty login_user.name}">
</c:if>
             
              <div class="button-group">
              
           <c:if test="${empty login_user.name}">
              <form class="actionForm" action="loginpage" method="post">
                <a class="button-login" href="#" role="button">LOGIN</a>
                </form>
                <a class="button-signup" href="#">SIGNUP</a>
                 </c:if>
                 
                 <c:if test="${not empty login_user.name}">
                 <form class="actionForm" action="infopage" method="post">
                   <a class="button-info" href="#">Mypage</a>
                   </form>
<form class="actionForm" action="logout" method="get">
<a class="button-logout" href="#" role="button">LOGOUT</a>
</form></c:if>
 <c:if test="${login_user.id == 'admin'}">
<form class="actionForm" action="listpage" method="get">
 <a class="button-list" href="#" role="button">LIST</a>
</form> </c:if>
</div>

</div>
</div>

           
          
    </section>


<main class="Boxes">
      <section class="Box1">
        <div class="BoxTitle">
          <span><i class="fa-solid fa-person"></i>Activity</span>
        </div>
        <form>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-dumbbell"></i>
                </span>
                <span class="checkbox-label">work-out</span>
                <div class="showUp">400 kcls</div>
              </span>
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-100" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-briefcase"></i>
                </span>
                <span class="checkbox-label">work</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-200" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-walking"></i>
                </span>
                <span class="checkbox-label">walk</span>
                <div class="showUp">200 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-running"></i>
                </span>
                <span class="checkbox-label">running</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-biking"></i>
                </span>
                <span class="checkbox-label">cycling</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-bed"></i>
                </span>
                <span class="checkbox-label">sleep</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-60" />
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-mobile-alt"></i>
                </span>
                <span class="checkbox-label">phone</span>
                <div class="showUp">60 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-120"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-book-open"></i>
                </span>
                <span class="checkbox-label">study</span>
                <div class="showUp">120 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-futbol"></i>
                </span>
                <span class="checkbox-label">soccer</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-basketball-ball"></i>
                </span>
                <span class="checkbox-label">basketball</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-swimmer"></i>
                </span>
                <span class="checkbox-label">swim</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-350"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-venus-mars"></i
                ></span>
                <span class="checkbox-label">yas</span>
                <div class="showUp">350 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-200"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-bowling-ball"></i>
                </span>
                <span class="checkbox-label">bowlinng</span>
                <div class="showUp">200 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-400"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-table-tennis"></i>
                </span>
                <span class="checkbox-label">ping-pong</span>
                <div class="showUp">400 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"> <i class="fas fa-music"></i></span>
                <span class="checkbox-label">sing</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-500"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-mountain"></i
                ></span>
                <span class="checkbox-label">climbing</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-golf-ball"></i
                ></span>
                <span class="checkbox-label">golf</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-280"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-skating"></i
                ></span>
                <span class="checkbox-label">skating</span>
                <div class="showUp">280 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-350"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-skiing"></i></span>
                <span class="checkbox-label">skiing</span>
                <div class="showUp">350 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="-220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-baseball"></i
                ></span>
                <span class="checkbox-label">baseball</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box2">
        <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Breakfast</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box3">
               <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Lunch</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
      <section class="Box4">
               <div class="BoxTitle">
          <span
            ><i class="fa-solid fa-spoon"></i>Consume calories for
            Dinner</span
          >
        </div>
        <div class="checkbox-group">
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="155"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-egg"></i>
                </span>
                <span class="checkbox-label">egg</span>
                <div class="showUp">155 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="264"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fa-solid fa-bread-slice"></i
                ></span>
                <span class="checkbox-label">bread</span>
                <div class="showUp">264 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-pizza-slice"></i>
                </span>

                <span class="checkbox-label">pizza</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-apple-whole"></i
                ></span>
                <span class="checkbox-label">apple</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="580"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fa-solid fa-burger"></i>
                </span>
                <span class="checkbox-label">burger</span>
                <div class="showUp">580 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="500" />
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-hotdog"></i></span>
                <span class="checkbox-label">hotdog</span>
                <div class="showUp">500 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input"  value="150"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-seedling"></i
                ></span>
                <span class="checkbox-label">salad</span>
                <div class="showUp">150 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="300"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-fish"></i></span>
                <span class="checkbox-label">grilled-fish</span>
                <div class="showUp">300 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="550"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-cookie"></i>
                </span>
                <span class="checkbox-label">snack</span>
                <div class="showUp">550 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="600"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon">
                  <i class="fas fa-cheese"></i>
                </span>
                <span class="checkbox-label">cake</span>
                <div class="showUp">600 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="220"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-ice-cream"></i>
                </span>
                <span class="checkbox-label">ice-cream</span>
                <div class="showUp">220 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="750"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-bacon"></i> </span>
                <span class="checkbox-label">pork-belly</span>
                <div class="showUp">750 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="800"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-drumstick-bite"></i>
                </span>
                <span class="checkbox-label">chicken</span>
                <div class="showUp">800 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="100"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"
                  ><i class="fas fa-candy-cane"></i>
                </span>
                <span class="checkbox-label">candy</span>
                <div class="showUp">100 kcls</div></span
              >
            </label>
          </div>
          <div class="checkbox">
            <label class="checkbox-wrapper">
              <input type="checkbox" class="checkbox-input" value="444"/>
              <span class="checkbox-tile">
                <span class="checkbox-icon"><i class="fas fa-beer"></i> </span>
                <span class="checkbox-label">alcohol</span>
                <div class="showUp">444 kcls</div></span
              >
            </label>
          </div>
        </div>
      </section>
    </main>
    <span></span>
    <div class="fixedCalBox">
      <div class="recommendedKcal">
        <span>Recommend kcal:</span> <input id="kcalFromBack1" value="${login_user.onedaykcal}" readonly/></span>
        <span>kcals</span>
      </div>
      <div class="TodayKcal">
        <span>Kcal disparity:</span> <input id="kcalFromBack2" value="${login_user.onedaykcal }" readonly/>
        <span>kcals</span>
      </div>
      <div class="calSubmit">
        <input class="calSumit_btn" type="submit" value="SUBMIT" />
      </div>
      
    </div>
 
    <script
      src="https://kit.fontawesome.com/99b96296a9.js"
      crossorigin="anonymous"
    ></script>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    
    <script>
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
            			actionForm.attr("action", "/controller/listpage");
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
            			actionForm.attr("action", "/controller/boardpage").attr("method", "post");
            			actionForm.submit();
            		})
            	})
            	</script>
  </body>
</html>
