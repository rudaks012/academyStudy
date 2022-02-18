<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-5 ">
                            <h6>회원관리 <i class="fas fa-chevron-right mx-2"></i>구매자관리</h6>
                        </div>
                        <ul class="list-style-none d-flex mb-3">
                            <li class="mr-1">총 회원수 <span class="text-danger mx-1">3</span>명</li>
                            <a href="#"><li class="mx-4">블랙리스트 <span class="text-danger mx-1">100</span>명</li></a>
                            <li class="mx-4">탈퇴 <span class="text-danger mx-1">3</span>명</li>
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
               <div class="card">
                   <div class="card-body">
                     <table class="table caption-top table-bordered thead-light  text-center">
                        <caption class="ml-2 mb-3 p-3" style="border: 1px solid #5a6268; border-radius: 5px;">구매자 검색</caption>
                         <tbody>
                             <tr>
                                <th>아이디</th>
                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                <th>닉네임</th>
                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                             </tr>
                             <tr>
                                <th>이름</th>
                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                <th>연락처</th>
                                <td><input class="form-control custom-shadow" id="" name="" type="tel"></td>
                             </tr>
                             <tr>
                                <th>주소</th>
                                <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                <th>등급</th>
                                <td>
                                    <div class="d-flex justify-content-around">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                            <label class="form-check-label" for="inlineRadio1">별</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                            <label class="form-check-label" for="inlineRadio1">달</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                            <label class="form-check-label" for="inlineRadio1">지구</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                            <label class="form-check-label" for="inlineRadio1">해</label>
                                        </div>
                                    </div>
                                </td>
                             </tr>
                        </tbody>
                     </table>

	                     <div class="d-flex justify-content-end my-4">
	                        <button class="btn btn-outline-secondary"><i class=""></i>검색</button>
	                    </div>
                   </div>
               </div>
                
                <div class="row">
                	<div class="col-5">
                	    <div class="card">
		                   <div class="card-body">
		                     <table class="table caption-top table-bordered thead-light  text-center">
		                        <caption class="ml-2 mb-3 p-3" style="border: 1px solid #5a6268; border-radius: 5px;">회원 조회</caption>
		                         <thead class="thead-light">
		                         	<tr>
		                         		<th>멤버코드</th>
		                         		<th>아이디</th>
		                         		<th>이름</th>
		                         		<th>생년월일</th>
		                         		<th>등급</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                             </tr>
		                        </tbody>
		                     </table>
		
			                     <div class="d-flex justify-content-end my-4">
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
                	</div>
                </div>
            
                
               
            </div>