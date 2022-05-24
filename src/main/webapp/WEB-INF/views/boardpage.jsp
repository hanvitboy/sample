<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Board List</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#regBtn").on("click", function() {
							//controller한테 get방식으로 /board/register 요청
							self.location = "/controller/board/registpage";

						})


					})

	let moveForm = $("#moveForm");

	$(".move").on(
			"click",
			function(e) {
				e.preventDefault();
				moveForm.append("<input type='hidden' name='bno' value='"
						+ $(this).attr("href") + "'>");
				moveForm.attr("action", "/controller/board/get");
				moveForm.submit();
			});
	let result = '<c:out value="${result}"/>';
	
	checkAlert(result);
	console.log(result);
	
	function checkAlert(result){
		
		if(result === ''){
			return;
		}
		if(result ==='regist success'){
			alert("게시글의 등록이 성공적으로 완료되었습니다")
		}
		if(result ==='modify success'){
			alert("게시글의 수정이 성공적으로 완료되었습니다")
		}
		if(result ==='remove success'){
			alert("게시글의 삭제가 성공적으로 완료되었습니다")
		}
	}
</script>
</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Tables</h1>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					Board List Page <a href="http://localhost:9090/controller/"><strong><span>home</span></strong></a>
					<button id="regBtn" type="button" class="btn btn-xs pull-right">Register
						New Board</button>
				</div>

				<div class="panel-body">
					<table class="table table-striped table-bordered table-hover">

						<thead>
							<tr>
								<th>BNO</th>
								<th>TITLE</th>
								<th>WRITER</th>
								<th>REGDATE</th>
								<th>UPDATEDATE</th>
								<th>REPLYCOUNT</th>
								<th>Hit</th>
							</tr>
						</thead>

						<!-- 모든 등록된  list 출력 -->
						<c:forEach items="${list }" var="board">
							<tr>
								<td><c:out value="${board.bno }" /></td>


								<td><a class="move"
									href='/controller/board/get?bno=<c:out value="${board.bno}"/>'> <c:out
											value="${board.title}" />
								</a></td>



								<td><c:out value="${board.writer }" /></td>
									
								<td><fmt:formatDate pattern="yyyy/MM/dd"
										value="${board.regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy/MM/dd"
										value="${board.updateDate }" /></td>
										<td><c:out value="${board.hit }" /></td>

							</tr>

						</c:forEach>
					</table>
					<form id="moveForm" method="get"></form>


				</div>
			</div>
		</div>
	</div>



</body>

</html>