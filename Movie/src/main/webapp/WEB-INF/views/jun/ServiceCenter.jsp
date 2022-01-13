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
	height:30px;
	line-height:30px;
	display: block;
	padding: 0 20px;
	font-size: 12px;
	color: black;
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
		</article>

		<article id="#question">
			<h3>자주 묻는 질문</h3>
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