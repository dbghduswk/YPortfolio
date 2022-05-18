<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/write.js"></script>
<link rel="stylesheet" href="../resources/css/write.css">
</head>
<body>
 <div class="wrap">
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="write">
	 	<form action="/board/write" method="post">
	 		<div>
	 			<input type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
	 		</div>
	 		<div>
	 			<input type="hidden" name="id" placeholder="작성자를 입력해주세요." value="${login.userid}">
	 			<input type="hidden" name="writer" placeholder="작성자를 입력해주세요." value="${login.username}">
	 		</div>
	 		<div>
	 			<textarea id="content" name="content" placeholder="내용 입력을 입력해주세요." cols="100" rows="40"></textarea>
	 		</div>
	 		<div>
	 			<input type="submit" id="subBtn" value="글쓰기 완료">
	 		</div>
	 	</form>
 	</div>
 	<jsp:include page="../footer.jsp"></jsp:include>
	    </div><!--.wrap-->
 	
</body>
</html>