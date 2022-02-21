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
	                    <h2>리뷰</h2>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<!--Hero End -->

<!-- buyerReview Start -->

	<div class="container">
		<div class="comments-area">
			<div class="comment-list">
				<div class="single-comment justify-content-between d-flex" style="border: solid 1px;">
					<div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
						<div class="thumb">
							<img src="resources/user/assets/img/comment/comment_1.png" alt="">
						</div>
						<div class="desc">
							<p class="comment">
								Multiply sea night grass fourth day sea lesser rule open subdue female fill which
								them
								Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
							</p>
							<div class="d-flex justify-content-between">
								<div class="d-flex align-items-center">
									<h5><a href="#">홍길동</a></h5>
									<p class="date">December 4, 2017 at 3:12 pm </p>
								</div>
								<div class="reply-btn">
									<a href="#" class="btn-reply text-uppercase" data-toggle="modal" data-target="#reportModal">신고</a>
								</div>
							</div>
						</div>
					</div>
					<img src="resources/user/assets/img/gallery/list1.png"/>
				</div>
			</div>
		
			<div class="comment-list">
				<div class="single-comment justify-content-between d-flex" style="border: solid 1px;">
					<div class="user justify-content-between d-flex">
						<div class="thumb">
							<img src="resources/user/assets/img/comment/comment_2.png" alt="">
						</div>
						<div class="desc">
							<p class="comment">
								Multiply sea night grass fourth day sea lesser rule open subdue female fill which
								them
								Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
							</p>
							<div class="d-flex justify-content-between">
								<div class="d-flex align-items-center">
									<h5><a href="#">김길동</a></h5>
									<p class="date">December 4, 2017 at 3:12 pm </p>
								</div>
								<div class="reply-btn">
									<a href="#" class="btn-reply text-uppercase" data-toggle="modal" data-target="#reportModal">신고</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- buyeerReview End -->

<!-- Modal Start -->

	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel" aria-hidden="true">
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
							<label><input type="radio" name="reportType" value="1" onclick="radiodisabled()"> 욕설/비방</label><br>
							<label><input type="radio" name="reportType" value="2" onclick="radiodisabled()"> 음란물</label><br>
							<label><input type="radio" name="reportType" value="3" onclick="radiodisabled()"> 스팸, 부적절한 광고</label><br>
							<label><input type="radio" name="reportType" value="4" onclick="radiodisabled()"> 혐오 혹은 잔인한 사진</label><br>
							<div class="form-group">
								<label><input type="radio" name="reportType" value="5" onclick="radioactive()"> 기타 사유</label>
								<textarea class="form-control" id="reportSubject" name="reportSubject" disabled></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="#" class="genric-btn danger radius" data-dismiss="modal">신고</a>
					<a href="#" class="genric-btn primary radius"  data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function radiodisabled() {
			$("#reportSubject").attr("disabled", true);
			$("#reportSubject").val("");
		}
		function radioactive() {
		 	$("#reportSubject").attr("disabled", false);
		}
	</script>

<!-- Modal End -->
</body>
</html>