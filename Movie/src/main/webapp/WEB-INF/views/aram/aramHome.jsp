<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<style>
	.wrap{
		width: 1200px;
		height: 700px;
		margin: 0 auto;
	}
	.ticket_tb{
		 width: 1100px;
		 height: 630px;
		 border: 1px solid lightgray;
	}
	 .swiper {
        width: 950px;
  		height: 35px;
	}

      .swiper-slide {
        text-align: center;
        font-size: 14px;
       	color: black;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
	}

      @media (max-width: 760px) {
        .swiper-button-next {
          right: 20px;
          transform: rotate(90deg);     
        }
        .swiper-button-prev {
          left: 20px;
          transform: rotate(90deg);
        }
	}
      li{
		cursor: pointer;
	}
	#title p{
		font-size: 27px;
		color: black;
		margin-bottom: 15px;
	}
	#first_tr{
		border-top: 1px solid black;
		border-bottom: 1px solid lightgray;
		height: 40px;
	}
</style>
</head>
<body>
	<div class="wrap">
		<div id="title"><p>빠른예매</p></div>
		
		<table class="ticket_tb">	
			<tr id="first_tr">
				<td colspan="3">
					<div class="swiper">
				      <div class="swiper-wrapper">      
				        <div class="swiper-slide">17*월</div>
				        <div class="swiper-slide">18*화</div>
				        <div class="swiper-slide">19*수</div>
				        <div class="swiper-slide">20*목</div>
				        <div class="swiper-slide">21*금</div>
				        <div class="swiper-slide">22*토</div>
				        <div class="swiper-slide">23*일</div>
				        <div class="swiper-slide">24*일</div>
				        <div class="swiper-slide">25*일</div>
				        <div class="swiper-slide">26*일</div>
				        <div class="swiper-slide">27*일</div>
				        <div class="swiper-slide">28*일</div>
				        <div class="swiper-slide">29*일</div>
				        <div class="swiper-slide">30*일</div>
				        <div class="swiper-slide">31*일</div>
				      </div>
				      <div class="swiper-button-next"></div> 
				      <div class="swiper-button-prev"></div>
				    </div>
				</td>
				<td>
					<input type="date">
				</td>
			</tr>
			
			<tr>
				<td>
					영화
				</td>
				<td colspan="2">
					극장
				</td>
				<td>
					시간
				</td>
			</tr>
			
			<tr>
				<td rowspan="2">
					<ul>
						<li>씽2게더</li>
						<li>스파이더맨:노 웨이 홈</li>
						<li>경관의 피</li>
						<li>킹스맨: 퍼스트 에이전트</li>
					</ul>
				</td>
				<td rowspan="2">
					<ul>
						<li>서울(18)</li>
						<li>경기(27)</li>
						<li>인천(5)</li>
						<li>대전/충청/세종(16)</li>
						<li>부산/대구/경상(20)</li>
						<li>광주/전라(9)</li>
						<li>강원(4)</li>
					</ul>
				</td>
				<td rowspan="2">
					<ul>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
					</ul>
				</td>
				<td>
					시간 슬라이드
				</td>
			</tr>
			
			<tr>
				<td>
					<ul>
						<li>선택된 영화 상영시간표 및 정보</li>
						<li>선택된 영화 상영시간표 및 정보</li>
						<li>선택된 영화 상영시간표 및 정보</li>
					</ul>
				</td>
			</tr>
		</table>
	
 </div> <!-- end of wrap -->
	
	 <script>
      var swiper = new Swiper('.swiper', {
        slidesPerView: 10,
        direction: getDirection(),
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        on: {
          resize: function () {
            swiper.changeDirection(getDirection());
          },
        },
      });

      function getDirection() {
        var windowWidth = window.innerWidth;
        var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';

        return direction;
      }
    </script>
</body>
</html>