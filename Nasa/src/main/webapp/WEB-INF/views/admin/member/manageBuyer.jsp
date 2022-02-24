<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-5 ">
                            <h6><i  class=" far fa-user mr-1"></i> 회원관리 <i class="fas fa-chevron-right mx-2"></i>구매자관리</h6>
                        </div>
                        <ul class="list-style-none d-flex">
                            <li class="mr-1">총 회원수 <span class="text-danger mx-1">3</span>명</li>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <a href="#"><li class="mx-2">블랙리스트 <span class="text-danger mx-1">100</span>명</li></a>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <li class="mx-2">탈퇴 <span class="text-danger mx-1">3</span>명</li>
                        </ul>
                    
                    </div>
                  
                </div>
            </div>
            
            ${buyerList }
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
                           회원검색
                     </h5>
                    <div class="card mb-4">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                    <tr>
                                        <th class="align-middle table-primary">아이디</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="align-middle table-primary">닉네임</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle table-primary">이름</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="align-middle table-primary">연락처</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="tel"></td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">주소</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="text-center align-middle table-primary">등급</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio1">별</label>
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
                	<div class="col-7">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            회원조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>아이디</th>
		                         		<th>닉네임</th>
		                         		<th>이름</th>       		
		                         		<th>연락처</th>
		                         		<th>주소</th>
		                         		<th>등급</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                          	<c:forEach var="buyer" items="${buyerList }">
		                             <tr>
		                                <td>${buyer.b_email }</td>
		                                <td>${buyer.b_nickname }</td>
		                                <td>${buyer.b_name }</td>
		                                <td>${buyer.b_tel }</td>
		                                <td>${buyer.b_address }</td>
		                                <td>
		                                	<c:choose>
		                                		<c:when test="${buyer.b_rank eq '1' }">
		                                			별
		                                		</c:when>
		                                		<c:when test="${buyer.b_rank eq '2' }">
		                                			달
		                                		</c:when>
		                                		<c:when test="${buyer.b_rank eq '3' }">
		                                			지구
		                                		</c:when>
		                                		<c:when test="${buyer.b_rank eq '4' }">
		                                			해
		                                		</c:when>
		                                	</c:choose>
		                                </td>
		                             </tr>
		                             </c:forEach>
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
                	<div class="col-5">
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
                                            <th width="85px" class="table-primary align-middle">회원<br>코드</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" readonly ></td>
                                            <th width="85px" class="table-primary align-middle">아이디</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="123" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">이름</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="123" type="text" readonly></td>
                                            <th class="table-primary align-middle">닉네임</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">연락처</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="1234-1234" type="text" readonly></td>
                                            <th class="table-primary align-middle">구분</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="블랙리스트" type="text" readonly></td>
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
                                            <th class="table-primary align-middle">신고<br>횟수</th>
                                            <td>
                                                <div class="col-4 d-flex align-items-center">
                                                <input class="form-control custom-shadow mr-2" id="" name="" value="10" type="text" readonly>회
                                                </div>
                                            </td>    
                                            <th class="table-primary align-middle">상태</th>
                                            <td><input class="form-control custom-shadow" id="" name="" value="블랙리스트" type="text" readonly></td>
                                                
                                        </tr>
                                        <tr>                                     
                                            <th class="table-primary align-middle">주소</th>
                                            <td colspan="3">                                              
                                                <input class="form-control custom-shadow mb-1" style="width: 20%;" id="" name=""  value="55555" type="text" readonly>
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="" name="" type="text" readonly>                 
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="" name="" type="text" readonly>     
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                   </div>
               



             <div class="row mt-5">
                 <div class="col-12">      
                        <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            구매내역
                            <div class="mr-5">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">1개월</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">3개월</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">6개월</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">1년</label>
                                </div>
                            </div>
                        </h5>
                    
                	    <div class="card">
		                   <div class="card-body">
                            <table class="table caption-top table-bordered thead-light  text-center">		                        
                                <thead class="thead-light">
                                    <tr>
                                        <th>서비스코드</th>
                                        <th>서비스명</th>
                                        <th>판매자아이디</th>
                                        <th>서비스일정</th>
                                        <th>서비스구분</th>
                                        <th>결제금액</th>
                                        <th>결제일자</th>
                                        <th>결제상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                       <td>123</td>
                                       <td>123</td>
                                       <td>13</td>
                                       <td>55555</td>
                                       <td>6666</td>
                                       <td>7777</td>
                                       <td>8888</td>
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
                           <div class="card-footer border border-secondary d-flex justify-content-between bg-white" style="border-radius: 5px;">
                               <div>총 <span class="text-danger mx-2">5</span>건수</div>
                               <div class="mr-4">누적구매금액 <span class="text-danger mx-2">100,000</span>원</div>
                           </div>
                	</div>
                </div>
                 </div>
             </div>
            
                
               
          