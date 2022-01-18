<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	width: 400px;
	height: 500px;
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
	font-size: 1.2rem;
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
}

.underline {
	background-color: #000000;
	height: .6px;
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
	font-size: .8rem;
	text-align: left;
	top: 12%;
	padding-left: 1%;
	line-height: 1.7rem;
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

.modal_content_body_id_input:focus {
	border: 1px solid #555;
}

.modal_content_body_name {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: .8rem;
	text-align: left;
	top: 26%;
	padding-left: 1%;
	line-height: 1.7rem;
	font-weight: 1000;
}

.modal_content_body_email {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: .8rem;
	text-align: left;
	top: 40%;
	padding-left: 1%;
	line-height: 1.7rem;
	font-weight: 1000;
}

.modal_content_bydy_email_confirmBtn {
	width: 17%;
	height: 100%;
	position: absolute;
	right: 0%;
	line-height: 1rem;
	background-color: rgb(192, 191, 191);
	font-size: .1rem;
	border: none;
	border-radius: 2px;
	color: rgb(129, 129, 129);
}

.modal_content_body_email_confirm {
	width: 80%;
	height: 10%;
	position: absolute;
	left: 11%;
	font-size: .8rem;
	text-align: left;
	top: 54%;
	padding-left: 1%;
	line-height: 1.7rem;
	font-weight: 1000;
}

.submitBtn {
	width: 19%;
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
	font-size: .1rem;
	border: none;
	border-radius: 2px;
	color: rgb(129, 129, 129);
	font-weight: 1000;
}
</style>
<script type="text/javascript">
const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');

btnOpenPopup.addEventListener('click', () => {
  modal.classList.toggle('show');

  if (modal.classList.contains('show')) {
    body.style.overflow = 'hidden';
  }
});

modal.addEventListener('click', (event) => {
  if (event.target === modal) {
    modal.classList.toggle('show'); // 버튼으로 빼기 

    if (!modal.classList.contains('show')) {
      body.style.overflow = 'auto';
    }
  }
});
</script>
</head>
<body>
	<div class="modal">

		<div class="modal_body">
			<form>
				<div class="modal_content_title_img">
					<img src="/mainimg.PNG" alt="">
				</div>
				<div class="modal_content_title">비밀번호 찾기</div>
				<div class="modal_content_body_title">
					email로 찾기 <span class="underline"></span>
				</div>
				<div class="modal_content_body">
					<div class="modal_content_body_id">
						아이디 <input type="text" class="modal_content_body_id_input">
					</div>
					<div class="modal_content_body_name">
						이름 <input type="text" class="modal_content_body_id_input">
					</div>
					<div class="modal_content_body_email">
						메일 <input type="text" class="modal_content_body_id_input">
						<button type="button" class="modal_content_bydy_email_confirmBtn">인증요청</button>
					</div>
					<div class="modal_content_body_email_confirm">
						인증번호 <input type="text" class="modal_content_body_id_input">
						<button type="button" class="modal_content_bydy_email_confirmBtn">인증확인</button>
					</div>
					<button type="submit" class="submitBtn">비밀번호 찾기</button>
					<button type="submit" class="cancelBtn">취소</button>
				</div>
			</form>
		</div>

	</div>
	<button class="btn-open-popup">Modal 띄우기</button>
</body>
</html>