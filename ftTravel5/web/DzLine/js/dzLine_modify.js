$(function () {
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	UE.delEditor('dzLine_lineDesc_edit');
	var dzLine_lineDesc_edit = UE.getEditor('dzLine_lineDesc_edit'); //线路描述编辑器
	dzLine_lineDesc_edit.addListener("ready", function () {
		 // editor准备好之后才可以使用 
		 ajaxModifyQuery();
	}); 
  function ajaxModifyQuery() {	
	$.ajax({
		url : "DzLine/" + $("#dzLine_lineId_edit").val() + "/update",
		type : "get",
		data : {
			//lineId : $("#dzLine_lineId_edit").val(),
		},
		beforeSend : function () {
			$.messager.progress({
				text : "正在获取中...",
			});
		},
		success : function (dzLine, response, status) {
			$.messager.progress("close");
			if (dzLine) { 
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
				dzLine_lineDesc_edit.setContent(dzLine.lineDesc);
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
				$(".messager-window").css("z-index",10000);
			}
		}
	});

  }

	$("#dzLineModifyButton").click(function(){ 
		if ($("#dzLineEditForm").form("validate")) {
			$("#dzLineEditForm").form({
			    url:"DzLine/" +  $("#dzLine_lineId_edit").val() + "/update",
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
			$("#dzLineEditForm").submit();
		} else {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
			$(".messager-window").css("z-index",10000);
		}
	});
});
