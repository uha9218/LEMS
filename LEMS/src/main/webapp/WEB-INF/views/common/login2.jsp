<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LEMS | Login</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css?v=3.2.0">

<style type="text/css">
	body{
		background-image:url("<%=request.getContextPath()%>/resources/img/login_background.png");
		background-position:center;
		background-size:cover;
		background-repeat:no-repeat;
	}
</style>
</head>

<body class="hold-transition login-page">

<div class="login-box">
  <div class="login-logo">
    <!-- <a href="../../index2.html"><b>관리자</b></a><br/> -->
    <a href="login.do"><b>LEMS</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">계속하려면 로그인 하십시오.</p>

      <form action="login.do" method="post">
        <input name="retUrl" value="${retUrl }" type="hidden" />
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요." value="">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="pwd" placeholder="패스워드를 입력하세요."  value="">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- /.col -->
          <div class="col-3"></div>
          <div class="col-6">
            <button type="submit" class="btn btn-primary btn-block" >로그인</button>
          </div>
          <div class="col-3"></div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div> 

<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>

  
  
  
  
  