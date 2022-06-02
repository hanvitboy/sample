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
	<form name="replyForm" method="post">
	  <input type="hidden" id="bno" name="bno" value="${pageInfo.bno}" />
	  <input type="hidden" id="page" name="page" value="${cri.pageNum}"> 
	  <input type="hidden" id="perPageNum" name="perPageNum" value="${cri.amount}"> 
	  <input type="hidden" id="searchType" name="searchType" value="${pageMaker.cri.type}"> 
	  <input type="hidden" id="keyword" name="keyword" value="${cri.keyword}"> 

  <div>
    <label for="writer">댓글 작성자</label><input type="text" name="writer" value="${login_user.id}"readonly id="reply_writer"/>
    <br/>
    <label for="content">댓글 내용</label><input type="text" name="content" id="reply_content"/>
  </div>
  <div>
 	 <button type="button" id="replyWriteBtn">작성</button>
  </div>
</form>
	
	<!-- 댓글 -->
	<div id="reply">
	  <ol class="replyList">
	    <c:forEach items="${replyList}" var="replyList">
	      <li>
	        <p>
	        	작성자 : ${replyList.writer}<br/>
	      		 작성 날짜 : <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd" />
	   	     </p>
	
	        <p>${replyList.content}</p>
	        <c:if test="${login_user.id  eq replyList.writer }">
	        <div>	
			  <button type="button" class="replyUpdateBtn" data-rno="${replyList.rno}">수정</button>
			  <button type="button" class="replyDeleteBtn" data-rno="${replyList.rno}">삭제</button>
			</div>
			</c:if>
	      </li>
	    </c:forEach>   
	  </ol>
	</div>
	<div class="replylist">
	
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
		<c:if test="${login_user.id eq pageInfo.writer}"> 
		<a class="btn" id="modify_btn">수정 하기</a>
		</c:if>
		<!-- 목록페이지 눌렀을 시 기준 데이터를 유지하여 기존의 bno, pageNum, amount, keyword, type를 갖고있게 하기위해 -->
	<form id="infoForm2" action="/board/modify" method="get" >
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno }"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'> 
		<input type="hidden" name="keyword" value="${cri.keyword }">    
		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		<input type="hidden" name="reply_bno" id="reply_bno" value="${pageInfo.bno }">
	</form>
	
	
<script>
$(document).ready(function(){

	getreplylist();
	
});

function getreplylist(){
	//var replyurl = "/controller/board/a";
	var reply_bno = $('#reply_bno').val();
	console.log(reply_bno);
	//console.log(replyurl)
	$.ajax({
		url : "/controller/replylist",
		type : 'get',
		data: {bno: reply_bno},
		dataType: 'json',
		contentType: 'application/json',
		success : function(result){
			console.log(result);
			var comments = "";
			if(result < 1){
				comments = "등록된 댓글이 없습니다.";
			}else{
				for(let i=0; i<result.length; i++){
					comments +='</br>';
					comments +='<strong>';
					comments +='작성자 : ' + result[i].writer;
					comments +='</strong>&nbsp;&nbsp;&nbsp;';
					comments += '작성 날짜 : '+ result[i].regdate;
					comments += '<br/><p>';
					comments += '댓글 내용 : &nbsp;&nbsp;&nbsp';
					comments += result[i].content;
					comments += '</p>';
					comments += '<br/>';
					comments += '<button type="button" class="btn btn-outline-success" id="replyupdateBtn"';
					comments += 'data-rno='+ result[i].rno + '>';
					comments += '댓글 수정';
					comments += '</button>';
					comments += '<button type="button" class="btn btn-outline-success" id="replydeletBtn"';
					comments += 'data-rno='+ result[i].rno + '>';
					comments += '댓글 삭제';
					comments += '</button>';
					comments += '<br/>';
				}
			};
			$(".replylist").html(comments);				
		}
	});
};

$(function(){
	
	$('#replyWriteBtn').click(function(){
		
		console.log("일미집");
		var content = $('#reply_content').val();
			writer = $('#reply_writer').val();
			bno = (parseInt)($('#reply_bno').val());
		
		$.ajax({
			url : "/controller/replywrite/"+bno+"/"+writer+"/"+content,
			type : 'POST',
			dataType : 'json',
			success: function(result){
				getreplylist();
				$('#reply_content').val('');
				$('#reply_writer').val('');
			}
			, error:function(error){
				console.log("에러: " + error);
			}
			
		})
		
		
		
	})
	
	
	
	
	
});

function updateviewBtn(rno,regdate,content,writer){
	
	var commentview ="";
	
	commentsview += '<div id="rno' + rno + '">';
	commentsview += '<strong>';
	commentsview += '작성자 : ' + writer;
	commentsview += '<strong>&nbsp;&nbsp&nbsp&nbsp;';
	commentsview += '작성 날짜 : ' + regdate;
	commentsview += '<br><p>';
	commentsview += '댓글 내용 : &nbsp;&nbsp;&nbsp;';
	commentsview += '<textarea clas="form-control" id="reply_edit_content">';
	commentsview += content;
	commentsview += '</textarea>';
	commentsview += '</p>';
	commentsview += '<br/>';
	commentsview += '<button type="button" class="btn btn-outline-success"';
	commentsview += 'onclick="updateBtn('+rno+',\''+writer+'\')">댓글 작성</button>';
	commentsview += '<button type="button" class="btn btn-outline-success" onclick="getreplylist()">';
	commentsview += '취소';
	commentsview += '</button>';
	commentsview += '</div>';
	commentsview += '<br/>';
	
	$('#reply_rno'+rno).replacewith(commentsview);
	$('#reply_rno'+rno+'#reply_content').focus();
	
	
	
	
	
	
}

function getFormatDate(data){
	var year = date.getFullYear();
	var month = (1+ date.getMonth());
	month = month >= 10? month : '0' + month;
	var day = date.getDate();
	day = day >= 10 ? day : '0' + day;
return year + '-' + month + '-' + day; 

}

function updateBtn(rno,writer){
	content = $("reply_edit_content").val();
	
	$.ajax({
	
		url : "/controller/replyupdate/"+rno + "/"+ content,
		type : 'POST',
		dataType : 'JSON',
		success: function(result){
			getreplylist();
			
		}
		, error: function(error){
			console.log("whats going on"+ error);
		}
		
		
		
		
		
	})
	
	
	
	
	
};


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

//$(".replyWriteBtn").on("click", function(){
//	  var formObj = $("form[name='replyForm']");
//	  formObj.attr("action", "/controller/board/replyWrite");
//	  formObj.submit();
//	});

	
	
//댓글 수정 View
//$(".replyUpdateBtn").on("click", function(){
//	location.href = "replyUpdateView?pageNum=${cri.pageNum}"
//					+ "&amount=${cri.amount}"
//					+ "&keyword=${cri.keyword}"
//					+ "&type=${cri.type}"
//					+ "&bno=${pageInfo.bno}"
//					+ "&rno="+$(this).attr("data-rno");
//});	
		
//댓글 삭제 View
//$(".replyDeleteBtn").on("click", function(){
//	location.href = "replyDeleteView?pageNum=${pageInfo.bno}"
//		+ "&amount=${cri.amount}"
//		+ "&keyword=${cri.keyword}"
//		+ "&type=${cri.type}"
//		+ "&bno=${pageInfo.bno}"
//		+ "&rno="+$(this).attr("data-rno");
//});

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