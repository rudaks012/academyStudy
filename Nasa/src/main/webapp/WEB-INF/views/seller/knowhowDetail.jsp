<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .blog-author{
     
      margin-top: 20px !important;
   }
   .startbtn{
      border-radius: 20px;
   }
   .blog_details{
      margin-bottom: 20px;
   }
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center">
         <div class="container">
            <div class="row">
               <div class="col-xl-12">
                  <div class="hero-cap text-center pt-50">
                     <h2>판매자의 노하우 Detail</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section class="blog_area single-post-area section-padding">
         <div class="container">
            <div class="row justify-content-center">
            
               <div class="col-lg-8 posts-list"  style="border: 1px solid #d5c9ea; padding: 3em">
                  <div class="single-post">

                        <div class="feature-img">
                           <img class="img-fluid" src="fileupload/${knowhowDetail.no_img }" alt="">
                        </div>
                     
                        <div class="blog_details">
                           <h2 class="center" style="border-bottom: 1px solid #d5c9ea; padding-bottom: 20px;">${knowhowDetail.no_title }</h2>
                           <ul class="blog-info-link mt-3 mb-4">
                              <li><a href="#"><i class="fa fa-user"></i> ${knowhowDetail.s_nickname }</a></li>
                              <li><a href="#"><i class="fa fa-calendar"></i>${knowhowDetail.no_date }</a></li>
                           </ul>
                           <p class="excert">
                              ${knowhowDetail.no_subject }
                           </p>
                          
                           <div style="text-align: center;">
                              <button class="genric-btn primary small startbtn" onclick="location.href='knowhowUpdateForm.do?no_code=${knowhowDetail.no_code}'">수정</button>
                              <button id="knowDelete" class="genric-btn primary small startbtn">삭제</button>
                           </div>
                          
                        </div>
                     
                  </div>

                  <div class="navigation-top">
                     <div class="blog-author">
                        <div class="media align-items-center">
                           <img src="${sellerInfo.s_img }" style="cursor: pointer;" onclick="location.href='sellerDetail.do?s_email=${sellerInfo.s_email}'">
            
                           <div class="media-body">
                              <a href="#">
                                 <h4>${sellerInfo.s_nickname }</h4>
                              </a> &nbsp;&nbsp;&nbsp; <span>등급 : ${sellerInfo.s_rank }</span>
                              <button class="genric-btn primary small startbtn" id="stbtn" style="float: right;" data-toggle="modal" data-target="#chatModal">견적 요청</button>
                              <p>${sellerInfo.s_me }</p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <script>
      	$('#knowDelete').on('click', function(){
      		if(confirm('삭제하시겠습니까?')){
      			$.ajax({
      				url: "knowhowDelete.do",
      				dataType: "text",
      				type:"post",
      				data: {no_code: ${knowhowDetail.no_code }},
      				success: function (result) {
      					console.log(result);
      					if(result){
	      					alert('삭제되었습니다.'); 
	      					location.href='sellerKnowhow.do';
      					}else{
      						alert('일시적인 장애로 삭제 실패하였습니다. \n잠시 후 다시 시도해주세요.');
      					}
      				},
      				error: function(err){
      					alert('일시적인 장애로 삭제 실패하였습니다. \n잠시 후 다시 시도해주세요.');
      				}
      			});
      		}
      	})
      </script>
</body>
</html>