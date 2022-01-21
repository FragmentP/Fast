package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

@Data
public class Notice {
    /*公告id*/
    private Integer noticeId;

    /*标题*/
    @NotEmpty(message = "标题不能为空")
    private String title;

    /*公告内容*/
    @NotEmpty(message = "公告内容不能为空")
    private String content;

    /*发布时间*/
    @NotEmpty(message = "发布时间不能为空")
    private String publishDate;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonNotice = new JSONObject();
        jsonNotice.accumulate("noticeId", this.getNoticeId());
        jsonNotice.accumulate("title", this.getTitle());
        jsonNotice.accumulate("content", this.getContent());
        jsonNotice.accumulate("publishDate", this.getPublishDate().length() > 19 ? this.getPublishDate().substring(0, 19) : this.getPublishDate());
        return jsonNotice;
    }
}