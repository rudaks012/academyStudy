<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
<input type = "hidden" id = "report" value = "${reportList }"/>
<!-- Hero Start-->
<div class="hero-area2short  slider-height2 hero-overly2 d-flex align-items-center ">
</div>
<!--Hero End -->

<section class="blog_area section-padding">
	<div class="container">
		<div class="row">
			<!-- sidebar Start -->
			<div class="col-3">
				<div class="blog_right_sidebar">
					<aside class="single_sidebar_widget post_category_widget">
						<h4 class="widget_title">Menu</h4>
						<ul class="list cat-list">
							<li>
								<a href="buyHistory.do" class="d-flex">
									<p>구매내역</p>
								</a>
							</li>
							<li>
								<a href="buyerCalendar.do" class="d-flex">
									<p>일정관리</p>
								</a>
							</li>

							<li>
								<a href="wishlist.do" class="d-flex">
									<p>위시리스트</p>
								</a>
							</li>
							<li>
								<a href="buyerReview.do" class="d-flex">
									<p>리뷰확인</p>
								</a>
							</li>
							<li>
								<a href="reportHistory.do" class="d-flex">
									<p style="font-weight: bold;">신고내역</p>
								</a>
							</li>
						</ul>
					</aside>
				</div>
			</div>
			<!-- sidbar End -->
			<div class="col-9">
				<div class="blog_left_sidebar">
					<div class="blog_details">
						<a class="d-inline-block">
							<h2>신고내역</h2>
						</a>
						<div class="row justify-content-center">
							<table id="reportTable" class="table table-striped" style="margin-top:40px;">
								<thead>
									<tr>
										<!-- <th scope="col" width="50px">#</th> -->
										<th scope="col">신고일</th>
										<th scope="col">신고대상</th>
										<th scope="col">신고유형</th>
										<th scope="col">신고내용</th>
										<th scope="col">신고결과</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${reportList }" var="report">
										<tr>
											<%-- <th scope="row">${report.re_code }</th> --%>
											<td>${fn:substring(report.re_date, 0, 11) }</td>
											<td>${report.re_res }</td>
											<td>${report.re_type }</td>
											<td>${report.re_subject }</td>
											<c:choose>
												<c:when test="${empty report.re_result}"><td>대기 중</td></c:when>
												<c:when test="${report.re_result eq 'Y'}"><td>승인</td></c:when>
												<c:when test="${report.re_result eq 'D'}"><td>반려</td></c:when>
											</c:choose>
											<%-- <td>${report.re_result }</td> --%>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="row justify-content-center mt-10">
								<nav aria-label="Page navigation example">
								  <ul class="pagination">
									  <c:if test="${paging.prev }">
										  <li class="page-item"><a class="page-link" href="reportHistory.do?pageNum=${paging.startPage - 1 }&amount=${paging.amount}">&lt;</a></li>
									  </c:if>
									  <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
										  <c:choose>
											  <c:when test="${p == paging.pageNum }">
												  <li class="page-item"><b class="page-link">${p }</b></li>
											  </c:when>
											  <c:when test="${p != paging.pageNum }">
												  <li class="page-item"><a class="page-link" href="reportHistory.do?pageNum=${p }&amount=${paging.amount}">${p }</a></li>
											  </c:when>
										  </c:choose>
									  </c:forEach>
									  <c:if test="${paging.next }">
										  <li class="page-item"><a class="page-link" href="reportHistory.do?pageNum=${paging.endPage+1 }&amount=${paging.amount}">&gt;</a></li>
									  </c:if>
								  </ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



</body>

</html>