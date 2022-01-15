<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<
style>a {
	text-decoration-line: none;
	color: black;
}

ul {
	list-style: none;
	padding-left: 0px;
}

#menu1 {
	margin-top: 15px;
	border-bottom: black 1px solid;
	height: 90px;
}

#topheader {
	width: 1200px;
	height: 25px;
	margin-left: 18%;
	font-size: 13px;
	color: black;
}

#topheader_right {
	float: right;
}

#topheader_left {
	float: left;
}

#topheader span:hover {
	cursor: pointer;
	text-decoration: underline;
}

#bottomheader {
	height: 75px;
	width: 100%;
	margin: 0 auto;
}

#menu1 ul {
	width: 1500px;
	margin: 0 auto;
	position: relative;
	margin-top: 5px;
}

#menu1 .main>li {
	display: inline-block;
	width: 11%;
	height: 30px;
	line-height: 60px;
	text-align: center;
	background: white;
	height: 30px;
}

#menu1 .main>li:hover .menu2 {
	display: block;
}

#menu1 .main>li a {
	display: block;
	color: black;
	font-size: 18px;
}

#menu1 .menu2 {
	position: absolute;
	top: 50px;
	left: 0;
	width: 100%;
	display: none;
}

#menu1 .sub {
	float: left;
	width: 1200px;
	color: white;
}

#menu1 .sub li a {
	background: rgb(51, 158, 178);
	color: white;
	font-size: 15px;
	float: left;
	width: 15%;
	line-height: 35px;
	margin-top: 5px;
}

#menu1 .sub li a:hover {
	color: white;
	border: none;
	font-weight: bold;
	text-decoration: underline;
}

.mainimg {
	height: 70px;
}
</style>
</head>
<body>
	<div id="menu1">
		<div id="topheader">
			<div id="topheader_left">
				<span><a href="#">VIP LOUNGE</a></span>&nbsp;&nbsp;&nbsp; <span><a
					href="#">멤버십</a></span>
			</div>
			<div id="topheader_right">
				<span><a href="#">로그인</a></span>&nbsp;&nbsp;&nbsp; <span><a
					href="#">회원가입</a></span>&nbsp;&nbsp;&nbsp; <span><a href="#">빠른예매</a></span>
					&nbsp;&nbsp;&nbsp;<span><a href="home.do">[!!!메인화면!!!]</a></span>
			</div>
		</div>
		<div id="bottomheader">
			<ul class="main">
				<li><a href="junhome.do">영화</a>
					<div class="menu2">
						<ul class="sub">
							<li><a href="junhome.do">전체영화</a></li>
							<li><a href="#">N스크린</a></li>
							<li><a href="#">큐레이션</a></li>
							<li><a href="#">무비포스트</a></li>
						</ul>
					</div></li>
				<li><a href="aramhome.do">예매</a>
					<div class="menu2">
						<ul class="sub">
							<li><a href="aramhome.do#">빠른예매</a></li>
							<li><a href="#">상영시간표</a></li>
						</ul>
					</div></li>
				<li><a href="userhome.do">극장</a>
					<div class="menu2">
						<ul class="sub">
							<li><a href="userhome.do">전체극장</a></li>
							<li><a href="moviecenter.do">극장상세</a></li>
						</ul>
					</div></li>
				<li class="mainimg"><img src="resources/icons/mainimg.PNG"
					class="abcimg"></li>
				<li><a href="#">이벤트</a>
					<div class="menu2">
						<ul class="sub">
							<li><a href="#">진행중 이벤트</a></li>
							<li><a href="#">지난 이벤트</a></li>
							<li><a href="#">당첨자발표</a></li>
						</ul>
					</div></li>
				<li><a href="#">혜택</a>
					<div class="menu2">
						<ul class="sub">
							<li><a href="#">메가박스 멤버십</a></li>
							<li><a href="#">제휴/할인</a></li>
						</ul>
					</div></li>
				<li><a href="#">고객센터</a></li>
			</ul>
		</div>
	</div>
</body>
</html>