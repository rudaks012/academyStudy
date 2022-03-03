<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Footer Start-->
<div class="footer-area">
    <div class="container"style="padding-top: 30px;">
        <div class="footer-top">
            <div class="row justify-content-between">
                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="single-footer-caption mb-30">
                            <!-- logo -->
                            <div class="footer-logo">
                                <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Quick Link</h4>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Listing</a></li>                                        
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="#">Reasonable Hotel</a></li>
                                <li><a href="#">Popular Restaurant</a></li>                                        
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                    <div class="single-footer-caption mb-50">
                        <div class="footer-tittle">
                            <h4>안경만</h4>
                            <ul>
                                <li><button onclick="location.href='ckeditor.do'" style="background-color: black;">썸머</button></li>
                                <li ><button onclick="location.href='chatting.do'" style="background-color: black;" id="chatbtn">채팅</button>
                                <button onclick="location.href='fileupload.do'" style="background-color: black;">파일</button>
                                  <button onclick="location.href='bis.do'" style="background-color: black;">공공</button>
                                </li>  
                                                       
                            </ul>                            
                        </div>
							<div class="chatList"
								style="height: 20px; width: 100px; background-color: wheat;">
								<h4>리스트</h4>
							</div>
						</div>
                </div>
            </div>
        </div>               
    </div>
</div>
<!-- Footer End-->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
	
	<script type="text/javascript">
	// 웹소켓
	let websocket;

	// 총 읽지 않은 갯수
	let countAll = 0;

	getRoomList(); // 채팅 방 목록을 불러온다.

	function getRoomList() {
		// 채팅 방 목록 가져오기
		$
				.ajax({
					url : "chatRoomList.do",
					data : {
						userid : "${loginMember.b_email}"
					},
					dataType : "json",
					async : false, // async : false를 줌으로써 비동기를 동기로 처리 할 수 있다.
					success : function(data) {
                        console.log("겟룸리스트" ,data);

						// 현재 로그인 된 User들
						let loginList = "";

						// 로그인 된 User들을 가져온다.
						$.ajax({
							url : "chatSession.do",
							data : {},
							async : false,
							dataType : "json",
							success : function(data) {
								for (var i = 0; i < data.length; i++) {
									loginList += data[i];
									console.log(data[i]);
								}
                                console.log("check2",data)
                            console.log("데이터length",data.length);
							}
						});

						$chatWrap = $(".chatList");
						$chatWrap.html("");

						var $div; // 1단계
						var $img;
						var divs;
                        var checkbtn = $("#chatbtn");
						//var str1;
						if (data.length > 0) {
                            console.log("읽지않은 메시지 초기화")
							// 읽지 않은 메세지 초기화
							countAll = 0;

							// 태그 동적 추가
							console.log("동적추가 태그",data);
							for ( var i in data) {
								var $span; // 2단계
								// 자신이 구매자 입장일 때
								if (data[i].userid == "${loginMember.b_email}") {
									console.log("구매자 아이디 :::"
											+ data[i].userid
											+ "판매자 아이디 :::"
											+ data[i].masterid);
									$div = $(
											"<div class='chatList_box enterRoomList' style='display:inline-block; width: 80%;' onclick='enterRoom(this);'>")
											.attr("id", data[i].roomid)
											.attr("userId",
													data[i].masterid);
									$img = $("<img class='profile_img' src='resources/img/buzz.png'>");
									$div.append($img);
									$divs = $("<span class='userNameId'>")
											.text(data[i].masterid);
									//str1 = getIamge(data[i].masterid);
									//console.log("!@#!@#"+getIamge(data[i].masterid));

									// 프로필 가져오기

								} //자신이 구매자일떄 end
								// 자신이 판매자 입장일 때
								else {
									console.log("구매자 아이디 :::"
											+ data[i].userid
											+ "판매자 아이디 :::"
											+ data[i].masterid);
									// 현재 구매자가 로그인 상태 일 때
									$div = $(
											"<div class='chatList_box enterRoomList' style='display:inline-block; width: 80%;' onclick='enterRoom(this);'>")
											.attr("id", data[i].roomid)
											.attr("userId", data[i].userid);
									//$img = $("<img class='profile_img' src='/resources/images/temp-profile.png'>");
									$img = $("<img class='profile_img' src='resources/img/buzz.png'>");
									$div.append($img);
									$divs = $("<span class='userNameId'>")
											.text(data[i].userid);

								} // 구매자가 아닌 판매자일떄  else End

								// 읽지 않은 메세지가 0이 아닐 때
								if (data[i].unReadCount != 0) {
									$span = $(
											"<span id='unReadCount' class='notRead'style='border-radius:3px;background-color: red; float:right; color: white; font-size: 20px;' >")
											.text(data[i].unReadCount);
								} else {
									$span = $("<span id='unReadCount' style='float:right'>");
								}

								//$img = $img.attr("src",str1);

								var $btn1 = $(
										"<button type='button' class='chat_exit' style='float:right; display: inline-block; border:none; background-color:transparent;'>")
										.attr("id", data[i].roomid)

								var $img2 = $("<img src='resources/img/exit.png' style=' width: 20px; margin-top: 4px;'>")

								$btn1.append($img2);

								$div.append($divs);
								$div.append($span);

								$chatWrap.append($div);
								$chatWrap.append($btn1);

								// String을 int로 바꿔주고 더해준다.
								countAll += parseInt(data[i].unReadCount);
								console.log("메세지 안 읽은 숫자  ::" + countAll);

							}// for 태그 동적 추가 END
						} // IF 절 END
					} // success(data) 구문 END 
				});
	}// getroomlist END
	</script>
</body>
	
</html>