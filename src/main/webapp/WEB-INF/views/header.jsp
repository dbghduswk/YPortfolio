<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/header.css">
</head>
<body>
	 <div class="header">
            <div class="headerIn">
                <div class="logo">
                    <h1><img src="../resources/img/logogo.png" alt=""></h1>
                </div>
                <div class="menu">
                    <a href="/board/list">게 시 판</a>
                </div>
                <div class="util">
                <c:if test="${login == null }">
                	<ul>
                		<li><a href="/member/login">로그인</a></li>
                        <li><a href="#">메뉴</a></li>
                	</ul>
                </c:if>
                <c:if test="${login != null }">
                	<ul>
                		<li><a href="/member/logout">로그아웃</a></li>
                        <li><a href="#">메뉴</a></li>
                	</ul>
                </c:if>
                </div>
            </div><!--headerIn-->
            
        </div><!--.header-->
</body>
</html>