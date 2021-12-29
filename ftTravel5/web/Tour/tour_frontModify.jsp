<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ page import="com.chengxusheji.po.Tour" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    Tour tour = (Tour)request.getAttribute("tour");

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1 , user-scalable=no">
  <TITLE>修改旅游景点信息</TITLE>
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
  		<li class="active">旅游景点信息修改</li>
	</ul>
		<div class="row"> 
      	<form class="form-horizontal" name="tourEditForm" id="tourEditForm" enctype="multipart/form-data" method="post"  class="mar_t15">
		  <div class="form-group">
			 <label for="tour_tourId_edit" class="col-md-3 text-right">旅游id:</label>
			 <div class="col-md-9"> 
			 	<input type="text" id="tour_tourId_edit" name="tour.tourId" class="form-control" placeholder="请输入旅游id" readOnly>
			 </div>
		  </div> 
		  <div class="form-group">
		  	 <label for="tour_tourName_edit" class="col-md-3 text-right">旅游景点名称:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_tourName_edit" name="tour.tourName" class="form-control" placeholder="请输入旅游景点名称">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_tourPhoto_edit" class="col-md-3 text-right">旅游图片:</label>
		  	 <div class="col-md-9">
			    <img  class="img-responsive" id="tour_tourPhotoImg" border="0px"/><br/>
			    <input type="hidden" id="tour_tourPhoto" name="tour.tourPhoto"/>
			    <input id="tourPhotoFile" name="tourPhotoFile" type="file" size="50" />
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_startPlace_edit" class="col-md-3 text-right">出发地:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_startPlace_edit" name="tour.startPlace" class="form-control" placeholder="请输入出发地">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_endPlace_edit" class="col-md-3 text-right">目的地:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_endPlace_edit" name="tour.endPlace" class="form-control" placeholder="请输入目的地">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_tourPrice_edit" class="col-md-3 text-right">旅游价格:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_tourPrice_edit" name="tour.tourPrice" class="form-control" placeholder="请输入旅游价格">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_tourDesc_edit" class="col-md-3 text-right">旅游景点介绍:</label>
		  	 <div class="col-md-9">
			    <script name="tour.tourDesc" id="tour_tourDesc_edit" type="text/plain"   style="width:100%;height:500px;"></script>
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_tuijianFlag_edit" class="col-md-3 text-right">是否推荐:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_tuijianFlag_edit" name="tour.tuijianFlag" class="form-control" placeholder="请输入是否推荐">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_hitNum_edit" class="col-md-3 text-right">浏览次数:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="tour_hitNum_edit" name="tour.hitNum" class="form-control" placeholder="请输入浏览次数">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="tour_addTime_edit" class="col-md-3 text-right">发布时间:</label>
		  	 <div class="col-md-9">
                <div class="input-group date tour_addTime_edit col-md-12" data-link-field="tour_addTime_edit">
                    <input class="form-control" id="tour_addTime_edit" name="tour.addTime" size="16" type="text" value="" placeholder="请选择发布时间" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
		  	 </div>
		  </div>
			  <div class="form-group">
			  	<span class="col-md-3""></span>
			  	<span onclick="ajaxTourModify();" class="btn btn-primary bottom5 top5">修改</span>
			  </div>
		</form> 
	    <style>#tourEditForm .form-group {margin-bottom:5px;}  </style>
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
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
<script>
var tour_tourDesc_editor = UE.getEditor('tour_tourDesc_edit'); //旅游景点介绍编辑框
var basePath = "<%=basePath%>";
/*弹出修改旅游景点界面并初始化数据*/
function tourEdit(tourId) {
  tour_tourDesc_editor.addListener("ready", function () {
    // editor准备好之后才可以使用 
    ajaxModifyQuery(tourId);
  });
}
 function ajaxModifyQuery(tourId) {
	$.ajax({
		url :  basePath + "Tour/" + tourId + "/update",
		type : "get",
		dataType: "json",
		success : function (tour, response, status) {
			if (tour) {
				$("#tour_tourId_edit").val(tour.tourId);
				$("#tour_tourName_edit").val(tour.tourName);
				$("#tour_tourPhoto").val(tour.tourPhoto);
				$("#tour_tourPhotoImg").attr("src", basePath +　tour.tourPhoto);
				$("#tour_startPlace_edit").val(tour.startPlace);
				$("#tour_endPlace_edit").val(tour.endPlace);
				$("#tour_tourPrice_edit").val(tour.tourPrice);
				tour_tourDesc_editor.setContent(tour.tourDesc, false);
				$("#tour_tuijianFlag_edit").val(tour.tuijianFlag);
				$("#tour_hitNum_edit").val(tour.hitNum);
				$("#tour_addTime_edit").val(tour.addTime);
			} else {
				alert("获取信息失败！");
			}
		}
	});
}

/*ajax方式提交旅游景点信息表单给服务器端修改*/
function ajaxTourModify() {
	$.ajax({
		url :  basePath + "Tour/" + $("#tour_tourId_edit").val() + "/update",
		type : "post",
		dataType: "json",
		data: new FormData($("#tourEditForm")[0]),
		success : function (obj, response, status) {
            if(obj.success){
                alert("信息修改成功！");
                location.reload(true);
                $("#tourQueryForm").submit();
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
    /*发布时间组件*/
    $('.tour_addTime_edit').datetimepicker({
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
    tourEdit("<%=request.getParameter("tourId")%>");
 })
 </script> 
</body>
</html>

