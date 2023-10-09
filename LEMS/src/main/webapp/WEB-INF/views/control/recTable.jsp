<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<title></title>
<head>
  <!-- toggle -->
  <link href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap-toggle.min.css" rel="stylesheet">
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
                        <h5 class="card-title">Controller</h5>
                        <div class="card-tools">
                           <button type="button" class="btn btn-tool btn-primary btn-xs">적용</button>
                           <button type="button" class="btn btn-tool btn-primary btn-xs">복원</button>
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
                              <div class="jsgrid-grid-body" style="height: 520px;">
                                 <table class="jsgrid-table" style="width: 100%;">
                                    <tbody>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">A</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">B</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">C</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">D</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">E</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">F</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">G</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">H</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">I</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">J</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">K</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">L</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">M</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
                                       <tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">N</td>
                                          <td class="jsgrid-cell jsgrid-align-center" style="width: 250px;">2023.10.03 00:10</td>
                                          <td class="jsgrid-cell jsgrid-align-center"style="width: 150px;"><input type="checkbox" checked data-toggle="toggle" data-size="mini"></td>
                                       </tr>
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
                        <div class="row">
                        	<div class="col-md-2">
                           		<button type="button" id="button" class="btn btn-tool btn-primary btn-xs" style="float: center;" onclick="window.location.href='setTableList.do'">이전 설정표</button>
							</div>
							<div class="col-md-10">                         
	                           <select class="form-tool"  style="float: right;" onchange="location.href=this.value">
	                              <option value="">구간 선택</option>
	                           </select>
	                        </div>
                        </div>
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
                              <div class="jsgrid-grid-body" style="height: 520px;">
                                 <table class="jsgrid-table" style="width: 100%;">
                                    <tbody>
                                      <tbody>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">A</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;" onclick="OpenWindow('basis.do','추천근거',400,500);"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">B</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">C</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">D</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">E</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">F</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">G</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">H</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">I</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">J</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">K</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">L</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">M</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
										<tr class="jsgrid-alt-row" style="height: 38px; text-align:center;">
											<td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">N</td>
											<td class="jsgrid-cell jsgrid-align-center" style="width: 200px;">2023.10.03 00:10</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;">on</td>
											<td class="jsgrid-cell jsgrid-align-center"style="width: 100px;"><a>확인</a></td>
										</tr>
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
   <!-- toggle -->   
   <script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap-toggle.min.js"></script>
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

</body>
</html>