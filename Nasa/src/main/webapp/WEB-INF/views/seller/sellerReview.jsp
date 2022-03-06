<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.nice-select {
	width: 500px;
}

.revimg {
	width: 200px;
	height: 100px;
}

.comment {
	width: 550px;
}

.btn-reply1 {
	background-color: transparent;
	color: #888888;
	font-size: 14px;
	font-weight: 400;
}

.revborder {
	margin-bottom: 50px;
}

.comments-area {
	margin-top: 0px;
}

.hr {
	background-color: #d5c9ea !important;
	margin: 10px !important;
}

.table-primary {
	background-color: #d5c9ea !important;
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
						<h2>리뷰 관리</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-3">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">MYPAGE MENU</h4>
							<ul class="list cat-list">
								<li><a href="sellerService.do" class="d-flex">
										<p>서비스관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p>프로모션관리</p>
								</a></li>
								<li><a href="sellerCalendar.do" class="d-flex">
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p style="font-weight: bold;">리뷰관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p>결제조회</p>
								</a></li>
								<li><a href="sellerSales.do" class="d-flex">
										<p>매출확인</p>
								</a></li>
								<li><a href="sellerReport.do" class="d-flex">
										<p>신고관리</p>
								</a></li>
								<li><a href="sellerKnowhow.do" class="d-flex">
										<p>판매자 노하우</p>
								</a></li>
							</ul>
						</aside>
					</div>
				</div>

				<div class="col-9">
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<div class="justify-content-center">
								<a class="d-inline-block" style="margin-top: 20px;">
									<h3>리뷰 관리</h3>
								</a>
								<hr class="hr" />
								<div class="blog_details">
									<div class="card-body">
										<table class="table caption-top table-bordered  text-center">
											<tbody>
												<tr>
													<th class="align-middle table-primary">서비스 선택</th>
													<td><select id="reviewChange">
															<option value="all">전체</option>
															<c:forEach items="${serviceList }" var="service">
																<option value="${service.ser_code }">${service.ser_title }</option>
															</c:forEach>
													</select></td>
												</tr>
											</tbody>
										</table>
									</div>


									<br />

									<c:forEach items="${reviewList}" var="review">
										<div class="comments-area">
											<div class="comment-list">
												<div class="single-comment justify-content-between d-flex">
													<div class="user justify-content-between d-flex">
														<div class="thumb">
															<img src="assets/img/comment/comment_1.png" alt="">
														</div>
														<div class="desc">
															<span>${review.rev_ser_name }</span><br> 
															<span>${review.rev_name }</span>
															<span class="ml-4">평점 : ${review.rev_rate }</span> 
															<span class="date">${review.rev_date } </span>
															<p class="comment">${review.rev_sub }</p>
																<span class="btn-reply1" data-toggle="modal" data-target="#reportModal" data-rere_code="${rc.rere_code }"
																	style="cursor: pointer;">신고</span>
															
														</div>
													</div>
													<c:if test="${not empty review.rev_img }">
														<img class="revimg" src="${review.rev_img }"
															style="width: 200px; height: 100px;">
													</c:if>
												</div>
											</div>
											<c:forEach items="${re_comList }" var="re_com">
												<c:if test="${review.rev_code eq re_com.review_code}">
													<div class="comment-list left-padding">
														<div class="single-comment justify-content-between d-flex">
															<div class="user justify-content-between d-flex">
																<div class="thumb">
																	<img src="assets/img/comment/comment_2.png" alt="">
																</div>
																<div class="desc">
																	<span>${re_com.rere_sel_name }</span> 
																	<span class="date">${re_com.rere_date }</span>
																	<p class="comment">${re_com.rere_sel_sub }</p>
																	<span class="btn-reply1" style="cursor: pointer;"
																		data-toggle="modal" data-target="#updateReviewModal"
																		data-rvcode="${review.rev_code }"
																		data-rvsub="${review.rev_sub }" data-rvimg="none">수정</span>
																	<span class="btn-reply1" style="cursor: pointer;"
																data-toggle="modal" data-target="#deleteReviewModal"
																data-rvcode="rvcode-${review.rev_code }">삭제</span>
																
																</div>
															</div>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</c:forEach>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>
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
	<!-- 리뷰 업데이트 모달 -->
	
	<script>
		$("#reviewChange").change(function(){
			console.log($('.selected').attr('data-value'));
			var re_code = $('.selected').attr('data-value');
			if(re_code == 'all'){
				location.href="sellerReview.do";
				return;
			}
			$.ajax({
				url: "reviewSearch.do",
  				dataType: "json",
  				type:"post",
  				data: {scode: re_code},
  				success: function (result) {
  					console.log(result);
 					$(".comments-area").remove();
  					if(result.length != 0){
  						for(data of result){
  							var div1= $("<div>").attr('class','comments-area');
  							var div2= $("<div>").attr('class','comment-list');
  							var div3= $("<div>").attr('class','single-comment justify-content-between d-flex');
  							var div4= $("<div>").attr('class','user justify-content-between d-flex');
  							var div5= $("<div>").attr('class','thumb');
  							var img= $("<img>").attr('src','assets/img/comment/comment_1.png');
  							
  							$(".blog_details").append(div1.append(div2.append(div3.append(div4.append(div5.append(img))))));
  							
  							
  							var div6= $("<div>").attr('class','desc');
  							var span1= $("<span>").html(data.rev_ser_name);
  							var span2= $("<span>").html(data.rev_name);
  							var span3= $("<span>").attr('class','ml-4').html('평점 : ' + data.rev_rate);
  							var span4= $("<span>").attr('class','date').html(data.rev_date);
  							var p=$("<p>").attr('class','comment').html(data.rev_sub);
  						
  							div3.append(div6.append(span1).append($("<br>")).append(span2).append(span3).append(span4).append(p)
  							.append('<span class="btn-reply1" data-toggle="modal" data-target="#reportModal" data-rere_code="${rc.rere_code }" style="cursor: pointer;">신고</span>'));
  							if(data.rev_img != null){
  								div3.append('<img class="revimg" src='+data.rev_img+' style="width: 200px; height: 100px;">');
  							}
  							
  							
  							if(data.rere_code != null){
  								var $div1 = $("<div>").attr('class','comment-list left-padding');
  								var $div2 =$("<div>").attr('class','single-comment justify-content-between d-flex');
  								var $div3 =$("<div>").attr('class','user justify-content-between d-flex');
  								var $div4 =$("<div>").attr('class','thumb');
  								var $img =$("<img>").attr('src','assets/img/comment/comment_2.png');
  								var $div5 =$("<div>").attr('class','desc');
  								var $span1 =$("<span>").html(data.rere_sel_name);
  								var $span2 =$("<span>").attr('class','date').html(data.rere_date);
  								var $p =$("<p>").attr('class','comment').html(data.rere_sel_sub);
  								div1.append($div1.append($div2.append($div3.append($div4.append($img)))));
  								$div3.append($div5.append($span1).append($span2).append($p)
  								.append('<span class="btn-reply1" style="cursor: pointer;" data-toggle="modal" data-target="#updateReviewModal" data-rvcode='+data.rev_code+' data-rvsub='+data.rev_sub+' data-rvimg="none">수정</span>&nbsp;&nbsp;')
  								.append('<span class="btn-reply1" style="cursor: pointer;" data-toggle="modal" data-target="#deleteReviewModal" data-rvcode="rvcode-'+data.rev_code+'">삭제</span>')
  								);
  								
  							}
  						
  						}
  					}else{
  						alert('작성된 리뷰가 없습니다!');
  					}
  						
  				},
  				error: function(err){
  					alert('일시적인 장애로 삭제2 실패하였습니다. \n잠시 후 다시 시도해주세요.');
  				}
				
			})
		})
	</script>
</body>
</html>