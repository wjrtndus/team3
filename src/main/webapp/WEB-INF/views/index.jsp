<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="index_source.jsp" %>  
<link href="${cpath }/resources/css/search.css" rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/slide-banner.css" rel="stylesheet" type="text/css"> 


<%@ include file="index_header.jsp" %>


 <!-- wrap-in -->
        <div class="wrap-in back-white">

            <!-- <div class="btn-main">
                <ul>
                    <li class="btn on"></li>
                    <li class="btn"></li>
                    <li class="btn"></li>
                    <li class="btn"></li>
                    <li class="btn"></li>
                </ul>
            </div> -->

            <section class="section section-main  section1">

                <section>
                    <div id="top-banner">
                        <div id="top-banner-background">
        
                            <div id="top-banner-background-1" style="width: 100%; z-index: 4;">
                                <div class="active"></div>
                            </div>
                            <div id="top-banner-background-2" style="width: 100%; z-index: 3;">
                                <div class=""></div>
                            </div>
                            <div id="top-banner-background-3" style="width: 100%; z-index: 2;">
                                <div class=""></div>
                            </div>
                            <div id="top-banner-background-4" style="width: 100%; z-index: 1;">
                                <div class=""></div>
                            </div>
        
                        </div>
                        
                      </div>
                </section>

            
                <div class="section-slide">
                    <div class="main-center-wrap">
                        <span class="main-center">
                            <img src="${cpath }/resources/img/logo/logo-main.png">
                        </span>

                    <!-- search box -->
                                        <!-- search box -->
                    <ul class="search-box-wrap">
                        <li class="search-box">
                            <span class="search-icon glasses"><a href="${cpath }/room/indexRoom"></a></span>
                            <p><input type="text" placeholder="목적지 또는 호텔명"/></p>
                        </li>

                        <li class="search-box">
                                <div id="examples" class="mt-5" style="margin-top: 0!important;height: 30px;">
                                    <div class="card" style="border: 0;">
                                        <div class="card-body" style="padding: 0;">
                                            <div class="row">
                                                <div class="col-md-5" style="max-width: 0; flex: 0;">
                                                    <!-- <p id="result-3">&nbsp;</p> -->
                                                    <!-- <span class="check2">
                                                        <p>check-in</p>
                                                        <p>check-out</p>
                                                    </span> -->
                                                    <div class="d-flex" style="width: 300px; height: 50px; border: 0;">
                                                        <span class="search-icon calendar"></span>
                                                        <input type="text" id="demo-3_1" class="form-control form-control-sm" style="width:100px; height:40px; float: left; margin-top: 10px; border: 0; text-align: center;" placeholder="check-in"/>
                                                        <h3 style="width: 30px; padding: 10px 10px; float:left;margin: 5px 0 0 0;font-size: 20px;">4박</h3>
                                                        <input type="text" id="demo-3_2" class="form-control form-control-sm" style="width:100px; height:40px; float: left; margin-top: 10px; border: 0; text-align: center;" placeholder="check-out"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <br>
                                </div>
                        </li>
                        
                        <li class="search-box">
                            <span class="search-icon people">
                            </span>
                            <span class="check2" style=" height: 60px">
                                <p style="margin-bottom: 0;">객실/인원</p>
                                <h3 style="font-size: 20px;">객실1, 인원2</h3>
                            </span>
                        </li>

                        <li class="search-box pink">
                        	<a href="${cpath }/room/indexRoom">
                            <button class="search-btn pink">
                                <span class="search-icon glasses2"></span>
                            </button>
                            </a>
                        </li>

                    </ul>

                    </div>
                </div>
            </section>

            <section class="section section2">
                <div class="section-in">
                    <h1 class="title_sub">떠나볼까?의 특별 혜택</h1>

                        <ul class="event-wrap">
                            <li>
                            <a href="${cpath }/board/qa">
                                <div class="event-img"><img src="${cpath }/resources/img/index/birth.jpeg"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        Happy Birthday
                                    </h2>
                                    <p>당신의 생일을 축하드립니다!</p>
                                    <p class="gray-f">이벤트 기간 : 03월</p>
                                </div>
                             </a>
                        </li>

                            <li>
                            <a href="${cpath }/board/qa">
                                <div class="event-img"><img src="${cpath }/resources/img/index/spring.jpeg"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        봄 이벤트 대축제
                                    </h2>
                                    <p>분홍빛 이벤트를 즐겨보세요</p>
                                    <p class="gray-f">이벤트 기간 : 03월 01일 ~ 05월 30일</p>
                                </div>
                             </a>
                        </li>

                            <li>
                            <a href="${cpath }/board/qa">
                                <div class="event-img"><img src="${cpath }/resources/img/index/honey.jpeg"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        허니문 이벤트
                                    </h2>
                                    <p>5월의 신부. 미리 준비하세요 !</p>
                                    <p class="gray-f">이벤트 기간 : 05월</p>
                                </div>
                             </a>
                        </li>
                   </ul>

                </div>
            </section>

            <section class="section section3">
                <div class="section-in s2">
                    <h1 class="title_sub">당신만을 위한 추천 여행지예요</h1>
                    <div class="local-label-wrap">
                        <ul class="local-label">
                            <li class="on-bottom">All</li>
                            <li>서울</li>
                            <li>경기</li>
                            <li>강원도</li>
                            <li>부산</li>
                            <li>대구</li>
                            <li>경주</li>
                            <li>제주도</li>
                        </ul>
                    </div>

                    <div class="local-wrap">
                        
                        <div class="lo-on lo-on2 local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/5.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/8.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/9.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/10.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/11.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/12.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/13.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/14.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/15.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/16.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/17.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/18.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point5.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/19.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/20.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/21.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/22.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/15.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/12.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point8.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/18.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>게하1</h2>
                                                <p>게하1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/9.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>펜션1</h2>
                                                <p>펜션1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                   
                    </div>
            <!-- local wrap end -->

                </div>
            </section>

            <section class="section section4">
                <div class="section-in">
                    <h1 class="title_sub">전 지역 여행객의 생생 이용후기</h1>
                    
                    <ul class="review">
                        <li class="gradient-border bottom">
                            <h2>호텔 신라</h2>
                            <p>제주도</p>
                            <span>너무좋아용 ㅠㅠ 
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>파라다이스</h2>
                            <p>부산</p>
                            <span>부산최고 !
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>힐튼 부산</h2>
                            <p>부산</p>
                            <span>별로에요 ;;
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>아난티</h2>
                            <p>부산</p>
                            <span>그냥 그래요 
                            </span>
                        </li>
                        </li>
                    </ul>
                </div>

            </section>
           </div>
           
<script async src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://unpkg.com/lightpick@latest/lightpick.js"></script>
<script src="${cpath }/resources/js/demo.js"></script>

<%@ include file="footer.jsp" %>