<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>



<div class="page-breadcrumb">
	<div class="row">
		<div class="col-7 align-self-center">
			<div class="mb-3 ">
				<h6>
					<i class="fas fa-chart-line mr-1"></i>매출조회 <i class="fas fa-chevron-right mx-2"></i>카테고리별매출
				</h6>
			</div>
		</div>
	</div>
</div>


<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Container fluid  -->
<!-- ============================================================== -->
<div class="container-fluid">

	<!-- *************************************************************** -->
	<!-- Start First Cards -->
	<!-- *************************************************************** -->
	<select class="custom-select  form-control custom-shadow " name="chart" id="selectchart" size="1"
		style="width: 200px;">
		<option value="선택">선택</option>
		<c:forEach items="${names }" var="name">
			<option value="${name }">${name }
		</c:forEach>
	</select>
	<button type="button" class="chartbtn btn btn-outline-info" onclick="createChart()">확인</button>


	<div class="row my-5">
		<div class="col-lg-12">
			<h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">월별 매출 조회
			</h5>
			<div class="card">
				<div class="card-body">
					<h4 class="card-title"></h4>
					<div style="width: 100%;">
						<!--차트가 그려질 부분-->
						<canvas id="myChart"></canvas>
					</div>
					<table class="mt-4 table table-hover table-bordered thead-light  text-center">
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
							<tr>
								<td class="table-primary">누적판매수량</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td class="table-primary">누적판매금액</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td class="table-primary">누적판매수수료</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>



	<div class="row my-5">
		<div class="col-lg-12">
			<h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">연별 매출 조회
			</h5>
			<div class="card">
				<div class="card-body">
					<h4 class="card-title"></h4>
					<div id="all-year-chart"></div>
					<table class="mt-4 table table-hover table-bordered thead-light  text-center">
						<thead>
							<tr>
								<th></th>
								<th class="table-active">2020년</th>
								<th class="table-active">2021년</th>
								<th class="table-active">2022년</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td width="350px" class="table-primary">누적판매수량</td>
								<td></td>
								<td></td>
								<td></td>

							</tr>
							<tr>
								<td class="table-primary">누적판매금액</td>
								<td></td>
								<td></td>
								<td></td>

							</tr>
							<tr>
								<td class="table-primary">누적판매수수료</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		var myChart;
		createChart();

		function createChart() {
			if (myChart != null) {
				myChart.destory();
			}

		}


		var context = document.getElementById('myChart').getContext('2d');

		var myChart = new Chart(context, {
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
					},
					{
						label: '수수료',
						fill: false,
						data: [
							1, 2, 3, 4, 5, 6, , 7, 8, 9, 10, 11, 12 //x축 label에 대응되는 데이터 값
						],
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
					}
				]
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
		
		//차트 데이터 추가
		

		function testFnc() {
			var temp = $("select[name='chart'] option:Selected").val();
			
			if(temp = "선택"){
				console.log("선택입니다");
			}else {
				console.log(temp);
			}
			console.log($("select[name='chart'] option:selected").val());
			
			if($("select[name='chart'] option:selected").val() == "선택"){
				var ret =[0,0,0,0,0,0,0,0,0,0,0,0];

				const url = "chartData.do";
				$.ajax({url,
					dataType: "json",
					async: false
				})
				.done(function(data){

					var sum =0;
					for(data of data){
						var month = data["pay_data"].substring(5).substring(0,2);
						console.log(month);
						ret[month -1] += parseInt(data["pay_price"]);
						sum += parseInt(data["pay_price"]);
						console.log(ret[month-1]);

					}

				})
			}
		}
	</script>








	// <script src="resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
	// <script src="resources/admin/assets/libs/raphael/raphael.min.js"></script>
	// <script src="resources/admin/assets/libs/morris.js/morris.min.js"></script>
	// <script src="resources/admin/dist/js/pages/morris/all-month-data.js"></script>
	// <script src="resources/admin/dist/js/pages/morris/all-year-data.js"></script>