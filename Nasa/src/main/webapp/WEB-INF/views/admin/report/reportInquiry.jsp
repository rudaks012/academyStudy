<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>           
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
            
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
                                        <a href="report_inquiry.do"  class="nav-link  active">
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
                                        <a href="report_complete.do" class="nav-link">
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
                            
                            
                              <div class=" my-4">총 <span class="mx-1 text-danger">${total }</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>신고자아이디</th>       		
		                         		<th>신고유형</th>
		                         		<th>피신고자아이디</th>
		                         		<th>신고일자</th>
		                         		<th>상태</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                           <c:forEach var="report" items="${reportLists }">
		                           	 <tr class="reportList">
		                           	 	<input type="hidden" value="${report.re_code }">
		                                <td>${report.re_reporter }</td>
		                                <td>${report.re_type }</td>
		                                <td>${report.re_res }</td>
		                                <td>${fn:substring(report.re_date,0,11) }</td>
		                                <c:if test="${empty report.re_result }">
		                                	<td class="text-primary">대기</td>
		                                </c:if>
		                                <c:if test="${report.re_result eq 'Y'}">
		                                	<td>완료</td>
		                                </c:if>
		                                <c:if test="${report.re_result eq 'D'}">
		                                	<td class="text-danger">반려</td>
		                                </c:if>
		                             </tr>
		                           </c:forEach>
		                             
                                     
		                        </tbody>
		                     </table>
		
			          <div class="d-flex justify-content-center mt-5">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <c:if test="${pageMaker.prev }">
                                    <li class="page-item">
                                        <a class="page-link" href="${pageMaker.startPage -1 }" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">이전</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                                    <li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
                                        <a class="page-link" href="${num }">${num }</a>
                                    </li>
                                </c:forEach>
                                <c:if test="${pageMaker.next }">
                                    <li class="page-item">
                                        <a class="page-link" href="${pageMaker.endPage + 1 }" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">다음</span>
                                        </a>
                                    </li>
                                </c:if>
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
                           <div class="d-flex justify-content-end mr-4">
                                <button class="btn btn-outline-primary mr-3 mt-3" id="confirmBtn">승인</button>
                                <button class="btn btn-outline-dark  mt-3" data-toggle="modal" data-target="#refuse-report-modal">반려</button>
                                
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고코드</th>
                                            <td ><input class="form-control custom-shadow " id="re_code" name="re_code" value="" type="text" readonly ></td>
                                            <th width="18%" class="table-primary align-middle">신고일자</th>
                                            <td><input class="form-control custom-shadow " id="re_date" name="re_date" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고자</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="re_reporter" name="re_reporter" value="" type="text" readonly ></td>
                                            
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-danger align-middle">피신고자</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="re_res" name="re_res" value="" type="text" readonly ></td>
                                            
                                        </tr>
                                        <tr>
                                        	<th width="18%" class="table-danger align-middle">신고횟수</th>
                                            <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-2 text-danger" id="" name="" value="" type="text" readonly >회
                                        	   </div>
                                        	</td>
                                        	<th width="18%" class="table-primary align-middle">신고유형</th>
                                            <td><input class="form-control custom-shadow " id="re_type" name="re_type" value="" type="text" readonly ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고처리</th>
                                            <td ><input class="form-control custom-shadow " id="re_result" name="re_result" value="" type="text" readonly ></td>
                                            <th width="18%" class="table-primary align-middle">처리일자</th>
                                            <td><input class="form-control custom-shadow " id="re_rpoertdate" name="re_rpoertdate" value="" type="text" readonly ></td>
                                        </tr>
                                         <tr>
                                            <th colspan="4" class="table-primary align-middle">신고내용</th>
                                        </tr>
                                        <tr>
											<td colspan="4" >
												<textarea rows="10" class="form-control" id="re_subject" readonly></textarea>
											
											</td>                                 
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">첨부파일</th>
                                            <td colspan="3" id=" filecode"></td>
                                            
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
                                            <td ><input class="form-control custom-shadow " id="" name="" value="" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고일자</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-primary align-middle">신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="" type="text" disabled ></td>
                                            <th width="18%" class="table-primary align-middle">신고유형</th>
                                            <td><input class="form-control custom-shadow " id="" name="" value="" type="text" disabled ></td>
                                        </tr>
                                        <tr>
                                            <th width="18%" class="table-danger align-middle">피신고자</th>
                                            <td ><input class="form-control custom-shadow " id="" name="" value="" type="text" disabled ></td>
                                            <th width="18%" class="table-danger align-middle">신고횟수</th>
                                            <td>
                                               <div class="col-6 p-0 d-flex align-items-center">
                                            	<input class="form-control custom-shadow mr-2 text-danger" id="" name="" value="" type="text" disabled >회</td>
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
		
			

<script type="text/javascript">

const reportList = document.querySelectorAll(".reportList");

const selectReport=()=>{
	const res = event.target.parentNode.lastChild.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.innerText;
	const reCode=event.target.parentElement.firstElementChild.value;
	$.ajax({
		url:"ajaxDetailedReport.do",
		type:"post",
		data:{"re_res":res,"re_code":reCode}
	}).done(function(result){
		console.log(result)
		$("#re_code").val(result.re_code)
		$("#re_date").val(result.re_date)
		$("#re_reporter").val(result.re_reporter)
		$("#re_type").val(result.re_type)
		$("#re_res").val(result.re_res)
		$("#re_result").val(result.re_result)
	//	let re_date = result.re_rpoertdate
	//	re_date==null? $("#re_rpoertdate").val("대기"): $("#re_rpoertdate").val(result.re_rpoertdate)
		$("#re_subject").val(result.re_subject)
		
		let filecode= result.filecode
		result.filecode==null?$("#filecode").text("해당없음"):$("#filecode").text("filecode 조인 필요")
	})
}
Array.from(reportList).forEach(function (element) {
    $(element).off("click").on('click', selectReport);
})
</script>
            
              
             
            
                
               
          