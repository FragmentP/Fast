<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tour.css" />
<div id="tourAddDiv">
	<form id="tourAddForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">旅游景点名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourName" name="tour.tourName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游图片:</span>
			<span class="inputControl">
				<input id="tourPhotoFile" name="tourPhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">出发地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_startPlace" name="tour.startPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">目的地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_endPlace" name="tour.endPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourPrice" name="tour.tourPrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">旅游景点介绍:</span>
			<span class="inputControl">
				<script name="tour.tourDesc" id="tour_tourDesc" type="text/plain"   style="width:750px;height:500px;"></script>
			</span>

		</div>
		<div>
			<span class="label">是否推荐:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tuijianFlag" name="tour.tuijianFlag" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">浏览次数:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_hitNum" name="tour.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">发布时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_addTime" name="tour.addTime" />

			</span>

		</div>
		<div class="operation">
			<a id="tourAddButton" class="easyui-linkbutton">添加</a>
			<a id="tourClearButton" class="easyui-linkbutton">重填</a>
		</div> 
	</form>
</div>
<script src="${pageContext.request.contextPath}/Tour/js/tour_add.js"></script> 
