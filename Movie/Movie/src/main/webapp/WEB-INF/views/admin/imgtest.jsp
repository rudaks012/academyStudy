<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/imgtest.do" method="post" enctype="multipart/form-data">
		<button type="submit">버튼</button>
	</form>
</body>
</html>