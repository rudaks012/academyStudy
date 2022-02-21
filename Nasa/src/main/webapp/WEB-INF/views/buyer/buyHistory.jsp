<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/user/assets/css/buyHistoryCard.css">
</head>
<body>
<!-- Hero Start-->
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
	    <div class="container">
	        <div class="row">
	            <div class="col-xl-12">
	                <div class="hero-cap text-center pt-50">
	                    <h2>마이 페이지</h2>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<!--Hero End -->
<!-- buyHistory main start  -->
<div class="blog-card">
      <div class="meta">
        <div class="photo" style="background-image: url(resources/user/assets/img/test/sun.png)"></div>
        <ul class="details">
          <li class="author"><a href="#">태양 등급</a></li>
          <li class="date">10% 할인 혜택</li>
          <li class="tags">
            <ul>
              <li><a href="#">등급에 대해서 궁금하다면?</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="description">
        <h1>태양 등급</h1>
        <h2>SUN GRADE</h2>
        <p><br>현재 누적 금액 10,000,000원<br>다음 등급 까지 2,000,000원</p>
        <p class="read-more">
          <a href="#">Read More</a>
        </p>
      </div>
    </div>
  <div class="row">
    <div class="col-lg-2"></div>
    <button class="genric-btn primary-border small">1개월</button>
    <button class="genric-btn primary-border small" style="margin-left: 5px;">6개월</button>
    <button class="genric-btn primary-border small" style="margin-left: 5px;">1년</button>
    <input type="date" style="margin-left:10px">&nbsp;~&nbsp;<input type="date">       
  </div>       
    <div class="row justify-content-center" style="margin-top:5px;">
      <table class="table col-lg-8">
            <thead>
                <tr>
                    <th scope="col">결제일</th>
                    <th scope="col">서비스명</th>
                    <th scope="col">판매자</th>
                    <th scope="col">거래기간</th>
                    <th scope="col">거래금액</th>
                    <th scope="col">진행상황</th>
                </tr>
            </thead>
            <tbody>
                <tr>                          
                    <td>2022.02.18</td>
                    <td>웹개발 해드립니다.</td>
                    <td>IT고수</td>
                    <td>2022.01.01~2022.02.18</td>
                    <td>1,000,000</td>
                    <td>결제완료</td>
                </tr>
                <tr>                          
                  <td>2022.02.18</td>
                  <td>웹개발 해드립니다.</td>
                  <td>IT고수</td>
                  <td>2022.01.01~2022.02.18</td>
                  <td>1,000,000</td>
                  <td>결제완료</td>
              </tr>
              <tr>                          
                  <td>2022.02.18</td>
                  <td>웹개발 해드립니다.</td>
                  <td>IT고수</td>
                  <td>2022.01.01~2022.02.18</td>
                  <td>1,000,000</td>
                  <td>결제완료</td>
              </tr>
            </tbody>
        </table>
    </div>
<!-- buyHistory main end  -->
</body>
</html>