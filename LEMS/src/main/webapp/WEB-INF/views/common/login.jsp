<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- For google icons  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
  <!-- login style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/login.css" type="text/css">
  <title>LEMS | Login</title>
<Style>
body {
	padding: 0;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	color: white;
}

.background {
	background-image:
		url("<%=request.getContextPath()%>/resources/img/login_background.png");
	rgba (0, 0, 0, 0.61);
	background-repeat: no-repeat;
	background-size: cover;
	background-blend-mode: darken;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: -1;
	min-height: 800px;
}
</Style>
</head>
<body class="hold-transition login-page">

<div class="login-box">
  <!-- for background -->
  <div class="background"></div>

  <!-- for form container -->
  <div class="container">
    <h2><a href="login.do"><b style="font-size:1.5em">LEMS</b></a>  Login</h2>
    <form action="login.do" method="post">
	 <input name="retUrl" value="${retUrl }" type="hidden" />
      <div class="form-item">
        <span class="material-icons-outlined">
          account_circle
        </span>
        <input type="text" name="id" id="id" placeholder="Email or Username" value="">
      </div>
	
      <div class="form-item">
        <span class="material-icons-outlined">
          lock
        </span>
        <input type="password" name="pwd" id="pwd" placeholder="password">
      </div>

      <button type="submit">LOGIN</button>


    </form>
  </div>
</div>
</body>

</html>