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
									<p >서비스 관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p>프로모션 관리</p>
								</a></li>
								<li><a href="powerservice.do" class="d-flex">
										<p>파워서비스 내역</p>
								</a></li>
								<li><a href="sellerCalendar.do" class="d-flex">
										<p style="font-weight: bold;">일정 관리</p>
								</a></li>
								<li><a href="sellerReview.do?scode=0" class="d-flex">
										<p>리뷰 관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p>결제 조회</p>
								</a></li>
								<li><a href="sellerSales.do" class="d-flex">
										<p>매출 확인</p>
								</a></li>
								<li><a href="sellerReport.do" class="d-flex">
										<p>신고 관리</p>
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
                            <div class="blog_details">
                                <!-- 달력 자리 -->
                                <div id='calendar'></div>
                                <br>
                                <a class="d-inline-block">
                                    <h2>일정 조회</h2>
                                </a>
                                <table class="servicetable">
                                    <tbody>
                                        <tr>
                                            <th rowspan="5" class="imgtd" style="text-align: center;"><img id="ser_img"
                                                    src="resources/user/assets/img/search-default-profile.jpg"
                                                    style="height: 175px; width: 175px; border-radius: 8px;"></td>
                                            <th>서비스 : </th>
                                            <td><a id="ser_title"></a></th>
                                        </tr>
                                        <tr>
                                            <th>카테고리 : </th>
                                            <td id="cate"></td>
                                        </tr>
                                        <tr>
                                            <th>판매자 : </th>
                                            <td><a id="s_nickname"></a></td>
                                        </tr>
                                        <tr>
                                            <th>가 격 : </th>
                                            <td id="pay_price_tochar"></td>
                                        </tr>
                                        <tr>
                                            <th>기 간 : </th>
                                            <td id="paydate"></td>
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
        xhtp.open('get', 'CalendarListS.do');
        xhtp.send();
        xhtp.onload = function () {
            let dbData = JSON.parse(xhtp.responseText);
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {

                initialView: 'dayGridMonth',
                dayMaxEvents: true, // allow "more" link when too many events               
                locale: 'kor',
                eventClick: function () {
                    getCalServList();
                },
                events: dbData
            });
            calendar.render();

            function getCalServList() {                
                var ser_title = $(event.target).text();
                var info = dbData.find(function (data) {
                    return data.title === ser_title
                });
                var pay_code = info.pay_code;

                $.ajax({
                    url: "ajaxGetCalServListS.do",
                    type: "post",
                    data: {
                        "ser_title": ser_title,
                        "pay_code": pay_code
                    },
                    success: function (data) {
                        console.log("여기주목밑에밑에");
                        console.log(data);
                        $("#ser_title").text(data.ser_title);
                        $("#ser_title").attr("onclick", "location.href='serviceDetail.do?ser_code=" + data.s_code + "'");
                        $("#ser_title").attr("style", "cursor:pointer; background-color: #dddddd;");  
                        $("#cate").text(data.category + " > " + data.sub_category);
                        $("#s_nickname").text(data.s_nickname);
                        $("#s_nickname").attr("onclick", "location.href='sellerDetail.do?s_email=" + data.s_email + "'");
                        $("#s_nickname").attr("style", "cursor:pointer; background-color: #dddddd;");  
                        $("#pay_price_tochar").text(data.pay_price_tochar + "원");
                        $("#ser_img").attr("src", "fileupload/" + data.ser_img);
                        $("#paydate").text(data.event_start + " ~ " + data.event_end_original);

                    }
                })
            }
        }
    });
</script>
</body>
</html>