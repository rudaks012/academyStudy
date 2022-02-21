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
		.powertb td{
			width: 120px;
			height: 50px;
			font-size: 12px;
		}
		.powerbtn, .modal-header{
			background-color: #e2c8d0 !important;
		}
		.modal-footer{
			display: block !important;
			text-align: center;
		}
		.powerp{
			color: red; 
			font-size: 8px;
			border-bottom: 1px solid #999294;
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
					<a href="#" class="genric-btn danger" data-toggle="modal" data-target="#PowerModal">파워서비스 등록</a>
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
											
											<h3><a href="serviceDetail.do">서비스명1</a></h3>
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
	
	<div class="modal fade" id="PowerModal" tabindex="-1" role="dialog" aria-labelledby="PowerModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">파워서비스 신청</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>파워서비스란? <br />
					합리적 예산의 고효율형! <br />
					당신의 서비스를 메인 화면에 노출을 기대할 수 있습니다. <br /> 저렴한 비용으로 상위 노출을 원하시는 분들에게 추천합니다.</p>
					<p class="powerp">*희망시작일로부터 일주일간 제공됩니다. <br />
					*최종 결제 후 환불 불가합니다.<br /><br />
					</p>
					<div class="br"></div>
					<table class="powertb">
						<tr>
							<td>서비스선택</td>
							<td><div class="default-select" id="default-select">
								<select>
									<option value="1">웹개발</option>
									<option value="2">앱개발</option>
									<option value="3">Arabic</option>
									<option value="4">Portuguise</option>
									<option value="5">Bengali</option>
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
					<a href="#" class="genric-btn primary  radius powerbtn" data-toggle="modal" data-dismiss="modal">결제</a>
					<a href="#" class="genric-btn primary  radius powerbtn"  data-dismiss="modal">취소</a>
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