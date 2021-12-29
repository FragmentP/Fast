var tourOrder_manage_tool = null; 
$(function () { 
	initTourOrderManageTool(); //建立TourOrder管理对象
	tourOrder_manage_tool.init(); //如果需要通过下拉框查询，首先初始化下拉框的值
	$("#tourOrder_manage").datagrid({
		url : 'TourOrder/list',
		fit : true,
		fitColumns : true,
		striped : true,
		rownumbers : true,
		border : false,
		pagination : true,
		pageSize : 5,
		pageList : [5, 10, 15, 20, 25],
		pageNumber : 1,
		sortName : "orderId",
		sortOrder : "desc",
		toolbar : "#tourOrder_manage_tool",
		columns : [[
			{
				field : "orderId",
				title : "订单id",
				width : 70,
			},
			{
				field : "tourObj",
				title : "旅游景点",
				width : 140,
			},
			{
				field : "startDate",
				title : "出发日期",
				width : 140,
			},
			{
				field : "totalPersonNum",
				title : "出行人数",
				width : 70,
			},
			{
				field : "totalPrice",
				title : "总价格",
				width : 70,
			},
			{
				field : "telephone",
				title : "联系电话",
				width : 140,
			},
			{
				field : "userObj",
				title : "订单用户",
				width : 140,
			},
			{
				field : "orderTime",
				title : "下单时间",
				width : 140,
			},
			{
				field : "shzt",
				title : "审核状态",
				width : 140,
			},
		]],
	});

	$("#tourOrderEditDiv").dialog({
		title : "修改管理",
		top: "50px",
		width : 700,
		height : 515,
		modal : true,
		closed : true,
		iconCls : "icon-edit-new",
		buttons : [{
			text : "提交",
			iconCls : "icon-edit-new",
			handler : function () {
				if ($("#tourOrderEditForm").form("validate")) {
					//验证表单 
					if(!$("#tourOrderEditForm").form("validate")) {
						$.messager.alert("错误提示","你输入的信息还有错误！","warning");
					} else {
						$("#tourOrderEditForm").form({
						    url:"TourOrder/" + $("#tourOrder_orderId_edit").val() + "/update",
						    onSubmit: function(){
								if($("#tourOrderEditForm").form("validate"))  {
				                	$.messager.progress({
										text : "正在提交数据中...",
									});
				                	return true;
				                } else { 
				                    return false; 
				                }
						    },
						    success:function(data){
						    	$.messager.progress("close");
						    	console.log(data);
			                	var obj = jQuery.parseJSON(data);
			                    if(obj.success){
			                        $.messager.alert("消息","信息修改成功！");
			                        $("#tourOrderEditDiv").dialog("close");
			                        tourOrder_manage_tool.reload();
			                    }else{
			                        $.messager.alert("消息",obj.message);
			                    } 
						    }
						});
						//提交表单
						$("#tourOrderEditForm").submit();
					}
				}
			},
		},{
			text : "取消",
			iconCls : "icon-redo",
			handler : function () {
				$("#tourOrderEditDiv").dialog("close");
				$("#tourOrderEditForm").form("reset"); 
			},
		}],
	});
});

function initTourOrderManageTool() {
	tourOrder_manage_tool = {
		init: function() {
			$.ajax({
				url : "Tour/listAll",
				type : "post",
				success : function (data, response, status) {
					$("#tourObj_tourId_query").combobox({ 
					    valueField:"tourId",
					    textField:"tourName",
					    panelHeight: "200px",
				        editable: false, //不允许手动输入 
					});
					data.splice(0,0,{tourId:0,tourName:"不限制"});
					$("#tourObj_tourId_query").combobox("loadData",data); 
				}
			});
			$.ajax({
				url : "UserInfo/listAll",
				type : "post",
				success : function (data, response, status) {
					$("#userObj_user_name_query").combobox({ 
					    valueField:"user_name",
					    textField:"name",
					    panelHeight: "200px",
				        editable: false, //不允许手动输入 
					});
					data.splice(0,0,{user_name:"",name:"不限制"});
					$("#userObj_user_name_query").combobox("loadData",data); 
				}
			});
		},
		reload : function () {
			$("#tourOrder_manage").datagrid("reload");
		},
		redo : function () {
			$("#tourOrder_manage").datagrid("unselectAll");
		},
		search: function() {
			var queryParams = $("#tourOrder_manage").datagrid("options").queryParams;
			queryParams["tourObj.tourId"] = $("#tourObj_tourId_query").combobox("getValue");
			queryParams["startDate"] = $("#startDate").datebox("getValue"); 
			queryParams["telephone"] = $("#telephone").val();
			queryParams["userObj.user_name"] = $("#userObj_user_name_query").combobox("getValue");
			queryParams["orderTime"] = $("#orderTime").datebox("getValue"); 
			queryParams["shzt"] = $("#shzt").val();
			$("#tourOrder_manage").datagrid("options").queryParams=queryParams; 
			$("#tourOrder_manage").datagrid("load");
		},
		exportExcel: function() {
			$("#tourOrderQueryForm").form({
			    url:"TourOrder/OutToExcel",
			});
			//提交表单
			$("#tourOrderQueryForm").submit();
		},
		remove : function () {
			var rows = $("#tourOrder_manage").datagrid("getSelections");
			if (rows.length > 0) {
				$.messager.confirm("确定操作", "您正在要删除所选的记录吗？", function (flag) {
					if (flag) {
						var orderIds = [];
						for (var i = 0; i < rows.length; i ++) {
							orderIds.push(rows[i].orderId);
						}
						$.ajax({
							type : "POST",
							url : "TourOrder/deletes",
							data : {
								orderIds : orderIds.join(","),
							},
							beforeSend : function () {
								$("#tourOrder_manage").datagrid("loading");
							},
							success : function (data) {
								if (data.success) {
									$("#tourOrder_manage").datagrid("loaded");
									$("#tourOrder_manage").datagrid("load");
									$("#tourOrder_manage").datagrid("unselectAll");
									$.messager.show({
										title : "提示",
										msg : data.message
									});
								} else {
									$("#tourOrder_manage").datagrid("loaded");
									$("#tourOrder_manage").datagrid("load");
									$("#tourOrder_manage").datagrid("unselectAll");
									$.messager.alert("消息",data.message);
								}
							},
						});
					}
				});
			} else {
				$.messager.alert("提示", "请选择要删除的记录！", "info");
			}
		},
		edit : function () {
			var rows = $("#tourOrder_manage").datagrid("getSelections");
			if (rows.length > 1) {
				$.messager.alert("警告操作！", "编辑记录只能选定一条数据！", "warning");
			} else if (rows.length == 1) {
				$.ajax({
					url : "TourOrder/" + rows[0].orderId +  "/update",
					type : "get",
					data : {
						//orderId : rows[0].orderId,
					},
					beforeSend : function () {
						$.messager.progress({
							text : "正在获取中...",
						});
					},
					success : function (tourOrder, response, status) {
						$.messager.progress("close");
						if (tourOrder) { 
							$("#tourOrderEditDiv").dialog("open");
							$("#tourOrder_orderId_edit").val(tourOrder.orderId);
							$("#tourOrder_orderId_edit").validatebox({
								required : true,
								missingMessage : "请输入订单id",
								editable: false
							});
							$("#tourOrder_tourObj_tourId_edit").combobox({
								url:"Tour/listAll",
							    valueField:"tourId",
							    textField:"tourName",
							    panelHeight: "auto",
						        editable: false, //不允许手动输入 
						        onLoadSuccess: function () { //数据加载完毕事件
									$("#tourOrder_tourObj_tourId_edit").combobox("select", tourOrder.tourObjPri);
									//var data = $("#tourOrder_tourObj_tourId_edit").combobox("getData"); 
						            //if (data.length > 0) {
						                //$("#tourOrder_tourObj_tourId_edit").combobox("select", data[0].tourId);
						            //}
								}
							});
							$("#tourOrder_startDate_edit").datebox({
								value: tourOrder.startDate,
							    required: true,
							    showSeconds: true,
							});
							$("#tourOrder_totalPersonNum_edit").val(tourOrder.totalPersonNum);
							$("#tourOrder_totalPersonNum_edit").validatebox({
								required : true,
								validType : "integer",
								missingMessage : "请输入出行人数",
								invalidMessage : "出行人数输入不对",
							});
							$("#tourOrder_totalPrice_edit").val(tourOrder.totalPrice);
							$("#tourOrder_totalPrice_edit").validatebox({
								required : true,
								validType : "number",
								missingMessage : "请输入总价格",
								invalidMessage : "总价格输入不对",
							});
							$("#tourOrder_telephone_edit").val(tourOrder.telephone);
							$("#tourOrder_telephone_edit").validatebox({
								required : true,
								missingMessage : "请输入联系电话",
							});
							$("#tourOrder_orderMemo_edit").val(tourOrder.orderMemo);
							$("#tourOrder_userObj_user_name_edit").combobox({
								url:"UserInfo/listAll",
							    valueField:"user_name",
							    textField:"name",
							    panelHeight: "auto",
						        editable: false, //不允许手动输入 
						        onLoadSuccess: function () { //数据加载完毕事件
									$("#tourOrder_userObj_user_name_edit").combobox("select", tourOrder.userObjPri);
									//var data = $("#tourOrder_userObj_user_name_edit").combobox("getData"); 
						            //if (data.length > 0) {
						                //$("#tourOrder_userObj_user_name_edit").combobox("select", data[0].user_name);
						            //}
								}
							});
							$("#tourOrder_orderTime_edit").datetimebox({
								value: tourOrder.orderTime,
							    required: true,
							    showSeconds: true,
							});
							$("#tourOrder_shzt_edit").val(tourOrder.shzt);
							$("#tourOrder_shzt_edit").validatebox({
								required : true,
								missingMessage : "请输入审核状态",
							});
							$("#tourOrder_shhf_edit").val(tourOrder.shhf);
							$("#tourOrder_shhf_edit").validatebox({
								required : true,
								missingMessage : "请输入审核回复",
							});
						} else {
							$.messager.alert("获取失败！", "未知错误导致失败，请重试！", "warning");
						}
					}
				});
			} else if (rows.length == 0) {
				$.messager.alert("警告操作！", "编辑记录至少选定一条数据！", "warning");
			}
		},
	};
}
