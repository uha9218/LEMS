
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<title></title>
<head>
</head>
<body>
  <div class="col-lg-12">
   <div class="sub_title" style="text-align: center; font-weight: bold;">&nbsp;&nbsp;
   <h1><b>가로등 제어</b></h1>
   </div>&nbsp;&nbsp;
    </div>     
       <section class="content">
        <div class="content">
          <div class="container-fluid">
           <div class="row">
           <div class="col-md-1"></div>
               <div class="col-md-5">
                  <div class="card" style="width: 100%; height: 100%;">
                     <div class="card-header">
                        <h5 class="card-title" style="font-size: 1.2em;">Controller</h5>
                        <div class="card-tools">
                           <button type="button" class="btn btn-tool btn-primary btn-xs" style="font-size: 1em;">적용</button>
                           <button type="button" class="btn btn-tool btn-primary btn-xs" style="font-size: 1em;">복원</button>
                        </div>
                     </div>
                     <!-- /.card-header -->
                     <div class="card-body">
                        <div class="row">
                           <div id="jsGrid1" class="jsgrid" style="position: relative; width: 100%;">
                              <div class="jsgrid-grid-header jsgrid-header-scrollbar">
                                 <table class="jsgrid-table" style="width: 100%;">
                                    <tr class="jsgrid-header-row">
                                       <th class="jsgrid-header-cell jsgrid-align-right jsgrid-header-sortable"
                                          style="width: 100px; text-align:center;">구간</th>
                                       <th class="jsgrid-header-cell jsgrid-header-sortable"
                                          style="width: 250px; text-align:center;">설정 날짜</th>
                                       <th class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
                                          style="width: 150px; text-align:center;">점등 여부</th>
                                    </tr>   
                                 </table>
                              </div>
                              <div class="jsgrid-grid-body" style="height: 420px;">
                                 <table class="jsgrid-table" style="width: 100%;">
                                     <c:if test="${empty setList}" >
										<tr>
											<td colspan="5">
												<strong>해당 내용이 없습니다.</strong>
											</td>
										</tr>
									</c:if>	
                                    <tbody>
                                      <c:forEach items="${setList }" var="set">
                                    		<tr class="jsgrid-alt-row " style="height: 30px; text-align:center; font-size: 1.2em;" >
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">${set.hwCode }</td>
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;"><fmt:formatDate value="${set.setDate }" pattern="yyyy-MM-dd HH:mm"/></td>
                                         		<td class="jsgrid-cell jsgrid-align-center" style="width: 150px;"><input id="lightToggle" type="checkbox" checked data-toggle="toggle" data-size="mini" onclick="alert(getToggleBtnState('lightToggle'));"></td>
                                    		</tr> 
                                    	</c:forEach> 
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-5">
                  <div class="card" style="width: 100%; height: 100%; ">
                     <div class="card-header">
                        <h5 class="card-title" style="font-size: 1.2em;">Recommendation</h5>
                     </div>
                     <!-- /.card-header -->
                     <div class="card-body">
                        <div class="row">
                           <div id="jsGrid3" class="jsgrid" style="position: relative; width: 100%;">
                              <div class="jsgrid-grid-header jsgrid-header-scrollbar">
                                 <table class="jsgrid-table" style="width: 100%;">
	                                    <tr class="jsgrid-header-row">
	                                      <th class="jsgrid-header-cell jsgrid-align-right jsgrid-header-sortable"
												style="width: 100px; text-align:center;">구간</th>
											<th class="jsgrid-header-cell jsgrid-header-sortable"
												style="width: 200px; text-align:center;">설정 날짜</th>
											<th class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
												style="width: 100px; text-align:center;">점등 여부</th>
											<th class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
												style="width: 100px; text-align:center;">근거</th>
	                                 	</tr>
                                 </table>
                                 </div>
                              <div class="jsgrid-grid-body" style="height: 420px;">
                                 <table class="jsgrid-table" style="width: 100%;">
                                    <c:if test="${empty recList}" >
										<tr>
											<td colspan="5">
												<strong>해당 내용이 없습니다.</strong>
											</td>
										</tr>
									</c:if>	
                                    <tbody>
                                    	<c:forEach items="${recList }" var="rec">
                                    		<tr class="jsgrid-alt-row " style="height: 30px; text-align:center; font-size: 1.2em;" >
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">${rec.hwCode }</td>
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;"><fmt:formatDate value="${rec.recDate }" pattern="yyyy-MM-dd HH:mm"/></td>
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">${rec.strState }</td>
                                    			<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"><button type="button" class="btn btn-tool btn-primary btn-xs" style="font-size: 0.65em;" onclick="javascript:OpenWindow('basis.do?statNum=${rec.recNum }','추천근거',400,500);">추천근거</button></td>
                                    		</tr> 
                                    	</c:forEach> 
									</tbody>	
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-1"></div>
          </div>
         </div>
        </div>
       </section>
   <%@ include file="/WEB-INF/views/module/footer_js.jsp" %>
   <script>
      $(function() {
         $("#jsGrid1").jsGrid({
            height : "100%",
            width : "100%",

            sorting : true,
            paging : true,

            data : db.clients,

            fields : [ {
               name : "구간",
               type : "text",
               width : 100
            }, {
               name : "설정 날짜",
               type : "text",
               width : 250
            }, {
               name : "점등여부",
               type : "checkbox",
               width : 150
            } ]
         });
      });
      $(function() {
         $("#jsGrid3").jsGrid({
            height : "100%",
            width : "100%",

            sorting : true,
            paging : true,

            data : db.clients,

            fields : [ {
               name : "구간",
               type : "text",
               width : 100
            }, {
               name : "설정 날짜",
               type : "text",
               width : 250
            }, {
               name : "점등여부",
               type : "checkbox",
               width : 150
            } ]
         });
      });
   </script>
   <script>
	   function getToggleBtnState(toggleBtnId){
		    const left_px = parseInt( $('#'+toggleBtnId).css('left') );
		 
		    return (left_px > 0)? "on" : "off";
		}
   </script>

</body>
</html>