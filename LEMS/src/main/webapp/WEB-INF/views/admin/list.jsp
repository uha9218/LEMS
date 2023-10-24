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
			   <h1><b>관리자 정보 관리</b></h1>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<div class="card" style="width: 95%; display: inline-block;">
			<div class="card-header with-border">
				<button type="button" class="btn btn-info" id="registBtn" style="font-size: 1.3em; float: right;"
					onclick="OpenWindow('registForm.do','관리자 등록',600,400);">관리자 등록
				</button>
			</div>
			<div class="card-body">
				<table class="table table-bordered text-center" id="adminList">
						<thead>
							<tr style="font-size: 1.3em;">
								<th style="width: 15%;">관리자 번호</th>
								<th style="width: 10%;">이름</th>
								<th style="width: 20%;">이메일</th>
								<th style="width: 20%;">패스워드</th>
								<th style="width: 20%;">전화번호</th>
								<th style="width: 15%;">관리자 등록일</th>
							</tr>
						</thead>
						<c:if test="${empty adminList}" >
							<tr>
								<td colspan="5">
									<strong>해당 내용이 없습니다.</strong>
								</td>
							</tr>
						</c:if>	
						<tbody>
							<c:forEach items="${adminList}" var="admin">
								<tr style="font-size: 1.3em;">
									<td><a href="javascript:OpenWindow('detail.do?adminNum=${admin.adminNum }','상세보기',600,400);">${admin.adminNum }</a></td>
									<td>${admin.name }</td>
									<td>${admin.email }</td>
									<td>${admin.pwd }</td>
									<td>${admin.phone }</td>
									<td><fmt:formatDate value="${admin.regDate }" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="card-footer">

					<%@ include file="/WEB-INF/views/admin/pagination.jsp"%>
				</div>
			</div>

	</section>
	<!-- ./wrapper -->

	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

</body>
</html>