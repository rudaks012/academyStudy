<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#progress {
	position: relative;
	margin-bottom: 30px;
}

#progress-bar {
	position: absolute;
	background: lightseagreen;
	height: 5px;
	width: 0%;
	top: 50%;
	left: 0;
}

#progress-num {
	margin: 0;
	padding: 0;
	list-style: none;
	display: flex;
	justify-content: space-between;
}

#progress-num::before {
	content: "";
	background-color: lightgray;
	position: absolute;
	top: 50%;
	left: 0;
	height: 5px;
	width: 100%;
	z-index: -1;
}

#progress-num .step {
	border: 3px solid lightgray;
	border-radius: 100%;
	width: 45px;
	height: 45px;
	line-height: 35px;
	text-align: center;
	background-color: #fff;
	font-family: sans-serif;
	font-size: 14px;
	position: relative;
	z-index: 1;
}

#progress-num .step.active {
	border-color: lightseagreen;
	background-color: lightseagreen;
	color: #fff;
}

.btn {
	background: lightgray;
	border: none;
	border-radius: 3px;
	padding: 6px 12px;
}
.home-blog-area{
	margin-top : 100px;
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
						<h2>프로모션 등록</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="home-blog-area">

		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="count mb-35" style="text-align: center;">
						<h3>STEP 1. 서비스 선택</h3>
					</div>
				</div>
			</div>
			
			<div class="row justify-content-center">
				<div class="col-lg-8 posts-list">
					<div id="progress">
						<div id="progress-bar"></div>
						<ul id="progress-num">
							<li class="step active">1</li>
							<li class="step">2</li>
							<li class="step">3</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="listing-details-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
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
						<div class="col-lg-4">
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
						<div class="col-lg-4">
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
					</div>
				</div>
			</div>
		</div>

		<button id="progress-prev" class="btn" disabled>Prev</button>
		<button id="progress-next" class="btn">Next</button>
	</div>
	
	<script>
		const progressBar = document.getElementById("progress-bar");
		const progressNext = document.getElementById("progress-next");
		const progressPrev = document.getElementById("progress-prev");
		const steps = document.querySelectorAll(".step");
		let active = 1;

		progressNext.addEventListener("click", () => {
			active++;
			if (active > steps.length) {
				active = steps.length;
			}
			updateProgress();
		});

		progressPrev.addEventListener("click", () => {
			active--;
			if (active < 1) {
				active = 1;
			}
			updateProgress();
		});

		const updateProgress = () => {
			steps.forEach((step, i) => {
				if (i < active) {
					step.classList.add("active");
				} else {
					step.classList.remove("active");
				}
			});
			progressBar.style.width = ((active - 1) / (steps.length - 1)) * 100 + "%";
			if (active === 1) {
				progressPrev.disabled = true;
			} else if (active === steps.length) {
				progressNext.disabled = true;
			} else {
				progressPrev.disabled = false;
				progressNext.disabled = false;
			}
		};
	</script>
</body>
</html>