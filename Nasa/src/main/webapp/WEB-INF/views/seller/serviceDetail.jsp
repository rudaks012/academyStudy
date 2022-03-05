<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
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
.revtext{
   color: #777777;
}
.comments-area{
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
.tab-pane{
	padding : 1em;
}
.img-fluid{
	width: 753px;
	height: 375px;
}
</style>
</head>
<body>
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>서비스 Details</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="single-post">
                     <div class="feature-img">
                        <img class="img-fluid" src="fileupload/${detailS.ser_img }" alt="">
                     </div>
                     <div class="blog_details">
                        <nav class="fables-single-nav">
                           <div class="nav nav-tabs" id="nav-tab" role="tablist">
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
                                 id="nav-desc-tab" data-toggle="tab" href="#nav-desc" role="tab" aria-controls="nav-desc"
                                 aria-selected="true">서비스설명</a>
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
                                 id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab" aria-controls="nav-info"
                                 aria-selected="false">취소환불규정</a>
                              <a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
                                 id="nav-review-tab" data-toggle="tab" href="#nav-review" role="tab" aria-controls="nav-review"
                                 aria-selected="false">리뷰</a>
                           </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                           <div class="tab-pane fade show active" id="nav-desc" role="tabpanel" aria-labelledby="nav-desc-tab">
                             
                              	<br/><br/>
                                 <h5><u>서비스 소개</u></h5>
                                 <p class="excert">
                                    ${detailS.ser_sub }
                                 </p>
                                 <hr />
                             	<h5><u>기술수준</u></h5>
                             	<p>${detailS.ser_skill }</p>
                             	<h5><u>팀 규모</u></h5>
                             	<p>${detailS.ser_team }</p>
                             	<c:if test="${detailS.ser_lang ne null}">
                             		<h5><u>개발언어</u></h5>
                             		<p>- ${detailS.ser_lang }</p>
                             	</c:if>
                             	<c:if test="${detailS.ser_frame ne null}">
                             		<h5><u>프레임워크</u></h5>
                             		<p>- ${detailS.ser_frame }</p>
                             	</c:if>
                             	<c:if test="${detailS.ser_dbms ne null}">
                             		<h5><u>DBMS</u></h5>
                             		<p>- ${detailS.ser_dbms }</p>
                             	</c:if>
                             	
                             	<hr />
                             	
                             	<h5><u>서비스방식</u></h5>
                           		<p>- ${detailS.ser_line }</p>
                           		
                           		<hr />
                           		
                           		<c:if test="${detailS.ser_offer ne null}">
                             		<h5><u>제공절차</u></h5>
                             		<p>${detailS.ser_offer }</p>
                             		<hr />
                             	</c:if>
                             	
                             	<c:if test="${detailS.ser_subimg ne null || detailS.ser_subimg2 ne null || detailS.ser_subimg3 ne null}">
                             		<h5><u>서비스 이미지</u></h5>
                             		<p><img src="fileupload/${detailS.ser_subimg }"></p>
                             		<p><img src="fileupload/${detailS.ser_subimg2 }"></p>
                             		<p><img src="fileupload/${detailS.ser_subimg3 }"></p>
                             		<hr />
                             	</c:if>
                           		
                           </div>
                           <div class="tab-pane fade" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
                              <br /><br />
                              <div class="row justify-content-center">
                                    취소환불규정
                              </div>
                           </div>
                           <div class="tab-pane fade" id="nav-review" role="tabpanel" aria-labelledby="nav-info-tab">
                              <br /><br />
                              <!-- 여기에 바이어 로그인 돼 있으면 리뷰작성 뜨게 작성 -->
                              <c:if test="">
                              </c:if>
                              <div id="writeReview">
                          		<h5>리뷰 작성</h5>
                          		<div class="d-flex">
	                          		<h5 style="font-size:15px; margin-right:10px; margin-top:10px;">평점</h5>
	                          		<select id="rev_rate" style="width:200px;">
	                          			<option value="1">1</option>
	                          			<option value="2">2</option>
	                          			<option value="3">3</option>
	                          			<option value="4">4</option>
	                          			<option value="5">5</option>
	                          		</select>
                          		</div>
                      			<textarea placeholder="리뷰를 작성해주세요" style="width:100%; height:100px; margin-top:5px"></textarea>
                      			<div>
	                      			<input type="file" id="reviewimgUpload" accept="image/*" style="display:none;">
	                      			<label class="genric-btn primary" for="reviewimgUpload">사진등록</label>
	                      			<img id="reviewimg" alt="" style="width: 42px; height:42px; margin-left:10px; overflow: hidden; border-color:white;">
	                      			<label class="genric-btn primary float-right" onclick="writeReview()">리뷰 작성</label>
	                      		</div>                
                              </div>
                              <div class="revtext" style="margin-top:20px;">
                              <h5>서비스 리뷰</h5>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                                || 총 4개의 리뷰</div>
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
                                                <p class="comment"> Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
                                                   Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>
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
                                                <p class="comment"> Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
                                                   Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser</p>
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
                                                <p class="comment">MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                                                   should have to spend money on boot camp when you can get the MCSE study materials yourself at a
                                                   fraction of the camp price. However, who has the willpower</p>
                                                <a href="" class="btn-reply text-uppercase">신고</a>
                                             </div>
                                          </div>
                                          <img class="revimg" src="assets/img/gallery/list1.png">
                                       </div>
                                    </div>
                                    <div class="comment-list left-padding">
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


                                 <div class="comment-form">
                                    <h4>Leave a Reply</h4>
                                    <form class="form-contact comment_form" action="#" id="commentForm">
                                       <div class="row">
                                          <div class="col-12">
                                             <div class="form-group">
                                                <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                                   placeholder="Write Comment"></textarea>
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="form-group">
                                                <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                                             </div>
                                          </div>
                                          <div class="col-sm-6">
                                             <div class="form-group">
                                                <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                                             </div>
                                          </div>
                                          <div class="col-12">
                                             <div class="form-group">
                                                <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                                             </div>
                                          </div>
                                       </div>
                                       <div class="form-group">
                                          <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							<div>
							
								<span>*카테고리 : ${cate.cat_name } > ${subcate.sub_name }</span>
								<br/><br/>
								<h1>${detailS.ser_title }</h1>
								<br /><br />
								<span style="font-size:25px; font-weight: bold;">가격 : ${detailS.ser_price }원 ~ </span>
								<br /><br />
							</div>
							<!-- /input-group -->
							<div class="br"></div>
						</aside>
						<aside class="single_sidebar_widget author_widget">
							<img class="author_img rounded-circle" src="assets/img/comment/comment_1.png" 
							alt="" style="cursor:pointer;" onclick="location='sellerDetail.do'">
							<h4>${sellerInfo.s_name }</h4>
							<p>등급 : ${sellerInfo.s_rank }</p>

							<p>${sellerInfo.s_me }</p>
							<button class="genric-btn primary small startbtn">채팅</button>
							<div class="br"></div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script>
		function readImage(input) {
			if(input.files && input.files[0]) {
				const reader = new FileReader();
				
				reader.onload = e => {
					const previewImage = document.getElementById("reviewimg");
					previewImage.src = e.target.result;
				}
				reader.readAsDataURL(input.files[0]);                 
			}
		}
		
		const inputImage = document.getElementById("reviewimgUpload");
		inputImage.addEventListener("change", e => {
			readImage(e.target);
		});
	</script>
	
</body>
</html>