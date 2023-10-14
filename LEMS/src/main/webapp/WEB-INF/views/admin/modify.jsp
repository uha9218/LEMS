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
						<input type="hidden" class="form-control" name="regDate" id="regDate" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${admin.regDate }" /> "/>
						<input type="hidden" class="form-control" name="adminNum" id="adminNum" value="${admin.adminNum }"/>
						<div class="form-group row">
							<label for="inputID" class="col-sm-6 col-form-label">이름</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="name" name="name" value="${admin.name }"/>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputEmail" class="col-sm-6 col-form-label">이메일</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="email" name="email" value="${admin.email}"/>
							</div>
						</div> 
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-6 col-form-label">패스워드</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="pwd" name="pwd" value="${admin.pwd }"/>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputRoll" class="col-sm-6 col-form-label">권한</label>
							<div class="col-sm-6">
								<select class="custom-select rounded-0" id="roll" name="roll">
									<option value="super">최고 관리자</option>
									<option value="admin">관리자</option>
									<option value="user">사용자</option>
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
