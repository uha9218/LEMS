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
<title>고속도로환경분석(일조시간)</title>
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
            <div id="keyword" class="card-tools" style="width: 800px;">
               <div class="input-group row">
                  <!-- search bar -->
                  <select class="form-control col-md-3" name="perPageNum"
                     id="perPageNum" onchange="if(this.value)location.href=(this.value);">
                     <option value="<%=request.getContextPath() %>/envdata/sunDetail.do">그래프</option>
                     <option value="<%=request.getContextPath() %>/envdata/sun.do">리스트</option>
                  </select>
                  <select class="form-control col-md-3" style="width:20px" name="perPageNum"
                     id="perPageNum" onchange="if(this.value)location.href=(this.value);">
                     <option value="<%=request.getContextPath() %>/envdata/sunVariation.do">증감률</option>
                     <option value="<%=request.getContextPath() %>/envdata/sunDetail.do">일조시간</option>
                  </select>
                  <!-- sort num -->
                  <select class="form-control col-md-3" name="searchType"
							id="searchType">
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
						style="width: 100px" id="datepicker" name="datepicker" value="${command.fromDate }" placeholder="날짜 입력">
					<input type="text" class="form-control float-right"
						style="width: 100px" id="datepicker2" name="datepicker2" value="${command.toDate }" placeholder="날짜 입력">&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- keyword -->
						<button class="btn btn-primary" type="button" id="searchBtn"
							data-card-widget="search" onclick="searchList_go(1);">조회</button>
					<!-- end : search bar -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <div class="card-body">
    <div id="pdfDiv">
      <div class="row">
          <section class="col-lg-8">
              <div class="card">
                  <div class="card-body">
                     <button id="savePdfBtn" value="pdf다운로드" class="btn btn-block btn-secondary" style="width:5%;" >PDF</button>
						<div class="rateCanvas">
							<canvas id="rateChart" height="145%"></canvas>
						</div>
                  </div>
                  </div>
           </section>
            <div class="col-lg-4" style="text-align:center;">
             <table class="table table-bordered table-striped" id="sunlightList">
                  <thead>
                     <tr style="font-size: 0.95em;">
						<th style="width: 20%;">날짜</th>
						<th style="width: 10%;">구간</th>
						<th style="width: 25%;">당월</th>
						<th style="width: 25%;">전월</th>
						<th style="width: 20%;">증감률</th>
					</tr>
                  </thead>
                  <c:if test="${empty sunlightList }">
					<tr>
						<td colspan="5"><strong>해당 내용이 없습니다.</strong></td>
					</tr>
				  </c:if>
                  <tbody>
                     <c:forEach items="${sunlightList}" var="sunlight">
                     	<tr style ='font-size:1em;'>
                     	<td>
							<fmt:formatDate value="${sunlight.sunDate }" pattern="yyyy-MM-dd"/>
						</td>	
							<td>${sunlight.hwCode }</td>
							<td>${sunlight.lightUse }</td>
							<td>${sunlight.sunRise }</td>
							<td>${Math.floor((sunlight.lightUse - sunlight.sunRise) / sunlight.sunRise * 100 * 100) / 100}%</td>
						</tr> 
					</c:forEach>               
				  </tbody>
               </table>
          	<%@ include file="/WEB-INF/views/envdata/sunRatepagination.jsp" %>				
            </div>
          </div>
      </div>
    </div>
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.2.61/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

<script>

$(function() {
	 $.datepicker.setDefaults({
	     dateFormat: 'yy-mm-dd' 
	     ,showOtherMonths: true 
	     ,showMonthAfterYear:true
	     ,changeYear: true
	     ,changeMonth: true               
	     ,yearSuffix: "년" 
	     ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
	     ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
	     ,dayNamesMin: ['일','월','화','수','목','금','토']
	     ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] 
	     ,minDate: "-2Y" 
	     ,maxDate: "+3M"               
	 });

	 $("#datepicker").datepicker();                    
	 $("#datepicker2").datepicker();
	 
	});

//PDF
var doc = new jsPDF();
var specialElementHandlers = {
    '#editor': function(element, renderer) {
        return true;
    }
}

$('#savePdfBtn').click(function() {
    html2canvas($("#pdfDiv"), {
        onrendered : function(canvas) {
            // 한글깨짐현상때문에 jpeg->jspdf 전환
            var imgData = canvas.toDataURL('image/jpeg');
            var pageWidth = 210;
            var pageHeight = pageWidth * 1.414;
            var imgWidth = pageWidth - 20;
            var imgHeight = $('#pdfDiv').height() * imgWidth / $('#pdfDiv').width();
            var doc = new jsPDF('p','mm',[pageHeight, pageWidth]);
            doc.addImage(imgData, 'JPEG', 10, 10, imgWidth, imgHeight);
            doc.save('화면.pdf');
        }
    });
});

   //chart
$(function(){
       var ctx = document.getElementById('rateChart').getContext('2d');
       var chart = new Chart(ctx, {
           type: 'line',
           data: chartData,
           options: chartOptions
       })
   })
var chartData = {
    labels: [],
    datasets: [
       
        {
            label: '증감률',
            type:'bar',
            yAxisID: 'y-left',
            data: [],
            backgroundColor: [
                'rgba(255, 204, 153, 0.4)'
            ],
            borderColor: [
         	   'rgba(255, 204, 153, 0.4)'
            ],
            borderWidth: 2
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
                text: '날짜',
                color:'white'
            }
        },
        'y-left': {
            type: 'linear',
            position: 'right',
            title: {
                display: true,
                text: '증감률',
                color:'white'
            },
            grid: {
                display: false
            }
        }
    }
}
<c:forEach items="${sunlightList}" var="sunlight">
	chartData.labels.push('<fmt:formatDate value="${sunlight.sunDate }" pattern="yyyy-MM-dd"/>'); //레이블 배열에 추가
	//chartData.labels.push(${sunlight.hwCode});
	chartData.datasets[0].data.push(${Math.floor((sunlight.lightUse - sunlight.sunRise) / sunlight.sunRise * 100 * 100) / 100}%); //데이터 배열에 추가
 	chartData.datasets[1].data.push(${Math.floor((sunlight.lightUse - sunlight.sunRise) / sunlight.sunRise * 100 * 100) / 100}%); //데이터 배열에 추가
</c:forEach>

</script>
</body>
</html>