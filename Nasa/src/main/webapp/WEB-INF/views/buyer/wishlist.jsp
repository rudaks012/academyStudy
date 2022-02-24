<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                     <div class="blog-author" style="margin: 0 auto; margin-top: 20px;">
                        <div class="media align-items-center">
                           <img src="resources/user/assets/img/blog/author.png" alt="">
                           <div class="media-body">
                              <a href="#">
                                 <h4 style="display: inline;">IT판매자</h4> 
                              </a>
                              <h4 style="display: inline;"><i id = "wishicon" class="fa fa-heart" aria-hidden="true"></i></h4>
                              <div class="col-2" style="display: inline;"></div><h4 style="display: inline; margin-left: 115px;">대구 중구</h4>
                              <div>
                                 <h4 style="display: inline;margin-top: 8px;">SW개발 > 웹개발</h4>
                                 <h4 style="display: inline; margin-left: 100px;">평점 : 4.5</h4>
                                 <h4 style="display: inline; margin-left: 100px;">지구 등급</h4>
                              </div>
                              <p style="margin-top: 20px;">웹개발을 주로 하고 있는 IT판매자 입니다. 기간 내에 최고의 품질로 보답하겠습니다. 믿고 맡겨주세요ㅋㅋㅋ.</p>
                           </div>
                        </div>
                     </div>               
                     <div class="blog-author" style="margin: 0 auto; margin-top: 20px;">
                        <div class="media align-items-center">
                           <img src="resources/user/assets/img/blog/author.png" alt="">
                           <div class="media-body">
                              <a href="#">
                                 <h4 style="display: inline;">IT판매자</h4> 
                              </a>
                              <h4 style="display: inline;"><i id = "wishicon" class="fa fa-heart" aria-hidden="true"></i></h4>
                              <div class="col-2" style="display: inline;"></div><h4 style="display: inline; margin-left: 115px;">대구 중구</h4>
                              <div>
                                 <h4 style="display: inline;margin-top: 8px;">SW개발 > 웹개발</h4>
                                 <h4 style="display: inline; margin-left: 100px;">평점 : 4.5</h4>
                                 <h4 style="display: inline; margin-left: 100px;">지구 등급</h4>
                              </div>
                              <p style="margin-top: 20px;">웹개발을 주로 하고 있는 IT판매자 입니다. 기간 내에 최고의 품질로 보답하겠습니다. 믿고 맡겨주세요ㅎㅎㅎ.</p>
                           </div>
                        </div>
                     </div>
                  
                     <div class="blog-author" style="margin: 0 auto; margin-top: 20px;">
                        <div class="media align-items-center">
                           <img src="resources/user/assets/img/blog/author.png" alt="">
                           <div class="media-body">
                              <a href="#">
                                 <h4 style="display: inline;">IT판매자</h4> 
                              </a>
                              <h4 style="display: inline;"><i id = "wishicon" class="fa fa-heart" aria-hidden="true"></i></h4>
                              <div class="col-2" style="display: inline;"></div><h4 style="display: inline; margin-left: 115px;">대구 중구</h4>
                              <div>
                                 <h4 style="display: inline;margin-top: 8px;">SW개발 > 웹개발</h4>
                                 <h4 style="display: inline; margin-left: 100px;">평점 : 4.5</h4>
                                 <h4 style="display: inline; margin-left: 100px;">지구 등급</h4>
                              </div>
                              <p style="margin-top: 20px;">웹개발을 주로 하고 있는 IT판매자 입니다. 기간 내에 최고의 품질로 보답하겠습니다. 믿고 맡겨주세요ㅌㅌㅌ.</p>
                           </div>
                        </div>
                     </div>
                  </section>
                  <nav class="blog-pagination justify-content-center d-flex">
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
                  </nav>
               </div>                              
            </div>
         </div>
      <!-- wishlist end -->
      </div>
   </div>
</section>
</body>
</html>