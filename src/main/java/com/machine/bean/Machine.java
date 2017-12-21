package com.machine.bean;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 机器实体类
 */
@Component(value = "machine")
public class Machine {
    //机器编号
    private Integer machineId;
    //机器信息
    private String machineDate;
    //机器位置
    private String machineLocation;
    //商品编号
    private Integer productId;
    //机器状态1表示好，0表示坏
    private Integer machineStatus;
    //机器满都
    private Integer machineCapacity;
    //机器提示，从硬件获取
    private String machineWarning;
    //机器放置时间
    private Date createTime;
    //用户ID
    private Integer userId;

    public Machine() {
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getMachineId() {
        return machineId;
    }

    public void setMachineId(Integer machineId) {
        this.machineId = machineId;
    }

    public String getMachineDate() {
        return machineDate;
    }

    public void setMachineDate(String machineDate) {
        this.machineDate = machineDate;
    }

    public String getMachineLocation() {
        return machineLocation;
    }

    public void setMachineLocation(String machineLocation) {
        this.machineLocation = machineLocation;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getMachineStatus() {
        return machineStatus;
    }

    public void setMachineStatus(Integer machineStatus) {
        this.machineStatus = machineStatus;
    }

    public Integer getMachineCapacity() {
        return machineCapacity;
    }

    public void setMachineCapacity(Integer machineCapacity) {
        this.machineCapacity = machineCapacity;
    }

    public String getMachineWarning() {
        return machineWarning;
    }

    public void setMachineWarning(String machineWarning) {
        this.machineWarning = machineWarning;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
