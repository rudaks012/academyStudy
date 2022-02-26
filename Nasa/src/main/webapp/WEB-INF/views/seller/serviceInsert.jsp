<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.nice-select {
	width: 200px;
}

td:first-child:not(.sertb) {
	background-color: rgb(229, 231, 253);
	color: #1f2b7b;
}

td {
	height: 50px;
	padding: 10px;
}

.sercate {
	width: 150px;
}

#sname, input[type="number"] {
	width: 600px;
}

.spanstar {
	color: rgb(250, 70, 70);
}

input[type="radio"] {
	margin-left: 20px;
}

.btnbox {
	background-color: rgb(229, 231, 253) !important;
}

#btn-upload {
	border: 1px solid #ddd;
	outline: none;
	color: black;
}

.hr {
	background-color: #d5c9ea !important;
	margin: 10px !important;
}
</style>
</head>
<body>
	<div
		class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center pt-50">
						<h2>서비스 등록</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-3">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget post_category_widget">
							<h4 class="widget_title">MYPAGE MENU</h4>
							<ul class="list cat-list">
								<li><a href="sellerService.do" class="d-flex">
										<p>서비스관리</p>
								</a></li>
								<li><a href="sellerPromotion.do" class="d-flex">
										<p>프로모션관리</p>
								</a></li>
								<li><a href="#" class="d-flex">
										<p>일정관리</p>
								</a></li>
								<li><a href="sellerReview.do" class="d-flex">
										<p>리뷰관리</p>
								</a></li>
								<li><a href="sellerPayment.do" class="d-flex">
										<p>결제조회</p>
								</a></li>
								<li><a href="sellerSales.do" class="d-flex">
										<p>매출확인</p>
								</a></li>
								<li><a href="sellerReport.do" class="d-flex">
										<p>신고관리</p>
								</a></li>
								<li><a href="sellerKnowhow.do" class="d-flex">
										<p>판매자 노하우</p>
								</a></li>
								<li><a href="" class="d-flex" data-toggle="modal"
									data-target="#WithdrawalModal">
										<p>회원탈퇴</p>
								</a></li>
							</ul>
						</aside>
					</div>
				</div>


				<div class="col-9">
					<div class="blog_left_sidebar">
						<article class="blog_item">
							<div class="justify-content-center">
								<a class="d-inline-block" style="margin-top: 20px;">
									<h3>서비스 등록</h3>
								</a>
								<hr class="hr" />
								<div class="blog_details">
									<form name="dataForm" id="dataForm" enctype="multipart/form-data"  onsubmit="return registerAction()" accept-charset="UTF-8" method="post" >
										<table id="servtb" border="1"
											style="border-color: rgb(229, 232, 255); width: 800px;">
											<tbody>
												<tr>
													<td>서비스명 <span class="spanstar">*</span></td>
													<td colspan="3"><input type="text" id="sname"
														name="ser_title" required></td>
												</tr>
												<tr>
													<td>1차 카테고리<span class="spanstar">*</span></td>
													<td><select name="ser_cate" id="ser_cate"
														class="sercate" required>
															<option value="">선택하세요.</option>
															<option value="CAT1">앱</option>
															<option value="CAT2">웹</option>
															<option value="CAT3">게임</option>
															<option value="CAT4">보안</option>
															<option value="CAT5">기술지원</option>
															<option value="CAT6">기획</option>
													</select></td>
													<td style="background-color: rgb(229, 231, 253);">2차
														카테고리<span class="spanstar">*</span>
													</td>
													<td><select name="ser_sub_cate" id="ser_sub_cate"
														class="ser_sub_cate" required>
															<option value="">선택하세요.</option>
													</select></td>
												</tr>
												<tr>
													<td rowspan="5">서비스타입</td>
													<td>기술수준<span class="spanstar">*</span></td>
													<td colspan="2"><select name="ser_skill"
														id="ser_skill">
															<option value="초급" selected>초급</option>
															<option value="중급">중급</option>
															<option value="고급">고급</option>
													</select></td>
												</tr>
												<tr>
													<td class="sertb">팀 규모<span class="spanstar">*</span></td>
													<td colspan="2"><select name="ser_team" id="ser_team">
															<option value="개인" selected>개인</option>
															<option value="2인이상 5인미만">2인이상 5인미만</option>
															<option value="5인이상 20인 미만">5인이상 20인 미만</option>
															<option value="20인 이상">20인 이상</option>
													</select></td>
												</tr>
												<tr>
													<td class="sertb">개발 언어</td>
													<td colspan="2"><input type="text" id="ser_lang"
														name="ser_lang" placeholder="Java/C/Python"></td>
												</tr>
												<tr>
													<td class="sertb">프레임워크</td>
													<td colspan="2"><input type="text" id="ser_frame"
														name="ser_frame" placeholder="Spring/Django/Angular"></td>
												</tr>
												<tr>
													<td class="sertb">DBMS</td>
													<td colspan="2"><input type="text" id="ser_dbms"
														name="ser_dbms" placeholder="Oracle/MongoDB/Mysql"></td>
												</tr>
												<tr>
													<td>서비스방식<span class="spanstar">*</span></td>
													<td colspan="3">
														<input type="radio" name="ser_line"
														value="온라인" checked="checked">온라인 
														<input
														type="radio" name="ser_line" value="오프라인">오프라인
														<input type="radio" name="ser_line" value="온/오프라인">온/오프라인</td>
												</tr>
												<tr>
													<td>서비스제공일<span class="spanstar">*</span></td>
													<td colspan="3"><input type="radio" name="ser_date"
														value="상시" checked="checked">상시 &nbsp; 
														<input
														type="radio" name="ser_date" value="기간지정">기간지정
														<input type="date" name="ser_start"> - 
														<input type="date" name="ser_end"></td>
												</tr>
												<tr>
													<td>서비스 기본가격<span class="spanstar">*</span></td>
													<td colspan="3"><input type="number" id="ser_price" name="ser_price" required></td>
												</tr>
												<tr>
													<td>서비스 설명<span class="spanstar">*</span></td>
													<td colspan="3"><textarea cols="78" rows="4" id="ser_sub" name="ser_sub" required></textarea></td>
												</tr>
												<tr>
													<td>서비스 제공절차</td>
													<td colspan="3"><textarea cols="78" rows="4" id="ser_offer" name="ser_offer"></textarea></td>
												</tr>
												<tr>
													<td>서비스 메인이미지<span class="spanstar">*</span></td>
													<td colspan="3"><input type="file" name="file" id="file" required></td>
												</tr>
												<tr>
													<td>서비스 상세이미지</td>
													<td colspan="3">
														<button id="btn-upload" type="button">파일 추가</button> 
														<input id="input_file" multiple="multiple" type="file" style="display: none;"> 
														<span style="font-size: 10px; color: gray;">※첨부파일은 최대 3개까지 등록이 가능합니다.</span>
														<div id="fileChange"></div>

													</td>
												</tr>
											</tbody>
										</table>
										<br />
										<div
											class="row d-flex justify-content-center align-items-center">
											<button class="genric-btn primary circle arrow btnbox">등록</button>
											&nbsp;&nbsp;&nbsp;
											<button class="genric-btn primary circle arrow btnbox" onclick="history.back()">취소</button>
										</div>
									</form>

								</div>
							</div>
						</article>
					</div>


				</div>
			</div>
		</div>
	</section>

	<script>
		$(document).ready(function()
		// input file 파일 첨부시 fileCheck 함수 실행
		{
			$("#input_file").on("change", fileCheck);
			
			
		});

		/**
		 * 첨부파일로직
		 */
		$(function() {
			$('#btn-upload').click(function(e) {
				e.preventDefault();
				$('#input_file').click();
			});
			
			$('#ser_cate').on("change", function(){
				$.ajax({
					type : "POST",
					url : "subcategoryCall.do",
					data : {cat_no : $('#ser_cate').val()},
					dataType : "json",
					success : function(datas) {
						$('#ser_sub_cate').empty();
						let ul = document.getElementsByClassName('list')[2];
						while(ul.hasChildNodes()){
							ul.removeChild(ul.firstChild);
						}
						ul.innerHTML = "<li data-value class='option selected'>선택하세요.</li>";
						for(data of datas){
							$('#ser_sub_cate').append("<option value='"+ data.sub_no+"'>" + data.sub_name + "</option>");
							
							let ul = document.getElementsByClassName('list')[2];
							
							ul.innerHTML += "<li data-value='"+data.sub_no+"' class='option'>"+data.sub_name+"</li>";
						}
						document.getElementsByClassName('current')[1].innerHTML='선택하세요.';
					},
					error : function(xhr, status, error) {
						alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
						return false;
					}
				});
			})
		});

		// 파일 현재 필드 숫자 totalCount랑 비교값
		var fileCount = 0;
		// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
		var totalCount = 3;
		// 파일 고유넘버
		var fileNum = 0;
		// 첨부파일 배열
		var content_files = new Array();

		function fileCheck(e) {
			var files = e.target.files;

			// 파일 배열 담기
			var filesArr = Array.prototype.slice.call(files);

			// 파일 개수 확인 및 제한
			if (fileCount + filesArr.length > totalCount) {
				$.alert('파일은 최대 ' + totalCount + '개까지 업로드 할 수 있습니다.');
				return;
			} else {
				fileCount = fileCount + filesArr.length;
			}

			// 각각의 파일 배열담기 및 기타
			filesArr
					.forEach(function(f) {
						var reader = new FileReader();
						reader.onload = function(e) {
							content_files.push(f);
							$('#fileChange')
									.append(
											'<div id="file'
													+ fileNum
													+ '" onclick="fileDelete(\'file'
													+ fileNum
													+ '\')">'
													+ '<font style="font-size:12px">'
													+ f.name
													+ '</font>'
													+ '<img src="resources/img/icon_minus.png" style="width:20px; height:auto; vertical-align: middle; cursor: pointer;"/>'
													+ '<div/>');
							fileNum++;
						};
						reader.readAsDataURL(f);
					});
			console.log(content_files);
			//초기화 한다.
			$("#input_file").val("");
		}

		// 파일 부분 삭제 함수
		function fileDelete(fileNum) {
			var no = fileNum.replace(/[^0-9]/g, "");
			content_files[no].is_delete = true;
			$('#' + fileNum).remove();
			fileCount--;
			console.log(content_files);
		}

		/*
		 * 폼 submit 로직
		 */
		function registerAction() {

			var form = $("form")[0];
			var formData = new FormData(form);
			for (var x = 0; x < content_files.length; x++) {
				// 삭제 안한것만 담아 준다. 
				if (!content_files[x].is_delete) {
					formData.append("article_file", content_files[x]);
				}
			}
			/*
			 * 파일업로드 multiple ajax처리
			 */
			
			 $.ajax({
				type : "POST",
				enctype : "multipart/form-data",
				url : "serviceInsertForm.do",
				data : formData,
				processData : false,
				contentType : false,
				success : function(data) {
					if (JSON.parse(data)['result'] == "OK") {
						alert("파일업로드 성공");
					} else
						alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
				},
				error : function(xhr, status, error) {
					alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
					return false;
				}
			}); 
			return false;
		}
	</script>
</body>
</html>