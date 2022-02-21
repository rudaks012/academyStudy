<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal -->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header tit-up">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Customer Login</h4>
                </div>
                <div class="modal-body customer-box">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li><a class="active" href="#Login" data-toggle="tab">Login</a></li>
                        <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="Login">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" id="email1" placeholder="Name" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" id="exampleInputPassword1" placeholder="Email"
                                            type="email">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-light btn-radius btn-brd grd1">
                                            Submit
                                        </button>
                                        <a class="for-pwd" href="javascript:;">Forgot your password?</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane" id="Registration">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" placeholder="Name" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" id="email" placeholder="Email" type="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" id="mobile" placeholder="Mobile" type="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" id="password" placeholder="Password"
                                            type="password">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-light btn-radius btn-brd grd1">
                                            Save &amp; Continue
                                        </button>
                                        <button type="button" class="btn btn-light btn-radius btn-brd grd1">
                                            Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
									<a class="hover-btn-new log orange" href="#" data-toggle="modal"
                                            data-target="#login" style="color: #1f2b7b;">이용 약관, 개인정보 수집 및 이용 동의 (필수)</a>
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