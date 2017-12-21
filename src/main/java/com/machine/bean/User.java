package com.machine.bean;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 用户实体
 */

@Component(value = "user")
public class User {
    //用户编号
    private Integer userId;
    //用户微信号
    private String userWechatId;
    //用户手机号
    private String userPhone;
    //用户是否可用
    private Integer userIsUsed;
    //用户余额
    private Double userMony;
    //用户创建时间
    private Date createTime;
    //用户名称
    private String userName;
    //用户支付宝账号
    private String userAlipayId;

    public User() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAlipayId() {
        return userAlipayId;
    }

    public void setUserAlipayId(String userAlipayId) {
        this.userAlipayId = userAlipayId;
    }



    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserWechatId() {
        return userWechatId;
    }

    public void setUserWechatId(String userWechatId) {
        this.userWechatId = userWechatId;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public Integer getUserIsUsed() {
        return userIsUsed;
    }

    public void setUserIsUsed(Integer userIsUsed) {
        this.userIsUsed = userIsUsed;
    }

    public Double getUserMony() {
        return userMony;
    }

    public void setUserMony(Double userMony) {
        this.userMony = userMony;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
