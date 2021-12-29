<%@ page language="java"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tour.css" /> 

<div id="tour_manage"></div>
<div id="tour_manage_tool" style="padding:5px;">
	<div style="margin-bottom:5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit-new" plain="true" onclick="tour_manage_tool.edit();">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-delete-new" plain="true" onclick="tour_manage_tool.remove();">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true"  onclick="tour_manage_tool.reload();">刷新</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="tour_manage_tool.redo();">取消选择</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="tour_manage_tool.exportExcel();">导出到excel</a>
	</div>
	<div style="padding:0 0 0 7px;color:#333;">
		<form id="tourQueryForm" method="post">
			旅游景点名称：<input type="text" class="textbox" id="tourName" name="tourName" style="width:110px" />
			出发地：<input type="text" class="textbox" id="startPlace" name="startPlace" style="width:110px" />
			目的地：<input type="text" class="textbox" id="endPlace" name="endPlace" style="width:110px" />
			是否推荐：<input type="text" class="textbox" id="tuijianFlag" name="tuijianFlag" style="width:110px" />
			发布时间：<input type="text" id="addTime" name="addTime" class="easyui-datebox" editable="false" style="width:100px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="tour_manage_tool.search();">查询</a>
		</form>	
	</div>
</div>

<div id="tourEditDiv">
	<form id="tourEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">旅游id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourId_edit" name="tour.tourId" style="width:200px" />
			</span>
		</div>
		<div>
			<span class="label">旅游景点名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourName_edit" name="tour.tourName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游图片:</span>
			<span class="inputControl">
				<img id="tour_tourPhotoImg" width="200px" border="0px"/><br/>
    			<input type="hidden" id="tour_tourPhoto" name="tour.tourPhoto"/>
				<input id="tourPhotoFile" name="tourPhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">出发地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_startPlace_edit" name="tour.startPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">目的地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_endPlace_edit" name="tour.endPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourPrice_edit" name="tour.tourPrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">旅游景点介绍:</span>
			<span class="inputControl">
				<script name="tour.tourDesc" id="tour_tourDesc_edit" type="text/plain"   style="width:100%;height:500px;"></script>

			</span>

		</div>
		<div>
			<span class="label">是否推荐:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tuijianFlag_edit" name="tour.tuijianFlag" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">浏览次数:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_hitNum_edit" name="tour.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">发布时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_addTime_edit" name="tour.addTime" />

			</span>

		</div>
	</form>
</div>
<script>
//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var tour_tourDesc_editor = UE.getEditor('tour_tourDesc_edit'); //旅游景点介绍编辑器
</script>
<script type="text/javascript" src="Tour/js/tour_manage.js"></script> 
