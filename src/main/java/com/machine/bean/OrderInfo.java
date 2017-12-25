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
    //机器编号
    private Integer machineId;
    //机器拍照的照片
    private String productPhoto;
    //订单金额
    private double orderAmount;
    //物品重量
    private double productWeight;
    //无参构造
    public OrderInfo() {
    }

    public Integer getMachineId() {
        return machineId;
    }

    public void setMachineId(Integer machineId) {
        this.machineId = machineId;
    }

    public String getProductPhoto() {
        return productPhoto;
    }

    public void setProductPhoto(String productPhoto) {
        this.productPhoto = productPhoto;
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

    public double getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(double orderAmount) {
        this.orderAmount = orderAmount;
    }

    public double getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(double productWeight) {
        this.productWeight = productWeight;
    }
}
