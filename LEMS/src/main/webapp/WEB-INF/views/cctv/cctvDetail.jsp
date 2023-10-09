<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<title></title>

<head></head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->

<body>
	<div align=center>
		<!-- 웹캠 -->
		<video id="player" controls autoplay style="width: 1920; height: 1080;"></video>
		<br />

		<div class="timeline-footer" align="center">
			<button style="background: 666; color: gray; font-size: 20px;"
				type="button" class="btn" id="cancelBtn" onclick="window.close();">
				Close</button>
		</div>
	</div>

<%@ include file="/WEB-INF/views/module/footer_js.jsp" %>

<!-- 제이쿼리3.5.1 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- 화면 캡처용 -->
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<script>
	
function funcThisSize() {
    $("#innerWidth").html( window.innerWidth:200 );
    $("#innerHeight").html( window.innerHeight:200 );
    $("#outerWidth").html( window.outerWidth:200 );
    $("#outerHeight").html( window.outerHeight:200 );
}

$(function(){
    $(window).resize( funcThisSize );
    funcThisSize();
});
</script>
	<script type="text/javascript">
	var height_array = new Array();
	var width_array = new Array();
	width_array[1] = 1920;
	height_array[1] = 1080;
</script>

	<script type="text/javascript">
<!--
	currentCamera1 = 1;
	errorimg1 = 0;
	DoIt1();
	document.images.webcam1.onload = DoIt1();
	document.images.webcam1.onerror = ErrorImage1();
	function LoadImage1() {
		uniq1 = Math.random();
		document.images.webcam1.src = "http://127.0.0.1:8008/cam_"
				+ currentCamera1 + ".jpg?uniq=" + uniq1;
		document.images.webcam1.onload = DoIt1;
	}
	function PTZMouseDown1(e) {
		var IE = document.all ? true : false;
		var x, y;
		var myx, myy;
		var myifr = document.getElementById("_iframe-ptz");
		tp = getElPos1();
		myx = tp[0];
		myy = tp[1];
		if (IE) {
			var scrollX = document.documentElement.scrollLeft ? document.documentElement.scrollLeft
					: document.body.scrollLeft;
			var scrollY = document.documentElement.scrollTop ? document.documentElement.scrollTop
					: document.body.scrollTop;
			x = event.clientX - myx + scrollX;
			y = event.clientY - myy + scrollY;
		} else {
			x = e.pageX - myx;
			y = e.pageY - myy;
		}
		if ((width_array[currentCamera1] != null)
				&& (width_array[currentCamera1] > 0))
			x = Math.round((x * 400) / width_array[currentCamera1]);
		if ((height_array[currentCamera1] != null)
				&& (height_array[currentCamera1] > 0))
			y = Math.round((y * 300) / height_array[currentCamera1]);
		if (x > 400)
			x = 400;
		if (y > 300)
			y = 300;
		if (myifr != null)
			myifr.src = "http://127.0.0.1:8008/ptz?src=" + currentCamera1
					+ "&moveto_x=" + x + "&moveto_y=" + y + "";
		return true;
	}
	function getElPos1() {
		el = document.images.webcam1;
		x = el.offsetLeft;
		y = el.offsetTop;
		elp = el.offsetParent;
		while (elp != null) {
			x += elp.offsetLeft;
			y += elp.offsetTop;
			elp = elp.offsetParent;
		}
		return new Array(x, y);
	}
	function ErrorImage1() {
		errorimg1++;
		if (errorimg1 > 3) {
			document.images.webcam1.onload = "";
			document.images.webcam1.onerror = "";
			document.images.webcam1.src = "offline.jpg";
		} else {
			uniq1 = Math.random();
			document.images.webcam1.src = "http://127.0.0.1:8008/cam_"
					+ currentCamera1 + ".jpg?uniq=" + uniq1;
		}
	}
	function DoIt1() {
		errorimg1 = 0;
		window.setTimeout("LoadImage1();", 40);
	}
//-->
</script>


</body>
</html>