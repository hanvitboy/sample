<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� �����Դϴ�.


   <form role="form" method="post" action="/controller/modify">
                            <fieldset>
                                <div class="form-group">
          id : <input class="form-control" name="id" value="${login_user.id}" readonly>
                                </div>
                                <div class="form-group">
                     ��й�ȣ : <input class="form-control"  name="pw" type="password">
                                </div>
                                <div class="form-group">
                           �̸�: <input class="form-control" name="name" type="text" value="${login_user.name}" readonly>
                                </div>
                                <div class="form-group">
	                 ����:    <input class="form-control"  name="age" type="text" value="${login_user.age}">
                                </div>
                                <div class="form-group">
                           Ű:     <input class="form-control"  name="height" type="text" value="${login_user.height}">
                                </div>
                                <div class="form-group">
                            ������:    <input class="form-control"  name="weight" type="text" value="${login_user.weight}">
                                </div>
                                <div class="form-group">
                             Ȱ����:                 	<select name="actindex" id="actindex">
                                		<option value="25">���� Ȱ����</option>
                                		<option value="33">���� Ȱ����</option>
                                		<option value="40">���� Ȱ����(��ü�뵿)</option>
                                	</select>
                                </div>
                                <div class="form-group">                                
                     ����:              <input class="form-control"  name="gender" type="text" value="${login_user.gender}">
                                </div>
                                <div class="checkbox">
                                  
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" value="Modify">
                            </fieldset>
                        </form>
                        


</body>
</html>