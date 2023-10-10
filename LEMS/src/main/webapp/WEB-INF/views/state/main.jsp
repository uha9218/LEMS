<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
                        <div class="card-body">
                           <div class="row">
                              <!-- 전력량 차트 시작 -->
                              <div class="chart col-lg-7">
                            <canvas id="barChart" style="min-height: 15vw; height: 15vw; max-height: 15vw; max-width: 100%;"></canvas>
                        </div>
                              <!-- 전력량 차트 끝 -->
                              <!-- 원인 내용 레이아웃 시작 -->
                              <div class="col-lg-5 text-right" style="padding: 0;" >
                                 <div style="vertical-align: inherit; font-weight: bold; font-size: 1vw;">2023-10-08 | 10% | 교통량 증가, 온도 감소</div>
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
                        <div class="card-body">
                           <div style="padding-bottom: 5.5%;">
                           <div>
                              <div class="weather_time float-left">2023-10-09(월)</div>
                              <div class="weather_time float-right">
                                  <i class="fas fa-exclamation-circle"></i> 기준 : 현재시간
                              </div>
                           </div><br/>
                           <div class="weather_select text-center">
                              <div class="button_left"></div> 서울특별시 <div class="button_right"></div>
                           </div>
                           <br/>
                            <div class="row">
                              <div class="weather_text_2 col-lg-6 float-left">
                                 <i class="fas fa-cloud-rain"></i> 10℃
                              </div>
                              <div class="weather_text_3 col-lg-6 float-right">
                                 <div>
                                    <i class="fas fa-sun"></i> 05:40
                                 </div>
                                 <div>
                                    <i class="fas fa-moon"></i> 18:56
                                 </div>
                              </div>
                              <div class="weather_text_div">
                                 <div class="weather_text">강수확률 : 98 %</div>
                                 <div class="weather_text">강수량 : 1.2 mm</div>
                              </div>
                              <div class="weather_text_div">
                                 <div class="weather_text">습도 : 85 %</div>
                                 <div class="weather_text">풍속 : 0.8 m/s</div>
                                 <div class="weather_text">풍향 : 서</div>
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
                        <div class="card-body">
                        <!-- 교통량 그래프 시작 -->
                        <div class="row" style="padding-top: 7%; padding-bottom: 7%;">
                     <div class="col-lg-6 text-center">
                        <input type="text" class="knob" value="100" data-skin="tron" data-thickness="0.2" data-angleArc="250" data-angleOffset="-125" data-width="90vw" data-height="90vw" data-fgColor="#00c0ef">
                        <div class="knob-label">통행량</div>
                     </div>
                     <div class="col-lg-6 text-center">
                        <input type="text" class="knob" value="100" data-skin="tron" data-thickness="0.2" data-angleArc="250" data-angleOffset="-125" data-width="90vw" data-height="90vw" data-fgColor="#00c0ef">
                        <div class="knob-label">통행속도</div>
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
                        <div class="card-body">
                        <!-- 사고량 그래프 시작 -->
                  <div class="chart">
                     <canvas id="stackedBarChart" style="min-height: 15vw; height: 15vw; max-height: 15vw; max-width: 100%;"></canvas>
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
    /* jQueryKnob */

    $('.knob').knob({
      /*change : function (value) {
       //console.log("change : " + value);
       },
       release : function (value) {
       console.log("release : " + value);
       },
       cancel : function () {
       console.log("cancel : " + this.value);
       },*/
      draw: function () {

        // "tron" case
        if (this.$.data('skin') == 'tron') {

          var a   = this.angle(this.cv)  // Angle
            ,
              sa  = this.startAngle          // Previous start angle
            ,
              sat = this.startAngle         // Start angle
            ,
              ea                            // Previous end angle
            ,
              eat = sat + a                 // End angle
            ,
              r   = true

          this.g.lineWidth = this.lineWidth

          this.o.cursor
          && (sat = eat - 0.3)
          && (eat = eat + 0.3)

          if (this.o.displayPrevious) {
            ea = this.startAngle + this.angle(this.value)
            this.o.cursor
            && (sa = ea - 0.3)
            && (ea = ea + 0.3)
            this.g.beginPath()
            this.g.strokeStyle = this.previousColor
            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false)
            this.g.stroke()
          }

          this.g.beginPath()
          this.g.strokeStyle = r ? this.o.fgColor : this.fgColor
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false)
          this.g.stroke()

          this.g.lineWidth = 2
          this.g.beginPath()
          this.g.strokeStyle = this.o.fgColor
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false)
          this.g.stroke()

          return false
        }
      }
    })
    /* END JQUERY KNOB */
  })

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

</body>
</html>