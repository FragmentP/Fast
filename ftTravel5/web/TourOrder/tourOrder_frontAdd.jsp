<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<%@ page import="com.chengxusheji.po.Tour" %>
<%@ page import="com.chengxusheji.po.UserInfo" %>
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
<title>订单添加</title>
<link href="<%=basePath %>plugins/bootstrap.css" rel="stylesheet">
<link href="<%=basePath %>plugins/bootstrap-dashen.css" rel="stylesheet">
<link href="<%=basePath %>plugins/font-awesome.css" rel="stylesheet">
<link href="<%=basePath %>plugins/animate.css" rel="stylesheet">
<link href="<%=basePath %>plugins/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>
<body style="margin-top:70px;">
<jsp:include page="../header.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-md-12 wow fadeInUp" data-wow-duration="0.5s">
			<div>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
			    	<li role="presentation" ><a href="<%=basePath %>TourOrder/frontlist">订单列表</a></li>
			    	<li role="presentation" class="active"><a href="#tourOrderAdd" aria-controls="tourOrderAdd" role="tab" data-toggle="tab">添加订单</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
				    <div role="tabpanel" class="tab-pane" id="tourOrderList">
				    </div>
				    <div role="tabpanel" class="tab-pane active" id="tourOrderAdd">
				      	<form class="form-horizontal" name="tourOrderAddForm" id="tourOrderAddForm" enctype="multipart/form-data" method="post"  class="mar_t15">
						  <div class="form-group">
						  	 <label for="tourOrder_tourObj_tourId" class="col-md-2 text-right">旅游景点:</label>
						  	 <div class="col-md-8">
							    <select id="tourOrder_tourObj_tourId" name="tourOrder.tourObj.tourId" class="form-control">
							    </select>
						  	 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_startDateDiv" class="col-md-2 text-right">出发日期:</label>
						  	 <div class="col-md-8">
				                <div id="tourOrder_startDateDiv" class="input-group date tourOrder_startDate col-md-12" data-link-field="tourOrder_startDate" data-link-format="yyyy-mm-dd">
				                    <input class="form-control" id="tourOrder_startDate" name="tourOrder.startDate" size="16" type="text" value="" placeholder="请选择出发日期" readonly>
				                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
				                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
				                </div>
						  	 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_totalPersonNum" class="col-md-2 text-right">出行人数:</label>
						  	 <div class="col-md-8">
							    <input type="text" id="tourOrder_totalPersonNum" name="tourOrder.totalPersonNum" class="form-control" placeholder="请输入出行人数">
							 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_totalPrice" class="col-md-2 text-right">总价格:</label>
						  	 <div class="col-md-8">
							    <input type="text" id="tourOrder_totalPrice" name="tourOrder.totalPrice" class="form-control" placeholder="请输入总价格">
							 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_telephone" class="col-md-2 text-right">联系电话:</label>
						  	 <div class="col-md-8">
							    <input type="text" id="tourOrder_telephone" name="tourOrder.telephone" class="form-control" placeholder="请输入联系电话">
							 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_orderMemo" class="col-md-2 text-right">订单备注:</label>
						  	 <div class="col-md-8">
							    <textarea id="tourOrder_orderMemo" name="tourOrder.orderMemo" rows="8" class="form-control" placeholder="请输入订单备注"></textarea>
							 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_userObj_user_name" class="col-md-2 text-right">订单用户:</label>
						  	 <div class="col-md-8">
							    <select id="tourOrder_userObj_user_name" name="tourOrder.userObj.user_name" class="form-control">
							    </select>
						  	 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_orderTimeDiv" class="col-md-2 text-right">下单时间:</label>
						  	 <div class="col-md-8">
				                <div id="tourOrder_orderTimeDiv" class="input-group date tourOrder_orderTime col-md-12" data-link-field="tourOrder_orderTime">
				                    <input class="form-control" id="tourOrder_orderTime" name="tourOrder.orderTime" size="16" type="text" value="" placeholder="请选择下单时间" readonly>
				                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
				                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
				                </div>
						  	 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_shzt" class="col-md-2 text-right">审核状态:</label>
						  	 <div class="col-md-8">
							    <input type="text" id="tourOrder_shzt" name="tourOrder.shzt" class="form-control" placeholder="请输入审核状态">
							 </div>
						  </div>
						  <div class="form-group">
						  	 <label for="tourOrder_shhf" class="col-md-2 text-right">审核回复:</label>
						  	 <div class="col-md-8">
							    <textarea id="tourOrder_shhf" name="tourOrder.shhf" rows="8" class="form-control" placeholder="请输入审核回复"></textarea>
							 </div>
						  </div>
				          <div class="form-group">
				             <span class="col-md-2""></span>
				             <span onclick="ajaxTourOrderAdd();" class="btn btn-primary bottom5 top5">添加</span>
				          </div>
						</form>
				        <style>#tourOrderAddForm .form-group {margin:10px;}  </style>
					</div>
				</div>
			</div>
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
<script>
var basePath = "<%=basePath%>";
	//提交添加订单信息
	function ajaxTourOrderAdd() {
		//提交之前先验证表单
		$("#tourOrderAddForm").data('bootstrapValidator').validate();
		if(!$("#tourOrderAddForm").data('bootstrapValidator').isValid()){
			return;
		}
		jQuery.ajax({
			type : "post",
			url : basePath + "TourOrder/add",
			dataType : "json" ,
			data: new FormData($("#tourOrderAddForm")[0]),
			success : function(obj) {
				if(obj.success){
					alert("保存成功！");
					$("#tourOrderAddForm").find("input").val("");
					$("#tourOrderAddForm").find("textarea").val("");
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
	//验证订单添加表单字段
	$('#tourOrderAddForm').bootstrapValidator({
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			"tourOrder.startDate": {
				validators: {
					notEmpty: {
						message: "出发日期不能为空",
					}
				}
			},
			"tourOrder.totalPersonNum": {
				validators: {
					notEmpty: {
						message: "出行人数不能为空",
					},
					integer: {
						message: "出行人数不正确"
					}
				}
			},
			"tourOrder.totalPrice": {
				validators: {
					notEmpty: {
						message: "总价格不能为空",
					},
					numeric: {
						message: "总价格不正确"
					}
				}
			},
			"tourOrder.telephone": {
				validators: {
					notEmpty: {
						message: "联系电话不能为空",
					}
				}
			},
			"tourOrder.orderTime": {
				validators: {
					notEmpty: {
						message: "下单时间不能为空",
					}
				}
			},
			"tourOrder.shzt": {
				validators: {
					notEmpty: {
						message: "审核状态不能为空",
					}
				}
			},
			"tourOrder.shhf": {
				validators: {
					notEmpty: {
						message: "审核回复不能为空",
					}
				}
			},
		}
	});
	//初始化旅游景点下拉框值
	$.ajax({
		url: basePath + "Tour/listAll",
		type: "get",
		success: function(tours,response,status) {
			$("#tourOrder_tourObj_tourId").empty();
			var html="";
    		$(tours).each(function(i,tour){
    			html += "<option value='" + tour.tourId + "'>" + tour.tourName + "</option>";
    		});
    		$("#tourOrder_tourObj_tourId").html(html);
    	}
	});
	//初始化订单用户下拉框值
	$.ajax({
		url: basePath + "UserInfo/listAll",
		type: "get",
		success: function(userInfos,response,status) {
			$("#tourOrder_userObj_user_name").empty();
			var html="";
    		$(userInfos).each(function(i,userInfo){
    			html += "<option value='" + userInfo.user_name + "'>" + userInfo.name + "</option>";
    		});
    		$("#tourOrder_userObj_user_name").html(html);
    	}
	});
	//出发日期组件
	$('#tourOrder_startDateDiv').datetimepicker({
		language:  'zh-CN',  //显示语言
		format: 'yyyy-mm-dd',
		minView: 2,
		weekStart: 1,
		todayBtn:  1,
		autoclose: 1,
		minuteStep: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0
	}).on('hide',function(e) {
		//下面这行代码解决日期组件改变日期后不验证的问题
		$('#tourOrderAddForm').data('bootstrapValidator').updateStatus('tourOrder.startDate', 'NOT_VALIDATED',null).validateField('tourOrder.startDate');
	});
	//下单时间组件
	$('#tourOrder_orderTimeDiv').datetimepicker({
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
		$('#tourOrderAddForm').data('bootstrapValidator').updateStatus('tourOrder.orderTime', 'NOT_VALIDATED',null).validateField('tourOrder.orderTime');
	});
})
</script>
</body>
</html>
