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
	<style>
	.pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
 .active{
      background-color: #cdd5ec;
  }
  .search_area{
    display: inline-block;
    margin-top: 30px;
    margin-left: 260px;
  }
  .search_area input{
      height: 30px;
    width: 250px;
  }
  .search_area button{
     width: 100px;
    height: 36px;
  }
   .search_area select{
   height: 35px;
  }
	
	</style>
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
								<th>Hit</th>
								<th>좋아요</th>
							</tr>
						</thead>

						<!-- 모든 등록된  list 출력 -->
						<c:forEach items="${list }" var="board">
							<tr>	
								<td><c:out value="${board.bno }" /></td>


								<td><a class="move"	href='<c:out value="${board.bno}"/>'>
										<c:out value="${board.title}" />
								</a>
								</td>
								<td><c:out value="${board.writer }" /></td>
								<td><fmt:formatDate pattern="yyyy/MM/dd"
										value="${board.regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy/MM/dd"
										value="${board.updateDate }" /></td>
										
								<td><c:out value="${board.hit }" /></td>
								<td><c:out value="${board.like_count }" /></td>

							</tr>

						</c:forEach>
					</table>
					<!-- 검색 제약 조건 기능 -->
					<div class="search_wrap">
        				<div class="search_area">
        				<select name="type">
			                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
			                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>タイトル</option>
			                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>コンテンツ</option>
			                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>作成者</option>
			                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>タイトル + コンテンツ</option>
			                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>タイトル + 作成者</option>
			                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>タイトル + コンテンツ + 作成者</option>
			            </select>
				      <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
				      <button>Search</button>
				        </div>
				    </div>    


					<div class="pageInfo_wrap">
						<div class="pageInfo_area">
							<ul id="pageInfo" class="pageInfo">
							 <!-- 이전페이지 버튼 -->
				                <c:if test="${pageMaker.prev}">
				                <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
				                </c:if>
							<!-- 각 번호 페이지 버튼 -->
								<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
								<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a	 href="${num}">${num}</a></li>
								</c:forEach>
							<!-- 다음페이지 버튼 -->
				                <c:if test="${pageMaker.next}">
				                <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
				                </c:if>   
							</ul>
						</div>
					</div>
					
					
					<form id="moveForm" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						 <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
						 <input type="hidden" name="type" value="${pageMaker.cri.type }">
						
				</form>


				</div>
			</div>
		</div>
	</div>



</body>

<script type="text/javascript">
	$(document).ready(function() {
		$("#regBtn").on("click", function() {
			//controller한테 get방식으로 /board/register 요청
			self.location = "/controller/board/registpage";

		})

	})
	$(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("検索タイプを選択してください。");
            return false;
        }
        
        if(!keyword){
            alert("キーワードを入力してください。");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });

	let moveForm = $("#moveForm");
	let moveObj = moveForm.clone();

	$(".move").on("click", function(e){
				e.preventDefault();
				
				
				<!-- 주소에 전에 들어갔던 bno 값 초기화-->
				if ($("input[name='bno']").val() == null) {
					
					moveForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
					moveForm.attr("action", "/controller/board/get");	
					
				} else {
					
					moveForm.find($("input[name='bno']")).val($(this).attr("href"));
					moveForm.attr("action", "/controller/board/get");	
					
				}
				
				
				
				moveForm.submit(); 

				
			});
	
	
	
	 $(".pageInfo a").on("click", function(e){		 
		 e.preventDefault();
	        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	        moveForm.attr("action", "/controller/board/boardpage");
	        moveForm.submit();
	    });
	
	let result = '<c:out value="${result}"/>';

	checkAlert(result);
	console.log(result);
	history.replaceState({},null,null);

	function checkAlert(result) {

		if (result === '' || history.state) {
			return;
		}
		if (result === 'regist success') {
			alert("게시글의 등록이 성공적으로 완료되었습니다")
		}
		if (result === 'modify success') {
			alert("게시글의 수정이 성공적으로 완료되었습니다")
		}
		if (result === 'remove success') {
			alert("게시글의 삭제가 성공적으로 완료되었습니다")
		}
	}
</script>
</html>