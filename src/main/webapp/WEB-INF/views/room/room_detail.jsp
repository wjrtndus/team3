<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../source.jsp"%>
<link href="${cpath }/resources/css/room_detail.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/search.css" rel="stylesheet"
	type="text/css">

<script src="${cpath }/resources/js/join.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ include file="../header.jsp"%>
<!-- body -->

<div class="wrap-in back-white">

	<section class="section">
		<div class="section-in2">

			<!-- search box -->
			<ul class="search-box-wrap">
				<li class="search-box"><span class="search-icon glasses"></span>
					<p>
						<input type="text" placeholder="목적지 또는 호텔명" />
					</p></li>

				<li class="search-box"><span class="search-icon calendar">
				</span> <span class="check">
						<p>체크인</p>
						<h3>1월 1일</h3>
				</span> <span class="check">
						<h3>4박</h3>
				</span> <span class="check">
						<p>체크인</p>
						<h3>1월 1일</h3>
				</span></li>

				<li class="search-box"><span class="search-icon people">
				</span> <span class="check2">
						<p>객실/인원</p>
						<h3>객실1, 인원2</h3>
				</span></li>

				<li class="search-box pink">
					<button class="search-btn pink">
						<span class="search-icon glasses2"></span>
					</button>
				</li>

			</ul>

			<!-- 호텔그림 메인 -->
			<div class="photo">
				<h1 class="rm-dt-title hotel_name">${acc_dto.accomm_name }</h1>
				<!-- accomm_name 불러오기 -->
				<c:if test="${acc_dto.accomm_type == 1 }">
					<!-- home - accomm_type 1이면 (호텔이면) -->
					<p>${acc_dto.tier_number }성</p>
					<!-- 성급 불러오기 -->
				</c:if>
				<!--                 <div class="ex"> -->
				<c:forEach var="i" items="${titles }">
					<c:choose>
						<c:when test="${acc_dto.accomm_type == 1 }">
							<img
								src="http://192.168.0.184/shallwego/${acc_dto.accomm_type }/${acc_dto.tier_number }/${acc_dto.accomm_name }/${i }">
						</c:when>
						<c:otherwise>
							<img
								src="http://192.168.0.184/shallwego/${acc_dto.accomm_type }/${acc_dto.accomm_name }/${i }">
						</c:otherwise>
					</c:choose>
					<!-- home ㄴ>  DB에 파일명 그대로 올리도록 변경했으므로 ${i }뒤에 확장자 .jpg를 제거했음 -->
				</c:forEach>
				<!--                 </div> -->
			</div>

			<!-- 위치랑, 주변장소 -->
			<div class="second_section">
				<div class="where">
					<h2 class="rm-dt-title">위치</h2>
					
					<!-- 지도 api -->
					<div id="map" style="width:100%;height:350px;"></div>
					
					<div class="address">${acc_dto.accomm_address }</div>
					<!-- accomm_address -->
				</div>
			</div>

			<!-- 아이콘부분 -->
			<div class="icon_section">
				<ul class="icon">
					<!-- cf_idx를 이용해서 잘 불러와야함 -->
					<c:forEach var="i" items="${cfList }">
						<li><span class="img"><img class="icon_img"
								src="${cpath }/img/icon/${i.cf_img }.png"></span> <!-- cf_img로 이미지 불러오기!! -->
							<p class="icon-name">${i.cf_name }</p></li>
					</c:forEach>
				</ul>
			</div>

			<!-- 객실타입 -->
			<div class="last_section">
				<h1 class="title rm-dt-title">객실타입</h1>
				<c:forEach var="i" items="${roomList }">
					<div class="roomtype">
						<div class="room_img">
							<c:choose>
								<c:when test="${acc_dto.accomm_type == 1 }">
									<a href=""><img
										src="http://192.168.0.184/shallwego/${acc_dto.accomm_type }/${acc_dto.tier_number }/${acc_dto.accomm_name }/${i.room_name }/${i.img_result[0] }"></a>
								</c:when>
								<c:otherwise>
									<a href=""><img
										src="http://192.168.0.184/shallwego/${acc_dto.accomm_type }/${acc_dto.accomm_name }/${i.room_name }/${i.img_result[0] }"></a>
								</c:otherwise>
							</c:choose>
						</div>
						
						<div class="roomtype_detail">
							<div>
								<h1>${i.room_name }</h1>
							</div>
							<!-- room_name -->
							<!--                         <div class="roomtype_eng"><h5>STANDARD</h5></div>    -->
							<div class="roomtype_bed">
								<span>최소 인원 : ${i.min_person }명</span><br>
								<!-- min_person, max_person 침대 개수는 그냥 숙소 안내에다가-->
								<span>최대 인원 : ${i.max_person }명</span>
							</div>
							<!--                         <div class="roomtype_simbol"> -->
							<!--                             금연마크, 와이파이 마크                                    편의시설 아이콘으로 처리 -->
						</div>
						<div class="reservation">
							<div class="price">
								<h2>${i.cost_price }</h2>
							</div>
							<div class="booking_btn">
								<button id="yeahyak_btn" class="btn01 pink">
									<h2>예약</h2>
								</button>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
</div>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9dd21b72da9e9632d710b7b9fc2c4f08&libraries=services"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${acc_dto.accomm_address}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${acc_dto.accomm_name }</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>


<%@ include file="../footer.jsp"%>