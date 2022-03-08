<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>              
            
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
                	<div class="col-6">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            구매자내역조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">${total }</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th width="10%">결제코드</th>
		                         		<th>구매자</th>
		                         		<th>결제금액</th>
		                         		<th>구매상태</th>        		
		                         	</tr>
		                         </thead>
		                         <tbody>
		                            <c:forEach var="payment" items="${paymentLists }">
			                             <tr class="paymentList">
			                                <td>${payment.pay_code }</td>
			                                <td>${payment.b_email }</td>
			                                <td>${payment.pay_price }</td>
			                                <c:if test="${empty payment.pay_enddate  }">
			                                 <td class="text-danger">구매 확정 전</td>
			                                </c:if>
			                                 <c:if test="${!empty payment.pay_enddate  }">
			                                 <td class="text-primary">${payment.pay_enddate }</td>
			                                </c:if>
			                             </tr>
		                             </c:forEach>
		                        </tbody>
		                     </table>
		
			                     <div class="d-flex justify-content-center mt-5">
				                        <nav aria-label="Page navigation example">
				                            <ul class="pagination">
				                                <c:if test="${pageMaker.prev }">
				                                    <li class="page-item"><a class="page-link" href="${pageMaker.startPage -1 }"
				                                            aria-label="Previous"> <span aria-hidden="true">«</span> <span
				                                                class="sr-only">이전</span>
				                                        </a></li>
				                                </c:if>
				                                <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				                                    <li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
				                                        <a class="page-link" href="${num }">${num }</a>
				                                    </li>
				                                </c:forEach>
				                                <c:if test="${pageMaker.next }">
				                                    <li class="page-item"><a class="page-link" href="${pageMaker.endPage + 1 }"
				                                            aria-label="Next"> <span aria-hidden="true">»</span> <span
				                                                class="sr-only">다음</span>
				                                        </a></li>
				                                </c:if>
				                            </ul>
				                        </nav>
				                    </div>
				                    
				                    <form id="actionForm" action="manage_buyerPayment.do" method="get">
										 <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
										 <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
										 
									</form>
		                   </div>
               			</div>
                	</div>
                	<div class="col-6">
                           <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세조회
                        </h5>
                	    <div class="card">
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="20%" class="table-primary align-middle">결제코드</th>
                                            <td><input class="form-control custom-shadow " id="pay_code" name="" value="" type="text" readonly ></td>
                                            <th class="table-primary align-middle">결제날짜</th>
                                            <td><input class="form-control custom-shadow " id="pay_date" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">구매자아이디</th>
                                            <td><input class="form-control custom-shadow" id="b_email" name="" value="" type="text" readonly></td>
                                             <th class="table-primary align-middle">구매자상태</th>
                                            <td><input class="form-control custom-shadow" id="b_status" name="" value="" type="text" readonly></td>
                                            <!-- c:if 사용자 or 블랙리스트 -->
                                           
                                        </tr>
                                        <tr>
                                        	 <th class="table-primary align-middle">구매확정</th>
                                            <td><input class="form-control custom-shadow " id="pay_end" name="" value="" type="text" readonly></td>
                                            <!-- c:if 확정전, 확정완료 -->
                                             <th class="table-primary align-middle">확정날짜</th>
                                            <td><input class="form-control custom-shadow " id="pay_enddate" name="" value="" type="text" readonly></td>
                                            <!-- c:if 해당없음, 2021-01-28 -->
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">서비스코드</th>
                                            <td><input class="form-control custom-shadow" id="s_code" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">서비스구분</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="ser_team" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">카테고리</th>
                                            <td colspan="3">
                                            	<div class="d-flex">
                                            	<div class="col-5 p-0">
                                            		<input class="form-control custom-shadow " id="ser_cate" name="" value="" type="text" readonly>
                                            	</div>
                                            	<div class="col-6 ml-3 p-0">
                                            		<input class="form-control custom-shadow " id="sub_cate" name="" value="" type="text" readonly>
                                            	</div>
                                               </div>
                                            
                                            </td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">서비스명</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="ser_title" name="" value="" type="text" readonly></td>
                                        </tr>
                                        
                                        <tr>
                                            <th class="table-primary align-middle">판매자구분</th>
                                            <td><input class="form-control custom-shadow" id="ser_team" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">판매자아이디</th>
                                            <td><input class="form-control custom-shadow" id="s_email" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">결제금액</th>
                                            <td><input class="form-control custom-shadow" id="pay_price" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">쿠폰사용</th>
                                            <td><input class="form-control custom-shadow" id="pay_coupon" name="" value="" type="text" readonly></td>
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
//전체목록 페이징

let actionForm = $("#actionForm");
$(".page-item a").on("click", function (e) {
    e.preventDefault();
    actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    actionForm.submit();
})


const selectPayment=()=>{
	const code = event.target.parentNode.firstChild.nextSibling.innerText;
	$.ajax({
		url:"ajaxSelectBuyerPayment.do",
		type:"post",
		data:{"pay_code":code}
	}).done(function(result){
		console.log(result)
		$("#pay_code").val(result.pay_code)
		$("#pay_date").val(result.pay_date)
		$("#b_email").val(result.b_email)
		let b_status=result.b_status;
		b_status=="U"?$("#b_status").val("사용자"):
			b_status="M"?$("#b_status").val("블랙리스트"):$("b_status").val("영구정지")
		let pay_end = result.pay_enddate
		pay_enddate!=null?$("#pay_end").val("확정완료"):$("#pay_end").val("확정대기")
		pay_enddate!=null?$("#pay_enddate").val(pay_end):$("#pay_enddate").val("확정대기")
		$("#s_code").val(result.s_code)
		$("#ser_cate").val(result.cat_name)
		$("#sub_cate").val(result.sub_name)
		$("#ser_team").val(result.ser_team)
		
	})
}

const paymentList = document.querySelectorAll(".paymentList")

Array.from(paymentList).forEach(function (element) {
    $(element).off("click").on('click', selectPayment);
})
</script>
		
			


            
              
             
            
                
               
          