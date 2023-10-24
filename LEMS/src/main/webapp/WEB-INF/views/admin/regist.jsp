<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<title></title>

<head></head>
<!-- /.content -->
<section class="content">
	<div class="card">
		<div class="card-body p-0">
			<div class="mailbox-read-info">
				<form role="form" method="post" action="regist.do" name="registForm">
					<div class="card-body" align="center">
						<input type="hidden" class="form-control" name="regDate" id="regDate" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm" />" />
						<input type="hidden" class="form-control" name="adminNum" id="adminNum" value="1"/>
						
						<div class="form-group row">
							<label for="inputID" class="col-sm-6 col-form-label">이름</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" name="name" id="name" placeholder="이름">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputEmail" class="col-sm-6 col-form-label">이메일</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" id="email" name="email" placeholder="관리자 이메일">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-6 col-form-label">패스워드</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" id="pwd" name="pwd" placeholder="관리자 패스워드">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-6 col-form-label">전화번호</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="phone" name="phone" value="${admin.phone }" placeholder="숫자 11자리 입력하세요(예: 01000000000)"/>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="card-tools" style="text-align: center;">
		<button type="button" id="registBtn" class="btn btn-primary" onclick="regist_go()">등록</button>
		<button type="button" id="listBtn" class="btn btn-primary" onclick="CloseWindow();">취소</button>

	</div>
</section>

<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>
<script>
function regist_go(){
	//alert("click regist btn");
	var form = document.registForm;
	
	var inputNotNull = document.querySelectorAll("input.notNull");
	for(var input of inputNotNull){
		if(!input.value){
			alert("모든 정보를 입력해 주세요");
			input.focus();
			return;
		}
	}
	form.action="regist.do";
	form.method="post";
	form.submit();
}
</script>

</body>
</html>
