<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>List</title>
    <link rel="stylesheet" href="resources/css/list.css" />
  </head>
  <body>
    <table>
      <div class="table-member-list">
        <caption>
          Member Information List
        </caption>
        <thead>
          <tr class="thead-title">
            <th>IDX</th>
            <th>ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>GENDER</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${list }" var="member">
          <tr class="tdata">
           	<td><c:out value="${member.idx }"/></td>
			<td><c:out value="${member.id }"/></td>
			<td><c:out value="${member.name }"/></td>
			<td><c:out value="${member.age }"/></td>
			<td><c:out value="${member.gender }"/></td>
          </tr>
         </c:forEach>
        </tbody>
        <div class="btn-area">
          <a class="btn-next" href="http://localhost:9090/controller/" role="button">home</a>
        </div>
      </div>
    </table>
  </body>
</html>
