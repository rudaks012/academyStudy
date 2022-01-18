<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.accordion-list ul li div.title:after {
	content: '';
	display: block;
	position: absolute;
	right: 20px;
	top: 21px;
	width: 12px;
	height: 7px;
	margin: 0;
	padding: 0;
	background:
		url(https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png)
		no-repeat center;
}

.accordion-list ul li div.title div.cont-tit {
	width: 800px;
	text-align: left;
	float: left;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	padding-right: 30px;
}

.accordion-list a {
	text-decoration: none;
	display: inline-block;
	color: #444;
}

a:link {
	color: #444;
	text-decoration: none;
}

사용자 에이전트 스타일시트
a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
}

.accordion-list ul li div.title {
	position: relative;
	box-sizing: border-box;
	border-bottom: 1px solid #eaeaea;
	font-weight: 400;
}

.accordion-list {
	border-top: 1px solid #555;
}

.accordion-list ul li div.title a {
	display: block;
	width: 100%;
	padding: 15px px 0 15px 20px;
	overflow: hidden;
}

.accordion-list a {
	text-decoration: none;
	display: inline-block;
	color: #444;
}

.pagination .active {
	color: #fff;
	background-color: #01738b;
	border-color: #01738b;
}

.pagination .control, .pagination a, .pagination strong {
	display: inline-block;
	position: relative;
	min-width: 32px;
	height: 32px;
	margin: 0;
	padding: 0 8px;
	border: 1px solid #ebebeb;
	text-decoration: none;
	line-height: 30px;
	color: #333;
	font-weight: 400;
	vertical-align: middle;
	border-radius: 4px;
}

.accordion-list ul li div.title a {
	display: block;
	width: 100%;
	padding: 15px 0 15px 20px;
	overflow: hidden;
}

.accordion-list a {
	text-decoration: none;
	display: inline-block;
	color: #444;
}

.pagination {
	clear: both;
	position: relative;
	margin: 0 auto;
	padding: 30px 0 0 0;
	text-align: center;
}

.accordion-list ul li div.content {
	padding: 30px 20px;
	box-sizing: border-box;
	border-bottom: 1px solid #eaeaea;
	background-color: #f2f4f5;
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

			<div id="brchNoti">
				<h2 class="tit small mt70">공지사항</h2>

				<!-- accordion-list -->
				<div class="accordion-list">
					<ul>
						<li><div class="title ">
								<a href="" title="지점 임시 휴점 안내">
									<div class="cont-tit">지점 임시 휴점 안내</div>
									<p class="cont-admin">대구신세계(동대구)</p>
									<p class="cont-date">2020.07.03</p>
								</a>
							</div>
							<div class="content" style="display: none">
								안녕하세요<br> 메가박스&nbsp;대구신세계점입니다.<br> <br>
								대구신세계점&nbsp;건물 내&nbsp;코로나19 확진자 방문이 확인되어<br> 지점&nbsp;임시 휴점을
								하고자 합니다.<br> <br> - 일자: 2020년 07월 03일(금)<br> - 일정
								변경 시 추후 공지 예정<br> <br> 7월 3일자로 사전 예매하신 입장권은 자동 취소될
								예정입니다.<br> <br> 안전한 관람환경 조성을 위한 조치로,<br> 지점 전
								구역으로 위생 강화 및 점검을 진행하도록 하겠습니다.<br> <br> 고객님의 많은 양해
								부탁드립니다.<br> <br> 감사합니다.
							</div></li>
						<li><div class="title ">
								<a href="" title="[대구 신세계] 운영시간 임시 조정 안내(2/27부)">
									<div class="cont-tit">[대구 신세계] 운영시간 임시 조정 안내(2/27부)</div>
									<p class="cont-admin">대구신세계(동대구)</p>
									<p class="cont-date">2020.02.26</p>
								</a>
							</div>
							<div class="content" style="display: none">
								안녕하세요.<br> 메가박스 대구 신세계지점입니다.<br> <br> 코로나19 확산에
								따른 예방차원으로 운영시간을 임시 조정하오니 이용에 참고부탁드립니다.<br> <br> 조정 일시
								: 2020년 02월 27일 목요일 부터<br> 운영 시간 : 14시 이후 ~ 20시 경<br>
								<br> 지속적인 방역와 소독관리를 통해 안전한 관람 환경 조성에 최선을 다하겠습니다.<br> <br>
								감사합니다.
							</div></li>
						<li><div class="title ">
								<a href="" title="[대구신세계] 5/16 합동 소방 훈련 진행 안내">
									<div class="cont-tit">[대구신세계] 5/16 합동 소방 훈련 진행 안내</div>
									<p class="cont-admin">대구신세계(동대구)</p>
									<p class="cont-date">2018.05.15</p>
								</a>
							</div>
							<div class="content" style="display: none">
								<p>안녕하세요,</p>

								<p>메가박스 대구신세계지점입니다.</p>

								<p>&nbsp;</p>

								<p>화재 대응 체계 구축을 목적으로 합동 소방 훈련이 진행됩니다.</p>

								<p>훈련시간 동안 사이렌 및 안내방송을 실시하오니&nbsp;고객 여러분의&nbsp;양해 부탁드립니다.</p>

								<p>&nbsp;</p>

								<p>1. 일시: 5/16(수) / 13:50 ~ 14:20 (30분간)</p>

								<p>2. 장소: 메가박스 대구신세계지점</p>

								<p>3. 주관: 대구 동부소방서 대응구조과 &nbsp;&nbsp;</p>

								<p>4. 참여 기관: 대구 소방안전본부, 동구청, 동부경찰서</p>

								<p>&nbsp;</p>

								<p>항상 메가박스를 이용해주셔서 감사합니다.</p>
							</div></li>
						<li><div class="title ">
								<a href="" title="'동대구지점 ▶ 대구신세계지점' 극장 명칭 변경 안내">
									<div class="cont-tit">'동대구지점 ▶ 대구신세계지점' 극장 명칭 변경 안내</div>
									<p class="cont-admin">대구신세계(동대구)</p>
									<p class="cont-date">2017.11.16</p>
								</a>
							</div>
							<div class="content" style="display: none">
								<p>&nbsp;</p>

								<p>
									안녕하세요.<br> 메가박스 대구신세계지점 입니다.
								</p>

								<p>&nbsp;</p>

								<p>그동안 메가박스 동대구지점을 방문해주신 고객님들께 감사의 말씀 드립니다.</p>

								<p>&nbsp;</p>

								<p>오픈 1주년을 맞이하여&nbsp;더 나은 메가박스로 거듭나고자</p>

								<p>지점명이 ‘동대구'지점에서 '대구신세계’지점으로 변경되었습니다.</p>

								<p>&nbsp;</p>

								<p>새롭게 변경된 명칭만큼, 더 새롭고 편안한 서비스를 제공하는</p>

								<p>메가박스 대구신세계지점이 되겠습니다.</p>

								<p>&nbsp;</p>

								<p>감사합니다.</p>

								<p>&nbsp;</p>
							</div></li>
						<li><div class="title ">
								<a href="" title="클래식 소사이어티 상영작 변경 안내">
									<div class="cont-tit">클래식 소사이어티 상영작 변경 안내</div>
									<p class="cont-admin">대구신세계(동대구)</p>
									<p class="cont-date">2017.09.11</p>
								</a>
							</div>
							<div class="content" style="display: none">
								<p>
									<span style="font-family: 메가박스 라이프;">안녕하십니까, 메가박스
										동대구점입니다.</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">저희 동대구점을 찾아주시는
										고객님들께 양해 말씀 드립니다.</span>
								</p>

								<p>&nbsp;</p>

								<p>
									<span style="font-family: 메가박스 라이프;">기술적&nbsp;오류로 인하여</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">2017년 9월 2일 ~ 2017년
										10월 3일까지</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">매주 화요일, 토요일 14시에
										예정되었던 메트오페라&lt;이도메네오&gt;가</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">메가박스 동대구점에서는 상영이
										불가하게 되었습니다.</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">기대하셨을 고객님들께 불편을 드려
										대단히 죄송합니다.</span>
								</p>

								<p>&nbsp;</p>

								<p>
									<span style="font-family: 메가박스 라이프;">메트오페라&lt;이도메네오&gt;대신
										동일한 &nbsp;시간에</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;"><strong>메트오페라
											2017 시즌 첫 작품인&lt;돈 지오반니&gt; 상영 예정</strong>이오니</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">고객님들의 많은 사랑과 관심
										부탁드리겠습니다.</span>
								</p>

								<p>&nbsp;</p>

								<p>
									<span style="font-family: 메가박스 라이프;">앞으로도 고객님들께 좋은 작품을
										보여드릴 수 있도록</span>
								</p>

								<p>
									<span style="font-family: 메가박스 라이프;">노력하는 메가박스 동대구점이
										되겠습니다.</span>
								</p>

								<p>&nbsp;</p>

								<p>
									<span style="font-family: 메가박스 라이프;">감사합니다.</span>
								</p>
							</div></li>
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
			<div class="contact-area bg-gray ptb--100">
				<div class="container">
					<div class="section-title">
						<span>Find Us</span>
						<h2>Contact</h2>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="contact-content">
								<ul>
									<li><i class="fa fa-map-marker"></i>Race Event BeFaster,
										UK, 2292 Peachtree Rd NW</li>
									<li><i class="fa fa-phone"></i>+1 123 456 8798</li>
									<li><i class="fa fa-envelope"></i>user@gmail.com</li>
								</ul>
							</div>
						</div>
						<div class="col-md-6">
							<div id="google_map"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- contact area end -->



		</div>

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

		// 극장 정보(Tab01) > 소식 조회
		function fn_noticeList() {

			var options = {};

			// 페이징할 기본 SIZE 기본값 10
			options.recordCountPerPage = 5;

			// 호출 URL
			options.url = "/on/oh/ohc/Brch/noticeList.do";

			// 파라메터
			options.paramData = {
				'brchNo' : '7011'
			};

			// 그리기
			options.successCallBack = function(data, textStatus, jqXHR) {

				var html = '';

				// 값이 없으면 소식 영역 삭제
				if (data.list == undefined || data.list.length == 0) {
					$('#brchNoti').remove();
					return;
				}

				// 내용 생성
				$
						.each(
								data.list,
								function(i, param) {
									var artiCn = "";
									//param.cls = (i==0)? 'on' : '';

									html += '<li>';
									html += '<div class="title ">';
									html += '	<a href="" title="'+ param.artiTitle +'">';
									html += '		<div class="cont-tit">'
											+ param.artiTitle + '</div>';
									html += '		<p class="cont-admin">'
											+ param.cate2Nm + '</p>';
									html += '		<p class="cont-date">'
											+ param.fstRegDtStr + '</p>';
									html += '	</a>';
									html += '</div>';
									if (param.artiCn != null) {
										artiCn = $.parseHTML(param.artiCn)[0].textContent
									}
									html += '<div class="content" style="display:none">'
											+ artiCn + '</div>';
									html += '</li>';
								});

				// 게시글 노출
				$('#tab01 .accordion-list ul').html(html);

				// 아코디언 이벤트 연결
				mbThToggle.init({
					target : 'accordion-list'
				});
			};

			// page 이벤트 연결
			gfn_setPage(options);
		}
	</script>
</body>


</html>