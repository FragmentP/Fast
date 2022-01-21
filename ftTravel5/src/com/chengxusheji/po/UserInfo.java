package com.chengxusheji.po;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;
import org.json.JSONException;
import org.json.JSONObject;

@Data
public class UserInfo {
    /*用户名*/
    @NotEmpty(message = "用户名不能为空")
    private String user_name;

    /*登录密码*/
    @NotEmpty(message = "登录密码不能为空")
    private String password;

    /*姓名*/
    @NotEmpty(message = "姓名不能为空")
    private String name;

    /*性别*/
    @NotEmpty(message = "性别不能为空")
    private String gender;

    /*出生日期*/
    @NotEmpty(message = "出生日期不能为空")
    private String birthDate;

    /*用户照片*/
    private String userPhoto;

    /*联系电话*/
    @NotEmpty(message = "联系电话不能为空")
    private String telephone;

    /*邮箱*/
    @NotEmpty(message = "邮箱不能为空")
    private String email;

    /*家庭地址*/
    private String address;

    /*注册时间*/
    private String regTime;

    public JSONObject getJsonObject() throws JSONException {
        JSONObject jsonUserInfo = new JSONObject();
        jsonUserInfo.accumulate("user_name", this.getUser_name());
        jsonUserInfo.accumulate("password", this.getPassword());
        jsonUserInfo.accumulate("name", this.getName());
        jsonUserInfo.accumulate("gender", this.getGender());
        jsonUserInfo.accumulate("birthDate", this.getBirthDate().length() > 19 ? this.getBirthDate().substring(0, 19) : this.getBirthDate());
        jsonUserInfo.accumulate("userPhoto", this.getUserPhoto());
        jsonUserInfo.accumulate("telephone", this.getTelephone());
        jsonUserInfo.accumulate("email", this.getEmail());
        jsonUserInfo.accumulate("address", this.getAddress());
        jsonUserInfo.accumulate("regTime", this.getRegTime().length() > 19 ? this.getRegTime().substring(0, 19) : this.getRegTime());
        return jsonUserInfo;
    }
}