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
	Hello 94 Friends!
</h1>

<button type="button" onclick="location='junhome.do'">JOON</button>
<button type="button" onclick="location='userhome.do'">MAN</button>
<button type="button" onclick="location='aramhome.do'">ARAM</button>
<button type="button" onclick="location='ohhome.do'">OH</button>
<button type="button" onclick="location='adminhome.do'">HA</button>
<button type="button" onclick="ajaxdbtest()">ajaxdbtest</button>
</body>
</html>
