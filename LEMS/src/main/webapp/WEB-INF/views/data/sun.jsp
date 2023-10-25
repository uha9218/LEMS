<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" style="height: auto;">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.38.0/js/tempusdominus-bootstrap-4.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.38.0/css/tempusdominus-bootstrap-4.min.css"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/path/to/tempusdominus-bootstrap-4.min.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
	integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />




<!--  jQuery UI CSS파일 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- jQuery 기본 js파일  -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!--   jQuery UI 라이브러리 js파일-->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

</head>
<body>

	<section style="width: 100%">
		<div style="padding-left: 20%; padding-right: 20%">
			<div>
				<div class="sub_title"
					style="width: 100%; text-align: center; font-weight: bold;">
					<br> <br />
					<h1>
						<b>일조량 데이터조회</b>
					</h1>
				</div>
				<br> <br />
				<!-- data file 시작 -->

				<h3>Data File</h3>

				<br> <br />
			</div>
			<!-- 기간조회 -->
			<div class="card">
				<div class="card-body" style="text-align: center; display: inline-block">
					<div class="temp_search" >
						<form method="post">
							<input type="hidden" name="_csrf" value="t">

							<fieldset>
					
							<input type="text" class="form-control " name="fromDate"
								style="width: 10vw; text-align: center; display: inline-block" id="datepicker" value="${command.fromDate }">
							
						&nbsp;&nbsp;	<span style="font-size: 1.7em">~</span>&nbsp;&nbsp;
							
							<input type="text" class="form-control " name="toDate"
							style="width: 10vw; text-align: center; display: inline-block"" id="datepicker2" value="${command.toDate }">


						

							<button class="btn btn-primary" type="submit" id="searchBtn"
									data-card-widget="search" style="width: 5vw;" >조회</button></span>
						
								<tr>
								</tr>
							</fieldset>
						</form>
					</div>
				</div>



				<div class="col-lg-1"></div>
			</div>

			<br> <br />

			<div class="col-lg-1"></div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body" style="background: #444E54;">
							<table class="table">

								<colgroup>
									<col style="width: 15%;">
									<col style="width: 25%;">
									<col style="width: 15%;">
									<col style="width: 25%;">
								</colgroup>
								<tbody>
									<tr>
									</tr>

									<tr>
										<th scope="row">기준일자</th>
										<td colspan="3">${command.fromDate } ~ ${command.toDate } </td>
							
									</tr>
									<tr>
										<th scope="row">파일명</th>
										<td colspan="3">
											<div class="data_file_list">
												<ul class="clearfix" id="" style="">
												
												<c:forEach items="${ fileList}" var="file" >
													<li><a id="" href="${file.url }" target="_blank"
														title="${file.fileName }" class="down">${file.fileName } </a></li>
												</c:forEach>			
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">자료구조</th>
										<td colspan="3"> 일사, 일조</td>
									</tr>
								</tbody>

							</table>
							<div class="col-lg-1"></div>
						</div>
					</div>
				</div>
			
			</div>

		</div>
	</section>
	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>
   <script src="<%=request.getContextPath()%>/resources/bootstrap/moment/moment.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
		integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<script>
	//Date range picker

	   $(function() {
	            //모든 datepicker에 대한 공통 옵션 설정
	            $.datepicker.setDefaults({
	                dateFormat: 'yy-mm-dd' //Input Display Format 변경
	                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
	                ,changeYear: true //콤보박스에서 년 선택 가능
	                ,changeMonth: true //콤보박스에서 월 선택 가능                
	                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
	                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
	                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
	                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
	                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
	                ,minDate: "-2Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	                ,maxDate: "+3M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
	            });
	 
	            //input을 datepicker로 선언
	            $("#datepicker").datepicker();                    
	            $("#datepicker2").datepicker();
	        });			
	
           
           
     
			</script>



</body>
</html>