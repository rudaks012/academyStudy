<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.nice-select {
	width: 300px;
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
	margin-top : 0px;
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

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-8" style="margin-top: 40px;">

				<div class="card-body">
					<table class="table caption-top table-bordered  text-center">
						<tbody>
							<tr>
								<th class="align-middle table-primary">서비스 선택</th>
								<td><select>
										<option selected="">웹개발1</option>
										<option value="1">웹개발2</option>
										<option value="2">Jun 19</option>
								</select></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br />


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
		<div class="comments-area">
			<div class="comment-list">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="thumb">
							<img src="assets/img/comment/comment_3.png" alt="">
						</div>
						<div class="desc">
							<span>Maria Luna</span> <span class="date">December 4,
								2017 at 3:12 pm </span>
							<p class="comment">Never say goodbye till the end comes!</p>
							<span class="btn-reply1">신고</span>
							<span class="btn-reply1">리뷰등록</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="comments-area">
			<div class="comment-list">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="thumb">
							<img src="assets/img/comment/comment_1.png" alt="">
						</div>
						<div class="desc">
						<div class="desc">
							<span>Ina Hayes</span> <span class="date">December 4,
								2017 at 3:12 pm </span>
							<p class="comment">Never say goodbye till the end comes!</p>
							<span class="btn-reply1">신고</span>
							<span class="btn-reply1">리뷰등록</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>