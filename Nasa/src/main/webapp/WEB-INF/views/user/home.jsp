<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
   <title>Home</title>
   <style>
       .cardimg {
           height: 80px;
       }
       .cardmain {
           border: none;           
       }
       .cardcate {
           text-align: center;
       }
   </style>
</head>
<body>
<!-- Hero Start-->
<div class="hero-area3 hero-overly2 d-flex align-items-center ">
    <div class="container" style="margin-top: 65px;">
        <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-9">
                <div class="hero-cap text-center pt-50 pb-20">
                    <h2>NASA</h2>
                </div>
                <!--Hero form -->
                <form action="#" class="search-box search-box2">
                    <div class="input-form">
                        <input type="text" placeholder="어떤 서비스가 필요하세요?">
                    </div>
                    <div class="select-form">
                        <div class="select-itms">
                            <select name="select" id="select1">
                                <option value="">통합검색</option>
                                <option value="">앱</option>
                                <option value="">웹</option>
                                <option value="">게임</option>
                                <option value="">보안</option>
                                <option value="">기술지원</option>
                                <option value="">기획</option>
                            </select>
                        </div>
                    </div>
                    <!-- Search box -->
                    <div class="search-form">
                        <a href="searchResult.do">Search</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--Hero End -->
<!-- Popular Locations Start -->
<div class="popular-location section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Section Tittle -->
                <div class="col-lg-12 col-md-6 col-sm-6" style="margin-top: 30px;">
                    <div class="h1-testimonial-active">
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="single-location mb-30">
                                <div class="location-img">
                                    <img src="resources/user/assets/img/event1.png" alt="">
                                </div>
                                <div class="location-details">
                                    <p>메인 이벤트</p>
                                    <a href="#" class="location-btn"> <i class="ti-plus"></i>더보기</a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Testimonial -->
                        <div class="single-testimonial text-center">
                            <!-- Testimonial Content -->
                            <div class="single-location mb-30">
                                <div class="location-img">
                                    <img src="resources/user/assets/img/event2.png" alt="">
                                </div>
                                <div class="location-details">
                                    <p>메인 이벤트</p>
                                    <a href="#" class="location-btn"> <i class="ti-plus"></i>더보기</a>
                                </div>
                            </div>
                        </div>
                    </div>                            
                </div>                        
            </div>
        </div>                
    </div>
</div>
<div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row d-flex justify-content-between mx-5" style="margin-top: 30px;">
                    <div class="cardmain" >
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/app.png" alt="" class="cardimg"> 
                            </div>
                            <br>                      
                            <div class="cardcate cat-cap"><p>앱 개발</p></div>
                        </div>
                    </div>
                    <div class="cardmain">
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/web.png" alt="" class="cardimg"> 
                            </div>
                            <br>
                            <div class="cardcate cat-cap"><p>웹 개발</p></div>
                        </div>
                    </div>
                    <div class="cardmain">
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/game.png" alt="" class="cardimg"> 
                            </div>
                            <br>
                            <div class="cardcate cat-cap"><p>게임 개발</p></div>
                        </div>
                    </div>
                    <div class="cardmain">
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/secu.png" alt="" class="cardimg"> 
                            </div>
                            <br>
                            <div class="cardcate cat-cap"><p>보안</p></div>
                        </div>
                    </div>
                    <div class="cardmain">
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/support.png" alt="" class="cardimg"> 
                            </div>
                            <br>
                            <div class="cardcate cat-cap"><p>기술 지원</p></div>
                        </div>
                    </div>
                    <div class="cardmain">
                        <div class="card-body">
                        	<div>
                                <img src="resources/user/assets/img/maincate/project.png" alt="" class="cardimg"> 
                            </div>
                            <br>
                            <div class="cardcate cat-cap"><p>기획</p></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="categories-area section">
    <div class="container">                
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center mb-80" style="margin: 80px; margin-bottom: 30px;">
                    <span>Power Service</span>
                    <h2>파워 서비스</h2>
                </div>
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col-12">
                <div class="h1-testimonial-active">
                    <!-- Single Testimonial -->
                    <div class="single-testimonial text-center">
                        <!-- Testimonial Content -->
                        <div class="testimonial-caption d-flex" style="margin-left: 5px; margin-right: 5px;">
                            <c:forEach items="${powerlist }" var="power" begin="0" end="3" step="1">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="single-cat text-center mb-50" style="height: 300px; padding: 30px;">
                                        <div>
                                            <c:choose>
                                                <c:when test="${empty power.s_img }">
                                                    <img src="resources/user/assets/img/profile/defaultprofileimg.png" alt="" style="width: 82px; height: 82px; display: block; margin: 0px auto;">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${power.s_img }" alt="" style="width: 82px; height: 82px; display: block; margin: 0px auto;">
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="cat-cap" style="padding: 10px;">
                                            <h5><a href="catagori.html">${power.s_nickname }</a></h5>
                                            <p>${power.power_service }</p>
                                            <a href="catagori.html">상세보기</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Single Testimonial -->
                    <div class="single-testimonial text-center">
                        <!-- Testimonial Content -->
                        <div class="testimonial-caption d-flex" style="margin-left: 5px; margin-right: 5px;">
                            <c:forEach items="${powerlist }" var="power" begin="4" end="7" step="1">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="single-cat text-center mb-50" style="height: 300px; padding: 30px;">
                                        <div>
                                            <c:choose>
                                                <c:when test="${empty power.s_img }">
                                                    <img src="resources/user/assets/img/profile/defaultprofileimg.png" alt="" style="width: 82px; height: 82px; display: block; margin: 0px auto;">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${power.s_img }" alt="" style="width: 82px; height: 82px; display: block; margin: 0px auto;">
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="cat-cap" style="padding: 10px;">
                                            <h5><a href="catagori.html">${power.s_nickname }</a></h5>
                                            <p>${power.power_service }</p>
                                            <a href="catagori.html">상세보기</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- peoples-visit Start -->
<div class="peoples-visit dining-padding-top">
    <!-- Single Left img -->
    <div class="single-visit left-img">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-lg-8">
                    <div class="visit-caption">
                        <span>You may also like this</span>
                        <h3>이런 서비스는 어떠세요?</h3>
                        <p>고객님의 관심사에 맞추어 자동으로 추천되는 서비스입니다.</p>
                        <!--Single Visit categories -->
                        <div class="visit-categories mb-40">
                            <div class="visit-location">
                                <span class="flaticon-travel"></span>
                            </div>
                            <div class="visit-cap">
                                <h4>웹개발꽁짜로가르쳐드립니다~</h4>
                                <p>[카테고리1] - [카테고리2]</p>
                                <p>판매자 홍길동 님</p>
                                <br>
                                <a href="#" class="genric-btn primary">Read More</a>
                            </div>
                        </div>
                        <br>
                        <!--Single Visit categories -->
                        <div class="visit-categories">
                            <div class="visit-location">
                                <span class="flaticon-work"></span>
                            </div>
                            <div class="visit-cap">
                                <h4>CSS 전문가의 1대1 과외</h4>
                                <p>[카테고리1] - [카테고리2]</p>
                                <p>판매자 김기자 님</p>
                                <br>
                                <a href="#" class="genric-btn primary">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- peoples-visit End -->
<!-- Popular Locations End -->
<div class="popular-location section" style="margin-top: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!-- Section Tittle -->
                <div class="section-tittle text-center mb-80" style="margin: 80px; margin-bottom: 30px;">
                    <span>Most Popular Service</span>
                    <h2>인기있는 서비스</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${bestservicelist }" var="bestservice" begin="0" end="2" step="1">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-location mb-30">
                        <div class="location-img">
                            <img src="fileupload/${bestservice.ser_img }" alt="">                            
                        </div>
                        <div class="location-details">
                            <p>${bestservice.ser_title }</p>
                            <a href="#" class="location-btn">상세보기</a>
                        </div>
                    </div>
                </div>
            </c:forEach>            
        </div>
    </div>
</div>
<div class="listing-details-area">
    <div class="container">                
        <div class="row">
            <div class="col-lg-12">
                <!-- Section Tittle -->
                <div class="section-tittle text-center mb-80" style="margin: 80px; margin-bottom: 30px;">
                    <span>Most Popular Seller</span>
                    <h2>인기있는 판매자</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-listing mb-30">
                    <div class="list-img">
                        <img src="resources/user/assets/img/gallery/list1.png" alt="">
                        <!-- <span>Open</span> -->
                    </div>
                    <div class="list-caption">
                        <span>Open</span>
                         <h3><a href="listing_details.html">Saintmartine</a></h3>
                        <p>700/D, Kings road, Green lane, 85/ London</p>
                        <div class="list-footer">
                            <ul>
                                <li>+10 278 367 9823</li>
                                <li>contact@midnight.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-listing mb-30">
                    <div class="list-img">
                        <img src="resources/user/assets/img/gallery/list2.png" alt="">
                        <!-- <span>Open</span> -->
                    </div>
                    <div class="list-caption">
                        <span>Open</span>
                         <h3><a href="listing_details.html">Saintmartine</a></h3>
                        <p>700/D, Kings road, Green lane, 85/ London</p>
                        <div class="list-footer">
                            <ul>
                                <li>+10 278 367 9823</li>
                                <li>contact@midnight.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-listing mb-30">
                    <div class="list-img">
                        <img src="resources/user/assets/img/gallery/list3.png" alt="">
                        <!-- <span>Open</span> -->
                    </div>
                    <div class="list-caption">
                        <span>Open</span>
                         <h3><a href="listing_details.html">Saintmartine</a></h3>
                        <p>700/D, Kings road, Green lane, 85/ London</p>
                        <div class="list-footer">
                            <ul>
                                <li>+10 278 367 9823</li>
                                <li>contact@midnight.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Categories Area Start -->
<div class="categories-area section">
    <div class="container" style="margin-bottom: 30px;">
        <div class="row">
            <div class="col-lg-12">
                <!-- Section Tittle -->
                <div class="section-tittle text-center mb-80" style="margin: 80px; margin-bottom: 30px;">
                    <span>Seller's Know-how</span>
                    <h2>판매자의 노하우</h2>
                </div>
            </div>
        </div>
        <div class="row">                    
            <div class="section-top-border">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-defination">
                            <h4 class="mb-20">글제목</h4>
                            <p>글내용 ...css처리하기</p>
                                <a href="#" class="genric-btn primary">Read More</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-defination">
                            <h4 class="mb-20">Definition 02</h4>
                            <p>Recently, the US Federal government banned online casinos from operating in America by
                                making it illegal to
                                transfer money to them through any US bank or payment system. As a result of this law,
                                most of the popular
                                online casino networks</p>
                                <a href="#" class="genric-btn primary">Read More</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-defination">
                            <h4 class="mb-20">Definition 03</h4>
                            <p>Recently, the US Federal government banned online casinos from operating in America by
                                making it illegal to
                                transfer money to them through any US bank or payment system. As a result of this law,
                                most of the popular
                                online casino networks</p>
                                <a href="#" class="genric-btn primary">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>                
    </div>
</div>
</body>
</html>