<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가로등 추가 설치</title>
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
<body class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed" style="height: auto;">
	<div class="card-header">
		<h3 class="card-title">가로등 추가 설치 권고</h3>
		</div>
			<section class="content">
			<div class="card">
   				<div class="card-header with-border">
   					<div id="keyword" class="card-tools" style="width:450px;">
					 <div class="input-group row">
   					 	<!-- sort num -->
					  	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="">
					  		<option value="10">구간코드</option>
					  		<option value="all" >전체</option>
					  		<option value="A" >A</option>
					  		<option value="B" >B</option>
					  		<option value="C" >C</option>
					  	</select>
						<!-- Date range as a button -->
						<div class="input-group-prepend">
							<span class="input-group-text">
								<i class="far fa-calendar-alt"></i>
							</span>
						</div>
						<input type="text" class="form-control float-right"
								style="width: 100px" id="reservation">&nbsp;&nbsp;&nbsp;&nbsp;
							<!-- keyword -->
								<button class="btn btn-primary" type="button" id="searchBtn"
									data-card-widget="search" onclick="">조회
								</button>
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
							<tr>
								<th style="width:15%">No.</th>
								<th style="width:20%">날짜</th>
								<th style="width:15%">구간코드</th>
								<th>권고사유</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>
							<tr>
								<td>2</td>
								<td>2023-08</td>
								<td>A</td>
								<td>가로등 고장</td>
							</tr>
							<tr>
								<td>3</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>
							<tr>
								<td>4</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>

							<tr>
								<td>5</td>
								<td>2023-08</td>
								<td>A</td>
								<td>가로등 고장</td>
							</tr>

							<tr>
								<td>6</td>
								<td>2023-08</td>
								<td>A</td>
								<td>가시거리 확보 불가</td>
							</tr>

							<tr>
								<td>7</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>

							<tr>
								<td>8</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>

							<tr>
								<td>9</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>

							<tr>
								<td>10</td>
								<td>2023-08</td>
								<td>A</td>
								<td>사고률 증가</td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
		<div class="card-footer">
			<%@ include file="/WEB-INF/views/lr/pagination.jsp" %>				
		</div>
	</div>
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
//Date range picker
    $('#reservation').daterangepicker()
</script>
</body>
</html>