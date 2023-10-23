<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고속도로환경분석(교통)</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<!-- Theme style -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<style>
</style>
</head>
<body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed" style="height: auto;">
   <div class="card-header">
      <h3 class="card-title"></h3>
   </div>
   <section class="content">
      <div class="card">
         <div class="card-header with-border">
            <div id="keyword" class="card-tools" style="width: 450px;">
               <div class="input-group row">
                  <!-- search bar -->
                  <!-- sort num -->
                  <select class="form-control col-md-3" name="searchType" id="searchType" >
                        <option>전체</option>
                        <option value="A" ${command.searchType eq 'A' ? 'selected':'' }>A</option>
                        <option value="B" ${command.searchType eq 'B' ? 'selected':'' }>B</option>
                        <option value="C" ${command.searchType eq 'C' ? 'selected':'' }>C</option>
                        <option value="D" ${command.searchType eq 'D' ? 'selected':'' }>D</option>
                        <option value="E" ${command.searchType eq 'E' ? 'selected':'' }>E</option>
                        <option value="F" ${command.searchType eq 'F' ? 'selected':'' }>F</option>
                        <option value="G" ${command.searchType eq 'G' ? 'selected':'' }>G</option>
                        <option value="H" ${command.searchType eq 'H' ? 'selected':'' }>H</option>
                        <option value="I" ${command.searchType eq 'I' ? 'selected':'' }>I</option>
                        <option value="J" ${command.searchType eq 'J' ? 'selected':'' }>J</option>
                        <option value="K" ${command.searchType eq 'K' ? 'selected':'' }>K</option>
                        <option value="L" ${command.searchType eq 'L' ? 'selected':'' }>L</option>
                        <option value="M" ${command.searchType eq 'M' ? 'selected':'' }>M</option>
                        <option value="N" ${command.searchType eq 'N' ? 'selected':'' }>N</option>
                     </select>
                  <!-- Date range as a button -->
                  <div class="input-group-prepend">
                     <span class="input-group-text"> <i
                        class="far fa-calendar-alt"></i>
                     </span>
                  </div>
                  <input type="text" class="form-control float-right"
                     style="width: 100px" id="reservation">&nbsp;&nbsp;&nbsp;&nbsp;
                  <!-- keyword -->
                  
                     <button class="btn btn-primary" type="button" id="searchBtn"
                        data-card-widget="search" onclick="searchList_go(1);">조회</button>
                  <!-- end : search bar -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <div class="card-body">
     <div id="pdfDiv">
      <div class="row">
          <div class="col-lg-8">
             <button id="savePdfBtn" value="pdf다운로드" class="btn btn-block btn-secondary" style="width:5%;" >PDF</button>
              <div class="card" >
                  <div class="card-body">
	               <div class="Canvas">
	                   <canvas id="Chart" height="165%"></canvas>
	               </div>
                  </div>
              </div>
           </div>
            <div class="col-lg-4" style="text-align:center;">
              <div class="card-body" style="height:250px">
               <table class="table table-bordered table-striped" id="List" style="height:90%; text-align:center;">
                  <thead>
                     <tr style='font-size:1em;'>
                        <th style="width:15%;">No.</th>
                        <th style="width:10%;">구간</th>
                        <th style="width:20%;">날짜</th>
                        <th>실제소비량(kW)</th>
                        <th>예측소비량(kW)</th>
                     </tr>
                  </thead>
                  <c:if test="${empty List }" >
					<tr>
						<td colspan="5">
							<strong>해당 내용이 없습니다.</strong>
						</td>
					</tr>
				  </c:if>
                  <tbody>
                     <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                  </tbody>
               </table>
            </div>
            </div>
    	</div>
    </div>
    </div>
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
   //Date range picker
   
    //chart
    // var ctx = document.getElementById("myChart");
 
</body>
</html>