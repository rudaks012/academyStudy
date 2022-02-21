<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-fluid">
            	<div class="mb-5">
            	새로운 프로모션을 등록하시겠습니까?
           		 </div>
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                    <h5 class="p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           공지사항 검색
                     </h5>
                    <div class="card mb-5">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                   
                                    <tr>
                                        <th class="align-middle table-primary">제목</th>
                                        <td>
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="" type="text"></td>
                                    		</div>
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
	                        <button class="btn btn-outline-dark">검색<i class="ml-2 icon-magnifier search"></i></button>
	                    </div>
                   </div>
               </div>
               
               
               
       
                                    
                                    	
                                    
                            
                            
                   <div class="row my-5">
                	<div class="col-5">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            공지사항 목록
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th width="10%">선택</th>
		                         		<th width="120px">공지코드</th>
		                         		<th>제목</th>       		
		                         		<th width="120px">등록일자</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>개인</td>
		                                <td>2021-01-18</td>
		                             </tr>
                                     <tr>
		                                <td></td>
		                                <td></td>
		                                <td>기업</td>
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
                           <div class="d-flex justify-content-end mr-4">
                                <button class="btn btn-outline-danger mt-3">수정</button>
                                 <button class="btn btn-outline-secondary ml-2 mt-3">삭제</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th class="table-primary align-middle">공지코드</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" ></td>
                                            
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">제목</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="123" type="text" ></td>
                                            
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">등록날짜</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234-1234" type="text" readonly></td>
                                           
                                        </tr>
                                        
                                        <tr>                                     
                                            <th colspan="4" class="table-primary align-middle">공지내용</th>
                                            
                                        </tr>
                                        <tr>
                                        	<td colspan="4">                                              
                                                <textarea rows="10" class="form-control" id="message-text"></textarea>
                                               
                                            </td>
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