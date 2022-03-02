<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.fables-single-item {
	color: rgb(64, 64, 64);
}

.fables-single-item:hover {
	background-color: tomato;
}

.nav-link.active {
	background-color: tomato !important;
	color: white !important;
}

.category-listing {
	height: 300px !important;
}

.hr {
	background-color: #d5c9ea !important;
	margin: 10px !important;
}
</style>
</head>
<body>
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>프로모션 관리</h2>
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
										<p>서비스관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p style="font-weight: bold;">프로모션관리</p>
								</a></li>
								<li><a href="#" class="d-flex">
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
								<li><a href="" class="d-flex" data-toggle="modal"
									data-target="#WithdrawalModal">
										<p>회원탈퇴</p>
								</a></li>
							</ul>
						</aside>
					</div>
				</div>


				<div class="col-9">
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<div class="justify-content-center">
								<a class="d-inline-block" style="margin-top: 20px;">
									<h3>프로모션 관리</h3>
								</a>
								<hr class="hr" />
								<a href="promotionInsert.do" class="genric-btn danger">프로모션 등록</a>
								<div class="blog_details">
									<div class="container">
										<nav class="fables-single-nav">
											<div class="nav nav-tabs" id="nav-tab" role="tablist">
												<a
													class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
													id="nav-desc-tab" data-toggle="tab" href="#nav-desc"
													role="tab" aria-controls="nav-desc" aria-selected="true">진행중인
													프로모션</a> <a
													class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
													id="nav-info-tab" data-toggle="tab" href="#nav-info"
													role="tab" aria-controls="nav-info" aria-selected="false">종료된
													프로모션</a>
											</div>
										</nav>
										<br /> <br />
										<div class="tab-content" id="nav-tabContent">
											<div class="tab-pane fade show active" id="nav-desc"
												role="tabpanel" aria-labelledby="nav-desc-tab">
												<div class="listing-details-area">
													<div class="container">
														<div class="row">
															<div class="col-lg-6 ">
																<div class="single-listing mb-30">
																	<div class="list-img">
																		<img src="assets/img/gallery/list1.png" alt="">
																		<!-- <span>Open</span> -->
																	</div>
																	<div class="list-caption">
																		<span>Open</span>
																		<h3>
																			<a href="listing_details.html">서비스명1</a>
																		</h3>
																		<p>프로모션번호</p>
																		<p>프로모션일자</p>
																		<p>프로모션일자</p>
																		<p>할인율</p>

																	</div>
																</div>
															</div>
															<div class="col-lg-6 ">
																<div class="single-listing mb-30">
																	<div class="list-img">
																		<img src="assets/img/gallery/list2.png" alt="">
																		<!-- <span>Open</span> -->
																	</div>
																	<div class="list-caption">
																		<span>Open</span>
																		<h3>
																			<a href="listing_details.html">서비스명2</a>
																		</h3>
																		<p>프로모션번호</p>
																		<p>프로모션일자</p>
																		<p>프로모션일자</p>
																		<p>할인율</p>

																	</div>
																</div>
															</div>
															<div class="col-lg-6 ">
																<div class="single-listing mb-30">
																	<div class="list-img">
																		<img src="assets/img/gallery/list3.png" alt="">
																		<!-- <span>Open</span> -->
																	</div>
																	<div class="list-caption">
																		<span>Open</span>
																		<h3>
																			<a href="listing_details.html">서비스명3</a>
																		</h3>
																		<p>프로모션번호</p>
																		<p>프로모션일자</p>
																		<p>프로모션일자</p>
																		<p>할인율</p>

																	</div>
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="nav-info" role="tabpanel"
												aria-labelledby="nav-info-tab">
												<p
													class="fables-single-info mt-4 font-15 fables-fifth-text-color">
													22222 a page when looking at its layout. The point of using
													Lorem Ipsum is that it has a more-or-less normal
													distribution of letters, as opposed to using 'Content here,
													content here', making it look like readable English. Many
													desktop publishing packages and web page editors now use
													Lorem Ipsum as their default model text, and a search for
													'lorem ipsum' will uncover many web sites still in their
													infancy. Various versions have evolved over the years,
													sometimes by accident, sometimes on purpose (injected
													humour and the like).</p>
											</div>
										</div>
									</div>

									<!-- listing Details End -->
									<!--Pagination Start  -->
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
								</div>
							</div>
						</article>
					</div>
				</div>




			</div>
		</div>
	</section>

</body>
</html>