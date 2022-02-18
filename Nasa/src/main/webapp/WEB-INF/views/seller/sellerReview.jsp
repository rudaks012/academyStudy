<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div.left {
		width: 30%;
		float: left;
		box-sizing: border-box;
		height: 3em;
		border: 1px solid;
	}

	div.right {
		width: 70%;
		float: right;
		box-sizing: border-box;
		height: 3em;
		border: 1px solid;
	}
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
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
	<div class="categories-area section-padding30">
		
		<div class="container">
			<div class="left">
				서비스명
			</div>
			<div class="right">
				<div class="default-select" id="default-select">
					<select style="display: none;">
						<option value=" 1">English</option>
						<option value="1">Spanish</option>
						<option value="1">Arabic</option>
						<option value="1">Portuguise</option>
						<option value="1">Bengali</option>
					</select>
					<div class="nice-select" tabindex="0">
						<span class="current">English</span>
						<ul class="list">
							<li data-value=" 1" class="option selected">English</li>
							<li data-value="1" class="option">Spanish</li>
							<li data-value="1" class="option">Arabic</li>
							<li data-value="1" class="option">Portuguise</li>
							<li data-value="1" class="option">Bengali</li>
						</ul>
					</div>
				</div>
			</div>
			<br />
			<div class="comments-area">
				<div class="comment-list">
					<div class="single-comment justify-content-between d-flex" style="border: solid 1px;">
						<div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
							<div class="thumb">
								<img src="assets/img/comment/comment_1.png" alt="">
							</div>
							<div class="desc">
								<p class="comment">
									Multiply sea night grass fourth day sea lesser rule open subdue female fill which
									them
									Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
								</p>
								<div class="d-flex justify-content-between">
									<div class="d-flex align-items-center">
										<h5>
											<a href="#">홍길동</a>
										</h5>
										<p class="date">December 4, 2017 at 3:12 pm </p>
									</div>
									<div class="reply-btn">
										<a href="#" class="btn-reply text-uppercase">신고</a>
									</div>
								</div>
							</div>
						</div>
						<img src="assets/img/gallery/list1.png"/>
					</div>
					
				</div>
				<div class="comment-list">
					<div class="single-comment justify-content-between d-flex" style="border: solid 1px;">
						<div class="user justify-content-between d-flex">
							<div class="thumb">
								<img src="assets/img/comment/comment_2.png" alt="">
							</div>
							<div class="desc">
								<p class="comment">
									Multiply sea night grass fourth day sea lesser rule open subdue female fill which
									them
									Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
								</p>
								<div class="d-flex justify-content-between">
									<div class="d-flex align-items-center">
										<h5>
											<a href="#">김길동</a>
										</h5>
										<p class="date">December 4, 2017 at 3:12 pm </p>
									</div>
									<div class="reply-btn">
										<a href="#" class="btn-reply text-uppercase">신고</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>