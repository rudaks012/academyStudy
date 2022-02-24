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
                    document.getElementById("zipcode").value = data.zonecode;
                    document.getElementById("address").value = data.address;
                    document.getElementById("detailaddress").focus();
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
				<form action="">
					<div id="profileThumnail" class="justify-content-center" style="text-align: center;">
	                    <img id="prvimg" src="assets/img/blog/author.png" alt="" style="width: 150px; height:150px; border-radius: 70%; overflow: hidden;"><br>
	                    <input type="file" id="profileimg" accept="image/*" style="display: none;">
	                    <label class="genric-btn primary radius" for="profileimg" style="margin-top: 7px;">사진 수정</label>
                    </div>
				
					<div style="margin-top: 20px;">
						<p>닉네임</p>
						<div class="form-group">
							<input class="form-control" name="name" id="name" type="text" placeholder="Name" required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>이메일</p>
						<div class="form-group">
							<input class="form-control" name="email" id="email" type="text" placeholder="email" disabled required>
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
							<input class="form-control col-8" name="zipcode" id="zipcode" type="text" placeholder="우편번호" style="display: inline;" readonly>
							<label id="searchAdderess" class="genric-btn primary radius col-lg-3">주소조회</label>
							<input class="form-control col-lg-8" name="address" id="address" type="text" placeholder="주소" style="display: inline;margin-top: 5px;" readonly>
							<input class="form-control col-lg-3" name="detailaddress" id="detailaddress" type="text" placeholder="상세주소" style="display: inline;margin-top: 5px;" required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>새로운 비밀번호</p>
						<div class="form-group">
							<input class="form-control" name="newpassword" id="newpassword" type="password" placeholder="새로운 비밀번호" required>
						</div>
					</div>
				
					<div style="margin-top: 20px;">
						<p>새로운 비밀번호 확인</p>
						<div class="form-group">
							<input class="form-control" name="newpassword" id="newpassword" type="password" placeholder="새로운 비밀번호" required>
						</div>
					</div>
				
					<div class="row justify-content-center" style="margin-bottom: 50px;">
						<button type="submit" class="genric-btn info-border">수정</button>
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
		
		const inputImage = document.getElementById("profileimg");
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
	</script>

<!-- buyerUpdate End -->
</body>
</html>