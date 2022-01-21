package com.chengxusheji.po;


import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

@Data
public class Admin {
    /*管理员用户名*/
    @NotEmpty(message = "用户名不能为空")
    private String username;
    /*登陆密码*/
    @NotEmpty(message = "登陆密码不能为空")
    private String password;

}
