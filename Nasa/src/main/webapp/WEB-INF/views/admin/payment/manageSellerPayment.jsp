<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-3 ">
                            <h6><i  class="icon-credit-card mr-1"></i>결제관리 <i class="fas fa-chevron-right mx-2"></i>판매자결제내역</h6>
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
                    <h5 class="p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           구매자검색
                     </h5>
                    <div class="card mb-4">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                	<tr>
                                        <th class="align-middle table-primary">아이디</th>
                                        <td>
                                        	<input class="form-control custom-shadow" id="" name="" type="text">
                                    	</td>
                                    	<th class="align-middle table-primary">구분</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio1">개인</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio2">기업</label>
                                                </div>
                                            </div>
                                    	</td>
                                    </tr>
                                     <tr>
                                        <th class="align-middle table-primary">서비스명</th>
                                        <td colspan="3">
                                        	<input class="form-control custom-shadow" id="" name="" type="text">
                                    	</td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">1차 카테고리</th>
                                        <td colspan="3">
                                        	<select class="custom-select  form-control custom-shadow " id="bigCategory">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">2차 카테고리</th>
                                        <td colspan="3">
                                        	<select class="custom-select  form-control custom-shadow" id="smallCategory" disabled="true">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <th class="align-middle table-primary">등록일자</th>
                                        <td colspan="3">
                                        	<div class="d-flex align-items-center">
                                        		<div class="col-3 p-0">
	                                        	<input type="date" class="form-control" value="2018-05-13">
	                                        	</div>
	                                        	<span class="mx-4"><i class="fas fa-minus"></i></span>
	                                        	<div class="col-3 p-0">
	                                        	<input type="date" class="form-control" value="2018-05-13">
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
               
               
               
                  <div class="row my-5">
                	<div class="col-5">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            판매자내역조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>아이디</th>
		                         		<th>서비스명</th>
		                         		<th>1차 카테고리</th>        		
		                         		<th>2차 카테고리</th>
		                         		<th>구분</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>수수료</td>
		                                <td>500,000</td>
		                                <td>2021-01-21</td>
		                             </tr>
                                     <tr>
		                                <td></td>
		                                <td></td>
		                                <td>파워</td>
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
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="20%" class="table-primary align-middle">결제코드</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" readonly ></td>
                                            <th class="table-primary align-middle">결제유형</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="수수료" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">결제날짜</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="" name="" value="2021-01-27" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">판매자아이디</th>
                                            <td ><input class="form-control custom-shadow" id="" name="" value="123" type="text" readonly></td>
                                            <th class="table-primary align-middle">판매자구분</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="개인" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">서비스코드</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="" name="" value="123" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">카테고리</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="" name="" value="1234" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">서비스명</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="" name="" value="1234" type="text" readonly></td>
                                        </tr>
                                        
                                        <tr>
                                            <th class="table-primary align-middle">판매자구분</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="개인" type="text" readonly></td>
                                            <th class="table-primary align-middle">판매자아이디</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="블랙리스트" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">결제금액</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234-1234" type="text" readonly></td>
                                            <th class="table-primary align-middle">쿠폰사용</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="쿠폰명" type="text" readonly></td>
                                            <!-- 쿠폰 사용x -> 해당없음 출력 -->
                                        </tr>
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                   </div>
             
             </div>


             <script type="text/javascript">
                const bigCategory = document.querySelector("#bigCategory");
                const openSmallCategory=()=>{
                    $("#smallCategory").attr("disabled",false);
                    
                }
                bigCategory.addEventListener("change",openSmallCategory);
            </script>
		
			


            
              
             
            
                
               
          