<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
            <div class="card" style="height:95%;">
               <table id="example1" style="height:100%;"
                  class="table table-bordered table-hover dataTable dtr-inline">
                  <thead>
                     <tr>
                        <th>No.</th>
                        <th>연도</th>
                        <th>월</th>
                        <th>전력소비량(kW)</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr class="odd">
                        <td class="dtr-control sorting_1" tabindex="0">1</td>
                        <td>Firefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.7</td>
                     </tr>
                     <tr class="even">
                        <td class="dtr-control sorting_1" tabindex="0">2</td>
                        <td>Firefox 1.5</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                     </tr>
                     <tr class="odd">
                        <td class="dtr-control sorting_1" tabindex="0">3</td>
                        <td>Firefox 2.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                     </tr>
                     <tr class="even">
                        <td class="dtr-control sorting_1" tabindex="0">4</td>
                        <td>Firefox 3.0</td>
                        <td>Win 2k+ / OSX.3+</td>
                        <td>1.9</td>
                     </tr>
                     <tr class="odd">
                        <td class="sorting_1 dtr-control">5</td>
                        <td>Camino 1.0</td>
                        <td>OSX.2+</td>
                        <td>1.8</td>
                     </tr>
                     <tr class="even">
                        <td class="sorting_1 dtr-control">6</td>
                        <td>Camino 1.5</td>
                        <td>OSX.3+</td>
                        <td>1.8</td>
                     </tr>
                     <tr class="odd">
                        <td class="sorting_1 dtr-control">7</td>
                        <td>Netscape 7.2</td>
                        <td>Win 95+ / Mac OS 8.6-9.2</td>
                        <td>1.7</td>
                     </tr>
                     <tr class="even">
                        <td class="sorting_1 dtr-control">8</td>
                        <td>Netscape Browser 8</td>
                        <td>Win 98SE+</td>
                        <td>1.7</td>
                     </tr>
                     <tr class="odd">
                        <td class="sorting_1 dtr-control">9</td>
                        <td>Netscape Navigator 9</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                     </tr>
                     <tr class="even">
                        <td class="sorting_1 dtr-control">10</td>
                        <td>Mozilla 1.0</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1</td>
                     </tr>
                  </tbody>
               </table>
               </div>
            </section>
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