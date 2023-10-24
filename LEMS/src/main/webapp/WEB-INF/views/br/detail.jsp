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
						<label for="inputID" class="col-sm-6 col-form-label">고장 번호</label>
						<div class="col-sm-6">${br.brNum }</div>
					</div>
					<div class="form-group row">
						<label for="inputID" class="col-sm-6 col-form-label">고장 구간</label>
						<div class="col-sm-6">${br.hwCode }</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail" class="col-sm-6 col-form-label">고장 내용</label>
						<div class="col-sm-6">${br.brContent }</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-6 col-form-label">고장 등록일</label>
						<div class="col-sm-6"><fmt:formatDate value="${br.brDate }" pattern="yyyy-MM-dd"/></div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-6 col-form-label">처리 여부</label>
						<div class="col-sm-6">${br.strState }</div>
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
	<input type="hidden" name="brNum" value="${br.brNum }" />
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
