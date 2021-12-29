<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ page import="com.chengxusheji.po.TourOrder" %>
<%@ page import="com.chengxusheji.po.Tour" %>
<%@ page import="com.chengxusheji.po.UserInfo" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //获取所有的tourObj信息
    List<Tour> tourList = (List<Tour>)request.getAttribute("tourList");
    //获取所有的userObj信息
    List<UserInfo> userInfoList = (List<UserInfo>)request.getAttribute("userInfoList");
    TourOrder tourOrder = (TourOrder)request.getAttribute("tourOrder");

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1 , user-scalable=no">
  <TITLE>修改订单信息</TITLE>
  <link href="<%=basePath %>plugins/bootstrap.css" rel="stylesheet">
  <link href="<%=basePath %>plugins/bootstrap-dashen.css" rel="stylesheet">
  <link href="<%=basePath %>plugins/font-awesome.css" rel="stylesheet">
  <link href="<%=basePath %>plugins/animate.css" rel="stylesheet"> 
</head>
<body style="margin-top:70px;"> 
<div class="container">
<jsp:include page="../header.jsp"></jsp:include>
	<div class="col-md-9 wow fadeInLeft">
	<ul class="breadcrumb">
  		<li><a href="<%=basePath %>index.jsp">首页</a></li>
  		<li class="active">订单信息修改</li>
	</ul>
		<div class="row"> 
      	<form class="form-horizontal" name="tourOrderEditForm" id="tourOrderEditForm" enctype="multipart/form-data" method="post"  class="mar_t15">
		  <div class="form-group">
			 <label for="tourOrder_orderId_edit" class="col-md-3 text-right">订单id:</label>
			 <div class="col-md-9"> 
			 	<input type="text" id="tourOrder_orderId_edit" name="tourOrder.orderId" class="form-control" placeholder="请输入订单id" readOnly>
			 </div>
		  </div> 
		  <div class="form-group">
		  	 <label for="tourOrder_tourObj_tourId_edit" class="col-md-3 text-right">旅游景点:</label>
		  	 <div class="col-md-9">
			    <select id="tourOrder_tourObj_tourId_edit" name="tourOrder.tourObj.tourId" class="form-control">
			    </select>
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_startDate_edit" class="col-md-3 text-right">出发日期:</label>
		  	 <div class="col-md-9">
                <div class="input-group date tourOrder_startDate_edit col-md-12" data-link-field="tourOrder_startDate_edit" data-link-format="yyyy-mm-dd">
                    <input class="form-control" id="tourOrder_startDate_edit" name="tourOrder.startDate" size="16" type="text" value="" placeholder="请选择出发日期" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_totalPersonNum_edit" class="col-md-3 text-right">出行人数:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tourOrder_totalPersonNum_edit" name="tourOrder.totalPersonNum" class="form-control" placeholder="请输入出行人数">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_totalPrice_edit" class="col-md-3 text-right">总价格:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tourOrder_totalPrice_edit" name="tourOrder.totalPrice" class="form-control" placeholder="请输入总价格">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_telephone_edit" class="col-md-3 text-right">联系电话:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tourOrder_telephone_edit" name="tourOrder.telephone" class="form-control" placeholder="请输入联系电话">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_orderMemo_edit" class="col-md-3 text-right">订单备注:</label>
		  	 <div class="col-md-9">
			    <textarea id="tourOrder_orderMemo_edit" name="tourOrder.orderMemo" rows="8" class="form-control" placeholder="请输入订单备注"></textarea>
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_userObj_user_name_edit" class="col-md-3 text-right">订单用户:</label>
		  	 <div class="col-md-9">
			    <select id="tourOrder_userObj_user_name_edit" name="tourOrder.userObj.user_name" class="form-control">
			    </select>
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_orderTime_edit" class="col-md-3 text-right">下单时间:</label>
		  	 <div class="col-md-9">
                <div class="input-group date tourOrder_orderTime_edit col-md-12" data-link-field="tourOrder_orderTime_edit">
                    <input class="form-control" id="tourOrder_orderTime_edit" name="tourOrder.orderTime" size="16" type="text" value="" placeholder="请选择下单时间" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_shzt_edit" class="col-md-3 text-right">审核状态:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tourOrder_shzt_edit" name="tourOrder.shzt" class="form-control" placeholder="请输入审核状态">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tourOrder_shhf_edit" class="col-md-3 text-right">审核回复:</label>
		  	 <div class="col-md-9">
			    <textarea id="tourOrder_shhf_edit" name="tourOrder.shhf" rows="8" class="form-control" placeholder="请输入审核回复"></textarea>
			 </div>
		  </div>
			  <div class="form-group">
			  	<span class="col-md-3""></span>
			  	<span onclick="ajaxTourOrderModify();" class="btn btn-primary bottom5 top5">修改</span>
			  </div>
		</form> 
	    <style>#tourOrderEditForm .form-group {margin-bottom:5px;}  </style>
      </div>
   </div>
</div>


<jsp:include page="../footer.jsp"></jsp:include>
<script src="<%=basePath %>plugins/jquery.min.js"></script>
<script src="<%=basePath %>plugins/bootstrap.js"></script>
<script src="<%=basePath %>plugins/wow.min.js"></script>
<script src="<%=basePath %>plugins/bootstrap-datetimepicker.min.js"></script>
<script src="<%=basePath %>plugins/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jsdate.js"></script>
<script>
var basePath = "<%=basePath%>";
/*弹出修改订单界面并初始化数据*/
function tourOrderEdit(orderId) {
	$.ajax({
		url :  basePath + "TourOrder/" + orderId + "/update",
		type : "get",
		dataType: "json",
		success : function (tourOrder, response, status) {
			if (tourOrder) {
				$("#tourOrder_orderId_edit").val(tourOrder.orderId);
				$.ajax({
					url: basePath + "Tour/listAll",
					type: "get",
					success: function(tours,response,status) { 
						$("#tourOrder_tourObj_tourId_edit").empty();
						var html="";
		        		$(tours).each(function(i,tour){
		        			html += "<option value='" + tour.tourId + "'>" + tour.tourName + "</option>";
		        		});
		        		$("#tourOrder_tourObj_tourId_edit").html(html);
		        		$("#tourOrder_tourObj_tourId_edit").val(tourOrder.tourObjPri);
					}
				});
				$("#tourOrder_startDate_edit").val(tourOrder.startDate);
				$("#tourOrder_totalPersonNum_edit").val(tourOrder.totalPersonNum);
				$("#tourOrder_totalPrice_edit").val(tourOrder.totalPrice);
				$("#tourOrder_telephone_edit").val(tourOrder.telephone);
				$("#tourOrder_orderMemo_edit").val(tourOrder.orderMemo);
				$.ajax({
					url: basePath + "UserInfo/listAll",
					type: "get",
					success: function(userInfos,response,status) { 
						$("#tourOrder_userObj_user_name_edit").empty();
						var html="";
		        		$(userInfos).each(function(i,userInfo){
		        			html += "<option value='" + userInfo.user_name + "'>" + userInfo.name + "</option>";
		        		});
		        		$("#tourOrder_userObj_user_name_edit").html(html);
		        		$("#tourOrder_userObj_user_name_edit").val(tourOrder.userObjPri);
					}
				});
				$("#tourOrder_orderTime_edit").val(tourOrder.orderTime);
				$("#tourOrder_shzt_edit").val(tourOrder.shzt);
				$("#tourOrder_shhf_edit").val(tourOrder.shhf);
			} else {
				alert("获取信息失败！");
			}
		}
	});
}

/*ajax方式提交订单信息表单给服务器端修改*/
function ajaxTourOrderModify() {
	$.ajax({
		url :  basePath + "TourOrder/" + $("#tourOrder_orderId_edit").val() + "/update",
		type : "post",
		dataType: "json",
		data: new FormData($("#tourOrderEditForm")[0]),
		success : function (obj, response, status) {
            if(obj.success){
                alert("信息修改成功！");
                location.reload(true);
                $("#tourOrderQueryForm").submit();
            }else{
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
    /*出发日期组件*/
    $('.tourOrder_startDate_edit').datetimepicker({
    	language:  'zh-CN',  //语言
    	format: 'yyyy-mm-dd',
    	minView: 2,
    	weekStart: 1,
    	todayBtn:  1,
    	autoclose: 1,
    	minuteStep: 1,
    	todayHighlight: 1,
    	startView: 2,
    	forceParse: 0
    });
    /*下单时间组件*/
    $('.tourOrder_orderTime_edit').datetimepicker({
    	language:  'zh-CN',  //语言
    	format: 'yyyy-mm-dd hh:ii:ss',
    	weekStart: 1,
    	todayBtn:  1,
    	autoclose: 1,
    	minuteStep: 1,
    	todayHighlight: 1,
    	startView: 2,
    	forceParse: 0
    });
    tourOrderEdit("<%=request.getParameter("orderId")%>");
 })
 </script> 
</body>
</html>

