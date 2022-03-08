<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>               
            
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-5 ">
                            <h6><i  class=" far fa-star mr-1"></i>서비스관리 <i class="fas fa-chevron-right mx-2"></i>일반서비스 관리</h6>
                        </div>
                        <ul class="list-style-none d-flex">
                            <li class="mr-1">총 서비스 <span class="text-danger mx-1">${total }</span>개</li>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <li class="mx-2">오늘 등록된 서비스 <span class="text-danger mx-1">100</span>개</li>
                            
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
           ${serviceLists }
           
            <div class="container-fluid">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                    <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           서비스검색
                     </h5>
                    <div class="card mb-4">
                        <div class="card-body">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                    <tr>
                                        <th class="align-middle table-primary">아이디</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="align-middle table-primary">이름</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                    </tr>
                                  
                                    <tr>
                                        <th class="align-middle table-primary">서비스명</th>
                                        <td><input class="form-control custom-shadow" id="" name="" type="text"></td>
                                        <th class="text-center align-middle table-primary">구분</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="customRadio1" name="person" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio1">개인</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio2" name="person" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio2">기업</label>
                                                </div>
                                                
                                               
                                                
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary ">금액</th>
                                        <td>
                                        	<div class="d-flex align-items-center">
                                        	<div class="col-5 p-0">
                                        	<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
				                            <div class="col-2">
				                            	<span ><i class="fas fa-minus"></i></span>
				                            </div>
				                            <div class="col-5 p-0">
                                        	<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
				                            </div>
				                            </div>
                                        </td>
                                        <th class="text-center align-middle table-primary">온/오프</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="onlineRadio" name="online" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="onlineRadio">온라인</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="offlineRadio" name="online" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="offlineRadio">오프라인</label>
                                                </div>
                                                
                                               
                                                
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<th class="align-middle table-primary">1차 카테고리</th>
                                    	<td>
                                    		<select id="searchCategory" class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="CAT1">앱</option>
				                                <option value="CAT2">웹</option>
				                                <option value="CAT3">게임</option>
				                                <option value="CAT4">보안</option>
				                                <option value="CAT5">기술지원</option>
				                                <option value="CAT6">기획</option>
				                            </select>
                                    	</td>
                                    	<th class="align-middle table-primary">2차 카테고리</th>
                                    	<td>
                                    		<select id="sub_cate" class="custom-select  form-control custom-shadow">
				                                
				                            </select>
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
                
                <div class="row mt-5">
                	<div class="col-6">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            판매내역
                           <!--  <div >
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">리뷰순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">평점순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">위시순</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input mx-2" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                    <label class="form-check-label" for="inlineRadio1">판매순</label>
                                </div>
                            </div> -->
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">${total }</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>순번</th>
		                         		<th width="250px">판매자</th>
		                         		<th>서비스명</th>
		                         		<th>온/오프</th>       		
		                         	</tr>
		                         </thead>
		                         <tbody>
		                          <c:forEach var="service" items="${serviceLists }">
		                             <tr class="serviceList">
		                                <td>${service.ser_code}</td>
		                                <td>${service.s_email }</td>
		                                <td>${service.ser_title }</td>
		                                <td>${service.ser_line }</td>
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
			                    
			                    
			                    <form id="actionForm" action="manage_service.do" method="get">
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
                	    <!-- 유효기간이 남아있을 경우 / 유효기간 종료되면 버튼 안보임 -->
                          <div class="d-flex justify-content-end mr-4">
                                <button class="btn btn-outline-primary mr-3 mt-3">종료</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            <th width="130px" class="table-primary align-middle">서비스코드</th>
                                            <td><input class="form-control custom-shadow " id="ser_code" name="" value="" type="text" readonly ></td>
                                            <th class="table-primary align-middle">구분</th>
                                            <td><input class="form-control custom-shadow " id="ser_author" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">카테고리</th>
                                            <td colspan="3" >
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
                                            <th class="table-primary align-middle">판매자</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="ser_email" name="" value="" type="text" readonly></td>
                                            
                                        </tr>
                                        
                                        <tr>
                                        	<th class="table-primary align-middle">서비스명</th>
                                            <td colspan="3"><input class="form-control custom-shadow" id="ser_title" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                         <th class="table-primary align-middle">금액</th>
                                            <td colspan="3">
                                             	<input class="form-control custom-shadow" id="ser_price" name="" value="" type="text" readonly>
                                            </td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">유효기간</th>
                                            <td colspan="3">
                                             	<input class="form-control custom-shadow" id="ser_date" name="" value="" type="text" readonly>
                                            </td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                                
                                
                                <div class="mt-5">
		                     		<i class="fas fa-chevron-circle-right mb-3 mr-2" style="color:#8771ea"></i>추가정보
		                     	</div>
		                     	
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                       
                                        <tr>                                     
                                            <th class="table-primary align-middle">누적판매</th>
                                            <td>                                              
                                                <input class="form-control custom-shadow mb-1"  id="" name="" type="text" readonly>                 
                                            </td>
                                        </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">리뷰수</th>
                                            <td > 
                                              <div class="col-5 p-0 d-flex align-items-center">                                             
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="" name="" type="text" readonly> <span>개</span>                
                                              </div>
                                            </td>
                                        </tr>
                                        <tr>                                     
                                            <th  class="table-primary align-middle">위시수</th>
                                             <td>
                                               <div class="col-5 p-0 d-flex align-items-center">                                             
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="" name="" type="text" readonly> <span>개</span>                
                                              </div>
                                        	</td>
                                        	 
                                        	
                                           
                                        </tr>
                                        
                                    </tbody>
                                </table>
		
			                     
		                   </div>
               			</div>
                	</div>
                </div>
			
			<div class="row">
				<div class="col-12">
				<h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세설명
                 </h5>
					<div class="card">
		               <div class="card-body">
		                  <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>                                     
                                            <th class="table-primary align-middle">기술수준</th>
                                            <td>                                              
                                                <input class="form-control custom-shadow mb-1"  id="ser_skill" name="" type="text" readonly>                 
                                            </td>
                                        	<th class="table-primary align-middle">팀규모</th>
                                            <td > 
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="ser_team" name="" type="text" readonly>                
                                              
                                            </td>
                                            <th class="table-primary align-middle">방식</th>
                                            <td > 
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="ser_line" name="" type="text" readonly>                
                                              
                                            </td>
                                        </tr>
                                        <tr>
                                        </tr>
                                        <tr>                                     
                                            <th  class="table-primary align-middle">개발언어</th>
                                             <td colspan="5">
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="ser_lang" name="" type="text" readonly>           
                                        	</td>
                                        </tr>
                                        <tr>                                     
                                            <th  class="table-primary align-middle">프레임워크</th>
                                             <td colspan="5">
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="ser_frame" name="" type="text" readonly>                
                                        	</td>
                                        </tr>
                                        <tr>                                     
                                            <th  class="table-primary align-middle">DBMS</th>
                                             <td colspan="5">
                                                <input class="form-control custom-shadow mb-1 mr-2"  id="ser_dbms" name="" type="text" readonly>               
                                        	</td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                             <div class="mt-5">
		                        <i class="fas fa-chevron-circle-right mb-3 mr-2" style="color:#8771ea"></i>서비스제공절차
		                     </div>
                             <textarea rows="8" class="form-control" id="ser_offer" readonly></textarea>
                             <div class="mt-5">
		                        <i class="fas fa-chevron-circle-right mb-3 mr-2" style="color:#8771ea"></i>서비스설명
		                     </div>
                             <textarea rows="8" class="form-control" id="ser_sub" readonly></textarea>      
		                </div>
                	</div>
                </div>
			</div>
         </div>
                        
<<script type="text/javascript">
//전체목록 페이징처리
let actionForm = $("#actionForm");
$(".page-item a").on("click", function (e) {
    e.preventDefault();
    actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    actionForm.submit();
})
//카테고리 select
const handleCategoryChange=()=>{
	let val=event.target.value;
	
	const sub1=["앱개선,버그수정","네이티브웹","앱생성"]
	const sub2=["웹사이트개선,버그수정","프론트엔드,퍼블리싱","검색최적화","웹사이트제작"]
	const sub3=["전체","2D","3D","AR"]
	const sub4=["웹","WINDOWS","MAC","안드로이드","아이폰"]
	const sub5=["엑셀","조립컴퓨터","컴퓨터수리","작업환경세팅"]
	const sub6=["앱,웹기획서","게임기획서","모바일UI"]
	
	let target=document.getElementById("sub_cate");
	
	if(val=="CAT1") var sub_no= sub1;
	if(val=="CAT2") var sub_no= sub2;
	if(val=="CAT3") var sub_no= sub3;
	if(val=="CAT4") var sub_no= sub4;
	if(val=="CAT5") var sub_no= sub5;
	if(val=="CAT6") var sub_no= sub6;
	
	target.options.length=0;
	
	for(i in sub_no){
		var opt=document.createElement("option");
		opt.value=sub_no[0]
		opt.textContent=sub_no[i]
		target.appendChild(opt);
	}
	 
}
$("#searchCategory").on("change",handleCategoryChange);

const selectService=()=>{
	const code = event.target.parentNode.firstChild.nextSibling.innerText;
    
	$.ajax({
		url:"ajaxSelectService.do",
		type:"post",
		data:{"ser_code":code}
	}).done(function(result){
		console.log(result.serviceInfo)
		$("#ser_code").val(result.serviceInfo.ser_code);
		let cat_name=result.serviceInfo.cat_name;//1차카테고리
		let sub_name=result.serviceInfo.sub_name;//2차카테고리
		
		$("#ser_cate").val(cat_name);
		$("#sub_cate").val(sub_name);
		$("#ser_email").val(result.serviceInfo.s_email);
		$("#ser_title").val(result.serviceInfo.ser_title);
		$("#ser_price").val(result.serviceInfo.ser_price);
		$("#ser_date").val(result.serviceInfo.ser_start +" ~ "+result.serviceInfo.ser_start);
		
		//구분
		let author= result.serviceInfo.ser_team
		author=="개인"?$("#ser_author").val("개인"):$("#ser_author").val("기업")
		
		$("#ser_skill").val(result.serviceInfo.ser_skill); 
		$("#ser_team").val(result.serviceInfo.ser_team); 
		$("#ser_line").val(result.serviceInfo.ser_line); 
		$("#ser_lang").val(result.serviceInfo.ser_lang); 
		$("#ser_frame").val(result.serviceInfo.ser_frame); 
		$("#ser_dbms").val(result.serviceInfo.ser_dbms); 
		$("#ser_offer").val(result.serviceInfo.ser_offer); 
		$("#ser_sub").val(result.serviceInfo.ser_sub); 
		
	})
}
const serviceList = document.querySelectorAll(".serviceList");
//서비스 select
    Array.from(serviceList).forEach(function (element) {
        $(element).off("click").on('click', selectService);
    })
</script>                        
                        
                    
                	  
              
             
            
                
               
          