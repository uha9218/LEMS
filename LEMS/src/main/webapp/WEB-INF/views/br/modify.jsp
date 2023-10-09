<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<title></title>

<!-- 달력 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<head></head>

<div align="center">
	<h3></h3>
</div>
<!-- /.content -->
<section class="content">
	<div class="card">
		<div class="card-body p-0">
			<div class="mailbox-read-info">
				<div class="card-body" align="center">
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-6 col-form-label">구간</label>
						<div class="col-sm-6">
							<select class="custom-select rounded-0"
								id="exampleSelectRounded0">
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
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">가로등
							번호</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="가로등 번호">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">고장일시</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="datepicker"
								placeholder="mm/dd/yyyy">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">고장내용</label>
						<div class="col-sm-6">
							<select class="custom-select rounded-0"
								id="exampleSelectRounded0">
								<option>고장 내용</option>
								<option>부품고장</option>
								<option>외부충격</option>
								<option>기타</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">수리여부</label>
						<div class="col-sm-6">
							<select class="custom-select rounded-0"
								id="exampleSelectRounded0">
								<option>수리여부</option>
								<option>수리중</option>
								<option>수리완료</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="card-tools" style="text-align: center;">
		<button type="button" id="modifyBtn" class="btn btn-warning"
			onclick="submit_go('modifyForm.do');">수정</button>
		<button type="button" id="deleteBtn" class="btn btn-danger"
			onclick="submit_go('modifyForm.do');">삭제</button>
		<button type="button" id="listBtn" class="btn btn-primary"
			onclick="CloseWindow();">취소</button>

	</div>
</section>

<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<!-- 달력 스크립트 -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

</body>
</html>
