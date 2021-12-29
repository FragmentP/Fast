$(function () {
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	UE.delEditor('dzLine_lineDesc');
	var dzLine_lineDesc_editor = UE.getEditor('dzLine_lineDesc'); //线路描述编辑框
	$("#dzLine_lineName").validatebox({
		required : true, 
		missingMessage : '请输入线路名称',
	});

	$("#dzLine_startPlace").validatebox({
		required : true, 
		missingMessage : '请输入出发地',
	});

	$("#dzLine_zhuti").validatebox({
		required : true, 
		missingMessage : '请输入产品主题',
	});

	$("#dzLine_linePrice").validatebox({
		required : true,
		validType : "number",
		missingMessage : '请输入线路价格',
		invalidMessage : '线路价格输入不对',
	});

	$("#dzLine_tuijianFlag").validatebox({
		required : true, 
		missingMessage : '请输入是否推荐',
	});

	$("#dzLine_hitNum").validatebox({
		required : true,
		validType : "integer",
		missingMessage : '请输入点击率',
		invalidMessage : '点击率输入不对',
	});

	$("#dzLine_addTime").datetimebox({
	    required : true, 
	    showSeconds: true,
	    editable: false
	});

	//单击添加按钮
	$("#dzLineAddButton").click(function () {
		if(dzLine_lineDesc_editor.getContent() == "") {
			alert("请输入线路描述");
			return;
		}
		//验证表单 
		if(!$("#dzLineAddForm").form("validate")) {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
			$(".messager-window").css("z-index",10000);
		} else {
			$("#dzLineAddForm").form({
			    url:"DzLine/add",
			    onSubmit: function(){
					if($("#dzLineAddForm").form("validate"))  { 
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
                    //此处data={"Success":true}是字符串
                	var obj = jQuery.parseJSON(data); 
                    if(obj.success){ 
                        $.messager.alert("消息","保存成功！");
                        $(".messager-window").css("z-index",10000);
                        $("#dzLineAddForm").form("clear");
                        dzLine_lineDesc_editor.setContent("");
                    }else{
                        $.messager.alert("消息",obj.message);
                        $(".messager-window").css("z-index",10000);
                    }
			    }
			});
			//提交表单
			$("#dzLineAddForm").submit();
		}
	});

	//单击清空按钮
	$("#dzLineClearButton").click(function () { 
		$("#dzLineAddForm").form("clear"); 
	});
});
