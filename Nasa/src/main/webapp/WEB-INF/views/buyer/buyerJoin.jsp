<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Hero Start-->
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>회원가입</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Hero End -->

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">
			<div class="row d-flex justify-content-center align-items-center">
				<!-- <div class="col-12">
                        <h2 class="contact-title">Get in Touch</h2>
                    </div> -->
				<div>
					<form class="form-contact contact_form"
						action="contact_process.php" method="post" id="contactForm"
						novalidate="novalidate">
						<div class="row d-flex justify-content-center align-items-center">
							<div class="col-sm-8">
								<div class="form-group">
									이름<input class="form-control valid" name="name" id="name"
										type="text" placeholder="이름(실명)을 입력해주세요">
								</div>
							</div>
							<div class="col-sm-8">
								<div class="form-group">
									이메일
									<div class="d-flex">
										<input class="form-control valid" name="email" id="email"
											type="email" placeholder="example@nasa.com"> <input
											type="button" value="확인" class="genric-btn primary radius"
											style="float: right;">
									</div>
								</div>
							</div>
							<div class="col-sm-8">
								<div class="form-group">
									비밀번호<input class="form-control valid" name="password"
										id="password" type="password"
										placeholder="영문+숫자 조합 8자리 이상 입력해주세요">
								</div>
							</div>
							<div class="col-sm-8">
								<div class="form-group">
									비밀번호 확인<input class="form-control valid" type="password"
										placeholder="비밀번호를 다시 입력해주세요">
								</div>
							</div>
							<div class="col-sm-8">
								<div class="d-flex">
									<div class="primary-checkbox">
										<input type="checkbox" id="primary-checkbox"> <label
											for="primary-checkbox"></label>
									</div>
									&nbsp;
									<p>이용 약관, 개인정보 수집 및 이용 동의 (필수)</p>
								</div>
							</div>
							<div class="col-sm-8">
								<div
									class="form-group mt-3 d-flex justify-content-center align-items-center">
									<button class="button button-contactForm boxed-btn">회원가입</button>
								</div>
							</div>
						</div>
					</form>
					<div
						class="form-group mt-3 d-flex justify-content-center align-items-center">
						<a href="sellerJoin.do" style="color: #1f2b7b;">판매자로 가입하시나요?</a>
					</div>
				</div>				
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->
</body>
</html>