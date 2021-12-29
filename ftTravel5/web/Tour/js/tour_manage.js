var tour_manage_tool = null; 
$(function () { 
	initTourManageTool(); //建立Tour管理对象
	tour_manage_tool.init(); //如果需要通过下拉框查询，首先初始化下拉框的值
	$("#tour_manage").datagrid({
		url : 'Tour/list',
		fit : true,
		fitColumns : true,
		striped : true,
		rownumbers : true,
		border : false,
		pagination : true,
		pageSize : 5,
		pageList : [5, 10, 15, 20, 25],
		pageNumber : 1,
		sortName : "tourId",
		sortOrder : "desc",
		toolbar : "#tour_manage_tool",
		columns : [[
			{
				field : "tourId",
				title : "旅游id",
				width : 70,
			},
			{
				field : "tourName",
				title : "旅游景点名称",
				width : 140,
			},
			{
				field : "tourPhoto",
				title : "旅游图片",
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
				field : "endPlace",
				title : "目的地",
				width : 140,
			},
			{
				field : "tourPrice",
				title : "旅游价格",
				width : 70,
			},
			{
				field : "tuijianFlag",
				title : "是否推荐",
				width : 140,
			},
			{
				field : "hitNum",
				title : "浏览次数",
				width : 70,
			},
			{
				field : "addTime",
				title : "发布时间",
				width : 140,
			},
		]],
	});

	$("#tourEditDiv").dialog({
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
				if ($("#tourEditForm").form("validate")) {
					//验证表单 
					if(!$("#tourEditForm").form("validate")) {
						$.messager.alert("错误提示","你输入的信息还有错误！","warning");
					} else {
						$("#tourEditForm").form({
						    url:"Tour/" + $("#tour_tourId_edit").val() + "/update",
						    onSubmit: function(){
								if($("#tourEditForm").form("validate"))  {
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
			                        $("#tourEditDiv").dialog("close");
			                        tour_manage_tool.reload();
			                    }else{
			                        $.messager.alert("消息",obj.message);
			                    } 
						    }
						});
						//提交表单
						$("#tourEditForm").submit();
					}
				}
			},
		},{
			text : "取消",
			iconCls : "icon-redo",
			handler : function () {
				$("#tourEditDiv").dialog("close");
				$("#tourEditForm").form("reset"); 
			},
		}],
	});
});

function initTourManageTool() {
	tour_manage_tool = {
		init: function() {
		},
		reload : function () {
			$("#tour_manage").datagrid("reload");
		},
		redo : function () {
			$("#tour_manage").datagrid("unselectAll");
		},
		search: function() {
			var queryParams = $("#tour_manage").datagrid("options").queryParams;
			queryParams["tourName"] = $("#tourName").val();
			queryParams["startPlace"] = $("#startPlace").val();
			queryParams["endPlace"] = $("#endPlace").val();
			queryParams["tuijianFlag"] = $("#tuijianFlag").val();
			queryParams["addTime"] = $("#addTime").datebox("getValue"); 
			$("#tour_manage").datagrid("options").queryParams=queryParams; 
			$("#tour_manage").datagrid("load");
		},
		exportExcel: function() {
			$("#tourQueryForm").form({
			    url:"Tour/OutToExcel",
			});
			//提交表单
			$("#tourQueryForm").submit();
		},
		remove : function () {
			var rows = $("#tour_manage").datagrid("getSelections");
			if (rows.length > 0) {
				$.messager.confirm("确定操作", "您正在要删除所选的记录吗？", function (flag) {
					if (flag) {
						var tourIds = [];
						for (var i = 0; i < rows.length; i ++) {
							tourIds.push(rows[i].tourId);
						}
						$.ajax({
							type : "POST",
							url : "Tour/deletes",
							data : {
								tourIds : tourIds.join(","),
							},
							beforeSend : function () {
								$("#tour_manage").datagrid("loading");
							},
							success : function (data) {
								if (data.success) {
									$("#tour_manage").datagrid("loaded");
									$("#tour_manage").datagrid("load");
									$("#tour_manage").datagrid("unselectAll");
									$.messager.show({
										title : "提示",
										msg : data.message
									});
								} else {
									$("#tour_manage").datagrid("loaded");
									$("#tour_manage").datagrid("load");
									$("#tour_manage").datagrid("unselectAll");
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
			var rows = $("#tour_manage").datagrid("getSelections");
			if (rows.length > 1) {
				$.messager.alert("警告操作！", "编辑记录只能选定一条数据！", "warning");
			} else if (rows.length == 1) {
				$.ajax({
					url : "Tour/" + rows[0].tourId +  "/update",
					type : "get",
					data : {
						//tourId : rows[0].tourId,
					},
					beforeSend : function () {
						$.messager.progress({
							text : "正在获取中...",
						});
					},
					success : function (tour, response, status) {
						$.messager.progress("close");
						if (tour) { 
							$("#tourEditDiv").dialog("open");
							$("#tour_tourId_edit").val(tour.tourId);
							$("#tour_tourId_edit").validatebox({
								required : true,
								missingMessage : "请输入旅游id",
								editable: false
							});
							$("#tour_tourName_edit").val(tour.tourName);
							$("#tour_tourName_edit").validatebox({
								required : true,
								missingMessage : "请输入旅游景点名称",
							});
							$("#tour_tourPhoto").val(tour.tourPhoto);
							$("#tour_tourPhotoImg").attr("src", tour.tourPhoto);
							$("#tour_startPlace_edit").val(tour.startPlace);
							$("#tour_startPlace_edit").validatebox({
								required : true,
								missingMessage : "请输入出发地",
							});
							$("#tour_endPlace_edit").val(tour.endPlace);
							$("#tour_endPlace_edit").validatebox({
								required : true,
								missingMessage : "请输入目的地",
							});
							$("#tour_tourPrice_edit").val(tour.tourPrice);
							$("#tour_tourPrice_edit").validatebox({
								required : true,
								validType : "number",
								missingMessage : "请输入旅游价格",
								invalidMessage : "旅游价格输入不对",
							});
							tour_tourDesc_editor.setContent(tour.tourDesc, false);
							$("#tour_tuijianFlag_edit").val(tour.tuijianFlag);
							$("#tour_tuijianFlag_edit").validatebox({
								required : true,
								missingMessage : "请输入是否推荐",
							});
							$("#tour_hitNum_edit").val(tour.hitNum);
							$("#tour_hitNum_edit").validatebox({
								required : true,
								validType : "integer",
								missingMessage : "请输入浏览次数",
								invalidMessage : "浏览次数输入不对",
							});
							$("#tour_addTime_edit").datetimebox({
								value: tour.addTime,
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
