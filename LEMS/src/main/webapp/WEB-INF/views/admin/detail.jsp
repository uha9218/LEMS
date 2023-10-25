<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title></title>

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
						<label for="inputID" class="col-sm-6 col-form-label">아이디</label>
						<div class="col-sm-6">${admin.adminNum }</div>
					</div>
					<div class="form-group row">
						<label for="inputID" class="col-sm-6 col-form-label">이름</label>
						<div class="col-sm-6">${admin.name }</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail" class="col-sm-6 col-form-label">이메일</label>
						<div class="col-sm-6">${admin.email }</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-6 col-form-label">패스워드</label>
						<div class="col-sm-6">${admin.pwd }</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">전화번호</label>
						<div class="col-sm-6">${admin.phone }</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">관리자 등록일</label>
						<div class="col-sm-6"><fmt:formatDate value="${admin.regDate }" pattern="yyyy-MM-dd"/></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="card-tools" style="text-align: center;">
		<button type="button" id="modifyBtn" class="btn btn-primary"
			onclick="submit_go('modifyForm.do');">수정</button>
		<button type="button" id="deleteBtn" class="btn btn-primary"
			onclick="submit_go('delete.do');">삭제</button>
		<button type="button" id="listBtn" class="btn btn-primary"
			onclick="CloseWindow();">취소</button>

	</div>
</section>

<form role="form">
	<input type="hidden" name="adminNum" value="${admin.adminNum }" />
</form>


<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>
<script>
var formObj = document.querySelector("form[role='form']");

function submit_go(url){
	if(url=="delete.do" && !confirm("정말로 삭제하시겠습까?")){
		return;
	}
	formObj.action=url;
	formObj.submit();
}
</script>

</body>
</html>
