<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='resources/user/fullcalendar-5.10.1/lib/main.js'></script>
<link href='resources/user/fullcalendar-5.10.1/lib/main.css' rel='stylesheet' />
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

.hr{
 	background-color : #d5c9ea !important;
   	margin: 10px !important;
}

</style>
<script>
    // 수정할 것...
    document.addEventListener('DOMContentLoaded', function () {
        let xhtp = new XMLHttpRequest();
        xhtp.open('get', 'CalendarList.do');
        xhtp.send();
        xhtp.onload = function () {
            let dbData = JSON.parse(xhtp.responseText);
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                dayMaxEvents: true, // allow "more" link when too many events
                events: dbData
            });
            calendar.render();
        }
    });
</script>
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
									<h3>프로모션 등록</h3>
								</a>
								<hr class="hr"/>
								<div class="blog_details">
									<div class="col-lg-12">
										<div class="count mb-35" style="text-align: center;">
											<h3>STEP 1. 서비스 선택</h3>
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

									<div class="listing-details-area proservice">
										<div class="container">
											<div class="row">
												<div class="col-lg-4">
													<div class="single-listing mb-30">
														<div class="list-img">
															<img src="assets/img/gallery/list1.png" alt="">
														</div>
														<div class="list-caption">
															<h3>
																<a href="">서비스명1</a>
															</h3>
															<p>서비스번호</p>
															<p>서비스일자</p>
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
															<h3>
																<a href="">서비스명2</a>
															</h3>
															<p>서비스번호</p>
															<p>서비스일자</p>
														</div>
													</div>
												</div>
												<div class="col-lg-4">
													<div class="single-listing mb-30">
														<div class="list-img">
															<img src="assets/img/gallery/list2.png" alt="">
														</div>
														<div class="list-caption">
															<h3>
																<a href="listing_details.html">서비스명2</a>
															</h3>
															<p>서비스번호</p>
															<p>서비스일자</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div style="display: none;" class="procal">
										<div id='calendar'>
										</div>
										<br />
										할인율 : <input type="text">
									</div>
									
									<div class="listing-details-area proser" style="display: none;">
										<div class="row justify-content-center">
											<div class="col-lg-6">
													<div class="single-listing mb-30">
														<div class="list-img">
															<img src="assets/img/gallery/list1.png" alt="">
															<!-- <span>Open</span> -->
														</div>
														<div class="list-caption">
															<h3>
																<a href="listing_details.html">서비스명1</a>
															</h3>
															<p>서비스번호</p>
															<p>서비스일자</p>
														</div>
													</div>
												</div>
											</div>
									</div>
									<button id="progress-prev" class="genric-btn primary circle arrow" disabled>Prev</button>
									<button id="progress-next" class="genric-btn primary circle arrow">Next</button>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
		
	</section>
	
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
			} else if (active === 3) {
				progressNext.disabled = true;
				$('.procal').css('display','none');
				$('.proser').css('display','block');
			} else {
				progressPrev.disabled = false;
				progressNext.disabled = false;
				$('.proservice').css('display', 'none');
				$('.procal').css('display','block');
			}
		};
		
	</script>
</body>
</html>