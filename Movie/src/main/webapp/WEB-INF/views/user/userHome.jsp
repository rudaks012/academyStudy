<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

* {
    box-sizing: border-box;
}
.theater-box {
    position: relative;
    display: block;
    width: 100%;
    min-height: 190px;
    border: 3px solid #686571;
    border-radius: 10px;
}


button, input, optgroup, select, textarea {
    margin: 0;
    font-family: inherit;
    font-size: 1em;
    line-height: 1.15;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
li {
    text-align: -webkit-match-parent;
}
ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.theater-box .theater-place>ul>li.on>button {
    color: #fff;
    background-color: black;
}
.theater-box .theater-place>ul>li>button {
    display: block;
    width: 100%;
    height: 48px;
    background: 0 0;
    border: none;
}
[type=button], [type=reset], [type=submit], button {
    -webkit-appearance: button;
}
button {
    cursor: pointer;
    letter-spacing: -.5px;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
button, select {
    text-transform: none;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font-family: inherit;
    font-size: 1em;
    line-height: 1.15;
}
.theater-box .theater-list ul li a {
    color: #444;
   
}
a:link {
    color: #444;
    text-decoration: none;
}
a {
    background-color: transparent;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
button {
    appearance: auto;
    -webkit-writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
<!-- -------------------------------- -->
.theater-box .theater-place>ul>li.on .theater-list {
    display: block;
}
.theater-box .theater-list {
    display: none;
    position: absolute;
    left: 0;
    top: 48px;
    width: 100%;
    min-height: 85px;
    padding: 30px 0;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
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
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.theater-box .theater-place>ul>li.on .theater-list {
    display: block;
}
.theater-box .theater-list {
    display: none;
    position: absolute;
    left: 0;
    top: 48px;
    width: 100%;
    min-height: 85px;
    padding: 30px 0;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
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
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.theater-box .theater-place>ul>li.on .theater-list {
    display: block;
}
.theater-box .theater-list {
    display: none;
    position: absolute;
    left: 0;
    top: 48px;
    width: 100%;
    min-height: 85px;
    padding: 30px 0;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
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
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}

<!-- ------------------------- -->

<!-- -------------li--------------- -->
.theater-box .theater-list ul li a {
    color: #444;
}
a:link {
    color: #444;
    text-decoration: none;
}
a {
    background-color: transparent;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.theater-box .theater-list ul li {
    position: relative;
    float: left;
    width: 25%;
    line-height: 26px;
    text-align: left;
    padding-left: 40px;
}
사용자 에이전트 스타일시트
li {
    text-align: -webkit-match-parent;
}
ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
사용자 에이전트 스타일시트
ul ul {
    list-style-type: circle;
}
사용자 에이전트 스타일시트
ul {
    list-style-type: disc;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    text-align: -webkit-match-parent;
}
사용자 에이전트 스타일시트
ul {
    list-style-type: disc;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
<!-- ----------------------------- -->

.theater-box .theater-list ul {
    overflow: hidden;
    width: 100%;
}
ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
* {
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul ul {
    list-style-type: circle;
    margin-block-start: 0px;
    margin-block-end: 0px;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.theater-box .theater-place>ul>li {
    float: left;
    width: 136px;
    height: 48px;
    line-height: 48px;
    border: 1px solid #e0e0e0;
    border-width: 0 1px 1px 0;
    text-align: center;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    text-align: -webkit-match-parent;
}
사용자 에이전트 스타일시트
ul {
    list-style-type: disc;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
html {
    -webkit-text-size-adjust: 100%;
}
.theater-box .theater-list ul:after {
    display: block;
    clear: both;
    content: '';
}
.pt--100 {
    padding-top: 1px !important;
}
.table-wrap {
    position: relative;
    border-top: 1px solid #555;
        margin-left: 20%;
    margin-right: 20%;
}
.board-list>thead>tr>th {
    height: 45px;
    padding: 3px 10px;
    color: #222;
    border: 1px solid #eaeaea;
    border-width: 0 0 1px 0;
    background-color: #f2f4f5;
    text-align: center;
}
.board-list>tbody>tr>td, .board-list>tbody>tr>th {
    height: 45px;
    padding: 10px;
    border: 1px solid #eaeaea;
    border-width: 0 0 1px 0;
    text-align: center;
}
.board-list {
    line-height: 1.3;
}
.board-list {
    width: 100%;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    border: 0;
    table-layout: fixed;
    border-collapse: collapse;
    empty-cells: show;
    text-align: center;
}
.tit-util .tit {
    float: left;
    padding: 0!important;
    line-height: 1.1;
}
h3.tit {
    margin: 0;
    padding: 0 0 16px 0;
    font-size: 1.6em;
    font-weight: 400;
    color: #503396;
    line-height: 1.1;
     margin-left: 20%;
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
    background: url(https://img.megabox.co.kr/static/pc/images/common/bg/bg-arr-accordion-down.png) no-repeat center;
}



</style>
</head>
<body>
	   <!-- slider area start -->
    
    <!-- slider area end -->
    
    
    
     <!-- fs-about area start -->
     <div id="contents" class="no-padding location-fixed">
    <section class="fs-about-area ptb--100" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-block d-md-none d-lg-block">
                    <div class="fs-abt-right">
                        <img src="assets/images/about/fashion-abt-shape.png" alt="image">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="fs-abt-content">
                        <h2>PHOTOGRAPHY</h2>
                        <h3>
                            <span>IS MY</span> PASSION</h3>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eligendi veritatis eius, illum impedit
                            id vitae!</p>
                        <a class="take-me" href="#contact">An Request</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- fs-about area end -->
    
   
	
    <!-- whatisdo area strat -->
    <section class="work-area pb--80" id="work">
        <div class="container">
        
            <div class="portfolio-menu">
                <h2>전체 극장</h2>
            </div>
            <div class="theater-box" style="height: 344px;">
		<div class="theater-place">
			<ul>

				<li class="">
					<button type="button" class="sel-city">서울</button>

					<div class="theater-list">
						<ul>

							<li data-brch-no="1372"><a href="/theater?brchNo=1372"
								title="강남 상세보기">강남</a></li>

							<li data-brch-no="0023"><a href="/theater?brchNo=0023"
								title="강남대로(씨티) 상세보기">강남대로(씨티)</a></li>


							<li data-brch-no="1562"><a href="/theater?brchNo=1562"
								title="ARTNINE 상세보기">ARTNINE</a></li>

						</ul>
					</div>
				</li>

				<li class="on">
					<button type="button" class="sel-city">경기</button>

					<div class="theater-list">
						<ul>


							<li data-brch-no="4132"><a href="/theater?brchNo=4132"
								title="파주금촌 상세보기">파주금촌</a></li>

							<li data-brch-no="4115"><a href="/theater?brchNo=4115"
								title="파주운정 상세보기">파주운정</a></li>

							<li data-brch-no="4131"><a href="/theater?brchNo=4131"
								title="파주출판도시 상세보기">파주출판도시</a></li>

							<li data-brch-no="4651"><a href="/theater?brchNo=4651"
								title="하남스타필드 상세보기">하남스타필드</a></li>

						</ul>
					</div>
				</li>

				<li class="">
					<button type="button" class="sel-city">인천</button>

					<div class="theater-list">
						<ul>


							<li data-brch-no="4051"><a href="/theater?brchNo=4051"
								title="인천논현 상세보기">인천논현</a></li>

							<li data-brch-no="0027"><a href="/theater?brchNo=0027"
								title="청라지젤 상세보기">청라지젤</a></li>

						</ul>
					</div>
				</li>

				<li class="">
					<button type="button" class="sel-city">대전/충청/세종</button>

					<div class="theater-list">
						<ul>


							<li data-brch-no="3501"><a href="/theater?brchNo=3501"
								title="홍성내포 상세보기">홍성내포</a></li>

						</ul>
					</div>
				</li>

				<li class="">
					<button type="button" class="sel-city">부산/대구/경상</button>

					<div class="theater-list">
						<ul>


							<li data-brch-no="0014"><a href="/theater?brchNo=0014"
								title="창원내서 상세보기">창원내서</a></li>

							<li data-brch-no="6121"><a href="/theater?brchNo=6121"
								title="해운대(장산) 상세보기">해운대(장산)</a></li>

						</ul>
					</div>
				</li>

				<li class="">
					<button type="button" class="sel-city">광주/전라</button>

					<div class="theater-list">
						<ul>


							<li data-brch-no="0021"><a href="/theater?brchNo=0021"
								title="전주혁신 상세보기">전주혁신</a></li>

							<li data-brch-no="5064"><a href="/theater?brchNo=5064"
								title="첨단 상세보기">첨단</a></li>

						</ul>
					</div>
				</li>

				<li class="">
					<button type="button" class="sel-city">강원</button>

					<div class="theater-list">
						<ul>

							<li data-brch-no="2001"><a href="/theater?brchNo=2001"
								title="남춘천 상세보기">남춘천</a></li>

							<li data-brch-no="2171"><a href="/theater?brchNo=2171"
								title="속초 상세보기">속초</a></li>

							<li data-brch-no="2201"><a href="/theater?brchNo=2201"
								title="원주 상세보기">원주</a></li>

							<li data-brch-no="2202"><a href="/theater?brchNo=2202"
								title="원주센트럴 상세보기">원주센트럴</a></li>

						</ul>
					</div>
				</li>

			</ul>
		</div>


	</div>
	
          
        </div>
    </section>
    
    <!-- whatisdo area end -->

    <!-- testimonial area start -->
   
    <!-- testimonial area end -->
    <!-- feature blog area start -->
    <section class="feature-blog pt--100" id="blog">
        <div class="container">
            <div class="section-title">
                <span>주의</span>
                <h2>영화 포스터</h2>
            </div>
            <div class="row">
            <c:forEach items="${movie }" var="movie" >
		
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog">
                        <div class="blog-content">
                            <span>${movie.mtitle }</span>
                            <span>개봉일 ${movie.opendate }</span>
                        </div>
                        <div class="blog-thumb">
                            <img src="resources/movieposter/${movie.filename }" alt="">
                            <a href="blog.html" class="read-more">바로 가기
                                <i class="fa fa-long-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
            </div>
             <br>
    <br>
    <br>
    <br>
    <br>
        </div>
    </section>
    
  
    <!-- feature blog area end -->
      <h3 class="tit">극장 공지사항</h3>
    <div class="table-wrap">
   
				<table class="board-list">
					<colgroup>
						<col style="width:150px;">
						<col>
						<col style="width:150px;">
						<col style="width:120px;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성일자</th>
						</tr>
					</thead>
						
					<tbody>
				 <c:forEach items="${notice }" var="notice" >
									<tr>
										<td>${notice.nocode }</td>
										<th scope="row">
											<a href="/support/notice/detail?artiNo=10472&amp;bbsNo=9" title="${notice.notitle } 상세보기">
												${notice.notitle }
											</a>
										</th>
										<td>${notice.nodate }</td>
									</tr>
									
				</c:forEach>
					</tbody>
				</table>
				<br>
				<br>
				<br>
				<br>
			</div>

   
    
    
	
	</div>
</body>
	<script >


		// 전체극장 > 지역 선택
		$('.sel-city').on('click', function() {

			$("div.theater-place li.on").removeClass('on');
			$(this).parent().addClass('on');

			var _h1 = $('.user-theater').outerHeight();
			var _h2 = $('.theater-place').outerHeight();
			var _h0 = $("div.theater-place li.on .theater-list").outerHeight();
			var _hAll = _h0 + _h1 + _h2;

			$('.theater-box').outerHeight(_hAll);
		});
		
</script>
</html>