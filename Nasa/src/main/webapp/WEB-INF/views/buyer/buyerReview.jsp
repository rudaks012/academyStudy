<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<style>
		.nice-select {
			width: 300px;
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

		.modal-open {
			padding-right: 0px !important;
		}

		body {
			padding-right: 0px !important;
		}
	</style>
</head>

<body>
	<!-- Hero Start-->
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>리뷰</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Hero End -->
	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<!-- sidebar Start -->
				<div class="col-3">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">MENU</h4>
							<ul class="list cat-list">
								<li>
									<a href="buyHistory.do" class="d-flex">
										<p>구매내역</p>
									</a>
								</li>
								<li>
									<a href="buyerCalendar.do" class="d-flex">
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
										<p style="font-weight: bold;">리뷰확인</p>
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
				<!-- buyerReview Start -->
				<div class="col-9">
					<div class="blog_left_sidebar">
						<!-- <div style="margin-top: 40px;">
							<p><a href="goBuyerMypage.do" style="color: black;">마이페이지</a> > 리뷰</p>
						</div> -->
						<div class="blog_details">
							<a class="d-inline-block">
								<h2>나의 리뷰 | n건</h2>
							</a>
							<div class="comments-area">
								<div id="rvcode-01" class="comment-list">
									<div class="single-comment justify-content-between d-flex">
										<div class="user justify-content-between d-flex">
											<div class="thumb">
												<img src="assets/img/comment/comment_1.png" alt="">
											</div>
											<div class="desc">
												<span>웹개발 해드립니다.</span><br>
												<span>Emilly Blunt</span>
												<span class="ml-4">평점 : 4.5</span>
												<span class="date">December 4, 2017 at 3:12 pm </span>
												<p class="comment">Never say goodbye till the end comes!</p>
												<span class="btn-reply1" style="cursor: pointer;">수정</span>
												<span class="btn-reply1" onclick="deleteReview(this)"
													style="cursor: pointer;" data-toggle="modal"
													data-target="#deleteReviewModal" data-rvcode="rvcode-01">삭제</span>
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
												<span>홍길동</span>
												<span class="date">December 4, 2017 at 3:12 pm </span>
												<p class="comment">Never say goodbye till the end comes!</p>
												<span class="btn-reply1" data-toggle="modal" data-target="#reportModal"
													style="cursor: pointer;">신고</span>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-list">
									<div class="single-comment justify-content-between d-flex">
										<div class="user justify-content-between d-flex">
											<div class="thumb">
												<img src="assets/img/comment/comment_1.png" alt="">
											</div>
											<div class="desc">
												<span>웹개발 해드립니다.</span><br>
												<span>Emilly Blunt</span>
												<span class="ml-4">평점 : 4.5</span>
												<span class="date">December 4, 2017 at 3:12 pm </span>
												<p class="comment">Never say goodbye till the end comes!</p>
												<span class="btn-reply1" style="cursor: pointer;">수정</span>
												<span class="btn-reply1" data-toggle="modal"
													data-target="#deleteReviewModal" style="cursor: pointer;">삭제</span>
											</div>
										</div>
										<img class="revimg" src="assets/img/gallery/list1.png">
									</div>
								</div>
								<div class="comment-list">
									<div class="single-comment justify-content-between d-flex">
										<div class="user justify-content-between d-flex">
											<div class="thumb">
												<img src="assets/img/comment/comment_1.png" alt="">
											</div>
											<div class="desc">
												<span>웹개발 해드립니다.</span><br>
												<span>Emilly Blunt</span>
												<span class="ml-4">평점 : 4.5</span>
												<span class="date">December 4, 2017 at 3:12 pm </span>
												<p class="comment">Never say goodbye till the end comes!</p>
												<span class="btn-reply1" style="cursor: pointer;">수정</span>
												<span class="btn-reply1" data-toggle="modal"
													data-target="#deleteReviewModal" style="cursor: pointer;">삭제</span>
											</div>
										</div>
										<img class="revimg" src="assets/img/gallery/list1.png">
									</div>
								</div>
							</div>
							<nav class="blog-pagination justify-content-center d-flex">
								<ul class="pagination">
									<li class="page-item">
										<a href="#" class="page-link" aria-label="Previous">
											<i class="ti-angle-left"></i>
										</a>
									</li>
									<li class="page-item">
										<a href="#" class="page-link">1</a>
									</li>
									<li class="page-item active">
										<a href="#" class="page-link">2</a>
									</li>
									<li class="page-item">
										<a href="#" class="page-link" aria-label="Next">
											<i class="ti-angle-right"></i>
										</a>
									</li>
								</ul>
							</nav>
						</div>						
					</div>
				</div>
				<!-- buyeerReview End -->
			</div>
		</div>
	</section>

	<!-- Modal Start -->
	<!-- 신고 모달 -->
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">신고</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label><input type="radio" name="reportType" value="1" onclick="radiodisabled()">
								욕설/비방</label><br>
							<label><input type="radio" name="reportType" value="2" onclick="radiodisabled()">
								음란물</label><br>
							<label><input type="radio" name="reportType" value="3" onclick="radiodisabled()"> 스팸, 부적절한
								광고</label><br>
							<label><input type="radio" name="reportType" value="4" onclick="radiodisabled()"> 혐오 혹은 잔인한
								사진</label><br>
							<div class="form-group">
								<label><input type="radio" name="reportType" value="5" onclick="radioactive()"> 기타
									사유</label>
								<textarea class="form-control" id="reportSubject" name="reportSubject"
									disabled></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn danger radius" data-dismiss="modal">신고</a>
					<a href="#" class="genric-btn primary radius" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 신고 모달 -->

	<!-- 삭제 경고 모달 -->
	<div class="modal fade" id="deleteReviewModal" tabindex="-1" role="dialog" aria-labelledby="deleteReviewModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">리뷰 삭제</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">리뷰가 삭제됩니다!</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn danger radius" onclick="deleteReview()" data-dismiss="modal">삭제</a>
					<a href="#" class="genric-btn primary radius" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 삭제 경고 모달 -->


	<!-- Modal End -->
	<script>
		var rvcode = "";
		/* 신고 사유 textarea 끄고 켜는 함수 */
		function radiodisabled() {
			$("#reportSubject").attr("disabled", true);
			$("#reportSubject").val("");
		}

		function radioactive() {
			$("#reportSubject").attr("disabled", false);
		}
		/* 신고 사유 textarea 끄고 켜는 함수 */

		/* 리뷰 삭제 기능 test 함수 */
		$(document).ready(function () {
			$("#deleteReviewModal").on("show.bs.modal", function (event) {
				rvcode = $(event.relatedTarget).data("rvcode");
			});
		});

		function deleteReview() {
			console.log(rvcode);
			var target = document.getElementById(rvcode);
			target.remove();
		}
		/* 리뷰 삭제 기능 test 함수 */
	</script>
</body>

</html>