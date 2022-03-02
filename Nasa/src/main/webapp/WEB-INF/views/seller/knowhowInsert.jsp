<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.knowtd {
	background-color: rgb(229, 231, 253);
	color: #1f2b7b;
	height: 50px;
	width: 250px;
	padding: 10px;
}

.sname {
	margin: 5px;
	padding: 5px;
	width: 620px;
}

.hr{
 	background-color : #d5c9ea !important;
   	margin: 10px !important;
}
.btn::before{
	background : none;
}
.modal-header{
	display: block;
}
.modal-title{
	display: none;
}
p {
   margin: 0px !important;
}
</style>
</head>
<body>
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>노하우 등록</h2>
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
								<li><a href="#" class="d-flex">
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p>리뷰관리</p>
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
										<p style="font-weight: bold;">판매자 노하우</p>
								</a></li>
								<li><a href="" class="d-flex" data-toggle="modal"
									data-target="#WithdrawalModal">
										<p>회원탈퇴</p>
								</a></li>
							</ul>
						</aside>
					</div>
				</div>
				<div class="col-9">
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<div class="justify-content-center">
								<a class="d-inline-block" style="margin-top:20px;">
										<h3>노하우 등록</h3>
									</a>
								<hr class="hr"/>
								<div class="blog_details">
									<form class="" method="post" action="knowhowInsert.do" enctype="multipart/form-data">
										<table border="2" style="border-color: rgb(229, 232, 255);">
											<tbody>
												<tr>
													<td class="align-middle table-primary knowtd" colspan="2">제목
														<span class="spanstar">*</span>
													</td>
													<td><input type="text" id="no_title" name="no_title"
														class="sname"></td>
												</tr>
												<tr>
													<td class="align-middle table-primary knowtd" colspan="2">메인이미지
														<span class="spanstar">*</span>
													</td>
													<td><input type="file" id="mainKnow" name="mainKnow"
														class="sname" required="required"></td>
												</tr>
												<tr>
													<td colspan="3" style="padding: 1rem">
													<textarea id="summernote" name="summernote"></textarea>
													</td>
												</tr>
											</tbody>
										</table>
										<br />
										<div
											class="row d-flex justify-content-center align-items-center">
											<button type="submit"
												class="genric-btn primary circle arrow btnbox">등록</button>
											&nbsp;&nbsp;&nbsp;
											<button class="genric-btn primary circle arrow" onclick="history.back()">취소</button>
										</div>
									</form>

								</div>
							</div>
						</article>
					</div>
				</div>

			</div>
		</div>
	</section>
	<script>
		$('#summernote').summernote(
				{
					height : 300, // 에디터 높이
					minHeight : null, // 최소 높이
					maxHeight : null, // 최대 높이
					focus : true, // 에디터 로딩후 포커스를 맞출지 여부
					lang : "ko-KR", // 한글 설정
					placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
					callbacks : {
						onImageUpload : function(files, editor, welEditable) {
							// 파일 업로드(다중업로드를 위해 반복문 사용)
							for (var i = files.length - 1; i >= 0; i--) {
								uploadSummernoteImageFile(files[i], this);
							}
						}
					},
					toolbar : [
							// 글꼴 설정
							[ 'fontname', [ 'fontname' ] ],
							// 글자 크기 설정
							[ 'fontsize', [ 'fontsize' ] ],
							// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
							[
									'style',
									[ 'bold', 'italic', 'underline',
											'strikethrough', 'clear' ] ],
							// 글자색
							[ 'color', [ 'forecolor', 'color' ] ],
							// 표만들기
							[ 'table', [ 'table' ] ],
							// 글머리 기호, 번호매기기, 문단정렬
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							// 줄간격
							[ 'height', [ 'height' ] ],
							// 그림첨부, 링크만들기, 동영상첨부
							[ 'insert', [ 'picture', 'link', 'video' ] ],
							// 코드보기, 확대해서보기, 도움말
							[ 'view', [ 'codeview', 'fullscreen', 'help' ] ] ],
					// 추가한 글꼴
					fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
							'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체',
							'바탕체' ],
					// 추가한 폰트사이즈
					fontSizes : [ '8', '9', '10', '11', '12', '14', '16', '18',
							'20', '22', '24', '28', '30', '36', '50', '72' ]
				});

		/**
		 * 이미지 파일 업로드
		 */
		// 이미지 파일 DB에 넣을 수 있게 경로로 변환.
		function uploadSummernoteImageFile(file, el) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "uploadSummernoteImageFile.do",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(data) {
					$(el).summernote('editor.insertImage', data.url);
				}
			});
		}
	</script>
</body>
</html>