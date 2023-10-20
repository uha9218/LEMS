<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<title>LEMS for Highway | 고속도로 현황</title>

<head></head>

    <!-- Main content -->
    <!-- /.content -->
       <div style="padding-top:5px;"></div>
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
                        <div class="card-body" style="padding-top: 5vw; padding-bottom: 5vw;">
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
                               <div class="line1" id="A"></div>
                               <div class="cercle"></div>
                               <div class="line1"id="B"></div>
                               <div class="cercle"></div>
                               <div class="line1"id="C"></div>
                               <div class="cercle"></div>
                               <div class="line1"id="D"></div>
                               <div class="cercle"></div>
                               <div class="line1"id="E"></div>
                               <div class="cercle"></div>
                               <div class="line1"id="F"></div>
                               <div class="cercle"></div>
                               <div class="line2"id="G"></div>
                               <div class="cercle_center"></div>
                               <div class="route_map_right">
                                  <h6 class="text_3">금강</h6>
                               </div>
                               <div class="route_gap"></div>
                               <div class="cercle_bold_bottom"></div>
                               <div class="line1" id="N"></div>
                               <div class="cercle"></div>
                               <div class="line1" id="M"></div>
                               <div class="cercle"></div>
                               <div class="line1" id="L"></div>
                               <div class="cercle"></div>
                               <div class="line1" id="K"></div>
                               <div class="cercle"></div>
                               <div class="line1" id="J"></div>
                               <div class="cercle"></div>
                               <div class="line1" id="I"></div>
                               <div class="cercle"></div>
                               <div class="line3" id="H"></div>
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
                           <font style="font-size: 1.1rem; font-weight: bold;">
                              <i class="fas fa-exclamation-triangle"></i> 오차알림
                           </font>
                           <div style="float: right; Text-align: end; font-size: 1vw;">부산~언양구간 | 오차율:7% | 교통량 증가 | 2023-09-19 | 12:30</div>
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
                        <div class="card-body" style="padding-top:3vw; padding-bottom:3vw;">
                           <div class="row">
                              <!-- 전력량 차트 시작 -->
                              <div class="chart col-lg-7">
                            <canvas id="barChart" style="min-height: 18.7vw; height: 18.7vw; max-height: 18.7vw; max-width: 100%;"></canvas>
                        </div>
                              <!-- 전력량 차트 끝 -->
                              <!-- 원인 내용 레이아웃 시작 -->
                              <div class="col-lg-5 text-right" style="padding: 0;" >
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw; margin-bottom: 0.5vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
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
                  <div class="col-lg-4">
                     <div class="card">
                        <div class="card-header border-0">
                           <h5 class="text-center" style="font-weight: bold;">날씨 현황</h5>
                        </div>
                        <div class="card-body" style="padding-top:4vw; padding-bottom:2vw;">
                           <div style="padding-bottom: 8.2%;">
                           <div>
                              <div class="weather_time float-left weather-date"></div>
                              <div class="weather_time float-right">
                                  <i class="fas fa-exclamation-circle"></i> 기준 : 현재시간
                              </div>
                           </div><br/>
                           <div class="weather_select text-center">
                              <div class="button_left"></div><span id="location_name"> 서울특별시 </span><div class="button_right"></div>
                           </div>
                           <br/>
                            <div class="row">
                              <i id="weather_sky" class="weather_text_2 col-lg-2 fas"></i>
                              <div id="temperature" class="weather_text_3 col-lg-4 float-left"></div>
                              <div class="weather_text_4 col-lg-6 float-right">
	                             <div id="sunList">
	                                <c:forEach items="${sunlightList }" var="sunlight">
	                                    <i class="fas fa-sun">
		                                   	<fmt:parseDate value="${sunlight.sunRise }" var="sunRise" pattern="Hmm" />
	                        				<fmt:formatDate value="${sunRise }" pattern="HH:mm"/>
	                                    </i>
	                                    <i class="fas fa-moon">
	                                     	<fmt:parseDate value="${sunlight.sunSet }" var="sunSet" pattern="HHmm" />
                        					<fmt:formatDate value="${sunSet }" pattern="HH:mm"/>
	                                    </i>
	                              	</c:forEach>
	                             </div>
                              </div>
                              <div class="weather_text_div">
                                 <div id="noname" class="weather_text">강수확률 : 0 %</div>
                                 <div id="rain" class="weather_text"></div>
                              </div>
                              <div class="weather_text_div">
                                 <div id="humidity" class="weather_text"></div>
                                 <div id="windSpeed" class="weather_text"></div>
                                 <div id="windDir" class="weather_text"></div>
                              </div>
                            </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 날씨 현황 레이아웃 끝 -->
                  <!-- 교통량 현황 레이아웃 시작 -->
                  <div class="col-lg-4">
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
                        <div class="card-body" style="padding-top:4vw; padding-bottom:2vw;">
                        <!-- 교통량 그래프 시작 -->
                        <div class="row" style="padding-top: 2vw; padding-bottom: 2vw;">
	                       <div class="col-6 col-md-6 text-center">	
	                       		<div id="chartdiv1" class="chartdiv"></div>
	                       		<p>통행량</p>
						   </div>
	                       <div class="col-6 col-md-6 text-center">
	                       		<div id="chartdiv2" class="chartdiv"></div>
	                       		<p>통행속도</p>
						   </div>
	                    </div>
                 		<!-- 교통량 그래프 끝 -->
                        </div>
                     </div>
                  </div>
                  <!-- 교통량 현황 레이아웃 끝 -->
                  <!-- 사고량 현황 레이아웃 시작 -->
                  <div class="col-lg-4">
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
                        <div class="card-body" style="padding-top:4vw; padding-bottom:2vw;">
                        <!-- 사고량 그래프 시작 -->
                 		<div class="chart">
						<canvas id="stackedBarChart" style="min-height: 15.8vw; height: 15.8vw; max-height: 15.8vw; max-width: 100%;"></canvas>
						</div>
                        <!-- 사고량 그래프 끝 -->
                        </div>
                     </div>
                  </div>
                  <!-- 교통량 현황 레이아웃 끝-->
               </div>
               						 <table class="jsgrid-table" style="width: 100%;">
               						 <tbody>
                                      <c:forEach items="${setLightList }" var="set">
                                          <tr class="jsgrid-alt-row " style="height: 30px; text-align:center; font-size: 1.2em;" >
                                             <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">${set.hwCode }</td>
                                             <td class="jsgrid-cell jsgrid-align-center" style="width: 200px;"><fmt:formatDate value="${set.sunDate }" pattern="yyyy-MM-dd HH:mm"/></td>
                                               <td class="jsgrid-cell jsgrid-align-center" style="width: 150px;"><input class="light-check" data-hwCode="${set.hwCode }"  id="lightToggle" type="checkbox"  data-toggle="toggle" data-size="mini" value="1"></td>
                                          </tr> 
                                       </c:forEach> 
                                    </tbody>
                                    </table>
               
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
/** 통행속도
 * ---------------------------------------
 * This demo was created using amCharts 5.
 * 
 * For more information visit:
 * https://www.amcharts.com/
 * 
 * Documentation is available at:
 * https://www.amcharts.com/docs/v5/
 * ---------------------------------------
 */

// Create root element
// https://www.amcharts.com/docs/v5/getting-started/#Root_element
var root = am5.Root.new("chartdiv1");


// Set themes
// https://www.amcharts.com/docs/v5/concepts/themes/
root.setThemes([
  am5themes_Animated.new(root)
]);


// Create chart
// https://www.amcharts.com/docs/v5/charts/radar-chart/
var chart = root.container.children.push(am5radar.RadarChart.new(root, {
  panX: false,
  panY: false,
  startAngle: 160,
  endAngle: 380
}));


// Create axis and its renderer
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Axes
var axisRenderer = am5radar.AxisRendererCircular.new(root, {
  innerRadius: -40
});

axisRenderer.grid.template.setAll({
  stroke: root.interfaceColors.get("background"),
  visible: true,
  strokeOpacity: 0.8
});

var xAxis = chart.xAxes.push(am5xy.ValueAxis.new(root, {
  maxDeviation: 0,
  min: 0,
  max: 200,
  strictMinMax: true,
  renderer: axisRenderer
}));


// Add clock hand
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Clock_hands
var axisDataItem = xAxis.makeDataItem({});

var clockHand = am5radar.ClockHand.new(root, {
  pinRadius: am5.percent(15),
  radius: am5.percent(100),
  bottomWidth: 20
})

var bullet = axisDataItem.set("bullet", am5xy.AxisBullet.new(root, {
  sprite: clockHand
}));

xAxis.createAxisRange(axisDataItem);

var label = chart.radarContainer.children.push(am5.Label.new(root, {
  fill: am5.color(0xffffff),
  centerX: am5.percent(50),
  textAlign: "center",
  centerY: am5.percent(50),
  fontSize: "1em"
}));

axisDataItem.set("value", 50);
bullet.get("sprite").on("rotation", function () {
  var value = axisDataItem.get("value");
  var text = Math.round(axisDataItem.get("value")).toString();
  var fill = am5.color(0x000000);
  xAxis.axisRanges.each(function (axisRange) {
    if (value >= axisRange.get("value") && value <= axisRange.get("endValue")) {
      fill = axisRange.get("axisFill").get("fill");
    }
  })

  label.set("text", Math.round(value).toString());

  clockHand.pin.animate({ key: "fill", to: fill, duration: 500, easing: am5.ease.out(am5.ease.cubic) })
  clockHand.hand.animate({ key: "fill", to: fill, duration: 500, easing: am5.ease.out(am5.ease.cubic) })
});

setInterval(function () {
  axisDataItem.animate({
    key: "value",
    to: 89, //데이터
    duration: 500,
    easing: am5.ease.out(am5.ease.cubic)
  });
}, 5000)

chart.bulletsContainer.set("mask", undefined);


// Create axis ranges bands
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Bands
var bandsData = [{
  title: "정체",
  color: "#ff3333",
  lowScore: 0,
  highScore: 40
}, {
  title: "서행",
  color: "#ffff33",
  lowScore: 40,
  highScore: 80
}, {
  title: "원활",
  color: "#33ff33",
  lowScore: 80,
  highScore: 200
}];

am5.array.each(bandsData, function (data) {
  var axisRange = xAxis.createAxisRange(xAxis.makeDataItem({}));

  axisRange.setAll({
    value: data.lowScore,
    endValue: data.highScore
  });

  axisRange.get("axisFill").setAll({
    visible: true,
    fill: am5.color(data.color),
    fillOpacity: 0.8
  });

  axisRange.get("label").setAll({
    text: data.title,
    inside: true,
    radius: 15,
    fontSize: "0.9em",
    fill: root.interfaceColors.get("background")
  });
});


// Make stuff animate on load
chart.appear(1000, 100);
</script>

<script>
/** 통행량
 * ---------------------------------------
 * This demo was created using amCharts 5.
 * 
 * For more information visit:
 * https://www.amcharts.com/
 * 
 * Documentation is available at:
 * https://www.amcharts.com/docs/v5/
 * ---------------------------------------
 */

// Create root element
// https://www.amcharts.com/docs/v5/getting-started/#Root_element
var root = am5.Root.new("chartdiv2");


// Set themes
// https://www.amcharts.com/docs/v5/concepts/themes/
root.setThemes([
  am5themes_Animated.new(root)
]);


// Create chart
// https://www.amcharts.com/docs/v5/charts/radar-chart/
var chart = root.container.children.push(am5radar.RadarChart.new(root, {
  panX: false,
  panY: false,
  startAngle: 160,
  endAngle: 380
}));


// Create axis and its renderer
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Axes
var axisRenderer = am5radar.AxisRendererCircular.new(root, {
  innerRadius: -40
});

axisRenderer.grid.template.setAll({
  stroke: root.interfaceColors.get("background"),
  visible: true,
  strokeOpacity: 0.8
});

var xAxis = chart.xAxes.push(am5xy.ValueAxis.new(root, {
  maxDeviation: 0,
  min: 0,
  max: 200,
  strictMinMax: true,
  renderer: axisRenderer
}));


// Add clock hand
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Clock_hands
var axisDataItem = xAxis.makeDataItem({});

var clockHand = am5radar.ClockHand.new(root, {
  pinRadius: am5.percent(15),
  radius: am5.percent(100),
  bottomWidth: 20
})

var bullet = axisDataItem.set("bullet", am5xy.AxisBullet.new(root, {
  sprite: clockHand
}));

xAxis.createAxisRange(axisDataItem);

var label = chart.radarContainer.children.push(am5.Label.new(root, {
  fill: am5.color(0xffffff),
  centerX: am5.percent(50),
  textAlign: "center",
  centerY: am5.percent(50),
  fontSize: "1em"
}));

axisDataItem.set("value", 50);
bullet.get("sprite").on("rotation", function () {
  var value = axisDataItem.get("value");
  var text = Math.round(axisDataItem.get("value")).toString();
  var fill = am5.color(0x000000);
  xAxis.axisRanges.each(function (axisRange) {
    if (value >= axisRange.get("value") && value <= axisRange.get("endValue")) {
      fill = axisRange.get("axisFill").get("fill");
    }
  })

  label.set("text", Math.round(value).toString());

  clockHand.pin.animate({ key: "fill", to: fill, duration: 500, easing: am5.ease.out(am5.ease.cubic) })
  clockHand.hand.animate({ key: "fill", to: fill, duration: 500, easing: am5.ease.out(am5.ease.cubic) })
});

setInterval(function () {
  axisDataItem.animate({
    key: "value",
    to: 178, //데이터
    duration: 500,
    easing: am5.ease.out(am5.ease.cubic)
  });
}, 5000)

chart.bulletsContainer.set("mask", undefined);


// Create axis ranges bands
// https://www.amcharts.com/docs/v5/charts/radar-chart/gauge-charts/#Bands
var bandsData = [{
  title: "정체",
  color: "#ff3333",
  lowScore: 0,
  highScore: 40
}, {
  title: "서행",
  color: "#ffff33",
  lowScore: 40,
  highScore: 80
}, {
  title: "원활",
  color: "#33ff33",
  lowScore: 80,
  highScore: 200
}];

am5.array.each(bandsData, function (data) {
  var axisRange = xAxis.createAxisRange(xAxis.makeDataItem({}));

  axisRange.setAll({
    value: data.lowScore,
    endValue: data.highScore
  });

  axisRange.get("axisFill").setAll({
    visible: true,
    fill: am5.color(data.color),
    fillOpacity: 0.8
  });

  axisRange.get("label").setAll({
    text: data.title,
    inside: true,
    radius: 15,
    fontSize: "0.9em",
    fill: root.interfaceColors.get("background")
  });
});


// Make stuff animate on load
chart.appear(1000, 100);
</script>


<script>
  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */

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
    var stackedBarChartData = {
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

<script>
	// **API 데이터 입력 JS
	
	// **API 불러올 변수 설정
	// 날씨
    var today = new Date();
    var week = new Array('일','월','화','수','목','금','토');
    var year = today.getFullYear();
    var month = today.getMonth()+1;
    var day = today.getDate();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    
    // 위치
    var location_x = '61';
    var location_y = '125';
    var location_Array = [
  	  ['61', '125', ' 서울특별시 '], // 양재
  	  ['62', '123', ' 경기 성남시 '], // 판교
  	  ['62', '120', ' 경기 용인시 '], // 기흥
  	  ['63', '110', ' 충남 천안시 '], // 천안
  	  ['68', '105', ' 충북 청주시 '],  // 남이
  	  ['68', '101', ' 대전광역시 '], // 회덕
  	  ['68', '126', ' 충북 옥천군 '], // 옥천
  	  ['71', '99', ' 충북 옥천군 '], // 금강
  	  ['75', '99', ' 충북 영동군 '], // 영동
  	  ['80', '96', ' 경북 김천시 '], // 김천
  	  ['93', '91', ' 경북 경산시 '], // 경산
  	  ['94', '92', ' 경북 영천시 '], // 영천
  	  ['100', '88', ' 경북 경주시 '], // 경주
  	  ['98', '84', ' 울산 울주군 '], // 언양
  	];
 	
    $('.weather-date').html(year + "년 " + month + "월 " + day + "일 " + "(" + week[today.getDay()] + ")");
    
    /*
     * 기상청 30분마다 발표
     * 30분보다 작으면, 한시간 전 hours 값
     */
    if(minutes < 30){
        hours = hours - 1;
        if(hours < 0){
            // 자정 이전은 전날로 계산
            today.setDate(today.getDate() - 1);
            day = today.getDate();
            month = today.getMonth() + 1;
            year = today.getFullYear();
            hours = 23;
        }
    }
    
    //9시 -> 09시 변경 필요
    if(hours < 10) {
        hours = '0'+ hours;
    }
    if(month < 10) {
        month = '0' + month;
    }    
    if(day < 10) {
        day = '0' + day;
    } 
 
    today = year + "" + month + "" + day;
    
    // 구간 설정
    $("#A").click(function(){
    	location_x = location_Array[0][0];
   		location_y = location_Array[0][1];
   		document.getElementById("location_name").innerText = location_Array[0][2]; // 양재~판교
   		load_API();
    });
    $("#B").click(function(){
    	location_x = location_Array[1][0];
   		location_y = location_Array[1][1];
   		document.getElementById("location_name").innerText = location_Array[1][2]; // 판교~기흥
   		load_API();
    });
    $("#C").click(function(){
    	location_x = location_Array[2][0];
   		location_y = location_Array[2][1];
   		document.getElementById("location_name").innerText = location_Array[2][2]; // 기흥~천안
   		load_API();
    });
    $("#D").click(function(){
    	location_x = location_Array[3][0];
   		location_y = location_Array[3][1];
   		document.getElementById("location_name").innerText = location_Array[3][2]; // 천안
   		load_API();
    });
    $("#E").click(function(){
    	location_x = location_Array[4][0];
   		location_y = location_Array[4][1];
   		document.getElementById("location_name").innerText = location_Array[4][2]; // 남이
   		load_API();
    });
    $("#F").click(function(){
    	location_x = location_Array[5][0];
   		location_y = location_Array[5][1];
   		document.getElementById("location_name").innerText = location_Array[5][2]; // 회덕
   		load_API();
    });
    $("#G").click(function(){
    	location_x = location_Array[6][0];
   		location_y = location_Array[6][1];
   		document.getElementById("location_name").innerText = location_Array[6][2]; // 옥천
   		load_API();
    });
    $("#H").click(function(){
    	location_x = location_Array[7][0];
   		location_y = location_Array[7][1];
   		document.getElementById("location_name").innerText = location_Array[7][2]; // 금강
   		load_API();
    });
    $("#I").click(function(){
    	location_x = location_Array[8][0];
   		location_y = location_Array[8][1];
   		document.getElementById("location_name").innerText = location_Array[8][2]; // 영동
   		load_API();
    });
    $("#J").click(function(){
    	location_x = location_Array[9][0];
   		location_y = location_Array[9][1];
   		document.getElementById("location_name").innerText = location_Array[9][2]; // 김천
   		load_API();
    });
    $("#K").click(function(){
    	location_x = location_Array[10][0];
   		location_y = location_Array[10][1];
   		document.getElementById("location_name").innerText = location_Array[10][2]; // 경산
   		load_API();
    });
    $("#L").click(function(){
    	location_x = location_Array[11][0];
   		location_y = location_Array[11][1];
   		document.getElementById("location_name").innerText = location_Array[11][2]; // 영천
   		load_API();
    });
    $("#M").click(function(){
    	location_x = location_Array[12][0];
   		location_y = location_Array[12][1];
   		document.getElementById("location_name").innerText = location_Array[12][2]; // 경주
   		load_API();
    });
    $("#N").click(function(){
    	location_x = location_Array[13][0];
   		location_y = location_Array[13][1];
   		document.getElementById("location_name").innerText = location_Array[13][2]; // 언양
   		load_API();
    });
    
    //API 데이터 가져오기
    function load_API(){
    var xhr = new XMLHttpRequest();
	var url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst'; /*URL*/
	var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'41HzN/rkQU/HYJDT0ItPwZb5y8B88MImTBmGgxnJCGSg3PoEnqMbbFrpkhTePg0iJoOgzfNQvHeFNdii1VbthQ=='; /*Service Key*/
	queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1');
	queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('1000');
	queryParams += '&' + encodeURIComponent('dataType') + '=' + encodeURIComponent('JSON');
	queryParams += '&' + encodeURIComponent('base_date') + '=' + encodeURIComponent(today);
	queryParams += '&' + encodeURIComponent('base_time') + '=' + encodeURIComponent(hours +'00');
	queryParams += '&' + encodeURIComponent('nx') + '=' + encodeURIComponent(location_x);
	queryParams += '&' + encodeURIComponent('ny') + '=' + encodeURIComponent(location_y);
	xhr.open('GET', url + queryParams);
	xhr.onreadystatechange = function () {
	    if (this.readyState == 4) {
	    	
	    	var jsonData = JSON.parse(xhr.responseText);
			
	        // **원하는 데이터 추출 [기온, 하늘상태, 1시간강수량, 습도, 강수형태, 풍향, 풍속]
	        var weather_category = ['T1H', 'SKY', 'RN1', 'REH', 'PTY', 'VEC', 'WSD'];
	        var weather_json = [];
	        
	        for (let i = 0; i < weather_category.length; i++) {
	        	var weather_Values = jsonData.response.body.items.item
	            .filter(item => item.category === weather_category[i])
	            .map(item => item.fcstValue);
	        	weather_json.push(weather_Values[0]);
	        }
	        // **현재 날씨 데이터 변수선언
	        var temperature = weather_json[0];
	        var sky = weather_json[1];
	        var rain = weather_json[2];
	        var humidity = weather_json[3];
	        var rain_state = weather_json[4];
	        var windDir = parseFloat(weather_json[5]);
	        var windSpeed = weather_json[6];
	        
	        // **데이터 변환
	        // 강수량
	      	if(rain == "강수없음"){
        		rain= 0 +" mm";
        	}
	      	rain = rain.replace("mm", "");
	        
	        // 풍향
	        windDir = Math.trunc((windDir + 22.5 * 0.5) / 22.5);
	        
	        // **값 입력	
	        // 풍향
	        switch(windDir) {
	        case 0:
	        	document.getElementById("windDir").innerText = ("풍향 : 북"); // 풍향
                   break;
	        case 1:
	        	document.getElementById("windDir").innerText = ("풍향 : 북북동"); // 풍향
                   break;
	        case 2:
	        	document.getElementById("windDir").innerText = ("풍향 : 북동"); // 풍향
                   break;
	        case 3:
	        	document.getElementById("windDir").innerText = ("풍향 : 동북동"); // 풍향
                   break;
	        case 4:
	        	document.getElementById("windDir").innerText = ("풍향 : 동"); // 풍향
                   break;
	        case 5:
	        	document.getElementById("windDir").innerText = ("풍향 : 동남동"); // 풍향
                   break;
	        case 6:
	        	document.getElementById("windDir").innerText = ("풍향 : 남동"); // 풍향
                   break;
	        case 7:
	        	document.getElementById("windDir").innerText = ("풍향 : 남남동"); // 풍향
                   break;
	        case 8:
	        	document.getElementById("windDir").innerText = ("풍향 : 남"); // 풍향
                   break;
	        case 9:
	        	document.getElementById("windDir").innerText = ("풍향 : 남남서"); // 풍향
                   break;
	        case 10:
	        	document.getElementById("windDir").innerText = ("풍향 : 남서"); // 풍향
                   break;
	        case 11:
	        	document.getElementById("windDir").innerText = ("풍향 : 서남서"); // 풍향
                   break;
	        case 12:
	        	document.getElementById("windDir").innerText = ("풍향 : 서"); // 풍향
                   break;
	        case 13:
	        	document.getElementById("windDir").innerText = ("풍향 : 서북서"); // 풍향
                   break;
	        case 14:
	        	document.getElementById("windDir").innerText = ("풍향 : 북서"); // 풍향
                   break;
	        case 15:
	        	document.getElementById("windDir").innerText = ("풍향 : 북북서"); // 풍향
                   break;
	        case 16:
	        	document.getElementById("windDir").innerText = ("풍향 : 북"); // 풍향
                   break;
	        }
	        
            if(rain_state != 0) {
                switch(Number(rain_state)) {
                    case 1:
                    	$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
                        $("#weather_sky").addClass("fa-cloud-rain");
                        break;
                    case 2:
                    	$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
                        $("#weather_sky").addClass("fa-cloud-showers-heavy");
                        break;
                    case 3:
                    	$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
                        $("#weather_sky").addClass("fa-snowflake");
                        break;
                }
            }else {
                switch(Number(sky)) {
                    case 1:
                    		if(06 <= hours && hours <= 18){
	                            $("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
	                            $("#weather_sky").addClass("fa-sun");
                    		}else{
                    			$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
                                $("#weather_sky").addClass("fa-moon");
                    		}
                        break;
                    case 2:
	                    	if(06 <= hours && hours <= 18){
	                            $("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
	                            $("#weather_sky").addClass("fa-cloud-sun");
	                		}else{
	                			$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
	                            $("#weather_sky").addClass("fa-cloud-moon");
	                		}
                        break;
                    case 3:
	                    	if(6 <= hours && hours <= 18){
	                            $("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
	                            $("#weather_sky").addClass("fa-cloud-sun");
	                		}else{
	                			$("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
	                            $("#weather_sky").addClass("fa-cloud-moon");
	                		}
                        break;
                    case 4:
                           $("#weather_sky").removeClass("fa-sun", "fa-moon", "fa-cloud-sun", "fa-cloud-moon", "fa-cloud-rain", "fa-cloud", "fa-cloud-showers-heavy", "snowflake");
                           $("#weather_sky").addClass("fa-cloud");
                        break;
                    }    
                } //if 종료
                
			document.getElementById("temperature").innerText = (temperature + ' ℃'); // 기온
   	        document.getElementById("rain").innerText = ("강수량 : " + rain + " mm"); // 강수량
   	        document.getElementById("humidity").innerText = ("습도 : " + humidity + " %"); // 습도
   	        document.getElementById("windSpeed").innerText = ("풍속 : " + windSpeed + " m/s"); // 풍속
	       }
	    }
	xhr.send('');
    }
    
    load_API();

</script>

<script>
function load_API2(){
    var xhr = new XMLHttpRequest();
	var url = 'https://openapi.its.go.kr:9443/eventInfo'; /*URL*/
	var queryParams = '?' + encodeURIComponent('apiKey') + '='+'138dcdf3013b4cc1a337778398fa2317'; /*Service Key*/
	queryParams += '&' + encodeURIComponent('type') + '=' + encodeURIComponent('ex');
	queryParams += '&' + encodeURIComponent('eventType') + '=' + encodeURIComponent('all');
	queryParams += '&' + encodeURIComponent('minX') + '=' + encodeURIComponent('126.800000');
	queryParams += '&' + encodeURIComponent('maxX') + '=' + encodeURIComponent('127.890000');
	queryParams += '&' + encodeURIComponent('minY') + '=' + encodeURIComponent('34.900000');
	queryParams += '&' + encodeURIComponent('maxY') + '=' + encodeURIComponent('35.100000');
	queryParams += '&' + encodeURIComponent('getType') + '=' + encodeURIComponent('json');
	xhr.open('GET', url + queryParams);
	xhr.onreadystatechange = function () {
	    if (this.readyState == 4) {

	    	var jsonData = JSON.parse(xhr.responseText);
	    }
    }
xhr.send('');
}

load_API2();
</script>

<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

</body>
</html>