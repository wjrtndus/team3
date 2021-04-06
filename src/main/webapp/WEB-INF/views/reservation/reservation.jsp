<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../source.jsp" %>
    <link href="${cpath }/resources/css/reservation.css" rel="stylesheet" type="text/css"> 
    <link href="${cpath }/resources/css/qa.css" rel="stylesheet" type="text/css">
    
    <script src="${cpath }/resources/js/board.js"></script>

<%@ include file="../header.jsp" %>    

<div class="wrap-in back-gray">

            <section class="section">
                <div class="section-in2">
                    
                    <div class="rv-left">
                        <ul>
                            <li class="on-click rv-menu"><a href="#">예약완료</a></li>
                            <li class="rv-menu"><a href="#">취소된 예약</a></li>
                            <li class="rv-menu"><a href="#">투숙 완료</a></li>
                        </ul>
                    </div>

                    <div class="rv-right">
                        <div class="on rv-on rv-right-content">
                            <div class="rv-right-header">
                                <div class="left">
                                    <span><b>예약번호</b></span>
                                    <span><b class="pink-f">1111111</b></span>
                                </div>
                                
                                <div class="right">
                                    <span><b class="gray-f">예약날짜</b></span>
                                    <span><b class="gray-f">2020년 03월 15일 (월)</b></span>
                                </div>
                            </div>

                            <ul class="content">
                                <li>
                                    <h1>신라호텔</h1>
                                    <h1>&gt;</h1>
                                </li>
                                <li>
                                    <span><b class="gray-f">일정</b></span>
                                    <span>2021년 05월 24일 (월)</span>
                                    <span>2021년 05월 26일 (수)</span>
                                    <span>2박</span>
                                </li>
                            </ul>

                        </div>




                        <div class="rv-on rv-right-content">
                            <div class="rv-right-header">
                                <div class="left">
                                    <span><b>예약번호</b></span>
                                    <span><b class="pink-f">222222</b></span>
                                </div>
                                
                                <div class="right">
                                    <span><b class="gray-f">예약 취소 날짜</b></span>
                                    <span><b class="gray-f">2020년 03월 17일 (월)</b></span>
                                </div>
                            </div>

                            <ul class="content">
                                <li>
                                    <h1>파라다이스</h1>
                                    <h1>&gt;</h1>
                                </li>
                                <li>
                                    <span><b class="gray-f">일정</b></span>
                                    <span>2021년 05월 24일 (월)</span>
                                    <span>2021년 05월 26일 (수)</span>
                                    <span>2박</span>
                                </li>
                            </ul>
                        </div>

                        <div class="rv-on rv-right-content">
                            <div class="rv-right-header">
                                <div class="left">
                                    <span><b>예약번호</b></span>
                                    <span><b class="pink-f">222222</b></span>
                                </div>
                                
                                <div class="right">
                                    <span><b class="pink-f"><a href="">리뷰 작성</a></b></span>
                                </div>
                            </div>

                            <ul class="content">
                                <li>
                                    <h1>파라다이스</h1>
                                    <h1>&gt;</h1>
                                </li>
                                <li>
                                    <span><b class="gray-f">일정</b></span>
                                    <span>2021년 05월 24일 (월)</span>
                                    <span>2021년 05월 26일 (수)</span>
                                    <span>2박</span>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
            </section>

        </div>

<%@ include file="../footer.jsp" %>
    
</body>
</html>