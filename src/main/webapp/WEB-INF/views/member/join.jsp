<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
	<div class="wrap">
	  	<jsp:include page="../header.jsp"></jsp:include>
	  	<div class="join">
			<form action="/member/join" method="post" class="joinForm">
				<table>
					<tr><td><h3>회 원 가 입</h3></td><tr>
					<tr>
						<td>
							<label>아이디</label>
							<input type="text" name="userid" placeholder="아이디">	
						</td>
					</tr>
					<tr>
						<td>
							<label>비밀번호</label>
							<input type="password" name="passwd" placeholder="비밀번호">	
						</td>
					</tr>
					<tr>
						<td>
							<label>이름</label>
							<input type="text" name="username" placeholder="이름">	
						</td>
					</tr>
					<tr class="gender">
						<td>
							<label>성별</label>
							<select name="gender">
								<option>선택안함</option>
								<option value="남">남성</option>
								<option value="여">여성</option>
							</select>	
						</td>
					</tr>
					<tr><td class="buttonTd"><input type="submit" value="가입하기" class="joinbutton"></td></tr>
				</table>
				
			</form>
			
		</div>
        <jsp:include page="../footer.jsp"></jsp:include>
   	 </div><!--.wrap-->
</body>
</html>