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
	<div class="categories-area section-padding30">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Section Tittle -->
					<div class="section-tittle text-center mb-80">
						<span>service</span>
						<h2>서비스 관리</h2>
					</div>
				</div>
			</div>
			<ul class="servnav">
				<li class="nav-item"><a class="nav-link active" href="#home">진행중인 서비스</a></li>
				<li class="nav-item"><a class="nav-link" href="#news">종료된 서비스</a></li>
				<li class="nav-item"><a class="nav-link" href="#contact">파워서비스</a></li>
			</ul>
			<br />
			<div class="row">
				<div class="col-md-3">
					<img src="assets/img/service/1.png" alt="" class="img-fluid">
				</div>
				<div class="col-md-9 mt-sm-20">
					<h3>서비스 이름1</h3>
					<p>서비스 번호</p>
					<p>서비스 일시</p>
					<a href="#" class="genric-btn info-border circle">수정</a>
					<a href="#" class="genric-btn info-border circle">종료</a>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-3">
					<img src="assets/img/service/2.png" alt="" class="img-fluid">
				</div>
				<div class="col-md-9 mt-sm-20">
					<h3>서비스 이름2</h3>
					<p>서비스 번호</p>
					<p>서비스 일시</p>
					<a href="#" class="genric-btn info-border circle">수정</a>
					<a href="#" class="genric-btn info-border circle">종료</a>
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