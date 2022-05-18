<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/reply.js"></script>
<script type="text/javascript" src="../resources/js/detail.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/detail.css">
</head>
<body>
	<div class="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div class="container">
			<div class="detail">
				<div class="detailName">
					<table border="1">
						
						<tr><td>NO.</td><td><input type="hidden" id="bno" value="${bdetail.bno}">${bdetail.bno }</td></tr>
						<tr><td>제목</td><td>${bdetail.title }</td></tr>
						<tr><td>내용</td><td>${bdetail.content }</td></tr>
						<tr><td>작성자</td><td>${bdetail.writer }</td></tr>
						<tr><td><input type="hidden" id="writer" value="${login.username}"></td><tr>
						<tr><td>작성일</td><td>${bdetail.regdate }</td></tr>
						<tr><td>조회수</td><td>${bdetail.count }</td></tr>
					</table>
					<div class="detailBtn">
						<a href="/board/list"><input type="button" value="목록"></a>
						<a href="/board/modify?bno=${bdetail.bno }" id="dModify"><input type="button" value="수정"></a>
						<a href="/board/remove?bno=${bdetail.bno }" id="dRemove"><input type="button" value="삭제"></a>
					</div>
				
			
			        <!-- Button trigger modal -->
					<button type="button" id="addreply" class="btn btn-primary" data-bs-target="#exampleModal">
					  댓글쓰기
					</button>
				</div>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">댓글 쓰기 화면</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div><!-- modal-header -->
				      <div class="modal-body">
				      	<div class="form-group">
				   	      	<input type="hidden" id="rno" value="${reply.rno }">
				      		<input type="hidden" id="bno" value="${bdetail.bno }">
				      	</div>
				      	<div class="form-group">
				      		<label>작성자</label><br>
				      		<input id="replyer" type="text" value="${login.username }" readonly>
				      	</div>
				      	<div class="form-group">
				      		<label>댓글내용</label><br>
				      		<input id="reply" type="text" placeholder="댓글내용">
				      	</div>
				      </div><!-- modal-boby -->
				      <div class="modal-footer">
				      	<button type="button" class="btn btn-primary" id="replymodify">댓글수정</button>
				      	<button type="button" class="btn btn-primary" id="replyremove">댓글삭제</button>
				      	<button type="button" class="btn btn-primary" id="replyclear">작성완료</button>
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        
				      </div><!-- modal-footer -->
				    </div><!-- modal-content -->
				  </div><!-- modal-dialog -->
				</div><!-- modal -->
				
				<div id="replyList"></div>
			</div>
		</div>
		
 		<jsp:include page="../footer.jsp"></jsp:include>
 		
	</div><!--.wrap-->
	
</body>
</html>