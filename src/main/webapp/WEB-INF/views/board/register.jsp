<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
    <title>書き込み</title>
    <style>
* {
    margin: 0;
    padding: 0;
  }
  
  body {
    background: linear-gradient(to right bottom,#0d324d
  , gray);
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 100vh;
  }

.body__main{
  margin-top: 10vh;
  display: flex;
  min-width: 1200px;
 
  justify-content: center;
  
}
.feed {
  flex: 0.6;
  
}


.input-title {
  width: 85%;
  border: 1px solid lightgray;
margin-bottom: 20px;
margin-top:20px;
border-radius: 30px;
padding: 10px;
}



.feed__inputContainer {
  display:flex;
  flex-direction: column;
  align-items: center;
  background-color: white;

  border-radius: 10px;
  margin-bottom: 20px;
}

.input-mainText {
  
  border: 1px solid lightgray;
  border-radius: 30px;
  min-height: 300px;
  max-width: 90%;
  padding: 10px;

  padding-left: 15px;
  display: block;
  width: 100%;
  height: 300px;
  resize:none;

}



.feed__inputOptions {
  width:90%;
  display: flex;
  justify-content: space-around;

}



.inputOption {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  color: gray;
  padding: 10px;
  width: 70%;
}



.upload-box__btn{

width: 100px;
padding: 10px;
border-radius: 20px;
border:2px solid #dcdde1;
cursor: pointer;

}

.upload-box__btn:hover{

background-color: antiquewhite;
border-color:gray;
box-shadow: 0 0 12px #353b48;
  
  }


.inputOption:first-child .upload-box__btn i{
  color: red;
  font-size: 25px;
}

.inputOption:nth-child(2) .upload-box__btn i{
  color: #0097e6;
  font-size: 25px;
}


.inputOption:last-child .upload-box__btn i{
  color: #fbc531;
  font-size: 25px;
}



#uploadFile{

width: 300px;
    padding: 10px;
    border-radius: 20px;
    border: 2px solid #dcdde1;
    cursor: pointer;
    align-content: center;
    display: flex;

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
    min-width:auto;
  }

  .feed{
    flex:0.8;
  }

  .feed__inputContainer{
    width:100%;
  }

 
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
width:100%;
background-color: white;}
</style>
  </head>
  <body>
       
     <form action="/controller/board/register" method="post" name="MyForm">
    <div class="body__main">
      <!-- Feed Starts -->
      <div class="feed">
        <div class="feed__inputContainer">
          <input type="text" name="title" id="mytitle" class="input-title" placeholder="タイトルを記入してください。"/>
          <textarea name="content" id="mycontent" class="input-mainText"  placeholder="内容を記入してください。"></textarea>
			 <!-- 첨부파일  -->
  <form>
  <div class="uploadDiv">
  	<input type="file" name ="uploadFile" id="uploadFile" multiple>
  </div>
  <div class="uploadResult">
  	<ul>
  		
  	</ul>
  </div>

  
  <div class="oImg">
  </div>
  </form>
  <!-- 첨부파일  끝-->
<input type="hidden" name="writer" id="mywriter" value="${login_user.id}"/>
          <div class="feed__inputOptions">
            <div class="inputOption">
              <button type="button" class="upload-box__btn" onclick="location.href='/controller/board/boardpage'"><i class="fas fa-ban"></i><h4>リストへ</h4>
           </button>
          </div>

          <div class="inputOption">
            <button type="reset" class="upload-box__btn"><i class="fas fa-redo"></i><h4>書き直し</h4>
         </button>
        </div>



          <div class="inputOption">
            <button type="submit" class="upload-box__btn"><i class="fas fa-arrow-circle-up"></i>
            <h4>書き込む</h4>
          </button>
          </div>
        </div>
      </div>

      <!-- Post Starts -->

      <!-- Feed Ends -->
    </div>
    <!-- Main Body Ends -->
</form>
  
  <!-- 
  <form action="/controller/uploadFormAction" method="post" enctype="multipart/form-data">
  <input type="file" name="uploadFile" multiple>
  <button>Submit</button>
  </form>
   -->
  
  </body>

  <script src="https://kit.fontawesome.com/99b96296a9.js" crossorigin="anonymous"></script>
  <script>
  $(document).ready(function() {
	  var file = null;
	  $("#uploadFile").on("change",function(){
		  $(".uploadResult ul").empty();
		  console.log($(this).val());
		  var str = "";		  
		  $.each($(this)[0].files,function(idx, item){
			  str += "<li><img src='/controller/resources/img/attach.png' width='20' height='20'>"+ item.name +"</li>";
		  })
		  $(".uploadResult ul").append(str);
	  })
	  
	  var formObj = $("form[name='MyForm']");
	  $("button[type='submit']").on("click",function(e){
		 e.preventDefault(); 
		 console.log(formObj);
	  	 var formData = new FormData();		  
		 
		 formData.append("writer",$("#mywriter").val());
		 formData.append("content",$("#mycontent").val());
		 formData.append("title",$("#mytitle").val());
		 
		
		 
		 console.log("sexy");
		 var inputFile = $("input[name='uploadFile']");		  
		 var files = inputFile[0].files;
		  
		//formData에 파일 추가
			for (let i = 0; i < files.length; i++) {
				if(!checkFile(files[i].name, files[i].size)){
					return false;
				}
				formData.append("uploadFile",files[i]);
			}
		
		 
		  $.ajax({
			  url : "/controller/uploadAjaxAction",
				processData : false,
				contentType : false,
				data : formData,
				type : "POST",
				success : function(result){
					console.log(result);
					$(".uploadDiv").html(cloneOjb.html());
					showUploadFile(result);
					location.href="/controller/board/boardpage";
				}
		  
		  });
		  return false;
		 
	  })
	  
	  //파일 업로드 먼저(insert) list로 가져와서 board insert할때 같이 넣어줌
	  
	  let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	  let maxSize = 5242880;//파일 크기 5mb
	  
	//파일을 검사하는 함수
		function checkFile(fileName, fileSize) {
			if (fileSize > maxSize) {
				alert("파일 최대크기 초과");
				return false;
			}
			//파일 확장자 검사 : 정규식과 파일 이름이 일치하는 패턴이면 false 를 리턴
			if (regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드 불가!");

				return false;
			}
			//두개 모두 통과했다면 return true;
			return true;

		}
	  
		//첨부파일 결과
		  var uploadResult = $(".uploadResult ul");
		  
	  function showUploadFile(uploadResultArr){
		  console.log("fuck");
		  var str = "";
		  
		  $(uploadResultArr).each(function(i,obj){
			  if(!obj.image){
				  var fileCellPath = encodeURIComponent("/"+obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
			  		var fileLink = fileCellPath.replace(new RegExp(/\\/g),"/");
			  		console.log("/"+obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				  str += "<div id='attach'><li><a href='/controller/download?fileName="+fileLink+"'><img src='/controller/resources/img/attach.png' width='20' height='20'>" + obj.fileName + "</a><span data-file=\'"+fileCellPath+"\' data-type='file'>X</span></li></div>";
				  		
			  }
			  else{
				  //str +="<li>"+obj.fileName + "</li>";	
				  var fileCellPath = encodeURIComponent("/"+obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
				  var originPath = "/" + obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName;
				  originPath = originPath.replace(new RegExp(/\\/g),"/");
				  console.log(originPath);
				  str += "<div id='attach'><li><a href=\"javascript:showImage(\'"+originPath+"\')\"><img src='/controller/display?fileName="+fileCellPath+"'></a><span data-file=\'"+fileCellPath+"\' data-type='image'>X</span></li></div>";
				  //<a onClick='javascript:showImage(\""+originPath+"\");'>
			  }
				  
		  });
		  uploadResult.append(str);
		  
	  }
	  
	  
	  
	  $(".uploadResult").on("click","span",function(e){
		  alert("삭제하겠습니다");
		  var targetFile = $(this).data("file");
		  console.log(targetFile);
		  var type = $(this).data("type");
		  console.log(type);
		  const div = document.getElementById('attach');
		  div.remove();
		  $.ajax({
			  url:'/controller/deleteFile',
			  data:{fileName:targetFile,type:type},
			  dataType:'text',
			  type:'POST',
			  success : function(result)
			  {
				  
			  }
		  });
		  
		  
		  
		  
	  });
	  
	  var cloneOjb = $(".uploadDiv").clone();
	  
	  $("#uploadBtn").on("click",function(e){
		  
		  console.log("sexy");
		  var formData = new FormData();		  
		  var inputFile = $("input[name='uploadFile']");		  
		  var files = inputFile[0].files;
		  
		  console.log(files);
		  
		//formData에 파일 추가
			for (let i = 0; i < files.length; i++) {
				if(!checkFile(files[i].name, files[i].size)){
					return false;
					
				}
				formData.append("uploadFile",files[i]);
			}
		  
		  $.ajax({
			  url : "/controller/uploadAjaxAction",
				processData : false,
				contentType : false,
				data : formData,
				type : "POST",
				success : function(result){
					console.log(result);
					$(".uploadDiv").html(cloneOjb.html());
					showUploadFile(result);
				}
		  
		  });
		  return false;
		  
	  });
});
  
  function showImage(fileCellPath) {	
	  $(".oImg").html("<img src='/controller/display?fileName="+fileCellPath+"' style='width:600px; height:600px;'>");
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
