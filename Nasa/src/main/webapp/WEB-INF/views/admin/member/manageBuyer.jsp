<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<style>
.tui-grid-scrollbar-y-inner-border{
   display:none;
}
</style>

<div class="page-breadcrumb">
    <div class="row">
        <div class="col-7 align-self-center">
            <div class="mb-5 ">
                <h6><i class=" far fa-user mr-1"></i> 회원관리 <i class="fas fa-chevron-right mx-2"></i>구매자관리</h6>
            </div>
            <ul class="list-style-none d-flex">
                <li class="mr-1">총 회원수 <span class="text-danger mx-1">${totalBuyer }</span>명</li>
                <div class="mx-3 bg-light position-relative" style="height: 20px; width: 3px; top:3px"></div>
                <a href="#">
                    <li class="mx-2">블랙리스트 <span class="text-danger mx-1">100</span>명</li>
                </a>
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
                                    <input type="radio" id="customRadio1" name="b_rank"
                                        class="custom-control-input mr-5">
                                    <label class="custom-control-label" for="customRadio1">별</label>
                                </div>
                                <div class="custom-control custom-radio mx-3">
                                    <input type="radio" id="customRadio2" name="b_rank"
                                        class="custom-control-input mr-5">
                                    <label class="custom-control-label" for="customRadio2">달</label>
                                </div>
                                <div class="custom-control custom-radio mx-3">
                                    <input type="radio" id="customRadio3" name="b_rank" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio3">지구</label>
                                </div>
                                <div class="custom-control custom-radio mx-3">
                                    <input type="radio" id="customRadio4" name="b_rank" class="custom-control-input">
                                    <label class="custom-control-label" for="customRadio4">해</label>
                                </div>

                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <style>
                .search,
                .reload {
                    position: relative;
                    top: 2px;
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
                회원조회
            </h5>
            <div class="card">
                <div class="card-body">
                    <div class=" mb-3">총 <span class="mx-1 text-danger">${totalBuyer } </span>건</div>
                    <table class="table table-bordered thead-light text-center table-hover">
                        <thead class="table-active">
                            <tr>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>연락처</th>
                                <th>등급</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="buyer" items="${buyerList }" varStatus="status">
                                <tr class="member-list">
                                    <td>${buyer.b_email }</td>
                                    <td>${buyer.b_name }</td>
                                    <td>${buyer.b_tel }</td>
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

        <form id="actionForm" action="go_admin.do" method="get">
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
            <input type="hidden" name="amount" value="${pageMaker.cri.amount }">
        </form>
        <div class="col-6">
            <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                상세조회
            </h5>
            <div class="card">
                <div class="d-flex justify-content-end mr-4">
                    <button id="modifyBtn" class="btn btn-outline-danger mt-3">수정</button>
                </div>
                <div class="card-body">
                   <form id="buyerInfo"> 
                    <table class="table caption-top table-bordered thead-light  text-center">
                        <tbody>
                            <tr>
                                <th width="100px" class="table-primary align-middle">아이디</th>
                                <td colspan="3"><input class="form-control custom-shadow " id="b_email" name="b_email" value=""
                                        type="text" readonly></td>

                            </tr>
                            <tr>
                                <th class="table-primary align-middle">이름</th>
                                <td><input class="form-control custom-shadow" id="b_name" name="b_name" value="" type="text"
                                        readonly></td>
                                <th class="table-primary align-middle">닉네임</th>
                                <td><input class="form-control custom-shadow" id="b_nickname" name="b_nickname" value=""
                                        type="text" readonly></td>
                            </tr>
                            <tr>
                                <th class="table-primary align-middle">연락처</th>
                                <td><input class="form-control custom-shadow" id="b_tel" name="b_tel" value="" type="text"
                                        readonly></td>

                            </tr>
                            <tr>
                                <th class="table-primary align-middle">등급</th>
                                <td colspan="3">
                                    <div class="d-flex align-items-center position-relative"
                                        style="top:5px; left: 10px;">
                                        <div class="custom-control custom-radio mr-3 ">
                                            <input type="radio" id="range_star" name="buyer_rank"
                                                class="custom-control-input mr-5" value="1">
                                            <label class="custom-control-label" for="range_star">별</label>
                                        </div>
                                        <div class="custom-control custom-radio mx-3">
                                            <input type="radio" id="range_moon" name="buyer_rank"
                                                class="custom-control-input mr-5" value="2">
                                            <label class="custom-control-label" for="range_moon">달</label>
                                        </div>
                                        <div class="custom-control custom-radio mx-3">
                                            <input type="radio" id="range_earth" name="buyer_rank"
                                                class="custom-control-input" value="3">
                                            <label class="custom-control-label" for="range_earth">지구</label>
                                        </div>
                                        <div class="custom-control custom-radio mx-3">
                                            <input type="radio" id="range_sun" name="buyer_rank"
                                                class="custom-control-input" value="4">
                                            <label class="custom-control-label" for="range_sun">해</label>
                                        </div>

                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="table-primary align-middle">신고횟수</th>
                                <td>
                                    <div class="col-6 p-0 d-flex align-items-center">
                                        <input class="form-control custom-shadow mr-2" id="b_report" name="" value=""
                                            type="text" readonly>회
                                    </div>
                                </td>
                                <th class="table-primary align-middle">상태</th>
                                <td><input class="form-control custom-shadow" id="b_status" name="" value="" type="text"
                                        readonly></td>

                            </tr>
                            <tr>
                                <th class="table-primary align-middle">주소</th>
                                <td colspan="3">
                                    <input class="form-control custom-shadow mb-1" style="width: 20%;" id="b_zipcode"
                                        name="" value="" type="text" readonly>
                                    <input class="form-control custom-shadow mb-1" style="width: 70%;" id="b_address"
                                        name="" type="text" readonly>
                                    <input class="form-control custom-shadow mb-1" style="width: 70%;"
                                        id="b_detailaddress" name="" type="text" readonly>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                   </form>

                </div>
            </div>
        </div>
    </div>


 <div id="grid"></div>

    <div class="row mt-5">
        <div class="col-12">
            <h5 class="mt-3 p-3 text-white bg-dark d-flex justify-content-between" style="border-radius: 5px;">
                구매내역
                <div class="mr-5">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                            value="option1">
                        <label class="form-check-label" for="inlineRadio1">1개월</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                            value="option1">
                        <label class="form-check-label" for="inlineRadio1">3개월</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                            value="option1">
                        <label class="form-check-label" for="inlineRadio1">6개월</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input mx-3" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                            value="option1">
                        <label class="form-check-label" for="inlineRadio1">1년</label>
                    </div>
                </div>
            </h5>

             <div class="card">
                <div id="paymentCard" class="card-body">
                    <table id="paymentTable" class="table caption-top table-bordered thead-light  text-center">
                        <thead class="thead-light">
                            <tr>
                                <th>서비스코드</th>
                                <th>서비스명</th>
                                <th>판매자아이디</th>
                                <th>서비스일정</th>
                                <th>결제금액</th>
                                <th>결제일자</th>
                                <th>구매확정일자</th>
                            </tr>
                        </thead>
                        <tbody id="tbodypay">



                        </tbody>
                    </table>
                    <div id="pagination" class="d-flex justify-content-center align-items-center"></div>
                    <div class="d-flex justify-content-center mt-5">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                
                                
                                
                            </ul>
                        </nav>
                    </div>


                </div>

                <div class="card-footer border border-secondary d-flex justify-content-between bg-white"
                    style="border-radius: 5px;">
                    <div>총 <span id="paymentListLength" class="text-danger mx-2">0</span>건</div>
                    <div class="mr-4">누적구매금액 <span id="totalPrice" class="text-danger mx-2">0</span>원</div>
                </div>
            </div>
        </div>
    </div>
</div>



<!--  <script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.js"></script>
<script type="text/javascript" src="https://uicdn.toast.com/tui.pagination/v3.3.0/tui-pagination.js"></script>
<script src="https://uicdn.toast.com/tui-grid/latest/tui-grid.js"></script>-->
<script src="resources/admin/dist/js/jquery.twbsPagination.js"></script>
<script type="text/javascript">
    //페이징
    $(document).ready(function () {
        let result = "<c:out value='$(result)'/>";

        checkModal(result);

        history.replaceState({}, null, null);

        function checkModal(result) {

            if (result === '' || history.state) {
                return;
            }
            if (parseInt(result) > 0) {
                alert("게시글" + parseInt(result) + "번 등록");
            }
        }

        let actionForm = $("#actionForm");
        $(".page-item a").on("click", function (e) {
            e.preventDefault();
            actionForm.find("input[name='pageNum']").val($(this).attr("href"));
            actionForm.submit();
        })
    })


    const memberList = document.querySelectorAll(".member-list");
    let cnt = 0;
    
    
    const selectMember = () => {
        const buyerId = event.target.parentNode.firstChild.nextSibling.innerText;

        $.ajax({
                url: "ajaxSelectMember.do",
                type: "post",
                data: {
                    "b_email": buyerId
                }
            }).done(function (result) {
                console.log(result.buyer);
                console.log(result.payment);
                console.log(result.paging)

                $("#b_email").val(result.buyer.b_email);
                $("#b_name").val(result.buyer.b_name);
                $("#b_nickname").val(result.buyer.b_nickname);
                $("#b_tel").val(result.buyer.b_tel);

                let report = result.buyer.b_report; //신고횟수
                report >= "5" ? $("#b_report").addClass("text-danger").val(result.buyer.b_report) : $(
                    "#b_report").val(result.buyer.b_report);

                $("#b_status").val(result.buyer.b_status);
                $("#b_zipcode").val(result.buyer.b_zipcode);
                $("#b_address").val(result.buyer.b_address);
                $("#b_detailaddress").val(result.buyer.b_detailaddress);

                let rank = result.buyer.b_rank; //회원등급
                rank == "1" ? $("#range_star").prop("checked", true) :
                    rank == "2" ? $("#range_moon").prop("checked", true) :
                    rank == "3" ? $("#range_earth").prop("checked", true) :
                    rank == "4" ? $("#range_sun").prop("checked", true) : alert("해당 등급이 없습니다.");


                $("#paymentListLength").text(result.payment.length);
                
                
              
                //구매내역 페이징
                if(result.payment.length!=0){
                   
                $('#tbodypay').empty();
                
                //구매내역 데이터만 가져오는 ajax를 만들고 그 done에 이 페이징 함수를 부를 것 
            let totalCount = result.payment.length; // 글의 총 수 
                let pageSize = 5; // 페이지 크기 [1]~[10] 또는 [1]~[5]
                let nowPage = 1; // 현재 페이지 
                let visibleBlock = 5;

                totalPages = totalCount/pageSize;
                
                if (totalCount%pageSize > 0) {
                    
                   totalPages++;
                
                }
           
                
                //paging(1);
                
                
                $('#pagination').twbsPagination({
                    totalPages: totalPages,
                    visiblePages: visibleBlock,
                    prev: "이전",
                    next: "다음",
                    first: '<<',
                    last: '>>',
                    onPageClick: function (event, page) {
                        paging(page);
                    }
                });
                }else{
                    $('#tbodypay').empty();
                }
            })
            .fail(function (data) {
                console.log("실패원인:" + data);
            })
      
<<<<<<< HEAD
           
=======
        	
>>>>>>> ad4bcf2e1b41b08fb138307169ed96cda8c39c50
            
           var flag = true;
            function paging(page) {
            
            if(flag){
               flag=false;
               
                $.ajax({
                     url:"ajaxBuyerPayment.do",
                     type:"post",
                     data:{"b_email": buyerId},
                     success:function(result){
                        console.log(result)
                         let totalCount = result.length; // 글의 총 수 
                         let pageSize = 5; // 페이지 크기 [1]~[10] 또는 [1]~[5]
                         let nowPage = 1; // 현재 페이지 
                         let visibleBlock = 5;

                         totalPages = totalCount/pageSize;
                         
                         if (totalCount%pageSize > 0) {
                             
                            totalPages++;
                         
                         }
                     
                        $('#tbodypay').empty();
                        $("#pagination").twbsPagination("changeTotalPages", totalPages , page);
                       
                         
                         
                         
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
                         let innerHtml="";
                         for (var j = startRow; j < endRow; j++) {
                             let tr = document.createElement('tr');
                                innerHtml+="<td>"+result[j].s_code+"</td>";
                                 innerHtml+="<td>"+result[j].ser_title+"</td>";
                                 innerHtml+="<td>"+result[j].s_email+"</td>";
                                 innerHtml+="<td>"+result[j].event_start +" ~ "+ result[j].event_end+"</td>";
                                 innerHtml+="<td>"+result[j].pay_price+"</td>";
                                 innerHtml+="<td>"+result[j].pay_date+"</td>";

                                 result[j].pay_enddate == null? //구매확정날짜
                                         innerHtml+="<td class='text-danger'>확정전</td>" : innerHtml+="<td>"+result[j].pay_enddate+"</td>"
                                 innerHtml+="</tr>"     
                                    


                             $(tr).html(innerHtml)
                                 
                                 // .append(result.payment[j].s_code);
                           
                             $('#paymentTable>tbody').append(tr);
                         }
                     },
                     complete:function(){
                        flag=true;
                     }
                     
                 
                  })
            }
         }  
    }
    
    
    Array.from(memberList).forEach(function (element) {
        $(element).off("click").on('click', selectMember);
    })

   
    const modifyBtn = document.querySelector("#modifyBtn");
    const modifyeMemberRank = () => {//수정버튼 이벤트 함수
       var rankVal = $('input[name="buyer_rank"]:checked').val();
       var buyerEmail=$('input[name="b_email"]').val();
       console.log(rankVal);
       console.log(buyerEmail);
       console.log(typeof(rankVal));
         $.ajax({
          url:"ajaxUpdateBuyerRank.do",
          type:"post",
          data:{"b_rank":rankVal,"b_email":buyerEmail},
       
       }).done(function(result){
          
          if(result==0){
             alert("현재 등급과 같습니다.")
          }else{
             alert("수정 완")
          }
       })  
    }
    modifyBtn.addEventListener("click", modifyeMemberRank);
   
</script>