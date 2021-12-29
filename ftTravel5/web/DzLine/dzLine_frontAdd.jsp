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
<title>定制线路添加</title>
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
  			<li><a href="<%=basePath %>DzLine/frontlist">定制线路管理</a></li>
  			<li class="active">添加定制线路</li>
		</ul>
		<div class="row">
			<div class="col-md-10">
		      	<form class="form-horizontal" name="dzLineAddForm" id="dzLineAddForm" enctype="multipart/form-data" method="post"  class="mar_t15">
				  <div class="form-group">
				  	 <label for="dzLine_lineName" class="col-md-2 text-right">线路名称:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_lineName" name="dzLine.lineName" class="form-control" placeholder="请输入线路名称">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_linePhoto" class="col-md-2 text-right">线路图片:</label>
				  	 <div class="col-md-8">
					    <img  class="img-responsive" id="dzLine_linePhotoImg" border="0px"/><br/>
					    <input type="hidden" id="dzLine_linePhoto" name="dzLine.linePhoto"/>
					    <input id="linePhotoFile" name="linePhotoFile" type="file" size="50" />
				  	 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_startPlace" class="col-md-2 text-right">出发地:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_startPlace" name="dzLine.startPlace" class="form-control" placeholder="请输入出发地">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_zhuti" class="col-md-2 text-right">产品主题:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_zhuti" name="dzLine.zhuti" class="form-control" placeholder="请输入产品主题">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_linePrice" class="col-md-2 text-right">线路价格:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_linePrice" name="dzLine.linePrice" class="form-control" placeholder="请输入线路价格">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_lineDesc" class="col-md-2 text-right">线路描述:</label>
				  	 <div class="col-md-8">
							    <textarea name="dzLine.lineDesc" id="dzLine_lineDesc" style="width:100%;height:500px;"></textarea>
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_tuijianFlag" class="col-md-2 text-right">是否推荐:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_tuijianFlag" name="dzLine.tuijianFlag" class="form-control" placeholder="请输入是否推荐">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_hitNum" class="col-md-2 text-right">点击率:</label>
				  	 <div class="col-md-8">
					    <input type="text" id="dzLine_hitNum" name="dzLine.hitNum" class="form-control" placeholder="请输入点击率">
					 </div>
				  </div>
				  <div class="form-group">
				  	 <label for="dzLine_addTimeDiv" class="col-md-2 text-right">发布时间:</label>
				  	 <div class="col-md-8">
		                <div id="dzLine_addTimeDiv" class="input-group date dzLine_addTime col-md-12" data-link-field="dzLine_addTime">
		                    <input class="form-control" id="dzLine_addTime" name="dzLine.addTime" size="16" type="text" value="" placeholder="请选择发布时间" readonly>
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		                </div>
				  	 </div>
				  </div>
		          <div class="form-group">
		             <span class="col-md-2"></span>
		             <span onclick="ajaxDzLineAdd();" class="btn btn-primary bottom5 top5">添加</span>
		          </div> 
		          <style>#dzLineAddForm .form-group {margin:5px;}  </style>  
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
var dzLine_lineDesc_editor = UE.getEditor('dzLine_lineDesc'); //线路描述编辑器
var basePath = "<%=basePath%>";
	//提交添加定制线路信息
	function ajaxDzLineAdd() { 
		//提交之前先验证表单
		$("#dzLineAddForm").data('bootstrapValidator').validate();
		if(!$("#dzLineAddForm").data('bootstrapValidator').isValid()){
			return;
		}
		if(dzLine_lineDesc_editor.getContent() == "") {
			alert('线路描述不能为空');
			return;
		}
		jQuery.ajax({
			type : "post",
			url : basePath + "DzLine/add",
			dataType : "json" , 
			data: new FormData($("#dzLineAddForm")[0]),
			success : function(obj) {
				if(obj.success){ 
					alert("保存成功！");
					$("#dzLineAddForm").find("input").val("");
					$("#dzLineAddForm").find("textarea").val("");
					dzLine_lineDesc_editor.setContent("");
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
	//验证定制线路添加表单字段
	$('#dzLineAddForm').bootstrapValidator({
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			"dzLine.lineName": {
				validators: {
					notEmpty: {
						message: "线路名称不能为空",
					}
				}
			},
			"dzLine.startPlace": {
				validators: {
					notEmpty: {
						message: "出发地不能为空",
					}
				}
			},
			"dzLine.zhuti": {
				validators: {
					notEmpty: {
						message: "产品主题不能为空",
					}
				}
			},
			"dzLine.linePrice": {
				validators: {
					notEmpty: {
						message: "线路价格不能为空",
					},
					numeric: {
						message: "线路价格不正确"
					}
				}
			},
			"dzLine.tuijianFlag": {
				validators: {
					notEmpty: {
						message: "是否推荐不能为空",
					}
				}
			},
			"dzLine.hitNum": {
				validators: {
					notEmpty: {
						message: "点击率不能为空",
					},
					integer: {
						message: "点击率不正确"
					}
				}
			},
			"dzLine.addTime": {
				validators: {
					notEmpty: {
						message: "发布时间不能为空",
					}
				}
			},
		}
	}); 
	//发布时间组件
	$('#dzLine_addTimeDiv').datetimepicker({
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
		$('#dzLineAddForm').data('bootstrapValidator').updateStatus('dzLine.addTime', 'NOT_VALIDATED',null).validateField('dzLine.addTime');
	});
})
</script>
</body>
</html>
