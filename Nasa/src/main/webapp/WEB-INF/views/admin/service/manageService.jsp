<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-5 ">
                            <h6><i  class=" far fa-star mr-1"></i>서비스관리 <i class="fas fa-chevron-right mx-2"></i>일반서비스 관리</h6>
                        </div>
                        <ul class="list-style-none d-flex">
                            <li class="mr-1">총 서비스 <span class="text-danger mx-1">3</span>개</li>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <li class="mx-2">오늘 등록된 서비스 <span class="text-danger mx-1">100</span>개</li>
                            
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
           ${serviceLists }
           
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
                                        <th class="align-middle table-primary">이름</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                    </tr>
                                  
                                    <tr>
                                        <th class="align-middle table-primary">서비스명</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="text-center align-middle table-primary">구분</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="customRadio1" name="person" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio1">개인</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio2" name="person" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio2">기업</label>
                                                </div>
                                                
                                               
                                                
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary ">금액</th>
                                        <td>
                                        	<div class="d-flex align-items-center">
                                        	<div class="col-5 p-0">
                                        	<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
				                            <div class="col-2">
				                            	<span ><i class="fas fa-minus"></i></span>
				                            </div>
				                            <div class="col-5 p-0">
                                        	<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
				                            </div>
                                        </td>
                                        <th class="text-center align-middle table-primary">온/오프</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="onlineRadio" name="online" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="onlineRadio">온라인</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="offlineRadio" name="online" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="offlineRadio">오프라인</label>
                                                </div>
                                                
                                               
                                                
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="align-middle table-primary">1차 카테고리</th>
                                    	<td>
                                    		<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
                                    	</td>
                                    	<th class="align-middle table-primary">2차 카테고리</th>
                                    	<td>
                                    		<select class="custom-select  form-control custom-shadow" disabled>
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
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
                            판매내역
                            <div >
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">리뷰순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">평점순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">위시순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">판매순</label>
                                </div>
                            </div>
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>순번</th>
		                         		<th width="250px">서비스명</th>
		                         		<th>구분</th>
		                         		<th>금액</th>       		
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td></td>
		                                <td>개인</td>
		                                
		                                
		                             </tr>
                                     <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>개인</td>
		                                <td>지구</td>
		                               
		                                
		                             </tr>
                                     <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>개인</td>
		                                <td>지구</td>
		                                
		                                
		                             </tr>
                                    <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>개인</td>
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
                	    <!-- 유효기간이 남아있을 경우 / 유효기간 종료되면 버튼 안보임 -->
                          <div class="d-flex justify-content-end mr-4">
                                <button class="btn btn-outline-primary mr-3 mt-3">종료</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="130px" class="table-primary align-middle">서비스코드</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" disabled ></td>
                                            <th class="table-primary align-middle">서비스명</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">1차카테고리</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="123" type="text" disabled></td>
                                            <th class="table-primary align-middle">2차카테고리</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">구분</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234-1234" type="text" disabled></td>
                                            <th class="table-primary align-middle">방식</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="기업" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                         <th class="table-primary align-middle">금액</th>
                                            <td >
                                             	<input class="form-control custom-shadow" id="" name="" value="종료" type="text" disabled>
                                            </td>
                                            <th class="table-primary align-middle">유효기간</th>
                                            <td>
                                             	<input class="form-control custom-shadow" id="" name="" value="종료" type="text" disabled>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">아이디</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234" type="text" disabled></td>
                                            <th class="table-primary align-middle">회원상태</th>
                                            <td>
                                               <input class="form-control custom-shadow text-danger" id="" name="" value="블랙리스트" type="text" disabled>
                                            </td>        
                                        </tr>
                                        <tr>                                     
                                            <th class="table-primary align-middle">누적판매</th>
                                            <td>                                              
                                                <input class="form-control custom-shadow mb-1"  id="" name="" type="text" disabled>                 
                                            </td>
                                            <th class="table-primary align-middle">리뷰수</th>
                                            <td >                                              
                                                <input class="form-control custom-shadow mb-1"  id="" name="" type="text" disabled>                 
                                            </td>
                                        </tr>
                                        <tr>                                     
                                            <th  class="table-primary align-middle">위시수</th>
                                             <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	 <input class="form-control custom-shadow mb-1"  id="" name="" type="text" disabled>        
                                        	   </div>
                                        	</td>
                                        	 <th  class="table-primary align-middle"><span class="position-relative px-3">신고수 <i class=" icon-info text-warning position-absolute" style=" bottom:13px;" data-toggle="tooltip" data-placement="top" title="" data-original-title="해당 서비스 총 신고수"></i></span></th>
                                             <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-2 text-danger" id="" name="" value="10" type="text" disabled >회
                                        	   </div>
                                        	</td>
                                           
                                        </tr>
                                        
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                </div>
			
			<div class="row">
				<div class="col-12">
				<h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세설명
                 </h5>
					<div class="card">
		                   <div class="card-body">
                             <textarea rows="20" class="form-control" id="message-text" disabled></textarea>   
		                   </div>
                	<div class="card-footer border border-secondary d-flex justify-content-between bg-white" style="border-radius: 5px;">
                               <div>링크 : <span class="text-danger mx-2"></span></div>
                               
                           </div>
                	</div>
                </div>
				</div>
		


         </div>
                        
                        
                        
                    
                	  
              
             
            
                
               
          