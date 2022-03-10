<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.nice-select {
	width: 300px;
}

.fables-counter {
	position: relative;
	z-index: 1;
	color: #fff;
	text-align: center;
}

.fables-forth-text-color {
	color: #5C6A77;
}

.fables-second-border-color {
	border-color: #E54D42 !important;
}

.font-40 {
	font-size: 40px;
}
hr{
 	border-bottom : 1px solid #d5c9ea !important;
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
						<h2>매출 확인</h2>
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
								<li><a href="sellerCalendar.do" class="d-flex">
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p>리뷰관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p>결제조회</p>
								</a></li>
								<li><a href="sellerSales.do" class="d-flex">
										<p style="font-weight: bold;">매출확인</p>
								</a></li>
								<li><a href="sellerReport.do" class="d-flex">
										<p>신고관리</p>
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
								<a class="d-inline-block" style="margin-top:20px;">
									<h3>매출 확인</h3>
								</a>
								<hr class="hr"/>
								<div class="blog_details">
								
										
												<table class="table caption-top table-bordered  text-center">
													<tbody>
														<tr>
															<th class="align-middle table-primary">서비스 선택</th>
															<td><select name="service" id="service">
																<c:forEach items="${serviceList }" var="service">
																	<option value="${service.ser_code }">${service.ser_title }</option>
																</c:forEach>
															</select></td>

														</tr>
														<tr>
															<th class="align-middle table-primary">연도 선택</th>
															<td style="text-align: left;"><select name="chart" id="chart">
																	<option value="2022">2022년</option>
																	<option value="2021">2021년</option>
																	<option value="2020">2020년</option>
															</select><br />
															</td>
														</tr>
													</tbody>
												</table>


												<div class="d-flex justify-content-end my-4">
													<button class="genric-btn danger-border circle" onclick="changeChart()">검색</button>
												</div>
											
										
								

									<!-- <div style="margin-top: 40px;">
										<div class="card mb-4">
											<div class="container pb-0 py-lg-5">
												<div class="row">
													<div class="col-6 col-md-6">
														<div class="fables-counter">
															<h2
																class="fables-counter-value font-40 font-weight-bold mb-3 fables-forth-text-color border fables-second-border-color d-inline-block px-4 py-2 mb-4"
																data-count="307">123</h2>
															<h3 class="font-14 semi-font fables-forth-text-color">총
																매출액</h3>
														</div>
													</div>
													<div class="col-6 col-md-6">
														<div class="fables-counter">
															<h2
																class="fables-counter-value font-40 font-weight-bold mb-3 fables-forth-text-color border fables-second-border-color d-inline-block px-4 py-2 mb-4"
																data-count="95">12312</h2>
															<h3 class="font-14 semi-font fables-forth-text-color">총
																수수료</h3>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div> -->

									<div style="margin-top: 40px;">
										<div class="card">
											<div class="card-body" id="myChartContainer">
												<h4 class="card-title"></h4>
												<div style="width: 100%;">
													<canvas id="myChart"></canvas>
													<!-- <table class="table table-bordered thead-light  text-center">
													<thead>
														<tr>
															<th></th>
															<th class="table-active">1월</th>
															<th class="table-active">2월</th>
															<th class="table-active">3월</th>
															<th class="table-active">4월</th>
															<th class="table-active">5월</th>
															<th class="table-active">6월</th>
															<th class="table-active">7월</th>
															<th class="table-active">8월</th>
															<th class="table-active">9월</th>
															<th class="table-active">10월</th>
															<th class="table-active">11월</th>
															<th class="table-active">12월</th>
														</tr>
													</thead>
													<tbody>
														<tr class="totalsum">
															<td class="table-primary">누적판매수량</td>
															<td class="count1"></td>
															<td class="count2"></td>
															<td class="count3"></td>
															<td class="count4"></td>
															<td class="count5"></td>
															<td class="count6"></td>
															<td class="count7"></td>
															<td class="count8"></td>
															<td class="count9"></td>
															<td class="count10"></td>
															<td class="count11"></td>
															<td class="count12"></td>
							
														</tr>
														<tr>
															<td class="table-primary">누적판매금액</td>
															<td id="sum1"></td>
															<td id="sum2"></td>
															<td id="sum3"></td>
															<td id="sum4"></td>
															<td id="sum5"></td>
															<td id="sum6"></td>
															<td id="sum7"></td>
															<td id="sum8"></td>
															<td id="sum9"></td>
															<td id="sum10"></td>
															<td id="sum11"></td>
															<td id="sum12"></td>
							
														</tr>
														<tr>
															<td class="table-primary">누적판매수수료</td>
															<td id="susu1"></td>
															<td id="susu2"></td>
															<td id="susu3"></td>
															<td id="susu4"></td>
															<td id="susu5"></td>
															<td id="susu6"></td>
															<td id="susu7"></td>
															<td id="susu8"></td>
															<td id="susu9"></td>
															<td id="susu10"></td>
															<td id="susu11"></td>
															<td id="susu12"></td>
														</tr>
							
													</tbody>
												</table> -->
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<script type="text/javascript">
		var myChart;
		createChart();
		
		
		function changeChart() {
			createChart();
		}
		
		
		/* function createChart() {
			if (myChart != null) {
				myChart.destory();
			}

		} */

		function createChart() {
			if (myChart != null) {
				myChart.destory();
			}
			/* $("#myChart").remove(); */
			$("#myChartContainer").append('<canvas id="myChart"></canvas>');
			var ctx = $("#myChart");
			var context = document.getElementById('myChart').getContext('2d');
		
			var myChart = new Chart(ctx, {
			type: 'bar', // 차트의 형태
			data: { // 차트에 들어갈 데이터
				//x 축
				labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				datasets: [{ //데이터
					label: '매출', //차트 제목
					fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
					data: testFnc(), //x축 label에 대응되는 데이터 값

					backgroundColor: [
						//색상
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(153, 102, 255, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(153, 102, 255, 0.2)',
						'rgba(255, 159, 64, 0.2)'
					],
					borderColor: [
						//경계선 색상
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)'
					],
					borderWidth: 1 //경계선 굵기
				}, { //데이터
					label: '수수료', //차트 제목
					fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
					data: testFnc02(), //x축 label에 대응되는 데이터 값

					backgroundColor: [
						//색상
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(153, 102, 255, 0.2)',
						'rgba(255, 159, 64, 0.2)',
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(153, 102, 255, 0.2)',
						'rgba(255, 159, 64, 0.2)'
					],
					borderColor: [
						//경계선 색상
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)',
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)'
					],
					borderWidth: 1 //경계선 굵기
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				}
			}
		});
		}
		//차트 데이터 추가


		function testFnc() {
			var list = [];
			var temp = $("select[name='service'] option:Selected").val();
			var temp2 = $("select[name='chart'] option:Selected").val();
	    	$.ajax({
	    			url: "sellerSalesData.do",
	    			data : {scode:temp, pay_enddate:temp2},
	    			type : "post",
	    			async : false,
	    			dataType : "json",
	    			success: function (datas) {
	    				for(data of Object.keys(datas)){
	    					list.push(datas[data]);
	    				}
	    			}
	    		});	
	    		console.log("list = " + list);
	    		return list;
			
		}
		//수수료 계산
		function testFnc02() {
			
			var list2 = [];
			var temp = $("select[name='service'] option:Selected").val();
			var temp2 = $("select[name='chart'] option:Selected").val();
			$.ajax({
    			url: "sellerCommData.do",
    			data : {scode:temp, pay_enddate:temp2},
    			type : "post",
    			async : false,
    			dataType : "json",
    			success: function (datas) {
    				for(data of Object.keys(datas)){
    					list2.push(datas[data]);
    				}
    			}
    		});	
			console.log("list2 = " + list2);
			return list2;
		}
		//여기는 페이지가 그려주면서 ajax 동시에 시작
		/* window.addEventListener('load', function () {
			$.ajax({
				url: "ajaxsalesTable.do",
				dataType: "json",
				type: "POST",
				success: function (data) {
					document.querySelector("#sum1").innerHTML = data[0]
					document.querySelector("#sum2").innerHTML = data[1]
					document.querySelector("#sum3").innerHTML = data[2]
					document.querySelector("#sum4").innerHTML = data[3]
					document.querySelector("#sum5").innerHTML = data[4]
					document.querySelector("#sum6").innerHTML = data[5]
					document.querySelector("#sum7").innerHTML = data[6]
					document.querySelector("#sum8").innerHTML = data[7]
					document.querySelector("#sum9").innerHTML = data[8]
					document.querySelector("#sum10").innerHTML = data[9]
					document.querySelector("#sum11").innerHTML = data[10]
					document.querySelector("#sum12").innerHTML = data[11]

					//여기부터는 수수료 계산
					document.querySelector("#susu1").innerHTML = data[0] * 0.1;
					document.querySelector("#susu2").innerHTML = data[1] * 0.1;
					document.querySelector("#susu3").innerHTML = data[2] * 0.1;
					document.querySelector("#susu4").innerHTML = data[3] * 0.1;
					document.querySelector("#susu5").innerHTML = data[4] * 0.1;
					document.querySelector("#susu6").innerHTML = data[5] * 0.1;
					document.querySelector("#susu7").innerHTML = data[6] * 0.1;
					document.querySelector("#susu8").innerHTML = data[7] * 0.1;
					document.querySelector("#susu9").innerHTML = data[8] * 0.1;
					document.querySelector("#susu10").innerHTML = data[9] * 0.1;
					document.querySelector("#susu11").innerHTML = data[10] * 0.1;
					document.querySelector("#susu12").innerHTML = data[11] * 0.1;
				},
				error: function (data) {
					console.log(data);
				}
			})
			$.ajax({
				url: "ajaxcountService.do",
				dataType: "json",
				type: "POST",
				success: function (data) {
					document.querySelector(".count1").innerText = data[0];
					document.querySelector(".count2").innerText = data[1];
					document.querySelector(".count3").innerText = data[2];
					document.querySelector(".count4").innerText = data[3];
					document.querySelector(".count5").innerText = data[4];
					document.querySelector(".count6").innerText = data[5];
					document.querySelector(".count7").innerText = data[6];
					document.querySelector(".count8").innerText = data[7];
					document.querySelector(".count9").innerText = data[8];
					document.querySelector(".count10").innerText = data[9];
					document.querySelector(".count11").innerText = data[10];
					document.querySelector(".count12").innerText = data[11];
				},
				error: function (data) {
					console.log(data);
				}
			}) */
		/* 	$.ajax({
				url: "selectYearchart.do",
				dataType: "json",
				type: "POST",
				success: function (data) {
					console.log(data);
					document.querySelector("#yearseller1").innerHTML = data[0];
					document.querySelector("#yearseller2").innerHTML = data[1];
					document.querySelector("#yearseller3").innerHTML = data[2];

					//연도별 수수료 계산
					document.querySelector("#yearsusu1").innerHTML = data[0] * 0.1;
					document.querySelector("#yearsusu2").innerHTML = data[1] * 0.1;
					document.querySelector("#yearsusu3").innerHTML = data[2] * 0.1;
				}
			})

			$.ajax({
				url: "countYearChart.do",
				dataType: "json",
				type: "POST",
				success: function (data) {
					console.log("카운트 data",data);
					document.querySelector("#yearcount1").innerHTML = data[0];
					document.querySelector("#yearcount2").innerHTML = data[1];
					document.querySelector("#yearcount3").innerHTML = data[2];
				}
			}) */


	/* 	}) */
	
	</script>
</body>
</html>