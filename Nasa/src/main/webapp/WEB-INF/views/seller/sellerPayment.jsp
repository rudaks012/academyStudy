<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 조회</title>
<style>
.fables-single-item {
	color: rgb(64, 64, 64);
}

.fables-single-item:hover {
	background-color: tomato;
}

.nav-link.active {
	background-color: tomato !important;
	color: white !important;
}

input[type=date] {
	border: 1px solid lightgray;
	color: lightgray;
	margin-right: 10px;
}

.paybtn {
	margin-right: 10px;
}
.hr{
 	background-color : #d5c9ea !important;
   	margin: 10px !important;
}


</style>
</head>
<body>
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>결제 조회</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


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
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p>리뷰관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p style="font-weight: bold;">결제조회</p>
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
								<a class="d-inline-block" style="margin-top:20px;">
										<h3>결제 조회</h3>
									</a>
								<hr class="hr"/>
								<div class="blog_details">
									<div>
										<div class="container" style="padding: 0;">
											<nav class="fables-single-nav">
												<div class="nav nav-tabs" id="nav-tab" role="tablist">
													<a
														class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after px-3 px-md-5 font-15 semi-font border-0 active rounded-0 py-3"
														id="nav-desc-tab" data-toggle="tab" href="#nav-desc"
														role="tab" aria-controls="nav-desc" aria-selected="true">정산
														대기 거래</a> <a
														class="fables-single-item nav-link fables-forth-text-color fables-second-active fables-second-hover-color fables-forth-after border-0 px-3 px-md-5 font-15 semi-font rounded-0 py-3"
														id="nav-info-tab" data-toggle="tab" href="#nav-info"
														role="tab" aria-controls="nav-info" aria-selected="false">정산
														완료 거래</a>
												</div>
											</nav>
											<div class="tab-content" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-desc"
													role="tabpanel" aria-labelledby="nav-desc-tab">
													<table
														class="table table-bordered thead-light  text-center"
														style="margin-top: 40px;">
														<thead class="thead-light" style="font-size: 12px;">
															<tr>
																<th>거래일</th>
																<th>서비스명</th>
																<th>구매자</th>
																<th>거래금액</th>
																<th>할인</th>
																<th>수수료</th>
																<th>수수료감면</th>
																<th>최종금액</th>
																<th>진행상황</th>
																<th>구매확정</th>
															</tr>
														</thead>
														<tbody style="font-size: 12px;">
															<tr>
																<td>2022.02.17</td>
																<td>웹개발</td>
																<td>김길동</td>
																<td>50,000</td>
																<td>5%</td>
																<td>5,000</td>
																<td>2%</td>
																<td>45,000</td>
																<td>대기중</td>
																<td></td>
															</tr>
														</tbody>
													</table>
													
												</div>
												<div class="tab-pane fade" id="nav-info" role="tabpanel"
													aria-labelledby="nav-info-tab">
													<br />
													<br />
													<div class="row justify-content-center">

														<button class="genric-btn danger-border radius paybtn">1개월</button>
														<button class="genric-btn danger-border radius paybtn">6개월</button>
														<button class="genric-btn danger-border radius paybtn">1년</button>

														<input type="date"> - <input type="date"
															style="margin-left: 10px;">
														<button class="genric-btn danger-border radius">기간검색</button>
														<table
															class="table table-bordered thead-light  text-center"
															style="margin-top: 40px;">
															<thead class="thead-light"  style="font-size: 12px;">
																<tr>
																	<th>번호</th>
																	<th>거래날짜</th>
																	<th>서비스</th>
																	<th>구매자</th>
																	<th>거래금액</th>
																	<th>할인</th>
																	<th>수수료</th>
																	<th>수수료감면</th>
																	<th>최종금액</th>
																	<th>상태</th>
																	<th>입금일</th>
																</tr>
															</thead>
															<tbody  style="font-size: 12px;">
																<tr>
																	<th scope="row">S1</th>
																	<td>2022.02.17</td>
																	<td>웹개발</td>
																	<td>김길동</td>
																	<td>50,000</td>
																	<td>5%</td>
																	<td>5,000</td>
																	<td>2%</td>
																	<td>45,000</td>
																	<td>구매확정</td>
																	<td>2022.03.15</td>
																</tr>
																<tr>
																	<th scope="row">S1</th>
																	<td>2022.03.17</td>
																	<td>앱개발</td>
																	<td>김짱구</td>
																	<td>40,000</td>
																	<td>5%</td>
																	<td>4,000</td>
																	<td>2%</td>
																	<td>46,000</td>
																	<td>구매확정</td>
																	<td>2022.03.25</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>
<script>
var Grid = tui.Grid;

var instance = new Grid({
  el: document.getElementById('grid'), // Container element
  columns: [
    {
      header: '번호',
      name: 'name'
    },
    {
      header: '거래날짜',
      name: 'artist'
    },
    {
      header: '서비스',
      name: 'release'
    },
    {
      header: '구매자',
      name: 'genre1'
    },
    {
      header: '거래금액',
      name: 'genre2'
    },
    {
        header: '할인',
        name: 'genre3'
      }
    ,
    {
        header: '수수료',
        name: 'genre4'
      },
    {
        header: '수수료감면',
        name: 'genre5'
      },
      {
          header: '최종금액',
          name: 'genre6'
        },
        {
            header: '상태',
            name: 'genre7'
          },
          {
              header: '입금일',
              name: 'genre8'
            }
  ],
  data: [
    {
      name: 'Beautiful Lies',
      artist: 'Birdy',
      release: '2016.03.26',
      genre: 'Pop'
    },
    {
        name: 'Beautiful Lies',
        artist: 'Birdy',
        release: '2016.03.26',
        genre: 'Pop'
      }
  ]
});

Grid.applyTheme('striped', {
	  cell: {
	    header: {
	      background: '#eef'
	    },
	    evenRow: {
	      background: '#fee'
	    }
	  }
	});
</script>

</body>
</html>