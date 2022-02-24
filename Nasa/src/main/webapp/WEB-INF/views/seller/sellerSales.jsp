<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/admin/assets/libs/morris.js/morris.css"
	rel="stylesheet">
<style>
.nice-select {
	width: 300px;
}

.fables-counter {
	position: relative;
	z-index: 1;
	color: #fff;
	text-align: center;
}

.fables-forth-text-color {
	color: #5C6A77;
}

.fables-second-border-color {
	border-color: #E54D42 !important;
}

.font-40 {
	font-size: 40px;
}
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
						<h2>매출 확인</h2>
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
									<h3>매출 확인</h3>
								</a>
								<hr class="hr"/>
								<div class="blog_details">
									<div style="margin-top: 40px;">
										<div class="card mb-4">
											<div class="card-body">
												<table class="table caption-top table-bordered  text-center">
													<tbody>
														<tr>
															<th class="align-middle table-primary">서비스 선택</th>
															<td><select>
																	<option selected="">웹개발1</option>
																	<option value="1">웹개발2</option>
																	<option value="2">Jun 19</option>
															</select></td>

														</tr>
														<tr>
															<th class="align-middle table-primary">날짜 선택</th>
															<td style="text-align: left;"><input type="radio"
																name="chk_info" value="day" checked="checked">일일
																매출 <input type="date"><br /> <input
																type="radio" name="chk_info" value="daily">일간 매출
																<input type="date"> ~ <input type="date"><br />
																<input type="radio" name="chk_info" value="month">월간
																매출 <input type="date"> ~ <input type="date"><br />
																<input type="radio" name="chk_info" value="year">연간
																매출 <input type="date"> ~ <input type="date"><br />
															</td>
														</tr>
													</tbody>
												</table>


												<div class="d-flex justify-content-end my-4">
													<button class="btn btn-outline-secondary">
														검색<i class="ml-2 icon-magnifier search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>

									<div style="margin-top: 40px;">
										<div class="card mb-4">
											<div class="container pb-0 py-lg-5">
												<div class="row">
													<div class="col-6 col-md-6">
														<div class="fables-counter">
															<h2
																class="fables-counter-value font-40 font-weight-bold mb-3 fables-forth-text-color border fables-second-border-color d-inline-block px-4 py-2 mb-4"
																data-count="307">123</h2>
															<h3 class="font-14 semi-font fables-forth-text-color">총
																매출액</h3>
														</div>
													</div>
													<div class="col-6 col-md-6">
														<div class="fables-counter">
															<h2
																class="fables-counter-value font-40 font-weight-bold mb-3 fables-forth-text-color border fables-second-border-color d-inline-block px-4 py-2 mb-4"
																data-count="95">12312</h2>
															<h3 class="font-14 semi-font fables-forth-text-color">총
																수수료</h3>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>

									<div style="margin-top: 40px;">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title"></h4>
												<div id="all-month-chart"></div>

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



	<script src="resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="resources/admin/assets/libs/raphael/raphael.min.js"></script>
	<script src="resources/admin/assets/libs/morris.js/morris.min.js"></script>
	<script src="resources/admin/dist/js/pages/morris/seller-month-data.js"></script>
</body>
</html>