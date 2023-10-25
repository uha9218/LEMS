<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title></title>

<head></head>

<!-- /.content -->
<section class="content">
	<div class="card">
		<div class="card-body p-0">
			<div class="mailbox-read-info">
				<form role="form" method="post" action="modify.do" id="modifyForm" name="modifyForm" >
					<div class="card-body" align="center">
						<input type="hidden" class="form-control" name="brDate" id="brDate" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${br.brDate }" />"/>
						<input type="hidden" class="form-control" name="brNum" id="brNum" value="${br.brNum }"/>
						<div class="form-group row">
							<label for="hwCode" class="col-sm-6 col-form-label">고장 구간</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" id="hwCode" name="hwCode" value="${br.hwCode }" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label for="brContent" class="col-sm-6 col-form-label">고장 내용</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" id="brContent" name="brContent" value="${br.brContent }" readonly>
								
							</div>
						</div>
						<div class="form-group row">
							<label for="brState" class="col-sm-6 col-form-label">처리 여부</label>
							<div class="col-sm-6">
								<select class="custom-select rounded-0" id="brState" name="brState">
									<option value="0">고장</option>
									<option value="1">수리중</option>
									<option value="2">수리완료</option>
								</select>
							</div>
						</div>
						
					</div>	
				</form>

			</div>
		</div>
	</div>
	<div class="card-tools" style="text-align: center;">
		<button type="button" id="modifyBtn" class="btn btn-primary" onclick="modify_submit();">수정</button>
		<button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">취소</button>
	</div>
</section>

<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<script>
function modify_submit(){
	document.querySelector("form[role='form']").submit();	
}
</script>

</body>
</html>
