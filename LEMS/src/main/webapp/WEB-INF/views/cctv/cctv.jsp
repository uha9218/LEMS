<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<title></title>



<head></head>
<body
   class="dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed"
   style="height: auto;">

   <section class="content">

      <div class="" style="padding: 20px;">
         <div class="row">
            <div class="col-lg-3">
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'A구간 상세보기', 600, 450);">
                     [A구간 | 양재~판교] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.A}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'E구간 상세보기', 800, 600);">
                     [E구간 | 남이~회덕] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.E}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'I구간 상세보기', 800, 600);">
                     [I구간 | 영동~김천] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.I}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'M구간 상세보기', 800, 600);">
                     [M구간 | 경주~언양] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.M}">
                  </video>
               </div>
            </div>



            <div class="col-lg-3">
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'B구간 상세보기', 800, 600);">
                     [B구간 | 판교~기흥] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.B}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'F구간 상세보기', 800, 600);">
                     [F구간 | 회덕~옥천] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.F}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'J구간 상세보기', 800, 600);">
                     [J구간 | 김천~경산] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.J}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'N구간 상세보기', 800, 600);">
                     [N구간 | 언양~부산] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.N}">
                  </video>
               </div>
            </div>



            <div class="col-lg-3">
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'C구간 상세보기', 800, 600);">
                     [C구간 | 기흥~천안] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.C}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'G구간 상세보기', 800, 600);">
                     [G구간 | 옥천~금강] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.G}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'K구간 상세보기', 800, 600);">
                     [K구간 | 경산~영천] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.K}">
                  </video>
               </div>
            </div>



            <div class="col-lg-3">
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'D구간 상세보기', 800, 600);">
                     [D구간 | 천안~남이] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.D}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'H구간 상세보기', 800, 600);">
                     [H구간 | 금강~영동] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.H}">
                  </video>
               </div>
               <div class="card">
                  <a align="center"
                     onclick="OpenWindow('cctvDetail.do', 'L구간 상세보기', 800, 600);">
                     [L구간 | 영천~경주] 상세보기 </a>
                  <video id="player" autoplay muted controls>
                     <source type="video/mp4" src="${cctvUrlopen.L}">
                  </video>
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