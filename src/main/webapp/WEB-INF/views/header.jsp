<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ include file="source.jsp" %>
    
</head>
<body id="top">
	<div class="wrap">

        <header>
            <div class="header-in">
                <div class="logo"><a href="${cpath }/"><img src="${cpath }/resources/img/logo/logo.png"/></a></div>
                <ul class="menu">
                    <li class="customer-btn">
                      			  고객센터 ▾
                        <ul class="customer">
                            <li class="announ"><a href="${cpath }/board/qa">공지사항</a></li>
                            <li class="faq"><a href="${cpath }/board/qa">FAQ</a></li>
                        </ul>
                    </li>
                    <li class="rv-btn"><a href="${cpath }/${!empty login ? 'reservation/reservation' : 'member/login' }">내 예약정보</a></li>
                    <li class="join-btn"><a href="${cpath }/member/join">회원가입</a></li>
                    <li class="login-btn"><a href="${cpath }/${!empty login ? 'member/logout' : 'member/login' }">
                    	<!-- 로그인에 값이 있으면 login.username 로그아웃, 없으면 로그인 -->
                    	${!empty login ? '로그아웃' : '로그인'}
                    </a></li>
                    <li class="profile-btn">
                        <span class="profile-img">
                            <img src="${cpath }/resources/img/header/profile.png"/>
                        </span>

                        <ul class="profile">

                            <li class="coupon"><a href="${cpath }/${!empty login ? 'member/memberInfo' : 'member/login'}">
                                <span class="cp1">쿠폰</span>
                                <span class="cp2 pink-f">0개 &gt;</span>
                                </a></li>
                            <c:if test="${!empty login }">
                            	<li class="logout"><a href="${cpath }/member/logout">로그아웃</a></li>
                            </c:if>
                            <c:if test="${empty login }">
                            	<li class="login"><a href="${cpath }/member/login">로그인</a></li>
                            </c:if>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
        
        
        