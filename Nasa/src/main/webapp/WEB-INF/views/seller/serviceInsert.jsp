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
    input[type="text"], input[type="number"]{
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
                  <form class="" action="" method="" id="">
                     <table id="servtb" border="1" style="border-color: rgb(229, 232, 255); width: 800px;">
                        <tbody>
                           <tr>
                              <td>서비스명 <span class="spanstar">*</span></td>
                              <td colspan="3"><input type="text" id="sname" name="sname"></td>
                           </tr>
                           <tr>
                              <td>1차 카테고리<span class="spanstar">*</span></td>
                              <td>
                                 <select name="cate" class="sercate">
                                    <option selected="">웹</option>
                                    <option value="1">앱</option>
                                    <option value="2">Jun 19</option>
                                 </select>
                              </td>
                              <td style="background-color: rgb(229, 231, 253);">2차 카테고리<span class="spanstar">*</span></td>
                              <td>
                                 <select name="catego">
                                    <option selected="">사이트</option>
                                    <option value="1">유지보수</option>
                                    <option value="2">Jun 19</option>
                                 </select>
                              </td>
                           </tr>
                           <tr>
                              <td rowspan="5">서비스타입</td>
                              <td>기술수준</td>
                              <td colspan="2"><select name="level">
                                 <option selected="">초급</option>
                                 <option value="1">중급</option>
                                 <option value="2">고급</option>
                              </select></td>
                           </tr>
                           <tr>
                              <td class="sertb">팀 규모</td>
                              <td colspan="2"><select name="scale">
                                 <option selected="">2인이상 5인미만</option>
                                 <option value="1">5인이상 20인 미만</option>
                                 <option value="2">20인 이상</option>
                              </select></td>
                           </tr>
                           <tr>
                              <td class="sertb">개발 언어</td>
                              <td colspan="2">
                                 <input type="checkbox" id="langjava" class="langjava">JAVA
                                 <input type="checkbox" id="langc" class="langc">C언어
                                 <input type="checkbox" id="langpy" class="langpy">Python
                              </td>
                           </tr>
                           <tr>
                              <td class="sertb">프레임워크</td>
                              <td colspan="2">
                                 <input type="checkbox" id="spring" class="spring">Spring
                                 <input type="checkbox" id="django" class="django">Django
                                 <input type="checkbox" id="angular" class="angular">Angular
                              </td>
                           </tr>
                           <tr>
                              <td class="sertb">DBMS</td>
                              <td colspan="2">
                                 <input type="checkbox" id="oracle" class="oracle">Oracle
                                 <input type="checkbox" id="mongo" class="mongo">MongoDB
                                 <input type="checkbox" id="mysql" class="mysql">Mysql
                              </td>
                           </tr>
                           <tr>
                              <td>서비스방식<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="radio" name="method" value="online">온라인
                                 <input type="radio" name="method" value="offline">오프라인
                                 <input type="radio" name="method" value="all">전체
                              </td>
                           </tr>
                           <tr>
                              <td>서비스제공일<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="radio" name="servdate" value="alltime">상시
                                 &nbsp;
                                 <input type="radio" name="servdate" value="usertime">기간지정
                                 <input type="date" name="date"> - <input type="date" name="date">
                              </td>
                           </tr>
                           <tr>
                              <td>서비스 기본가격<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="number"></td>
                           </tr>
                           <tr>
                              <td>서비스 설명<span class="spanstar">*</span></td>
                              <td colspan="3"><textarea cols="78" rows="4">sdfsdf</textarea></td>
                           </tr>
                           <tr>
                              <td>서비스 제공절차</td>
                              <td colspan="3"><textarea cols="78" rows="4">sdfsdf</textarea></td>
                           </tr>
                           <tr>
                              <td>서비스 메인이미지<span class="spanstar">*</span></td>
                              <td colspan="3"><input type="file"></td>
                           </tr>
                           <tr>
                              <td>서비스 상세이미지</td>
                              <td colspan="3"><input type="file" multiple></td>
                           </tr>
                           <tr>
                              <td>자동응답메세지<span class="spanstar">*</span></td>
                              <td colspan="3"><textarea cols="78" rows="4">홍길동입니다.</textarea></td>
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
</body>
</html>