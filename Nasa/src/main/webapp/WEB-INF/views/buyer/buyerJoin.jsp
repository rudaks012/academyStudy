<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header tit-up">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body customer-box">
					<!-- Tab panes -->
					<div class="section-tittle text-center mb-80">
						<h1>이용약관</h1>
						<p>주식회사 나도 사장 이용 약관</p>
					</div>
					<div class="tab-content" style="padding: 30px;">
						<div>제 1 장 총칙</div>
						<br>
						<div>제 1 조 (목 적)</div>
						<br>
						<div>&nbsp;&nbsp;1. 이 약관은 이용자가 주식회사 브레이브모바일(이하 "회사")이 운영하는
							인터넷 서비스 사이트(이하 "사이트" 또는 "NASA")를 통해 제공하는 인터넷 전자상거래 관련 서비스(이하
							"서비스")와 관련하여 회사와 이용자의 권리, 의무, 책임사항을 규정함을 목적으로 합니다. 또한 본 약관은 유무선
							PC통신, 태블릿 PC, 스마트폰(아이폰, 안드로이드폰 등) 어플리케이션 및 모바일웹 등을 이용하는 전자상거래 등에
							대해서도 그 성질에 반하지 않는 한 준용됩니다. 본 약관이 규정한 내용 이외의 회사와 이용자 간의 권리, 의무 및
							책임사항에 관하여서는 전기통신사업법 기타 대한민국의 관련 법령과 상관습에 의합니다.</div>
					</div>
					<div
						class="form-group mt-3 d-flex justify-content-center align-items-center">
						<div>
							<button type="button" class="genric-btn primary-border e-large"
								data-dismiss="modal" onclick="checkagree()">동의합니다.</button>
							&nbsp;&nbsp;&nbsp;
							<button type="button" class="genric-btn primary e-large"
								onclick="main()">동의하지 않습니다.</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function checkagree() {
			$("#primary-checkbox").attr("checked", true);
		}
		function main() {
			alert("회원가입을 중단하고 메인으로 돌아갑니다.");
			location.href = 'home.do';
		}
	</script>
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
				<div>
					<form class="form-contact contact_form" action="#" method="post"
						id="contactForm" novalidate="novalidate">
						<div class="row d-flex justify-content-center align-items-center">
							<div class="col-sm-8">
								<div class="form-group">
									이름<input class="form-control valid" name="name" id="name"
										type="text" placeholder="이름(실명)을 입력해주세요">
								</div>
							</div>
							<div class="col-sm-8">
								<div class="form-group">
									닉네임
									<div class="d-flex">
										<input class="form-control valid" name="nickname"
											id="nickname" type="text" placeholder="닉네임을 입력해주세요">
										<input type="button" value="인증"
											class="genric-btn primary radius" style="float: right;"id="nickChk">
									</div>
								</div>
							</div>
							<div class="col-sm-8">
								<c:if test="${kakaoid eq null}">
									<div class="form-group">
										이메일
										<div class="d-flex">
											<input class="form-control valid" name="email" id="email"
												type="email" placeholder="example@nasa.com"> <input
												type="button" value="확인" class="genric-btn primary radius"
												style="float: right;">
										</div>
									</div>
								</c:if>

								<c:if test="${kakaoid ne null}">
									<div class="form-group">
										이메일
										<div class="d-flex">
											<input class="form-control valid" name="email" id="email"
												type="email" required="required" value='${ kakaoid}'
												style="background-color: rgba(150, 205, 235, 0.521);"
												readonly>
										</div>
									</div>
								</c:if>

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
									비밀번호 확인<input class="form-control valid" id="passwordChk" type="password"
										placeholder="비밀번호를 다시 입력해주세요">
								</div>
							</div>
							<div class="col-sm-8">
								<div class="d-flex">
									<div class="primary-checkbox">
										<input type="checkbox" id="primary-checkbox"> <label
											for="primary-checkbox"></label>
									</div>
									&nbsp; <a class="hover-btn-new log orange" href="#"
										data-toggle="modal" data-target="#login"
										style="color: #1f2b7b;">이용 약관, 개인정보 수집 및 이용 동의 (필수)</a>
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
<script type="text/javascript">
function CheckEmail(str) {	<!-- email 정규식 -->
var reg_email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

if(!reg_email.test(str)) {
	return false;
} else {
	return true;
}
}

function formCheck() {
	if($('#nickChk').val() != 'Yes') {
		alert("아이디 중복체크를 해주세요");
		return false;
	}
	

}
 

</script>
</html>