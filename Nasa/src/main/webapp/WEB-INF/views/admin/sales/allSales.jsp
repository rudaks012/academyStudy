<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <link href="resources/admin/assets/libs/morris.js/morris.css" rel="stylesheet">          

  
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-3 ">
                            <h6><i  class="fas fa-chart-line mr-1"></i>매출조회 <i class="fas fa-chevron-right mx-2"></i>카테고리별매출</h6>
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
              
               
                <div class="row my-5">
                   <div class="col-lg-12">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                             월별 매출 조회
                        </h5>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"></h4>
                                <div id="all-month-chart"></div>
                                 <table class="mt-4 table table-hover table-bordered thead-light  text-center">	
                                	<thead>
                                		<tr>
                                			<th></th>
                                			<th  class="table-active">1월</th>
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
                	    <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            연별 매출 조회
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
                                        	<td width="350px"  class="table-primary">누적판매수량</td>
                                			<td ></td>
                                			<td ></td>
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


             
            

            
  
		
			

	<script src="resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="resources/admin/assets/libs/raphael/raphael.min.js"></script>
    <script src="resources/admin/assets/libs/morris.js/morris.min.js"></script>
    <script src="resources/admin/dist/js/pages/morris/all-month-data.js"></script>
    <script src="resources/admin/dist/js/pages/morris/all-year-data.js"></script>
    
    
    



    
 
              
             
            
                
               
          