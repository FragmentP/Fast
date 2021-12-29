<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ page import="com.chengxusheji.po.DzLine" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    DzLine dzLine = (DzLine)request.getAttribute("dzLine");

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1 , user-scalable=no">
  <TITLE>修改定制线路信息</TITLE>
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
  		<li class="active">定制线路信息修改</li>
	</ul>
		<div class="row"> 
      	<form class="form-horizontal" name="dzLineEditForm" id="dzLineEditForm" enctype="multipart/form-data" method="post"  class="mar_t15">
		  <div class="form-group">
			 <label for="dzLine_lineId_edit" class="col-md-3 text-right">线路id:</label>
			 <div class="col-md-9"> 
			 	<input type="text" id="dzLine_lineId_edit" name="dzLine.lineId" class="form-control" placeholder="请输入线路id" readOnly>
			 </div>
		  </div> 
		  <div class="form-group">
		  	 <label for="dzLine_lineName_edit" class="col-md-3 text-right">线路名称:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_lineName_edit" name="dzLine.lineName" class="form-control" placeholder="请输入线路名称">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_linePhoto_edit" class="col-md-3 text-right">线路图片:</label>
		  	 <div class="col-md-9">
			    <img  class="img-responsive" id="dzLine_linePhotoImg" border="0px"/><br/>
			    <input type="hidden" id="dzLine_linePhoto" name="dzLine.linePhoto"/>
			    <input id="linePhotoFile" name="linePhotoFile" type="file" size="50" />
		  	 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_startPlace_edit" class="col-md-3 text-right">出发地:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_startPlace_edit" name="dzLine.startPlace" class="form-control" placeholder="请输入出发地">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_zhuti_edit" class="col-md-3 text-right">产品主题:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_zhuti_edit" name="dzLine.zhuti" class="form-control" placeholder="请输入产品主题">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_linePrice_edit" class="col-md-3 text-right">线路价格:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_linePrice_edit" name="dzLine.linePrice" class="form-control" placeholder="请输入线路价格">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_lineDesc_edit" class="col-md-3 text-right">线路描述:</label>
		  	 <div class="col-md-9">
			    <script name="dzLine.lineDesc" id="dzLine_lineDesc_edit" type="text/plain"   style="width:100%;height:500px;"></script>
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_tuijianFlag_edit" class="col-md-3 text-right">是否推荐:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_tuijianFlag_edit" name="dzLine.tuijianFlag" class="form-control" placeholder="请输入是否推荐">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_hitNum_edit" class="col-md-3 text-right">点击率:</label>
		  	 <div class="col-md-9">
			    <input type="text" id="dzLine_hitNum_edit" name="dzLine.hitNum" class="form-control" placeholder="请输入点击率">
			 </div>
		  </div>
		  <div class="form-group">
		  	 <label for="dzLine_addTime_edit" class="col-md-3 text-right">发布时间:</label>
		  	 <div class="col-md-9">
                <div class="input-group date dzLine_addTime_edit col-md-12" data-link-field="dzLine_addTime_edit">
                    <input class="form-control" id="dzLine_addTime_edit" name="dzLine.addTime" size="16" type="text" value="" placeholder="请选择发布时间" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
		  	 </div>
		  </div>
			  <div class="form-group">
			  	<span class="col-md-3""></span>
			  	<span onclick="ajaxDzLineModify();" class="btn btn-primary bottom5 top5">修改</span>
			  </div>
		</form> 
	    <style>#dzLineEditForm .form-group {margin-bottom:5px;}  </style>
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
var dzLine_lineDesc_editor = UE.getEditor('dzLine_lineDesc_edit'); //线路描述编辑框
var basePath = "<%=basePath%>";
/*弹出修改定制线路界面并初始化数据*/
function dzLineEdit(lineId) {
  dzLine_lineDesc_editor.addListener("ready", function () {
    // editor准备好之后才可以使用 
    ajaxModifyQuery(lineId);
  });
}
 function ajaxModifyQuery(lineId) {
	$.ajax({
		url :  basePath + "DzLine/" + lineId + "/update",
		type : "get",
		dataType: "json",
		success : function (dzLine, response, status) {
			if (dzLine) {
				$("#dzLine_lineId_edit").val(dzLine.lineId);
				$("#dzLine_lineName_edit").val(dzLine.lineName);
				$("#dzLine_linePhoto").val(dzLine.linePhoto);
				$("#dzLine_linePhotoImg").attr("src", basePath +　dzLine.linePhoto);
				$("#dzLine_startPlace_edit").val(dzLine.startPlace);
				$("#dzLine_zhuti_edit").val(dzLine.zhuti);
				$("#dzLine_linePrice_edit").val(dzLine.linePrice);
				dzLine_lineDesc_editor.setContent(dzLine.lineDesc, false);
				$("#dzLine_tuijianFlag_edit").val(dzLine.tuijianFlag);
				$("#dzLine_hitNum_edit").val(dzLine.hitNum);
				$("#dzLine_addTime_edit").val(dzLine.addTime);
			} else {
				alert("获取信息失败！");
			}
		}
	});
}

/*ajax方式提交定制线路信息表单给服务器端修改*/
function ajaxDzLineModify() {
	$.ajax({
		url :  basePath + "DzLine/" + $("#dzLine_lineId_edit").val() + "/update",
		type : "post",
		dataType: "json",
		data: new FormData($("#dzLineEditForm")[0]),
		success : function (obj, response, status) {
            if(obj.success){
                alert("信息修改成功！");
                location.reload(true);
                $("#dzLineQueryForm").submit();
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
    $('.dzLine_addTime_edit').datetimepicker({
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
    dzLineEdit("<%=request.getParameter("lineId")%>");
 })
 </script> 
</body>
</html>

