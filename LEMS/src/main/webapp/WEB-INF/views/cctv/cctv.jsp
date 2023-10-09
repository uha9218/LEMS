<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>

<head></head>
<body
	class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed"
	style="height: auto;">

	<section class="content">

		<h1>관제시스템</h1>

		<div class="" style="padding: 20px;">
			<div class="row">
				<div class="col-lg-3">
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'A구간 상세보기', 800, 600);">
							[A구간 | 양재~판교] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'E구간 상세보기', 800, 600);">
							[E구간 | 남이~회덕] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'I구간 상세보기', 800, 600);">
							[I구간 | 영동~김천] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'M구간 상세보기', 800, 600);">
							[M구간 | 경주~언양] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'B구간 상세보기', 800, 600);">
							[B구간 | 판교~기흥] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'F구간 상세보기', 800, 600);">
							[F구간 | 회덕~옥천] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'J구간 상세보기', 800, 600);">
							[J구간 | 김천~경산] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'N구간 상세보기', 800, 600);">
							[N구간 | 언양~부산] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'C구간 상세보기', 800, 600);">
							[C구간 | 기흥~천안] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'G구간 상세보기', 800, 600);">
							[G구간 | 옥천~금강] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'K구간 상세보기', 800, 600);">
							[K구간 | 경산~영천] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'D구간 상세보기', 800, 600);">
							[D구간 | 천안~남이] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'H구간 상세보기', 800, 600);">
							[H구간 | 금강~영동] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br />
					</div>
					<div class="card"
						style="width: auto; height: auto; position: relative;">
						<a
							align="center"
							onclick="OpenWindow('cctvDetail.do', 'L구간 상세보기', 800, 600);">
							[L구간 | 영천~경주] 상세보기 </a>
						<video id="player" controls autoplay
							style="width: auto; height: auto;"></video>
						<br/>
					</div>
				</div>
			</div>
	</section>

	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

	<!-- 웹캠 스크립트 -->
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