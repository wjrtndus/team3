<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../source.jsp"%>
<link href="${cpath }/resources/css/search.css" rel="stylesheet"
	type="text/css">

<link href="${cpath }/resources/css/reservation.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/memberInfo.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/qa.css" rel="stylesheet"
	type="text/css">

<script src="${cpath }/resources/js/board.js"></script>

<%@ include file="../header.jsp"%>

<div class="wrap-in back-gray">

	<section class="section">
		<div class="section-in2">

			<div class="rv-left">
				<ul>
					<li class="on-click rv-menu"><a href="#">공지사항</a></li>
					<li class="rv-menu"><a href="#">이벤트</a></li>
					<li id="qa-menu" class="rv-menu"><a href="#">1:1 문의</a></li>
				</ul> 
			</div>


			<div class="rv-right">

				<!-- 공지사항 -->
				<div class="on rv-on notis">
					<div class="qa-btn-wrap">
						<li class="on-bottom">서비스 공지사항</li>
					</div>
					<ul class="qa-content-wrap">
						<li>
							<div class="qa-content">
								<a href="#">
									<h3>공지사항 입니다.</h3>
									<p class="gray-f">2021.03.02</p>
								</a>
							</div>
						</li>
					</ul>
				</div>

				<!-- 이벤트 -->
				<div class="rv-on event">
					<ul class="qa-content-wrap">
						<li>
							<div class="qa-content-wrap">
								<img src="${cpath }/resources/img/board/event1.jpeg" />
							</div>
						</li>
					</ul>
				</div>

				<!-- 1:1문의 -->
				<div class="rv-on inquiry">

					<!-- 1:1문의 버튼 -->
					<div class="qa-btn-wrap">
						<li class="on-bottom qa-btn">나의 문의내역</li>
						<li class="qa-btn">새 문의 작성</li>
					</div>

					<!-- 나의 문의내역 -->
					<ul class="on myqa-list qa-con-none qa-content-wrap">


						<c:if test="${!empty inquiryList }">

							<c:forEach var="myQaList" items="${inquiryList }">
								<!-- 내 게시글이 있을경우 -->
								<li class="qa-write">
									<div class="qa-content">
										<a href="#"> <!-- 제목 : 질문있어용 ㅠㅠ-->
											<h3>${myQaList.inquiryTitle }</h3> <!-- 작성날짜 : 2021-04-04 -->
											<p class="gray-f">${myQaList.inquiryDate }</p>
										</a>
									</div>
								</li>
							</c:forEach>

						</c:if>
						
						<c:if test="${empty inquiryList }">
							<!-- 내 게시글이 null일 경우 -->
							<li class="qa-write-null">
								<div class="qa-content">
									<a href="#">
										<h1>등록된 1:1 문의가 없습니다.</h1>
										<p class="gray-f">
											떠나볼까는 회원님들의 소중한 의견에 귀기울여</br> 신속하고 정확하게 답변드리도록 하겠습니다.
										</p>
									</a>
								</div>
							</li>
						</c:if>

						<div class="myqa-list-sub qa-content-wrap">
							<div class="qa-content">
								<div class="myqa-title">
									<h2>질문있어용ㅠㅠㅠ</h2>
								</div>
								<div class="myqa-date">
									<p class="gray-f">
										<span>작성일&nbsp;&nbsp;|</span> <span>2020-04-02</span>
									</p>
								</div>
								<div class="myqa-content">
									<p>
										제가요 김하윤인데요 <br /> ㅇㅂㅇ 그렇다구용
									</p>
								</div>
								<ul class="qa-comment-wrap">
									<li>
										<div class="qa-comment">
											<p class="myqa-writer">
												<b>관리자</b>
											</p>
											<p>안녕하세요 김하윤님 ^^</p>
										</div>
									</li>
									<li>
										<div class="qa-comment">
											<p class="myqa-writer">
												<b>김하윤</b>
											</p>
											<p>안녕하세요 !!ㅎㅎ</p>
										</div>
									</li>

									<div class="qa-comment-write">
										<textarea class="text01"></textarea>
										<input type="submit" class="btn01 pink" id="qa-comment-btn">
									</div>
								</ul>
							</div>
						</div>
					</ul>


					<!-- 새 문의 작성 ***************************** -->
					<ul class="qa-con-none qa-content-wrap">
						<li>
							<ul class="qa-content qa-new">
								<li>
									<h3 class="gray-f">떠나볼까? 이용 중 불편하신 점을 문의주시면 최대한 빠른 시일내에 답변
										드리겠습니다.</h3>
								</li>
								<form method="POST" id="new-qa-write">
									<li class="qa_category">
										<h3>카테고리 유형</h3> 
										<select id="qa_category" class="text01">
											<option>카테고리 유형</option>
											<option>호텔</option>
											<option>모텔</option>
											<option>펜션</option>
											<option>게스트하우스</option>
										</select>
									</li>

									<li class="qa_inquiry">
										<h3>문의 유형</h3> 
										<select id="qa_inquiry" class="text01">
											<option>이벤트</option>
											<option>예약/결제</option>
											<option>취소/환불</option>
											<option>이용문의</option>
											<option>회원정보</option>
											<option>리뷰</option>
									</select>
									</li>

<%-- 									<li><input type="hidden" name="customer_idx"
										value="${login.customer_idx }">
										<h3>휴대폰 번호</h3>
										<div class="">
											<input class="text01 gray-f" type="text"
												value="${login.phone_number }" placeholder="선택사항 입니다." />
										</div></li> --%>
<%-- 
									<li>
										<h3>이메일</h3>
										<div class="">
											<input class="text01 gray-f" type="text"
												value="${login.email }" placeholder="선택사항 입니다." />
										</div>

									</li> --%>
									<li>
										<input type="hidden" name="customer_idx" value="${login.customer_idx }">
										<h3>문의제목</h3>
										<div class="">
											<input class="text01 gray-f" id="myqa_title" name="inquiry_title" type="text"
												placeholder="필수항목 입니다." />
										</div>

									</li>
									<li>
										<h3>문의내용</h3>
										<div class="">
											<input class="text01 gray-f questions" id="myqa-content" name="inquiry_content" type="text"
												placeholder="필수항목 입니다." />
										</div>

									</li>
									<li><input type="submit" id="write-btn" class="btn03 pink"
										value="작성완료" /></li>
								</form>
							</ul>
						</li>
					</ul>
				</div>
			</div>

		</div>
	</section>

</div>

<%@ include file="../footer.jsp"%>

<script>
	const cpath = '${cpath}';

	const dic = {
		'호텔' : 1,
		'모텔' : 2,
		'펜션' : 3,
		'게스트하우스' : 4
	};

	// 작성완료 클릭 
/* 	$("#write-btn").click(function(event){
		event.preventDefault();
	
		
		$.ajax({
			
			url: cpath + '/board/writeQa',
			method: 'POST',
			data: {
				accomm_type: ${'#qa_category'}.val(), 
				ic_idx: ${'#qa_inquiry'}.val(),
				inquiry_title: ${'#myqa_title'}.val(),
				inquiry_content: ${'#myqa-content'}.val()
				},
			dataType: 'text',
			success: function(){
				
			};
		});
		
		
	}); */
	
</script>

</body>
</html>