<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<title>LEMS for Highway | 고속도로 현황</title>

<head></head>

    <!-- Main content -->
    <!-- /.content -->
    	<section class="content">
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- 가로등 현황 레이아웃 시작 -->
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header border-0">
									<h3 class="card-title">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit; font-weight: bold;">가로등 현황</font>
										</font>
									</h3>
										<small class="float-right">
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;"><i class="fas fa-exclamation-circle"></i> 기준 : 현재시간</font>
											</font>
										</small>
								</div>
								<div class="card-body">
									<!-- 노선도 시작 -->
									<div class="route_map">
									  <div class="route_map_left">
									    <div style="margin-left:-4vw;">
									      <h6 class="text_2">양재</h6>
									      <h6 class="text_1">판교</h6>
									      <h6 class="text_1">기흥</h6>
									      <h6 class="text_1">천안</h6>
									      <h6 class="text_1">남이</h6>
									      <h6 class="text_1">회덕</h6>
									      <h6 class="text_1">옥천</h6>
									    </div>
									    <div class="cercle_bold_top"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line2"></div>
									    <div class="cercle_center"></div>
									    <div class="route_map_right">
									   	 <h6 class="text_3">금강</h6>
									 	</div>
									    <div class="route_gap"></div>
									    <div class="cercle_bold_bottom"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line1"></div>
									    <div class="cercle"></div>
									    <div class="line3"></div>
									  	<div style="margin-left:-4vw;">
									      <h6 class="text_2">부산</h6>
									      <h6 class="text_1">언양</h6>
									      <h6 class="text_1">경주</h6>
									      <h6 class="text_1">영천</h6>
									      <h6 class="text_1">경산</h6>
									      <h6 class="text_1">김천</h6>
									      <h6 class="text_1">영동</h6>
									    </div>
									  </div>
									</div>
									<!-- 노선도 끝 -->
								</div>
							</div>
						</div>
						<!-- 가로등 현황 레이아웃 끝 -->
						<!-- 오차알림 및 전력 소비량 현황 레이아웃 시작 -->
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header border-0">
									<font style="width: 20%; font-size: 1.1rem; vertical-align: inherit; font-weight: bold;">
										<i class="fas fa-exclamation-triangle"></i> 오차알림
									</font>
									<div style="width: 80%; float: right;">부산~언양 구간 오차발생</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header border-0">
									<h3 class="card-title">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit; font-weight: bold;">전력 소비량 현황</font>
										</font>
									</h3>
									<small class="float-right">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><i class="fas fa-exclamation-circle"></i> 기준 : 현재시간</font>
										</font>
									</small>
								</div>
								<div class="card-body">
									<div class="row">
										<!-- 전력량 차트 시작 -->
										<div class="col-lg-8">
											<div class="chart">
												<canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 300px; max-width: 100%;"></canvas>
											</div>
										</div>
										<!-- 전력량 차트 끝 -->
										<!-- 원인 내용 레이아웃 시작 -->
										<div class="col-lg-4">
											<font style="vertical-align: inherit; font-weight: bold;">2023-10-08 | 10% | 교통량 증가</font>
										</div>
										<!-- 원인 내용 레이아웃 끝 -->
									</div>
								</div>
							</div>
						</div>
						<!-- 오차알림 및 전력 소비량 현황 레이아웃 끝 -->
					</div>
					<!-- sec2 시작 -->
					<div class="row">
						<!-- 날씨 현황 레이아웃 시작 -->
						<div class="col-lg-3">
							<div class="card">
								<div class="card-header border-0">
									<h3 class="card-title">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit; font-weight: bold;">날씨 현황</font>
										</font>
									</h3>
									<small class="float-right">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><i class="fas fa-exclamation-circle"></i> 기준 : 현재시간</font>
										</font>
									</small>
								</div>
								<div class="card-body">
			
								</div>
							</div>
						</div>
						<!-- 날씨 현황 레이아웃 끝 -->
						<!-- 교통량 현황 레이아웃 시작 -->
						<div class="col-lg-6">
							<div class="card">
								<div class="card-header border-0">
									<h3 class="card-title">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit; font-weight: bold;">교통량 현황</font>
										</font>
									</h3>
									<small class="float-right">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><i class="fas fa-exclamation-circle"></i> 기준 : 현재시간</font>
										</font>
									</small>
								</div>
								<div class="card-body">
			
								</div>
							</div>
						</div>
						<!-- 교통량 현황 레이아웃 끝 -->
						<!-- 사고량 현황 레이아웃 시작 -->
						<div class="col-lg-3">
							<div class="card">
								<div class="card-header border-0">
									<h3 class="card-title">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit; font-weight: bold;">사고량 현황</font>
										</font>
									</h3>
									<small class="float-right">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;"><i class="fas fa-exclamation-circle"></i> 기준 : 현재시간</font>
										</font>
									</small>
								</div>
								<div class="card-body">
								<!-- 사고량 그래프 시작 -->
									<div class="card card-success">
										<div class="card-header">
											<h3 class="card-title">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">누적 막대 차트</font>
												</font>
											</h3>
										<div class="card-tools">
											<button type="button" class="btn btn-tool" data-card-widget="collapse">
												<i class="fas fa-minus"></i>
											</button>
											<button type="button" class="btn btn-tool" data-card-widget="remove">
												<i class="fas fa-times"></i>
											</button>
										</div>
										</div>
										<div class="card-body">
											<div class="chart"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
												<canvas id="stackedBarChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 588px;" width="588" height="250" class="chartjs-render-monitor"></canvas>
											</div>
										</div>
									</div>
								<!-- 사고량 그래프 끝 -->
								</div>
							</div>
						</div>
						<!-- 교통량 현황 레이아웃 끝-->
					</div>
					<!-- sec2 끝-->
				</div>
			</div>
	</section>
  <!-- /.container-fluid -->
  <!-- /.content -->

  <!-- /.content -->
  <!-- /.content-wrapper -->
<!-- ./wrapper -->
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */

    //--------------
    //- AREA CHART -
    //--------------

    // Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

    var areaChartData = {
      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
      datasets: [
        {
          label               : 'Digital Goods',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : false,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : [28, 48, 40, 19, 86, 27, 90]
        },
        {
          label               : 'Electronics',
          backgroundColor     : 'rgba(210, 214, 222, 1)',
          borderColor         : 'rgba(210, 214, 222, 1)',
          pointRadius         : false,
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data                : [65, 59, 80, 81, 56, 55, 40]
        },
      ]
    }

    var areaChartOptions = {
      maintainAspectRatio : false,
      responsive : true,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          gridLines : {
            display : false,
          }
        }],
        yAxes: [{
          gridLines : {
            display : false,
          }
        }]
      }
    }

    // This will get the first returned node in the jQuery collection.
    new Chart(areaChartCanvas, {
      type: 'line',
      data: areaChartData,
      options: areaChartOptions
    })

    //-------------
    //- LINE CHART -
    //--------------
    var lineChartCanvas = $('#lineChart').get(0).getContext('2d')
    var lineChartOptions = $.extend(true, {}, areaChartOptions)
    var lineChartData = $.extend(true, {}, areaChartData)
    lineChartData.datasets[0].fill = false;
    lineChartData.datasets[1].fill = false;
    lineChartOptions.datasetFill = false

    var lineChart = new Chart(lineChartCanvas, {
      type: 'line',
      data: lineChartData,
      options: lineChartOptions
    })

    //-------------
    //- DONUT CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
    var donutData        = {
      labels: [
          'Chrome',
          'IE',
          'FireFox',
          'Safari',
          'Opera',
          'Navigator',
      ],
      datasets: [
        {
          data: [700,500,400,600,300,100],
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
        }
      ]
    }
    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      data: donutData,
      options: donutOptions
    })

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieData        = donutData;
    var pieOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(pieChartCanvas, {
      type: 'pie',
      data: pieData,
      options: pieOptions
    })

    //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = {
    	      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    	      datasets: [
    	        {
    	          label               : 'Digital Goods',
    	          backgroundColor     : 'rgba(60,141,188,0.9)',
    	          borderColor         : 'rgba(60,141,188,0.8)',
    	          pointRadius          : false,
    	          pointColor          : '#3b8bba',
    	          pointStrokeColor    : 'rgba(60,141,188,1)',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(60,141,188,1)',
    	          data                : [28, 48, 40, 19, 86, 27, 90]
    	        },
    	        {
    	          label               : 'Electronics',
    	          backgroundColor     : 'rgba(210, 214, 222, 1)',
    	          borderColor         : 'rgba(210, 214, 222, 1)',
    	          pointRadius         : false,
    	          pointColor          : 'rgba(210, 214, 222, 1)',
    	          pointStrokeColor    : '#c1c7d1',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(220,220,220,1)',
    	          data                : [65, 59, 80, 81, 56, 55, 40]
    	        },
    	      ]
    	    }
    var temp0 = {
    	      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    	      datasets: [
    	        {
    	          label               : 'Digital Goods',
    	          backgroundColor     : 'rgba(60,141,188,0.9)',
    	          borderColor         : 'rgba(60,141,188,0.8)',
    	          pointRadius          : false,
    	          pointColor          : '#3b8bba',
    	          pointStrokeColor    : 'rgba(60,141,188,1)',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(60,141,188,1)',
    	          data                : [28, 48, 40, 19, 86, 27, 90]
    	        },
    	        {
    	          label               : 'Electronics',
    	          backgroundColor     : 'rgba(210, 214, 222, 1)',
    	          borderColor         : 'rgba(210, 214, 222, 1)',
    	          pointRadius         : false,
    	          pointColor          : 'rgba(210, 214, 222, 1)',
    	          pointStrokeColor    : '#c1c7d1',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(220,220,220,1)',
    	          data                : [65, 59, 80, 81, 56, 55, 40]
    	        },
    	      ]
    	    }.datasets[0]
    var temp1 = {
    	      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    	      datasets: [
    	        {
    	          label               : 'Digital Goods',
    	          backgroundColor     : 'rgba(60,141,188,0.9)',
    	          borderColor         : 'rgba(60,141,188,0.8)',
    	          pointRadius          : false,
    	          pointColor          : '#3b8bba',
    	          pointStrokeColor    : 'rgba(60,141,188,1)',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(60,141,188,1)',
    	          data                : [28, 48, 40, 19, 86, 27, 90]
    	        },
    	        {
    	          label               : 'Electronics',
    	          backgroundColor     : 'rgba(210, 214, 222, 1)',
    	          borderColor         : 'rgba(210, 214, 222, 1)',
    	          pointRadius         : false,
    	          pointColor          : 'rgba(210, 214, 222, 1)',
    	          pointStrokeColor    : '#c1c7d1',
    	          pointHighlightFill  : '#fff',
    	          pointHighlightStroke: 'rgba(220,220,220,1)',
    	          data                : [65, 59, 80, 81, 56, 55, 40]
    	        },
    	      ]
    	    }.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    new Chart(barChartCanvas, {
      type: 'bar',
      data: barChartData,
      options: barChartOptions
    })

    //---------------------
    //- STACKED BAR CHART -
    //---------------------
    var stackedBarChartCanvas = $('#stackedBarChart').get(0).getContext('2d')
    var stackedBarChartData = $.extend(true, {}, barChartData)

    var stackedBarChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      scales: {
        xAxes: [{
          stacked: true,
        }],
        yAxes: [{
          stacked: true
        }]
      }
    }

    new Chart(stackedBarChartCanvas, {
      type: 'bar',
      data: stackedBarChartData,
      options: stackedBarChartOptions
    })
  })
</script>

</body>
</html>
