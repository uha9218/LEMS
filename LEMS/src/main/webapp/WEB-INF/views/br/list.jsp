<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="command" value="${pageMaker.command }" />

<title></title>

<head></head>
<body
	class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed"
	style="height: auto;">
	<!-- Content Wrapper. Contains page content -->
	<!-- Main content -->
	<section class="content" style="text-align: center;">
		<div class="col-lg-12">
			<div class="sub_title" style="text-align: center; font-weight: bold; ">&nbsp;&nbsp;&nbsp;&nbsp;
			   <h1><b>고장 정보 관리</b></h1>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<div class="card" style="width: 95%; display: inline-block;">
			<div class="card-header with-border">
				<button type="button" class="btn btn-info" id="registBtn" style="font-size: 1.3em; float: right;"
					onclick="OpenWindow('registForm.do','고장 등록',600,400);">고장 등록
				</button>
			</div>
			<div class="card-body">
				<table class="table table-bordered text-center" id="brList">
						<thead>
							<tr style="font-size: 1.3em;">
								<th style="width: 10%;">고장 번호</th>
								<th style="width: 20%;">고장 구간</th>
								<th style="width: 40%;">고장 내용</th>
								<th style="width: 20%;">고장 등록일</th>
								<th style="width: 10%;">처리 여부</th>
							</tr>
						</thead>
						<c:if test="${empty brList}" >
							<tr>
								<td colspan="5">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
						</c:if>	
						<tbody>
							<c:forEach items="${brList}" var="br">
								<tr style="font-size: 1.3em;">
									<td><a href="javascript:OpenWindow('detail.do?brNum=${br.brNum }','상세보기',600,400);">${br.brNum }</a></td>
									<td>${br.hwCode }</td>
									<td>${br.brContent }</td>
									<td><fmt:formatDate value="${br.brDate }" pattern="yyyy-MM-dd"/></td>
									<td>${br.strState }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="card-footer">

					<%@ include file="/WEB-INF/views/br/pagination.jsp"%>
				</div>
			</div>

	</section>
	<!-- ./wrapper -->

	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

</body>
</html>