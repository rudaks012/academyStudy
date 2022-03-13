<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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

.genric-btn.danger-border {
	color: #9e68ff;
	border: 1px solid #8a2fdb;
}

.powertb td {
	width: 120px;
	height: 50px;
	font-size: 12px;
}

.endservtb td {
	width: 180px;
	height: 50px;
	font-size: 12px;
}

.powerbtn, .modal-header {
	background-color: #d5c9ea !important;
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

.hr {
	background-color: #d5c9ea !important;
	margin: 10px !important;
}

.pt-70 {
	padding-top: 0px;
}

.blog_details img {
	width: 354px;
	height: 256px;
}

.genric-btn.danger-border:hover {
	background-color: #d5c9ea !important;
	color: white;
}

.pl-md-5, .px-md-5 {
	padding-left: 2rem !important;
	padding-right: 2rem !important;
}

/* .listing-details-area .single-listing .list-footer ul{
	justify-content: right;
} */

.price{
	text-align: right;
	font-size: 25px !important;
	font-weight: bold;
}
.category{
	font-size: 13px;
	color: gray;
}
.line{
	text-align: right;
	color: gray;
	font-size: 13px;
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
								<a class="d-inline-block" style="margin-top: 20px;">
									<h3>서비스 관리</h3>
								</a>
								<hr class="hr" />
								<a href="serviceInsert.do" class="genric-btn danger">서비스 등록</a>
								<a href="" class="genric-btn danger" data-toggle="modal"
									data-target="#PowerModal">파워서비스 등록</a> 
								<!-- <a href="" class="genric-btn danger" data-toggle="modal"
									data-target="#payModal">결제 등록</a> -->

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
													id="nav-end-tab" data-toggle="tab" href="#nav-end"
													role="tab" aria-controls="nav-end" aria-selected="false">종료예정
													서비스</a> <a
													class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
													id="nav-review-tab" data-toggle="tab" href="#nav-review"
													role="tab" aria-controls="nav-review" aria-selected="false">파워서비스</a>
											</div>
										</nav>
										<br /> <br />
										<div class="tab-content" id="nav-tabContent">
											<div class="tab-pane fade show active" id="nav-desc"
												role="tabpanel" aria-labelledby="nav-desc-tab">
											
													<div class="listing-details-area">
														<div class="container">
															<div class="row">

																<c:forEach items="${sellerMainServiceList }" var="service">
																	<c:if
																		test="${service.ser_status eq 'N' && empty service.ser_end}">
																		<div class="col-lg-6">
																			<div class="single-listing mb-30">
																				<div class="list-img">
																					<img src="fileupload/${service.ser_img }"
																						id="prvimg" alt="">
																				</div>
																				<div class="list-caption">
																				<span style="cursor: pointer;" onclick="location.href='serviceDetail.do?ser_code=${service.ser_code  }'">Open</span>
																					<div class="category">* ${service.category } > ${service.sub_category }</div>
																					<div class="line"> ${service.ser_line }</div>
																					<br/>
																					<h3>
																						<a
																							href="serviceDetail.do?ser_code=${service.ser_code }">${service.ser_title }</a>
																							 
																					</h3>
																					<div>서비스번호 : s${service.ser_code }</div>
																					<br/>
																					<div class="price"> ₩ ${service.ser_price }</div>
																					<div class="list-footer">
																						<ul>
																							<li >
																								<button type="button"
																									onclick="location.href='serviceUpdateForm.do?ser_code=${service.ser_code }'"
																									class="genric-btn danger-border circle">수정</button>
																							</li>
																							<li>
																								<button type="button"
																									class="genric-btn danger-border circle"
																									data-toggle="modal" data-target="#endModal"
																									data-sercode="${service.ser_code }"
																									data-sertitle="${service.ser_title }"
																									data-end="${service.pay_enddate }"
																									data-promax="${service.pro_max }"
																									data-powermax="${service.power_max }">종료</button>

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
											<div class="tab-pane fade show" id="nav-end" role="tabpanel"
												aria-labelledby="nav-end-tab">
											
													<div class="listing-details-area">
														<div class="container">
															<div class="row">

																<c:forEach items="${sellerMainServiceList }" var="service">
																	<c:if
																		test="${service.ser_status eq 'N' && not empty service.ser_end}">
																		<div class="col-lg-6">
																			<div class="single-listing mb-30">
																				<div class="list-img">
																					<img src="fileupload/${service.ser_img }"
																						id="prvimg" alt="">
																				</div>
																				<div class="list-caption">
																				<span style="cursor: pointer;" onclick="location.href='serviceDetail.do?ser_code=${service.ser_code  }'">Open</span>
																					<div class="category">* ${service.category } > ${service.sub_category }</div><br/>
																					<h3>
																						<a
																							href="serviceDetail.do?ser_code=${service.ser_code }">${service.ser_title }</a>
																					</h3>
																					<div>번호 : s${service.ser_code }</div>

																					<div class="list-footer" style="display: block;">
																						<ul>
																							<li >
																								<button type="button"
																									onclick="location.href='serviceUpdateForm.do?ser_code=${service.ser_code }'"
																									class="genric-btn danger-border circle">수정</button>
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
											<div class="tab-pane fade" id="nav-info" role="tabpanel"
												aria-labelledby="nav-info-tab">
													<div class="listing-details-area">
														<div class="container">
															<div class="row">

																<c:forEach items="${sellerMainServiceList }" var="service">
																	<c:if test="${service.ser_status eq 'Y'}">

																		<div class="col-lg-6">
																			<div class="single-listing mb-30">
																				<div class="list-img">
																					<img src="fileupload/${service.ser_img }" alt="">
																				</div>
																				<div class="list-caption">
																					<div class="category">* ${service.category } > ${service.sub_category }</div><br/>
																					<h3>
																						<a href="serviceDetail.do?ser_code=${service.ser_code }">${service.ser_title }</a>
																					</h3>
																					<div>번호 : s${service.ser_code }</div>
																					<div class="list-footer">
																						<ul>
																							<li>
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
											<div class="tab-pane fade" id="nav-review" role="tabpanel"
												aria-labelledby="nav-review-tab">
												<div class="listing-details-area">
														<div class="container">
															<div class="row">

																<c:forEach items="${powerList }" var="power">
																	
																		<div class="col-lg-6">
																			<div class="single-listing mb-30">
																				<div class="list-img">
																					<img src="fileupload/${power.ser_img }" alt="">
																				</div>
																				<div class="list-caption">
																					<span style="cursor: pointer;" onclick="location.href='serviceDetail.do?ser_code=${power.ser_code  }'">Open</span>
																					<div class="category">* ${power.cat_name } > ${power.sub_name }</div><br/>
																					<h3>
																						<a href="serviceDetail.do?ser_code=${power.ser_code }">${power.ser_title }</a>
																					</h3>
																					<div>번호 : s${power.ser_code }</div>
																					<div class="list-footer">
																						<ul>
																							<li>
																								<!-- <div style="margin-left: 210px;">
																							<a href="#" class="genric-btn danger-border circle" data-toggle="modal" data-target="#endModal">종료</a>
																						</div> -->
																					
																							<c:if test="${fn:substring(power.power_start,0,10) <= today && fn:substring(power.power_end,0,10) >= today}">
																								<div style="color:red;">*제공중인 서비스입니다.</div>
																							</c:if>
																							<c:if test="${fn:substring(power.power_start,0,10) > today }">
																								<div >*제공예정인 서비스입니다.</div>
																							</c:if>
																							<c:if test="${fn:substring(power.power_start,0,10) < today && fn:substring(power.power_end,0,10) < today}">
																								<div>*제공완료된 서비스입니다.</div>
																							</c:if>
																							</li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																	
																</c:forEach>
															</div>
														</div>
													</div>
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
				<form id="frm" action="powerserviceInsert.do" method="post">
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
										<select id="powerS"  name="ser_code" >
											<c:forEach items="${sellerMainServiceList }" var="service">
											<c:if test="${service.ser_status eq 'N'}">
												<option value="${service.ser_code }">${service.ser_title}</option>
												
											</c:if>
											</c:forEach>
										</select>
									</div>
									<c:forEach items="${sellerMainServiceList }" var="service">
										<c:if test="${service.ser_status eq 'N'}">
											<input type="hidden" id="${service.ser_code }" value="${fn:substring(service.ser_end,0,10) }">
										</c:if>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td>희망시작일</td>
								<td><input type="date" name="power_start" id="powerdate" min="" max="" step="7"></td>
							</tr>
							<tr>
								<td>비용</td>
								<td><input type="text" value="500000" disabled>
								<input type="hidden" name="power_price" value="500000">
								</td>
							</tr>
						</table>

					</div>
					<div class="modal-footer">
						<a href="#" class="genric-btn primary  radius powerbtn"
							id="check_module" data-toggle="modal">결제</a> <a href="#"
							class="genric-btn primary  radius powerbtn" data-dismiss="modal">취소</a>
					</div>
				</form>
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

					<table class="endservtb">
						<tr>
							<td>서비스종료사유</td>
							<td><textarea cols="30" rows="3" id="ser_reason"></textarea></td>
						</tr>
						<tr>
							<td>의뢰 종료 예정 날짜</td>
							<td><input type="text" id="ser_end" disabled></td>
						</tr>
						<!-- <tr>
							<td>프로모션 종료 날짜</td>
							<td><input type="text" id="ser_proend" disabled></td>
						</tr> -->
						<tr>
							<td>파워서비스 종료 날짜</td>
							<td><input type="text" id="ser_powerend" disabled></td>
						</tr>
						<tr>
							<td>희망 종료일</td>
							<td><input type="date" id="ser_cal"></td>
						</tr>
					</table>

				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn primary  radius powerbtn" id="endbtn"
						data-toggle="modal">확인</a> <a href="#"
						class="genric-btn primary  radius powerbtn" data-dismiss="modal">취소</a>
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

			/* enddate(); */
			var paramDate = new Date();
			var day = paramDate.getDay();
			var diff = paramDate.getDate() - day + (day == 0 ? -6 : 1);
			var mon = new Date(paramDate.setDate(diff)).toISOString().substring(0, 10);
			$("#powerdate").attr('min', mon);
		});

		$("#nav-tab a").on("click", function(event) {
			event.preventDefault();
			$(this).tab("show");
		})

		$(document).ready(
				function() {

					$("#endModal").on(
							"show.bs.modal",
							function(event) {

								sercode = $(event.relatedTarget).data("sercode");
								sertitle = $(event.relatedTarget).data("sertitle");
								serend = $(event.relatedTarget).data("end");
								promax = $(event.relatedTarget).data("promax");
								powermax = $(event.relatedTarget).data("powermax");
								
								if (serend == '') {
									$("#ser_end").val('-');
								}else{
									$("#ser_end").val(serend.substr(0, 10));
								}
								
								/* if(promax == ''){
									$("#ser_proend").val('-');
								}else{
									$("#ser_proend").val(promax.substr(0, 10));
								} */
								
								if(powermax == ''){
									$("#ser_powerend").val('-');
								}else{
									$("#ser_powerend").val(powermax.substr(0, 10));
								}
								
								console.log(sercode);
								console.log(sertitle);
								console.log(serend);
								console.log(promax);
								console.log(powermax);
								
								/* $.ajax({
									url : "endPromotion.do",
									dataType : "text",
									type : "post",
									data : {
										sercode : sercode
									},
									success : function(result) {
										console.log(result);
										if (result == '') {
											$("#ser_proend").val('-');
										} else {
											$("#ser_proend").val(result.substr(0, 10));
										}
									},
									error : function(err) {
										console.log(err);
									}
								})

								$.ajax({
									url : "endPower.do",
									dataType : "text",
									type : "post",
									data : {
										sercode : sercode
									},
									success : function(result) {
										console.log(result);
										if (result == '') {
											$("#ser_powerend").val('-');
										} else {
											$("#ser_powerend").val(result.substr(0, 10));
										}
									},
									error : function(err) {
										console.log(err);
									}
								}) */
								
								var reason = document.getElementById("ser_reason");
								reason.value = '';
								var end = document.getElementById("ser_cal");
								end.value = '';
								
								//종료일 체크
								if (serend >= powermax) {
								 	var today = new Date(serend.substr(0, 10));
									today.setMonth(today.getMonth() + 1);
									today.setDate(today.getDate());

									var year = today.getFullYear();
									var month = (today.getMonth() < 10 ? '0' : '') + today.getMonth();
									var day = (today.getDate() < 10 ? '0' : '') + today.getDate();
									date = year + '-' + month + '-' + day
									console.log(date);
									$("#ser_cal").attr('min', date);
									console.log(serend.substr(0, 10))
								} else if(serend < powermax){
									var today = new Date(powermax.substr(0, 10));
									today.setMonth(today.getMonth() + 1);
									today.setDate(today.getDate());

									var year = today.getFullYear();
									var month = (today.getMonth() < 10 ? '0' : '') + today.getMonth();
									var day = (today.getDate() < 10 ? '0' : '')	+ today.getDate();
									date = year + '-' + month + '-' + day
									console.log(date);
									$("#ser_cal").attr('min', date);
								}else{
									var today = new Date();
									today.setMonth(today.getMonth() + 1);
									today.setDate(today.getDate());

									var year = today.getFullYear();
									var month = (today.getMonth() < 10 ? '0' : '') + today.getMonth();
									var day = (today.getDate() < 10 ? '0' : '')	+ today.getDate();
									date = year + '-' + month + '-' + day
									console.log(date);
									$("#ser_cal").attr('min', date);
								}
								$(".endp").text(sertitle + '을(를) 종료하시겠습니까?');
								$(".endp").attr('id', sercode);
								

							});
				});

		$("#endbtn").on("click", function() {
			let ser_code = $(".endp").attr('id');
			let ser_reason = $("#ser_reason").val();
			let ser_end = $("#ser_cal").val();

			if (ser_reason == '') {
				alert('종료사유를 작성해주세요.');
				$("#ser_reason").focus();
				return;
			} else if (ser_end == '') {
				alert('희망 종료일자를 선택해주세요.');
				return;
			}
			
			
			$.ajax({
				url : "endService.do",
				dataType : "text",
				type : "post",
				data : {
					ser_code : ser_code,
					ser_reason : ser_reason,
					ser_end : ser_end
				},
				success : function(result) {
					if (result == "T") {
						alert('종료 예약되었습니다.\n'+ser_end+'일 자정까지 서비스되며 익일 종료됩니다.');
						location.href = "sellerService.do";
					} else{
						alert('일시적 오류로 종료 실패하였습니다.');
						return;
					}
				}
			})
		})

		/* function enddate() {
			console.log($("#powerS option:selected").val());
			var powerno = $("#powerS option:selected").val();
			
			var paramDate = new Date();
			var day = paramDate.getDay();
			var diff = paramDate.getDate() - day + (day == 0 ? -6 : 1);
			var mon = new Date(paramDate.setDate(diff)).toISOString().substring(0, 10);
			$("#powerdate").attr('min', mon);
			
			var powerend = document.getElementById(powerno).value;
			console.log(powerend);
			if(powerend != ''){
				console.log()
				$("#powerdate").attr('max', powerend);			
			}else{
				$("#powerdate").attr('max', '');
			}
			
		} */

		$("#check_module").click(
			
			function() {
				if($("#powerdate").val() == ''){
					alert('시작일을 선택해주세요.');
					return;
				}
				//파워서비스 시작일
				var powerstart= $("#powerdate").val();
				
				var powerno = $("#powerS option:selected").val();
				//서비스 종료예정일
				var powerend = document.getElementById(powerno).value;
				
				//파워서비스 종료일
				var paramDate = new Date($("#powerdate").val());
				var day = paramDate.getDay();
				var diff = paramDate.getDate()+6;
				var dateString = new Date(paramDate.setDate(diff)).toISOString().substring(0, 10);
				
				if(powerend !='' && powerend < dateString){
					alert('서비스 종료 예정일 : '+powerend+'\n파워 서비스 종료일 : '+dateString+'\n서비스 종료 예정일이 파워서비스 종료일보다 빠릅니다.');
					return;
				}
				
				$.ajax({
					url: "powerServiceCount.do",
					data: {power_start : powerstart, ser_code : powerno},
					dataType: "text",
					type:"post",
					success: function(result){
						if(result == 'full'){
							alert('정원이 다 찼습니다. 다른 날짜를 선택해주세요.');
							return;
						}else if(result == 'overlap'){
							alert('이미 해당날짜에 등록되어있습니다.');
							return;
						}else{

							var IMP = window.IMP; // 생략가능
							IMP.init('imp49718054');
							// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
							// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
							IMP.request_pay({
								pg : 'inicis', // version 1.1.0부터 지원.
								/*
								'kakao':카카오페이,
								html5_inicis':이니시스(웹표준결제)
								'nice':나이스페이
								'jtnet':제이티넷
								'uplus':LG유플러스
								'danal':다날
								'payco':페이코
								'syrup':시럽페이
								'paypal':페이팔
								 */
								pay_method : 'card',
								/*
								'samsung':삼성페이,
								'card':신용카드,
								'trans':실시간계좌이체,
								'vbank':가상계좌,
								'phone':휴대폰소액결제
								 */
								merchant_uid : 'merchant_'
										+ new Date().getTime(),
								/*
								merchant_uid에 경우
								https://docs.iamport.kr/implementation/payment
								위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
								참고하세요.
								나중에 포스팅 해볼게요.
								 */
								name : '주문명:결제테스트',
								//결제창에서 보여질 이름
								amount : 500000,
								//가격
								//bank_name : null,
								buyer_email : 'iamport@siot.do',
								buyer_name : '구매자이름',
								buyer_tel : '010-1234-5678',
								buyer_addr : '서울특별시 강남구 삼성동',
								buyer_postcode : '123-456',
								m_redirect_url : 'https://www.yourdomain.com/payments/complete',
							/*
							모바일 결제시,
							결제가 끝나고 랜딩되는 URL을 지정
							(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
							 */
							}, function(rsp) {
								console.log(rsp);
								if (rsp.success) {
									//$("#or_uid").val(rsp.imp_uid);
									$("#frm").submit();
									var msg = '결제가 완료되었습니다.';
									msg += '고유ID : '
											+ rsp.imp_uid;
									/* msg += '상점 거래ID : ' + rsp.merchant_uid;
									msg += '결제 금액 : ' + rsp.paid_amount;
									msg += '카드 승인번호 : ' + rsp.apply_num; */
								} else {
									var msg = '결제에 실패하였습니다.';
									/*msg += '에러내용 : ' + rsp.error_msg;
									msg += 'ㅜㅜ' + rsp.amount;
									msg += rsp.imp_uid; */
								}
								alert(msg);
							});
						}
					},error: function(){
						alert("일시적 오류로 실패하였습니다.");
						return;
					}
				})
				
			});
	</script>
</body>
</html>
