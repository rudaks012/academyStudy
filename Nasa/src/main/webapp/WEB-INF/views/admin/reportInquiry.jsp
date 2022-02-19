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
                	  
                	    <div class="card">
                            <div class="card-body">
                                <ul class="nav nav-pills bg-nav-pills nav-justified mb-3">
                                    <li class="nav-item">
                                        <a href="#home1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 active">
                                            <i class="mdi mdi-home-variant d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고목록</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#profile1" data-toggle="tab" aria-expanded="true" class="nav-link rounded-0">
                                            <i class="mdi mdi-account-circle d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고대기</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#settings1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0 ">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고완료</span>
                                        </a>
                                    </li>
                                      <li class="nav-item">
                                        <a href="#settings1" data-toggle="tab" aria-expanded="false" class="nav-link rounded-0">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">신고취소</span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane" id="home1">
                                        <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>멤버코드</th>
		                         		<th>아이디</th>
		                         		<th>분류</th>       		
		                         		<th>등급</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>개인</td>
		                                <td>지구</td>
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
                                    <div class="tab-pane show" id="profile1">
                                        <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim
                                            justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis
                                            eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum
                                            semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor
                                            eu, consequat vitae, eleifend ac, enim.</p>
                                        <p class="mb-0">Leggings occaecat dolor sit amet, consectetuer adipiscing elit.
                                            Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus
                                            et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
                                            ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
                                            quis enim.</p>
                                    </div>
                                    <div class="tab-pane active" id="settings1">
                                        <p>Food truck quinoa dolor sit amet, consectetuer adipiscing elit. Aenean
                                            commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
                                            magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
                                            ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa
                                            quis enim.</p>
                                        <p class="mb-0">Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                                            arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
                                            dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus
                                            elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula,
                                            porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                    </div>
                                </div>

                            </div> <!-- end card-body-->
                        </div>
                	</div>
                	<div class="col-6">
                           <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세조회
                        </h5>
                	    <div class="card">
                           <div class="d-flex justify-content-end mr-4">
                                <button class="btn btn-outline-danger mt-3">저장</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th class="table-primary align-middle">멤버코드</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" disabled ></td>
                                            <th class="table-primary align-middle">아이디</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">이름</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="123" type="text" disabled></td>
                                            <th class="table-primary align-middle">닉네임</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">연락처</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234-1234" type="text" disabled></td>
                                            <th class="table-primary align-middle">구분</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="기업" type="text" disabled></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">등급</th>
                                            <td colspan="3">
                                                <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
	                                                <div class="custom-control custom-radio mr-3 ">
	                                                    <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input mr-5">
	                                                    <label class="custom-control-label" for="customRadio4">별</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input mr-5">
	                                                    <label class="custom-control-label" for="customRadio2">달</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
	                                                    <label class="custom-control-label" for="customRadio3">지구</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input">
	                                                    <label class="custom-control-label" for="customRadio4">해</label>
	                                                </div>
	                                                
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">상태</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="블랙리스트" type="text" disabled></td>
                                            <th class="table-primary align-middle">신고횟수</th>
                                            <td>
                                                <div class="col-4 d-flex align-items-center">
                                                <input class="form-control custom-shadow mr-2" id="" name="" value="10" type="text" disabled>회
                                                </div>
                                            </td>        
                                        </tr>
                                        <tr>                                     
                                            <th class="table-primary align-middle">주소</th>
                                            <td colspan="3">                                              
                                                <input class="form-control custom-shadow mb-1" style="width: 20%;" id="" name=""  value="55555" type="text" disabled>
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="" name="" type="text" disabled>                 
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="" name="" type="text" disabled>     
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                </div>
			
			


            
              
             
            
                
               
          