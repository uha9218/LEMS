<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>



<head></head>
<body
	class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed"
	style="height: auto;">

	<section class="content">

		<div class="" style="padding: 30px;">
			<div class="row">
				<div class="col-lg-3">
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.A}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.E}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.I}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.M}">
						</video>
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.B}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.F}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.J}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.N}">
						</video>
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.C}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.G}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.K}">
						</video>
					</div>
				</div>



				<div class="col-lg-3">
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.D}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.H}">
						</video>
					</div>
					<div class="card">

						<video id="player" autoplay muted controls>
							<source type="video/mp4" src="${cctvUrlopen.L}">
						</video>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/module/footer_js.jsp"%>

	<script>
setTimeout(function() {
    location.reload();
}, 25 * 1000);
</script>

</body>
</html>