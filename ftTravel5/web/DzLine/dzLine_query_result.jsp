<%@ page language="java"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dzLine.css" /> 

<div id="dzLine_manage"></div>
<div id="dzLine_manage_tool" style="padding:5px;">
	<div style="margin-bottom:5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit-new" plain="true" onclick="dzLine_manage_tool.edit();">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-delete-new" plain="true" onclick="dzLine_manage_tool.remove();">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true"  onclick="dzLine_manage_tool.reload();">刷新</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="dzLine_manage_tool.redo();">取消选择</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="dzLine_manage_tool.exportExcel();">导出到excel</a>
	</div>
	<div style="padding:0 0 0 7px;color:#333;">
		<form id="dzLineQueryForm" method="post">
			是否推荐：<input type="text" class="textbox" id="tuijianFlag" name="tuijianFlag" style="width:110px" />
			发布时间：<input type="text" id="addTime" name="addTime" class="easyui-datebox" editable="false" style="width:100px">
			线路名称：<input type="text" class="textbox" id="lineName" name="lineName" style="width:110px" />
			出发地：<input type="text" class="textbox" id="startPlace" name="startPlace" style="width:110px" />
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="dzLine_manage_tool.search();">查询</a>
		</form>	
	</div>
</div>

<div id="dzLineEditDiv">
	<form id="dzLineEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">线路id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="dzLine_lineId_edit" name="dzLine.lineId" style="width:200px" />
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
				<script name="dzLine.lineDesc" id="dzLine_lineDesc_edit" type="text/plain"   style="width:100%;height:500px;"></script>

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
	</form>
</div>
<script>
//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var dzLine_lineDesc_editor = UE.getEditor('dzLine_lineDesc_edit'); //线路描述编辑器
</script>
<script type="text/javascript" src="DzLine/js/dzLine_manage.js"></script> 
