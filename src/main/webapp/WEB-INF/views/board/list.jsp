<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
            	<div class="col-lg-12">
            		<div class="panel panel-default">
            			<div class="panel-heading">Board List Page
            			<button id="regBtn" type="button" class="btn btn-xs pull-right">Register New Board</button></div>
            		
            			<div class="panel-body">
            				<table class="table table-striped table-bordered table-hover">
            					<thead>
            						<tr>
            						<th>#번호</th>
            						<th>제목</th>
            						<th>작성자</th>
            						<th>작성일</th>
            						<th>수정일</th>
            						</tr>
            					</thead>
            					
            					<!-- 모든 등록된 board list 출력 -->
            					<c:forEach items="${list }" var="board">
            					<tr>
									<td><c:out value="${board.bno }"/></td>
									<td><a class="move" href="<c:out value='${board.bno }'/>">
									<c:out value="${board.title }"/>
									<b>[<c:out value="${board.replyCnt }" />]</b>
									</a></td>
									<td><c:out value="${board.writer }"/></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }"/></td>
									
									</tr>
            					
            					</c:forEach>
            				</table>
            				
            				<!-- 검색 기능 추가 
            				페이지 번호 파라미터는 유지+검색조건, 키워드
            				화면에서 검색을 하면 새로 검색을 한다는 의미-> 1페이지로이동
            				-->
            				<div class="row">
            					<div class="col-lg-12">
            						<form id="searchForm" action="/board/list" method="get">
            							<select name="type">
											<option value="" <c:out value="${pageMaker.cri.type == null? 'selected' : '' }"/>>--</option>
											<option value="T" <c:out value="${pageMaker.cri.type eq 'T'? 'selected' : '' }"/>>제목</option>
											<option value="C" <c:out value="${pageMaker.cri.type eq 'C'? 'selected' : '' }"/>>내용</option>
											<option value="W" <c:out value="${pageMaker.cri.type eq 'W'? 'selected' : '' }"/>>작성자</option>
											<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'? 'selected' : '' }"/>>제목및내용</option>
											<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'? 'selected' : '' }"/>>제목및작성자</option>
											<option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'? 'selected' : '' }"/>>모든항목</option>
            							</select>
            							<input type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword }'/>"/>
            							<!-- 페이지정보 포함 hidden -->
            							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
            							<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
            							<button class="btn btn-default">검색</button>
            						</form>
            					
            					</div>
            				
            				</div>
            				
            				
            				<!-- 페이지 처리 -->
							<!-- 페이지 정보를 저장하는 form 사용자한테 보여지지 않게할것 -->
							<!-- 이 폼을 submit 하면 pageNum에 맞는 페이지 보여주도록 할 것이다. -->
							<form id = "actionForm" action="/board/list" method="get">
								<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
								<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
								<input type="hidden" name="type" value="${pageMaker.cri.type}">
								<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
							</form>
							
							<div class="pull-right">
								<ul class="pagination">
									<c:if test="${pageMaker.prev }">
										<li class="paginate_button previous">
											<a href="${pageMaker.startPage-1 }">Prev</a>
										</li>
									</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
									<li class="paginate_button"><a href="${num }">${num }</a></li>
								</c:forEach>
									
									<c:if test="${pageMaker.next }">
										<li class="paginate_button next"><a href="${pageMaker.endPage+1 }">Next</a></li>
									</c:if>								
								
								</ul>
								<!-- 이전 123456 다음 -->
							</div>


            				
            				<!-- 알림추가
            				지금까지는 alert()로 브라우저에서 제공하는 기본 함수
            				이젠 Modal 이라는 커스텀창을 띄워서 알려줄것 -->
            				<!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">처리 결과 알림</h4>
                                        </div>
                                        <div class="modal-body">
                                        	처리가 완료되었습니다.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
            				
            			</div>
            		</div>
            	</div>
            </div>
            <script type="text/javascript">
            	$(document).ready(function(){
            		//사용자에게 방금 등록한 게시물이 몇번으로 등록됐는지 알려주기 위해 작성
            		var result="<c:out value='${result}'/>";
            		
            		checkModal(result);
            		
            		
            		function checkModal(result){
            			if(result == ""){
            				return;
            			}
            			if(parseInt(result)>0){
            				//result 사용자가 등록한 게시물의 번호가 0보다 크면
            				$(".modal-body").html("게시글" + parseInt(result) + " 번이 등록되었습니다.");
            				
            			}
            			$("#myModal").modal("show"); //모달창 보여주는함수
            		}
            		//화면 이동 버튼 이벤트 처리
            		$("#regBtn").on("click" , function(){
            			//controller에게 get방식으로 board/register 요청
            			self.location="/board/register";
            		})
            		
            		//페이지 버튼처리
            		//숨김처리해놨던 form 가져오기
            		var actionForm = $("#actionForm");
            		
            		//페이지버튼에다가 이벤트 함수 달기
            		$(".paginate_button a").on("click",function(e){
            			//이벤트 객체 e 받아와서
            			//a 태그의 원래 이벤트없애주기
            			e.preventDefault();
            			console.log("click");
            			//페이지정보를 controller에게 보낼건데
            			//우리가 클릭한 a태그의 번호를 pageNum으로 해서 보내야한다.
            			//action form 의 value를 수정해서 보내면 된다.
            			//actionform에서 네임속성이 페이지넘인 인풋태그를 찾는다.
            			//input tag의 값을 현재 내가 클릭한 a 태그의 href값으로 바꿔주면 된다.
            			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
            			actionForm.attr("action", "/board/list");
            			actionForm.submit();
            		})
            		
            		//게시물 조회를 위한 이벤트 처리 추가
            		//게시글 제목을 눌렀을때 이벤트를 여기서정의.
            		$(".move").on("click", function(e){
            		//move 클래스가 추가된 요소의 이벤트를 처리
            		//게시글 제목을 눌렀을때 이벤트 처리
            			//또 a 기본이벤트를 막어라
            			
            			e.preventDefault();
            		//페이지 정보를 같이 전달해 줄것이다. (게시물 조회페이지에는 페이지정보가 없다.)
            		//조회 페이지에서 리스트페이지로 돌아오면 1페이지부터 시작하게되니까
            		//조회페이지도 페이지정보를 알수있도록 해준다.
            		//기존에는 a링크의 href에 게시글 번호를 붙여서 줬었는데
            		//이번에는 a가 막혀있으므로 form을 보낼때 게시글 번호정보를 담아서보내야한다.
            		if(actionForm.find("input[name='bno']").val()==null){
            		actionForm.append("<input type='hidden' name='bno' value='"
            				+ $(this).attr("href")+ "'>");
            					//클릭한 앵커태그 = this
            		actionForm.attr("action" , "/board/get");}
            		else{//name bno인 input태그있으면 그값을 현재 선택한 게시물의 번호로 바꿔줌
            			actionForm.find("input[name='bno']").val($(this).attr("href"));
            			//input type hidden name = 'bno'라는 요소가 있다.
            			//우리가 뒤로가기를 통해서 리스트페이지로 왔다. 
            		}
            			actionForm.submit();
            		})
            		
            		//검색 폼 이벤트 처리
            		var searchForm = $("#searchForm");
            		
            		//검색 폼의 버튼 클릭시 이벤트 처리
            		$("#searchForm button").on("click", function(e){
            			//기본 서브미트 기능 동작 정지
            			e.preventDefault();
            			
            			//검색 조건을 선택하도록 알림
            			//조건선택안할때 아림을띄운다
            			 if(!searchForm.find("option:selected").val()){
            				 alert("검색 조건을 선택하세요.");
            				 return false;
            			 }
            			
            			//검색 내용을 입력하도록 알림
            			//키워드 입력을 안했을때
            			 if(!searchForm.find("input[name='keyword']").val()){
            				 alert("키워드를 입력하세요.");
            				 return false;
            			 }
            			
            			//여기까지 왔다면 검색조건도 있고, 키워드도 있다.
            			//검색후 페이지번호를 1번으로 지정해준다.
            			searchForm.find("input[name='pageNum']").val("1");
            			
            			//form 전송
            			searchForm.submit();
            			
            		})
            		
            		
            	})
            </script>
    <%@ include file="../includes/footer.jsp" %>
