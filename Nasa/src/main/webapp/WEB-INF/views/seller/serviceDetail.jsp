<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                              <c:if test="${author eq 'B'}">
                                 <form action="writeReview.do" method="post", enctype="multipart/form-data">
                                    <div id="writeReview">
                                       <h5>리뷰 작성</h5>
                                       <div class="d-flex">
                                          <input type="hidden" name="scode" value="${detailS.ser_code}">
                                          <input type="hidden" name="rev_ser_name" value="${detailS.ser_title}">
                                          <h5 style="font-size:15px; margin-right:10px; margin-top:10px;">평점</h5>
                                          <select id="rev_rate" name="rev_rate" style="width:200px;">
                                             <option value="1">1</option>
                                             <option value="2">2</option>
                                             <option value="3">3</option>
                                             <option value="4">4</option>
                                             <option value="5">5</option>
                                          </select>
                                       </div>
                                       <textarea id="rev_sub" name="rev_sub" placeholder="리뷰를 작성해주세요" style="width:100%; height:100px; margin-top:5px" required></textarea>
                                       <div>
                                          <input type="file" id="reviewimgUpload" name="reviewimg" accept="image/*" style="display:none;">
                                          <label class="genric-btn primary" for="reviewimgUpload">사진등록</label>
                                          <img id="reviewimg" alt="" style="width: 42px; height:42px; margin-left:10px; overflow: hidden; border-color:white;">
                                          <button type="submit" class="genric-btn primary float-right">리뷰 작성</button>
                                       </div>                
                                    </div>
                                 </form>
                              </c:if>
                              <form action="writeReview.do" method="post", enctype="multipart/form-data" style="display:none;">
                                 <div id="writeReview">
                                    <h5>리뷰 작성</h5>
                                    <div class="d-flex">
                                       <input type="hidden" name="scode" value="${detailS.ser_code}">
                                       <input type="hidden" name="rev_ser_name" value="${detailS.ser_title}">
                                       <h5 style="font-size:15px; margin-right:10px; margin-top:10px;">평점</h5>
                                       <select id="rev_rate" name="rev_rate" style="width:200px;">
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4">4</option>
                                          <option value="5">5</option>
                                       </select>
                                    </div>
                                    <textarea id="rev_sub" name="rev_sub" placeholder="리뷰를 작성해주세요" style="width:100%; height:100px; margin-top:5px" required></textarea>
                                    <div>
                                       <input type="file" id="reviewimgUpload" name="reviewimg" accept="image/*" style="display:none;">
                                       <label class="genric-btn primary" for="reviewimgUpload">사진등록</label>
                                       <img id="reviewimg" alt="" style="width: 42px; height:42px; margin-left:10px; overflow: hidden; border-color:white;">
                                       <button type="submit" class="genric-btn primary float-right">리뷰 작성</button>
                                    </div>                
                                 </div>
                              </form>
                              <div class="revtext" style="margin-top:20px;">
                              <h5>서비스 리뷰</h5>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                                || 총 ${fn:length(reviewList)}개의 리뷰</div>
                              <div>
                                 <div class="comments-area">
                                    <c:forEach items="${reviewList}" var="review">
                                       <div id="rvcode-${review.rev_code }" class="comment-list">
                                          <div class="single-comment justify-content-between d-flex">
                                             <div class="user justify-content-between d-flex">
                                                <c:choose>
                                                   <c:when test="${not empty review.b_img }">
                                                      <div class="thumb">
                                                         <img class = "profileimg" src="${review.b_img }" alt="">
                                                      </div>
                                                   </c:when>
                                                   <c:otherwise>
                                                      <div class="thumb">
                                                         <img class = "profileimg" src="resources/user/assets/img/profile/search-default-profile.jpg" alt="">
                                                      </div>
                                                   </c:otherwise>
                                                </c:choose>
                                                <div class="desc" style="width:450px;">
                                                   <span>${review.rev_ser_name }</span><br>
                                                   <span>${review.rev_name }</span>
                                                   <span class="ml-4">평점 : ${review.rev_rate }</span>
                                                   <span class="date">${review.rev_date } </span>
                                                   <div style="word-break:break-all;">
                                                      <p class="comment">${review.rev_sub }</p>
                                                   </div>
                                                   <c:choose>
                                                      <c:when test="${review.rev_id eq id}">
                                                         <c:choose>
                                                            <c:when test="${not empty review.rev_img }">
                                                               <span class="btn-reply1" style="cursor: pointer;" data-toggle="modal"
                                                                  data-target="#updateReviewModal" data-rvcode="${review.rev_code }" data-rvsub="${review.rev_sub }" 
                                                                  data-rvimg="${review.rev_img }">수정</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                               <span class="btn-reply1" style="cursor: pointer;" data-toggle="modal"
                                                                  data-target="#updateReviewModal" data-rvcode="${review.rev_code }" data-rvsub="${review.rev_sub }" 
                                                                  data-rvimg="none">수정</span>
                                                            </c:otherwise>
                                                         </c:choose>
                                                         <span class="btn-reply1"
                                                            style="cursor: pointer;" data-toggle="modal"
                                                            data-target="#deleteReviewModal" data-rvcode="rvcode-${review.rev_code }">삭제</span>
                                                      </c:when>
                                                      <c:otherwise>
                                                         <c:if test="${not empty author}">
                                                            <span class="btn-reply1" data-toggle="modal" data-target="#reportModal" data-revtp="r" data-report_code="${review.rev_code }"
                                                            style="cursor: pointer;">신고</span>
                                                         </c:if>
                                                      </c:otherwise>
                                                   </c:choose>
                                                </div>
                                             </div>
                                             <c:if test="${not empty review.rev_img }">
                                                <div style="width:200px;height:100px; margin-left:10px;">
                                                   <img class="revimg" src="${review.rev_img }" style="width:200px;height:100px;">
                                                </div>
                                             </c:if>
                                          </div>
                                       </div>
                                       <c:if test="${not empty review.rere_code }">
                                          <div id="rvcode-${review.review_code }" class="comment-list left-padding">
                                             <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                   <c:choose>
                                                      <c:when test="${not empty sellerInfo.s_img }">
                                                         <div class="thumb">
                                                            <img src="${sellerInfo.s_img}" class = "profileimg" alt="">
                                                         </div>
                                                      </c:when>
                                                      <c:otherwise>
                                                         <div class="thumb">
                                                            <img src="resources/user/assets/img/profile/search-default-profile.jpg" class = "profileimg" alt="">
                                                         </div>
                                                      </c:otherwise>
                                                   </c:choose>
                                                   <div class="desc">
                                                      <span>${review.rere_sel_name }</span>
                                                      <span class="date">${review.rere_date } </span>
                                                      <div style="word-break:break-all;">
                                                         <p class="comment">${review.rere_sel_sub }</p>
                                                      </div>
                                                      <c:choose>
                                                         <c:when test="${review.rere_sel_id eq id}">
                                                            <span class="btn-reply1" style="cursor: pointer;" data-toggle="modal"
                                                                  data-target="#updateReviewCommentModal" data-rvcode="${review.rere_code }" data-rvsub="${review.rere_sel_sub }" 
                                                                  data-reviewcode="${review.review_code}">수정</span>
                                                         </c:when>
                                                         <c:otherwise>
                                                            <span class="btn-reply1" data-toggle="modal" data-target="#reportModal" data-revtp="rc" data-report_code="${review.rere_code }"
                                                            style="cursor: pointer;">신고</span>
                                                         </c:otherwise>
                                                      </c:choose>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </c:if>
                                    </c:forEach>
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
							<h4 id="sellernick">${sellerInfo.s_name }</h4>
							<p>등급 : ${sellerInfo.s_rank }</p>

							<p>${sellerInfo.s_me }</p>
							<button class="genric-btn primary small startbtn" onclick="chatingcheck()">채팅</button>
							<div class="br"></div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</section>

   <!-- Modal Start -->
	<!-- 신고 모달 -->
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel"
   aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">신고</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <form>
               <div class="form-group">
                  <label><input type="radio" name="reportType" value="욕설/비방" onclick="radiodisabled()"> 욕설/비방</label><br>
                  <label><input type="radio" name="reportType" value="음란물" onclick="radiodisabled()"> 음란물</label><br>
                  <label><input type="radio" name="reportType" value="스팸/부적절한 광고" onclick="radiodisabled()"> 스팸/부적절한 광고</label><br>
                  <label><input type="radio" name="reportType" value="혐오/잔인한 사진" onclick="radiodisabled()"> 혐오/잔인한 사진</label><br>
                  <div class="form-group">
                     <label><input type="radio" name="reportType" value="기타사유" onclick="radioactive()"> 기타사유</label>
                     <textarea class="form-control" id="reportSubject" name="reportSubject"
                        disabled></textarea>
                  </div>
               </div>
            </form>
         </div>
         <div class="modal-footer">
            <a href="#" class="genric-btn danger radius" data-dismiss="modal" onclick="reportReview()">신고</a>
            <a href="#" class="genric-btn primary radius" data-dismiss="modal" onclick="radiodisabled();disradio();">취소</a>
         </div>
      </div>
   </div>
</div>
<!-- 신고 모달 -->

<!-- 삭제 경고 모달 -->
<div class="modal fade" id="deleteReviewModal" tabindex="-1" role="dialog" aria-labelledby="deleteReviewModalLabel"
   aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">리뷰 삭제</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">리뷰가 삭제됩니다!</div>
         <div class="modal-footer">
            <a href="#" class="genric-btn danger radius" onclick="deleteReview()" data-dismiss="modal">삭제</a>
            <a href="#" class="genric-btn primary radius" data-dismiss="modal">취소</a>
         </div>
      </div>
   </div>
</div>
<!-- 삭제 경고 모달 -->

<!-- 리뷰 업데이트 모달 -->
<div class="modal fade bd-example-modal-lg" id="updateReviewModal" tabindex="-1" role="dialog" aria-labelledby="updateReviewModalLabel"
   aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">리뷰 수정</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <form method = "post" action = "reviewUpdate.do" enctype="multipart/form-data">
            <input type="hidden" name = "pageinfo" value="servicepage">
            <div class="modal-body">
               <div class="d-flex">
                  <input type="hidden" id="hidden_revcode" name="rev_code">
                         <h5 style="font-size:15px; margin-right:10px; margin-top:20px;">평점</h5>
                         <select id="rev_rate" name = "rev_rate" style="width:50px;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                         </select>
                      </div>
                      <h5 style="font-size:15px; margin-top:20px;">내용</h5>
                    <textarea id = "modal_rev_sub" name="rev_sub" style="width:100%; height:100px; margin-top:5px" required></textarea>
                    <div class = "d-flex">
                       <input type="file" id="reviewimg" name="revimg" accept="image/*" style="display:none;">
                       <label class="genric-btn primary radius" for="reviewimg" style="margin-top: 7px;">사진 첨부</label>
                       <img id="reviewimgpreview" alt="" style="width: 42px; height:42px; margin-left:10px;margin-top: 7px; overflow: hidden; border-color:white;">
                    </div>
            </div>
            <div class="modal-footer">
               <button type="submit" class="genric-btn danger radius">수정</button>
               <button class="genric-btn primary radius" data-dismiss="modal">취소</button>
            </div>
         </form>
      </div>
   </div>
</div>
<!-- review_comment controller -->
<div class="modal fade bd-example-modal-lg" id="updateReviewCommentModal" tabindex="-1" role="dialog" aria-labelledby="updateReviewCommentModalLabel"
   aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">리뷰 수정</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <form method = "post" action = "reviewCommentUpdate.do">
               <input type="hidden" id = "hidden_rere_code" name = "rere_code">
               <input type="hidden" id = "hidden_reviewcode" name = "review_code">
               <input type="hidden" name = "pageinfo" value="servicepage">
                         <h5 style="font-size:15px; margin-top:20px;">내용</h5>
                       <textarea id = "modal_rere_sel_sub" name="rere_sel_sub" style="width:100%; height:100px; margin-top:5px" required></textarea>
               </div>
               <div class="modal-footer">
                  <button type="submit" class="genric-btn danger radius">수정</button>
                  <button class="genric-btn primary radius" data-dismiss="modal">취소</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<!-- 리뷰 업데이트 모달 -->


<!-- Modal End -->
	
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
	
		var rvcode = "";
		var rvsub = "";
		/* 신고 사유 textarea 끄고 켜는 함수 */
		function radiodisabled() {
			$("#reportSubject").attr("disabled", true);
			$("#reportSubject").val("");
		}

		function radioactive() {
			$("#reportSubject").attr("disabled", false);
		}
		
		function disradio() {
			$("input:radio[name='reportType']").prop("checked", false);
			console.log("disradio");
		}
		/* 신고 사유 textarea 끄고 켜는 함수 */
		
		/* 리뷰 삭제 기능 test 함수 */
		$(document).ready(function () {
			$("#deleteReviewModal").on("show.bs.modal", function (event) {
				rvcode = $(event.relatedTarget).data("rvcode");
			});
			
			$("#updateReviewModal").on("show.bs.modal", function (event) {
				rvcode = $(event.relatedTarget).data("rvcode");
				rvsub = $(event.relatedTarget).data("rvsub");
				$("#hidden_revcode").val(rvcode);
				$("#modal_rev_sub").val(rvsub);			
			});

         $("#updateReviewCommentModal").on("show.bs.modal", function (event) {
				rvcode = $(event.relatedTarget).data("rvcode");
				rvsub = $(event.relatedTarget).data("rvsub");
            reviewcode = $(event.relatedTarget).data("reviewcode");
				$("#hidden_rere_code").val(rvcode);
            $("#hidden_reviewcode").val(reviewcode);
				$("#modal_rere_sel_sub").val(rvsub);			
			});
			
			$("#reportModal").on("show.bs.modal", function (event) {
				report_code = $(event.relatedTarget).data("report_code");
            report_tcp = $(event.relatedTarget).data("revtp");
			});
		});
		
		function reportReview() {
			console.log(report_code);
			var re_type = $('input[name="reportType"]:checked').val();
			console.log(re_type);
			var re_subject = $("#reportSubject").val();
         console.log(report_tcp);
			
			if(report_tcp == "r"){
            // reportcontroller
            $.ajax({
               url: "reportReview.do",
               type:"post",
               data:{rev_code : report_code,
                     re_type : re_type,
                     re_subject : re_subject},
               success: function() {
                  console.log("신고함!");
               },
               error: function() {
                  console.log("신고에러")
               }
            })
         }
         if(report_tcp == "rc") {
            // reportcontroller
            $.ajax({
               url: "reportReview_comment.do",
               type:"post",
               data:{rere_code : report_code,
                  re_type : re_type,
                  re_subject : re_subject},
               success: function() {
                  console.log("신고함!");
               },
               error: function() {
                  console.log("신고에러")
               }
            })
         }
		}

		function deleteReview() {
			console.log(rvcode);
			var target = document.getElementById(rvcode);
			target.remove();
			
			var rev_code = rvcode.substr(7);
			console.log(rev_code);
			
			$.ajax({
				url:"deleteReview.do",
				type:"get",
				data:{rev_code:rev_code},
				success: function() {
					console.log("삭제함!");
				},
				error: function() {
					console.log("에러");
				}
			})
		}
		/* 리뷰 삭제 기능 test 함수 */

        function chatingcheck() {
            //판매자 닉네임
            var chatnick = document.querySelector("#sellernick").innerHTML;
            //서비스코드
            var ser_code = window.location.search.substr(10);
            $.ajax({
                url : "chatingcheck.do",
                type : "post",
                data : {
                    chatnick : chatnick, //이거 판매자 닉네임
                    ser_code : ser_code  // 페이지의 서비스코드
                },
                dataType : "json",
                success : function(data){
                	window.location.replace("chatting.do");
                    console.log(data);
                },error : function(){
					alert("에러");
				}
			});
		}
	</script>
	
</body>
</html>