package com.ablat.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 客户
 */
//装配该bean
@Component(value = "employee")
public class Customer {
    //客户主键
    private Integer customerId;
    //客户名称
    private String customerName;
    //客户编号
    private String customerNo;
    //客户电话号
    private String customerPhone;
    //客户公司
    private String customerCompany;
    //客户类型
    private Integer customerType;
    //客户公司地址
    private String customerCompanyAddress;
    //客户创建时间
    private Date customerCreateTime;
    //客户回访时间
    private Date customerCallbackTime;
    //提醒时间
    private Date warningTime;
    //回访内容
    private String customerCallbackContent;
    //备注信息
    private String customerRemark;
    //客户级别
    private Integer customerLive;
    //员工主键
    @Autowired
    private Employee employeeId;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerNo() {
        return customerNo;
    }

    public void setCustomerNo(String customerNo) {
        this.customerNo = customerNo;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerCompany() {
        return customerCompany;
    }

    public void setCustomerCompany(String customerCompany) {
        this.customerCompany = customerCompany;
    }

    public Integer getCustomerType() {
        return customerType;
    }

    public void setCustomerType(Integer customerType) {
        this.customerType = customerType;
    }

    public String getCustomerCompanyAddress() {
        return customerCompanyAddress;
    }

    public void setCustomerCompanyAddress(String customerCompanyAddress) {
        this.customerCompanyAddress = customerCompanyAddress;
    }

    public Date getCustomerCreateTime() {
        return customerCreateTime;
    }

    public void setCustomerCreateTime(Date customerCreateTime) {
        this.customerCreateTime = customerCreateTime;
    }

    public Date getCustomerCallbackTime() {
        return customerCallbackTime;
    }

    public void setCustomerCallbackTime(Date customerCallbackTime) {
        this.customerCallbackTime = customerCallbackTime;
    }

    public Date getWarningTime() {
        return warningTime;
    }

    public void setWarningTime(Date warningTime) {
        this.warningTime = warningTime;
    }

    public String getCustomerCallbackContent() {
        return customerCallbackContent;
    }

    public void setCustomerCallbackContent(String customerCallbackContent) {
        this.customerCallbackContent = customerCallbackContent;
    }

    public String getCustomerRemark() {
        return customerRemark;
    }

    public void setCustomerRemark(String customerRemark) {
        this.customerRemark = customerRemark;
    }

    public Integer getCustomerLive() {
        return customerLive;
    }

    public void setCustomerLive(Integer customerLive) {
        this.customerLive = customerLive;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }
}
