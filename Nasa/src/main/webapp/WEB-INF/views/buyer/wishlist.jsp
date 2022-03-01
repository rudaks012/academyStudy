<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   #wishicon {
      color: pink;
   }
   
   #wishicon:hover {
      color: black;
   }
</style>
</head>
<body>
			<script src="resources/excel/html2canvas.js"></script>
			<script src="resources/excel/jspdf.min.js"></script>
			
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
                           <a href="buyerCoupons.do" class="d-flex">
                              <p>보유쿠폰</p>
                           </a>
                        </li>
                        <li>
                           <a href="wishlist.do" class="d-flex">
                              <p style="font-weight: bold;">위시리스트</p>
                           </a>
                        </li>
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
                     </ul>
               </aside>
            </div>
         </div>
      <!-- sidbar End -->      
      <!-- wishlist start -->
         <div class="col-9">
            <!-- <div style="margin-top: 40px;">
                      <p><a href="goBuyerMypage.do" style="color: black;">마이페이지</a> > 위시리스트</p>
                  </div> -->
            <div class="blog_left_sidebar">
               <div class="blog_details">
                  <a class="d-inline-block">
                     <h2>위시리스트</h2>
                  </a>
                  <section class="blog_area single-post-area section-padding" style="padding-top:0 !important;">
                  	<c:forEach items="${wishlistList }" var="wishlist">
                  		<c:forEach items="${sellerList }" var="seller">
                  			<c:if test="${wishlist.s_id eq seller.s_email }">
	                  			<div id="${wishlist.s_id }${wishlist.b_id}" class="blog-author" style="margin: 0 auto; margin-top: 20px;">
	                  				<%-- <input id="buyerid" value="${wishlist.b_id }" style="display:none;">
	                  				<input id="sellerid" value="${wishlist.s_id }" style="display:none;"> --%>
			                        <div class="media align-items-center">
			                           <img src="resources/user/assets/img/blog/author.png" alt="">
			                           <div class="media-body">
			                           	<div class="d-flex">
		                                 	<h4 class="col-4">${seller.s_nickname } 
			                              	<i id = "wishicon" class="fa fa-heart" aria-hidden="true" onclick="deleteWishlist(this)" data-sid="${wishlist.s_id }" data-bid = "${wishlist.b_id }"></i></h4>
			                              	<h4 class="col-8">${seller.s_address }</h4>
			                           	</div>
			                              <div class="d-flex"  style="margin-top: 8px;">
			                                 <h4 class="col-4">SW개발 > 웹개발</h4>
			                                 <h4 class="col-4">평점 : 4.5</h4>
			                                 <h4>
			                                 	<c:choose>
			                                 		<c:when test="${seller.s_rank eq '1' }">별 등급</c:when>
			                                 		<c:when test="${seller.s_rank eq '2' }">달 등급</c:when>
			                                 		<c:when test="${seller.s_rank eq '3' }">태양 등급</c:when>
			                                 		<c:when test="${seller.s_rank eq '4' }">지구 등급</c:when>
			                                 		<c:otherwise>등급 미설정</c:otherwise>
			                                 	</c:choose>
			                                 </h4>
			                              </div>
			                              <p class="col-12" style="margin-top: 20px;">${seller.s_me }</p>
			                           </div>
			                        </div>
			                     </div>   
                  			</c:if>
                  		</c:forEach>
                  	</c:forEach>        
                  </section>
                  <!-- <nav class="blog-pagination justify-content-center d-flex">
                     <ul class="pagination">
                        <li class="page-item">
                           <a href="#" class="page-link" aria-label="Previous">
                              <i class="ti-angle-left"></i>
                           </a>
                        </li>
                        <li class="page-item">
                           <a href="#" class="page-link">1</a>
                        </li>
                        <li class="page-item active">
                           <a href="#" class="page-link">2</a>
                        </li>
                        <li class="page-item">
                           <a href="#" class="page-link" aria-label="Next">
                              <i class="ti-angle-right"></i>
                           </a>
                        </li>
                     </ul>
                  </nav> -->
               </div>                              
            </div>
         </div>
      <!-- wishlist end -->
      </div>
   </div>
</section>

<script>	
	function deleteWishlist(event) {
		var sid = $(event).data("sid");
		var bid = $(event).data("bid");
		var wid = sid + bid;
		console.log(wid);
		var target = document.getElementById(wid);
		target.remove();
		
		$.ajax({
			url:"wishlistDelete.do",
			type:"get",
			data:
				{
					s_id:sid,
					b_id:bid
				},
			success: function() {
				console.log("삭제");	
			}
		})
	}
</script>
</body>
</html>