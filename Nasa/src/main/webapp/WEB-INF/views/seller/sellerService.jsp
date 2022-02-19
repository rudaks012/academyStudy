<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		.nav-item a.active {
			color: white;
			background-color: #04AA6D;
		}
	</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
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
	<div class="listing-area pt-120 pb-120">
		<div class="container">
			<div class="row">
				<!-- Left content -->
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="row">
						<div class="col-12">
								<div class="small-section-tittle2 mb-45" >
								<h4>서비스 선택</h4>
							</div>
						</div>
					</div>
					<!-- Job Category Listing start -->
					<div class="category-listing mb-50" style="height: 200px;">
						<!-- single one -->
						<div class="single-listing">
							<!-- input -->
							<div class="input-form">
								
							</div>
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
					<a href="#" class="genric-btn danger">서비스 등록</a>
					<a href="#" class="genric-btn danger">파워서비스 등록</a>
					<!-- Job Category Listing End -->
				</div>
				<!-- Right content -->
				<div class="col-xl-8 col-lg-8 col-md-6">
					<div class="row">
						<div class="col-lg-12">
							<div class="count mb-35">
								<h3>진행중인 서비스</h3>
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
											
											<h3><a href="listing_details.html">서비스명1</a></h3>
											<p>서비스번호</p>
											<p>서비스일자</p>
											<div class="list-footer">
												<ul >
													<li style="margin-left: 130px;"><a  href="#" class="genric-btn danger-border circle" >수정</a></li>
													<li><a href="#" class="genric-btn danger-border circle">종료</a></li>
												</ul>
											</div>
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
											
											<h3><a href="listing_details.html">서비스명2</a></h3>
											<p>서비스번호</p>
											<p>서비스일자</p>
											<div class="list-footer">
												<ul >
													<li style="margin-left: 130px;"><a  href="#" class="genric-btn danger-border circle" >수정</a></li>
													<li><a href="#" class="genric-btn danger-border circle">종료</a></li>
												</ul>
											</div>
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
											
											<h3><a href="listing_details.html">서비스명3</a></h3>
											<p>서비스번호</p>
											<p>서비스일자</p>
											<div class="list-footer">
												<ul >
													<li style="margin-left: 130px;"><a  href="#" class="genric-btn danger-border circle" >수정</a></li>
													<li><a href="#" class="genric-btn danger-border circle">종료</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 ">
									<div class="single-listing mb-30">
										<div class="list-img">
											<img src="assets/img/gallery/list4.png" alt="">
											<!-- <span>Open</span> -->
										</div>
										<div class="list-caption">
											<span>Open</span>
											 <h3><a href="listing_details.html">Saintmartine</a></h3>
											<p>700/D, Kings road, Green lane, 85/ London</p>
											<div class="list-footer">
												<ul>
													<li>+10 278 367 9823</li>
													<li>contact@midnight.com</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 ">
									<div class="single-listing mb-30">
										<div class="list-img">
											<img src="assets/img/gallery/list5.png" alt="">
											<!-- <span>Open</span> -->
										</div>
										<div class="list-caption">
											<span>Open</span>
											 <h3><a href="listing_details.html">Saintmartine</a></h3>
											<p>700/D, Kings road, Green lane, 85/ London</p>
											<div class="list-footer">
												<ul>
													<li>+10 278 367 9823</li>
													<li>contact@midnight.com</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 ">
									<div class="single-listing mb-30">
										<div class="list-img">
											<img src="assets/img/gallery/list6.png" alt="">
											<!-- <span>Open</span> -->
										</div>
										<div class="list-caption">
											<span>Open</span>
											 <h3><a href="listing_details.html">Saintmartine</a></h3>
											<p>700/D, Kings road, Green lane, 85/ London</p>
											<div class="list-footer">
												<ul>
													<li>+10 278 367 9823</li>
													<li>contact@midnight.com</li>
												</ul>
											</div>
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
												<li class="page-item active"><a class="page-link" href="#">01</a></li>
												<li class="page-item"><a class="page-link" href="#">02</a></li>
												<li class="page-item"><a class="page-link" href="#">03</a></li>
											<li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
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
	<script>
		$(function () { // actvie 활성화 
			$(".nav-item > .active").css("color", "white");
			$('.nav-link').click(function () {
				// .nav-link 클릭시 이전의 active 값 해제 후, 
				$(".nav-item > .active").css("color", "#666");
				$('.nav-link').removeClass('active'); // 클릭한 위치 active 적용 
				$(this).addClass('active');
				$(".nav-item > .active").css("color", "white");
			});
		});
	</script>
</body>
</html>