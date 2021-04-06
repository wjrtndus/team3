<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_source.jsp" %>

	<link href="${cpath }/resources/css/search.css" rel="stylesheet" type="text/css"> 
	<link href="${cpath }/resources/css/index-room.css" rel="stylesheet" type="text/css">

	<script src="${cpath }/resources/js/index-room.js"></script>

<%@ include file="../header.jsp" %>

<div class="wrap-in back-white">

            <section class="section">
                <div class="section-in-room">

                    <section class="sec-room1">
                        <div class="section-in2">


                        <!-- search box -->
                        <ul class="search-box-wrap">
                            <li class="search-box">
                                <span class="search-icon glasses"></span>
                                <p><input type="text" placeholder="목적지 또는 호텔명"/></p>
                            </li>
        
                            <li class="search-box">
                                <span class="search-icon calendar">
                                </span>
                                <span class="check">
                                    <p>체크인</p>
                                    <h3>1월 1일</h3>
                                </span>
                                <span class="check">
                                    <h3>4박</h3>
                                </span>
                                <span class="check">
                                    <p>체크인</p>
                                    <h3>1월 1일</h3>
                                </span>
                            </li>
                            
                            <li class="search-box">
                                <span class="search-icon people">
                                </span>
                                <span class="check2">
                                    <p>객실/인원</p>
                                    <h3>객실1, 인원2</h3>
                                </span>
                            </li>
        
                            <li class="search-box pink">
                                <button class="search-btn pink">
                                    <span class="search-icon glasses2"></span>
                                </button>
                            </li>
        
                        </ul>
                    </div>
                    </section>

                    <div class="filter-top">
                        <ul class="img_wrap">
                            <li><img src="${cpath }/resources/img/index-room/slide1.png"/></li>
                            <li><img src="${cpath }/resources/img/index-room/slide2.png"/></li>
                            <li><img src="${cpath }/resources/img/index-room/slide3.png"/></li>
                        </ul>

                        <div class="slide-btn">
                            <img class="left" src="${cpath }/resources/img/index-room/left.png">
                            <img class="right" src="${cpath }/resources/img/index-room/right.png">
                        </div>
                    </div>

                    <div class="filter-left">
                        <ul class="ft-choice">
                            <li>
                                <b>1박요금</b>
                                <p class="checks etrans">
                                    <input id="cb1" type="checkbox"/> 
                                    <label for="cb1">0 ~ 100,000</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">100,000 ~ 200,000</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">200,000 ~ 300,000</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">300,000 ~ 400,000</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">400,000 이상</label>
                                </p>
                            </li>
                            <li>
                                <b>숙박시설 및 등급</b>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">5성급</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">4성급</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">3성급</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">2성급</label>
                                </p>
                                <p class="checks etrans">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">1성급</label>
                                </p>
                            </li>
                            <li>
                                <b>평점</b>
                                <p class="checks etrans yellow-f">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">★★★★★</label>
                                </p>
                                <p class="checks etrans yellow-f">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">★★★★☆</label>
                                </p>
                                <p class="checks etrans yellow-f">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">★★★☆☆</label>
                                </p>
                                <p class="checks etrans yellow-f">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">★★☆☆☆</label>
                                </p>
                                <p class="checks etrans yellow-f">
                                    <input class="cb1" type="checkbox"/> 
                                    <label for="cb1">★☆☆☆☆</label>
                                </p>
                            </li>
                        </ul>
                    </div>
        
                    <div class="filter-right">
                        <div class="ft-header">
                            <h2>서울</h2>
                            <ul class="ft-btn-wrap">
                                <li><button class="on-pink">
                                    <a href="">
                                    <h3>전체</h3>
                                    <p>All</p>
                                </a></button></li>
                                <li><button>
                                    <a href="">
                                    <h3>호텔</h3>
                                    <p>Hotel</p>
                              </a>  </button></li>
                                <li><button>
                                    <a href="">
                                    <h3>모텔</h3>
                                    <p>Motel</p>
                              </a>  </button></li>
                                <li><button>
                                    <a href="">
                                    <h3>펜션</h3>
                                    <p>Pension</p>
                              </a>  </button></li>
                                <li><button>
                                    <a href="">
                                    <h3>게스트하우스</h3>
                                    <p>Guest House</p>
                                    </a>
                                </button></li>
                            </ul>
                        </div>

                    <!-- 객실타입 -->
                        <div class="ft-right-center">
                        	<c:forEach var="list" items="${list }">
	                            <ul class="lodging">
	                                <li>
	                                    <a href="">
	                                        <img src="${cpath }/resources/img/index-room/4.JPG" alt=""/>
	                                    </a>
	                                </li>
	                                <li>
	                                    <h2>${list.accomm_name }</h2>
	                                    <p>
	                                        <span class=" yellow-f">★★★★★</span> 4.4 (5,403)
	                                    </p>
	                                </li>
	                                 <c:if test="${list.accomm_type !=2 }">
	                                	<li class="lodging-price">
	                                		${list.cost_price }
	                                	</li>
	                                </c:if>
	                                <c:if test="${list.accomm_type == 2 }"> <!-- 모텔이면 -->
		                                <li class="lodging-price">
		                                    ${list.room_hire_time }시 부터 <span>20,000</span>원
		                                </li>
		                                <li class="lodging-price">
		                                    숙박 16:00부터 <span>45,000</span>원
		                                </li>
	                                </c:if>
	                                <li class="lodging-btn">
	                                    <a class="btn01 pink" href="${cpath }/room/room_detail/${list.accomm_idx }">예약</a>
	                                </li>
	                                <li class="address">${list.accomm_address }</li>
	                            </ul>
                            </c:forEach>
                        </div>
                    </div>
            </div>
        </section>
        
        </div>

<script async src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://unpkg.com/lightpick@latest/lightpick.js"></script>
<script src="${cpath }/resources/js/demo.js"></script>

<%@ include file="../footer.jsp" %>
</body>
</html>