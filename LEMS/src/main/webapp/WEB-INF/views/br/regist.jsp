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
						<input type="hidden" class="form-control" name="brDate" id="brDate" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />" />
						<input type="hidden" class="form-control" name="brNum" id="brNum" value="1"/>
						
						<div class="form-group row">
							<label for="hwCode" class="col-sm-6 col-form-label">고장 구간</label>
							<div class="col-sm-6">
								<select class="custom-select rounded-0" id="hwCode" name="hwCode">
									<option value="A">A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="D">D</option>
									<option value="E">E</option>
									<option value="F">F</option>
									<option value="G">G</option>
									<option value="H">H</option>
									<option value="I">I</option>
									<option value="J">J</option>
									<option value="K">K</option>
									<option value="L">L</option>
									<option value="M">M</option>
									<option value="N">N</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label for="brContent" class="col-sm-6 col-form-label">고장 내용</label>
							<div class="col-sm-6">
								<input type="text" class="form-control notNull" id="brContent" name="brContent" placeholder="고장내용을 작성하세요">
							</div>
						</div>
						<div class="form-group row">
							<label for="brState" class="col-sm-6 col-form-label">처리 여부</label>
							<div class="col-sm-6">
								<select class="custom-select rounded-0" id="brState" name="strState">
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
