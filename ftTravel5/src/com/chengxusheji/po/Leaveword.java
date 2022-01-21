package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

@Data
public class Leaveword {
    /*留言id*/
    private Integer leaveWordId;

    /*留言标题*/
    @NotEmpty(message = "留言标题不能为空")
    private String leaveTitle;

    /*留言内容*/
    @NotEmpty(message = "留言内容不能为空")
    private String leaveContent;

    /*留言人*/
    private UserInfo userObj;

    /*留言时间*/
    private String leaveTime;

    /*管理回复*/
    private String replyContent;

    /*回复时间*/
    private String replyTime;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonLeaveword = new JSONObject();
        jsonLeaveword.accumulate("leaveWordId", this.getLeaveWordId());
        jsonLeaveword.accumulate("leaveTitle", this.getLeaveTitle());
        jsonLeaveword.accumulate("leaveContent", this.getLeaveContent());
        jsonLeaveword.accumulate("userObj", this.getUserObj().getName());
        jsonLeaveword.accumulate("userObjPri", this.getUserObj().getUser_name());
        jsonLeaveword.accumulate("leaveTime", this.getLeaveTime().length() > 19 ? this.getLeaveTime().substring(0, 19) : this.getLeaveTime());
        jsonLeaveword.accumulate("replyContent", this.getReplyContent());
        jsonLeaveword.accumulate("replyTime", this.getReplyTime().length() > 19 ? this.getReplyTime().substring(0, 19) : this.getReplyTime());
        return jsonLeaveword;
    }
}