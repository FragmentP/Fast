<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tourOrder.css" />
<div id="tourOrder_editDiv">
	<form id="tourOrderEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">订单id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_orderId_edit" name="tourOrder.orderId" value="<%=request.getParameter("orderId") %>" style="width:200px" />
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
				<input class="textbox" type="text" id="tourOrder_shzt_edit" name="tourOrder.shzt" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">审核回复:</span>
			<span class="inputControl">
				<textarea id="tourOrder_shhf_edit" name="tourOrder.shhf" rows="8" cols="60"></textarea>

			</span>

		</div>
		<div class="operation">
			<a id="tourOrderModifyButton" class="easyui-linkbutton">更新</a> 
		</div>
	</form>
</div>
<script src="${pageContext.request.contextPath}/TourOrder/js/tourOrder_modify.js"></script> 
