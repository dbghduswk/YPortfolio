<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/modify.css">
</head>
<body>
	<div class="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div class="container">
			<div class="modify">
				<form action="/board/modify" method="POST">
					<table border="1">
						<tr>
							<td class="name">NO.</td>
							<td ><input type="hidden" id="bno" name="bno" value="${modify.bno}">${modify.bno }</td>
						</tr>
						<tr>
							<td class="name">제목</td>
							<td><input type="text" id="title" name="title" value="${modify.title }"></td>
						</tr>
						<tr>
							<td class="name">내용</td>
							<td><textarea id="content" name="content">${modify.content }</textarea></td>
						</tr>
						<tr>
							<td class="name">작성자</td>
							<td>${modify.writer }</td>
						</tr>
						<tr>
							<td class="name">작성일</td>
							<td>${modify.regdate }</td>
						</tr>
						<tr>
							<td class="name">조회수</td>
							<td>${modify.count }</td>
						</tr>
					</table>
					<input type="submit" value="수정">
				</form>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	<!--.wrap-->
</body>
</html>