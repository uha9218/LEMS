<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일조시간데이터 조회(그래프)</title>
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
		<h3 class="card-title">일조시간데이터 조회</h3>
	</div>
	<section class="content">
		<div class="card">
			<div class="card-header with-border">
				<div id="keyword" class="card-tools" style="width: 650px;">
					<div class="input-group row">
						<!-- search bar -->
						<select class="form-control col-md-3" name="perPageNum"
							id="perPageNum" onchange="if(this.value)location.href=(this.value);">
							<option value="<%=request.getContextPath() %>/envdata/sunDetail.do">그래프</option>
							<option value="<%=request.getContextPath() %>/envdata/sun.do">리스트</option>
						</select>
						<select class="form-control col-md-3" style="width:20px" name="perPageNum"
							id="perPageNum" onchange="if(this.value)location.href=(this.value);">
							<option value="<%=request.getContextPath() %>/envdata/sunDetail.do">일조시간</option>
							<option value="<%=request.getContextPath() %>/envdata/sunVariation.do">증감률</option>
						</select>
						<!-- sort num -->
						<select class="form-control col-md-3" name="perPageNum"
	                     id="perPageNum" onchange="">
	                     <option value="10">구간코드</option>
	                     <option value="all">전체</option>
	                     <option value="A">A</option>
	                     <option value="B">B</option>
	                     <option value="C">C</option>
	                     <option value="C">D</option>
	                     <option value="C">E</option>
	                     <option value="C">F</option>
	                     <option value="C">G</option>
	                     <option value="C">H</option>
	                     <option value="C">I</option>
	                     <option value="C">J</option>
	                     <option value="C">K</option>
	                     <option value="C">L</option>
	                     <option value="C">M</option>
	                     <option value="C">N</option>
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
                      <canvas class="sunChart" height="51"></canvas>
                  </div>
                  <div class="card-body text-center text-align-center">
                    <h5>월</h5>
                  </div>
              </div>
          </div>
      </div>
      <div class="col-sm-12" style="text-align:center;">
               <table id="example1"
                  class="table table-bordered table dataTable dtr-inline"
                  aria-describedby="example1_info">
                  <thead>
                     <tr>
                        <th style="width:9%; height:7%;">구분</th>
                        <th style="width:8%; height:7%;">월</th>
                        <th style="width:5%; height:7%;">9</th>
                        <th style="width:5%; height:7%;">10</th>
                        <th style="width:5%; height:7%;">11</th>
                        <th style="width:5%; height:7%;">12</th>
                        <th style="width:5%; height:7%;">1</th>
                        <th style="width:5%; height:7%;">2</th>
                        <th style="width:5%; height:7%;">3</th>
                        <th style="width:5%; height:7%;">4</th>
                        <th style="width:5%; height:7%;">5</th>
                        <th style="width:5%; height:7%;">6</th>
                        <th style="width:5%; height:7%;">7</th>
                        <th style="width:5%; height:7%;">8</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td rowspan="2">평균</td>
                        <td>밤의길이</td>
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
                        <td>전력량</td>
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
                        <td rowspan="2">표준편차</td>
                        <td>밤의길이</td>
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
                        <td>전력량</td>
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
                        <td rowspan="2">최대값</td>
                        <td>밤의길이</td>
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
                        <td>전력량</td>
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
                        <td rowspan="2">최소값</td>
                        <td>밤의길이</td>
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
                        <td>전력량</td>
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
<!-- jQuery -->
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
	//Date range picker
	$('#reservation').daterangepicker()
	//chart
/* const time = [09:19, 09:20, 09:25, 10:17, 11:25, 12:40, 13:42, 14:24, 14:14, 13:22, 12:11, 11:00]; */
const ev = [50, 51, 47, 49, 51, 49, 46, 47, 49, 49, 48, 48];
  // var ctx = document.getElementById("myChart");
  var ctx = document.getElementsByClassName("sunChart");

  var mixedChart = {
    type: 'bar',
    labels: ['9', '10', '11', '12', '1', '2', '3', '4', '5', '6', '7', '8'],
    datasets : [
     /*  {
        label: '밤의길이',
        data : time,
        backgroundColor: 'rgba(256, 0, 0, 0.1)'
      }, */
      {
        label: '전력량',
        data: ev,
        backgroundColor: 'transparent',
        borderColor: 'skyblue',
        type: 'bar'
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