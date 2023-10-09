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
							id="perPageNum" onchange="">
							<option value="g">그래프</option>
							<option value="l">리스트</option>
						</select>
						<!-- sort num -->
						<select class="form-control col-md-3" name="perPageNum"
							id="perPageNum" onchange="">
							<option value="10">구간코드</option>
							<option value="all">전체</option>
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
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
		<div class="row my-2">
          <div class="col-md-12">
              <div class="card">
                  <div class="card-body">
                  	<div class="dt-buttons btn-group flex-wrap">
						<button class="btn btn-secondary buttons-excel buttons-html5"
							tabindex="0" aria-controls="example1" type="button" style="width:100%">
							<span>PDF</span>
						</button>
					</div>
                      <canvas class="trafficChart" height="50"></canvas>
                  </div>
                  <div class="card-body text-center text-align-center">
                    <h5>월</h5>
                  </div>
              </div>
              <div class="row">
				<div class="col-md-12" style="text-align:center;">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr>
								<th style="width:10%">구분</th>
								<th style="width:7%">9</th>
								<th style="width:7%">10</th>
								<th style="width:7%">11</th>
								<th style="width:7%">12</th>
								<th style="width:7%">1</th>
								<th style="width:7%">2</th>
								<th style="width:7%">3</th>
								<th style="width:7%">4</th>
								<th style="width:7%">5</th>
								<th style="width:7%">6</th>
								<th style="width:7%">7</th>
								<th style="width:7%">8</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>평균</td>
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
								<td>표준편차</td>
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
								<td>최대값</td>
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
								<td>최소값</td>
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
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- moment -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/moment/moment.min.js"></script>
<!-- Date range -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- Chat -->	
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>
<!-- common -->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<!-- demo -->
<script src="<%=request.getContextPath()%>/resources/dist/js/demo.js"></script>
<script>
	//Date range picker
	$('#reservation').daterangepicker()
	//chart
const spd = [60, 80, 70, 90, 100, 90, 90, 70, 80, 90, 70, 80];
  // var ctx = document.getElementById("myChart");
  var ctx = document.getElementsByClassName("trafficChart");

  var mixedChart = {
    type: 'line',
    labels: ['9', '10', '11', '12', '1', '2', '3', '4', '5', '6', '7', '8'],
    datasets : [
      {
        label: '주행속도',
        data: spd,
        backgroundColor: 'transparent',
        borderColor: 'skyblue',
        type: 'line'
      }
    ]
    };
    var myChart = new Chart(ctx, {
      type: 'line',
      data: mixedChart,
      options: {
        legend: {
          display: true
        }
      }
    });  
   
</script>
</body>
</html>