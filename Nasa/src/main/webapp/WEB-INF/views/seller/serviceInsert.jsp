<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .nice-select{
       width: 200px;
    }
    td:first-child:not(.sertb){
       background-color: rgb(229, 231, 253);
       color: #1f2b7b;
    }   
    td{
       height: 50px;
       padding: 10px;
    }
    .sercate{
       width: 150px;
    }
    #sname, input[type="number"]{
       width: 600px;
    }
    .spanstar{
       color: rgb(250, 70, 70);
    }
    input[type="radio"]{
       margin-left: 20px;
    }
    .btnbox{
       background-color:rgb(229, 231, 253) !important;
    }
   	#btn-upload{
   		border: 1px solid #ddd; 
   		outline: none;
   		color : black;
   	}
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
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
      <section class="contact-section">
         <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
            
               <div>
                  <form name="dataForm" id="dataForm" onsubmit="return registerAction()">
                     <table id="servtb" border="1" style="border-color: rgb(229, 232, 255); width: 800px;">
                        <tbody>
                           <tr>
                              <td>서비스명 <span class="spanstar">*</span></td>
                              <td colspan="3"><input type="text" id="sname" name="sname" required></td>
                           </tr>
                           <tr>
                              <td>1차 카테고리<span class="spanstar">*</span></td>
                              <td>
                                 <select name="cate" class="sercate" required>
                                    <option value="">선택하세요.</option>
                                    <option value="1">앱</option>
                                    <option value="2">Jun 19</option>
                                 </select>
                              </td>
                              <td style="background-color: rgb(229, 231, 253);">2차 카테고리<span class="spanstar">*</span></td>
                              <td>
                                 <select name="catego" required>
                                  	<option value="">선택하세요.</option>
                                    <option value="1">사이트</option>
                                    <option value="2">유지보수</option>
                                    <option value="3">Jun 19</option>
                                 </select>
                              </td>
                           </tr>
                           <tr>
                              <td rowspan="5">서비스타입</td>
                              <td>기술수준<span class="spanstar">*</span></td>
                              <td colspan="2"><select name="level">
                                 <option value="1" selected>초급</option>
                                 <option value="2">중급</option>
                                 <option value="3">고급</option>
                              </select></td>
                           </tr>
                           <tr>
                              <td class="sertb">팀 규모<span class="spanstar">*</span></td>
                              <td colspan="2"><select name="scale">
                              	<option  value="1" selected>개인</option>
                                 <option value="2">2인이상 5인미만</option>
                                 <option value="3">5인이상 20인 미만</option>
                                 <option value="4">20인 이상</option>
                              </select></td>
                           </tr>
                           <tr>
                              <td class="sertb">개발 언어</td>
                              <td colspan="2">
                                <input type="text" placeholder="Java/C/Python">
                              </td>
                           </tr>
                           <tr>
                              <td class="sertb">프레임워크</td>
                              <td colspan="2">
                              	<input type="text" placeholder="Spring/Django/Angular">
                              </td>
                           </tr>
                           <tr>
                              <td class="sertb">DBMS</td>
                              <td colspan="2">
                              	 <input type="text" placeholder="Oracle/MongoDB/Mysql">
                              </td>
                           </tr>
                           <tr>
                              <td>서비스방식<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="radio" name="method" value="online" checked="checked">온라인
                                 <input type="radio" name="method" value="offline">오프라인
                                 <input type="radio" name="method" value="all">전체
                              </td>
                           </tr>
                           <tr>
                              <td>서비스제공일<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="radio" name="servdate" value="alltime" checked="checked">상시
                                 &nbsp;
                                 <input type="radio" name="servdate" value="usertime">기간지정
                                 <input type="date" name="date"> - <input type="date" name="date">
                              </td>
                           </tr>
                           <tr>
                              <td>서비스 기본가격<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="number" required></td>
                           </tr>
                           <tr>
                              <td>서비스 설명<span class="spanstar">*</span></td>
                              <td colspan="3"><textarea cols="78" rows="4" required></textarea></td>
                           </tr>
                           <tr>
                              <td>서비스 제공절차</td>
                              <td colspan="3"><textarea cols="78" rows="4"></textarea></td>
                           </tr>
                           <tr>
                              <td>서비스 메인이미지<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="file" required></td>
                           </tr>
                           <tr>
                              <td>서비스 상세이미지</td>
                              <td colspan="3">
                              		<button id="btn-upload" type="button" >파일 추가</button>
								  	<input id="input_file" multiple="multiple" type="file" style="display:none;">
								  	<span style="font-size:10px; color: gray;">※첨부파일은 최대 3개까지 등록이 가능합니다.</span>
								  	
										<div id="fileChange">
										</div>
									
							</td>
                           </tr>
                          <!--  <tr>
                              <td>자동응답메세지<span class="spanstar">*</span></td>
                              <td colspan="3"><textarea cols="78" rows="4">홍길동입니다.</textarea></td>
                           </tr> -->
                        </tbody>
                     </table>
                     <br />
                     <div class="row d-flex justify-content-center align-items-center">
                        <button type="submit" class="genric-btn primary circle arrow btnbox">등록</button> &nbsp;&nbsp;&nbsp;
                        <button class="genric-btn primary circle arrow btnbox">취소</button>
                     </div>
                  </form>
                  
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
		$(function () {
		    $('#btn-upload').click(function (e) {
		        e.preventDefault();
		        $('#input_file').click();
		    });
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
		      $.alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
		      return;
		    } else {
		    	 fileCount = fileCount + filesArr.length;
		    }
		    
		    // 각각의 파일 배열담기 및 기타
		    filesArr.forEach(function (f) {
		      var reader = new FileReader();
		      reader.onload = function (e) {
		        content_files.push(f);
		        $('#fileChange').append(
		       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
		       		+ '<font style="font-size:12px">' + f.name + '</font>'  
		       		+ '<img src="resources/img/icon_minus.png" style="width:20px; height:auto; vertical-align: middle; cursor: pointer;"/>' 
		       		+ '<div/>'
				);
		        fileNum ++;
		      };
		      reader.readAsDataURL(f);
		    });
		    console.log(content_files);
		    //초기화 한다.
		    $("#input_file").val("");
		  }
		
		// 파일 부분 삭제 함수
		function fileDelete(fileNum){
		    var no = fileNum.replace(/[^0-9]/g, "");
		    content_files[no].is_delete = true;
			$('#' + fileNum).remove();
			fileCount --;
		    console.log(content_files);
		}
		
		/*
		 * 폼 submit 로직
		 */
			function registerAction(){
				
			var form = $("form")[0];        
		 	var formData = new FormData(form);
				for (var x = 0; x < content_files.length; x++) {
					// 삭제 안한것만 담아 준다. 
					if(!content_files[x].is_delete){
						 formData.append("article_file", content_files[x]);
					}
				}
		   /*
		   * 파일업로드 multiple ajax처리
		   */    
			$.ajax({
		   	      type: "POST",
		   	   	  enctype: "multipart/form-data",
		   	      url: "file-upload.do",
		       	  data : formData,
		       	  processData: false,
		   	      contentType: false,
		   	      success: function (data) {
		   	    	if(JSON.parse(data)['result'] == "OK"){
		   	    		alert("파일업로드 성공");
					} else
						alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
		   	      },
		   	      error: function (xhr, status, error) {
		   	    	alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
		   	     return false;
		   	      }
		   	    });
		   	    return false;
			}
</script>
</body>
</html>