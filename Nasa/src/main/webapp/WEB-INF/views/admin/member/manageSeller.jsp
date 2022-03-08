<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>   

         
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <div class="mb-5 ">
                            <h6><i  class=" far fa-user mr-1"></i>회원관리 <i class="fas fa-chevron-right mx-2"></i>판매자관리</h6>
                        </div>
                        <ul class="list-style-none d-flex">
                            <li class="mr-1">총 회원수 <span class="text-danger mx-1">${fn:length(sellerList) }</span>명</li>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <a href="#"><li class="mx-2">블랙리스트 <span class="text-danger mx-1">100</span>명</li></a>
                            <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                            <li class="mx-2">탈퇴 <span class="text-danger mx-1">3</span>명</li>
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
                    <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                           회원검색
                     </h5>
                    <div class="card mb-4">
                        <div class="card-body">
                          <form id="searchForm" method="get">
                            <table class="table caption-top table-bordered  text-center">
                                <tbody>
                                    <tr>
                                        <th class="align-middle table-primary">아이디</th>
                                        <td><input class="form-control custom-shadow" id="" name="s_email" type="text"></td>
                                        <th class="align-middle table-primary">닉네임</th>
                                        <td><input class="form-control custom-shadow" id="" name="s_nickname" type="text"></td>
                                    </tr>
                                    <tr>
                                        <th class="text-center align-middle table-primary">이름</th>
                                        <td><input class="form-control custom-shadow" id="" name="s_name" type="text"></td>
                                        <th class="align-middle table-primary">연락처</th>
                                        <td><input class="form-control custom-shadow" id="" name="s_tel" type="tel"></td>
                                    </tr>
                                    <tr>
                                        <th class="align-middle table-primary">주소</th>
                                        <td><input class="form-control custom-shadow" id="" name="s_address" type="text"></td>
                                        <th class="text-center align-middle table-primary">등급</th>
                                        <td>
                                            <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
                                                <div class="custom-control custom-radio mr-3 ">
                                                    <input type="radio" id="customRadio1" name="s_rank" value="1" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio1">별</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio2" name="s_rank" value="2" class="custom-control-input mr-5">
                                                    <label class="custom-control-label" for="customRadio2">달</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio3" name="s_rank" value="3" class="custom-control-input">
                                                    <label class="custom-control-label" for="customRadio3">지구</label>
                                                </div>
                                                <div class="custom-control custom-radio mx-3">
                                                    <input type="radio" id="customRadio4" name="s_rank" value="4" class="custom-control-input">
                                                    <label class="custom-control-label" for="customRadio4">해</label>
                                                </div>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
			                           <th class="align-middle table-primary">가입일자</th>
			                            <td colspan="3">
			                                <div class="d-flex align-items-center">
			                                     <div class="col-3 p-0">
				                                     <input type="date" class="form-control" name="s_date" value='<c:out value="${pageMaker.cri.b_date }"/>'>
				                                  </div>
				                                  <span class="mx-2"><i class="fas fa-minus"></i></span>
				                                  <div class="col-3 p-0">
				                                       <input type="date" class="form-control" name="s_date2" value='<c:out value="${pageMaker.cri.b_date2 }"/>'>
				                                   </div>
			                                  </div>
			                               </td>
			                     </tr>
                                 <!--    <tr>
                                    	<th class="align-middle table-primary">1차 카테고리</th>
                                    	<td>
                                    		<select class="custom-select  form-control custom-shadow ">
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
                                    	</td>
                                    	<th class="align-middle table-primary">2차 카테고리</th>
                                    	<td>
                                    		<select class="custom-select  form-control custom-shadow" disabled>
				                                <option selected="">선택</option>
				                                <option value="1">July 19</option>
				                                <option value="2">Jun 19</option>
				                            </select>
                                    	</td>
                                    </tr> -->
                                </tbody>
                            </table>
                           </form>
                        <style>
                            .search, .reload{
                                position: relative;
                                top:2px;
                            }
                        </style>

	                     <div class="d-flex justify-content-end my-4">
                            <button id="resetBtn" class="btn btn-outline-warning mr-3">초기화<i class="ml-2 icon-reload reload"></i></button>
	                        <button id="searchBtn" class="btn btn-outline-secondary">검색<i class="ml-2 icon-magnifier search"></i></button>
	                    </div>
                   </div>
               </div>
               
                <div class="row my-5">
                	<div class="col-6">
                	   <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            회원조회
                        </h5>
                	    <div class="card">
                            <div class="card-body">
                                <div class=" mb-3">총 <span class="mx-1 text-danger">${fn:length(sellerList) }</span>건</div>
		                     <table class="table table-bordered thead-light text-center table-hover">		                        
		                         <thead class="table-active">
		                         	<tr>
		                         		<th>아이디</th>
		                         		<th>이름</th>
		                         		<th>닉네임</th>       		
		                         		<th>구분</th>
		                         		<th>등급</th>
		                         	</tr>
		                         </thead>
		                         <tbody>
		                         	<c:forEach var="seller" items="${sellerList }">
			                             <tr class="member-list">
			                                <td>${seller.s_email }</td>
			                                <td>${seller.s_name }</td>
			                                <td>${seller.s_nickname }</td>
			                                <td>${seller.s_author }</td>
			                                <td>
		                                        <c:choose>
		                                            <c:when test="${seller.s_rank eq '1' }">
		                                                별
		                                            </c:when>
		                                            <c:when test="${seller.s_rank eq '2' }">
		                                                달
		                                            </c:when>
		                                            <c:when test="${seller.s_rank eq '3' }">
		                                                지구
		                                            </c:when>
		                                            <c:when test="${seller.s_rank eq '4' }">
		                                                해
		                                            </c:when>
		                                        </c:choose>
		                                    </td>
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
		                   
		                   <form id="actionForm" action="manage_seller.do" method="get">
								 <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
								 <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
								 <input type="hidden" name="s_email" value="${pageMaker.cri.s_email }">
								 <input type="hidden" name="s_nickname" value="${pageMaker.cri.s_nickname }">
								 <input type="hidden" name="s_name" value="${pageMaker.cri.s_name }">
								 <input type="hidden" name="s_tel" value="${pageMaker.cri.s_tel }">
								 <input type="hidden" name="s_address" value="${pageMaker.cri.s_address }">
								 <input type="hidden" name="s_rank" value="${pageMaker.cri.s_rank }">
								 <input type="hidden" name="s_date" value="${pageMaker.cri.s_date }">
								 <input type="hidden" name="s_date2" value="${pageMaker.cri.s_date2 }">
							</form>
               			</div>
                	</div>
                	<div class="col-6">
                           <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                            상세조회
                        </h5>
                	    <div class="card">
                           <div class="d-flex justify-content-end mr-4">
                                <button id="modifyBtn" class="btn btn-outline-danger mt-3">수정</button>
                            </div>
		                   <div class="card-body">
                                <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
	                                    <tr>
		                                    <td rowspan="4" >
		                                       <img id="s_img"  width="180px" height="230px">
		                                    </td>
	                               		 </tr>
                                        <tr>
                                        	<th class="table-primary align-middle">이름</th>
                                            <td colspan="2"><input class="form-control custom-shadow" id="s_name" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle" width="150px">닉네임</th>
                                            <td colspan="2"><input class="form-control custom-shadow" id="s_nickname" name="" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            
                                            <th class="table-primary align-middle" width="150px">아이디</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="s_email" name="s_email" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">연락처</th>
                                            <td width="200px"><input class="form-control custom-shadow" id="s_tel" name="" value="" type="text" readonly></td>
                                            <th class="table-primary align-middle">구분</th>
                                            <td><input class="form-control custom-shadow" id="s_author" name="" value="" type="text" readonly></td>
                                        </tr>
                                         <tr>
                                            
                                            <th class="table-primary align-middle">가입일자</th>
                                            <td colspan="3"><input class="form-control custom-shadow " id="s_date" name="s_date" value="" type="text" readonly></td>
                                        </tr>
                                        <tr>
                                            <th class="table-primary align-middle">등급</th>
                                            <td colspan="3">
                                                <div class="d-flex align-items-center position-relative" style="top:5px; left: 10px;">
	                                                <div class="custom-control custom-radio mr-3 ">
	                                                    <input type="radio" id="range_star" name="seller_rank" value="1" class="custom-control-input mr-5">
	                                                    <label class="custom-control-label" for="range_star">별</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio" id="range_moon" name="seller_rank" value="2" class="custom-control-input mr-5">
	                                                    <label class="custom-control-label" for="range_moon">달</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio"  id="range_earth" name="seller_rank" value="3" class="custom-control-input">
	                                                    <label class="custom-control-label" for="range_earth">지구</label>
	                                                </div>
	                                                <div class="custom-control custom-radio mx-3">
	                                                    <input type="radio" id="range_sun" name="seller_rank" value="4" class="custom-control-input">
	                                                    <label class="custom-control-label" for="range_sun">해</label>
	                                                </div>
	                                                
	                                            </div>
                                            </td>
                                        </tr>
                                        <tr>
                                        	  <th class="table-primary align-middle">신고횟수</th>
                                            <td>
                                                <div class="p-0 col-6 d-flex align-items-center">
                                                <input class="form-control custom-shadow mr-2" id="s_report" name="" value="" type="text" readonly>회
                                                </div>
                                            </td>   
                                            <th class="table-primary align-middle" width="80px">상태</th>
                                            <td><input class="form-control custom-shadow" id="s_status" name="" value="" type="text" readonly></td>
                                               
                                        </tr>
                                        <tr>                                     
                                            <th class="table-primary align-middle">주소</th>
                                            <td colspan="3">                                              
                                                <input class="form-control custom-shadow mb-1" style="width: 20%;" id="s_zipcode" name=""   type="text" readonly>
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="s_address" name="" type="text" readonly>                 
                                                <input class="form-control custom-shadow mb-1" style="width: 70%;" id="s_detailaddress" name="" type="text" readonly>     
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
                            추가정보
                        </h5>
                        
                	    <div class="card">
		                   <div class="card-body">
		                     <div>
		                     	<i class="fas fa-chevron-circle-right mb-3 mr-2" style="color:#8771ea"></i>학적정보
		                     </div>
                             <table class="table caption-top table-bordered thead-light  text-center">		                        
                                    <tbody>
                                        <tr>
                                            
                                            <th class="table-primary align-middle" width="20%">학교명</th>
                                            <td colspan="3">
                                                <div class="col-4 p-0">
                                                   <input class="form-control custom-shadow " id="s_school" name="s_school" value="" type="text" readonly></td>
                                        		</div>
                                        </tr>
                                         <tr>
                                            
                                            <th class="table-primary align-middle">학과명</th>
                                            <td colspan="3">
                                                <div class="col-4 p-0">
                                                   <input class="form-control custom-shadow " id="s_major" name="s_major" value="" type="text" readonly></td>
                                        		</div>
                                        </tr>
                                         <tr>
                                            
                                            <th class="table-primary align-middle">졸업사항</th>
                                            <td colspan="3">
                                                <div class="col-4 p-0">
                                                   <input class="form-control custom-shadow " id=s_grad" name="s_grad" value="" type="text" readonly></td>
                                        		</div>
                                        </tr>
                                        
                                        
                                    </tbody>
                                </table>
                                
                                
                                <div class="my-4">
		                     		<i class="fas fa-chevron-circle-right  mr-2" style="color:#8771ea"></i>기타 경력사항
		                     	</div>
		                     	
			                     	<div class="col-12">
			                     		<textarea cols="8" id="s_carrer" style="height:150px ;width:100%" readonly></textarea>
			                     	</div>
			                     	
			                     <div class="my-4">
		                     		<i class="fas fa-chevron-circle-right  mr-2" style="color:#8771ea"></i>자기소개
		                     	</div>
		                     	
			                     	<div class="col-12">
			                     		<textarea cols="8" id="s_me" style="height:350px ;width:100%" readonly></textarea>
			                     	</div>		
		                     	  

                         
		
			                     
		                   </div>
                         
                	</div>
                </div>
              </div>    
			
			
		


             
              
             
            
 <script src="resources/admin/dist/js/jquery.twbsPagination.js"></script>
<script type="text/javascript">

// 전체목록 페이징

let actionForm = $("#actionForm");
$(".page-item a").on("click", function (e) {
    e.preventDefault();
    actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    actionForm.submit();
})

//가입날짜 변경
let startDate =$("input[name='s_date']");
let endDate =$("input[name='s_date2']");
const handleReportDate =()=>{
	$(endDate).val($(startDate).val())
	
	
}
$("input[name='s_date']").on("change",handleReportDate);

//초기화버튼
const hadleResetLists =()=>{
	$(startDate).val("")
	$(endDate).val("")
	$("input[name='s_email']").val('')
	$("input[name='s_name']").val('')
	$("input[name='s_nickname']").val('')
	$("input[name='s_tel']").val('')
	$("input[name='s_address']").val('')
	
	searchForm.action="manage_seller.do";
	searchForm.submit();
}
$("#resetBtn").on("click",hadleResetLists);


//검색버튼
const searchReport=()=>{
	
	
//	if(type!="choice"||reporterId!=""||startDate!=""){
		searchForm.action="manage_seller.do";
		searchForm.submit();
//	}else{
//		alert("검색어를 입력해주세요.")
//	}
	
	
}
$("#searchBtn").on("click",searchReport);

    $('#pagination').twbsPagination({
        totalPages: 100,
        visiblePages: 5,
        startPage: 1,
        initiateStartPageClick: true,
        first: '<<',
        prev: "이전",
        next: "다음",
        last: '>>',
        onPageClick: function (event, page) {
            console.log(page);
            paging(page); //여기
            
        }
    });

    var flag = true;

    	
    function paging(page) {
       
       
        let sellerId = document.getElementById('s_email').value;
        
        // 두번째부터 조건문 false임
        if (flag) {
            flag = false;
            
            $.ajax({
                url: "",
                type: "post",
                data: {
                    "s_email": sellerId
                },
                success: function (result) {
                    let totalCount = result.length; // 글의 총 수 
                    let pageSize = 5; // 페이지 크기 [1]~[10] 또는 [1]~[5]
                    let nowPage = 1; // 현재 페이지 
                    let visibleBlock = 5;
                    
                    totalPages = totalCount / pageSize;

                    if (totalCount % pageSize > 0) {

                        totalPages++;

                    }

                    $('#tbodypay').empty();
                    $("#pagination").twbsPagination("changeTotalPages", totalPages, page);
					
                    var startRow = (page - 1) * pageSize; // + 1 list는 0부터 시작하니깐;
                    var endRow = page * pageSize;
                    if (endRow > totalCount) {
                        endRow = totalCount;
                    }
                    var startPage = ((page - 1) / visibleBlock) * visibleBlock + 1;
                    var endPage = startPage + visibleBlock - 1;
                    if (endPage > totalPages) { //
                        endPage = totalPages;
                    }
                    let innerHtml = "";
                    for (var j = startRow; j < endRow; j++) {
                        let tr = document.createElement('tr');
                        innerHtml += "<td>" + result[j].s_code + "</td>";
                        innerHtml += "<td>" + result[j].ser_title + "</td>";
                        innerHtml += "<td>" + result[j].s_email + "</td>";
                        innerHtml += "<td>" + result[j].event_start + " ~ " + result[j].event_end + "</td>";
                        innerHtml += "<td>" + result[j].pay_price + "</td>";
                        innerHtml += "<td>" + result[j].pay_date + "</td>";
                        result[j].pay_enddate == null ? //구매확정날짜
                            innerHtml += "<td class='text-danger'>확정전</td>" : 
                            	innerHtml += "<td>" + result[j].pay_enddate + "</td>"
                                innerHtml += "</tr>"



                        $(tr).html(innerHtml)

						

                        $('#paymentTable>tbody').append(tr);
                    }
					
                },
                complete: function () {
                    flag = true;
                }
            })
        }
    }



  


    const memberList = document.querySelectorAll(".member-list");
 


    const selectMember = () => {
        const sellerId = event.target.parentNode.firstChild.nextSibling.innerText;
        console.log("selectMember", sellerId);

        $.ajax({
                url: "ajaxSelectSeller.do",
                type: "post",
                data: {
                    "s_email": sellerId
                }
            })
            .done(function (result) {
                console.log("ajax result", result);
                console.log(result.seller);
                

                $("#s_email").val(result.seller.s_email);
                $("#s_name").val(result.seller.s_name);
                $("#s_nickname").val(result.seller.s_nickname);
                $("#s_tel").val(result.seller.s_tel);

                let report = result.seller.s_report; //신고횟수
                report >= "5" ? $("#s_report").addClass("text-danger").val(result.seller.s_report) : $(
                    "#s_report").val(result.seller.s_report);

                $("#s_status").val(result.seller.s_status);
                $("#s_zipcode").val(result.seller.s_zipcode);
                $("#s_address").val(result.seller.s_address);
                $("#s_detailaddress").val(result.seller.s_detailaddress);

                let rank = result.seller.s_rank; //회원등급
                rank == "1" ? $("#range_star").prop("checked", true) :
                    rank == "2" ? $("#range_moon").prop("checked", true) :
                    rank == "3" ? $("#range_earth").prop("checked", true) :
                    rank == "4" ? $("#range_sun").prop("checked", true) : alert("해당 등급이 없습니다.");
				
                $("#s_date").val(result.seller.s_date);
                $("#s_author").val(result.seller.s_author);   
<<<<<<< HEAD
                $("#s_img").attr("src",result.seller.s_img)
=======
                $("#s_img").attr("src",result.seller.s_img);
>>>>>>> 828340d27373c5251a46d01d4ffb2667eaac02e5
                $("#s_school").val(result.seller.s_school); 
                $("#s_major").val(result.seller.s_major); 
                $("#s_grad").val(result.seller.s_grad);   
                $("#s_carrer").val(result.seller.s_carrer);   
                $("#s_me").val(result.seller.s_me);   
                

            })
            .fail(function (data) {
                console.log("실패원인:" + data);
            })
    }


    Array.from(memberList).forEach(function (element) {
        $(element).off("click").on('click', selectMember);
    })


    const modifyBtn = document.querySelector("#modifyBtn");
    const modifyeMemberRank = () => { //수정버튼 이벤트 함수
        var rankVal = $('input[name="seller_rank"]:checked').val();
        var sellerEmail = $('input[id="s_email"]').val();
        
        $.ajax({
            url: "ajaxUpdateSellerRank.do",
            type: "post",
            data: {
                "s_rank": rankVal,
                "s_email": sellerEmail
            },

        }).done(function (result) {

            if (result == 0) {
                alert("현재 등급과 같습니다.")
            } else {
                alert("수정 완")
                window.location.reload();
            }
        })
    }
    modifyBtn.addEventListener("click", modifyeMemberRank);
</script>               
               
          