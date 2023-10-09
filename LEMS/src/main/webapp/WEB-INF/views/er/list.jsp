<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전력량 오차</title>
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
		<h3 class="card-title">전력량 오차 범위 조회</h3>
	</div>
	<section class="content">
		<div class="card">
			<div class="card-header with-border">
				<div id="keyword" class="card-tools" style="width: 450px;">
						<div class="input-group row">
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
                      <canvas class="listChart" height="50"></canvas>
                  </div>
                    <h5 style="text-align:center;">시</h5>
              </div>
              <div class="row">
				<div class="col-sm-12" style="text-align:center;">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr>
								<th style="width:10%">구분</th>
								<th style="width:7%">18</th>
								<th style="width:7%">19</th>
								<th style="width:7%">20</th>
								<th style="width:7%">21</th>
								<th style="width:7%">22</th>
								<th style="width:7%">23</th>
								<th style="width:7%">24</th>
								<th style="width:7%">1</th>
								<th style="width:7%">2</th>
								<th style="width:7%">3</th>
								<th style="width:7%">4</th>
								<th style="width:7%">5</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>예측사용량</td>
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
								<td>실측사용량</td>
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
								<td>오차</td>
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
	$('#reservation').daterangepicker()
	//chart
const error = [0, 1, 4, 2, 1, 2, 0, 4, 7, 3, 0, 0, 0, 0];
const predict = [150, 148, 145, 144, 139, 137, 139, 125, 108, 90, 80, 80, 80, 80];
const actual = [150, 146, 139, 141, 141, 140, 139, 119, 115, 92, 80, 80, 80, 80];
  // var ctx = document.getElementById("myChart");
  var ctx = document.getElementsByClassName("listChart");

  var mixedChart = {
    type: 'bar',
    labels: ['18', '19', '20', '21', '22', '23', '24', '1', '2', '3', '4', '5', '6', '7'],
    datasets : [
      {
        label: '오차',
        data : error,
        backgroundColor: 'orange'
      },
      {
        label: '예측사용량',
        data: predict,
        backgroundColor: 'transparent',
        borderColor: 'skyblue',
        type: 'line'
      },
      {
          label: '실측사용량',
          data: actual,
          backgroundColor: 'transparent',
          borderColor: 'red',
          type: 'line'
       }
      
    ]
    };
    var myChart = new Chart(ctx, {
      type: 'bar',
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