<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.nice-select {
	width: 500px;
}

.revimg {
	width: 200px;
	height: 100px;
}

.comment {
	width: 550px;
}

.btn-reply1 {
	background-color: transparent;
	color: #888888;
	font-size: 14px;
	font-weight: 400;
}

.revborder {
	margin-bottom: 50px;
}

.comments-area {
	margin-top: 0px;
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
						<h2>리뷰 관리</h2>
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
							<div class="blog_details">
								<div class="justify-content-center">
									<a class="d-inline-block" style="margin-top: 20px;">
										<h3>리뷰 관리</h3>
									</a>
									<hr class="hr" />
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
											</tbody>
										</table>
									</div>

								</div>
								<br />


								<div class="comments-area">

									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="assets/img/comment/comment_1.png" alt="">
												</div>
												<div class="desc">
													<span>Emilly Blunt</span> <span class="date">December
														4, 2017 at 3:12 pm </span>
													<p class="comment">Never say goodbye till the end
														comes!</p>
													<a href="" class="btn-reply text-uppercase">신고</a>
												</div>
											</div>
											<img class="revimg" src="assets/img/gallery/list1.png">
										</div>
									</div>
									<div class="comment-list left-padding">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="assets/img/comment/comment_2.png" alt="">
												</div>
												<div class="desc">
													<span>홍길동</span> <span class="date">December 4, 2017
														at 3:12 pm </span>
													<p class="comment">Never say goodbye till the end
														comes!</p>
													<span class="btn-reply1">수정</span> <span class="btn-reply1">삭제</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="comments-area">
									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="assets/img/comment/comment_3.png" alt="">
												</div>
												<div class="desc">
													<span>Maria Luna</span> <span class="date">December
														4, 2017 at 3:12 pm </span>
													<p class="comment">Never say goodbye till the end
														comes!</p>
													<span class="btn-reply1">신고</span> <span class="btn-reply1">리뷰등록</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="comments-area">
									<div class="comment-list">
										<div class="single-comment justify-content-between d-flex">
											<div class="user justify-content-between d-flex">
												<div class="thumb">
													<img src="assets/img/comment/comment_1.png" alt="">
												</div>
												<div class="desc">
													<div class="desc">
														<span>Ina Hayes</span> <span class="date">December
															4, 2017 at 3:12 pm </span>
														<p class="comment">Never say goodbye till the end
															comes!</p>
														<span class="btn-reply1">신고</span> <span
															class="btn-reply1">리뷰등록</span>
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