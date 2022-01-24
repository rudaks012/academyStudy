<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function logout(){
		swal({
			icon : 'info',
			title :'Logout',
			text : '로그아웃 하시겠습니까?',
			buttons :{
			rollture : {
				text : "OK",
				value : true
			},
			rollfalse : {
				text : "cancel",
				value : false
			}
			}

		}).then(function(value) {
			if(value){
				location.href = "logout.do"
			}
			
		})
	}
</script>
</head>
<body>
	<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
			<a class="navbar-brand brand-logo mr-5" href="adminhome.do"><img
				src="resources/admin/images/logo.svg" class="mr-2" alt="logo" /></a> <a
				class="navbar-brand brand-logo-mini" href="index.html"><img
				src="resources/admin/images/logo-mini.svg" alt="logo" /></a>
		</div>
		<div
			class="navbar-menu-wrapper d-flex align-items-center justify-content-end">

			<ul class="navbar-nav navbar-nav-right">
				<c:if test="${empty id }">
					<li class="nav-item nav-profile dropdown"><a style="font-size: 1.2rem"
						class="nav-link dropdown-toggle" href="loginForm.do"> <i style="font-size: 1.2rem"
							class="mdi mdi-lock"></i>Login
					</a></li>
				</c:if>
				<c:if test="${not empty id }">
					<li class="nav-item nav-profile dropdown"><a style="font-size: 1.2rem"
						class="nav-link dropdown-toggle" href="javascript:logout()">
							<i style="font-size: 1.2rem" class="mdi mdi-lock-open"></i>Logout
					</a></li>
				</c:if>
			</ul>

		</div>
	</nav>
</body>
</html>