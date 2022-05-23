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
 
  
  
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-12">
          <section class="mypage-form">
            <div class="logo">
              <div class="logo-mypage">
                <p>
               <a href="http://localhost:9090/controller/"><strong><span>fit</span>ness</strong></a>
                </p>
              </div>
            </div>
          </section>
        </div>
      </div>

      <div class="row align-items-center" style="height: 500px">
        <div class="col-12">
          <div class="member-infos">
            <div class="member-info">
       <form class="actionForm" method="post" action="">
              <div id="user-form">
                <div class="user-name">USER NAME<input type="text" name="name" value="${login_user.name }" /></div>
                <div class="user-id">USER ID<input type="text" name="id" value="${login_user.id }" readonly/></div>
                <div class="user-pw">PASSWORD<input type="password" name="pw" value="${login_user.pw }"/></div>
              </div>
            </div>
            <div class="member-info">
              <div id="user-form">
                <div class="user-age">AGE<input type="number" name="age" value="${login_user.age }"/></div>
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
            </div>
          </div>
          
          <div>
            <div id="btn-form">
              <div class="button-area">
                <a id="modify" class="btn-next" href="#" role="button">modify</a>
                <a id="withdrawal" class="btn-next" href="#" role="button">withdrawal</a>
                <a id="home" class="btn-next" href="http://localhost:9090/controller/" role="button">home</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <script type="text/javascript">
     
     var actionForm = $(".actionForm");
            	$(document).ready(function(){
            		$("#modify").on("click",function(e){
            			e.preventDefault();
            			actionForm.attr("action", "/controller/modify").attr("method", "post");
            			actionForm.submit();
            		})
            		
            	})
            	</script>
    
    
  </body>
</html>
    