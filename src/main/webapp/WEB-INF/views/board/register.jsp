<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/controller/board/register" method="post">
		
		<div class="form-group">
			<label>Title</label><input class="form-control" name="title">
		</div>

		<div class="form-group">
			<label>Text area</label>
			<textarea class="form-control" rows="5" name="content"></textarea>


		</div>
		<div class="form-group">
			<label>Writer</label><input class="form-control" name="writer"
				value="${login_user.name}"readonly>
		</div>
		<!-- 제출 -->
		<button type="submit" class="btn btn-default">submit</button>

		<!-- 초기화 -->
		<button type="reset" class="btn btn-default">reset</button>
	</form>
	

</body>
</html>