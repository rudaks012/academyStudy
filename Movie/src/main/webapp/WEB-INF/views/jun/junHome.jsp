<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.container {
	width: 1200px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	color: black;
	letter-spacing: 0;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
	display: -webkit-flex;
	margin-left: 5px;
}

ul.tabs li {
	display: inline-block;
	cursor: pointer;
	border: rgb(235, 235, 235) solid 1px;
	border-bottom: rgb(80, 51, 150) solid 1px;
	width: 220px;
	height: 40px;
	font-size: 15px;
	text-align: center;
	line-height: 40px;
}

ul.tabs li.current {
	border: rgb(80, 51, 150) solid 1px;
	border-bottom: none;
	color: rgb(80, 51, 150);
}

.tab-content {
	display: none;
	padding: 12px;
}

.tab-content.current {
	display: inherit;
}

.moviecount {
	width: 1090px;
}

.onoffbtn {
	background-color: white;
	border: none;
	cursor: pointer;
}

button:active, button:focus {
	border: none;
	box-shadow: none;
	outline: none;
}

.searchdiv {
	float: right;
}

.searchmovie {
	position: relative;
	height: 30px;
	width: 200px;
	border: #cccccc solid 1px;
	border-radius: 3px;
}

.searchbtn {
	position: absolute;
	height: 20px;
	width: 20px;
	margin-left: 175px;
	border: none;
	background-color: white;
	margin-top: 3px;
	cursor: pointer;
	z-index: 1;
}

.searchimg {
	margin-bottom: 10px;
	height: 20px;
	width: 20px;
}

.movie-list {
	width: 1200px;
}

.movielist {
	list-style: none;
	-webkit-padding-start: 0px;
}

.movie-info {
	width: 230px;
	height: 450px;
	float: left;
	margin-right: 60px;
	margin-bottom: 45px;
}

.movie-detail {
	position: relative;
	width: 235px;
	height: 335px;
}

.movie-poster {
	width: 230px;
	height: 331px;
}

.rankno {
	position: absolute;
	z-index: 1;
	color: white;
	top: 5px;
	left: 10px;
	font-size: 30px;
	text-shadow: 2px 2px 2px grey;
}

.screen-type {
	position: absolute;
	top: 5px;
	right: 10px;
	padding: 5px;
}

#dolby {
	background-color: rgba(0, 0, 0, 0.6);
	border: solid 6px rgba(0, 0, 0, 0.01);
}

#mx {
	background-color: rgba(0, 0, 0, 0.6);
	border: solid 6px rgba(0, 0, 0, 0.01);
}

.tit-area {
	height: 30px;
	margin-top: 10px;
}

.gradeimg {
	width: 23px;
	height: 23px;
}

.movie-title {
	font-size: 18px;
	vertical-align: top;
}

.rate-date {
	font-size: 14px;
	margin-top: 5px;
}

.btn-util {
	margin-top: 10px;
}

.bookbtn {
	width: 230px;
	height: 35px;
	color: white;
	background-color: rgb(80, 51, 150);
	border: none;
	border-radius: 4px;
	font-size: 15px;
}
</style>
</head>

<body>
	<div class="container">
		<br>
		<h2>전체영화</h2>
		<br>
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1" id="boxoffice">박스오피스</li>
			<li class="tab-link" data-tab="tab-2" id="openexpected">상영예정작</li>
			<li class="tab-link" data-tab="tab-3" id="special">특별상영</li>
			<li class="tab-link" data-tab="tab-4" id="filmsociety">필름소사이어티</li>
			<li class="tab-link" data-tab="tab-5" id="classicsociety">클래식소사이어티</li>
		</ul>
		<br>
		<div id="tab-1" class="tab-content current">
			<div id="tab-header">
				<div class="moviecount">
					<button type="button" class="onoffbtn" id="offbtn" name="offbtn">
						<img src="resources/icons/offbtn.png" id="offbtnimg">&nbsp;<span
							id="onoffspan">개봉작만</span>
					</button>
					&nbsp;&nbsp;&nbsp;<span>${fn:length(movie)}개의 영화가 검색되었습니다.</span>
					<div class="searchdiv">
						<button type="button" id="searchbtn" name="searchbtn"
							class="searchbtn">
							<img src="resources/icons/searchbtn.png" class="searchimg">
						</button>
						<input type="text" placeholder="영화명 검색" id="searchmovie"
							class="searchmovie">
					</div>
				</div>
			</div>
			<br>
			<div class="movie-list">
				<ol id="list" class="movielist">
					<c:forEach items="${movie }" var="movie" varStatus="status">
						<li tabindex="0" class="movie-info">
							<div class="movie-detail">
								<p class="rank">
									<span class="rankno" id="rankno">${status.count }</span>
								</p>
								<img src="resources/movieposter/${movie.filename }"
									alt="${movie.mtitle }" class="movie-poster">
								<div class="screen-type">
									<c:if test="${movie.dolby eq 'O'}">
										<span id="screen-type2"> <img
											src="resources/icons/dolby.png" alt="dolby" id="dolby">
										</span>
									</c:if>
									<c:if test="${movie.mx eq 'O'}">
										<span id="screen-type2"> <img
											src="resources/icons/mx.png" alt="mx" id="mx">
										</span>
									</c:if>
								</div>
							</div>
							<div class="tit-area">
								<c:choose>
									<c:when test="${movie.grade eq 'all' }">
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
								<span class="movie-title">${movie.mtitle }</span>

							</div>
							<div class="rate-date">
								<span class="rate-date-detail">예매율 ${movie.rate }%│개봉일
									${movie.opendate }</span>
							</div>
							<div class="btn-util">
								<button type="button" class="bookbtn" id="bookbtn"
									name="bookbtn">예매</button>
							</div>
						</li>
					</c:forEach>
				</ol>
			</div>
		</div>
	</div>
	<div id="tab-2" class="tab-content">
		<p>상영예정작</p>
	</div>
	<div id="tab-3" class="tab-content">
		<p>특별상영</p>
	</div>
	<div id="tab-4" class="tab-content">
		<p>필름소사이어티</p>
	</div>
	<div id="tab-5" class="tab-content">
		<p>클래식소사이어티</p>
	</div>
	<script>
		$(document).ready(function() {
			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			});
		});

		$('#offbtn').click(function() {
			var onoffimg = document.getElementById("offbtnimg");
			onoffimg.src = "resources/icons/onbtn.png";
			$('#offbtn').attr('id', 'onbtn');
			$('#offbtn').attr('name', 'onbtn');
			$('#offbtnimg').attr('id', 'onbtnimg');
		});

		$('#onbtn').click(function() {
			var onoffimg = document.getElementById("onbtnimg");
			onoffimg.src = "resources/icons/offbtn.png";
		});
	</script>
</body>

</html>