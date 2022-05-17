<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
      <title>Member List</title>
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
            			<div class="panel-heading">Member List Page
            			</div>
            		
            			<div class="panel-body">
            				<table class="table table-striped table-bordered table-hover">
            					<thead>
            						<tr>
            						<th>IDX</th>
            						<th>ID</th>
            						<th>NAME</th>
            						<th>AGE</th>
            						<th>GENDER</th>
            						</tr>
            					</thead>
            					
            					<!-- 모든 등록된  list 출력 -->
            					<c:forEach items="${list }" var="member">
            					<tr>
									<td><c:out value="${member.idx }"/></td>
									<td><c:out value="${member.id }"/></td>
									<td><c:out value="${member.name }"/></td>
									<td><c:out value="${member.age }"/></td>
									<td><c:out value="${member.gender }"/></td>
									
									</tr>
            					
            					</c:forEach>
            				</table>
            				
            			
            				
            			</div>
            		</div>
            	</div>
            </div>

</body>

</html>