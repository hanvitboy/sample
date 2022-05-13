<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>    
<%@ include file="../includes/header.jsp"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Modify</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Modify Page</div>
		</div>
		<div class="panel-body">
		<form role="form" action="/board/modify" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
				
			
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
		<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
		<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'>
	
			<div class="form-group">
				<label>Bno</label> <input class="form-control" name="bno"
					value='<c:out value="${board.bno }"/>' readonly />
			</div>
			<div class="form-group">
				<label>Title</label> <input class="form-control" name="title"
					value='<c:out value="${board.title }"/>' />
			</div>
			<div class="form-group">
				<label>Text Area</label>
				<textarea class="form-control" rows="3" name="content"><c:out value="${board.content }" /> </textarea>
			</div>

			<div class="form-group">
				<label>Writer</label> <input class="form-control" name="writer"
					value='<c:out value="${board.writer }"/>' readonly />
			</div>
			
			<div class="form-group">
				<label>RegDate</label> <input class="form-control" name="regdate"
					value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate }"/>' readonly />
			</div>
			
			<div class="form-group">
				<label>UpdateDate</label> <input class="form-control" name="updateDate"
					value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate }"/>' readonly />
			</div>
			<sec:authentication property="principal" var="principal"/>
			<sec:authorize access="isAuthenticated()">
			<c:if test="${principal.username eq board.writer }">
			<button data-oper="modify" type="submit" class="btn btn-default">Modify</button>
			<button data-oper="delete" type="submit" class="btn btn-danger">Delete</button>
			</c:if>
			</sec:authorize>
			<button data-oper="list" type="submit" class="btn btn-info">List</button>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	//어떤 submit 버튼을 눌렀는지 확인 후에 종류에 맞는 요청을 controller에 보내도록
	
	let formObj = $("form"); //form 태그 가져오기
	
	//button에 click 이벤트를 추가
	$("button").on("click" , function(e){
		//e -> 이벤트 객체
		//이 객체에 존재하던 기본 이벤트를 제거(submit제거)
		e.preventDefault();
		
		//이 버튼이 어떤 기능을 할지 알아봅시다.
		//이 버튼의 data-oper 속성을 가저온다
		var operation = $(this).data("oper");
		
		//이 operation이 delete인가 modify 인가 list인가?
		//만약 delete 버튼이었다 -> form의 액션="/board/delete" method="post"
		//만약 modify 버튼이었다 -> form의 액션="/board/modify" method="post"
		//만약 list 버튼이었다 -> form의 액션="/board/list" method="get"
		
		if(operation === "modify"){
			//formObj.attr("action", "/board/modify") form action이랑 같은내용이므로 지워라
		}else if(operation === "delete"){
			formObj.attr("action", "/board/remove")
		}else if(operation === "list"){
			//form전송 필요없다. 화면이동만
			//self.location = "/board/list";
			//form을 통해서 가도록해보자
			formObj.attr("action", "/board/list").attr("method", "get");
			
			//input에저장해놓은 pageNum amount 값을 복제
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var typeTag = $("input[name='type']").clone();
			var keywordTag = $("input[name='keyword']").clone();
		
			
			formObj.empty(); //form 요소 내용 지우기
			formObj.append(pageNumTag).append(amountTag).append(typeTag).append(keywordTag);
		}
		formObj.submit();
	})

})

</script>



<%@ include file="../includes/footer.jsp"%>