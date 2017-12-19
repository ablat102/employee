package com.machine.bean;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 订单信息实体类
 */

@Component(value = "orderInfo")
public class OrderInfo {
    //订单编号
    private Integer orderInfoId;
    //用户编号
    private Integer userId;
    //商品编号
    private Integer productId;
    //创建时间
    private Date createTime;

    public OrderInfo() {
    }

    public Integer getOrderInfoId() {
        return orderInfoId;
    }

    public void setOrderInfoId(Integer orderInfoId) {
        this.orderInfoId = orderInfoId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
