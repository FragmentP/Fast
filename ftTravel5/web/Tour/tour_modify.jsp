<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:include page="../check_logstate.jsp"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tour.css" />
<div id="tour_editDiv">
	<form id="tourEditForm" enctype="multipart/form-data"  method="post">
		<div>
			<span class="label">旅游id:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourId_edit" name="tour.tourId" value="<%=request.getParameter("tourId") %>" style="width:200px" />
			</span>
		</div>

		<div>
			<span class="label">旅游景点名称:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourName_edit" name="tour.tourName" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游图片:</span>
			<span class="inputControl">
				<img id="tour_tourPhotoImg" width="200px" border="0px"/><br/>
    			<input type="hidden" id="tour_tourPhoto" name="tour.tourPhoto"/>
				<input id="tourPhotoFile" name="tourPhotoFile" type="file" size="50" />
			</span>
		</div>
		<div>
			<span class="label">出发地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_startPlace_edit" name="tour.startPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">目的地:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_endPlace_edit" name="tour.endPlace" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">旅游价格:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tourPrice_edit" name="tour.tourPrice" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">旅游景点介绍:</span>
			<span class="inputControl">
				<script id="tour_tourDesc_edit" name="tour.tourDesc" type="text/plain"   style="width:750px;height:500px;"></script>

			</span>

		</div>
		<div>
			<span class="label">是否推荐:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_tuijianFlag_edit" name="tour.tuijianFlag" style="width:200px" />

			</span>

		</div>
		<div>
			<span class="label">浏览次数:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_hitNum_edit" name="tour.hitNum" style="width:80px" />

			</span>

		</div>
		<div>
			<span class="label">发布时间:</span>
			<span class="inputControl">
				<input class="textbox" type="text" id="tour_addTime_edit" name="tour.addTime" />

			</span>

		</div>
		<div class="operation">
			<a id="tourModifyButton" class="easyui-linkbutton">更新</a> 
		</div>
	</form>
</div>
<script src="${pageContext.request.contextPath}/Tour/js/tour_modify.js"></script> 
