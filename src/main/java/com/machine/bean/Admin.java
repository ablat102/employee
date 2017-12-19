package com.machine.bean;

import org.springframework.stereotype.Component;

/**
 * 管理员实体类
 */
@Component(value = "admin")
public class Admin {
    //管理员编号
    private Integer adminId;
    //管理员姓名
    private String adminName;
    //管理员密码
    private String adminPassword;
    //管理员微信号
    private String adminWechatId;
    //管理员手机号
    private String adminPhone;
    //管理员权限
    private String adminRole;

    public Admin() {
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminWechatId() {
        return adminWechatId;
    }

    public void setAdminWechatId(String adminWechatId) {
        this.adminWechatId = adminWechatId;
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone;
    }

    public String getAdminRole() {
        return adminRole;
    }

    public void setAdminRole(String adminRole) {
        this.adminRole = adminRole;
    }
}
