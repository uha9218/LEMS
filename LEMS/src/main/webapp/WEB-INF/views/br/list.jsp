<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>

<head></head>
<body
	class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed"
	style="height: auto;">
	<!-- Content Wrapper. Contains page content -->
	<!-- Main content -->
	<section class="content">
		<h1>Data File</h1>
		<div class="card">
			<div class="card-header with-border">

				<div id="keyword" class="card-tools">
					<div class="input-group row">


						<select class="custom-select rounded-0" id="exampleSelectRounded0">
							<option>구간 선택</option>
							<option>A(양재~판교)</option>
							<option>B(판교~기흥)</option>
							<option>C(기흥~천안)</option>
							<option>D(천안~남이)</option>
							<option>E(남이~회덕)</option>
							<option>F(회덕~옥천)</option>
							<option>G(옥천~금강)</option>
							<option>H(금강~영동)</option>
							<option>I(영동~김천)</option>
							<option>J(김천~경산)</option>
							<option>K(경산~영천)</option>
							<option>L(영천~경주)</option>
							<option>M(경주~언양)</option>
							<option>N(언양~부산)</option>
						</select>
						<button type="button" class="btn btn-info" id="registBtn"
							onclick="OpenWindow('regist.do','고장등록',700,400);">고장&nbsp;등록
						</button>

					</div>
				</div>
			</div>
			<div class="card-body">

				<table class="table table-bordered text-center">

					<div class="card-body">
						<table class="table table-bordered text-center">
							<tbody>
								<tr style="font-size: 0.95em;">
									<th style="width: 15%;">가로등번호</th>
									<th style="width: 15%;">고속도로구간</th>
									<th style="width: 15%;">교장일시</th>
									<th style="width: 15%;">고장내용</th>
									<th style="width: 15%;">처리여부</th>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>D12</td>
									<td>D</td>
									<td>2023.05.15</td>
									<td>부품고장</td>
									<td>수리중</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>B54</td>
									<td>B</td>
									<td>2023.05.13</td>
									<td>외부충격</td>
									<td>수리중</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>A10</td>
									<td>A</td>
									<td>2023.05.10</td>
									<td>부품고장</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>G142</td>
									<td>G</td>
									<td>2023.05.05</td>
									<td>부품고장</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>N341</td>
									<td>N</td>
									<td>2023.05.05</td>
									<td>부품고장</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>A7</td>
									<td>A</td>
									<td>2023.04.29</td>
									<td>부품고장</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>M124</td>
									<td>M</td>
									<td>2023.04.28</td>
									<td>기타</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>F92</td>
									<td>F</td>
									<td>2023.04.27</td>
									<td>기타</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>E45</td>
									<td>E</td>
									<td>2023.04.25</td>
									<td>부품고장</td>
									<td>수리완료</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>J121</td>
									<td>J</td>
									<td>2023.04.22</td>
									<td>외부충격</td>
									<td>수리완료</td>
								</tr>
							</tbody>
						</table>
					</div>
				</table>
				<div class="card-footer">
					<%@ include file="/WEB-INF/views/br/pagination.jsp"%>
				</div>
			</div>
		</div>
	</section>
	<!-- ./wrapper -->

	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

	<!-- Page specific script -->
	<script>
		$(function() {
			$(document).on('click', '[data-toggle="lightbox"]',
					function(event) {
						event.preventDefault();
						$(this).ekkoLightbox({
							alwaysShowClose : true
						});
					});

			$('.filter-container').filterizr({
				gutterPixels : 3
			});
			$('.btn[data-filter]').on('click', function() {
				$('.btn[data-filter]').removeClass('active');
				$(this).addClass('active');
			});
		})
	</script>
</body>
</html>