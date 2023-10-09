<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
								<option value="http://localhost/project/envdata/sun.do">리스트</option>
								<option value="http://localhost/project/envdata/sunDetail.do">그래프</option>
							</select>
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
								<th>No.</th>
								<th>날짜</th>
								<th>구간</th>
								<th>일출</th>
								<th>일몰</th>
								<th>밤의길이</th>
								<th>전력량증감(%)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>
							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>
							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>
							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>

							<tr>
								<td>1</td>
								<td>2023-08</td>
								<td>A</td>
								<td>05:12</td>
								<td>19:47</td>
								<td>09:25</td>
								<td>-5.8</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		<div class="card-footer">
			<%@ include file="/WEB-INF/views/module/pagination.jsp" %>				
		</div>
	</div>
<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
//Date range picker
    $('#reservation').daterangepicker()
</script>
</body>
</html>