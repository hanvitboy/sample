<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    

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
                        <form role="form" method="post" action="/controller/login">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="userid" name="id" id="id" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="pw" id="pw" type="password" value="">
                                </div>
                                
                             
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" value="login">
                                
                                
                            
                        </form>
                                <form action="findpwpage" method="post">
								<input type="submit" value="findP.W">
								</form>
								</fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    


</body>

</html>
	