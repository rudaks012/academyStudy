<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		input[type="checkbox"] {
			width: 30px;
			height: 30px;
		}

		.seller-category {
			font-size: 23px;
		}
	</style>
</head>

<body>
	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header tit-up">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
						<div>&nbsp;&nbsp;1. 이 약관은 이용자가 주식회사 브레이브모바일(이하 "회사")이 운영하는 인터넷 서비스 사이트(이하 "사이트" 또는 "NASA")를 통해
							제공하는 인터넷 전자상거래 관련 서비스(이하 "서비스")와 관련하여 회사와 이용자의 권리, 의무, 책임사항을 규정함을 목적으로 합니다.
							또한 본 약관은 유무선 PC통신, 태블릿 PC, 스마트폰(아이폰, 안드로이드폰 등) 어플리케이션 및 모바일웹 등을 이용하는 전자상거래 등에
							대해서도 그 성질에 반하지 않는 한 준용됩니다. 본 약관이 규정한 내용 이외의 회사와 이용자 간의 권리, 의무 및 책임사항에 관하여서는
							전기통신사업법 기타 대한민국의 관련 법령과 상관습에 의합니다.</div>
					</div>
					<div class="form-group mt-3 d-flex justify-content-center align-items-center">
						<div>
							<button type="button" class="genric-btn primary-border e-large" data-dismiss="modal"
								onclick="checkagree()">동의합니다.</button>&nbsp;&nbsp;&nbsp;
							<button type="button" class="genric-btn primary e-large" onclick="main()">동의하지
								않습니다.</button>
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
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>개인 판매자 회원가입</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Hero End -->

	<!-- 1단계 -->
	<div class="container" style="margin-top: 60px; margin-bottom: 100px;">
		<div class="row justify-content-center align-items-center">
			<div class="col-5">
				<form class="form-contact contact_form" id="personJoin-form">
					<div>
						<div>
							<div class="form-group">
								이름<input class="form-control valid" name="name" id="name" type="text"
									placeholder="이름(실명)을 입력해주세요">
							</div>
							<div class="form-group">
								닉네임<div id="nickdiv">
								<input class="form-control valid" name="nickname" id="nickname" placeholder="사용할 닉네임을 입력해주세요">
								<input type="button" value="확인" id="nickCheckbtn" class="position-relative genric-btn primary radius" 
								onclick="nicknameCheck()" style="float: right; bottom: 45px;">
								</div>
							</div>
							<div class="form-group">
								이메일<div id="emaildiv">
									<input class="form-control valid" name="email" id="email" type="email"
										placeholder="example@nasa.com">
									<input type="button" value="전송" class="position-relative genric-btn primary radius"
									onclick="emailCheck()" style="float: right; bottom: 45px;">
								</div>
							</div>
							<div class="form-group">
								이메일 인증<div id="emaildivs">
									<input class="form-control valid" name="emailchk" id="emailchk" placeholder="인증코드를 확인해주세요">
									<input type="button" value="확인" class="position-relative genric-btn primary radius"
									onclick="emailChecks()"	style="float: right; bottom: 45px;">
								</div>
							</div>
							<div class="form-group">
								비밀번호<input class="form-control valid" name="password" id="password" type="password"
									placeholder="영문+숫자 조합 8자리 이상 입력해주세요">
							</div>
							<div class="form-group">
								비밀번호 확인<input class="form-control valid" name="pwchk" id="pwchk" type="password"
									placeholder="비밀번호를 다시 입력해주세요">
							</div>
							<div class="form-group">
								연락처<input class="form-control valid" name="phone" id="phone"
									placeholder="연락가능한 전화번호를 입력해주세요">
							</div>
							<div class="form-group">
								주소<div class="d-flex">
									<input class="form-control valid" id="postcode" placeholder="우편번호">
									<input type="button" id="addressSearch" value="검색" class="genric-btn primary radius"
										style="float: right;">
								</div>
								<input class="form-control valid" id="address" placeholder="주소">
								<input class="form-control valid" id="addressDetail" placeholder="상세 주소">
							</div>
							<div class="d-flex">
								<div class="primary-checkbox">
									<input type="checkbox" id="primary-checkbox">
									<label for="primary-checkbox"></label>
								</div>&nbsp;
								<a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#login"
									style="color: #1f2b7b;">
									이용 약관, 개인정보 수집 및 이용 동의 (필수)
								</a>
							</div>
						</div>
						<div style="text-align: center;">
							<div style="margin-top: 100px;">
								<button type="submit" class="genric-btn primary e-large">가입하기</button>
							</div>
							<div style="margin-top: 40px;">
								<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function () {
			document.getElementById("addressSearch").addEventListener("click", function () { //주소입력칸을 클릭하면
				//카카오 지도 발생
				new daum.Postcode({
					oncomplete: function (data) { //선택시 입력값 세팅
						document.getElementById("postcode").value = data.zonecode;
						document.getElementById("address").value = data.address; // 주소 넣기
						document.querySelector("input[id=addressDetail]").focus(); //상세입력 포커싱
					}
				}).open();
			});
		};

		function nicknameCheck() {
			var nickname = $('#nickname').val();

			$.ajax({
				url: "ajaxSPnickCheck.do",
				type: "post",
				data: {s_nickname : nickname},
				dataType: "text",
				success: function(data) {  
					if(data == 'T') {
						$("label").remove('#nicklabel');
						$("#nickdiv").append('<label id="nicklabel">사용 가능한 닉네임입니다.</label>');
					} else {
						$("label").remove('#nicklabel');						
						$("#nickdiv").append('<label id="nicklabel">이미 사용하고 있는 닉네임입니다.</label>');            	
            			
					}
			    },
				error : function() {
					console.log("실패");      	
				}
			});
		};

		function emailCheck() {
			var email = $('#email').val();

			$.ajax({
				type:"post",
				url:"ajaxSPemailCheck.do",
				data: {s_emailname : emailname},
				success: function(data){
					if(data == "error"){
						$("label").remove('#emaillabel');
						$("#emaildiv").append('<label id="emaillabel">올바르지 않은 이메일입니다.</label>');
        			} else {
						$("label").remove('#emaillabel');
						$("#emaildiv").append('<label id="emaillabel">인증번호를 발송했습니다.</label>');
        			}
        		}
    		});
		};

		function emailChecks() {
			
		}

	</script>
</body>

</html>