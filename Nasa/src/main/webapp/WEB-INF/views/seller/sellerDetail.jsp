<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .single_sidebar_widget {
       margin-bottom: 0px !important;
    }

    .br {
       margin-bottom: 0px !important;
    }

    .fables-single-item {
       color: rgb(64, 64, 64);
    }

    .fables-single-item:hover {
       background-color: tomato;
    }

    .nav-link.active {
       background-color: tomato !important;
       color: white !important;
    }

    .revtext {
       color: #777777;
    }

    .comments-area {
       margin-top: 30px;
    }

    .revimg {
       width: 200px;
       height: 100px;
    }

    .btn-reply1 {
       background-color: transparent;
       color: #888888;
       font-size: 14px;
       font-weight: 400;
    }

    .col-lg-6 {

       max-width: 100%;
    }

    .blog-author {
       background-color: rgb(240, 239, 239) !important;
    }
    .br{
	border-top: 1px solid #999294;
	margin-top: 20px;
	padding-top: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #999294;
}
    .star{
       font-size: 14px;
       color: #999999;
       margin-bottom: 0;
       margin-left: 20px;
    }
    .list-caption{
       border: 1px solid #e1ebf7;
       padding: 31px 24px 18px 24px;
       border-top: 0;
       position: relative;
       z-index: 0;
    }
    .sercimg{
       width: 236px;
       height: 251px;
    }
    .serctitle {
       color: #1c1930;
       font-weight: 700;
       font-size: 25px;
    }
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
         <div class="container">
            <div class="row">
               <div class="col-xl-12">
                  <div class="hero-cap text-center pt-50">
                     <h2>판매자 Details</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--Hero End -->
      <!--================Blog Area =================-->
      <section class="blog_area single-post-area section-padding">
         <div class="container">
            <div class="col-lg-12" style="border: 1px solid rgb(223, 223, 223); background-color: rgb(240, 239, 239);">
               <div class="blog-author col-lg-6" style="margin: 0 auto; margin-top: 20px; ">
                  <div class="media align-items-center">
                     <img src="${sellerInfo.s_img }" alt="">
                     <div class="media-body">
                        <a href="#">
                           <h4 style="display: inline;">${sellerInfo.s_name }</h4>
                        </a>

                        <div class="col-2" style="display: inline;"></div>
                        <h4 style="display: inline; margin-left: 140px;">${sellerInfo.s_address }</h4>
                        <div>
                           <h4 style="display: inline;margin-top: 8px;">SW개발 > 웹개발</h4>
                           <h4 style="display: inline; margin-left: 100px;">등급 : ${sellerInfo.s_rank }</h4>
                        </div>
                       
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-8 posts-list">
                  <div class="single-post">

                     <div class="blog_details">
                        <nav class="fables-single-nav">
                           <div class="nav nav-tabs" id="nav-tab" role="tablist">
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
                                 id="nav-desc-tab" data-toggle="tab" href="#nav-desc" role="tab"
                                 aria-controls="nav-desc" aria-selected="true">소개</a>
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
                                 id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab"
                                 aria-controls="nav-info" aria-selected="false">받은평가</a>
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
                                 id="nav-review-tab" data-toggle="tab" href="#nav-review" role="tab"
                                 aria-controls="nav-review" aria-selected="false">서비스</a>
                           </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active" id="nav-desc" role="tabpanel"
                              aria-labelledby="nav-desc-tab">
                              <div class="row justify-content-center">
                                
                                 <p class="excert">
                                    <p style="margin-top: 20px;">${sellerInfo.s_me }</p>
                                 </p>
                              </div>
                           </div>
                           <div class="tab-pane fade" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
                              
                              <br /><br />
                              <div class="revtext">
                                 <h5>서비스 리뷰</h5>
                                 <i class="fa fa-star"></i>
                                 <i class="fa fa-star"></i>
                                 <i class="fa fa-star"></i>
                                 <i class="fa fa-star"></i>
                                 <i class="fa fa-star"></i>
                                 || 총 4개의 리뷰
                              </div>
                              <div class="row justify-content-center">
                                 <div class="comments-area">
                                    <div class="comment-list">
                                       <div class="single-comment justify-content-between d-flex">
                                          <div class="user justify-content-between d-flex">
                                             <div class="thumb">
                                                <img src="assets/img/comment/comment_1.png" alt="">
                                             </div>
                                             <div class="desc">
                                                <span>Emilly Blunt</span> <span class="date">December 4,
                                                   2017 at 3:12 pm </span>
                                                   <span class="star">평점 : 4.5</span>
                                                   <span class="star">|| 웹개발1 </span>
                                                <p class="comment">Never say goodbye till the end comes!</p>
                                                <a href="" class="btn-reply text-uppercase">신고</a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="comment-list">
                                       <div class="single-comment justify-content-between d-flex">
                                          <div class="user justify-content-between d-flex">
                                             <div class="thumb">
                                                <img src="assets/img/comment/comment_2.png" alt="">
                                             </div>
                                             <div class="desc">
                                                <span>Emilly Blunt</span> <span class="date">December 4,
                                                   2017 at 3:12 pm </span>
                                                   <span class="star">평점 : 4.5</span>
                                                   <span class="star">|| 웹개발1 </span>
                                                <p class="comment"> Multiply sea night grass fourth day sea lesser rule
                                                   open subdue female fill which them
                                                   Blessed, give fill lesser bearing multiply sea night grass fourth day
                                                   sea lesser</p>
                                                <a href="" class="btn-reply text-uppercase">신고</a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="comment-list">
                                       <div class="single-comment justify-content-between d-flex">
                                          <div class="user justify-content-between d-flex">
                                             <div class="thumb">
                                                <img src="assets/img/comment/comment_3.png" alt="">
                                             </div>
                                             <div class="desc">
                                                <span>Emilly Blunt</span> <span class="date">December 4,
                                                   2017 at 3:12 pm </span>
                                                   <span class="star">평점 : 4.5</span>
                                                   <span class="star">|| 앱개발2 </span>
                                                <p class="comment"> Multiply sea night grass fourth day sea lesser rule
                                                   open subdue female fill which them
                                                   Blessed, give fill lesser bearing multiply sea night grass fourth day
                                                   sea lesser</p>
                                                <a href="" class="btn-reply text-uppercase">신고</a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>


                                    <div class="comment-list">
                                       <div class="single-comment justify-content-between d-flex">
                                          <div class="user justify-content-between d-flex">
                                             <div class="thumb">
                                                <img src="assets/img/comment/comment_1.png" alt="">
                                             </div>
                                             <div class="desc">
                                                <span>Emilly Blunt</span> <span class="date">December 4,
                                                   2017 at 3:12 pm </span>
                                                   <span class="star">평점 : 4.5</span>
                                                   <span class="star">|| 데이터베이스 </span>
                                                <p class="comment">MCSE boot camps have its supporters and its
                                                   detractors. Some people do not understand why you
                                                   should have to spend money on boot camp when you can get the MCSE
                                                   study materials yourself at a
                                                   fraction of the camp price. However, who has the willpower</p>
                                                <a href="" class="btn-reply text-uppercase">신고</a>
                                             </div>
                                          </div>
                                          <img class="revimg" src="assets/img/gallery/list1.png">
                                       </div>
                                    </div>
                                    <div class="comment-list left-padding" style="background-color: rgb(240, 239, 239);">
                                       <div class="single-comment justify-content-between d-flex">
                                          <div class="user justify-content-between d-flex">
                                             <div class="thumb">
                                                <img src="assets/img/comment/comment_2.png" alt="">
                                             </div>
                                             <div class="desc">
                                                <span>홍길동</span> <span class="date">December 4, 2017 at 3:12 pm </span>
                                                <p class="comment">Never say goodbye till the end comes!</p>
                                                <span class="btn-reply1">수정</span>
                                                <span class="btn-reply1">삭제</span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                              </div>
                           </div>
                           <div class="tab-pane fade" id="nav-review" role="tabpanel" aria-labelledby="nav-info-tab">
                              <br /><br />
                              <div class="row justify-content-center">
                                 <div class="container">
                                    <div class="row">
                                       <div class="col-lg-4">
                                          <div class="single-listing mb-30">
                                             <div class="list-img">
                                                <img src="assets/img/gallery/list1.png" alt="" class="sercimg">
                                                <!-- <span>Open</span> -->
                                             </div>
                                             <div class="list-caption">
                     
                                                <h3><a href="listing_details.html" class="serctitle">서비스명1</a></h3>
                                                <p>서비스번호</p>
                                                <p>서비스일자</p>
                                               
                                             </div>
                                          </div>
                                       </div>
                                       <div class="col-lg-4">
                                          <div class="single-listing mb-30">
                                             <div class="list-img">
                                                <img src="assets/img/gallery/list2.png" alt="" class="sercimg">
                                                <!-- <span>Open</span> -->
                                             </div>
                                             <div class="list-caption">
                     
                                                <h3><a href="listing_details.html" class="serctitle">서비스명2</a></h3>
                                                <p>서비스번호</p>
                                                <p>서비스일자</p>
                                                
                                             </div>
                                          </div>
                                       </div>
                                       <div class="col-lg-4">
                                          <div class="single-listing mb-30">
                                             <div class="list-img">
                                                <img src="assets/img/gallery/list3.png" alt="" class="sercimg">
                                                <!-- <span>Open</span> -->
                                             </div>
                                             <div class="list-caption">
                     
                                                <h3><a href="listing_details.html" class="serctitle">서비스명3</a></h3>
                                                <p>서비스번호</p>
                                                <p>서비스일자</p>
                                                
                                             </div>
                                          </div>
                                       </div>
                     
                                    </div>
                                 </div>
                              </div>

                           </div>
                        </div>
                     </div>
                  </div>



               </div>
               <div class="col-lg-4">
                  <div class="blog_right_sidebar">
                     <aside class="single_sidebar_widget author_widget">

                        <h4>판매자 정보</h4><br/>
                        <h5>활동정보</h5>
                        <div>회원구분 : ${sellerInfo.s_author }</div>
                        <div>총 작업수 : 12건</div>
                        <div>주소 : ${sellerInfo.s_address } </div>
                        <br/>
                        <h5>자격증</h5>
                        <div>한국산업인력공단·사무자동화산업기사</div>
                        <div>대한상공회의소·워드프로세서 2급·2003.12</div>
                        <div>한국생산성본부·ICDL Start Certificate·2012.11</div>
                        <div style="margin-top: 20px; text-align: center;">
                           <button class="genric-btn primary e-large">문의하기</button>
                        </div>
                     </aside>

                  </div>
               </div>
            </div>
         </div>
      </section>
</body>
</html>