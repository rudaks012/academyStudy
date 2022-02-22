<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	    border: 2px solid #bebebe;
	    border-radius: 10px;
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
	}
	.tablecategory {
	    padding-left: 10px;
	    top: 3px;
	    font-size: 12px;
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
	    padding-right: 10px;
	    font-weight: bold;
	    font-size: 25px;
	}
	.tableusername {
	    padding-left: 10px;
	    bottom: 35px;
	    
	}
	.tablecontext {
	    padding-left: 10px;                    
	    top: -30px;
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
	<div class="hero-area3 hero-overly2 d-flex align-items-center">
	    <div class="container">
	        <div class="row justify-content-center">
	            <div class="col-xl-8 col-lg-9">
	                <div class="hero-cap text-center pt-50 pb-20">
	                    <h2>서비스 검색</h2>
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
	                                <option value="">온라인 서비스</option>
	                                <option value="">오프라인 서비스</option>
	                            </select>
	                        </div>
	                    </div>
	                    <!-- Search box -->
	                    <div class="search-form">
	                        <a href="searchResult.do">Search</a>
	                    </div>	
	                </form>
	                <div class="row d-flex justify-content-between" style="margin-top: 20px;">
	                    <div class="d-flex">
	                        <div class="primary-checkbox">
	                            <input type="checkbox" id="primary-checkbox1"> <label
	                                for="primary-checkbox1"></label>
	                        </div>
	                        &nbsp;
	                        <span class="category-title">게임 개발</span>
	                    </div>
	                    <div class="d-flex">
	                        <div class="primary-checkbox">
	                            <input type="checkbox" id="primary-checkbox2"> <label
	                                for="primary-checkbox2"></label>
	                        </div>
	                        &nbsp;
	                        <span class="category-title">웹 개발</span>
	                    </div>
	                    <div class="d-flex">
	                        <div class="primary-checkbox">
	                            <input type="checkbox" id="primary-checkbox3"> <label
	                                for="primary-checkbox3"></label>
	                        </div>
	                        &nbsp;
	                        <span class="category-title">카테고리3</span>
	                    </div>
	                    <div class="d-flex">
	                        <div class="primary-checkbox">
	                            <input type="checkbox" id="primary-checkbox4"> <label
	                                for="primary-checkbox4"></label>
	                        </div>
	                        &nbsp;
	                        <span class="category-title">카테고리4</span>
	                    </div>
	                    <div class="d-flex">
	                        <div class="primary-checkbox">
	                            <input type="checkbox" id="primary-checkbox5"> <label
	                                for="primary-checkbox5"></label>
	                        </div>
	                        &nbsp;
	                        <span class="category-title">카테고리5</span>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!--Hero End -->
	<!-- listing Area Start -->
	<div class="popular-location section" style="padding: 70px;">
	    <div class="container">
	        <div class="row d-flex justify-content-center align-items-center">
	            <div class="col-12">
	                <span>'OOO' 에 대한 서비스 검색결과 nn건</span>
	                <div style="float: right;">
	                    <select>
	                        <option selected>인기 순</option>
	                        <option value="1">평점 순</option>
	                        <option value="2">추천 순</option>
	                    </select>
	                </div>
	            </div>
	            <div class="col-12">
	                <div class="searchtable">
	                    <table>
	                        <tbody>
	                            <tr>
	                                <td rowspan="4" class="tableimg"><img class="tableimgs" src="resources/user/assets/img/search-default-profile.jpg"></td>
	                                <td colspan="2" class="position-relative tablecategory">카테고리1 > 카테고리2</td>
	                                <td class="tableinfos">5.0<br>123개의 리뷰</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tabletitle" colspan="3">웹개발해드립니다</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="position-relative tableusername">홍길동</td>
	                                <td class="position-relative tableprice">50,000원</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tablecontext">두줄까지만출력하게끔... 서비스련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용..서비스
	                                    관련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용...</td>
	                                <td class="tablewish"><img src="resources/user/assets/img/hearticcon.png" style="width: 25px; height: 25px;"></td>
	                                <td class="tablebtn"><a href="#" class="genric-btn primary">견적 요청</a></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>                        
	                <br>
	                <div class="searchtable">
	                    <table>
	                        <tbody>
	                            <tr>
	                                <td rowspan="4" class="tableimg"><img class="tableimgs" src="resources/user/assets/img/search-default-profile.jpg"></td>
	                                <td colspan="2" class="position-relative tablecategory">카테고리1 > 카테고리2</td>
	                                <td class="tableinfos">5.0<br>123개의 리뷰</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tabletitle" colspan="3">웹개발해드립니다</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="position-relative tableusername">홍길동</td>
	                                <td class="position-relative tableprice">50,000원</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tablecontext">두줄까지만출력하게끔... 서비스련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용..서비스
	                                    관련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용...</td>
	                                <td class="tablewish"><img src="resources/user/assets/img/hearticcon.png" style="width: 25px; height: 25px;"></td>
	                                <td class="tablebtn"><a href="#" class="genric-btn primary">견적 요청</a></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	                <br>
	                <div class="searchtable">
	                    <table>
	                        <tbody>
	                            <tr>
	                                <td rowspan="4" class="tableimg"><img class="tableimgs" src="resources/user/assets/img/search-default-profile.jpg"></td>
	                                <td colspan="2" class="position-relative tablecategory">카테고리1 > 카테고리2</td>
	                                <td class="tableinfos">5.0<br>123개의 리뷰</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tabletitle" colspan="3">웹개발해드립니다</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="position-relative tableusername">홍길동</td>
	                                <td class="position-relative tableprice">50,000원</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tablecontext">두줄까지만출력하게끔... 서비스련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용..서비스
	                                    관련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용...</td>
	                                <td class="tablewish"><img src="resources/user/assets/img/hearticcon.png" style="width: 25px; height: 25px;"></td>
	                                <td class="tablebtn"><a href="#" class="genric-btn primary">견적 요청</a></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	                <br>
	                <div class="searchtable">
	                    <table>
	                        <tbody>
	                            <tr>
	                                <td rowspan="4" class="tableimg"><img class="tableimgs" src="resources/user/assets/img/search-default-profile.jpg"></td>
	                                <td colspan="2" class="position-relative tablecategory">카테고리1 > 카테고리2</td>
	                                <td class="tableinfos">5.0<br>123개의 리뷰</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tabletitle" colspan="3">[프로모션]웹개발해드립니다</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="position-relative tableusername">홍길동</td>
	                                <td class="position-relative tableprice">50,000원</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tablecontext">두줄까지만출력하게끔... 서비스련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용..서비스
	                                    관련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용...</td>
	                                <td class="tablewish"><img src="resources/user/assets/img/hearticcon.png" style="width: 25px; height: 25px;"></td>
	                                <td class="tablebtn"><a href="#" class="genric-btn primary">견적 요청</a></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	                <br>
	                <div class="searchtable">
	                    <table>
	                        <tbody>
	                            <tr>
	                                <td rowspan="4" class="tableimg"><img class="tableimgs" src="resources/user/assets/img/search-default-profile.jpg"></td>
	                                <td colspan="2" class="position-relative tablecategory">카테고리1 > 카테고리2</td>
	                                <td class="tableinfos">5.0<br>123개의 리뷰</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tabletitle" colspan="3">웹개발해드립니다</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="position-relative tableusername">홍길동</td>
	                                <td class="position-relative tableprice">50,000원</td>
	                            </tr>
	                            <tr>
	                                <td class="position-relative tablecontext">두줄까지만출력하게끔... 서비스련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용..서비스
	                                    관련 내용...서비스 관련 내용...서비스 관련 내용...서비스 관련 내용...</td>
	                                <td class="tablewish"><img src="resources/user/assets/img/hearticcon.png" style="width: 25px; height: 25px;"></td>
	                                <td class="tablebtn"><a href="#" class="genric-btn primary">견적 요청</a></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>     
	            </div>
	        </div>
	    </div>
	</div>        
	<!-- listing-area Area End -->
</body>
</html>