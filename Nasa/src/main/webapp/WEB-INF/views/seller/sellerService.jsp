<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.servnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #e7e7e7;
	background-color: #f3f3f3;
}

.nav-item {
	float: left;
}

.nav-item a {
	display: block;
	color: #666;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.nav-item a:hover:not(.active) {
	background-color: #ddd;
}

.genric-btn.danger-border{
	color: #9e68ff;
	border: 1px solid #8a2fdb;
}
.powertb td {
	width: 120px;
	height: 50px;
	font-size: 12px;
}

.powerbtn, .modal-header {
	background-color: #d5c9ea  !important;
}

.modal-footer {
	display: block !important;
	text-align: center;
}

.powerp {
	color: red;
	font-size: 8px;
	border-bottom: 1px solid #999294;
}

.endp {
	padding: 30px 0px 20px 0px;
}

.br {
	border-top: 1px solid #999294;
	margin-top: 20px;
	padding-top: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #999294;
}

.paytb td {
	width: 120px;
	height: 50px;
	font-size: 12px;
}

.paytb td:nth-child(2) {
	width: 200px;
}

.category-listing {
	height: 350px !important;
}

.fables-single-item {
	color: rgb(64, 64, 64);
}

.fables-single-item:hover {
	background-color: #d5c9ea;
}

.nav-link.active {
	background-color: #d5c9ea !important;
	color: white !important;
}

input[type=date] {
	border: 1px solid lightgray;
	color: lightgray;
	margin-right: 10px;
}

.paybtn {
	margin-right: 10px;
}
.hr{
 	background-color : #d5c9ea !important;
   	margin: 10px !important;
}
.pt-70{
	padding-top: 0px;
}
.blog_details img{
	width: 354px;
	height: 256px;
}
.genric-btn.danger-border:hover{
	background-color : #d5c9ea !important;
	color: white;
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>서비스 관리</h2>
					</div>
				</div>
			</div>
		</div>
	</div>



	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<!-- Left content -->
				<div class="col-3">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">MYPAGE MENU</h4>
							<ul class="list cat-list">
								<li><a href="sellerService.do" class="d-flex">
										<p style="font-weight: bold;">서비스관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p>프로모션관리</p>
								</a></li>
								<li><a href="sellerCalendar.do" class="d-flex">
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p>리뷰관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p>결제조회</p>
								</a></li>
								<li><a href="sellerSales.do" class="d-flex">
										<p>매출확인</p>
								</a></li>
								<li><a href="sellerReport.do" class="d-flex">
										<p>신고관리</p>
								</a></li>
								<li><a href="sellerKnowhow.do" class="d-flex">
										<p>판매자 노하우</p>
								</a></li>
							</ul>
						</aside>
					</div>
				</div>
				<!-- Right content -->
				<div class="col-9">
					<jsp:useBean id="now" class="java.util.Date" />
					<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<div class="justify-content-center">
								<a class="d-inline-block" style="margin-top:20px;">
									<h3>서비스 관리</h3>
								</a>
								<hr class="hr"/>
								<a href="serviceInsert.do" class="genric-btn danger">서비스 등록</a>
								<a href="" class="genric-btn danger" data-toggle="modal"
									data-target="#PowerModal">파워서비스 등록</a>
								<a href="" class="genric-btn danger" data-toggle="modal"
									data-target="#payModal">결제 등록</a>
								
								<div class="blog_details">
										<div class="container">
											<nav class="fables-single-nav">
												<div class="nav nav-tabs" id="nav-tab" role="tablist">
													<a
														class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
														id="nav-desc-tab" data-toggle="tab" href="#nav-desc"
														role="tab" aria-controls="nav-desc" aria-selected="true">진행중인
														서비스</a> <a
														class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
														id="nav-info-tab" data-toggle="tab" href="#nav-info"
														role="tab" aria-controls="nav-info" aria-selected="false">종료된
														서비스</a> <a
														class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
														id="nav-review-tab" data-toggle="tab" href="#nav-review"
														role="tab" aria-controls="nav-review"
														aria-selected="false">파워서비스</a>
												</div>
											</nav>
											<br /> <br />
											<div class="tab-content" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-desc" role="tabpanel" aria-labelledby="nav-desc-tab">
													<div class="row">
														<div class="listing-details-area">
															<div class="container">
																<div class="row">
																
																<c:forEach items="${serviceList }" var="service">
																<c:if test="${service.ser_status eq 'N'}">
																	<div class="col-lg-6" >
																		<div class="single-listing mb-30">
																			<div class="list-img">
																				<img src="fileupload/${service.ser_img }" id="prvimg" alt="">
																			</div>
																			<div class="list-caption">
																				<h3>
																					<a href="serviceDetail.do?ser_code=${service.ser_code }">${service.ser_title }</a>
																				</h3>
																				<div>번호 : s${service.ser_code }</div>
																		
																				<div class="list-footer">
																					<ul>
																						<li style="margin-left: 140px;">
																							<button type="button" onclick="location.href='serviceUpdateForm.do?ser_code=${service.ser_code }'" class="genric-btn danger-border circle">수정</button>
																						</li>
																						<li>
																							<button type="button" class="genric-btn danger-border circle" data-toggle="modal" data-target="#endModal" 
																							data-sercode="${service.ser_code }" data-sertitle="${service.ser_title }" data-end="${service.pay_enddate }">종료</button>
																							
																						</li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</c:if>
																</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
													<div class="row">
														<div class="listing-details-area">
															<div class="container">
																<div class="row">
																
																<c:forEach items="${serviceList }" var="service">
																<c:if test="${service.ser_status eq 'Y'}">
																
																	<div class="col-lg-6">
																		<div class="single-listing mb-30">
																			<div class="list-img">
																				<img src="fileupload/${service.ser_img }" alt="">
																			</div>
																			<div class="list-caption">
																				<h3>
																					<a href="serviceDetail.do">${service.ser_title }</a>
																				</h3>
																				<div>번호 : s${service.ser_code }</div>
																				<div class="list-footer" >
																					<ul > 
																						<li >
																						<!-- <div style="margin-left: 210px;">
																							<a href="#" class="genric-btn danger-border circle" data-toggle="modal" data-target="#endModal">종료</a>
																						</div> -->
																						<div>* 종료된 서비스입니다.</div>
																						</li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																	</c:if>
																</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="nav-review" role="tabpanel"
													aria-labelledby="nav-info-tab">
													<br /> <br />
													<div class="row justify-content-center">3333</div>

												</div>
											</div>
										</div>
								</div>
							</div>
						</article>
					</div>
					<div class="pagination-area pt-70 text-center">
						<div class="container">
							<div class="row">
								<div class="col-xl-12">
									<div class="single-wrap d-flex justify-content-center">
										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-start">
												<li class="page-item active"><a class="page-link"
													href="#">01</a></li>
												<li class="page-item"><a class="page-link" href="#">02</a></li>
												<li class="page-item"><a class="page-link" href="#">03</a></li>
												<li class="page-item"><a class="page-link" href="#"><span
														class="ti-angle-right"></span></a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--Pagination End  -->
				</div>
			</div>
		</div>
	</section>
	<!-- 모달 -->
	<div class="modal fade" id="PowerModal" tabindex="-1" role="dialog"
		aria-labelledby="PowerModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="text-align: center;">파워서비스 신청</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						파워서비스란? <br /> 합리적 예산의 고효율형! <br /> 당신의 서비스를 메인 화면에 노출을 기대할 수
						있습니다. <br /> 저렴한 비용으로 상위 노출을 원하시는 분들에게 추천합니다.
					</p>
					<p class="powerp">
						*희망시작일로부터 일주일간 제공됩니다. <br /> *최종 결제 후 환불 불가합니다.<br /> <br />
					</p>
					<table class="powertb">
						<tr>
							<td>서비스선택</td>
							<td><div class="default-select" id="default-select">
									<select>
										<c:forEach items="${serviceList }" var="service">
											<option value="${service.ser_code }">${service.ser_title} </option>										
										</c:forEach>
									</select>
								</div></td>
						</tr>
						<tr>
							<td>희망시작일</td>
							<td><input type="date"></td>
						</tr>
						<tr>
							<td>비용</td>
							<td><input type="text" value="500,000" disabled></td>
						</tr>
					</table>

				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn primary  radius powerbtn"
						data-toggle="modal" data-dismiss="modal">결제</a> <a href="#"
						class="genric-btn primary  radius powerbtn" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="endModal" tabindex="-1" role="dialog"
		aria-labelledby="endModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="text-align: center;">서비스 종료</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<p class="endp">서비스명(웹개발1)을 종료하시겠습니까?</p>

					<table class="powertb">
						<tr>
							<td>서비스종료사유</td>
							<td><textarea cols="30" rows="3" id="ser_reason"></textarea></td>
						</tr>
						<tr>
							<td>의뢰 종료 예정 날짜</td>
							<td><input type="date" id="ser_end" value="2022-02-12" disabled></td>
						</tr>
						<tr>
							<td>희망 종료일</td>
							<td><input type="date" id="ser_cal"></td>
						</tr>
					</table>

				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn primary  radius powerbtn" id="endbtn"
						data-toggle="modal" data-dismiss="modal">확인</a> <a href="#"
						class="genric-btn primary  radius powerbtn" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>



	<div class="modal fade" id="payModal" tabindex="-1" role="dialog"
		aria-labelledby="payModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document" style="max-width: 400px;">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="text-align: center;">결제하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="">

						<img src="assets/img/comment/comment_1.png"> <span>홍길동</span>
					</div>
					<div class="br">
						<h3>웹개발1</h3>
						<div>예상금액 : 2000원</div>
					</div>
					<table class="paytb">
						<tr>
							<td>서비스 금액</td>
							<td><input type="text" placeholder="상대방과 협의한 금액을 입력해주세요"
								style="width: 250px;"></td>
						</tr>
						<tr>
							<td>서비스 진행일</td>
							<td><input type="radio" name="paydate" value="ndate"
								id="ndate" checked>정해진 날짜가 없어요 <br /> <input
								type="radio" name="paydate" value="ydate" id="ydate">협의한
								날짜가 있어요 <input type="date" id="conference"
								style="display: none;"></td>
						</tr>
						<tr>
							<td>결제수단</td>
							<td><input type="radio" name="paymethod" value="creditpay"
								checked>신용/체크카드 <input type="radio" name="paymethod"
								value="kakaopay">카카오페이?</td>
						</tr>
						<tr>
							<td>쿠폰</td>
							<td>
								<div class="default-select" id="coupon-select">
									<select>
										<option value="1">10%</option>
										<option value="2">20%</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>서비스금액</td>
							<td>50000원</td>
						</tr>
						<tr>
							<td>쿠폰 할인</td>
							<td style="color: red;">5000원</td>
						</tr>

					</table>
					<div class="br">
						<h6 style="display: inline;">최종 결제금액</h6>
						<span style="font-weight: 200;">45000원</span>
					</div>
					<div class="br">
						<span><input type="checkbox">개인정보수집 및 이용동의(필수)</span> <a
							style="float: right;" data-toggle="modal" data-target="#useModal">보기</a>
					</div>

				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn primary  radius powerbtn"
						data-toggle="modal" data-dismiss="modal">결제</a> <a href="#"
						class="genric-btn primary radius powerbtn" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="useModal" tabindex="-1" role="dialog"
		aria-labelledby="useModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document"
			style="max-width: 600px; margin: 12.75rem auto">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="text-align: center;">이용약관</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div>개인정보 수집 및 이용 동의(고객)</div>
					<p>
					<div>분류</div>
					필수 정보

					<div>수집∙이용 동의 목적</div>
					안전결제 서비스 제공 및 소비자 분쟁 해결, 환불 처리

					<div>항목</div>
					결제 카드 번호, 계좌 정보(은행명, 예금주명, 계좌번호)

					<div>보유∙이용 기간</div>
					개인정보 이용목적 달성 시까지 보존합니다. 단, 관계 법령의 규정에 따라 보존이 필요한 경우 해당 기간까지 보존 후
					지체없이 파기합니다. 개인정보 제공에 동의하지 않을 수 있으며 동의하지 않을 경우 서비스 이용이 제한될 수 있습니다.
					</p>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() { // actvie 활성화 
			$(".nav-item > .active").css("color", "white");
			$('.nav-link').click(function() {
				// .nav-link 클릭시 이전의 active 값 해제 후, 
				$(".nav-item > .active").css("color", "#666");
				$('.nav-link').removeClass('active'); // 클릭한 위치 active 적용 
				$(this).addClass('active');
				$(".nav-item > .active").css("color", "white");
			});

			$("#ydate").click(function() {
				console.log($("#conference").attr("style", "display: block;"))
			})
			$("#ndate").click(function() {
				console.log($("#conference").attr("style", "display: none;"))
			})
		});

		$("#nav-tab a").on("click", function(event) {
			event.preventDefault();
			$(this).tab("show");
		})
		
		$(document).ready(function () {
			
			$("#endModal").on("show.bs.modal", function (event) {
			
				var reason = document.getElementById("ser_reason");
				reason.value = '';
				var end = document.getElementById("ser_cal");
				end.value = '';
				
				sercode = $(event.relatedTarget).data("sercode");
				sertitle = $(event.relatedTarget).data("sertitle");
				serend = $(event.relatedTarget).data("end");
				if(serend.substr(0,10) != ''){
					var today = new Date(serend.substr(0,10));
					today.setMonth(today.getMonth() + 1);
					today.setDate(today.getDate() + 1); 
	
					var year = today.getFullYear();
					var month = (today.getMonth() < 10 ? '0' : '')+today.getMonth();
					var day = (today.getDate() < 10 ? '0' : '')+today.getDate();
					date = year+ '-' + month + '-' + day
					console.log(date);
					$("#ser_cal").attr('min', date);
				}
				$(".endp").text(sertitle+'을(를) 종료하시겠습니까?');
				$(".endp").attr('id',sercode);
				$("#ser_end").val(serend.substr(0,10));
				
			});			
		});
		
		$("#endbtn").on("click", function(){
			ser_code = $(".endp").attr('id');
			ser_reason = $("#ser_reason").text();
			
			$.ajax({
				url: "endService.do",
  				dataType: "json",
  				type:"post",
  				data: {ser_code: ser_code,ser_reason: ser_reason },
  				success: function (result){
  					
  				}
			})
		})
	</script>
</body>
</html>