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
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="" type="text">
                                    		</div>
                                    	</td>
                                    </tr>
                                     <tr>
                                        <th class="align-middle table-primary">서비스명</th>
                                        <td>
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="" type="text">
                                    		</div>
                                    	</td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">1차 카테고리</th>
                                        <td>
                                        	<div class="col-6">
                                        	<select class="custom-select  form-control custom-shadow " id="bigCategory">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">2차 카테고리</th>
                                        <td>
                                        	<div class="col-6">
                                        	<select class="custom-select  form-control custom-shadow" id="smallCategory" disabled="true">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <th class="align-middle table-primary">등록일자</th>
                                        <td>
                                        	<div class="d-flex align-items-center">
                                        		<div class="col-3">
	                                        	<input type="date" class="form-control" value="2018-05-13">
	                                        	</div>
	                                        	<span class="mx-2"><i class="fas fa-minus"></i></span>
	                                        	<div class="col-3">
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
                            구매자내역조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th width="10%">아이디</th>
		                         		<th>서비스명</th>
		                         		<th>1차 카테고리</th>        		
		                         		<th>2차 카테고리</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>3333</td>
		                                <td>500,000</td>
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
                                            <th class="table-primary align-middle">결제날짜</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="2021-01-27" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">구매자아이디</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="123" type="text" readonly></td>
                                             <th class="table-primary align-middle">구매자상태</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="사용자" type="text" readonly></td>
                                            <!-- c:if 사용자 or 블랙리스트 -->
                                           
                                        </tr>
                                        <tr>
                                        	 <th class="table-primary align-middle">구매확정</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="확정 전" type="text" readonly></td>
                                            <!-- c:if 확정전, 확정완료 -->
                                             <th class="table-primary align-middle">확정날짜</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="해당없음" type="text" readonly></td>
                                            <!-- c:if 해당없음, 2021-01-28 -->
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
                                    
                                    	
                                    
                            
                            
            
                
                
                <!-- 반려모달 -->
                
                
                <div id="register-promotion-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="dark-header-modalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header modal-colored-header bg-primary">
                                                <h4 class="modal-title" id="dark-header-modalLabel">프로모션 등록하기</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            </div>
                                            <div class="modal-body">
                                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">1차 카테고리</th>
                                            <td >
                                            	<select class="custom-select  form-control custom-shadow">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
                                            </td>
                                         
                                        </tr>
                                        <tr>
                                        	<th width="18%" class="table-primary align-middle">2차 카테고리</th>
                                            <td>
                                            	<select class="custom-select  form-control custom-shadow">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">제목</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            
                                        </tr>
                                        <tr>
                                           
                                            <th width="18%" class="table-primary align-middle">할인율</th>
                                            <td colspan="3">
                                               <div class="col-3 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-3 " id="" name="" value="10" type="text" disabled >%
                                        	   </div>
                                        	</td>
                                        </tr>
                                         <tr>
                                            <th  class="table-primary align-middle">유효기간</th>
                                            <td colspan="3">
                                            	<div class="d-flex align-items-center">
                                        		<div class="col-5 p-0">
	                                        	<input type="date" class="form-control" value="2018-05-13">
	                                        	</div>
	                                        	<span class="mx-2"><i class="fas fa-minus"></i></span>
	                                        	<div class="col-5 p-0">
	                                        	<input type="date" class="form-control" value="2018-05-13">
	                                        	</div>
                                        	</div>
                                            </td>
                                        </tr>
                                        
                                        
                                    </tbody>
                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-primary">저장</button>
                                                <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div>
                
                
              
             
             
             
             
             
             
             </div>


             <script type="text/javascript">
                const bigCategory = document.querySelector("#bigCategory");
                const openSmallCategory=()=>{
                    $("#smallCategory").attr("disabled",false);
                    
                }
                bigCategory.addEventListener("change",openSmallCategory);
            </script>
		
			


            
              
             
            
                
               
          