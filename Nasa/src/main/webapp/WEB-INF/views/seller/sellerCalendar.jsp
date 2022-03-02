<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='resources/user/fullcalendar-5.10.1/lib/main.css' rel='stylesheet' />
<style>
    #calendar {
        width: 800px;
        height: 500px;
    }

    .servicetable {
        width: 800px;
    }

    .imgtd {
        width: 200px;
        height: 200px;
    }

    .thtext {
        top: 10px;
        font-size: 20px;
    }

    .tdtext {
        bottom: 10px;
    }
</style>
<script src='resources/user/fullcalendar-5.10.1/lib/main.js'></script>
</head>
<body>
<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="hero-cap text-center pt-50">
                    <h2>일정관리</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Hero End -->
<!--================Blog Area =================-->
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
										<p style="font-weight: bold;">일정관리</p>
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
										<p>판매자 노하우</p>
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
                            <div class="blog_details">
                                <!-- 달력 자리 -->
                                <div id='calendar'></div>
                                <br>
                                <a class="d-inline-block">
                                    <h2>현재 진행중인 서비스</h2>
                                </a>
                                <table class="servicetable">
                                    <tbody>
                                        <tr class="thtext position-relative">
                                            <th rowspan="4" class="imgtd"><img src="resources/user/assets/img/search-default-profile.jpg" style="height: 150px; width: 150px;"></td>
                                            <th>서비스 명</th>
                                            <th colspan="2">판매자명</th>                                                
                                        </tr>
                                        <tr class="tdtext position-relative">
                                            <td>웹개발해드립니다</td>
                                            <td colspan="2">IT고수</td>                                                
                                        </tr>
                                        <tr class="thtext position-relative">
                                            <th>진행 상황</th>
                                            <th>거래 기간</th>
                                            <th>거래 금액</th>                                            
                                        </tr>
                                        <tr class="tdtext position-relative">
                                            <td>진행 중</td>
                                            <td>2022-01-14~2022-01-15</td>
                                            <td>10,000,000원</td>
                                        </tr>                                        
                                    </tbody>
                                </table>
                            </div>                                                       
                        </div>                        
                    </article>
                </div>
            </div>            
        </div>
    </div>
</section>
<script>
    // 수정할 것...
    document.addEventListener('DOMContentLoaded', function () {
        let xhtp = new XMLHttpRequest();
        xhtp.open('get', 'CalendarList.do');
        xhtp.send();
        xhtp.onload = function () {
            let dbData = JSON.parse(xhtp.responseText);
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                dayMaxEvents: true, // allow "more" link when too many events
                events: dbData
            });
            calendar.render();
        }
    });
</script>
</body>
</html>