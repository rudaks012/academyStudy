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
nav {
	width: 200px;
	background-color: grey;
	border: 1px solid black;
	poisition: fixed;
	height: 100%;
}

.nav_menu li a {
	height: 30px;
	line-height: 30px;
	display: block;
	padding: 0 20px;
	font-size: 12px;
	color: black;
	line-height: 30px;
}
</style>
</head>

<body>
	<div class="nav_bar">
		<nav>
			<p>고객센터</p>
			<ul class="nav_menu">
				<li><a href="#home">고객센터 홈</a></li>
				<li><a href="#question">자주 묻는 질문</a></li>
				<li><a href="#notice">공지사항</a></li>
				<li><a href="#1vs1">1:1 문의</a></li>
				<li><a href="#together">단체관람 및 대관문의</a></li>
				<li><a href="#lost">분실물 문의</a></li>
				<li><a href="#pst">이용약관</a></li>
				<li><a href="#location">위치기반서비스이용약관</a></li>
				<li><a href="#personal">개인정보처리방침</a></li>
				<li><a href="#screen">스크린배정수에관한기준</a></li>
			</ul>
			<div>
				<p>메가박스 고객센터 Dream center</p>
				<p>10:30 ~ 18:30</p>
			</div>
		</nav>
	</div>

	<section>
		<article id="#home">
			<h3>고객센터 홈</h3>
			<div class="searcharea">
				<div class="searchinputarea">
					<span>빠른검색</span> <input type="text" id="searchinput"
						name="searchinput">
					<button type="button" id="searchbtn" name="searchbtn"></button>
				</div>
			</div>
			<div class="shortcutarea">
				<div class="shortcut1">
					<a href="#"> <span>자주 묻는 질문</span> <span>자주 묻는 질문을
							확인해보세요.</span>
					</a>
				</div>
				<div class="shortcut2">
					<a href="#"> <span>분실물 문의</span> <span>잃어버린 물건을 접수해주시면
							신속히 찾아드리겠습니다.</span>
					</a>
				</div>
				<div class="shortcut3">
					<a href="#"> <span>1:1 문의</span> <span>해결되지 않은 문제가 있나요?
							1:1문의로 답변드리겠습니다.</span>
					</a>
				</div>
				<div class="shortcut4">
					<a href="#"> <span>단체관람 및 대관문의</span> <span>단체관람 또는 대관을
							원하시면 문의해주세요.</span>
					</a>
				</div>
				<div class="shortcut5">
					<a href="#"> <span>할인카드 안내</span> <span>멤버십 제휴카드 및 다양한
							할인카드를 통해 알뜰하게 영화 감상하세요.</span>
					</a>
				</div>
			</div>
			<div class="middlecontents">
				<div class="bestquestion">
					<div>자주 묻는 질문 BEST5</div>
					<div>자주묻는질문 나오는 공간</div>
				</div>
				<div class="notice">
					<div>공지사항</div>
					<div>공지사항 나오는 공간(전체)</div>
				</div>
			</div>
			<div class="eventdiv">이미지 넣어서 a태그 걸기</div>
			<div class="topbtn">
				<button type="button" name="totop" id="totop">top</button>
			</div>
		</article>

		<article id="#question">
			<h3>자주 묻는 질문</h3>
			<div class="tablediv">
				<table class="tabtb">
					<tbody>
						<tr>
							<td id="td1">전체</td>
							<td id="td2">영화예매</td>
							<td id="td3">할인혜택</td>
							<td id="td4">결제수단/관람권</td>
							<td id="td5">멤버십</td>
						</tr>
						<tr>
							<td id="td6">VIP</td>
							<td id="td7">극장</td>
							<td id="td8">특별관</td>
							<td id="td9">스토어</td>
							<td id="td10">홈페이지/모바일</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="questionarea">
				ajax처리해서 각 td 누르면 div 바뀌게 구성
			</div>
		</article>

		<article id="#notice">
			<h3>공지사항</h3>
		</article>

		<article id="#1vs1">
			<h3>1:1 문의</h3>
		</article>

		<article id="#together">
			<h3>단체관람 및 대관문의</h3>
		</article>

		<article id="#lost">
			<h3>분실물 문의</h3>
		</article>

		<article id="#pst">
			<h3>이용약관</h3>
		</article>

		<article id="#location">
			<h3>위치기반서비스이용약관</h3>
		</article>

		<article id="#personal">
			<h3>개인정보처리방침</h3>
		</article>

		<article id="#screen">
			<h3>스크린배정수에관한기준</h3>
		</article>
	</section>
</body>

</html>