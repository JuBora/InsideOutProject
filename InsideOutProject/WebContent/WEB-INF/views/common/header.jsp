<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>NOTYET_SITE_TITLE</title>

<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" />


<!-- slick -->
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- icon -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- bx slider -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.   css">

<!-- jquery -->
<script src="<%=request.getContextPath() %>/js/jquery-3.4.1.js"></script>

<!-- script slick, bxslider -->
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>




</head>
<body>
<!-- 헤더  -->
<header id="header" class="header_main">

<!-- 두번째 헤더 -->
    <div class="sec_haed">
	    <!-- 고정헤더 -->
	    <nav id="topUtil" class="top_util">
	        <span>PIXAR</span>
	        <ul class="nav">
	            <li>
	                <a href="<%=request.getContextPath() %>/member/memberLoginCheck" id="login_btn">로그인</a>        
	            </li>
	            <li>
	                <a href="<%=request.getContextPath() %>/member/memberEnroll" id="sign_btn">회원가입</a>   
	
	            </li>
	            <li>
	                <a href="#" id="mypage_btn">마이페이지</a>   
	            </li>
	            <li>
	                <a href="#" id="customer_btn">고객센터</a>
	            </li>
	        </ul>
	    </nav>
	<!-- 고정헤더 끝 -->
        <nav id="secUtil" class="sec_util">
            
            <span>
                <a href="#">logo</a>
            </span>
                
            <ul class="nav-sec">
                <li>
                    <a href="#">예매</a>
                </li>
                <li>
                    <a href="#">영화</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/theater/theaterInfo">영화관</a>
                </li>
                <li>
                    <a href="#">이벤트</a>
                </li>
                <li>
                    <a href="#">스토어</a>
                </li>
                <li>
                    <a href="#">VOD</a>
                </li>
            </ul>
        </nav>
    </div><!--div.sec_haed-->
    <!-- 두번째 헤더 끝 -->
</header>
<!-- 헤더 끝 -->

<section id="content">
