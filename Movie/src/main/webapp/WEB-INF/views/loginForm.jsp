<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="resources/admin/vendors/feather/feather.css">
<link rel="stylesheet"
	href="resources/admin/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="resources/admin/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="resources/admin/css/vertical-layout-light/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="resources/admin/images/favicon.png" />
<link rel="stylesheet"
	href="resources/admin/vendors/mdi/css/materialdesignicons.min.css">



<link
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">



	function loginChk() {
		var id = $("#exampleInputEmail1").val();
		var password = $("#exampleInputPassword1").val();
		$.ajax({
			url : 'ajaxLogin.do',

			data : {
				memId : id,
				memPassword : password
			},
			success : function(data) {
				console.log(data)
				if (data.msg == "Yes") {
					var author = data.author
					var name = data.name
					console.log(author)
					successalert(author, name);
				} else {
					falsealert(1)
				}

			},
			error : function() {
				falsealert(2)
			}
		})
	}

	function successalert(author, name) {
		if (author == "admin") {
			swal({
				icon : 'success',
				title : author + '계정으로 로그인 되었습니다.',
				text : '관리자 페이지로 이동하겠습니다.',
				value : true,

			}).then(function(value) {
				location.href = "adminhome.do"
			})
		} else if (author == "USER") {
			swal({
				icon : 'success',
				title : name + '님 환영합니다.',
				text : '',
				value : true,
			}).then(function(value) {
				location.href = "userhome.do"
			})
		} else {
			alert("에러임")
		}
	}
	function falsealert(val) {
		var msg;
		if (val == 1) {
			msg = '아이디 혹은 비밀번호가 일치하지 않습니다.'
		} else if (val == 2) {
			msg = '오류가 발생했습니다. 관리자에게 문의하세요.'
		}
		swal({
			icon : "warning",
			dangerMode : true,
			title : '',
			text : msg,
		})
	}
	function passwordFind() {
		swal({
			text : "아이디를 입력해주세요!",
			closeOnClickOutside : false,
			content : "input",
			buttons : [ "cancle", "YES" ],
		}).then(function(id) {
			if (!id) {
				passwordFind();
			}
			return $.ajax({
				url : "ajaxpasswordfindidchk.do",
				data : {
					memId : id,
				},
				success : function(data) {

				}
			})
		}).then(function(result) {
			console.log(result)
		})

	}
	function inputsrc() {
		$("#hiddeninput")
				.append(
						$("<script>")
								.attr("src",
										"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"));

	}

	function idFind() {
		inputsrc();
		setTimeout(function() {
			idfindchk();
		}, 10)
	}

	function idfindchk() {
		swal({
			title : "아이디 찾기",
			text : "이름을 입력해주세요!",
			type : "input",
			showCancelButton : true,
			confirmButtonText : "CONFIRM",
			cancelButtonText : "CANCEL",
			closeOnConfirm : false,
			closeOnCancel : true
		},

		function(inputValue) {
			if (inputValue === false) {

			} else {

				$.ajax({
					url : "ajaxidfindchk.do",
					data : {
						memName : inputValue,
					},
					success : function(data) {
						if (data != "No") {
							swal(inputValue + "님의 ID는 ", data + "입니다.", "success");
							setTimeout(function(){
								location.reload();
							},1500)

						} else {
							console.log("no")
							swal("일치하는 정보가 없습니다.", "", "error")
							setTimeout(function(){
								location.reload();
							},1500)

						}

					}
				})

			}
						
		});
	}

	function mmm() {
		$.ajax({
			url : "mailsend.do",
			success : function(data) {
				console.log(data)
			}
		})
	}
</script>


</head>
<body>

<!-- 	<button type="button" onclick="mmm()"></button> -->
	<div id="hiddendiv">
		<input type="hidden" id="hiddeninput" value="0">
	</div>
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
									<a href="javascript:idFind()"
										style="margin-right: .5em; margin-left: .5em; font-size: 1.2rem;"
										class="auth-link text-black">아이디 찾기</a> <a
										href="javascript:passwordFind()" style="font-size: 1.2rem;"
										class="auth-link text-black">비밀번호 찾기</a>
								</div>
								<div class="mt-2"></div>


								<div class="mb-2">
									<button type="button"
										style="background-color: yellowgreen; font-size: 1.4rem;"
										class="btn btn-block btn-facebook auth-form-btn">네이버
										로그인</button>
								</div>
								<div class="mb-2">
									<button type="button"
										style="background-color: gold; font-size: 1.4rem;"
										class="btn btn-block btn-facebook auth-form-btn">카카오
										로그인</button>
								</div>
								<div class="mt-2"></div>
								<div class="mt-1">

									<a href="#" style="margin-left: .5em; font-size: 1.2rem;"
										class="auth-link text-black">회원가입</a>
								</div>
								<div style="position: absolute; left: 35.8em; bottom: 1.4rem;">
									<button type="button" style="width: 6em;"
										onclick="location.href='home.do'"
										class="btn btn-inverse-primary btn-rounded btn-icon">
										<i style="font-size: 1.7rem" class="ti-home"></i>
									</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>


	<script src="resources/admin/vendors/js/vendor.bundle.base.js"></script>

	<script src="resources/admin/js/off-canvas.js"></script>
	<script src="resources/admin/js/hoverable-collapse.js"></script>
	<script src="resources/admin/js/template.js"></script>
	<script src="resources/admin/js/settings.js"></script>
	<script src="resources/admin/js/todolist.js"></script>

</body>


</html>