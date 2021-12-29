<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tourOrder.css" />
<div id="tourOrderAddDiv">
	<form id="tourOrderAddForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">旅游景点:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_tourObj_tourId" name="tourOrder.tourObj.tourId" style="width: auto"/>
			</span>
		</div>
		<div>
			<span class="label">出发日期:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_startDate" name="tourOrder.startDate" />

			</span>

		</div>
		<div>
			<span class="label">出行人数:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_totalPersonNum" name="tourOrder.totalPersonNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">总价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_totalPrice" name="tourOrder.totalPrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">联系电话:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_telephone" name="tourOrder.telephone" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">订单备注:</span>
			<span class="inputControl">
				<textarea id="tourOrder_orderMemo" name="tourOrder.orderMemo" rows="6" cols="80"></textarea>

			</span>

		</div>
		<div>
			<span class="label">订单用户:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_userObj_user_name" name="tourOrder.userObj.user_name" style="width: auto"/>
			</span>
		</div>
		<div>
			<span class="label">下单时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_orderTime" name="tourOrder.orderTime" />

			</span>

		</div>
		<div>
			<span class="label">审核状态:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tourOrder_shzt" name="tourOrder.shzt" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">审核回复:</span>
			<span class="inputControl">
				<textarea id="tourOrder_shhf" name="tourOrder.shhf" rows="6" cols="80"></textarea>

			</span>

		</div>
		<div class="operation">
			<a id="tourOrderAddButton" class="easyui-linkbutton">添加</a>
			<a id="tourOrderClearButton" class="easyui-linkbutton">重填</a>
		</div> 
	</form>
</div>
<script src="${pageContext.request.contextPath}/TourOrder/js/tourOrder_add.js"></script> 
