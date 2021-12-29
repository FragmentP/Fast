$(function () {
    $("#tourOrder_tourObj_tourId").combobox({
        url: 'Tour/listAll',
        valueField: "tourId",
        textField: "tourName",
        panelHeight: "auto",
        editable: false, //不允许手动输入
        required: true,
        onLoadSuccess: function () { //数据加载完毕事件
            var data = $("#tourOrder_tourObj_tourId").combobox("getData");
            if (data.length > 0) {
                $("#tourOrder_tourObj_tourId").combobox("select", data[0].tourId);
            }
        }
    });
    $("#tourOrder_startDate").datebox({
        required: true,
        showSeconds: true,
        editable: false
    });

    $("#tourOrder_totalPersonNum").validatebox({
        required: true,
        validType: "integer",
        missingMessage: '请输入出行人数',
        invalidMessage: '出行人数输入不对',
    });

    $("#tourOrder_totalPrice").validatebox({
        required: true,
        validType: "number",
        missingMessage: '请输入总价格',
        invalidMessage: '总价格输入不对',
    });

    $("#tourOrder_telephone").validatebox({
        required: true,
        missingMessage: '请输入联系电话',
    });

    $("#tourOrder_userObj_user_name").combobox({
        url: 'UserInfo/listAll',
        valueField: "user_name",
        textField: "name",
        panelHeight: "auto",
        editable: false, //不允许手动输入
        required: true,
        onLoadSuccess: function () { //数据加载完毕事件
            var data = $("#tourOrder_userObj_user_name").combobox("getData");
            if (data.length > 0) {
                $("#tourOrder_userObj_user_name").combobox("select", data[0].user_name);
            }
        }
    });
    $("#tourOrder_orderTime").datetimebox({
        required: true,
        showSeconds: true,
        editable: false
    });

    $("#tourOrder_shzt").validatebox({
        required: true,
        missingMessage: '请输入审核状态',
    });

    $("#tourOrder_shhf").validatebox({
        required: true,
        missingMessage: '请输入审核回复',
    });

    //单击添加按钮
    $("#tourOrderAddButton").click(function () {
        //验证表单
        if (!$("#tourOrderAddForm").form("validate")) {
            $.messager.alert("错误提示", "你输入的信息还有错误！", "warning");
            $(".messager-window").css("z-index", 10000);
        } else {
            $("#tourOrderAddForm").form({
                url: "TourOrder/add",
                onSubmit: function () {
                    if ($("#tourOrderAddForm").form("validate")) {
                        $.messager.progress({
                            text: "正在提交数据中...",
                        });
                        return true;
                    } else {
                        return false;
                    }
                },
                success: function (data) {
                    $.messager.progress("close");
                    //此处data={"Success":true}是字符串
                    var obj = jQuery.parseJSON(data);
                    if (obj.success) {
                        $.messager.alert("消息", "保存成功！");
                        $(".messager-window").css("z-index", 10000);
                        $("#tourOrderAddForm").form("clear");
                    } else {
                        $.messager.alert("消息", obj.message);
                        $(".messager-window").css("z-index", 10000);
                    }
                }
            });
            //提交表单
            $("#tourOrderAddForm").submit();
        }
    });

    //单击清空按钮
    $("#tourOrderClearButton").click(function () {
        $("#tourOrderAddForm").form("clear");
    });
});
