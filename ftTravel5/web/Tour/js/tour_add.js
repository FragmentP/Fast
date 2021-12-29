$(function () {
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	UE.delEditor('tour_tourDesc');
	var tour_tourDesc_editor = UE.getEditor('tour_tourDesc'); //旅游景点介绍编辑框
	$("#tour_tourName").validatebox({
		required : true, 
		missingMessage : '请输入旅游景点名称',
	});

	$("#tour_startPlace").validatebox({
		required : true, 
		missingMessage : '请输入出发地',
	});

	$("#tour_endPlace").validatebox({
		required : true, 
		missingMessage : '请输入目的地',
	});

	$("#tour_tourPrice").validatebox({
		required : true,
		validType : "number",
		missingMessage : '请输入旅游价格',
		invalidMessage : '旅游价格输入不对',
	});

	$("#tour_tuijianFlag").validatebox({
		required : true, 
		missingMessage : '请输入是否推荐',
	});

	$("#tour_hitNum").validatebox({
		required : true,
		validType : "integer",
		missingMessage : '请输入浏览次数',
		invalidMessage : '浏览次数输入不对',
	});

	$("#tour_addTime").datetimebox({
	    required : true, 
	    showSeconds: true,
	    editable: false
	});

	//单击添加按钮
	$("#tourAddButton").click(function () {
		if(tour_tourDesc_editor.getContent() == "") {
			alert("请输入旅游景点介绍");
			return;
		}
		//验证表单 
		if(!$("#tourAddForm").form("validate")) {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
			$(".messager-window").css("z-index",10000);
		} else {
			$("#tourAddForm").form({
			    url:"Tour/add",
			    onSubmit: function(){
					if($("#tourAddForm").form("validate"))  { 
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
                        $("#tourAddForm").form("clear");
                        tour_tourDesc_editor.setContent("");
                    }else{
                        $.messager.alert("消息",obj.message);
                        $(".messager-window").css("z-index",10000);
                    }
			    }
			});
			//提交表单
			$("#tourAddForm").submit();
		}
	});

	//单击清空按钮
	$("#tourClearButton").click(function () { 
		$("#tourAddForm").form("clear"); 
	});
});
