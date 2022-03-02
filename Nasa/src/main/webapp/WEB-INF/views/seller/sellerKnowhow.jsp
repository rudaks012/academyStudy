<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.knowbtn{
	display: block;
	background-color : #d5c9ea !important;
	margin: auto;
	width: 300px;
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
										<p style="font-weight: bold;">판매자 노하우</p>
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
								<div class="d-inline-block" style="margin-top:20px;">
									<h3>판매자 노하우</h3>
									
								</div>
								<hr class="hr"/>
								<div class="blog_details">
									<div class="home-blog-area section">
										<div class="container">
											
											<div class="row">
												<c:forEach items="${knowhows }" var="knowhow">
													<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
														<div class="single-team mb-30">
															<div class="team-img">
																<img src="fileupload/${knowhow.no_img }" alt="" style="width: 238px; height: 238px;">
															</div>
															<div class="team-caption">
																<span>${knowhow.no_title }</span>
																<h3>
																	<a href="knowhowDetail.do?no_code=${knowhow.no_code } ">${knowhow.no_title }</a>
																</h3>
																<p>${knowhow.no_date }</p>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
										<a class="genric-btn danger knowbtn" href="knowhowInsertForm.do">글 등록</a>
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