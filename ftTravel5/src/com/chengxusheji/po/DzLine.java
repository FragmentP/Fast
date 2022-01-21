package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

import javax.validation.constraints.NotNull;

@Data
public class DzLine {
    /*线路id*/
    private Integer lineId;

    /*线路名称*/
    @NotEmpty(message = "线路名称不能为空")
    private String lineName;

    /*线路图片*/
    private String linePhoto;

    /*出发地*/
    @NotEmpty(message = "出发地不能为空")
    private String startPlace;

    /*产品主题*/
    @NotEmpty(message = "产品主题不能为空")
    private String zhuti;

    /*线路价格*/
    @NotNull(message = "必须输入线路价格")
    private Float linePrice;

    /*线路描述*/
    @NotEmpty(message = "线路描述不能为空")
    private String lineDesc;

    /*是否推荐*/
    @NotEmpty(message = "是否推荐不能为空")
    private String tuijianFlag;

    /*点击率*/
    @NotNull(message = "必须输入点击率")
    private Integer hitNum;

    /*发布时间*/
    @NotEmpty(message = "发布时间不能为空")
    private String addTime;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonDzLine = new JSONObject();
        jsonDzLine.accumulate("lineId", this.getLineId());
        jsonDzLine.accumulate("lineName", this.getLineName());
        jsonDzLine.accumulate("linePhoto", this.getLinePhoto());
        jsonDzLine.accumulate("startPlace", this.getStartPlace());
        jsonDzLine.accumulate("zhuti", this.getZhuti());
        jsonDzLine.accumulate("linePrice", this.getLinePrice());
        jsonDzLine.accumulate("lineDesc", this.getLineDesc());
        jsonDzLine.accumulate("tuijianFlag", this.getTuijianFlag());
        jsonDzLine.accumulate("hitNum", this.getHitNum());
        jsonDzLine.accumulate("addTime", this.getAddTime().length() > 19 ? this.getAddTime().substring(0, 19) : this.getAddTime());
        return jsonDzLine;
    }
}