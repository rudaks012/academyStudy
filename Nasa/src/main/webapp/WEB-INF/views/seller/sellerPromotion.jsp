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
	<div class="listing-area pt-120 pb-120">
		<div class="container">
			<div class="row">
				<!-- Left content -->
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="row">
						<div class="col-12">
							<div class="small-section-tittle2 mb-45">
								<h4>프로모션 선택</h4>
							</div>
						</div>
					</div>
					<!-- Job Category Listing start -->
					<div class="category-listing mb-50" style="height: 200px;">
						<!-- single one -->
						<div class="single-listing">
							<!-- input -->
							<div class="input-form"></div>
							<!-- Select job items start -->
							<div class="select-job-items1">
								<select name="select1">
									<option value="">Choose categories</option>
									<option value="">Category 1</option>
									<option value="">Category 2</option>
									<option value="">Category 3</option>
								</select>
							</div>
							<!--  Select job items End-->
							<!-- Select job items start -->
							<div class="select-job-items2">
								<select name="select2">
									<option value="">Location</option>
									<option value="">Dhaka</option>
									<option value="">Mirpur</option>
									<option value="">Dannondi</option>
								</select>
							</div>

							<!--  Select job items End-->
							<!-- select-Categories start -->

							<!-- select-Categories End -->
							<!-- Select job items start -->

							<!--  Select job items End-->
						</div>
					</div>
					<a href="promotionInsert.do" class="genric-btn danger">프로모션 등록</a>
					<!-- Job Category Listing End -->
				</div>
				<!-- Right content -->
				<div class="col-xl-8 col-lg-8 col-md-6">
					<div class="row">
						<div class="col-lg-12">
							<div class="count mb-35">
								<h3>진행중인 프로모션</h3>
							</div>
						</div>
					</div>
					<!-- listing Details Stat-->
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
					<!--Pagination End  -->
				</div>
			</div>
		</div>
	</div>
	<div class="listing-area pt-120 pb-120">
		<div class="container">
			<nav class="fables-single-nav">
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a
						class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
						id="nav-desc-tab" data-toggle="tab" href="#nav-desc" role="tab"
						aria-controls="nav-desc" aria-selected="true">DESCRIPTION</a> <a
						class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
						id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab"
						aria-controls="nav-info" aria-selected="false">ADDITIONAL
						INFORMATION</a> <a
						class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
						id="nav-review-tab" data-toggle="tab" href="#nav-review"
						role="tab" aria-controls="nav-review" aria-selected="false">REVIEWS
						(0)</a>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-desc" role="tabpanel"
					aria-labelledby="nav-desc-tab">
					<p class="fables-single-info mt-4 font-15 fables-fifth-text-color">
						It is a long established fact that a reader will be distracted by
						the readable content of a page when looking at its layout. The
						point of using Lorem Ipsum is that it has a more-or-less normal
						distribution of letters, as opposed to using 'Content here,
						content here', making it look like readable English. Many desktop
						publishing packages and web page editors now use Lorem Ipsum as
						their default model text, and a search for 'lorem ipsum' will
						uncover many web sites still in their infancy. Various versions
						have evolved over the years, sometimes by accident, sometimes on
						purpose (injected humour and the like).</p>
				</div>
				<div class="tab-pane fade" id="nav-info" role="tabpanel"
					aria-labelledby="nav-info-tab">
					<p class="fables-single-info mt-4 font-15 fables-fifth-text-color">
						22222 a page when looking at its layout. The point of using Lorem
						Ipsum is that it has a more-or-less normal distribution of
						letters, as opposed to using 'Content here, content here', making
						it look like readable English. Many desktop publishing packages
						and web page editors now use Lorem Ipsum as their default model
						text, and a search for 'lorem ipsum' will uncover many web sites
						still in their infancy. Various versions have evolved over the
						years, sometimes by accident, sometimes on purpose (injected
						humour and the like).</p>
				</div>
				<div class="tab-pane fade" id="nav-review" role="tabpanel"
					aria-labelledby="nav-review-tab">
					<p class="fables-single-info mt-4 font-15 fables-fifth-text-color">
						333333he readable content of a page when looking at its layout.
						The point of using Lorem Ipsum is that it has a more-or-less
						normal distribution of letters, as opposed to using 'Content here,
						content here', making it look like readable English. Many desktop
						publishing packages and web page editors now use Lorem Ipsum as
						their default model text, and a search for 'lorem ipsum' will
						uncover many web sites still in their infancy. Various versions
						have evolved over the years, sometimes by accident, sometimes on
						purpose (injected humour and the like).</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>