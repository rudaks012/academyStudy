<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}

.slider {
	width: 1000px;
	height: 300px;
}

.box {
	text-align: center;
	font-size: 60px;
	color: #fff;
	font-weight: bold;
}

.img_wrap {
	text-align: center;
	width: 800px;
	height: 250px;
	font-weight: bold;
	font-size: 60px;
}

.center {
	padding-left: 30px;
	text-align: center;
	padding: 100px;
}
</style>
</head>
<body>
	<div class="content-wrapper">
		<div class="row">
			<div class="col-md-12 grid-margin">
				<div class="row">
					<div class="col-12 col-xl-8 mb-4 mb-xl-0">
						<h3 class="font-weight-bold">테스트용.</h3>
						<h6 class="font-weight-normal mb-0">
							All systems are running smoothly! You have <span
								class="text-primary">3 unread alerts!</span>
						</h6>
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 grid-margin stretch-card">
				<!-- 퍼런색 배경 -->
				<div class="card tale-bg"></div>
			</div>
			<div class="col-md-6 grid-margin transparent">
				<div class="row">
					<div class="col-md-6 mb-4 stretch-card transparent">
						<div class="card card-tale">
							<!-- 네모 동그라미 네개(쓸만) -->
							<div class="card-body">
								<p class="mb-4">Today’s Bookings</p>
								<p class="fs-30 mb-2">4006</p>
								<p>10.00% (30 days)</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mb-4 stretch-card transparent">
						<div class="card card-dark-blue">
							<div class="card-body">
								<p class="mb-4">Total Bookings</p>
								<p class="fs-30 mb-2">61344</p>
								<p>22.00% (30 days)</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
						<div class="card card-light-blue">
							<div class="card-body">
								<p class="mb-4">Number of Meetings</p>
								<p class="fs-30 mb-2">34040</p>
								<p>2.00% (30 days)</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 stretch-card transparent">
						<div class="card card-light-danger">
							<div class="card-body">
								<p class="mb-4">Number of Clients</p>
								<p class="fs-30 mb-2">47033</p>
								<p>0.22% (30 days)</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 grid-margin stretch-card">
				<div class="card position-relative">
					<div class="card-body">
						<div id="detailedReports"
							class="carousel slide detailed-report-carousel position-static pt-2"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
								<section id="slider1" class="slider">
								<div class="swiper-slide">
									<a href="javaScript:alert('Hello')">
										<div class="box">
											<img class="img_wrap"
												src="https://img.cgv.co.kr/WebApp/contents/eventV4/33839/16425473374760.jpg"
												alt="[CGV NFT 플레이 포스터] No.1 킹메이커" onerror="errorImage(this)">
										</div> <strong class="center">[CGV NFT 플레이 포스터] No.1 킹메이커</strong> <span>2022.01.19~2022.02.27</span>
									</a>
								</div>
								<div class="swiper-slide">
									<a href="javaScript:alert('Hello')">
										<div class="box">
											<img class="img_wrap"
												src="https://img.cgv.co.kr/WebApp/contents/eventV4/33809/16415341565330.jpg"
												alt="PEAKERS 클라이밍짐 오픈" onerror="errorImage(this)">
										</div> <strong class="center">PEAKERS 클라이밍짐 오픈</strong> <span>2022.01.07~2022.01.31</span>
									</a>
								</div>
								<div class="swiper-slide">
									<a href="javaScript:alert('Hello')">
										<div class="box">
											<img class="img_wrap"
												src="https://img.cgv.co.kr/WebApp/contents/eventV4/33874/16425472489570.jpg"
												alt="[킹메이커] 포토플레이 시크릿 컷" onerror="errorImage(this)">
										</div> <strong class="center">[킹메이커] 포토플레이 시크릿 컷</strong> <span>2022.01.19~2022.02.27</span>
									</a>
								</div>

								<div class="swiper-slide">
									<a href="javaScript:alert('Hello')">
										<div class="box">
											<img class="img_wrap"
												src="https://img.cgv.co.kr/WebApp/contents/eventV4/33794/16412951597440.jpg"
												alt="[NCT: Resonance]주차별 특전 이벤트" onerror="errorImage(this)">
										</div> <strong class="center">[NCT: Resonance]주차별 특전 이벤트</strong> <span>2022.01.13~2022.01.25</span>
									</a>
								</div>

								<div class="swiper-slide">
									<a href="javaScript:alert('Hello')">
										<div class="box">
											<img class="img_wrap"
												src="https://img.cgv.co.kr/WebApp/contents/eventV4/33888/16425702098120.jpg"
												alt="[해적: 도꺠비 깃발]CGV 필름마크" onerror="errorImage(this)">
										</div> <strong class="center">[해적: 도꺠비 깃발]CGV 필름마크</strong> <span>2022.01.19~2022.02.13</span>
									</a>
								</div>
							</section>
									<!-- <div class="row">
										퍼런색 배경
										<div class="col-md-6 grid-margin stretch-card">
											<div class="card"></div>
											<div class="card tale-bg">
												<div
													style="width: 30em; height: 10em; background-color: aquamarine;"></div>
											</div>
										</div>
									</div> -->
								</div>
								<!-- <div class="carousel-item">
									<div class="row">
										퍼런색 배경
										<div class="col-md-6 grid-margin stretch-card">
											<div class="card"></div>

											<div class="card tale-bg">
												<div
													style="width: 30em; height: 10em; background-color: aquamarine;"></div>
											</div>
										</div>

									</div>
								</div> -->
							</div>
							
							<a class="carousel-control-prev" href="#detailedReports"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#detailedReports"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
    function Slider(target, type) {
  // 상태
  let index = 1;
  let isMoved = true;
  const speed = 1000; // ms

  // 방향
  const transform = "transform " + speed / 1000 + "s";
  let translate = (i) => "translateX(-" + 100 * i + "%)";
  if (type === "V") {
    translate = (i) => "translateY(-" + 100 * i + "%)";
  }

  // 슬라이더
  const slider = document.querySelector(target);
  const sliderRects = slider.getClientRects()[0];
  slider.style["overflow"] = "hidden";

  // 슬라이더 화면 컨테이너
  const container = document.createElement("div");
  container.style["display"] = "flex";
  container.style["flex-direction"] = type === "V" ? "column" : "row";
  container.style["width"] = sliderRects.width + "px";
  container.style["height"] = sliderRects.height + "px";
  container.style["transform"] = translate(index);

  // 슬라이더 화면 목록
  let boxes = [].slice.call(slider.children);
  boxes = [].concat(boxes[boxes.length - 1], boxes, boxes[0]);

  // 슬라이더 화면 스타일
  const size = boxes.length;
  for (let i = 0; i < size; i++) {
    const box = boxes[i];
    box.style["flex"] = "none";
    box.style["flex-wrap"] = "wrap";
    box.style["height"] = "100%";
    box.style["width"] = "100%";
    container.appendChild(box.cloneNode(true));
  }

  // 처음/마지막 화면 눈속임 이벤트
  container.addEventListener("transitionstart", function () {
    isMoved = false;
    setTimeout(() => {
      isMoved = true;
    }, speed);
  });
  container.addEventListener("transitionend", function () {
    // 처음으로 순간이동
    if (index === size - 1) {
      index = 1;
      container.style["transition"] = "none";
      container.style["transform"] = translate(index);
    }
    // 끝으로 순간이동
    if (index === 0) {
      index = size - 2;
      container.style["transition"] = "none";
      container.style["transform"] = translate(index);
    }
  });

  // 슬라이더 붙이기
  slider.innerHTML = "";
  slider.appendChild(container);

  return {
    move: function (i) {
      if (isMoved === true) {
        index = i;
        container.style["transition"] = transform;
        container.style["transform"] = translate(index);
      }
    },
    next: function () {
      if (isMoved === true) {
        index = (index + 1) % size;
        container.style["transition"] = transform;
        container.style["transform"] = translate(index);
      }
    },
    prev: function () {
      if (isMoved === true) {
        index = index === 0 ? index + size : index;
        index = (index - 1) % size;
        container.style["transition"] = transform;
        container.style["transform"] = translate(index);
      }
    }
  };
}

const s1 = new Slider("#slider1", "H");
//const s2 = new Slider("#slider2", "V");

setInterval(() => {
  s1.next();
  //s2.next();
}, 5000)
  </script>
</body>
</html>