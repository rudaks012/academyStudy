<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.hr{
 	background-color : #d5c9ea !important;
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
						<h2>판매자의 노하우</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-3">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">MYPAGE MENU</h4>
							<ul class="list cat-list">
								<li><a href="sellerService.do" class="d-flex">
										<p>서비스관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p>프로모션관리</p>
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
							<a class="d-inline-block" style="margin-top:20px;">
									<h3>판매자 노하우</h3>
								</a>
								<hr class="hr"/>
								<div class="blog_details">
									<div class="home-blog-area section">
										<div class="container">
											<a class="genric-btn danger" href="knowhowInsert.do">글 등록</a>
											<div class="row">
												<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
													<div class="single-team mb-30">
														<div class="team-img">
															<img src="assets/img/gallery/home_blog1.png" alt="">
														</div>
														<div class="team-caption">
															<span>노하우제목1</span>
															<h3>
																<a href="knowhowDetail.do">제목어느걸로?</a>
															</h3>
															<p>October 6, 2020by Steve</p>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
													<div class="single-team mb-30">
														<div class="team-img">
															<img src="assets/img/gallery/home_blog2.png" alt="">
														</div>
														<div class="team-caption">
															<span>노하우제목2</span>
															<h3>
																<a href="knowhowDetail.do">제목??</a>
															</h3>
															<p>October 6, 2020by Steve</p>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
													<div class="single-team mb-30">
														<div class="team-img">
															<img src="assets/img/gallery/home_blog3.png" alt="">
														</div>
														<div class="team-caption">
															<span>HEALTH & CARE</span>
															<h3>
																<a href="knowhowDetail.do">The Best SPA Salons For
																	Your Relaxation</a>
															</h3>
															<p>October 6, 2020by Steve</p>
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
				</div>
			</div>
		</div>
	</section>
</body>
</html>