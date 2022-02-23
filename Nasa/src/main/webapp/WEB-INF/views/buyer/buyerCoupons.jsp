<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/user/assets/css/buyHistoryCard.css">
<link rel="stylesheet" href="resources/user/assets/css/coupons.css">
</head>
<body>
<!-- Hero Start-->
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
	    <div class="container">
	        <div class="row">
	            <div class="col-xl-12">
	                <div class="hero-cap text-center pt-50">
	                    <h2>보유 쿠폰</h2>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<!--Hero End -->

<!-- buyerCoupons Body Start -->

		<div class="container">
			<div class="row">
			<!-- sidebar Start -->
				<div class="col-3" style="margin-top: 40px;">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">Menu</h4>
								<ul class="list cat-list">
									<li>
										<a href="buyHistory.do" class="d-flex">
											<p>구매내역</p>
										</a>
									</li>
									<li>
										<a href="#" class="d-flex">
											<p>일정관리</p>
										</a>
									</li>
									<li>
										<a href="buyerCoupons.do" class="d-flex">
											<p>보유쿠폰</p>
										</a>
									</li>
									<li>
										<a href="wishlist.do" class="d-flex">
											<p>위시리스트</p>
										</a>
									</li>
									<li>
										<a href="buyerReview.do" class="d-flex">
											<p>리뷰확인</p>
										</a>
									</li>
									<li>
										<a href="reportHistory.do" class="d-flex">
											<p>신고내역</p>
										</a>
									</li>                         
								</ul>
						</aside>
					</div>
				</div>
			<!-- sidbar End -->
				<div class="col-9">
					<div style="margin-top: 40px; border-bottom: 1px solid #eee;">
                    	<p><a href="goBuyerMypage.do" style="color: black;">마이페이지</a> > 보유쿠폰</p>
                	</div>
						<div class="blog_details">
						<!-- GradeCard Start -->
							<div class="blog-card">
								<div class="meta">
									<div class="photo" style="background-image: url(resources/user/assets/img/test/sun.png)"></div>
									<ul class="details">
										<li class="author"><a href="#">태양 등급</a></li>
										<li class="date">10% 할인 혜택</li>
										<li class="tags">
											<ul>
												<li><a href="#">등급에 대해서 궁금하다면?</a></li>
											</ul>
										</li>
									</ul>
								</div>
								<div class="description">
									<h1>태양 등급</h1>
									<h2>SUN GRADE</h2>
									<p><br>현재 누적 금액 10,000,000원<br>다음 등급 까지 2,000,000원</p>
									<p class="read-more">
										<a href="#">Read More</a>
									</p>
								</div>
							</div>
						<!-- GradeCard End -->
						
						<!-- Coupons Start -->
							<div class="row justify-content-center" style="margin-top:20px">
								<div class="coupons" style="width:700px;">
									<div class="coupon">
										<div class="coupon-intro">
											<h4>20% 할인 쿠폰</h4>
											<ul>
												<li>최대 200,000 할인</li>
												<li>2022-02-01 ~ 2022-03-01</li>
											</ul>
										</div>
										<div class="coupon-value">20 %</div>
									</div>
								
									<div class="coupon">
										<div class="coupon-end-intro">
											<h4>20% 할인 쿠폰</h4>
											<ul>
												<li>최대 200,000 할인</li>
												<li>2022-02-01 ~ 2022-02-15</li>
											</ul>
										</div>
										<div class="coupon-value">20 %</div>
									</div>
								</div>
							</div>
						<!-- Coupons End -->
						</div>
				</div>
			</div>
		</div>
	
<!-- buyerCoupons Body End -->
</body>
</html>