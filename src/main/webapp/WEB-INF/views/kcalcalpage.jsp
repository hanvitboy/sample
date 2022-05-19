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

<p><input class="message" type="text" value='${login_user.name}�� �ݰ����ϴ�.' readonly="readonly"></p>
<p><input class="message" type="text" value='${login_user.name}�� �� �Ϸ� ���뷮�� ${login_user.onedaykcal}' readonly="readonly"></p><br/>
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
	<input type="checkbox" value="-30"><span>�ȱ�</span>	
	</li>
	<li>
	<input type="checkbox" value="-50"><span>�ٱ�</span>
	</li>
	<li>
	<input type="checkbox" value="-70"><span>�밡��</span>
	</li>
	<li>
	<input type="checkbox" value="-150"><span>���ѻ��</span>
	</li>
	<li>
	<input type="checkbox" value="-160"><span>�����̱�</span>
	</li>
	<li>
	<input type="checkbox" value="-180"><span>���ϱ�</span>
	</li>
	<li>
	<input type="checkbox" value="-260"><span>�汸���</span>
	</li>
	</ul>
	<br>
	

	
</form>

	<input id="sexy" type="text" value="${login_user.onedaykcal}" readonly="readonly"/>

</body>
</html>