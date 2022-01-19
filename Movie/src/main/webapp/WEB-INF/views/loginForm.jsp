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
<style type="text/css">
.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal.show {
	display: block;
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 500px;
	height: 650px;
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}

.modal_content_title_img {
	position: absolute;
	left: 50%;
	top: 15%;
	transform: translateX(-50%) translateY(-50%);
	width: 50%;
}

.modal_content_title {
	width: 100%;
	height: 5%;
	position: absolute;
	left: 0%;
	top: 25%;
	font-size: 1.5rem;
	font-weight: bold;
	color: #503396;
}

.modal_content_body_title {
	position: absolute;
	top: 43%;
	left: 50%;
	transform: translateX(-50%) translateY(-50%);
	width: 80%;
	display: inline-block;
	font-weight: 500;
	text-align: left;
	padding-bottom: 10px;
	font-size: 1.3rem;
}

.underline {
	background-color: #000000;
	height: 0.1px;
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
}

.modal_content_body {
	width: 100%;
	height: 50%;
	position: absolute;
	left: 0%;
	top: 48%;
}

.modal_content_body_id {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: 1rem;
	text-align: left;
	top: 12%;
	padding-left: 1%;
	line-height: 2rem;
	font-weight: 1000;
}

.modal_content_body_id_input {
	width: 60%;
	height: 100%;
	position: absolute;
	left: 18%;
	border: 1px solid #ccc;
	box-shadow: none;
	outline-style: none;
	display: inline-block;
	padding-left: .4rem;
}

.modal_content_body_email_input_box {
	width: 60%;
	height: 100%;
	position: absolute;
	left: 18%;
	border: 1px solid #ccc;
	box-shadow: none;
	outline-style: none;
	display: inline-block;
}

.modal_content_body_email_input {
	height: 100%;
	width: 75%;
	padding-left: .4rem;
	position: absolute;
	box-shadow: none;
	outline-style: none;
	border: none;
}

.countdouwntext {
	width: 25%;
	height: 100%;
	position: absolute;
	right: 0%;
	text-align: center;
}

.modal_content_body_id_input:focus {
	border: 1px solid #555;
}

.modal_content_body_name {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: 1rem;
	text-align: left;
	top: 26%;
	padding-left: 1%;
	line-height: 2rem;
	font-weight: 1000;
}

.modal_content_body_email {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: 1rem;
	text-align: left;
	top: 40%;
	padding-left: 1%;
	line-height: 2rem;
	font-weight: 1000;
}

.modal_content_bydy_email_confirmBtn {
	width: 18%;
	height: 100%;
	position: absolute;
	right: 0%;
	line-height: 1rem;
	background-color: rgb(192, 191, 191);
	font-size: .8rem;
	border: none;
	border-radius: 4px;
	color: rgb(129, 129, 129);
}

.modal_content_body_email_confirm {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: 1rem;
	text-align: left;
	top: 54%;
	padding-left: 1%;
	line-height: 2rem;
	font-weight: 1000;
}

.submitBtn {
	width: 21%;
	height: 12%;
	left: 40%;
}

.cancelBtn {
	width: 14%;
	height: 12%;
	left: 60%;
}

.cancelBtn, .submitBtn {
	position: absolute;
	transform: translateX(-50%) translateY(-50%);
	bottom: 0%;
	font-size: .1rem;
	text-align: center;
	background-color: rgb(192, 191, 191);
	font-size: .8rem;
	border: none;
	border-radius: 4px;
	color: rgb(129, 129, 129);
	font-weight: 1000;
}

#email_confirminput[type=text]:disabled{
	background: rgb(192, 191, 191);
}

#countdown{
	color: red;
}
</style>



</head>
<body>

	<div id="hiddendiv">
		<input type="hidden" id="hiddenrandomnum" value="">
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
										id="passwordfindbtn" href="#"
										style="font-size: 1.2rem;" class="auth-link text-black">비밀번호
										찾기</a>
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

	<div class="modal">

		<div class="modal_body">
			<form>
				<div class="modal_content_title_img">
					<img src="resources/icons/mainimg.PNG" alt="">
				</div>
				<div class="modal_content_title">비밀번호 찾기</div>
				<div class="modal_content_body_title">
					email로 찾기 <span class="underline"></span>
				</div>
				<div class="modal_content_body">
					<div class="modal_content_body_id">
						아이디 <input type="email" id="idinput" name="idinput" class="modal_content_body_id_input">
					</div>
					<div class="modal_content_body_name">
						이름 <input type="text" id="nameinput" name="nameinput" class="modal_content_body_id_input">
					</div>
					<div class="modal_content_body_email">
						메일 <input type="email" id="emailinput" class="modal_content_body_id_input">
						<button type="button" onclick="requestBtn()" class="modal_content_bydy_email_confirmBtn">인증요청</button>
					</div>
					<div class="modal_content_body_email_confirm">
						인증번호
						<div class="modal_content_body_email_input_box">
							<input id="email_confirminput"type="text" class="modal_content_body_email_input" disabled="disabled">
							<span id="countdown" class="countdouwntext">03:00</span>
						</div>

						<button id="email_confirmBtn" type="button" class="modal_content_bydy_email_confirmBtn" onclick="resultconfirmBtn()" disabled="disabled">인증확인</button>
					</div>
					
					<button type="submit" id="passwordupdate" class="submitBtn"disabled="disabled">비밀번호 변경하기</button>
					<button type="submit" class="cancelBtn">취소</button>
					
				</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
	
		function resultconfirmBtn(){
				let confirmval = $("#email_confirminput").val();
				let randomnum =  $("#hiddenrandomnum").val();
				
				if(confirmval == randomnum){
					swal({
						icon : 'success',
						title : '',
						text : '인증이 완료 되었습니다! 비밀번호 변경 버튼을 눌러 비밀번호를 변경하세요.'
						})
						$("#passwordupdate").attr("disabled", false);
				}else{
					swal({
						icon : 'error',
						title : '인증번호를 다시 확인하세요!',
						text : ''
						})
					
				}			
			}				
		
		
		
		
		function requesthide(){
			$("#email_confirmBtn").attr("disabled", true);
			$("#email_confirminput").attr("disabled", true);
			$("#passwordupdate").attr("disabled", true);
		}
			
		
		function requestBtn(){
			
			if(emailinput.value == ""){
				swal({
					icon : 'error',
					title : 'email을 입력하세요.',
					text : ''
					})
			}else{
				let result = passwordfindidnamechk()
				
				if(result){
				
					let randomnum = Math.floor(Math.random() * 1000000);
					let inputemail = $("#emailinput").val();
					let nameinput = $("#nameinput").val();
				
					let result = ajaxemailconfirm(randomnum, inputemail, nameinput);
					
					swal({
						icon : 'warning',
						title : '',
						text : '3분 이내로 인증번호(6자리)를 입력해 주세요.'
						})
					
					$("#email_confirmBtn").attr("disabled", false);
					$("#email_confirminput").attr("disabled", false);
					inputcountdownval();
					
					if(result){
						$("#hiddenrandomnum").val(randomnum);
					}
				
					
					
				}else{
					swal({
						icon : 'error',
						title : '',
						text : '아이디 또는 이름을 확인해주세요. 일치하는 정보X'
						})
				}
				
			}
		}
				
		function ajaxemailconfirm(randomnum, email, name){
				let resultval = false;
				$.ajax({
					url : 'ajaxemailconfirm.do',
					type : 'post',
					async : false,
					data : {
						randomnum : randomnum,
						email : email,
						name : name
					},
					success : function(data){
						
						if(data == "Yes"){
							resultval = true;
						}else{
							resultval = false;
						}
					}
				})
				return resultval;
		}
		
		function passwordfindidnamechk(){
			let idinput = $("#idinput").val();
			let nameinput = $("#nameinput").val();
			var resultval = false;
			$.ajax({
				url : 'ajaxpasswordfindidnamechk.do',
				type : 'post',
				async : false,
				data : {
					memId : idinput,
					memName : nameinput
				},
				success : function(data){
					
					if(data == "Yes"){
						resultval = true;
				
					}else{
						resultval = false;
						
					}
					
				}
			})
			return resultval;
		}
	
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

					if (data.msg == "Yes") {
						var author = data.author
						var name = data.name

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
								swal(inputValue + "님의 ID는 ", data + "입니다.",
										"success");
								setTimeout(function() {
									location.reload();
								}, 1500)

							} else {
								console.log("no")
								swal("일치하는 정보가 없습니다.", "", "error")
								setTimeout(function() {
									location.reload();
								}, 1500)

							}

						}
					})

				}

			});
		}

		//
		const body = document.querySelector('body');
		const modal = document.querySelector('.modal');
		const cancelBtn = document.querySelector('.cancelBtn');
		const passwordfindbtn = document.querySelector('#passwordfindbtn');

		passwordfindbtn.addEventListener('click', function() {
			requesthide();
			
			modal.classList.toggle('show');

			if (modal.classList.contains('show')) {
				body.style.overflow = 'hidden';
			}
		});

		cancelBtn.addEventListener('click', function(event) {
			if (event.target === modal) {
				modal.classList.toggle('show');

				if (!modal.classList.contains('show')) {
					body.style.overflow = 'auto';
				}
			}
		});

		//
		function startcountdown(duration, element) {

			let secremaining = duration;
			let min = 0;
			let sec = 0;

			let countinterval = setInterval(function() {
				min = parseInt(secremaining / 60);
				sec = parseInt(secremaining % 60);

				element.textContent = timeformat(min) + ':' + timeformat(sec);

				secremaining = secremaining - 1;

				if (secremaining < 0) {
					requesthide()
					alert("입력시간이 초과 되었습니다.\n다시 요청 바랍니다.")
					clearInterval(countinterval);
				}
			}, 1000)
		}

		function timeformat(num) {
			return num < 10 ? "0" + num : num;
		}

		function inputcountdownval() {
			let inputminval = 3;
			let inputsecval = 0;
			console.log(inputminval)
			let duration = inputminval * 60 + inputsecval;

			element = document.querySelector('#countdown');
			element.textContent = timeformat(inputminval) + ':'
					+ timeformat(inputsecval);

			startcountdown(--duration, element);
		}

	</script>

	<script src="resources/admin/vendors/js/vendor.bundle.base.js"></script>

	<script src="resources/admin/js/off-canvas.js"></script>
	<script src="resources/admin/js/hoverable-collapse.js"></script>
	<script src="resources/admin/js/template.js"></script>
	<script src="resources/admin/js/settings.js"></script>
	<script src="resources/admin/js/todolist.js"></script>

</body>


</html>