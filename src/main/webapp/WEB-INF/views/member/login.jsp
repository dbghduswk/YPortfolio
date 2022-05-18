<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="../resources/js/login.js"></script>
<script type="text/javascript" src="../resources/js/reply.js"></script>
<link rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
	 <div class="wrap">
		 <jsp:include page="../header.jsp"></jsp:include>
		 	<div class="login">
				<form action="/member/login" method="post" class="loginIn">
					<table>
						<tr><td><h2>로 그 인</h2></td></tr>
						<tr> 
							<td><input type="text" id="userid" name="userid" placeholder="아이디"></td>
						</tr>
						<tr>
							<td><input type="password" id="passwd" name="passwd" placeholder="비밀번호"></td>
						</tr>
					</table>
					<div class="button">
						<input type="submit" value="로그인" id="login"> 
						<input type="button" value="회원가입" id="join">
					</div>
				</form>
			</div>		
		  <jsp:include page="../footer.jsp"></jsp:include>
	   </div><!--.wrap-->
</body>
</html>