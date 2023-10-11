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
      <h3 class="card-title">교통데이터 조회</h3>
   </div>
   <section class="content">
      <div class="card">
         <div class="card-header with-border">
            <div id="keyword" class="card-tools" style="width: 600px;">
               <div class="input-group row">
                  <!-- search bar -->
                  <select class="form-control col-md-3" name="perPageNum"
                     id="perPageNum" onchange="location.href=this.value">
                     <option value="http://localhost/project/envdata/trafficDetail.do">그래프</option>
                     <option value="http://localhost/project/envdata/traffic.do">리스트</option>
                  </select>
                  <!-- sort num -->
                  <select class="form-control col-md-3" name="perPageNum"
                     id="perPageNum" onchange="">
                     <option value="10">구간코드</option>
                     <option value="all">전체</option>
                     <option value="A">A</option>
                     <option value="B">B</option>
                     <option value="C">C</option>
                     <option value="D">D</option>
                     <option value="E">E</option>
                     <option value="F">F</option>
                     <option value="G">G</option>
                     <option value="H">H</option>
                     <option value="I">I</option>
                     <option value="J">J</option>
                     <option value="K">K</option>
                     <option value="L">L</option>
                     <option value="M">M</option>
                     <option value="N">N</option>
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
                        data-card-widget="search" onclick="">조회</button>
                  <!-- end : search bar -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <div class="card-body">
      <div class="dt-buttons btn-group flex-wrap">
         <button class="btn btn-secondary buttons-excel buttons-html5"
            tabindex="0" aria-controls="example1" type="button">
            <span>PDF</span>
         </button>
      </div>
      <div class="row my-2">
          <div class="col-md-12">
              <div class="card">
                  <div class="card-body">
               <div class="trafficCanvas">
                   <canvas id="trafficChart" height="65"></canvas>
               </div>
                  </div>
              </div>
             
              <div class="card" style="height:250px">
            <div class="col-sm-12" style="text-align:center;">
               <table class="table-s table-bordered dataTable dtr-inline" style="width:100%; height:90%;">
                  <thead>
                     <tr>
                        <th style="width:10%;">구분</th>
                        <th style="width:6%;">월</th>
                        <th style="width:6%;">9</th>
                        <th style="width:6%;">10</th>
                        <th style="width:6%;">11</th>
                        <th style="width:6%;">12</th>
                        <th style="width:6%;">1</th>
                        <th style="width:6%;">2</th>
                        <th style="width:6%;">3</th>
                        <th style="width:6%;">4</th>
                        <th style="width:6%;">5</th>
                        <th style="width:6%;">6</th>
                        <th style="width:6%;">7</th>
                        <th style="width:6%;">8</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <th rowspan="2">평균</th>
                        <td>통행량</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>속도</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <th rowspan="2">표준편차</th>
                        <td>통행량</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>속도</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <th rowspan="2">최대값</th>
                        <td>통행량</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>속도</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <th rowspan="2">최소값</th>
                        <td>통행량</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                     </tr>
                     <tr>
                        <td>속도</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
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
  $(function(){
       var ctx = document.getElementById('trafficChart').getContext('2d');
       var chart = new Chart(ctx, {
           type: 'line',
           data: chartData,
           options: chartOptions
       })
   })

   // chart data and options
   var chartData = {
       labels: ['9', '10', '11', '12', '1', '2', '3', '4', '5', '6', '7', '8'],
       datasets: [
           {
               label: '교통량',
               type:'bar',
               yAxisID: 'y-left',
               data: [1100, 1200, 1700, 1100, 2200, 1600, 2100, 1300, 2500, 2200, 1900, 2800],
               backgroundColor: [
                   'rgba(256, 0, 0, 0.4)'
               ],
               borderColor: [
                   'rgba(256, 0, 0, 0.4)'
               ],
               borderWidth: 1
           },
           {
               label: '주행속도',
               yAxisID: 'y-right',
               data: [60, 70, 80, 90, 100, 90, 80, 70, 60, 50, 70, 80],
               backgroundColor: [
                   'skyblue'
               ],
               borderColor: [
                   'skyblue'
               ],
               borderWidth: 1
           }
       ]
   }

   var chartOptions = {
       responsive:true,
       // maintainAspectRatio: false,
       scales: {
           x: {
               title: {
                   display: true,
                   text: '월',
                   color:'white'
               }
           },
           'y-left': {
               type: 'linear',
               position: 'left',
               title: {
                   display: true,
                   text: '교통량',
                   color:'white'
               },
               grid: {
                   display: false
               }
           },
           'y-right': {
               type: 'linear',
               position: 'right',
               title: {
                   display: true,
                   text: '주행속도',
                   color:'white'
               },
               grid: {
                   display: false
               }
           }
       }
   }
  
  $('#reservation').daterangepicker()
</script>
</body>
</html>