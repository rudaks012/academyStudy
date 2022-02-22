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
	                		<button type="button" class="genric-btn primary-border e-large" data-dismiss="modal" onclick="checkagree()">동의합니다.</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large"  onclick="main()">동의하지 않습니다.</button>
                        </div>	                    
	                </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    	function checkagree() {
    		$("#primary-checkbox").attr("checked",true);    		
    	}
        function main() {
            alert("회원가입을 중단하고 메인으로 돌아갑니다.");
            location.href='home.do';
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
	
	<!-- ================ contact section start ================= -->
	<!-- 1단계 -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <div class="section-tittle text-center mb-80">
                        <h1>필수정보 입력</h1>
                    </div>
	            	<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
	                    <div class="row d-flex justify-content-center align-items-center">
	                        <div class="col-sm-8">                                    
	                            <div class="form-group">
	                                이름<input class="form-control valid" name="name" id="name" type="text" placeholder="이름(실명)을 입력해주세요">
	                            </div>
	                        </div>
	                        <div class="col-sm-8">
	                            <div class="form-group">
	                                이메일<div class="d-flex">
	                                    <input class="form-control valid" name="email" id="email" type="email" placeholder="example@nasa.com">                                            
	                                    <input type="button" value="전송" class="genric-btn primary radius" style="float: right;">
	                                    </div>
	                            </div>
	                        </div>
	                        <div class="col-sm-8">
	                            <div class="form-group">
	                                이메일 인증<div class="d-flex">
	                                    <input class="form-control valid" placeholder="인증코드를 확인해주세요">                                            
	                                    <input type="button" value="확인" class="genric-btn primary radius" style="float: right;">
	                                    </div>
	                            </div>
	                        </div>
	                        <div class="col-sm-8">                                    
	                            <div class="form-group">
	                                비밀번호<input class="form-control valid" name="password" id="password" type="password" placeholder="영문+숫자 조합 8자리 이상 입력해주세요">
	                            </div>
	                        </div>
	                        <div class="col-sm-8">                                    
	                            <div class="form-group">
	                                비밀번호 확인<input class="form-control valid" type="password" placeholder="비밀번호를 다시 입력해주세요">
	                            </div>
	                        </div>
	                        <div class="col-sm-8">                                    
	                            <div class="form-group">
	                                주소<div class="d-flex">
	                                <input class="form-control valid" id="address" ype="" placeholder="주소 입력">
	                                <input type="button" id="addressSearch" value="검색" class="genric-btn primary radius" style="float: right;">
	                                </div>
	                                <input class="form-control valid" id="addressDetail" type="" placeholder="상세 주소 입력">
	                                
	                            </div>
	                        </div>
	                        <div class="col-sm-8">
	                            <div class="d-flex">
	                                <div class="primary-checkbox">
	                                    <input type="checkbox" id="primary-checkbox">
	                                    <label for="primary-checkbox"></label>
	                                </div>&nbsp;
									<a class="hover-btn-new log orange" href="#" data-toggle="modal"
                                            data-target="#login" style="color: #1f2b7b;">이용 약관, 개인정보 수집 및 이용 동의 (필수)</a>
	                            </div>                                    
	                        </div>	                        
	                    </div>                            
	                </form>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<div>
	                		<button type="button" class="genric-btn primary-border e-large">이전</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large">다음</button>
                        </div>	                    
	                </div>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
	                </div>
	            </div>                   
	        </div>
	    </div>
	</section>
	<!-- 2단계 -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <div class="section-tittle text-center mb-80">
                        <h1>판매자를 소개해주세요</h1>
                    </div>
	            	<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
	                    <div class="row d-flex justify-content-center align-items-center">	                        
	                        <div class="col-12">
	                            <div class="form-group">
	                                닉네임<div class="d-flex">
	                                    <input class="form-control valid">                                            
	                                    <input type="button" value="검색" class="genric-btn primary radius" style="float: right;">
	                                    </div>
	                            </div>
	                        </div>
	                        <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control w-100" cols="60" rows="9" placeholder="자기소개 메세지"></textarea>
                                </div>
                            </div>	                        
	                    </div>                            
	                </form>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<div>
	                		<button type="button" class="genric-btn primary-border e-large">이전</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large">다음</button>
                        </div>	                    
	                </div>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
	                </div>
	            </div>                   
	        </div>
	    </div>
	</section>
    <!-- 3단계 -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <div class="section-tittle text-center mb-80">
                        <h1>어떤 서비스를 제공할 수 있나요?</h1>
                    </div>
	            	<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
	                    <div class="row d-flex justify-content-between mx-5">
                            <div class="d-flex">
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox1">
                                    <label style="width: 30px; height: 30px;" for="checkbox1"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">값 불러오기....</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox2">
                                    <label style="width: 30px; height: 30px;" for="checkbox2"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">게임 개발</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox3">
                                    <label style="width: 30px; height: 30px;" for="checkbox3"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">프로그래밍 언어</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox4">
                                    <label style="width: 30px; height: 30px;" for="checkbox4"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">DB엔지니어</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox5">
                                    <label style="width: 30px; height: 30px;" for="checkbox5"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">빅데이터</p>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox6">
                                    <label style="width: 30px; height: 30px;" for="checkbox6"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">기타</p>
                            </div>
                                                               
                        </div>	                           
	                </form>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<div>
	                		<button type="button" class="genric-btn primary-border e-large">이전</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large">다음</button>
                        </div>	                    
	                </div>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
	                </div>
	            </div>                   
	        </div>
	    </div>
	</section>
    <!-- 4단계 -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <div class="section-tittle text-center mb-80">
                        <h1>구체적으로 어떤 서비스를 진행 할 수 있나요?</h1>
                    </div>
	            	<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
	                    <div class="row d-flex justify-content-between mx-5">
                            <div class="d-flex">
                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox7">
                                    <label style="width: 30px; height: 30px;" for="checkbox7"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">값불러오기...</p>

                                &nbsp;&nbsp;&nbsp;&nbsp;

                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox8">
                                    <label style="width: 30px; height: 30px;" for="checkbox8"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">백엔드</p>

                                &nbsp;&nbsp;&nbsp;&nbsp;

                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox9">
                                    <label style="width: 30px; height: 30px;" for="checkbox9"></label>                                    
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">풀스택</p>

                                &nbsp;&nbsp;&nbsp;&nbsp;

                                <div class="confirm-checkbox">
                                    <input type="checkbox" id="checkbox10">
                                    <label style="width: 30px; height: 30px;" for="checkbox10"></label>
                                </div>&nbsp;&nbsp;&nbsp;
                                <p class="seller-category">기타</p>                                
                            </div>
                                                               
                        </div>	                           
	                </form>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<div>
	                		<button type="button" class="genric-btn primary-border e-large">이전</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large">다음</button>
                        </div>	                    
	                </div>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
	                </div>
	            </div>                   
	        </div>
	    </div>
	</section>
    <!-- 5단계 -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <div class="section-tittle text-center mb-80">
                        <h1>경력·학력 증빙자료 제출</h1>
                    </div>
	            	<form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
	                    <div class="row d-flex justify-content-center align-items-center">
	                        <div class="col-12">                                    
	                            <div class="form-group">
	                                대학교 전공 입력<div class="d-flex">
	                                <input class="form-control valid" placeholder="대학교 입력">
	                                </div>
	                                <input class="form-control valid" placeholder="전공 입력">                                                                           
                                    <div class="d-flex" style="margin-top: 10px;">
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <div class="confirm-radio">
                                                <input type="radio" id="confirm-radio1" name="fruit" checked="checked" value="졸업">
                                                <label for="confirm-radio1"></label>                                            
                                            </div>&nbsp;
                                            <p>졸업</p>
                                        </div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <div class="confirm-radio">
                                                <input type="radio" id="confirm-radio2" name="fruit" value="휴학">
                                                <label for="confirm-radio2"></label>                                            
                                            </div>&nbsp;
                                            <p>휴학</p>
                                        </div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <div class="confirm-radio">
                                                <input type="radio" id="confirm-radio3" name="fruit" value="중퇴">
                                                <label for="confirm-radio3"></label>                                            
                                            </div>&nbsp;
                                            <p>중퇴</p>
                                        </div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <div class="confirm-radio">
                                                <input type="radio" id="confirm-radio4" name="fruit" value="졸업유예">
                                                <label for="confirm-radio4"></label>                                            
                                            </div>&nbsp;
                                            <p>졸업유예</p>
                                        </div>
                                    </div>                                                                       
	                            </div>
                                <div class="form-group">
                                    기타 증빙자료 첨부<div class="d-flex" style="border: 1px solid #e5e6e9;">
                                        <input type="file" id="file" name="file" style="padding: 5px;">
                                    </div>
                                </div>
	                        </div>
	                    </div>                            
	                </form>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<div>
	                		<button type="button" class="genric-btn primary-border e-large">이전</button>&nbsp;&nbsp;&nbsp;
                            <button type="button" class="genric-btn primary e-large">가입하기</button>
                        </div>	                    
	                </div>
	                <br>
	                <br>
	                <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                	<a href="#" style="color: #1f2b7b;">기업 판매자로 가입하시나요?</a>
	                </div>
	            </div>                   
	        </div>
	    </div>
	</section>
    <!-- 6단계 -->
    <section class="contact-section">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div>
                    <img src="resources/user/assets/img/mainroket.png" alt="">
                    <div class="section-tittle text-center mb-80">
                        <h1>NASA에 오신 것을 환영합니다!</h1>
                    </div>
	            	<div class="col-12" style="text-align: center;">                                    
                        <span style="font-size: 20px;">판매자 서비스 정보 수정은<br>
                            <a href="#" style="color: #212529; text-decoration: underline;">마이페이지</a>에서 가능합니다.</span>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <button type="button" class="genric-btn primary-border e-large" onClick="location.href='home.do'">메인으로 돌아가기</button>
                    </div>
	            </div>                   
	        </div>
	    </div>
	</section>
	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("addressSearch").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address").value = data.address; // 주소 넣기
                document.querySelector("input[id=addressDetail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
</body>
</html>