<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1 , user-scalable=no">
<title>旅游景点添加</title>
<link href="<%=basePath %>plugins/bootstrap.css" rel="stylesheet">
<link href="<%=basePath %>plugins/bootstrap-dashen.css" rel="stylesheet">
<link href="<%=basePath %>plugins/font-awesome.css" rel="stylesheet">
<link href="<%=basePath %>plugins/animate.css" rel="stylesheet">
<link href="<%=basePath %>plugins/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>
<body style="margin-top:70px;">
<div class="container">
<jsp:include page="../header.jsp"></jsp:include>
	<div class="col-md-12 wow fadeInLeft">
		<ul class="breadcrumb">
  			<li><a href="<%=basePath %>index.jsp">首页</a></li>
  			<li><a href="<%=basePath %>Tour/frontlist">旅游景点管理</a></li>
  			<li class="active">添加旅游景点</li>
		</ul>
		<div class="row">
			<div class="col-md-10">
		      	<form class="form-horizontal" name="tourAddForm" id="tourAddForm" enctype="multipart/form-data" method="post"  class="mar_t15">
				  <div class="form-group">
				  	 <label for="tour_tourName" class="col-md-2 text-right">旅游景点名称:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_tourName" name="tour.tourName" class="form-control" placeholder="请输入旅游景点名称">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_tourPhoto" class="col-md-2 text-right">旅游图片:</label>
				  	 <div class="col-md-8">
					    <img  class="img-responsive" id="tour_tourPhotoImg" border="0px"/><br/>
					    <input type="hidden" id="tour_tourPhoto" name="tour.tourPhoto"/>
					    <input id="tourPhotoFile" name="tourPhotoFile" type="file" size="50" />
				  	 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_startPlace" class="col-md-2 text-right">出发地:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_startPlace" name="tour.startPlace" class="form-control" placeholder="请输入出发地">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_endPlace" class="col-md-2 text-right">目的地:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_endPlace" name="tour.endPlace" class="form-control" placeholder="请输入目的地">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_tourPrice" class="col-md-2 text-right">旅游价格:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_tourPrice" name="tour.tourPrice" class="form-control" placeholder="请输入旅游价格">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_tourDesc" class="col-md-2 text-right">旅游景点介绍:</label>
				  	 <div class="col-md-8">
							    <textarea name="tour.tourDesc" id="tour_tourDesc" style="width:100%;height:500px;"></textarea>
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_tuijianFlag" class="col-md-2 text-right">是否推荐:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_tuijianFlag" name="tour.tuijianFlag" class="form-control" placeholder="请输入是否推荐">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_hitNum" class="col-md-2 text-right">浏览次数:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="tour_hitNum" name="tour.hitNum" class="form-control" placeholder="请输入浏览次数">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="tour_addTimeDiv" class="col-md-2 text-right">发布时间:</label>
				  	 <div class="col-md-8">
		                <div id="tour_addTimeDiv" class="input-group date tour_addTime col-md-12" data-link-field="tour_addTime">
		                    <input class="form-control" id="tour_addTime" name="tour.addTime" size="16" type="text" value="" placeholder="请选择发布时间" readonly>
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		                </div>
				  	 </div>
				  </div>
		          <div class="form-group">
		             <span class="col-md-2""></span>
		             <span onclick="ajaxTourAdd();" class="btn btn-primary bottom5 top5">添加</span>
		          </div> 
		          <style>#tourAddForm .form-group {margin:5px;}  </style>  
				</form> 
			</div>
			<div class="col-md-2"></div> 
	    </div>
	</div>
</div>
<jsp:include page="../footer.jsp"></jsp:include> 
<script src="<%=basePath %>plugins/jquery.min.js"></script>
<script src="<%=basePath %>plugins/bootstrap.js"></script>
<script src="<%=basePath %>plugins/wow.min.js"></script>
<script src="<%=basePath %>plugins/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="<%=basePath %>plugins/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath %>plugins/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
<script>
//实例化编辑器
var tour_tourDesc_editor = UE.getEditor('tour_tourDesc'); //旅游景点介绍编辑器
var basePath = "<%=basePath%>";
	//提交添加旅游景点信息
	function ajaxTourAdd() { 
		//提交之前先验证表单
		$("#tourAddForm").data('bootstrapValidator').validate();
		if(!$("#tourAddForm").data('bootstrapValidator').isValid()){
			return;
		}
		if(tour_tourDesc_editor.getContent() == "") {
			alert('旅游景点介绍不能为空');
			return;
		}
		jQuery.ajax({
			type : "post",
			url : basePath + "Tour/add",
			dataType : "json" , 
			data: new FormData($("#tourAddForm")[0]),
			success : function(obj) {
				if(obj.success){ 
					alert("保存成功！");
					$("#tourAddForm").find("input").val("");
					$("#tourAddForm").find("textarea").val("");
					tour_tourDesc_editor.setContent("");
				} else {
					alert(obj.message);
				}
			},
			processData: false, 
			contentType: false, 
		});
	} 
$(function(){
	/*小屏幕导航点击关闭菜单*/
    $('.navbar-collapse a').click(function(){
        $('.navbar-collapse').collapse('hide');
    });
    new WOW().init();
	//验证旅游景点添加表单字段
	$('#tourAddForm').bootstrapValidator({
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			"tour.tourName": {
				validators: {
					notEmpty: {
						message: "旅游景点名称不能为空",
					}
				}
			},
			"tour.startPlace": {
				validators: {
					notEmpty: {
						message: "出发地不能为空",
					}
				}
			},
			"tour.endPlace": {
				validators: {
					notEmpty: {
						message: "目的地不能为空",
					}
				}
			},
			"tour.tourPrice": {
				validators: {
					notEmpty: {
						message: "旅游价格不能为空",
					},
					numeric: {
						message: "旅游价格不正确"
					}
				}
			},
			"tour.tuijianFlag": {
				validators: {
					notEmpty: {
						message: "是否推荐不能为空",
					}
				}
			},
			"tour.hitNum": {
				validators: {
					notEmpty: {
						message: "浏览次数不能为空",
					},
					integer: {
						message: "浏览次数不正确"
					}
				}
			},
			"tour.addTime": {
				validators: {
					notEmpty: {
						message: "发布时间不能为空",
					}
				}
			},
		}
	}); 
	//发布时间组件
	$('#tour_addTimeDiv').datetimepicker({
		language:  'zh-CN',  //显示语言
		format: 'yyyy-mm-dd hh:ii:ss',
		weekStart: 1,
		todayBtn:  1,
		autoclose: 1,
		minuteStep: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0
	}).on('hide',function(e) {
		//下面这行代码解决日期组件改变日期后不验证的问题
		$('#tourAddForm').data('bootstrapValidator').updateStatus('tour.addTime', 'NOT_VALIDATED',null).validateField('tour.addTime');
	});
})
</script>
</body>
</html>
