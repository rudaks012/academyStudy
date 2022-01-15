<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
 function loginChk(){
	 var id = $("#exampleInputEmail1").val();
	 var password = $("#exampleInputPassword1").val();
	 console.log(id+" "+password)
 }
</script>
</head>
<body>
  <!-- plugins:css -->
  <link rel="stylesheet" href="resources/admin/vendors/feather/feather.css">
  <link rel="stylesheet" href="resources/admin/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="resources/admin/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="resources/admin/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="resources/admin/images/favicon.png" />
  <link rel="stylesheet" href="resources/admin/vendors/mdi/css/materialdesignicons.min.css">
  
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left py-5 px-4 px-sm-5"
							style="width: 44em; height: 40em; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
							<div class="brand-logo" style="height: 3rem;">
								<i
									style="color: #3f3e91; font-size: 6rem; position: absolute; top: 1.5rem;"
									class="mdi mdi-account-box"></i>
								<h1
									style="position: absolute; left: 16rem; top: 2rem; font-size: 5rem; color: #3f3e91;">Login</h1>

							</div>


							<form class="pt-3" id="loginForm" method="post">
								<div class="form-group">
									<input type="email" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Username">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="mt-3">
									<a style="font-size: 1.4rem;"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										href="javascript:loginChk()">SIGN IN</a>
								</div>
								<div class="mt-2"></div>
								<div class="mt-1">
									<a href="#" style="margin-right: .5em; margin-left: .5em; font-size: 1.2rem;"
										class="auth-link text-black">아이디 찾기</a> <a href="#" style="font-size: 1.2rem;"
										class="auth-link text-black">비밀번호 찾기</a>
								</div>
								<div class="mt-2"></div>


								<div class="mb-2">
									<button type="button" style="background-color: yellowgreen; font-size: 1.4rem;"
										class="btn btn-block btn-facebook auth-form-btn">네이버
										로그인</button>
								</div>
								<div class="mb-2">
									<button type="button" style="background-color: gold; font-size: 1.4rem;"
										class="btn btn-block btn-facebook auth-form-btn">카카오
										로그인</button>
								</div>
								<div class="mt-2"></div>
								<div class="mt-1">

									<a href="#" style="margin-left: .5em; font-size: 1.2rem;"
										class="auth-link text-black">회원가입</a>
								</div>
								<div style="position: absolute; left: 35.8em; bottom: 1.4rem;">
									<button type="button" style="width: 6em;" onclick="location.href='home.do'"
										class="btn btn-inverse-primary btn-rounded btn-icon">
										<i style="font-size: 1.7rem" class="ti-home"></i>
									</button>
								</div>

							</form>
						</div>
					</div>
				</div>	
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="resources/admin/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="resources/admin/js/off-canvas.js"></script>
	<script src="resources/admin/js/hoverable-collapse.js"></script>
	<script src="resources/admin/js/template.js"></script>
	<script src="resources/admin/js/settings.js"></script>
	<script src="resources/admin/js/todolist.js"></script>
	<!-- endinject -->
</body>
</html>