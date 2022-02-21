<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 조회</title>
<style>
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
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>결제 조회</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="listing-area pt-120 pb-120">
		<div class="container">
			<nav class="fables-single-nav">
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
						id="nav-desc-tab" data-toggle="tab" href="#nav-desc" role="tab" aria-controls="nav-desc"
						aria-selected="true">정산 대기 거래</a>
					<a class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
						id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab" aria-controls="nav-info"
						aria-selected="false">정산 완료 거래</a>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-desc" role="tabpanel" aria-labelledby="nav-desc-tab">
					<div class="row justify-content-center">
						<table class="table table-bordered thead-light  text-center col-11" style="margin-top:40px;">
							<thead class="thead-light">
								<tr>
									<th>서비스번호</th>
									<th>거래날짜</th>
									<th>서비스</th>
									<th>구매자</th>
									<th>거래금액</th>
									<th>할인</th>
									<th>수수료</th>
									<th>수수료감면</th>
									<th>최종금액</th>
									<th>상태</th>
									<th>입금일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">S1</th>
									<td>2022.02.17</td>
									<td>웹개발</td>
									<td>김길동</td>
									<td>50,000</td>
									<td>5%</td>
									<td>5,000</td>
									<td>2%</td>
									<td>45,000</td>
									<td>대기중</td>
									<td></td>
								</tr>
								<tr>
									<th scope="row">S1</th>
									<td>2022.03.17</td>
									<td>앱개발</td>
									<td>김짱구</td>
									<td>40,000</td>
									<td>5%</td>
									<td>4,000</td>
									<td>2%</td>
									<td>46,000</td>
									<td>대기중</td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane fade" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
					<br /><br />
					<div class="row justify-content-center">

						<button class="genric-btn danger-border radius">1개월</button>
						<button class="genric-btn danger-border radius">6개월</button>
						<button class="genric-btn danger-border radius">1년</button>
						<button class="genric-btn danger-border radius">기간설정</button>
						<input type="date"> ~ <input type="date">
						<table class="table table-bordered thead-light  text-center col-11" style="margin-top:40px;">
							<thead class="thead-light">
								<tr>
									<th>서비스번호</th>
									<th>거래날짜</th>
									<th>서비스</th>
									<th>구매자</th>
									<th>거래금액</th>
									<th>할인</th>
									<th>수수료</th>
									<th>수수료감면</th>
									<th>최종금액</th>
									<th>상태</th>
									<th>입금일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">S1</th>
									<td>2022.02.17</td>
									<td>웹개발</td>
									<td>김길동</td>
									<td>50,000</td>
									<td>5%</td>
									<td>5,000</td>
									<td>2%</td>
									<td>45,000</td>
									<td>구매확정</td>
									<td>2022.03.15</td>
								</tr>
								<tr>
									<th scope="row">S1</th>
									<td>2022.03.17</td>
									<td>앱개발</td>
									<td>김짱구</td>
									<td>40,000</td>
									<td>5%</td>
									<td>4,000</td>
									<td>2%</td>
									<td>46,000</td>
									<td>구매확정</td>
									<td>2022.03.25</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>