package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

import javax.validation.constraints.NotNull;

@Data
public class Tour {
    /*旅游id*/
    private Integer tourId;

    /*旅游景点名称*/
    @NotEmpty(message = "旅游景点名称不能为空")
    private String tourName;

    /*旅游图片*/
    private String tourPhoto;

    /*出发地*/
    @NotEmpty(message = "出发地不能为空")
    private String startPlace;

    /*目的地*/
    @NotEmpty(message = "目的地不能为空")
    private String endPlace;

    /*旅游价格*/
    @NotNull(message = "必须输入旅游价格")
    private Float tourPrice;

    /*旅游景点介绍*/
    @NotEmpty(message = "旅游景点介绍不能为空")
    private String tourDesc;

    /*是否推荐*/
    @NotEmpty(message = "是否推荐不能为空")
    private String tuijianFlag;

    /*浏览次数*/
    @NotNull(message = "必须输入浏览次数")
    private Integer hitNum;

    /*发布时间*/
    @NotEmpty(message = "发布时间不能为空")
    private String addTime;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonTour = new JSONObject();
        jsonTour.accumulate("tourId", this.getTourId());
        jsonTour.accumulate("tourName", this.getTourName());
        jsonTour.accumulate("tourPhoto", this.getTourPhoto());
        jsonTour.accumulate("startPlace", this.getStartPlace());
        jsonTour.accumulate("endPlace", this.getEndPlace());
        jsonTour.accumulate("tourPrice", this.getTourPrice());
        jsonTour.accumulate("tourDesc", this.getTourDesc());
        jsonTour.accumulate("tuijianFlag", this.getTuijianFlag());
        jsonTour.accumulate("hitNum", this.getHitNum());
        jsonTour.accumulate("addTime", this.getAddTime().length() > 19 ? this.getAddTime().substring(0, 19) : this.getAddTime());
        return jsonTour;
    }
}