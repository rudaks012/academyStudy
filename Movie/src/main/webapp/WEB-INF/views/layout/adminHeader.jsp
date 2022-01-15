<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="resources/admin/images/logo.svg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="resources/admin/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        
        <ul class="navbar-nav navbar-nav-right">
         
          <li class="nav-item nav-profile dropdown">
           
            <a class="nav-link dropdown-toggle" href="loginForm.do">
             <i class="mdi mdi-lock"></i>Login
            </a>
            <a class="nav-link dropdown-toggle" href="#" id="profileDropdown">
              <i class="mdi mdi-lock-open"></i>Logout
             </a>
          </li>
        </ul>
        
      </div>
    </nav>
</body>
</html>