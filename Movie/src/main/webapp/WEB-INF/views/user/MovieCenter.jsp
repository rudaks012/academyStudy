<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        .container {
            width: 1200px;
            display: block;
            margin-left: auto;
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
            width: 220px;
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

<!-- -->

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
    </style>
</head>

<body>

    <div class="container">
        <br>
        <h2>전체극장</h2>
        <ul class="tabs-citys">
            <li class="tab-city current1" data-tab="citys1">서울</li>
            <li class="tab-city" data-tab="citys2">경기</li>
            <li class="tab-city" data-tab="citys3">인천</li>
            <li class="tab-city" data-tab="citys4">대전</li>
            <li class="tab-city" data-tab="citys5">충청</li>
            <li class="tab-city" data-tab="citys6">부산</li>
            <li class="tab-city" data-tab="citys7">광주</li>
            <li class="tab-city" data-tab="citys8">강원</li>

            <div id=citys1 class="tab-content city">
                서울데이터
            </div>
            <div id=citys2 class="tab-content city">
                경기데이터
            </div>
            <div id=citys3 class="tab-content city">
                인천데이터
            </div>
            <div id=citys4 class="tab-content city">
                대전데이터
            </div>

        </ul>
        <h1 align="center">대구 신세계(동대구)</h1>
        <hr class="one">
        <br>
        <ul class="tabs">
            <li class="tab-link current" data-tab="tab-1" id="boxoffice">극장정보</li>
            <li class="tab-link" data-tab="tab-2" id="openexpected">상영시간표</li>
            <li class="tab-link" data-tab="tab-3" id="special">관람료</li>
        </ul>
        <br>

        <div id="tab-1" class="tab-content current">
            <h4>메가박스가 대구지역 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</h4>
            <h4>전 좌석 가죽시</h4>
            <h5>최고 수준의 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</h5>
            <hr class="one">

            <h2>시설안내</h2>
            <h4>보유시설</h4>
        </div>
        <div id="tab-2" class="tab-content">
            <p>상영시간표</p>
        </div>
        <div id="tab-3" class="tab-content">
            <p>관람료</p>
        </div>
    </div>


    <script>
        $(document).ready(function () {
            $('ul.tabs li').click(function () {
                var tab_id = $(this).attr('data-tab');

                $('ul.tabs li').removeClass('current');
                $('.tab-content').removeClass('current');

                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
            });
        });

        $(document).ready(function () {
            $('ul.tabs-citys li').click(function () {
                var tab_id = $(this).attr('data-tab');

                $('ul.tabs-citys li').removeClass('current');
                $('.tab-content').removeClass('current');

                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
            });
        });
    </script>
</body>


</html>