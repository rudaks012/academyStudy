<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div>
		<table border="1">
			<tr>
				<td colspan="2"><tiles:insertAttribute name="aheader"/></td>
			</tr>
			<tr>
				<td width="20%" height="600"><tiles:insertAttribute name="asidebar"/></td>
				<td width="80%"><tiles:insertAttribute name="abody" />
			</tr>
			<tr>
				<td colspan="2"><tiles:insertAttribute name="afooter"/></td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>