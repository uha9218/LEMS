<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="en" style="height: auto;">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.38.0/js/tempusdominus-bootstrap-4.min.js"
   crossorigin="anonymous"></script>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.38.0/css/tempusdominus-bootstrap-4.min.css"
   crossorigin="anonymous" />
<link rel="stylesheet" href="/path/to/tempusdominus-bootstrap-4.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

   <section style="width: 100%">
   <div style="padding-left: 20%; padding-right: 20%">
      <div>
         <div class="sub_title" style="width: 100%; text-align: center; font-weight: bold;">
            <br> <br/>
            <h1>
               <b>통행량 데이터조회</b>
            </h1>
         </div>
         <br> <br/>
         <!-- data file 시작 -->

         <h3>Data File</h3>

         <br> <br/>
      </div>
<!-- 기간조회 -->
         <div class="card">
            <div class="card-body">
               <div class="temp_search">
                  <form onsubmit="return false;">
                     <input type="hidden" name="_csrf" value="t">


                     <fieldset>




                        <tr>
                        </tr>


<input class="datepicker">
<script>
  $(function(){
    $('.datepicker').datepicker();
  })
</script>


	<tr>  ~  </tr>
	


<input class="datepicker">
<script>
  $(function(){
    $('.datepicker').datepicker();
  })
</script>





                        <span class="term_box">
                           <button type="button" class="term on" onclick="" data-code="1">오늘</button>
                           <!-- 활성화될 경우 클래스 on 추가 -->
                           <button type="button" class="term" onclick="" data-code="7">1주일</button>

                        </span> <input type="submit" value="조회" class="submit" onclick=""
                           data-code=""></input>
                        <tr>
                        </tr>
                     </fieldset>
                  </form>
               </div>
            </div>
         
      

      <div class="col-lg-1"></div>
   </div>
   
   <br>
   <br/>

      <div class="col-lg-1"></div>
   <div class="row">
      <div class="col-lg-12">
         <div class="card">
            <div class="card-body" style="background: #444E54;">
               <table class="table">

                  <colgroup>
                     <col style="width: 15%;">
                     <col style="width: 25%;">
                     <col style="width: 15%;">
                     <col style="width: 25%;">
                  </colgroup>
                  <tbody>
                     <tr>
                     </tr>

                     <tr>
                        <th scope="row">기준일자</th>
                        <td id="">2023.10.04 ~ 2023.10.05</td>
                        <th scope="row">파일크기</th>
                        <td id="">538.07MB</td>
                     </tr>
                     <tr>
                        <th scope="row">파일명</th>
                        <td colspan="3">
                           <div class="data_file_list">
                              <ul class="clearfix" id="" style="">
                                 <li><a id="" href="" target="_blank"
                                    title="20231004_5Min.zip" class="down">20231004_5Min.zip
                                       (538.07MB) </a></li>
                              </ul>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <th scope="row">자료구조</th>
                        <td colspan="3">생성일, 생성시분, 링크ID, 도로관리기관, 통행속도, 통행시간</td>
                     </tr>
                  </tbody>

               </table>
   <div class="col-lg-1"></div>
            </div>
         </div>
      </div>
   </div>
   
   </div>
   </section>
   <%@ include file="/WEB-INF/views/module/footer_js.jsp"%>
   <script>
      
   </script>

</body>
</html>