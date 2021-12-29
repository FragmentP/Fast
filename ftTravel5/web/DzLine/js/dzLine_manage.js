var dzLine_manage_tool = null; 
$(function () { 
	initDzLineManageTool(); //建立DzLine管理对象
	dzLine_manage_tool.init(); //如果需要通过下拉框查询，首先初始化下拉框的值
	$("#dzLine_manage").datagrid({
		url : 'DzLine/list',
		fit : true,
		fitColumns : true,
		striped : true,
		rownumbers : true,
		border : false,
		pagination : true,
		pageSize : 5,
		pageList : [5, 10, 15, 20, 25],
		pageNumber : 1,
		sortName : "lineId",
		sortOrder : "desc",
		toolbar : "#dzLine_manage_tool",
		columns : [[
			{
				field : "lineId",
				title : "线路id",
				width : 70,
			},
			{
				field : "lineName",
				title : "线路名称",
				width : 140,
			},
			{
				field : "linePhoto",
				title : "线路图片",
				width : "70px",
				height: "65px",
				formatter: function(val,row) {
					return "<img src='" + val + "' width='65px' height='55px' />";
				}
 			},
			{
				field : "startPlace",
				title : "出发地",
				width : 140,
			},
			{
				field : "zhuti",
				title : "产品主题",
				width : 140,
			},
			{
				field : "linePrice",
				title : "线路价格",
				width : 70,
			},
			{
				field : "tuijianFlag",
				title : "是否推荐",
				width : 140,
			},
			{
				field : "hitNum",
				title : "点击率",
				width : 70,
			},
			{
				field : "addTime",
				title : "发布时间",
				width : 140,
			},
		]],
	});

	$("#dzLineEditDiv").dialog({
		title : "修改管理",
		top: "10px",
		width : 1000,
		height : 600,
		modal : true,
		closed : true,
		iconCls : "icon-edit-new",
		buttons : [{
			text : "提交",
			iconCls : "icon-edit-new",
			handler : function () {
				if ($("#dzLineEditForm").form("validate")) {
					//验证表单 
					if(!$("#dzLineEditForm").form("validate")) {
						$.messager.alert("错误提示","你输入的信息还有错误！","warning");
					} else {
						$("#dzLineEditForm").form({
						    url:"DzLine/" + $("#dzLine_lineId_edit").val() + "/update",
						    onSubmit: function(){
								if($("#dzLineEditForm").form("validate"))  {
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
			                        $("#dzLineEditDiv").dialog("close");
			                        dzLine_manage_tool.reload();
			                    }else{
			                        $.messager.alert("消息",obj.message);
			                    } 
						    }
						});
						//提交表单
						$("#dzLineEditForm").submit();
					}
				}
			},
		},{
			text : "取消",
			iconCls : "icon-redo",
			handler : function () {
				$("#dzLineEditDiv").dialog("close");
				$("#dzLineEditForm").form("reset"); 
			},
		}],
	});
});

function initDzLineManageTool() {
	dzLine_manage_tool = {
		init: function() {
		},
		reload : function () {
			$("#dzLine_manage").datagrid("reload");
		},
		redo : function () {
			$("#dzLine_manage").datagrid("unselectAll");
		},
		search: function() {
			var queryParams = $("#dzLine_manage").datagrid("options").queryParams;
			queryParams["tuijianFlag"] = $("#tuijianFlag").val();
			queryParams["addTime"] = $("#addTime").datebox("getValue"); 
			queryParams["lineName"] = $("#lineName").val();
			queryParams["startPlace"] = $("#startPlace").val();
			$("#dzLine_manage").datagrid("options").queryParams=queryParams; 
			$("#dzLine_manage").datagrid("load");
		},
		exportExcel: function() {
			$("#dzLineQueryForm").form({
			    url:"DzLine/OutToExcel",
			});
			//提交表单
			$("#dzLineQueryForm").submit();
		},
		remove : function () {
			var rows = $("#dzLine_manage").datagrid("getSelections");
			if (rows.length > 0) {
				$.messager.confirm("确定操作", "您正在要删除所选的记录吗？", function (flag) {
					if (flag) {
						var lineIds = [];
						for (var i = 0; i < rows.length; i ++) {
							lineIds.push(rows[i].lineId);
						}
						$.ajax({
							type : "POST",
							url : "DzLine/deletes",
							data : {
								lineIds : lineIds.join(","),
							},
							beforeSend : function () {
								$("#dzLine_manage").datagrid("loading");
							},
							success : function (data) {
								if (data.success) {
									$("#dzLine_manage").datagrid("loaded");
									$("#dzLine_manage").datagrid("load");
									$("#dzLine_manage").datagrid("unselectAll");
									$.messager.show({
										title : "提示",
										msg : data.message
									});
								} else {
									$("#dzLine_manage").datagrid("loaded");
									$("#dzLine_manage").datagrid("load");
									$("#dzLine_manage").datagrid("unselectAll");
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
			var rows = $("#dzLine_manage").datagrid("getSelections");
			if (rows.length > 1) {
				$.messager.alert("警告操作！", "编辑记录只能选定一条数据！", "warning");
			} else if (rows.length == 1) {
				$.ajax({
					url : "DzLine/" + rows[0].lineId +  "/update",
					type : "get",
					data : {
						//lineId : rows[0].lineId,
					},
					beforeSend : function () {
						$.messager.progress({
							text : "正在获取中...",
						});
					},
					success : function (dzLine, response, status) {
						$.messager.progress("close");
						if (dzLine) { 
							$("#dzLineEditDiv").dialog("open");
							$("#dzLine_lineId_edit").val(dzLine.lineId);
							$("#dzLine_lineId_edit").validatebox({
								required : true,
								missingMessage : "请输入线路id",
								editable: false
							});
							$("#dzLine_lineName_edit").val(dzLine.lineName);
							$("#dzLine_lineName_edit").validatebox({
								required : true,
								missingMessage : "请输入线路名称",
							});
							$("#dzLine_linePhoto").val(dzLine.linePhoto);
							$("#dzLine_linePhotoImg").attr("src", dzLine.linePhoto);
							$("#dzLine_startPlace_edit").val(dzLine.startPlace);
							$("#dzLine_startPlace_edit").validatebox({
								required : true,
								missingMessage : "请输入出发地",
							});
							$("#dzLine_zhuti_edit").val(dzLine.zhuti);
							$("#dzLine_zhuti_edit").validatebox({
								required : true,
								missingMessage : "请输入产品主题",
							});
							$("#dzLine_linePrice_edit").val(dzLine.linePrice);
							$("#dzLine_linePrice_edit").validatebox({
								required : true,
								validType : "number",
								missingMessage : "请输入线路价格",
								invalidMessage : "线路价格输入不对",
							});
							dzLine_lineDesc_editor.setContent(dzLine.lineDesc, false);
							$("#dzLine_tuijianFlag_edit").val(dzLine.tuijianFlag);
							$("#dzLine_tuijianFlag_edit").validatebox({
								required : true,
								missingMessage : "请输入是否推荐",
							});
							$("#dzLine_hitNum_edit").val(dzLine.hitNum);
							$("#dzLine_hitNum_edit").validatebox({
								required : true,
								validType : "integer",
								missingMessage : "请输入点击率",
								invalidMessage : "点击率输入不对",
							});
							$("#dzLine_addTime_edit").datetimebox({
								value: dzLine.addTime,
							    required: true,
							    showSeconds: true,
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
