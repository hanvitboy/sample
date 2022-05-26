<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
</style>
</head>
<body>
<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>조회수</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.hit}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="content" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 수정일</label>
		<input name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
	</div>
	
	<td id="like">
					<c:choose>
						<c:when test="${ltlike ==0}">
							<button type="button" class="btn btn-light" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>					
						<c:when test="${ltlike ==1}">
							<button type="button" class="btn btn-danger" id="likebtn" style="background-color:red">좋아요</button>
							<input type="hidden" id="likecheck" value="${ltlike }">
						</c:when>
					</c:choose>					
				</td> 	
		<input type="hidden" value="${login_user.id}" id="mid">
		<input type="hidden" value="${pageInfo.bno}" id="bid">
		<input type="hidden" value="${ltlike}" id="likecheck">
	
	
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a>
		<form id="infoForm1" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		</form>
	</div> 	
		<c:if test="${login_user.name eq pageInfo.writer}"> 
		<a class="btn" id="modify_btn">수정 하기</a>
		</c:if>
	<form id="infoForm2" action="/board/modify" method="get" >
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno }"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'> 
			
	</form>
	
	
<script>
$('#likebtn').click(function(){
	likeupdate();
});

function likeupdate(){
	var root = getContextPath(),
	likeurl = "/like/likeupdate",
	mid = $('#mid').val(),
	bid = $('#bid').val(),
	count = $('#likecheck').val(),
	data = {"ltmid" : mid,
			"ltbid" : bid,
			"count" : count};
	
$.ajax({
	url : root + likeurl,
	type : 'POST',
	contentType: 'application/json',
	data : JSON.stringify(data),
	success : function(result){
		console.log("수정" + result.result);
		if(count == 1){
			console.log("좋아요 취소");
			 $('#likecheck').val(0);
			 console.log($('#likecheck').val());
			 $('#likebtn').attr('class','btn btn-light');
			 $('#likebtn').css('background-color', 'white');
		}else if(count == 0){
			console.log("좋아요!");
			$('#likecheck').val(1);
			console.log($('#likecheck').val());
			$('#likebtn').attr('class','btn btn-danger');
			$('#likebtn').css('background-color', '#db0d36');
		}
	}, error : function(request,status,error){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	}
	
	});
};

function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
} 

	let form = $("#infoForm2");
	
	
	$("#list_btn").on("click", function(e){
		
		form.find("#bno").remove();
		form.attr("action", "/controller/board/boardpage");
		form.submit();
		
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/controller/board/modifyenter").attr("method","post");		
		form.submit();
		
	});	
</script>	
</body>
</html>