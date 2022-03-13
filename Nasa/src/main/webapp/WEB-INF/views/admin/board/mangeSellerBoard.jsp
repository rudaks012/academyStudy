<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>       

    
     <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-3 ">
                            <h6><i  class="icon-pin mr-2"></i>판매자노하우관리 <i class="fas fa-chevron-right mx-2"></i>전체 노하우 조회</h6>
                        </div>
                    </div>
                </div>
            </div>
	<div class="container-fluid">
            
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                    <h5 class="p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           판매자노하우 검색
                     </h5>
                    <div class="card mb-5">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                    <tr>
                                        <th class="align-middle table-primary">아이디</th>
                                        <td>
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="no_id" type="text">
                                    		</div>
                                    	</td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">제목</th>
                                        <td>
                                        	<div class="col-6">
                                        		<input class="form-control custom-shadow" id="" name="" type="text">
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
	                        <button class="btn btn-outline-dark">검색<i class="ml-2 icon-magnifier search"></i></button>
	                    </div>
                   </div>
               </div>
               
               
               
       
                                    
                                    	
                                    
                            
                            
                   <div class="row my-5">
                	<div class="col-5">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            판매자노하우 목록
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">${searchTotal }</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th width="10%">선택</th>
		                         		<th width="120px">순번</th>
		                         		<th>제목</th>       		
		                         		<th width="120px">등록일자</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                           <c:forEach var="board" items="${boardLists }">
		                             <tr class="boardList">
		                                <td>${board.no_code }</td>
		                                <td>${board.no_title }</td>
		                                <td>${board.no_id }</td>
		                                <td>${fn:substring(board.no_date,0,11) }</td>
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
		                   </div>
		                   
		                   <form id="actionForm" action="go_admin.do" method="get">
							 <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							 <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
							 
						</form>
               			</div>
                	</div>
                	<div class="col-7">
                           <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세조회
                        </h5>
                	    <div class="card">
                           <div class="d-flex justify-content-end mr-4">
                                <button id="modifyBtn" class="btn btn-outline-primary mt-3">수정</button>
                                 <button class="btn btn-outline-secondary ml-2 mt-3">삭제</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th class="table-primary align-middle">순번</th>
                                            <td width="100px"><input class="form-control custom-shadow " id="no_code" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">아이디</th>
                                            <td><input class="form-control custom-shadow" id="no_id" name="" value="" type="text" readonly></td>
                                            
                                        </tr>
                                         <tr>
                                            <th class="table-primary align-middle">신고횟수</th>
                                            <td width="100px"><input class="form-control custom-shadow " id="no_code" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">상태</th>
                                            <td><input class="form-control custom-shadow" id="no_id" name="" value="" type="text" readonly></td>
                                            
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">제목</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="no_title" name="" value="" type="text" readonly></td>
                                            
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">등록날짜</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="no_date" name="" value="" type="text" readonly></td>
                                           
                                        </tr>
                                        
                                        <tr>                                     
                                            <th colspan="4" class="table-primary align-middle">공지내용</th>
                                            
                                        </tr>
                                        <tr>
                                        	<td colspan="4">                                              
                                                <textarea rows="20" class="form-control" id="no_subject" readonly></textarea>
                                               
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                </div>
                

             </div>
             
<script>

//전체목록 페이징처리
let actionForm = $("#actionForm");
$(".page-item a").on("click", function (e) {
    e.preventDefault();
    actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    actionForm.submit();
})

	
const boardList = document.querySelectorAll(".boardList")

const selectBoard=()=>{
	const code = event.target.parentNode.firstChild.nextSibling.innerText;
	$.ajax({
		url:"ajaxDetailBoard.do",
		type:"get",
		data:{"no_code":code}
	}).done(function(result){
		console.log(result)
	})
}

Array.from(boardList).forEach(function (element) {
    $(element).off("click").on('click', selectBoard);
})

</script>