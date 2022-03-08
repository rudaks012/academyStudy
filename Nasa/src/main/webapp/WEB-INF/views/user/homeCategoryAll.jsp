<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        .category-title {
            color: white;
            font-weight: bold;
        }

        .searchtable {
            border: 1.5px solid #e8e8e8;
            border-radius: 8px;
        }
        .searchtable:hover {
            background: #fbf9ff;
        }

        table {
            width: 100%;
            height: 200px;
        }

        th,
        td {
            border: none;
        }

        .tableimg {
            text-align: center;
            width: 200px;
            height: 200px;
        }

        .tableimgs {
            width: 170px;
            height: 170px;
            border-radius: 8px;
        }

        .tablecategory {
            padding-left: 10px;
    		font-size: 13px;
    		font-weight: bold;
        }

        .tableinfos {
            text-align: right;
            padding: 10px;
        }

        .tabletitle {
            font-size: 25px;
            font-weight: bold;
            padding-left: 10px;
            bottom: 23px;
        }

        .tableprice {
            top: 5px;
            left: 20px;
            padding-right: 30px;
            font-weight: bold;
            font-size: 25px;
            text-align: right;
        }

        .tableusername {
            padding-left: 10px;
            bottom: 35px;

        }

        .tablecontext {
            padding-left: 10px;
            top: -30px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            max-width: 80px;
        }

        .tablewish {
            text-align: right;
            padding-right: 10px;
        }

        .tablebtn {
            width: 135px;
            text-align: right;
            padding-right: 10px;
            padding-bottom: 10px;
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
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">NASA SERVICE</h4>
                            <ul class="list cat-list">
                            	<li>
                                    <a href="homeCategoryAll.do" class="d-flex">
                                        <p id="cat0" style="font-weight: bold;">전체 서비스</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT1" class="d-flex">
                                        <p id="cat1">앱 개발</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT2" class="d-flex">
                                        <p id="cat2">웹 개발</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT3" class="d-flex">
                                        <p id="cat3">게임 개발</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT4" class="d-flex">
                                        <p id="cat4">보안</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT5" class="d-flex">
                                        <p id="cat5">기술 지원</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="homeCategory.do?ser_cate=CAT6" class="d-flex">
                                        <p id="cat6">기획</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>                
                <div class="col-9">
                    <div class="position-relative d-flex justify-content-between">
                        <div class="ml-4" style="margin-bottom: 10px;">
                            <h3 style="font-weight: bold;">전체 서비스</h3>
                        </div>
                        <select class="mr-3">
                                <option value="" selected>등록 순</option>
                                <option value="1">인기 순</option>
                                <option value="2">추천 순</option>
                        </select>
                    </div>
                    <div class="blog_left_sidebar">
                        <article class="blog_item">
                            <div class="justify-content-center">
                                <div class="blog_details" style="padding: 50px 10px 30px 10px;">
                                    <div class="col-12">
                                        
                                    </div>
                                    <div class="col-12">
                                                                                
                                        <c:forEach items="${allservicelist }" var="all">
                                            <div class="searchtable" style="margin-bottom: 10px; cursor:pointer;" onclick="location.href='serviceDetail.do?ser_code=${all.ser_code }'">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td rowspan="4" class="tableimg">
                                                                <img class="tableimgs" src="fileupload/${all.ser_img }">
                                                            </td>
                                                            <td colspan="2" class="position-relative tablecategory">${all.category } > ${all.sub_category }</td>
                                                            <td class="tableinfos">평점 : ${all.reviewavg }<br>${all.reviewcount }개의 리뷰</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="position-relative tabletitle" colspan="3">${all.ser_title }</td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" class="position-relative tableusername">${all.nickname }</td>
                                                            <td class="position-relative tableprice" style="text-align: right;">${all.ser_price }원</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="position-relative tablecontext">${all.ser_sub }</td>
                                                            <td class="tablewish"></td>
                                                            <td class="tablebtn">
                                                                <c:if test="${not empty all.pro_code }">
                                                                    <img src="resources/user/assets/img/promotion.png" style="width: 100px;">
                                                                </c:if>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->    
</body>

</html>