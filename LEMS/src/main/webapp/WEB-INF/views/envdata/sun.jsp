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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

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
   					<div id="keyword" class="card-tools" style="width: 600px;">
						<div class="input-group row">
							<!-- search bar -->
							<select class="form-control col-md-3" name="perPageNum"
								id="perPageNum" onchange="if(this.value)location.href=(this.value);">
								<option value="<%=request.getContextPath() %>/envdata/sun.do">리스트</option>
								<option value="<%=request.getContextPath() %>/envdata/sunDetail.do">그래프</option>
							</select>
							<!-- sort num -->
							<select class="form-control col-md-3" name="searchType" id="searchType" >
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
								style="width: 100px" id="reservation">&nbsp;&nbsp;&nbsp;&nbsp;
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
		<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4"></div>
			<div class="dt-buttons btn-group flex-wrap">
				<button class="btn btn-secondary buttons-excel buttons-html5"
					tabindex="0" aria-controls="example1" type="button">
					<span>Excel</span>
				</button>
				<button class="btn btn-secondary buttons-pdf buttons-html5"
					tabindex="0" aria-controls="example1" type="button">
					<span>CSV</span>
				</button>
			</div>
			<div class="row">
				<div class="col-sm-12" style="text-align:center;">
					<table id="example1"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead>
							<tr style='font-size:1em;'>
								<th style="width:10%;">No.</th>
								<th style="width:20%;">날짜</th>
								<th style="width:10%;">구간</th>
								<th style="width:20%;">일출</th>
								<th style="width:20%;">일몰</th>
								<th>밤의길이</th>
							</tr>
						</thead>
						<c:if test="${empty sunlightList }" >
							<tr>
								<td colspan="6">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
				  		</c:if>
						<tbody>
				  		<c:forEach items="${sunlightList }" var="sunlight">
				  			<tr style='font-size:1em;'>
				  				<td>${sunlight.sunNum }</td>
				  			<td>
				  				<fmt:parseDate value="${sunlight.sunDate }" var="sunDate" pattern="yyyyMMdd" />
								<fmt:formatDate value="${sunDate }" pattern="yyyy-MM-dd"/>
							</td>
							<td>${sunlight.hwCode }</td>
							<td>
								<fmt:parseDate value="${sunlight.sunRise }" var="sunRise" pattern="Hmm" />
								<fmt:formatDate value="${sunRise }" pattern="H:mm"/>
							</td>
							<td>
								<fmt:parseDate value="${sunlight.sunSet }" var="sunSet" pattern="HHmm" />
								<fmt:formatDate value="${sunSet }" pattern="HH:mm"/>
							</td>
							<td>
								<fmt:parseDate value="${sunlight.fullLight }" var="fullLight" pattern="HHmm" />
								<fmt:formatDate value="${fullLight }" pattern="HH:mm"/>
							</td>
				  			</tr>
				  		</c:forEach>	
						</tbody>
					</table>
				</div>
			</div>
		<div class="card-footer">
			<%@ include file="/WEB-INF/views/envdata/pagination.jsp" %>				
		</div>
	</div>
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
//Date range picker
    $('#reservation').daterangepicker()
</script>
</body>
</html>