<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.container1 {
	width: 1200px;
	display: block;
	margin-left: 33%;
	margin-right: auto;
	color: black;
	letter-spacing: 0;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
	display: -webkit-flex;
	margin-left: 5px;
	width: 100%;
}

ul.tabs li {
	display: inline-block;
	cursor: pointer;
	border: rgb(235, 235, 235) solid 1px;
	border-bottom: rgb(80, 51, 150) solid 1px;
	width: 500px;
	height: 40px;
	font-size: 15px;
	text-align: center;
	line-height: 40px;
}

ul.tabs li.current {
	border: rgb(80, 51, 150) solid 1px;
	border-bottom: none;
	color: rgb(80, 51, 150);
}

.tab-content {
	display: none;
	padding: 12px;
}

.tab-content.current {
	display: inherit;
}

ul.tabs-citys {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs-citys li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs-citys li.current1 {
	background: #ededed;
	color: #222;
}

.tab-content1 {
	display: none;
	padding: 15px 0;
	border-top: 3px solid #eee;
}

.tab-content.current1 {
	display: inherit;
}

.data-table tbody td:last-child {
	border-right: 0;
}

.fee-table-box .fee-table td, .fee-table-box .fee-table th {
	padding: 10px 0;
}

.data-table tbody td {
	border-right: 1px solid #eaeaea;
	border-bottom: 1px solid #eaeaea;
}

.data-table tbody th {
	border-top: 1px solid #eaeaea;
	border-right: 1px solid #eaeaea;
	border-bottom: 1px solid #eaeaea;
}

.data-table td, .data-table th, .data-table tr {
	padding: 10px 20px;
}

table td, table th {
	padding: 0;
}

.monday>th {
	background-color: rgba(156, 155, 153, 0.774);
	border: solid;
	border-color: rgba(134, 134, 132, 0.774);
}

* {
	box-sizing: border-box;
}

td {
	display: table-cell;
	vertical-align: inherit;
}

.a-c {
	text-align: center !important;
}

table {
	width: 100%;
	margin: 0;
	border: 1;
	table-layout: fixed;
	border-collapse: collapse;
	empty-cells: show;
	border-collapse: separate;
	text-indent: initial;
	border-spacing: 2px;
}

.theater-facility p .iconset {
	margin-bottom: 10px;
}

.ico-facility-mx {
	width: 111px;
	height: 111px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-facility-mx.png);
}

.iconset {
	overflow: hidden;
	display: inline-block;
	margin: -1px 0 0 0;
	padding: 0;
	font-size: 0;
	line-height: 0;
	vertical-align: middle;
	background-position: 0 0;
	background-repeat: no-repeat;
}

.theater-facility p {
	float: left;
	width: 111px;
	margin: 0 30px 0 0;
	padding: 0;
	text-align: center;
}

.theater-facility {
	overflow: hidden;
	padding: 2px 0 0 0;
}

.ico-facility-theater {
	width: 111px;
	height: 111px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-facility-theater.png);
}

.ico-facility-disabled {
	width: 111px;
	height: 111px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-facility-disabled.png);
}

h2.tit.small {
	padding: 0 0 16px 0;
	font-size: 1.4666em;
	color: #503396;
}

.parking-info .parking-section .info {
	padding-left: 150px;
}

.parking-info .parking-section .icon-box .ico-parking {
	width: 67px;
	height: 57px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-parking.png);
	position: relative;
	top: 100px;
	left: 30px;
}

.parking-info .parking-section .icon-box .ico-parking-confirm {
	width: 70px;
	height: 60px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-confirm.png);
	position: relative;
	top: 80px;
	left: 30px;
}

.parking-info .parking-section .icon-box .ico-cash {
	width: 70px;
	height: 68px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-cash.png);
	position: relative;
	top: 80px;
	left: 30px;
}

.dot-list>li:before {
	content: '';
	display: block;
	position: absolute;
	top: 9px;
	left: 0;
	background-color: #503396;
	width: 3px;
	height: 3px;
}

.dot-list>li {
	position: relative;
	padding: 0 0 0 8px;
}

* {
	box-sizing: border-box;
}

사용자 에이전트 스타일시트
li {
	display: list-item;
	text-align: -webkit-match-parent;
}

ol, ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

사용자 에이전트 스타일시트
ul {
	list-style-type: disc;
}

.public-transportation .transportation-section .icon-box .ico-bus {
	width: 67px;
	height: 70px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-bus.png);
}

.public-transportation .transportation-section .icon-box .ico-metro {
	width: 58px;
	height: 70px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-metro.png);
}

.public-transportation .transportation-section {
	position: relative;
	padding: 30px 0 0 0;
}

.public-transportation .transportation-section .icon-box {
	position: absolute;
	top: 30px;
	left: 0;
	width: 150px;
	text-align: center;
}

.public-transportation .transportation-section .info {
	padding-left: 150px;
}

.parking-info {
	padding: 0 0 30px 0;
	border: 1px solid #d8d9db;
	border-radius: 10px;
}

.public-transportation {
	padding: 0 0 30px 0;
	border: 1px solid #d8d9db;
	border-radius: 10px;
}

h2.tit.small {
	padding: 0 0 16px 0;
	font-size: 1.4666em;
	color: #503396;
}

<!--
여기 수정 -->.acul, .acli {
	list-style: none;
}

.noticecon {
	display: block;
	justify-content: center;
	align-items: center;
	height: 300px;
}

.acul {
	width: 1000px;
}

.acli {
	border-bottom: 1px solid #eee;
}

.acul li a {
	display: block;
	width: 93%;
	height: 50px;
	line-height: 50px;
	text-decoration: none;
	color: black;
	margin-left: 3.5%;
}

.acul li button {
	display: block;
	width: 93%;
	height: 50px;
	line-height: 50px;
	text-decoration: none;
	color: black;
	margin-left: 3.5%;
}

.acul .acli.on {
	background-color: red;
}

.content {
	display: none;
	background-color: rgb(242, 244, 245);
}

.liarea {
	width: 250px;
	float: right;
}

.acli:first-child {
	border-top: 1px solid black;
}

.acdate {
	margin-left: 50px;
}

.accimg {
	float: right;
	margin-top: 20px;
}
</style>


</head>

<body>

	<div class="container1">
		<br>
		<h2>전체극장</h2>
		<div class="ultag">
			<ul class="tabs-citys">
				<li class="tab-city current" data-tab="citys1">서울</li>
				<li class="tab-city" data-tab="citys2">경기</li>
				<li class="tab-city" data-tab="citys3">인천</li>
				<li class="tab-city" data-tab="citys4">대전</li>
				<li class="tab-city" data-tab="citys5">충청</li>
				<li class="tab-city" data-tab="citys6">부산</li>
				<li class="tab-city" data-tab="citys7">광주</li>
				<li class="tab-city" data-tab="citys8">강원</li>
				<hr class="one"></hr>

				<div id=citys1 class="tab-content city">서울데이터</div>
				<div id=citys2 class="tab-content city">경기데이터</div>
				<div id=citys3 class="tab-content city">인천데이터</div>
				<div id=citys4 class="tab-content city">대전데이터</div>
				<div id=citys5 class="tab-content city">충청데이터</div>
				<div id=citys6 class="tab-content city">부산데이터</div>
				<div id=citys7 class="tab-content city">광주데이터</div>

			</ul>
			<h1 align="center">대구 신세계(동대구)</h1>
		</div>
		<hr class="one">
		<br>
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1" id="boxoffice">극장정보</li>
			<li class="tab-link" data-tab="tab-2" id="openexpected">상영시간표</li>
			<li class="tab-link" data-tab="tab-3" id="special">관람료</li>
		</ul>
		<br>
		<div id="tab-1" class="tab-content current">
			<div class="theater-info-text mt40">
				<p class="big">
					메가박스가 대구 지역 최초로 고화질 영상과 생생한 사운드를 선사하는 기술 특화관 MX관<br>전 좌석 가죽시트와
					JBL사운드에서 즐기는 일반관으로 총 6개의 상영관을 오픈합니다.
				</p>
				<p>최고 수준의 영화 관람 환경을 제공하는 메가박스 대구 신세계점에서 안락한 문화생활을 즐겨보세요.</p>
			</div>

			<hr class="one">
			<h2 class="tit small mt70">시설안내</h2>
			<h3 class="tit small">보유시설</h3>
			<div class="theater-facility">
				<p>
					<i class="iconset ico-facility-mx"></i>MX
				</p>
				<p>
					<i class="iconset ico-facility-theater"></i>일반상영관
				</p>
				<p>
					<i class="iconset ico-facility-disabled"></i>장애인석
				</p>

			</div>
			<br>

			<h3 class="tit small mt30">층별안내</h3>
			<ul class="dot-list">

				<li><span class="font-gblue">8층 : </span> 매표소, 스넥바(팝콘 박스),
					화장실(남,여), 장애인 화장실(남,여), 상영관 퇴장로(MX관, 2~6관)</li>

				<li><span class="font-gblue">9층 : </span> 상영관 입장로(MX관, 2~6관),
					화장실(남,여)</li>

			</ul>
			<h2 class="tit small mt70">교통안내</h2>

			<h3>약도</h3>
			<ul class="dot-list">
				<li><span class="font-gblue">도로명주소 : </span> 대구 동구 동부로 149
					신세계백화점 8~9층 메가박스 대구신세계지점</li>

			</ul>
			<h3 class="tit small mt30">주차</h3>
			<hr class="one"></hr>
			<div class="parking-info">


				<div class="parking-section">
					<div class="icon-box">
						<i class="iconset ico-parking" title="주차안내">주차안내</i>
					</div>

					<div class="info">
						<p class="tit">주차안내</p>

						<ul class="dot-list">

							<li>대구 신세계 백화점(본관) 지하 주차장 &amp; 파미에 주차 타운 이용</li>

							<li>메가박스 이용시 본관 주차 후 엘리베이터 3,4번홀 이용 시 보다 편리합니다. 3번홀(E/V
								NO.6,7,8호기), 4번홀(E/V NO.9,10,11호기)</li>

							<li>[본관]24시간 입차 가능 (단, 지하 3F만 적용)</li>

							<li>[별관]24시간 개방 운영 – 파미에타운 (단, 영화관 동선과는 300M 이상)</li>

							<li>차량 이용 고객 [본관] 지하 3F 주차[주차기둥 NO.22번열] 4번홀 엘리베이터 이용 ▶ 8F
								메가박스 이동 또는 [주차기둥 NO. 20번열] 3번홀 엘리베이터 이용 ▶ 8층 메가박스 이동 [파미에주차장] 주차
								후 6층 연결 브릿지 이용, 본관 4층(환승센터)내 (음식점 마차이짬뽕) 매장 맞은편 4번홀 엘리베이터 이용 ▶
								8층 메가박스 이동 ▶ 8층 메가박스 이동</li>

							<li>백화점 폐점 및 휴점일 ▶주차장 진입로 : [동대구역 네거리], [경북수협 네거리] 방면 ▶주차장 :
								본관 지하 3F 이용</li>

							<li>대중교통 이용 및 도보고객 지하철 1호선(동대구역)하차 ▶ 지하철 1,3번 출구 ▶ 1F 동대구
								복합환승센터 출입구 ▶ 수화물센터 진입(올리브영, 투썸 매장 우측) ▶ 4번홀 엘리베이터 이용 ▶ 8층 메가박스
								이동 동대구 복합환승센터 3층 (쥬스식스 매장) 맞은편 4번홀 엘리베이터 이용 또는 4층 (마차이짬뽕 매장) 맞은편
								4번홀 엘리베이터 이용 ▶ 8층 메가박스로 이동</li>

						</ul>
					</div>
				</div>



				<div class="parking-section">
					<div class="icon-box">
						<i class="iconset ico-parking-confirm" title="주차확인">주차확인</i>
					</div>

					<div class="info">
						<p class="tit">주차확인</p>

						<ul class="dot-list">

							<li>차량 번호 인증시 2시간 무료주차 적용. 차량 인증은 현장 매표소 및 입장시 직원에게 문의 바랍니다.</li>

						</ul>
					</div>
				</div>



				<div class="parking-section">
					<div class="icon-box">
						<i class="iconset ico-cash" title="주차요금">주차요금</i>
					</div>

					<div class="info">
						<p class="tit">주차요금</p>

						<ul class="dot-list">

							<li>백화점 상품 3만원 이상 구매 시 1시간, 5만원 이상 구매 시 2시간, 10만원 이상 구매 시
								3시간 추가 적용</li>

							<li>주차 요금은 입차시간을 기준으로 합니다. 최초 30분 무료. 10분당 1천원</li>

							<li>주말 및 공휴일에는 주차장이 혼잡할 수 있으니, 대중교통을 이용 바랍니다. (1호선 동대구역 1,3번
								출구)</li>

						</ul>
					</div>
				</div>
			</div>
			<hr class="one">
			<h3 class="tit small mt30">대중교통</h3>
			<div class="public-transportation">

				<!-- 버스 정보 -->

				<div class="transportation-section">
					<div class="icon-box">
						<i class="iconset ico-bus" title="버스">버스</i>
					</div>

					<div class="info">
						<p class="tit">버스</p>
						<ul class="dot-list">

							<li>신세계백화점 맞은편 하차(동부로) : 순환2, 156, 399, 413, 425, 524, 651,
								708, 909, 818, 937, 동구1</li>

							<li>신세계백화점 하차(동대구역 복합환승센터앞) : 순환2, 156, 413, 425, 524, 651,
								708, 909, 937, 동구1-1</li>

						</ul>
					</div>
				</div>


				<!-- 지하철 정보 -->

				<div class="transportation-section">
					<div class="icon-box">
						<i class="iconset ico-metro" title="지하철">지하철</i>
					</div>

					<div class="info">
						<p class="tit">지하철</p>
						<ul class="dot-list">

							<li>지하철 1호선 ‘동대구역’하차 → 지하철 1, 3번 출구 신세계 외부 출입구 이용, 2번 출구 지하
								출입구 이용</li>

							<li>영업시간 외 1,3번 출구를 통하여 복합환승센터(터미널) 쪽으로 진입 4번홀 엘리베이터 이용</li>

						</ul>
					</div>
				</div>


				<!-- 대중교통 정보가 없는 경우 -->

			</div>
			<br>
			<br>
			<h2 class="tit small mt70">공지사항</h2>

			<div class="noticecon">

				<ul class="acul">
					<c:forEach items="${notice }" var="notice">
						<li class="acli"><a href="javascript:void(0)">${notice.notitle }
								<div class="liarea">
									<span class="actitle">${notice.nocode }</span> <span
										class="acdate">${notice.nodate }</span> <img
										src=https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png
										class="accimg">
								</div>
						</a>
							<div class="content">
								<span>${notice.nosubject }</span>

							</div></li>
					</c:forEach>
					<li class="acli"><a href="javascript:void(0)">코로나 방역대책 안내
							<div class="liarea">
								<span class="actitle">지점</span> <span class="acdate">2021.
									01. 20</span> <img
									src=https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png
									class="accimg">
							</div>
					</a>

						<div class="content">첫번째 공지사항 내용입니다.</div></li>
					<li class="acli"><a href="javascript:void(0)">이벤트 안내
							<div class="liarea">
								<span class="actitle">지점</span> <span class="acdate">2021.
									01. 20</span> <img
									src=https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png
									class="accimg">
							</div>
					</a>
						<div class="content">첫번째 공지사항 내용입니다.</div></li>
					<li class="acli"><a href="javascript:void(0)">극장 내 취식 안내
							<div class="liarea">
								<span class="actitle">지점</span> <span class="acdate">2021.
									01. 20</span> <img
									src=https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png
									class="accimg">
							</div>
					</a>
						<div class="content">첫번째 공지사항 내용입니다.</div></li>
				</ul>
			</div>

			<!--// accordion-list -->

			<!-- pagination -->
			<nav class="pagination">
				<strong class="active">1</strong> <a title="2페이지보기"
					href="javascript:void(0)" pagenum="2">2</a>
			</nav>
			<!--// pagination -->
		</div>
		<!-- contact area start -->
		<!-- contact area end -->





		<div id="tab-2" class="tab-content">
			<p>상영시간표</p>
		</div>

		<div id="tab-3" class="tab-content">
			<a href="" class="ir">관람료 탭 화면 입니다.</a>
			<h2 class="tit small">영화관람료</h2>
			<div class="fee-table-box">
				<div class="fee-table">
					<h2 class="fee-table-tit">2D</h2>
					<div class="table-wrap">
						<table class="data-table a-c"
							summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
							<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
							<colgroup>
								<col>
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
								<tr class="monday">
									<th scope="col">요일</th>
									<th scope="col">상영시간</th>
									<th scope="col">일반</th>
									<th scope="col">청소년</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="rowgroup" rowspan="4">월~목</th>
									<td>조조 (06:00~)</td>
									<td>9,000</td>
									<td>7,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>12,000</td>
									<td>9,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>13,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>11,000</td>
									<td>9,000</td>
								</tr>
								<tr>
									<th scope="rowgroup" rowspan="4">금~일<br>공휴일
									</th>
									<td>조조 (06:00~)</td>
									<td>10,000</td>
									<td>7,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>13,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>14,000</td>
									<td>11,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>12,000</td>
									<td>10,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="fee-table">
					<h2 class="fee-table-tit">3D</h2>
					<div class="table-wrap">
						<table class="data-table a-c"
							summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
							<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
							<colgroup>
								<col>
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
								<tr class="monday">
									<th scope="col">요일</th>
									<th scope="col">상영시간</th>
									<th scope="col">일반</th>
									<th scope="col">청소년</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="rowgroup" rowspan="4">월~목</th>
									<td>조조 (06:00~)</td>
									<td>10,000</td>
									<td>8,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>13,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>14,000</td>
									<td>11,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>13,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<th scope="rowgroup" rowspan="4">금~일<br>공휴일
									</th>
									<td>조조 (06:00~)</td>
									<td>11,000</td>
									<td>9,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>14,000</td>
									<td>11,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>15,000</td>
									<td>12,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>14,000</td>
									<td>11,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="fee-table-box">
				<div class="fee-table">
					<h2 class="fee-table-tit">MX 2D</h2>
					<div class="table-wrap">
						<table class="data-table a-c"
							summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
							<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
							<colgroup>
								<col>
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
								<tr class="monday">
									<th scope="col">요일</th>
									<th scope="col">상영시간</th>
									<th scope="col">일반</th>
									<th scope="col">청소년</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="rowgroup" rowspan="4">월~목</th>
									<td>조조 (06:00~)</td>
									<td>11,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>14,000</td>
									<td>12,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>14,000</td>
									<td>12,000</td>
								</tr>
								<tr>
									<th scope="rowgroup" rowspan="4">금~일<br>공휴일
									</th>
									<td>조조 (06:00~)</td>
									<td>12,000</td>
									<td>10,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>16,000</td>
									<td>14,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="fee-table">
					<h2 class="fee-table-tit">MX 3D</h2>
					<div class="table-wrap">
						<table class="data-table a-c"
							summary="가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.">
							<caption>가격표를 요일, 상영시간, 일반, 청소년 순서로 보여줍니다.</caption>
							<colgroup>
								<col>
								<col style="width: 25%;">
								<col style="width: 25%;">
								<col style="width: 25%;">
							</colgroup>
							<thead>
								<tr class="monday">
									<th scope="col">요일</th>
									<th scope="col">상영시간</th>
									<th scope="col">일반</th>
									<th scope="col">청소년</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="rowgroup" rowspan="4">월~목</th>
									<td>조조 (06:00~)</td>
									<td>12,000</td>
									<td>11,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>16,000</td>
									<td>14,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
								<tr>
									<th scope="rowgroup" rowspan="4">금~일<br>공휴일
									</th>
									<td>조조 (06:00~)</td>
									<td>13,000</td>
									<td>11,000</td>
								</tr>
								<tr>
									<td>브런치 (11:01~)</td>
									<td>16,000</td>
									<td>14,000</td>
								</tr>
								<tr>
									<td>일반 (13:01~)</td>
									<td>17,000</td>
									<td>15,000</td>
								</tr>
								<tr>
									<td>심야 (23:00~)</td>
									<td>16,000</td>
									<td>14,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<span style="color: rgb(80, 51, 150);"><span
				style="font-size: 22px;">요금제</span></span><br> <br> • <span
				style="color: rgb(41, 128, 185);">청소년요금</span> 만7세 ~ 만18세 : 초등학생
			~고등학생 (학생증, 교복, 청소년증, 의료보험증, 주민등록 등/초본, 그 외 청소년 확인 가능 서류)<br> •
			48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료 관람 가능<br> <br>
			<br> <span style="font-size: 22px;"><span
				style="color: rgb(80, 51, 150);">우대적용</span></span><br> <br> • <font
				color="#01738b">국가유공자</font>&nbsp; 현장에서 국가유공자증을 소지한 본인 외 동반 1인까지 적용<br>
			• <font color="#01738b">장애인</font>&nbsp; 현장에서 복지카드를 소지한 장애인(1급~3급까지
			동반 1인까지 적용 / 4급~6급은 본인에 한함)<br> • <font color="#01738b">경로</font>&nbsp;
			만65세 이상 본인에 한함(신분증 확인)<br> • <font color="#01738b">미취학아동</font>&nbsp;
			부모 동반한 만4세~ 만6세까지 본인(의료보험증, 주민등록 초/등본 확인)<br> • <font
				color="#01738b">소방종사자</font>&nbsp; 공무원증을 소지하거나 정복을 입은 소방관 본인<br>
			<br> <br> 관람가격 및 시간대 운영은 극장마다 상이할 수 있으며, 상기 가격은 메가박스
			대구신세계(동대구)점에 한하여 적용됩니다.
		</div>
	</div>



	<script>
		$(document).ready(function() {
			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			});
		});

		$(document).ready(function() {
			$('ul.tabs-citys li').hover(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs-citys li').removeClass('current1');
				$('.tab-content').removeClass('current1');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current1');
			});
		});

		$(document).ready(function() {
			$('.imgbut').click(function() {
				var btn_id = $(this).attr('')
				$('.title').addClass('on');
				$('.content').removeAttr("style")
				$('.content').style('display', 'block');

				$('.content').removeClass('on')

			});
		});

		//슬라이드 업 //
		$('.acli').click(function() {
			$('.content').slideUp();
			if ($(this).children('.content').is(':hidden')) {
				$(this).children('.content').slideDown();
			} else {
				$(this).children('.content').slideUp();
			}
		});

		/*  $('.acli').click(function () {
		      $('.content').slideUp();
		      if ($(this).children('.content').is(':hidden')) {
		          $(this).children('.content').attr('class', 'contents');
		          $('.contents').css('background-color', 'rgb(242, 244, 245)');
		      } else if ($(this).children('.contents')) {
		          $(this).children('.contents').attr('class', 'content');
		      }
		});  */
	</script>
</body>


</html>