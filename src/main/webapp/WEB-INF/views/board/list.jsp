<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="../resources/js/list.js"></script>
<link rel="stylesheet" href="../resources/css/list.css">
</head>
<body>
	 <div class="wrap">
		  <jsp:include page="../header.jsp"></jsp:include>
		  <div class="container">
		  	<div class="list">
				<table>
					<tr>
						<td>NO</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td>
					</tr>
					<c:forEach items="${list}" var="board">
						<tr>
							<td>${board.bno }</td>
							<td id="title"><a href="/board/detail?bno=${board.bno }">${board.title }</a></td>
							<td>${board.writer }</td>
							<td>${board.regdate }</td>
							<td>${board.count }</td>
						</tr>
						<input type="hidden" id="writer" value="${login.username}">
													
						
					</c:forEach>
				</table>
				<div class="link">
					<a href="/board/write" id="writeBtn"><input type="button" value="글쓰기"></a>
					<a href="/board/site"><input type="button" value="메인페이지"></a>
				</div>
			</div>
			</div>
			<jsp:include page="../footer.jsp"></jsp:include>
	    </div><!--.wrap-->
		
			
	
</body>
</html>