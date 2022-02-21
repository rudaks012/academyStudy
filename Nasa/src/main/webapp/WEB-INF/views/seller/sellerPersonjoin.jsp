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
	                                <p>이용 약관, 개인정보 수집 및 이용 동의 (필수)</p>
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
	                                <p>이용 약관, 개인정보 수집 및 이용 동의 (필수)</p>
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
	<!-- ================ contact section end ================= -->
	
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