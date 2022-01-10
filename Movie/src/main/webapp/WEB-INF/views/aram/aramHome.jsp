<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>
<style>
	li{
		cursor: pointer;
	}
	.ticket_tb{
		 width: 100%;
		 border: 1px solid lightgray;
	}
	#title p{
		font-size: 27px;
		color: black;
		margin-bottom: 15px;
	}
	#first_tr{
		border-top: 1px solid black;
		border-bottom: 1px solid lightgray;
	}
</style>
</head>
<body>
	<div class="wrap">
		<div id="title"><p>빠른예매</p></div>
		
		<table class="ticket_tb">	
			<tr id="first_tr">
				<td colspan="3">
					날짜 슬라이드
				</td>
				<td>
					달력아이콘
				</td>
			</tr>
			
			<tr>
				<td>
					영화
				</td>
				<td colspan="2">
					극장
				</td>
				<td>
					시간
				</td>
			</tr>
			
			<tr>
				<td rowspan="2">
					<ul>
						<li>씽2게더</li>
						<li>스파이더맨:노 웨이 홈</li>
						<li>경관의 피</li>
						<li>킹스맨: 퍼스트 에이전트</li>
					</ul>
				</td>
				<td rowspan="2">
					<ul>
						<li>서울(18)</li>
						<li>경기(27)</li>
						<li>인천(5)</li>
						<li>대전/충청/세종(16)</li>
						<li>부산/대구/경상(20)</li>
						<li>광주/전라(9)</li>
						<li>강원(4)</li>
					</ul>
				</td>
				<td rowspan="2">
					<ul>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
						<li>영화관 이름</li>
					</ul>
				</td>
				<td>
					시간 슬라이드
				</td>
			</tr>
			
			<tr>
				<td>
					<ul>
						<li>선택된 영화 상영시간표 및 정보</li>
						<li>선택된 영화 상영시간표 및 정보</li>
						<li>선택된 영화 상영시간표 및 정보</li>
					</ul>
				</td>
			</tr>
		</table>
	
	</div> <!-- end of wrap -->
</body>
</html>