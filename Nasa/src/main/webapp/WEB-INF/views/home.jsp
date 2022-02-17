<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

function ajaxdbtest(){
	$.ajax({
		url : "ajaxdbtest.do",
		success : function(data){
			console.log(data)
		}
	})
}
</script>
	nasaaa
	
	<div>
		<button onclick="location.href='go_buyer.do'">구매자 페이지</button>
	</div>
	<div>
		<button onclick="location.href='go_seller.do'">판매자 페이지</button>
	</div>
	<div>
		<button onclick="location.href='go_admin.do'">관리자 페이지</button>
	</div>
	<div>
	<button type="button" onclick="ajaxdbtest()">ajaxdbtest</button>
	</div>
</body>
</html>
