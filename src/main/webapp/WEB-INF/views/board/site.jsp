<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="../resources/js/login.js"></script>
<link rel="stylesheet" href="../resources/css/site.css">
</head>
<body>
	  <div class="wrap">
	  	<jsp:include page="../header.jsp"></jsp:include>
       <%--  <div class="header">
            <div class="headerIn">
                <div class="logo">
                    <h1><img src="../resources/img/logogo.png" alt=""></h1>
                </div>
                <div class="menu">
                    <a href="/board/list">게시판</a>
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
            
        </div><!--.header--> --%>
        <div class="container">
            <div class="mainSlide">
                <div class="mainImg">
                    <a href="#">
                        <img src="../resources/img/port4.png" alt="">
                    </a>
                </div>
            </div><!--.mainSlide-->
            <div class="row1">
                <div class="chapter1">
                    <ul>
                        <li><a href="#"><img src="../resources/img/port14.png" alt=""></a></li>
                        <li><a href="#"><img src="../resources/img/port15.png" alt=""></a></li>
                        <li><a href="#"><img src="../resources/img/port16.png" alt=""></a></li>
                    </ul>
                </div>            
            </div><!--.row1-->
            <div class="row2">
                <div class="chapter2">
                    <ul>
                        <li><a href="#"><img src="../resources/img/port10.png" alt=""></a></li>
                        <li><a href="#"><img src="../resources/img/port11.png" alt=""></a></li>
                        <li><a href="#"><img src="../resources/img/port12.png" alt=""></a></li>
                        <li><a href="#"><img src="../resources/img/port13.png" alt=""></a></li>
                    </ul>
                </div>            
            </div><!--.row2-->
           
        </div><!--.container-->
      <!--   <div class="footer">
            <div class="footerIn">
                <div class="footerLogo">
                    <img src="../resources/img/logogo.png" alt="">
                </div>
                <div class="footerC">
                    <div class="footerList">
                        <ul>
                            <li>개인정보처리방침</li>
                            <li>원격관리</li>
                            <li>홈페이지 개선의견</li>
                            <li>저장권 정책</li>
                            <li>뷰어다운로드</li>
                        </ul>
                    </div>
                    <div class="footerInfo">
                        <p>
                            주소:울산광역시 중구 태화동 신기14길 1 
                            대표전화 : 052-1234-1235, 
                            FAX : 052-1234-1235
                            ⓒULSAN CITY ALL Right Reserved
                        </p>
                    </div>

                </div>
            </div>.footerIn
        </div>.footer -->
        <jsp:include page="../footer.jsp"></jsp:include>
    </div><!--.wrap-->
</body>
</html>