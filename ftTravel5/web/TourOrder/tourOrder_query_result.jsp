<%@ page language="java"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tourOrder.css" /> 

<div id="tourOrder_manage"></div>
<div id="tourOrder_manage_tool" style="padding:5px;">
	<div style="margin-bottom:5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit-new" plain="true" onclick="tourOrder_manage_tool.edit();">审核</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-delete-new" plain="true" onclick="tourOrder_manage_tool.remove();">删除</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true"  onclick="tourOrder_manage_tool.reload();">刷新</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-redo" plain="true" onclick="tourOrder_manage_tool.redo();">取消选择</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-export" plain="true" onclick="tourOrder_manage_tool.exportExcel();">导出到excel</a>
	</div>
	<div style="padding:0 0 0 7px;color:#333;">
		<form id="tourOrderQueryForm" method="post">
			旅游景点：<input class="textbox" type="text" id="tourObj_tourId_query" name="tourObj.tourId" style="width: auto"/>
			出发日期：<input type="text" id="startDate" name="startDate" class="easyui-datebox" editable="false" style="width:100px">
			联系电话：<input type="text" class="textbox" id="telephone" name="telephone" style="width:110px" />
			订单用户：<input class="textbox" type="text" id="userObj_user_name_query" name="userObj.user_name" style="width: auto"/>
			下单时间：<input type="text" id="orderTime" name="orderTime" class="easyui-datebox" editable="false" style="width:100px">
			审核状态：<input type="text" class="textbox" id="shzt" name="shzt" style="width:110px" />
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="tourOrder_manage_tool.search();">查询</a>
		</form>	
	</div>
</div>

<div id="tourOrderEditDiv">
	<form id="tourOrderEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">订单id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_orderId_edit" name="tourOrder.orderId" style="width:200px" />
			</span>
		</div>
		<div>
			<span class="label">旅游景点:</span>
			<span class="inputControl">
				<input class="textbox"  id="tourOrder_tourObj_tourId_edit" name="tourOrder.tourObj.tourId" style="width: auto"/>
			</span>
		</div>
		<div>
			<span class="label">出发日期:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_startDate_edit" name="tourOrder.startDate" />

			</span>

		</div>
		<div>
			<span class="label">出行人数:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_totalPersonNum_edit" name="tourOrder.totalPersonNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">总价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_totalPrice_edit" name="tourOrder.totalPrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">联系电话:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_telephone_edit" name="tourOrder.telephone" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">订单备注:</span>
			<span class="inputControl">
				<textarea id="tourOrder_orderMemo_edit" name="tourOrder.orderMemo" rows="8" cols="60"></textarea>

			</span>

		</div>
		<div>
			<span class="label">订单用户:</span>
			<span class="inputControl">
				<input class="textbox"  id="tourOrder_userObj_user_name_edit" name="tourOrder.userObj.user_name" style="width: auto"/>
			</span>
		</div>
		<div>
			<span class="label">下单时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_orderTime_edit" name="tourOrder.orderTime" />

			</span>

		</div>
		<div>
			<span class="label">审核状态:</span>
			<span class="inputControl">
				<select id="tourOrder_shzt_edit" name="tourOrder.shzt">
					<option value="待审核">待审核</option>
					<option value="已审核">已审核</option>
				</select>
			</span>

		</div>
		<div>
			<span class="label">审核回复:</span>
			<span class="inputControl">
				<textarea id="tourOrder_shhf_edit" name="tourOrder.shhf" rows="8" cols="60"></textarea>
				
			</span>

		</div>
	</form>
</div>
<script type="text/javascript" src="TourOrder/js/tourOrder_manage.js"></script> 
