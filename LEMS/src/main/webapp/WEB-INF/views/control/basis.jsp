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
                <b style="margin: 0 0 0 5px ">정밀도</b> <a class="float-right" style="margin: 0 50px 0 0">${st.precision }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">재현률</b> <a class="float-right" style="margin: 0 50px 0 0 ">${st.recall }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">민감도</b> <a class="float-right" style="margin: 0 50px 0 0 ">${st.specificity }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">정확도</b> <a class="float-right" style="margin: 0 50px 0 0 ">${st.accuracy }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">F1-점수</b> <a class="float-right" style="margin: 0 50px 0 0">${st.f1score }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">평균 절대 오차</b> <a class="float-right" style="margin: 0 50px 0 0 ">${st.mae }</a>
              </li>
              <li class="list-group-item">
                <b style="margin: 0 0 0 5px ">평균 제곱 오차</b> <a class="float-right" style="margin: 0 50px 0 0 ">${st.mse }</a>
              </li>
            </ul>

          </div>
      <%@ include file="/WEB-INF/views/module/footer_js.jsp" %>    
</body>
</html>