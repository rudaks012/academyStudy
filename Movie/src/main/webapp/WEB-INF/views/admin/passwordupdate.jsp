<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" id="updateid" name="memId" value="${id }">
	<form id="updateform" action="formpasswordupdate.do" method="post">
		<div style="position: absolute; left: 40%; top: 40%;">
			<table style="width: 500px; height: 150px;" border="1px solid black">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center;">비밀번호 변경</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>아이디</th>
						<td>${id }</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${name }</td>
					</tr>
					
					<tr>
						<th>변경할 패스워드 입력</th>
						<td><input type="password" id="password" name="memPassword"
							placeholder="패스워드를 입력하세요"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" id="passwordchk"
							 placeholder="패스워드 확인"></td>
					</tr>
					<tr>

						<td colspan="2"><button type="button"
								onclick="passwordconfirm()">비밀번호 변경</button></td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
	
	<script type="text/javascript">
	  function passwordconfirm(){
          let passwordval = document.getElementById('password')
          let passwordchkval = document.getElementById('passwordchk')
          if(passwordval.value==passwordchkval.value){
            let updateform = document.getElementById('updateform')
            let updateid = document.getElementById('updateid')
            console.log(updateid)
            
            updateform.append(updateid);
            updateform.submit();
          }else{
            alert('비밀번호를 확인해 주세요 일치X')
            passwordval.value = '';
            passwordchkval.value = '';
            passwordval.focus();
          }
        }
	</script>
</body>
</html>