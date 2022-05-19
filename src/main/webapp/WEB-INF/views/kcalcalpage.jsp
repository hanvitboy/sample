<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
		
		var value = $("#onedaykcal").val();
		
		$("input[type='checkbox']:checked").each(function(){
			value -= parseInt($(this).val());
			
		})
		/*
		$("input[type='checkbox']:checked").each(function(){
			value += parseInt($(this).val());
			
		})
		*/
		$("#sexy").val(value);
		
	})
	
})
</script>
<body>

<p><input class="message" type="text" value='${login_user.name}님 반갑습니다.' readonly="readonly"></p>
<p><input class="message" type="text" value='${login_user.name}님 의 하루 섭취량은 ${login_user.onedaykcal}' readonly="readonly"></p><br/>
<input type="hidden" value="${login_user.onedaykcal}" id="onedaykcal">

<form>
<ul>
	<li>
	<h2>Food</h2>
	<input type="checkbox" value="30"><span>30kcal</span>	
	</li>
	<li>
	<input type="checkbox" value="50"><span>50kcal</span>
	</li>
	<li>
	<input type="checkbox" value="70"><span>70kcal</span>
	</li>
	<li>
	<input type="checkbox" value="150"><span>150kcal</span>
	</li>
	<li>
	<input type="checkbox" value="160"><span>160kcal</span>
	</li>
	<li>
	<input type="checkbox" value="180"><span>180kcal</span>
	</li>
	<li>
	<input type="checkbox" value="260"><span>260kcal</span>
	</li>
	</ul>
	
	<h2>Exercise</h2>
	<ul>
	<li>
	<input type="checkbox" value="-30"><span>걷기</span>	
	</li>
	<li>
	<input type="checkbox" value="-50"><span>뛰기</span>
	</li>
	<li>
	<input type="checkbox" value="-70"><span>노가다</span>
	</li>
	<li>
	<input type="checkbox" value="-150"><span>격한사랑</span>
	</li>
	<li>
	<input type="checkbox" value="-160"><span>움직이기</span>
	</li>
	<li>
	<input type="checkbox" value="-180"><span>뭐하기</span>
	</li>
	<li>
	<input type="checkbox" value="-260"><span>방구뀌기</span>
	</li>
	</ul>
	<br>
	

	
</form>

	<input id="sexy" type="text" value="${login_user.onedaykcal}" readonly="readonly"/>

</body>
</html>