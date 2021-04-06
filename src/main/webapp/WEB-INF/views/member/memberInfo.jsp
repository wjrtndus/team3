<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../source.jsp" %>

    <link href="${cpath }/resources/css/reservation.css" rel="stylesheet" type="text/css"> 
    <link href="${cpath }/resources/css/memberInfo.css" rel="stylesheet" type="text/css"> 
    <link href="${cpath }/resources/css/qa.css" rel="stylesheet" type="text/css"> 
    <link href="${cpath }/resources/css/memberInfo.css" rel="stylesheet" type="text/css"> 

    <script src="${cpath }/resources/js/board.js"></script>

<%@ include file="../header.jsp" %>

        <div class="wrap-in back-gray">

            <section class="section">
                <div class="section-in2">
                    
                    <div class="rv-left">
                        <ul>
                            <li class="on-click rv-menu"><a href="#">회원정보</a></li>
                            <li class="rv-menu"><a href="#">쿠폰</a></li>
                        </ul>
                    </div>

                    <!-- rv-right -->
                    <div class="rv-right">
                        
                        <!-- notis -->
                        <div class="on rv-on notis">
                            <ul class="rv-right-content memberInfo-content">
                                <li class="member-img-wrap">
                                    <div class="member-img">
                                        <img src="${cpath }/resources/img/hayoon.jpg" alt="하윤"/>
                                    </div>
                                </li>
                                <li>
                                    <span class="info-title gray-f">아이디</span>
                                    <span class="info">ehgksk153</span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">비밀번호</span>
                                    <span class="info">****</span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">이름</span>
                                    <span class="info">김하윤</span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">이메일</span>
                                    <span class="info">ehgksk153@naver.com</span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">휴대폰 번호</span>
                                    <span class="info">010-7204-9432</span>
                                </li>
                                <li>
                                    <button class="btn02 pink-b notis-btn">편집</button>
                                </li>
                            </ul>
                        </div>

                        <!-- notis-re -->
                        <div class="notis-re">
                            <ul class="rv-right-content memberInfo-content">
                                <li class="member-img-wrap">
                                    <div class="member-img">
                                        <img src="${cpath }/resources/img/hayoon.jpg" alt="하윤"/>
                                    </div>
                                    <div class="member-img-btn">
                                        <h1><button class="btn02">사진편집</button></h1>
                                    </div>
                                </li>
                                <li>
                                    <span class="info-title gray-f">아이디</span>
                                    <span class="info">ehgksk153</span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">비밀번호</span>
                                    <span class="info">
                                        <input class="text01" type="text" placeholder="****"/>
                                    </span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">이름</span>
                                    <span class="info">
                                        <input class="text02" type="text" placeholder="김"/>
                                        <input class="text02" type="text" placeholder="하윤"/>
                                    </span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">이메일</span>
                                    <span class="info">
                                        <input class="text01" type="text" placeholder="ehgksk153@naver.com"/>
                                    </span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">휴대폰 번호</span>
                                    <span class="info">
                                        <input class="text01" type="text" placeholder="김"/>
                                    </span>
                                </li>
                                <li>
                                    <span class="info-title gray-f">생년월일</span>
                                    <span class="info">
                                        <input class="text03" type="text" placeholder="년 (YYYY)"/>
                                        <input class="text03" type="text" placeholder="월 (MM)"/>
                                        <input class="text03" type="text" placeholder="일 (DD)"/>
                                    </span>
                                </li>
                                <li class="notis-re-btn">
                                    <button class="btn02 pink">완료</button>
                                    <button class="btn02 cancell">취소</button>
                                </li>
                            </ul>
                        </div>

                        <!-- coupon wrap -->
                        <div class="rv-on coupon-wrap">
                                <div class="coupon-top">
                                    <span>쿠폰코드</span>
                                    <form method="post" action="${cpath }/member/registCoupon">
                                    	<input type="hidden" name="customer_idx" value="${login.user_idx }">
                                    	<input class="text02" name="coupon_serial_number" type="text"/>
                                    	<button class="btn01 gray">등록</button>
                                    </form>
                                </div>
    
                                <ul class="content">
                                    <li>
                                        <h1>Happy BirthDay !!</h1>
                                        <h1>&gt;</h1>
                                    </li>
                                    <li>
                                        <span><b class="gray-f">유효기간</b></span>
                                        <span>2021년 05월 24일 (월)</span>
                                        <span>2021년 06월 26일 (수)</span>
                                        <span>28일</span>
                                    </li>
                                </ul>
    
                        </div>

                    </div>
                    </div>
            </section>

        </div>

<%@ include file="../footer.jsp" %>


<!-- 쿠폰 등록  -->
<script>

	
</script>
</body>
</html>