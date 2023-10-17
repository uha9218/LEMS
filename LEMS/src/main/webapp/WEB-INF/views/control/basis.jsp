<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">  

</head>
<body>
<div class="card-header">
      <h3 class="card-title">추천 설정표 근거</h3>
    </div>	
	<div class="card-body box-profile">
          
            <ul class="list-group list-group-unbordered mb-3">
              <li class="list-group-item">
                <b>정밀도</b> <a class="float-right">${st.precision }</a>
              </li>
              <li class="list-group-item">
                <b>재현률</b> <a class="float-right">${st.recall }</a>
              </li>
              <li class="list-group-item">
                <b>민감도</b> <a class="float-right">${st.specificity }</a>
              </li>
              <li class="list-group-item">
                <b>정확도</b> <a class="float-right">${st.accuracy }</a>
              </li>
              <li class="list-group-item">
                <b>F1-점수</b> <a class="float-right">${st.f1score }</a>
              </li>
              <li class="list-group-item">
                <b>평균 절대 오차</b> <a class="float-right">${st.mae }</a>
              </li>
              <li class="list-group-item">
                <b>평균 제곱 오차</b> <a class="float-right">${st.mse }</a>
              </li>
            </ul>

          </div>
      <%@ include file="/WEB-INF/views/module/footer_js.jsp" %>    
</body>
</html>