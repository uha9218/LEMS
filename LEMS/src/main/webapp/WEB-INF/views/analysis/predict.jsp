<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="command" value="${pageMaker.command }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에너지 소비량 예측</title>
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
<body
   class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed"
   style="height: auto;">
   <div class="card-header">
      <h3 class="card-title">에너지 소비량 예측 조회</h3>
   </div>
   <section class="content">
      <div class="container-fluid">
         <div class="card">
            <div class="card-header with-border">
               <div id="keyword" class="card-tools" style="width: 600px;">
                  <div class="input-group row">
                     <!-- search bar -->
                     <!-- <select class="form-control col-md-3" name="perPageNum" id="perPageNum"
				  		onchange="searchList_go(1);">
				  		<option value="10" >정렬</option>
					 </select> -->
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
                        style="width: 100px" id="reservation"/>&nbsp;&nbsp;&nbsp;&nbsp;
                     <!-- keyword -->
                     <button class="btn btn-primary" type="button" id="searchBtn"
                        data-card-widget="search" onclick="searchList_go(1);">조회</button>
                     <!-- end : search bar -->
                  </div>
               </div>
            </div>
         </div>
         <div class="dt-buttons btn-group flex-wrap">
            <button class="btn btn-secondary buttons-excel buttons-html5"
               tabindex="0" aria-controls="example1" type="button">
               <span>Excel</span>
            </button>
            <button class="btn btn-secondary buttons-excel buttons-html5"
               tabindex="0" aria-controls="example1" type="button">
               <span>CSV</span>
            </button>
         </div>
         <div class="row">
            <section class="col-lg-7">
               <div class="card">
                  <div class="card-body">
                     <div class="predictCanvas">
                        <canvas id="predictChart" height="190%"></canvas>
                     </div>
                  </div>
               </div>
            </section>
            <section class="col-lg-5">
            <div class="card-body" style="height:95%;">
               <table class="table table-bordered table-striped" id="predictList" style="height:90%; text-align:center;">
                  <thead>
                     <tr style='font-size:1em;'>
                        <th style="width:15%;">No.</th>
                        <th style="width:20%;">구간</th>
                        <th style="width:35%;">날짜</th>
                        <th>예측전력소비량(kW)</th>
                     </tr>
                  </thead>
                  <c:if test="${empty predictList }" >
					<tr>
						<td colspan="4">
							<strong>해당 내용이 없습니다.</strong>
						</td>
					</tr>
				  </c:if>	
				 <tbody>		  
                  <c:forEach items="${predictList }" var="predict">
                  	<tr style='font-size:1em;'>
                  		<td>${predict.predNum }</td>
                  		<td>${predict.hwCode }</td>
                  		<td>
							<fmt:formatDate value="${predict.predDate }" pattern="yyyy-MM-dd"/>
						</td>
						<td>${predict.predUse }</td>
                  	</tr>
                  </c:forEach>
                 </tbody>	
               </table>
               </div>
            </section>
         </div>
	         <div class="card-footer">
				<%@ include file="/WEB-INF/views/analysis/pagination.jsp" %>				
			</div>
      </div>
   </section>
   <%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

   <script>
      

      //chart
      // var ctx = document.getElementById("myChart");
      const el = [ 1100, 1200, 1700, 1100, 2200, 1600 ];

      $(function() {
         var ctx = document.getElementById('predictChart').getContext('2d');
         var chart = new Chart(ctx, {
            type : 'line',
            data : chartData,
            options : chartOptions
         })
      })

      // chart data and options
      var chartData = {
         labels : [ '2018', '2019', '2020', '2021', '2022', '2023' ],
         datasets : [ {
            label : '전력소비량',
            color:'orange',
            type : 'bar',
            yAxisID : 'y-left',
            data : el,
            backgroundColor : [ 'skyblue' ],
            borderColor : [ 'skyblue' ],
            borderWidth : 1
         } ]
      }
      var chartOptions = {
         responsive : true,
         // maintainAspectRatio: false,
         scales : {
            x : {
               title : {
                  display : true,
                  text : '연도',
               }
            },
            'y-left' : {
               type : 'linear',
               position : 'left',
               title : {
                  display : true,
                  text : '전력소비량(kW)',
                  color: 'orange'
               },
               grid : {
                  display : false
               }
            },
         }
      }

      //Date range picker
      $('#reservation').daterangepicker()
   </script>
</body>
</html>