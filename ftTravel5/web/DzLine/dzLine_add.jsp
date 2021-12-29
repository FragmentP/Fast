<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dzLine.css" />
<div id="dzLineAddDiv">
	<form id="dzLineAddForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">线路名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_lineName" name="dzLine.lineName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">线路图片:</span>
			<span class="inputControl">
				<input id="linePhotoFile" name="linePhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">出发地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_startPlace" name="dzLine.startPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">产品主题:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_zhuti" name="dzLine.zhuti" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">线路价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_linePrice" name="dzLine.linePrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">线路描述:</span>
			<span class="inputControl">
				<script name="dzLine.lineDesc" id="dzLine_lineDesc" type="text/plain"   style="width:750px;height:500px;"></script>
			</span>

		</div>
		<div>
			<span class="label">是否推荐:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_tuijianFlag" name="dzLine.tuijianFlag" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">点击率:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_hitNum" name="dzLine.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">发布时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_addTime" name="dzLine.addTime" />

			</span>

		</div>
		<div class="operation">
			<a id="dzLineAddButton" class="easyui-linkbutton">添加</a>
			<a id="dzLineClearButton" class="easyui-linkbutton">重填</a>
		</div> 
	</form>
</div>
<script src="${pageContext.request.contextPath}/DzLine/js/dzLine_add.js"></script> 
