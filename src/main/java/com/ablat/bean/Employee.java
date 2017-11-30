package com.ablat.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 员工
 */
@Component(value = "employee")
public class Employee {
    //员工主键
    private Integer employeeId;
    //员工姓名
    private String employeeName;
    //员工密码
    private String employeePassword;
    //员工编号
    private String employeeNo;
    //员工电话号
    private String employeePhone;
    //员工性别
    private Integer employeeSex;
    //员工年龄
    private Integer employeeAge;
    //员工QQ号
    private String employeeQq;
    //员工出生年日
    private Date employeeBrithday;
    //员工邮箱
    private Integer employeeEmail;
    //员工在职状态，1在职，0离职
    private Integer employeeStatus;
    //员工权限
    private Integer employeeLive;
    //员工所属部门id
    @Autowired
    private ChildDepartment childDepartmentId;

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeePassword() {
        return employeePassword;
    }

    public void setEmployeePassword(String employeePassword) {
        this.employeePassword = employeePassword;
    }

    public String getEmployeeNo() {
        return employeeNo;
    }

    public void setEmployeeNo(String employeeNo) {
        this.employeeNo = employeeNo;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public Integer getEmployeeSex() {
        return employeeSex;
    }

    public void setEmployeeSex(Integer employeeSex) {
        this.employeeSex = employeeSex;
    }

    public Integer getEmployeeAge() {
        return employeeAge;
    }

    public void setEmployeeAge(Integer employeeAge) {
        this.employeeAge = employeeAge;
    }

    public String getEmployeeQq() {
        return employeeQq;
    }

    public void setEmployeeQq(String employeeQq) {
        this.employeeQq = employeeQq;
    }

    public Date getEmployeeBrithday() {
        return employeeBrithday;
    }

    public void setEmployeeBrithday(Date employeeBrithday) {
        this.employeeBrithday = employeeBrithday;
    }

    public Integer getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(Integer employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public Integer getEmployeeStatus() {
        return employeeStatus;
    }

    public void setEmployeeStatus(Integer employeeStatus) {
        this.employeeStatus = employeeStatus;
    }

    public Integer getEmployeeLive() {
        return employeeLive;
    }

    public void setEmployeeLive(Integer employeeLive) {
        this.employeeLive = employeeLive;
    }

    public ChildDepartment getChildDepartmentId() {
        return childDepartmentId;
    }

    public void setChildDepartmentId(ChildDepartment childDepartmentId) {
        this.childDepartmentId = childDepartmentId;
    }
}