<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <script src="resources/excel/html2canvas.js"></script>
			<script src="resources/excel/jspdf.min.js"></script>
         <div id="pdfDiv">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-3 ">
                            <h6><i  class="icon-credit-card mr-1"></i>결제관리 <i class="fas fa-chevron-right mx-2"></i>서비스결제내역</h6>
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
                    <div class=" mb-2  p-2  " style="border-radius:5px; font-size:18px">
                      <table class="table table-bordered text-center">
                      	<tbody>
                      		<tr>
                      		  <th width="16%" class="table-primary"> 총 판매금액</th>
                      		  <td><span class="text-danger mr-1">1,000,000,000,000,000</span>원</td>
                      		  <th class="table-primary"> 총 수수료</th>
                      		  <td><span class="text-danger mr-1">1,000,000,000,000,000</span>원</td>
                      		</tr>
                      		<tr>
                      		  
                      		</tr>
                      	</tbody>
                      </table>
                    </div>
                     
                    
                    <!-- <h5 class="p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           결제검색
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
                                        <th class="align-middle table-primary">결제일자</th>
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
               </div> -->
               
               
               
                  <div class="row my-5">
                	<div class="col-12">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between align-items-center" style="border-radius: 5px;">
                            결제내역조회
                            <div>
                            	<button class="btn btn-outline-warning " id="savePdfBtn" >PDF 다운로드</button>
                            </div>
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">50</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>결제코드</th>
		                         		<th>결제일자</th>
		                         		<th>서비스코드</th>
		                         		<th>1차 카테고리</th>        		
		                         		<th>2차 카테고리</th>
		                         		<th>서비스명</th>
		                         		<th>구매자아이디</th>
		                         		<th>구매일자</th>
		                         		<th>결제금액</th>
		                         		
		                         		<th>구매확정일자</th>
		                         		<th>총금액</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                             <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>3333</td>
		                                <td>500,000</td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                
		                                <td>-</td>
		                                <td class="text-primary">15,000,000</td>
		                                
		                             </tr>
                                     <tr>
		                                <td>2222</td>
		                                <td>2222</td>
		                                <td>3333</td>
		                                <td>500,000</td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                <td></td>
		                                
		                                <td>2021-02-08</td>
		                                <td class="text-danger">14,950,000</td>
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
             
             
             
             
             
             </div>


             <script type="text/javascript">
                const bigCategory = document.querySelector("#bigCategory");
                const openSmallCategory=()=>{
                    $("#smallCategory").attr("disabled",false);
                    
                }
                bigCategory.addEventListener("change",openSmallCategory);


                var doc = new jsPDF();
                var specialElementHandlers = {
                    '#editor': function(element, renderer) {
                        return true;
                    }
                }
                 
                $('#savePdfBtn').click(function() {
                    html2canvas($("#pdfDiv"), {
                        onrendered : function(canvas) {
                            // 한글깨짐현상때문에 jpeg->jspdf 전환
                            var imgData = canvas.toDataURL('image/jpeg');
                            var pageWidth = 210;
                            var pageHeight = pageWidth * 1.414;
                            var imgWidth = pageWidth - 20;
                            var imgHeight = $('#pdfDiv').height() * imgWidth / $('#pdfDiv').width();
                            var doc = new jsPDF('p','mm',[pageHeight, pageWidth]);
                            doc.addImage(imgData, 'JPEG', 10, 10, imgWidth, imgHeight);
                            doc.save('화면.pdf');
                        }
                    });
                });
            </script>
            
		
			


            
              
             
            
                
               
          