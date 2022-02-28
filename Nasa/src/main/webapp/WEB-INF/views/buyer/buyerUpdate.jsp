<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    window.onload = function() {
	        document.getElementById("searchAdderess").addEventListener("click", function() {
            new daum.Postcode({
                oncomplete: function(data) {
                    document.getElementById("b_zipcode").value = data.zonecode;
                    document.getElementById("b_address").value = data.address;
                    document.getElementById("b_detailaddress").focus();
                }
            }).open();
        });
    }
</script>
</head>
<body>
<!-- Hero Start-->
<div class="hero-area2short  slider-height2 hero-overly2 d-flex align-items-center ">
</div>
<!--Hero End -->

<!-- buyerUpdate Start -->

	<section>
		<div class="row justify-content-center" style="margin-top: 50px;">
			<div style="width:550px;">
				<form method="get" id = "profilefrm" action="profileUpdate.do" onsubmit="return passwordCheck()" enctype="multipart/form-data">
					<div id="profileThumnail" class="justify-content-center" style="text-align: center;">
						<c:choose>
							<c:when test="${empty buyerinfo.b_img }">
			                    <img id="prvimg" src="resources/user/assets/img/profile/defaultprofileimg.png" alt="" style="width: 150px; height:150px; border-radius: 70%; overflow: hidden;"><br>
							</c:when>
							<c:otherwise>
								<img id="prvimg" src="${buyerinfo.b_img }" alt="" style="width: 150px; height:150px; border-radius: 70%; overflow: hidden;"><br>
							</c:otherwise>
						</c:choose>
	                    <input type="file" id="imgupload" name="imgupload" accept="image/*">
	                    <!-- <label class="genric-btn primary radius" for="imgupload" style="margin-top: 7px;">사진 수정</label> -->
                    </div>
				
					<div style="margin-top: 20px;">
						<p>닉네임</p>
						<div class="form-group">
							<input class="form-control" name="b_nickname" id="b_nickname" type="text" placeholder="${buyerinfo.b_nickname }" value="${buyerinfo.b_nickname }" required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>이메일</p>
						<div class="form-group">
							<input class="form-control" name="b_email" id="b_email" type="text" placeholder="${buyerinfo.b_email }" value="${buyerinfo.b_email }" readonly required>
						</div>
					</div>
				
					<div class="single-element-widget mt-30">
                        <p>관심분야</p>
                        <p style="font-size:15px;">현재 관심분야 : 앱-앱생성</p>
                        <div class="d-flex">
                        	<div class="categorysel mr-4" id="categorysel">
                                <select>
                                   <c:forEach items="${categoryList }" var="category">
                                    	<option value="${category.cat_no }">${category.cat_name }</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="categoryselect mr-4" id="categoryselect">
                                <select onchange="chooseCategory(this)">
                                    <option value="a">a</option>
                                    <option value="b">b</option>
                                    <option value="c">c</option>

                                </select>
                            </div>
    
                            <div class="subcategoryselect" id="subcategoryselect">
                                <select>
                                    
                                </select>
                            </div>
                        </div>
                    </div>
				
					<div style="margin-top: 20px;">
						<p>주소</p>
						<div class="form-group">
							<input class="form-control col-8" name="b_zipcode" id="b_zipcode" type="text" placeholder="${buyerinfo.b_zipcode }" value="${buyerinfo.b_zipcode }" style="display: inline;" readonly required>
							<label id="searchAdderess" class="genric-btn primary radius col-lg-3">주소조회</label>
							<input class="form-control col-lg-8" name="b_address" id="b_address" type="text" placeholder="${buyerinfo.b_address }" value="${buyerinfo.b_address }" style="display: inline;margin-top: 5px;" readonly required>
							<input class="form-control col-lg-3" name="b_detailaddress" id="b_detailaddress" type="text" placeholder="${buyerinfo.b_detailaddress }" value="${buyerinfo.b_detailaddress }" style="display: inline;margin-top: 5px;" required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>새로운 비밀번호</p>
						<div class="form-group">
							<input class="form-control" name="b_password" id="b_password" type="password" placeholder="${buyerinfo.b_password }" value=${buyerinfo.b_password } required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>새로운 비밀번호 확인</p>
						<div class="form-group">
							<input class="form-control" name="newpassword" id="newpassword2" type="password" placeholder="${buyerinfo.b_password }" value=${buyerinfo.b_password } required>
						</div>
					</div>
				
					<div class="row justify-content-center" style="margin-bottom: 50px;">
						<button type="submit" class="genric-btn info-border">수정</button>
						<!-- onclick="updateProfile()" -->
						<a href="goBuyerMypage.do" class="genric-btn danger-border" style="margin-left: 10px;">취소</a>
					</div>
				</form>
			</div>
		</div>
	</section>
      
	<script>
		function readImage(input) {
			if(input.files && input.files[0]) {
				const reader = new FileReader();
				
				reader.onload = e => {
					const previewImage = document.getElementById("prvimg");
					previewImage.src = e.target.result;
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		
		const inputImage = document.getElementById("imgupload");
		inputImage.addEventListener("change", e => {
			readImage(e.target);
		});
		
		function chooseCategory(e) {
            var sub_a = ["a", "b", "c"];
            var sub_b = ["d", "e", "f"];
            var sub_c = ["g", "h", "i"];
            var target = document.getElementById("subcategoryselect");
            var c = $("#subcategoryselect div ul");
            var d = target.children[1].children[1];
            console.log(d);            

            if(e.value == "a") var sub = sub_a;
            else if(e.value == "b") var sub = sub_b;
            else if(e.value == "c") var sub = sub_c;

            while(d.hasChildNodes()) {
                d.removeChild(d.firstChild);
            }          

            for(i in sub) {
                var opt = document.createElement("li");
                opt.setAttribute("data-value", sub[i]);
                opt.setAttribute("class", "option");
                opt.innerHTML = sub[i];
                d.append(opt);
            }

        }
		
		function passwordCheck() {
			var newpwd1 = document.getElementById("b_password").value;
			var newpwd2 = document.getElementById("newpassword2").value; 
			
			if(newpwd1 != newpwd2) {
				window.alert("입력한 비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
		
		/* function updateProfile() {
			var newpwd1 = document.getElementById("b_password").value;
			var newpwd2 = document.getElementById("newpassword2").value;
			
			var b_email = document.getElementById("b_email").value;
			console.log(b_email);
			var b_nickname = document.getElementById("b_nickname").value;
			var b_zipcode = document.getElementById("b_zipcode").value;
			var b_address = document.getElementById("b_address").value;
			var b_detailaddress = document.getElementById("b_detailaddress").value;
			var b_password = document.getElementById("b_password").value;
			
			if(newpwd1 != newpwd2) {
				window.alert("입력한 비밀번호가 일치하지 않습니다.");
				return;
			}
			
			 $.ajax({
	 			url:"profileUpdate.do",
        		type:"get",
        		data: {
        			b_email : b_email,
        			b_nickname : b_nickname,
        			b_zipcode : b_zipcode,
        			b_address : b_address,
        			b_detailaddress : b_detailaddress,
        			b_password : b_password
        		},
        		success: function() {
        			alert("수정되었습니다.");
        			location.href="goBuyerMypage.do"
        		} 
        		
	 		});
	 		console.log("dd");

		} */
	</script>

<!-- buyerUpdate End -->
</body>
</html>