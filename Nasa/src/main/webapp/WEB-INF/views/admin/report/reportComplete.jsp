<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-3 ">
                            <h6><i  class=" far fa-bell mr-1"></i>신고관리 <i class="fas fa-chevron-right mx-2"></i>전체신고조회</h6>
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
                           신고검색
                     </h5>
                    <div class="card mb-4">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                    <tr>
                                        <th class="align-middle table-primary">신고유형</th>
                                        <td>
                                        	<div class="col-6">
                                        	<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">신고자아이디</th>
                                        <td>
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="" type="text"></td>
                                    		</div>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">신고일자</th>
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
                	<div class="col-6">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            신고조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                            	<ul class="nav nav-tabs mb-3">
                                    <li class="nav-item">
                                        <a href="report_inquiry.do"  class="nav-link ">
                                            <i class="mdi mdi-home-variant d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고목록</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="report_wait.do"  class="nav-link">
                                            <i class="mdi mdi-account-circle d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고대기</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="report_complete.do" class="nav-link active">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고완료</span>
                                        </a>
                                    </li>
                                     <li class="nav-item">
                                        <a href="report_refuse.do" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고반려</span>
                                        </a>
                                    </li>
                                </ul>
                            
                            
                              <div class=" my-4">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>신고코드</th>
		                         		<th>신고유형</th>
		                         		<th>신고자아이디</th>       		
		                         		<th>신고일자</th>
		                         		<th>신고처리</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>sssss</td>
		                                <td>2021-02-18</td>
		                                <td class="text-primary">대기</td>
		                             </tr>
                                     <tr>
		                                <td></td>
		                                <td></td>
		                                <td>기업</td>
		                                <td></td>
		                                <td>완료</td>
		                             </tr>
                                     <tr>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td class="text-danger">반려</td>
		                             </tr>
                                     <tr>
		                                <td></td>
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
                	<div class="col-6">
                           <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            신고 상세조회
                        </h5>
                	    <div class="card">
                           
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고코드</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고일자</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="2021-01-18" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고유형</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="악성댓글" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">피신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고횟수</th>
                                            <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-2 text-danger" id="" name="" value="10" type="text" disabled >회</td>
                                        	   </div>
                                        </tr>
                                         <tr>
                                            <th colspan="4" class="table-primary align-middle">신고내용</th>
                                        </tr>
                                        <tr>
											<td colspan="4" height="300px">
												dddddddddddddd
												ddddddddddd
												dddddddddddd
												dddddddddddddd
												ddddddddddddddddd<br>
												ddddddddd<br>
												dddddddd<br>
												dddd<br>
											
											</td>                                        
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">첨부파일</th>
                                            <td colspan="3">해당없음</td>
                                        </tr>
                                        <tr>
                                            <th width="23%" class="table-danger align-middle">신고반려일자</th>
                                            <td colspan="3">2021-02-18</td>
                                        </tr>
                                        <tr>
                                            <th colspan="4" class="table-danger align-middle">신고반려사유</th>
                                        </tr>
                                        <tr>
											<td colspan="4" height="300px">
												dddddddddddddd
												ddddddddddd
												dddddddddddd
												dddddddddddddd
												ddddddddddddddddd<br>
												ddddddddd<br>
												dddddddd<br>
												dddd<br>
											
											</td>                                        
                                        </tr>
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                </div>
                
                
                <!-- 반려모달 -->
                
                
                <div id="refuse-report-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="dark-header-modalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header modal-colored-header bg-primary">
                                                <h4 class="modal-title" id="dark-header-modalLabel">신고 반려</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            </div>
                                            <div class="modal-body">
                                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고코드</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고일자</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="2021-01-18" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고유형</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="악성댓글" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-danger align-middle">피신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="1234444" type="text" disabled ></td>
                                            <th width="18%" class="table-danger align-middle">신고횟수</th>
                                            <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-2 text-danger" id="" name="" value="10" type="text" disabled >회</td>
                                        	   </div>
                                        </tr>
                                         <tr>
                                            <th colspan="4" class="table-primary align-middle">반려사유</th>
                                        </tr>
                                        <tr>
											<td colspan="4" >
												<textarea rows="10" class="form-control" id="message-text"></textarea>
											
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
		
			


            
              
             
            
                
               
          