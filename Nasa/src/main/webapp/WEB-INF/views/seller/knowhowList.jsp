<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- Hero Start-->
    <div class="hero-area2short  slider-height2 hero-overly2 d-flex align-items-center ">
    </div>
    <!--Hero End -->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <c:forEach items="${knowhowlist }" var="knowhow">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                        <div class="single-team mb-30">
                            <div class="team-img">
                                <img src="editor/${knowhow.no_img }" alt="" style="width: 370px; height: 440px;">
                            </div>
                            <div class="team-caption" style="margin-top : 20px;">
                                <span>${knowhow.s_nickname }</span>
                                <h3><a href="knowhowDetail.do?no_code=${knowhow.no_code }">${knowhow.no_title }</a></h3>
                                <p>${knowhow.no_date }</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <div class="row justify-content-center mt-10">
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                  <c:if test="${paging.prev }">
                      <li class="page-item"><a class="page-link" href="go_knowhowlist.do?pageNum=${paging.startPage - 1 }&amount=${paging.amount}">&lt;</a></li>
                  </c:if>
                  <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
                      <c:choose>
                          <c:when test="${p == paging.pageNum }">
                              <li class="page-item"><b class="page-link">${p }</b></li>
                          </c:when>
                          <c:when test="${p != paging.pageNum }">
                              <li class="page-item"><a class="page-link" href="go_knowhowlist.do?pageNum=${p }&amount=${paging.amount}">${p }</a></li>
                          </c:when>
                      </c:choose>
                  </c:forEach>
                  <c:if test="${paging.next }">
                      <li class="page-item"><a class="page-link" href="go_knowhowlist.do?pageNum=${paging.endPage+1 }&amount=${paging.amount}">&gt;</a></li>
                  </c:if>
              </ul>
            </nav>
        </div>
    </section>
</body>
</html>