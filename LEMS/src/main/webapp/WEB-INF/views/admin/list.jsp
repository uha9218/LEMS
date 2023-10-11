<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>

<head></head>
<body
	class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed"
	style="height: auto;">
	<!-- Content Wrapper. Contains page content -->
	<!-- Main content -->
	<section class="content">
		<h1>Data File</h1>
		<div class="card">
			<div class="card-header with-border">
				<button type="button" class="btn btn-info" id="registBtn"
					onclick="OpenWindow('regist.do','관리자 등록',700,400);">관리자 등록
				</button>
			</div>
			<div class="card-body">
				<table class="table table-bordered text-center">
					<div class="card-body">
						<table class="table table-bordered text-center">
							<tbody>
								<tr style="font-size: 0.95em;">
									<th style="width: 15%;">아이디</th>
									<th style="width: 10%;">이름</th>
									<th style="width: 30%;">이메일</th>
									<th style="width: 20%;">패스워드</th>
									<th style="width: 10%;">권한</th>
									<th style="width: 15%;">관리자 등록일</th>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>

								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>


								<tr style="font-size: 0.90em;">
									<td>A123456</td>
									<td>관리자</td>
									<td>admin@naver.com</td>
									<td>123456</td>
									<td>최고 관리자</td>
									<td>2023.10.11</td>
								</tr>

							</tbody>
						</table>
					</div>
				</table>
				<div class="card-footer">
					<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
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