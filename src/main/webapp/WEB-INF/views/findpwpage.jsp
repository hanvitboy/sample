<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<% request.setCharacterEncoding("UTF-8"); %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>
  

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$(".findpw").on("click", function(){
			console.log($("#id").val());
			console.log($("#name").val());
			console.log($("#gender").val());
		})
	});
</script>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="/controller/findpw" accept-charset="utf-8">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Userid" name="id" id="id" type="text" autofocus>
                                </div>
                                 <div class="form-group">
                                    <input class="form-control" placeholder="Name" name="name" id="name" type="text" autofocus>
                                </div> <div class="form-group">
                                    <input class="form-control" placeholder="Gender" name="gender" id="gender" type="text" autofocus>
                                </div>
                                
                             
                                <!-- Change this to a button or input when using this as a form -->
                                <input class="findpw" type="submit" value="find">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    

   


</body>

</html>
	