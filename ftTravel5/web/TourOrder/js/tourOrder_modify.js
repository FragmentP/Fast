$(function () {
	$.ajax({
		url : "TourOrder/" + $("#tourOrder_orderId_edit").val() + "/update",
		type : "get",
		data : {
			//orderId : $("#tourOrder_orderId_edit").val(),
		},
		beforeSend : function () {
			$.messager.progress({
				text : "正在获取中...",
			});
		},
		success : function (tourOrder, response, status) {
			$.messager.progress("close");
			if (tourOrder) { 
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
				$(".messager-window").css("z-index",10000);
			}
		}
	});

	$("#tourOrderModifyButton").click(function(){ 
		if ($("#tourOrderEditForm").form("validate")) {
			$("#tourOrderEditForm").form({
			    url:"TourOrder/" +  $("#tourOrder_orderId_edit").val() + "/update",
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
                	var obj = jQuery.parseJSON(data);
                    if(obj.success){
                        $.messager.alert("消息","信息修改成功！");
                        $(".messager-window").css("z-index",10000);
                        //location.href="frontlist";
                    }else{
                        $.messager.alert("消息",obj.message);
                        $(".messager-window").css("z-index",10000);
                    } 
			    }
			});
			//提交表单
			$("#tourOrderEditForm").submit();
		} else {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
			$(".messager-window").css("z-index",10000);
		}
	});
});
