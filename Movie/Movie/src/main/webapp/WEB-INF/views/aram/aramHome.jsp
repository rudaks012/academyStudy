<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
</head>
<style>
	.inner-wrap{
		width: 1200px;
		margin: 0 auto;
	}
	#page-title{
		border-bottom: 1px solid black;	
	}
	h2.tit{
	    letter-spacing: -1px;
	    margin-block-start: 0.93em;
	    margin-block-end: 0.93em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	.quick-reserve{
		width: 1100px;
		height: 580px;
	    margin: 0 auto;
	    padding: 0;
	    border-bottom: 1px solid lightgray;
	}
	.quick-reserve .movie-choice, .cinema-choice, .timetable{
		float: left;
	}
	.date-wrap{
		height: 35px;
		border: 1px solid lightgray;	
	}
	 .swiper {
        width: 1100px;
  		height: 30px;
	}

      .swiper-slide {
      	width: 80px;
      	margin: 1px 6px 1px 6px;
        text-align: center;
        font-size: 14px;
       	color: black;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
	}
	
	 @media (max-width: 760px) {
        .swiper-button-next {
          right: 20px;
          transform: rotate(90deg);     
        }
        .swiper-button-prev {
          left: 20px;
          transform: rotate(90deg);
        }
	}
	.movie-choice{
		border-left: 1px solid lightgray;
		padding: 0 20px 17px 20px;
		width: 230px;
		height: 545px;
		
	}
	.gradeimg {
		width: 20px;
		height: 20px;
		border-radius: 70%;
	}
	#movie-btn, #cinema-btn{
		width: 140px;
		height: 22px;
		font-size: 0.9em;
		text-align: left;
		margin-bottom: 5px;
		border: 0;
		outline: 0;
		background: white;
		letter-spacing: 0;
		cursor: pointer;
	}
	#movie-btn:focus, #cinema-btn:focus{
		background-color: lightgray;
	}
	.cinema-choice{
		width: 400px;
		height: 545px;
		border-left: 1px solid lightgray;
		border-right: 1px solid lightgray;
		padding: 0 20px 17px 20px;
	}
	.cinema-choice div{
		width: 155px;
		float: left;
	}
	.cinema-area{
		border-right: 1px solid lightgray;
	}
	.timetable{
		width: 470px;
		height: 545px;
		border-right: 1px solid lightgray;
		padding: 0 20px 17px 20px;
	}
	.cinname-btn{
		border: 0;
		outline: 0;
		background: white;
		width: 140px;
		height: 22px;
		font-size: 0.9em;
		margin: 1px 7px 1px 7px;
		text-align: left;
	}
	
</style>


<body>
	<div class="inner-wrap">
		<div id="page-title"><h2 class="tit">빠른예매</h2></div>
		
		<div class="quick-reserve">
			<div class="date-wrap">
				<div class="swiper">
				      <div class="swiper-wrapper">      
				        <div class="swiper-slide">
				       
				        </div>
				      </div>
				      <div class="swiper-button-next"></div> 
				      <div class="swiper-button-prev"></div>
				    </div>
			</div> <!-- end of date-wrap -->
			
			<div class="movie-choice">
				<br><h4>영화</h4><br>
				<c:forEach items="${movies}" var="movie">
					<ul>
						<li>
							<c:choose>
									<c:when test="${movie.grade eq 'ALL' }">
										<img src="resources/icons/allgrade.png" id="gradeimg"
											class="gradeimg">
									</c:when>
									<c:when test="${movie.grade eq '12' }">
										<img src="resources/icons/12grade.png" id="gradeimg"
											class="gradeimg">
									</c:when>
									<c:when test="${movie.grade eq '15' }">
										<img src="resources/icons/15grade.png" id="gradeimg"
											class="gradeimg">
									</c:when>
									<c:when test="${movie.grade eq '18' }">
										<img src="resources/icons/18grade.png" id="gradeimg"
											class="gradeimg">
									</c:when>
								</c:choose>
							<button id="movie-btn">
								
								<span>${movie.mtitle }</span>
							</button>
						</li>
					</ul>
					 </c:forEach> 
			</div> <!-- end of movie-choice -->
			
			<div class="cinema-choice">
				<br><h4>극장</h4><br>
				<div class="cinema-area">
					<c:forEach items="${cinema }" var="cinema">
						<ul>
							<li>
								<button id="cinema-btn">
									<span onclick="cinemafn('${cinema.cinArea}')">${cinema.cinArea }(${cinema.count})</span>
								</button>
							</li>	
						</ul>
					</c:forEach>
				</div>
				<div class="cinema-name">
					
				</div>
			
			</div> <!-- end of cinema-choice -->
			<div class="timetable">
				<br><h4>시간</h4><br>
			</div> <!-- end of timetable -->
		
		
		</div> <!-- end of quick-reserve -->
		
	
	
 </div> <!-- end of inner-wrap -->
	

	 <script>
      var swiper = new Swiper('.swiper', {
        slidesPerView: 14,
        direction: getDirection(),
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        on: {
          resize: function () {
            swiper.changeDirection(getDirection());
          },
        },
      });

      function getDirection() {
        var windowWidth = window.innerWidth;
        var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';

        return direction;
      }
      
      
      let date = new Date();
      let parent = $(".swiper-wrapper");
      $(".swiper-slide").text(date.getDate()+'일');
      
      for(let i=0; i<14; i++){
    	 date.setDate(date.getDate() + 1);
    	 
    	 let div = $("<div>");
    	 div.appendTo(parent);
    	 
    	 div.text(date.getDate() + '일').addClass("swiper-slide");
    	 
      }
      
      
      
      function cinemafn(cinarea){
    	  $.ajax({
    		  url : "ajaxCinemaName.do",
    		  type : "post",
    		  data : {"param":cinarea},
    		  dataType : "json",
    		  success : function(data){
    			  let div = $(".cinema-name");
    			  div.children("ul").remove();
    			  let ul = $("<ul>");
    			  ul.appendTo(div);
    			  
    			 data.forEach(function(val, index){
    				  let li = $("<li>");
    				  let button = $("<button>").addClass("cinname-btn");
	       			  let span = $("<span>");
	       			  li.appendTo(ul);
	       			  button.appendTo(li);
	       			  span.appendTo(button);
	       		
	       			  span.text(val.cinName);
    			 }) 
    			$(".cinema-name")
    		  },
    		  error : function(){
    			  alert("에러");
    		  }
    	  })	  
      }
    </script>
</body>
</html>