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
<title>전력량 오차 조회</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
		<h3 class="card-title">전력량 오차 조회</h3>
	</div>
	<section class="content">
		<div class="card">
			<div class="card-header with-border">
	
			</div>
		</div>
	</section>
	<div class="card-body">
      <div class="row">
          <section class="col-lg-8">
			<div id="pdfDiv">
              <div class="card">
                  <div class="card-body">
		              <div class="errCanvas">
		                  <canvas id="errChart" height="150%"></canvas>
		              </div>
                  </div>
           	 </div>
            </div>
           </section>
            <div class="col-lg-4">
               <table class="table table-bordered table-striped" id="errList"  style="text-align:center;">
                  <thead>
					<tr style="font-size:0.90em;">
						<th style="width:30%;">No.</th>
						<th style="width:30%;">날짜</th>
						<th style="width:20%;">전력오차</th>
						<th style="width:20%;">구간코드</th>
					</tr>
                  </thead>
                  <c:if test="${empty alarmList }">
					<tr>
						<td colspan="5">
							<strong>해당 내용이 없습니다.</strong>
						</td>
					</tr>
				 </c:if>
                  <tbody>
					<c:forEach items="${alarmList }" var="alarm">
				  		<tr style='font-size:1em;'>
				  				<td>${alarm.alarmNum }</td>	
				  			<td>
								<fmt:formatDate value="${alarm.alarmDate }" pattern="yyyy-MM-dd HH:mm"/>
							</td>
							<td>${alarm.elecError }</td>
							<td>${alarm.hwCode }
							</td>
				  		</tr>
				  	</c:forEach>	
				</tbody>
               </table>
         
            </div>
          </div>
    </div>
    
<!-- jQuery -->
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.2.61/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

<script>
	 
    $(function(){
        var ctx = document.getElementById('errChart').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'line',
            data: chartData,
            options: chartOptions
        })
    })

    // chart data and options
    var chartData = {
        labels: [],
        datasets: [
            {
                label: '예측 전력량',
                type:'line',
                yAxisID: 'y-left',
                data: [],
                backgroundColor: [
                    'rgba(255, 255, 051, 0.4)'
                ],
                borderColor: [
                	'rgba(255, 255, 051, 0.4)'
                ],
                borderWidth: 1
            },
            {
                label: '실측 전력량',
                type:'line',
                yAxisID: 'y-right',
                data: [],
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
        responsive: true,
        scales: {
            x: {
                title: {
                    display: true,
                    text: '구간',
                    color: 'white'
                }
            },
            'y-left': {
                type: 'linear',
                position: 'left',
                title: {
                    display: true,
                    text: '예측 전력량',
                    color: 'white',
                    font: {
	                    size: 20 
	                },
                },
                grid: {
                    display: false
                },
   
                }
            },
            'y-right': {
                type: 'linear',
                position: 'right',
                title: {
                    display: true,
                    text: '실측 전력량',
                    color: 'white',
                    font: {
	                    size: 20 
	                },
                },
                grid: {
                    display: false
                }
            }
        }
    <c:forEach items="${ErrCommandList}" var="err">
		chartData.labels.push('${err.hwCode }'); //레이블 배열에 추가
	 	chartData.datasets[0].data.push(${err.preUse }); //데이터 배열에 추가
	 	chartData.datasets[1].data.push(${err.realUse }); //데이터 배열에 추가
	</c:forEach>
</script>
</body>
</html>