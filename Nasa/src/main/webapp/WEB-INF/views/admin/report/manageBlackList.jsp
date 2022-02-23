<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="page-breadcrumb">
                        <div class="row">
                            <div class="col-7 align-self-center">
                                <div class="mb-5 ">
                                    <h6><i  class=" icon-user-unfollow mr-1"></i>신고관리 <i class="fas fa-chevron-right mx-2"></i>블랙리스트 관리</h6>
                                </div>
                                <ul class="list-style-none d-flex">
                                    <li class="mr-1">총 블랙리스트 <span class="text-danger mx-1">3</span>명</li>
                                    <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                                    <li class="mx-2">오늘의 블랙리스트 <span class="text-danger mx-1">100</span>명</li>
                                    <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                                    <li class="mx-2">영구정지 <span class="text-danger mx-1">100</span>명</li>
                                    
                                </ul>
                            
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
                            <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                                   서비스검색
                             </h5>
                            <div class="card mb-4">
                                <div class="card-body">
                                    <table class="table caption-top table-bordered  text-center">
                                        <tbody>
                                            <tr>
                                                <th class="align-middle table-primary">아이디</th>
                                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                                
                                            </tr>
                                            <tr>
                                                <th class="align-middle table-primary">이름</th>
                                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                            </tr>
                                          
                                            <tr>
                                                
                                                <th class="text-center align-middle table-primary">구분</th>
                                                <td>
                                                    <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                        <div class="custom-control custom-radio mr-3 ">
                                                            <input type="radio" id="customRadio1" name="person" class="custom-control-input mr-5">
                                                            <label class="custom-control-label" for="customRadio1">구매자</label>
                                                        </div>
                                                        <div class="custom-control custom-radio mx-3">
                                                            <input type="radio" id="customRadio2" name="person" class="custom-control-input mr-5">
                                                            <label class="custom-control-label" for="customRadio2">판매자</label>
                                                        </div>
                                                        
                                                       
                                                        
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                        
                                        </tbody>
                                    </table>
                                <style>
                                    .search, .reload{
                                        position: relative;
                                        top:2px;
                                    }
                                </style>
        
                                 <div class="d-flex justify-content-end my-4">
                                    <button class="btn btn-outline-warning mr-3">초기화<i class="ml-2 icon-reload reload"></i></button>
                                    <button class="btn btn-outline-secondary">검색<i class="ml-2 icon-magnifier search"></i></button>
                                </div>
                           </div>
                       </div>
                        
                        <div class="row mt-5">
                            <div class="col-5">
                               <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                                    블랙리스트
                                    
                                </h5>
                                <div class="card">
                                    <div class="card-body">
                                        <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
                                     <table class="table table-bordered thead-light text-center table-hover">		                        
                                         <thead class="table-active">
                                             <tr>
                                                
                                                 <th width="250px">아이디</th>
                                                 <th>이름</th>
                                                 <th>구분</th>
                                                 <th>일수</th>        		
                                             </tr>
                                         </thead>
                                         <tbody>
                                             <tr>
                                                <td>2222</td>
                                                <td>2222</td>
                                                <td>구매자</td>
                                                <td class="text-danger">영구정지</td>
                                                
                                                
                                             </tr>
                                             <tr>
                                                <td>2222</td>
                                                <td>2222</td>
                                                <td>판매자</td>
                                                <td class="text-primary">4일</td>
                                               
                                                
                                             </tr>
                                             <tr>
                                                <td>2222</td>
                                                <td>2222</td>
                                                <td>구매자</td>
                                                <td>지구</td>
                                                
                                                
                                             </tr>
                                            <tr>
                                                <td>2222</td>
                                                <td>2222</td>
                                                <td>판매자</td>
                                                <td>지구</td>
                                                
                                                
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                             <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                             </tr>
                                        </tbody>
                                     </table>
                
                                         <div class="d-flex justify-content-center mt-5">
                                            <nav aria-label="Page navigation example">
                                                    <ul class="pagination">
                                                        <li class="page-item">
                                                            <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                                                <span aria-hidden="true">«</span>
                                                                <span class="sr-only">Previous</span>
                                                            </a>
                                                        </li>
                                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
                                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                                        <li class="page-item">
                                                            <a class="page-link" href="javascript:void(0)" aria-label="Next">
                                                                <span aria-hidden="true">»</span>
                                                                <span class="sr-only">Next</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                        </div>
                                   </div>
                                   </div>
                            </div>
                            <div class="col-7">
                                   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                                    상세조회
                                </h5>
                                <div class="card">
                               
                                   <div class="card-body my-3">
                                   		<table class="table  table-bordered thead-light  text-center">
                                   			<tbody>
                                   				<tr>
                                   					<th width="20%" class="table-primary align-middle">회원코드</th>
                                   					<td>2222</td>
                                   					<th width="20%" class="table-primary align-middle">회원아이디</th>
                                   					<td>2222222</td>
                                   				</tr>
                                   				<tr>
                                   					<th width="20%" class="table-primary align-middle">회원구분</th>
                                   					<td>구매자</td>
                                   					<th width="20%" class="table-primary align-middle">가입일자</th>
                                   					<td>2222222</td>
                                   				</tr>
                                   				<tr>
                                   					<th width="20%" class="table-primary align-middle">신고횟수</th>
                                   					<td>3일</td>
                                   					<th width="20%" class="table-primary align-middle">정지일수</th>
                                   					<td>2222222</td>
                                   				</tr>
                                   			</tbody>
                                   		</table>
                                   		<!-- <div class="mt-5 p-2 bg-warning text-white d-flex justify-content-between " style="border-radius:3px">
                                   			<div>신고횟수: <span class="">4</span>건</div>
                                   			
                                   		</div> -->
                                        <table class="table border  table-bordered thead-light  text-center">		                        
                                            <thead >
                                            	<tr>
	                                            	<th class="table-secondary">블랙리스트코드</th>
	                                            	<th class="table-secondary">신고유형</th>
	                                            	<th class="table-secondary">신고일자</th>
	                                            	<th class="table-secondary">처리일자</th>
                                            	</tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                   <td>dd</td>
                                                   <td>dd</td>
                                                   <td>dd</td> 
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                
                                         
                                   </div>
                                 </div>
                            </div>
                        </div>
                    
                   
                
        
        
                 </div>