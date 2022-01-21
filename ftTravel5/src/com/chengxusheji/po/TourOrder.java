package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

import javax.validation.constraints.NotNull;

@Data
public class TourOrder {
    /*订单id*/
    private Integer orderId;

    /*旅游景点*/
    private Tour tourObj;

    /*出发日期*/
    @NotEmpty(message = "出发日期不能为空")
    private String startDate;

    /*出行人数*/
    @NotNull(message = "必须输入出行人数")
    private Integer totalPersonNum;

    /*总价格*/
    @NotNull(message = "必须输入总价格")
    private Float totalPrice;

    /*联系电话*/
    @NotEmpty(message = "联系电话不能为空")
    private String telephone;

    /*订单备注*/
    private String orderMemo;

    /*订单用户*/
    private UserInfo userObj;

    /*下单时间*/
    @NotEmpty(message = "下单时间不能为空")
    private String orderTime;

    /*审核状态*/
    @NotEmpty(message = "审核状态不能为空")
    private String shzt;

    /*审核回复*/
    @NotEmpty(message = "审核回复不能为空")
    private String shhf;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonTourOrder = new JSONObject();
        jsonTourOrder.accumulate("orderId", this.getOrderId());
        jsonTourOrder.accumulate("tourObj", this.getTourObj().getTourName());
        jsonTourOrder.accumulate("tourObjPri", this.getTourObj().getTourId());
        jsonTourOrder.accumulate("startDate", this.getStartDate().length() > 19 ? this.getStartDate().substring(0, 19) : this.getStartDate());
        jsonTourOrder.accumulate("totalPersonNum", this.getTotalPersonNum());
        jsonTourOrder.accumulate("totalPrice", this.getTotalPrice());
        jsonTourOrder.accumulate("telephone", this.getTelephone());
        jsonTourOrder.accumulate("orderMemo", this.getOrderMemo());
        jsonTourOrder.accumulate("userObj", this.getUserObj().getName());
        jsonTourOrder.accumulate("userObjPri", this.getUserObj().getUser_name());
        jsonTourOrder.accumulate("orderTime", this.getOrderTime().length() > 19 ? this.getOrderTime().substring(0, 19) : this.getOrderTime());
        jsonTourOrder.accumulate("shzt", this.getShzt());
        jsonTourOrder.accumulate("shhf", this.getShhf());
        return jsonTourOrder;
    }
}