<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<button type="button" onclick="location='junhome.do'">태준</button>
<button type="button" onclick="location='userhome.do'">rud</button>
<button type="button" onclick="location='aramhome.do'">아람</button>
<button type="button" onclick="location='ohhome.do'">영오</button>
<button type="button" onclick="location='adminhome.do'">재의</button>
<button type="button" onclick="ajaxdbtest()">ajaxdbtest</button>
</body>
</html>
