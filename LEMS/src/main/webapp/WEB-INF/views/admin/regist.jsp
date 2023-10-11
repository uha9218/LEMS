<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<title></title>

<head></head>
<!-- /.content -->
<section class="content">
	<div class="card">
		<div class="card-body p-0">
			<div class="mailbox-read-info">
				<div class="card-body" align="center">
					<div class="form-group row">
						<label for="inputID" class="col-sm-6 col-form-label">아이디</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="id"  readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputID" class="col-sm-6 col-form-label">이름</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" placeholder="이름">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail" class="col-sm-6 col-form-label">이메일</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="email"
								placeholder="관리자 이메일">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-6 col-form-label">패스워드</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="password"
								placeholder="관리자 패스워드">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">권한</label>
						<div class="col-sm-6">
							<select class="custom-select rounded-0" id="authority">
								<option>최고 관리자</option>
								<option>관리자</option>
								<option>사용자</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="card-tools" style="text-align: center">
		<button type="button" id="modifyBtn" class="btn btn-warning"
			onclick="submit_go('modifyForm.do');">등록</button>
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
