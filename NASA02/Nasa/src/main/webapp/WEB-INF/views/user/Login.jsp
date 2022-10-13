<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript">
        function login() {
            var id = document.querySelector('#id');
            var pw = document.querySelector('#pw');

            if (id.value == "" || pw.value == "") {
                alert("로그인 할 수 없습니다.");
                location.href = "Login.do";
            } else if (id.value == "" && pw.value == "") {
                alert("로그인 할 수 없습니다.");
                location.href = "Login.do";
            }

        }
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>

<body>
    <!-- Hero Start-->
    <div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center pt-50">
                        <h2>로그인</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Hero End -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
                <div>
                    <form class="form-contact contact_form" action="main.do" method="post" name="">
                        <input type="hidden" name="login_ok" value="1" />
                        <div class="row d-flex justify-content-center align-items-center">                            
                            <div class="col-sm-8">
                                <div class="form-group">
                                    이메일<input class="form-control valid" name="id" id="id" type="id" placeholder="example@nasa.com">
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-group">
                                    비밀번호<input class="form-control valid" name="pw" id="pw" type="password" placeholder="비밀번호를 입력해주세요">
                                </div>
                            </div>    
                            <div class="col-sm-8">
	                            <div class="form-group mt-3 d-flex justify-content-center align-items-center">
	                                <input type="submit" value="로그인" id="loginfo" onclick="login()" class="button button-contactForm boxed-btn">
	                            </div>                          
                            </div>                   
                            <div>
                                <button type="button" class="genric-btn primary e-large" id="kakao" onclick=kakaoLogin()>카카오로 로그인</button>
                                <button type="button" class="genric-btn primary e-large" id="naverLogin" name="naverLogin" onclick="location.href='${url }'">
                                    <span id="loginSpan">Naver로 로그인</span>
                                </button>
                            </div> 
                                                     
                        </div>
                            
                    </form>
                    <form action="kakaologin.do" method="post" name="login_frm" class="login_frm">
                        <div class="form-group row" id="kakaologin">
                            <div class="kakaobtn">
                                <input type="hidden" name="kakaoemail" id="kakaoemail" />
                                <input type="hidden" name="kakaoname" id="kakaoname" />
                                <input type="hidden" name="kakaobirth" id="kakaobirth" />
                                <input type="hidden" name="accesstoken" id="accesstoken" />
                            </div>
                        </div>
                        <!-- <input type="text" name="kakaoemail" id="kakaoemail" value="" /> -->
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->
</body>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    // 카카오로그인
    window.Kakao.init("f7385fb73ea9711440f35e5c4448ec66");

    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname,account_email,birthday',
            success: function (authObj) {
                //console.log(authObj);
                window.Kakao.API.request({
                    url: '/v2/user/me',
                    success: res => {
                        const email = res.kakao_account.email;
                        const name = res.properties.nickname;
                        const birth = res.kakao_account.birthday;
                        const accesstoken = authObj.access_token;

                        console.log(email);
                        console.log(name);
                        console.log(birth);
                        console.log(accesstoken);

                        $('#kakaoemail').val(email);
                        $('#accesstoken').val(accesstoken);
                        //$('#kakaoname').val(name);
                        //$('#kakaobirth').val(birth);
                        document.login_frm.submit();
                    }
                });
            }
        });
    }
    //네이버로그인
</script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript"></script>

</html>