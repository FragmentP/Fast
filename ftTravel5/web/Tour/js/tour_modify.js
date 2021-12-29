$(function () {
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	UE.delEditor('tour_tourDesc_edit');
	var tour_tourDesc_edit = UE.getEditor('tour_tourDesc_edit'); //旅游景点介绍编辑器
	tour_tourDesc_edit.addListener("ready", function () {
		 // editor准备好之后才可以使用 
		 ajaxModifyQuery();
	}); 
  function ajaxModifyQuery() {	
	$.ajax({
		url : "Tour/" + $("#tour_tourId_edit").val() + "/update",
		type : "get",
		data : {
			//tourId : $("#tour_tourId_edit").val(),
		},
		beforeSend : function () {
			$.messager.progress({
				text : "正在获取中...",
			});
		},
		success : function (tour, response, status) {
			$.messager.progress("close");
			if (tour) { 
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
				tour_tourDesc_edit.setContent(tour.tourDesc);
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
				$(".messager-window").css("z-index",10000);
			}
		}
	});

  }

	$("#tourModifyButton").click(function(){ 
		if ($("#tourEditForm").form("validate")) {
			$("#tourEditForm").form({
			    url:"Tour/" +  $("#tour_tourId_edit").val() + "/update",
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
			$("#tourEditForm").submit();
		} else {
			$.messager.alert("错误提示","你输入的信息还有错误！","warning");
			$(".messager-window").css("z-index",10000);
		}
	});
});
