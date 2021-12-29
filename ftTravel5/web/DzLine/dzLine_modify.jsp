<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dzLine.css" />
<div id="dzLine_editDiv">
	<form id="dzLineEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">线路id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_lineId_edit" name="dzLine.lineId" value="<%=request.getParameter("lineId") %>" style="width:200px" />
			</span>
		</div>

		<div>
			<span class="label">线路名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_lineName_edit" name="dzLine.lineName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">线路图片:</span>
			<span class="inputControl">
				<img id="dzLine_linePhotoImg" width="200px" border="0px"/><br/>
    			<input type="hidden" id="dzLine_linePhoto" name="dzLine.linePhoto"/>
				<input id="linePhotoFile" name="linePhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">出发地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_startPlace_edit" name="dzLine.startPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">产品主题:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_zhuti_edit" name="dzLine.zhuti" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">线路价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_linePrice_edit" name="dzLine.linePrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">线路描述:</span>
			<span class="inputControl">
				<script id="dzLine_lineDesc_edit" name="dzLine.lineDesc" type="text/plain"   style="width:750px;height:500px;"></script>

			</span>

		</div>
		<div>
			<span class="label">是否推荐:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_tuijianFlag_edit" name="dzLine.tuijianFlag" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">点击率:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_hitNum_edit" name="dzLine.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">发布时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_addTime_edit" name="dzLine.addTime" />

			</span>

		</div>
		<div class="operation">
			<a id="dzLineModifyButton" class="easyui-linkbutton">更新</a> 
		</div>
	</form>
</div>
<script src="${pageContext.request.contextPath}/DzLine/js/dzLine_modify.js"></script> 
