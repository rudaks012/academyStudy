<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
       	cursor: pointer;

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
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate var="now" value="${today}" pattern="yyMMdd" />
<fmt:parseDate var="bdate" value="${board.bdate2}" pattern="yyMMdd" />
<fmt:formatDate var="bdate" value="${bdate}" pattern="yyMMdd" />

	<div class="wrap">
		<div id="title"><p>빠른예매</p></div>
		
		<table class="ticket_tb">	
			<tr id="first_tr">
				<td colspan="3">
					<div class="swiper">
				      <div class="swiper-wrapper">      
				        <div class="swiper-slide">${bdate= now}</div>
				        <div class="swiper-slide">${bdate= now+1}</div>
				        <div class="swiper-slide">${bdate= now+2}</div>
				        <div class="swiper-slide">${bdate= now+3}</div>
				        <div class="swiper-slide">${bdate= now+4}</div>
				        <div class="swiper-slide">${bdate= now+5}</div>
				        <div class="swiper-slide">${bdate= now+6}</div>
				        <div class="swiper-slide">${bdate= now+7}</div>
				        <div class="swiper-slide">${bdate= now+8}</div>
				        <div class="swiper-slide">${bdate= now+9}</div>
				        <div class="swiper-slide">${bdate= now+10}</div>
				        <div class="swiper-slide">${bdate= now+11}</div>
				        <div class="swiper-slide">${bdate= now+12}</div>
				        <div class="swiper-slide">${bdate= now+13}</div>
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
				 <c:forEach items="${movies}" var="movie">
					<ul>
						<li>${movie.mtitle }</li>
					</ul>
					 </c:forEach> 
				</td>
				<td rowspan="2">
				 <c:forEach items="${cinema }" var="cinema">
					<ul>
						<li>${cinema.cinArea }(${cinema.count})</li>
						
					</ul>
					</c:forEach>
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