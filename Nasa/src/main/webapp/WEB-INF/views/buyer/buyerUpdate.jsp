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
	                    <h2>정보 수정</h2>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<!--Hero End -->

<!-- buyerUpdate Start -->

<section>
          <div class="row justify-content-center" style="margin-top: 50px;">
              <div class="col-lg-4 col-md-8">
                  <form action="">
                      <div>
                          <img src="resources/user/assets/img/blog/author.png" alt=""> 
                          <a href="#" class="genric-btn primary-border small">사진수정</a>      
                      </div>

                      <div style="margin-top: 20px;">
                        <p>닉네임</p>
                        <div class="form-group">
                           <input class="form-control" name="name" id="name" type="text" placeholder="Name" required>
                        </div>
                     </div>

                     <div style="margin-top: 20px;">
                        <p>이메일</p>
                        <div class="form-group">
                           <input class="form-control" name="email" id="email" type="text" placeholder="email" disabled required>
                        </div>
                     </div>

                     <div class="single-element-widget mt-30">
                        <p>관심분야</p>
                        <div class="default-select" id="default-select">
                            <select>
                                <option value="1">English</option>
                                <option value="2">Spanish</option>
                                <option value="3">Arabic</option>
                                <option value="4">Portuguise</option>
                                <option value="5">Bengali</option>
                            </select>
                        </div>

                        <div class="default-select" id="default-select">
                            <select>
                                <option value="1">English</option>
                                <option value="2">Spanish</option>
                                <option value="3">Arabic</option>
                                <option value="4">Portuguise</option>
                                <option value="5">Bengali</option>
                            </select>
                        </div>
                    </div>

                     <div style="margin-top: 20px;">
                        <p>주소</p>
                        <div class="form-group">
                           <input class="form-control col-8" name="zipcode" id="zipcode" type="text" placeholder="우편번호" style="display: inline;">
                           <a href="#" class="genric-btn primary radius col-lg-3">주소조회</a>
                           <input class="form-control col-lg-8" name="address" id="address" type="text" placeholder="주소" style="display: inline;margin-top: 5px;">
                           <input class="form-control col-lg-3" name="detailaddress" id="detailaddress" type="text" placeholder="상세주소" style="display: inline;margin-top: 5px;">
                        </div>
                     </div>

                     <div style="margin-top: 20px;">
                        <p>새로운 비밀번호</p>
                        <div class="form-group">
                           <input class="form-control" name="newpassword" id="newpassword" type="password" placeholder="새로운 비밀번호" required>
                        </div>
                     </div>

                     <div style="margin-top: 20px;">
                        <p>새로운 비밀번호 확인</p>
                        <div class="form-group">
                           <input class="form-control" name="newpassword" id="newpassword" type="password" placeholder="새로운 비밀번호" required>
                        </div>
                     </div>
                     
                         <div class="row justify-content-center" style="margin-bottom: 50px;">
                             <a href="#" class="genric-btn info-border">수정</a>
                             <a href="goBuyerMypage.do" class="genric-btn danger-border" style="margin-left: 10px;">취소</a>
                         </div>

                  </form>
              </div>
          </div>


          
      </section>

<!-- buyerUpdate End -->
</body>
</html>