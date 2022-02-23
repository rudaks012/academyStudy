<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/summernote/summernote-lite.css">
<style>
.knowtd{
   background-color: rgb(229, 231, 253);
   color: #1f2b7b;
   height: 50px;
   width: 100px;
   padding: 10px;
}
input[type="text"]{
	margin: 5px;
	padding: 5px;
   	width: 880px;
}
</style>
</head>
<body>
	<div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
         <div class="container">
            <div class="row">
               <div class="col-xl-12">
                  <div class="hero-cap text-center pt-50">
                     <h2>노하우 등록</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <section class="contact-section">
         <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
            	
               <div>
                  <form class="" action="" method="" id="">
                     <table border="1" style="border-color: rgb(229, 232, 255);">
                        <tbody>
                           <tr>
                              <td class="align-middle table-primary knowtd" colspan="2">제목 <span class="spanstar">*</span></td>
                              <td><input type="text" id="sname" name="sname"></td>
                           </tr>
                           <tr>
                            
                              <td colspan="3" style="padding: 1rem">
	                      			<textarea id="summernote" name="summernote"></textarea>    
	                   		     </td>
                           </tr>
                        </tbody>
                     </table>
                     <br />
                     <div class="row d-flex justify-content-center align-items-center">
                        <button class="genric-btn primary circle arrow btnbox">등록</button> &nbsp;&nbsp;&nbsp;
                        <button class="genric-btn primary circle arrow btnbox">취소</button>
                     </div>
                  </form>
                  
               </div>				
            </div>
         </div>
      </section>
<script src="resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="resources/summernote/summernote-lite.js"></script>
<script src="resources/summernote/lang/summernote-ko-KR.js"></script>         
 <script>
    $('#summernote').summernote({
		height: 600,                 // 에디터 높이
		minHeight: null,             // 최소 높이
		maxHeight: null,             // 최대 높이
		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		lang: "ko-KR",					// 한글 설정
		placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		callbacks : { 
	         onImageUpload : function(files, editor, welEditable) {
	               // 파일 업로드(다중업로드를 위해 반복문 사용)
	               for (var i = files.length - 1; i >= 0; i--) {
	                  uploadSummernoteImageFile(files[i], this);
	               }
	         }
	      },
	     toolbar: [
	          // 글꼴 설정
	          ['fontname', ['fontname']],
	          // 글자 크기 설정
	          ['fontsize', ['fontsize']],
	          // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	          // 글자색
	          ['color', ['forecolor','color']],
	          // 표만들기
	          ['table', ['table']],
	          // 글머리 기호, 번호매기기, 문단정렬
	          ['para', ['ul', 'ol', 'paragraph']],
	          // 줄간격
	          ['height', ['height']],
	          // 그림첨부, 링크만들기, 동영상첨부
	          ['insert',['picture','link','video']],
	          // 코드보기, 확대해서보기, 도움말
	          ['view', ['codeview','fullscreen', 'help']]
	        ],
	        // 추가한 글꼴
	      fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
	       // 추가한 폰트사이즈
	      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	   });


/**
* 이미지 파일 업로드
*/
// 이미지 파일 DB에 넣을 수 있게 경로로 변환.
function uploadSummernoteImageFile(file, el) {
 data = new FormData();
 data.append("file", file);
 $.ajax({
    data : data,
    type : "POST",
    url : "uploadSummernoteImageFile.do",
    contentType : false,
    enctype : 'multipart/form-data',
    processData : false,
    success : function(data) {
       $(el).summernote('editor.insertImage', data.url);
    }
 });
}
</script>  
</body>
</html>