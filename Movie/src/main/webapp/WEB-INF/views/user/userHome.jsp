<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


</style>
</head>
<body>
	   <!-- slider area start -->
    <section class="photography-slider swiper-container" id="home">
        <div class="swiper-wrapper">
            <div class="swiper-slide ph-slider-item" style="background: url(assets/images/slider/photography-bg1.jpg) center/cover no-repeat">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="ph-slider-content">
                                <h4 data-swiper-parallax-duration="600" data-swiper-parallax="-100" data-swiper-parallax-opacity="0.5">We are Creative</h4>
                                <h2 data-swiper-parallax-duration="600" data-swiper-parallax="-200" data-swiper-parallax-opacity="0.5">Photographer</h2>
                                <p data-swiper-parallax-duration="600" data-swiper-parallax="-300" data-swiper-parallax-opacity="0.5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus dolores quam atque sit ipsa
                                    voluptatum cupiditate illo obcaecati dolorum modi.</p>
                                <a data-swiper-parallax-duration="600" data-swiper-parallax="-400" data-swiper-parallax-opacity="1" href="#">Read More
                                    <i class="fa fa-long-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide ph-slider-item" style="background: url(assets/images/slider/photography-bg2.jpg) center/cover no-repeat">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="ph-slider-content">
                                <h4 data-swiper-parallax-duration="600" data-swiper-parallax="-100" data-swiper-parallax-opacity="0.5">We are Creative</h4>
                                <h2 data-swiper-parallax-duration="600" data-swiper-parallax="-200" data-swiper-parallax-opacity="0.5">Photographer</h2>
                                <p data-swiper-parallax-duration="600" data-swiper-parallax="-300" data-swiper-parallax-opacity="0.5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus dolores quam atque sit ipsa
                                    voluptatum cupiditate illo obcaecati dolorum modi.</p>
                                <a data-swiper-parallax-duration="600" data-swiper-parallax="-400" data-swiper-parallax-opacity="1" href="#">Read More
                                    <i class="fa fa-long-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ph-button-prev"></div>
        <div class="ph-button-next"></div>
        <div class="ph-pagination"></div>
    </section>
    <!-- slider area end -->
    
    
    
     <!-- fs-about area start -->
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
	
	
	
    <!-- whatisdo area strat -->
    <section class="work-area pb--80" id="work">
        <div class="container">
            <div class="portfolio-menu">
                <h2>Our work</h2>
                <div class="prt-menu">
                    <button class="active" data-filter="*">All</button>
                    <button data-filter=".wedding">Wedding</button>
                    <button data-filter=".music">Music</button>
                    <button data-filter=".fashion">Fashion</button>
                </div>
            </div>
            <div class="work-masonary row" id="container">
                <div class="wrk-item wedding col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img1.jpg">
                            <img src="assets/images/gallery/photography/img1.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item music col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img2.jpg">
                            <img src="assets/images/gallery/photography/img2.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item wedding col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img3.jpg">
                            <img src="assets/images/gallery/photography/img3.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item wedding col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img4.jpg">
                            <img src="assets/images/gallery/photography/img4.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item fashion col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img5.jpg">
                            <img src="assets/images/gallery/photography/img5.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item wedding col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img1.jpg">
                            <img src="assets/images/gallery/photography/img6.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item music col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img2.jpg">
                            <img src="assets/images/gallery/photography/img7.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item wedding col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img3.jpg">
                            <img src="assets/images/gallery/photography/img8.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
                <div class="wrk-item fashion col-md-4">
                    <div class="work-item">
                        <a class="expand-img" href="assets/images/gallery/photography/img4.jpg">
                            <img src="assets/images/gallery/photography/img9.jpg" alt="image">
                        </a>
                        <div class="info">
                            <h4>Wedding Photo</h4>
                            <span>02,Jun 2018</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- whatisdo area end -->

    <!-- testimonial area start -->
    <section class="testimonial-area bg-gray pos-rel ptb--100" id="testimonial">
        <div class="container">
            <div class="tst-title">
                <h2>Testimonial</h2>
                <p>what people says about Lavaland</p>
            </div>
            <div class="row">
                <div class="col-xl-10">
                    <div class="testimonials-carousel swiper-container">
                        <div class="swiper-wrapper">
                            <div class="tst-item swiper-slide">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque ducimus sed eum excepturi
                                    impedit, illo accusantium debitis vel error explicabo libero expedita, maiores iusto
                                    ab?
                                </p>
                                <strong>Lincoln Skiles
                                    <span> / Developer</span>
                                </strong>
                            </div>
                            <div class="tst-item swiper-slide">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque ducimus illo accusantium
                                    debitis vel error explicabo libero expedita, maiores iusto ab?</p>
                                <strong>Abdullah Wilderman
                                    <span> / Strategist</span>
                                </strong>
                            </div>
                            <div class="tst-item swiper-slide">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque eum excepturi impedit,
                                    illo accusantium debitis vel error explicabo libero expedita, maiores iusto ab?</p>
                                <strong>Baron Kshlerin
                                    <span> / Administrator</span>
                                </strong>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
            <div class="right-thumb">
                <img src="assets/images/testimonial/tst-yoga-right-thumb2.png" alt="image">
            </div>
        </div>
    </section>
    <!-- testimonial area end -->
    <!-- feature blog area start -->
    <section class="feature-blog pt--100" id="blog">
        <div class="container">
            <div class="section-title">
                <span>Read</span>
                <h2>Our Letest News</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog">
                        <div class="blog-content">
                            <h2>
                                <a href="blog.html">Everyday it provides me with exactly what I need</a>
                            </h2>
                            <span>June 18, 2017</span>
                        </div>
                        <div class="blog-thumb">
                            <img src="assets/images/blog/photography-blog/photography-blog-img1.jpg" alt="">
                            <a href="blog.html" class="read-more">Read More
                                <i class="fa fa-long-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog">
                        <div class="blog-content">
                            <h2>
                                <a href="blog.html">Everyday it provides me with exactly what I need</a>
                            </h2>
                            <span>June 18, 2017</span>
                        </div>
                        <div class="blog-thumb">
                            <img src="assets/images/blog/photography-blog/photography-blog-img2.jpg" alt="">
                            <a href="blog.html" class="read-more">Read More
                                <i class="fa fa-long-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog">
                        <div class="blog-content">
                            <h2>
                                <a href="blog.html">Everyday it provides me with exactly what I need</a>
                            </h2>
                            <span>June 18, 2017</span>
                        </div>
                        <div class="blog-thumb">
                            <img src="assets/images/blog/photography-blog/photography-blog-img3.jpg" alt="">
                            <a href="blog.html" class="read-more">Read More
                                <i class="fa fa-long-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- feature blog area end -->

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
                            <li>
                                <i class="fa fa-map-marker"></i>Race Event BeFaster, UK, 2292 Peachtree Rd NW</li>
                            <li>
                                <i class="fa fa-phone"></i>+1 123 456 8798</li>
                            <li>
                                <i class="fa fa-envelope"></i>user@gmail.com</li>
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