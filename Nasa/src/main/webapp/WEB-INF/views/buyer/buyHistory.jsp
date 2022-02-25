<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="resources/user/assets/css/buyHistoryCard.css">
</head>

<!-- Hero Start-->
<div class="hero-area2short  slider-height2 hero-overly2 d-flex align-items-center ">
</div>
<!--Hero End -->
<!-- buyHistory main start  -->
<section class="blog_area section-padding">
	<div class="container">
		<div class="row">
			<div class="col-3">
				<div class="blog_right_sidebar">
					<aside class="single_sidebar_widget post_category_widget">
						<h4 class="widget_title">MENU</h4>
						<ul class="list cat-list">
							<li>
								<a href="buyHistory.do" class="d-flex">
									<p style="font-weight: bold;">구매내역</p>
								</a>
							</li>
							<li>
								<a href="buyerCalendar.do" class="d-flex">
									<p>일정관리</p>
								</a>
							</li>
							<li>
								<a href="buyerCoupons.do" class="d-flex">
									<p>보유쿠폰</p>
								</a>
							</li>
							<li>
								<a href="wishlist.do" class="d-flex">
									<p>위시리스트</p>
								</a></li>
							<li>
								<a href="buyerReview.do" class="d-flex">
									<p>리뷰확인</p>
								</a>
							</li>
							<li>
								<a href="reportHistory.do" class="d-flex">
									<p>신고내역</p>
								</a>
							</li>
							<li>
								<a href="#" class="d-flex">
									<p>회원탈퇴</p>
								</a>
							</li>
						</ul>
					</aside>
				</div>
			</div>
			<div class="col-9">				
				<div class="blog_left_sidebar">					
					<div class="blog_details">
					<a class="d-inline-block">
                     <h2>구매내역</h2>
                  </a>
						<div class="blog-card">
							<div class="meta">
								<div class="photo" style="background-image: url(resources/user/assets/img/test/sun.png)">
								</div>
								<ul class="details">
									<c:choose>
										<c:when test="${buyerinfo.b_rank  eq '1'}">
											<li>별 등급</li>
										</c:when>
										<c:when test="${buyerinfo.b_rank  eq '2'}">
											<li>달 등급</li>
										</c:when>
										<c:when test="${buyerinfo.b_rank  eq '3'}">
											<li>태양 등급</li>
										</c:when>
										<c:when test="${buyerinfo.b_rank  eq '4'}">
											<li>지구 등급</li>
										</c:when>
									</c:choose>
									<li>10% 할인 혜택1</li>
									<li><a href="#">등급에 대해서 궁금하다면?</a></li>
								</ul>
							</div>
							<div class="description">
								<c:choose>
									<c:when test="${buyerinfo.b_rank  eq '1'}">
										<h1>별 등급</h1>
										<h2>STAR GRADE</h2>
									</c:when>
									<c:when test="${buyerinfo.b_rank  eq '2'}">
										<h1>달 등급</h1>
										<h2>MOON GRADE</h2>
									</c:when>
									<c:when test="${buyerinfo.b_rank  eq '3'}">
										<h1>태양 등급</h1>
										<h2>SUN GRADE</h2>
									</c:when>
									<c:when test="${buyerinfo.b_rank  eq '4'}">
										<h1>지구 등급</h1>
										<h2>EARTH GRADE</h2>
									</c:when>
								</c:choose>
								<!-- <h1>태양 등급</h1>
								<h2>SUN GRADE</h2> -->
								<p>
									<br>현재 누적 금액 10,000,000원<br>다음 등급 까지 2,000,000원
								</p>
							</div>
						</div>
						<br>
						<br>
						<div class="row justify-content-center">							
							<button class="genric-btn primary-border small">1개월</button>
							<button class="genric-btn primary-border small" style="margin-left: 5px;">6개월</button>
							<button class="genric-btn primary-border small" style="margin-left: 5px;">1년</button>
							<input type="date" style="margin-left: 10px">&nbsp;~&nbsp;<input type="date">
						</div>
						<div class="row justify-content-center" style="margin-top: 10px;">
							<table class="table" style="width: 800px; text-align: center;">
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
									<c:forEach items="${paymentList }" var="payment">
										<tr>
											<td>${payment.pay_date }</td>
											<td>payment테이블에 서비스명 추가?</td>
											<td>${payment.s_email }</td>
											<td>
												<c:choose>
													<c:when test="${empty payment.pay_enddate }">
														${payment.pay_date } ~
													</c:when>
													<c:otherwise>
														${payment.pay_date } ~ ${payment.pay_enddate }
													</c:otherwise>
												</c:choose>
											</td>
											<td>${payment.pay_price }</td>
											<td>
												<c:choose>
													<c:when test="${empty payment.pay_enddate }">
														거래중
													</c:when>
													<c:otherwise>
														거래완료
													</c:otherwise>
												</c:choose>
											</td>
										</tr>
									</c:forEach>
									<!-- <tr>
										<td>2022.02.18</td>
										<td>웹개발 해드립니다.</td>
										<td>IT고수</td>
										<td>2022.01.01~2022.02.18</td>
										<td>1,000,000</td>
										<td>결제완료</td>
									</tr> -->
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</section>

<!-- buyHistory main end  -->


</html>