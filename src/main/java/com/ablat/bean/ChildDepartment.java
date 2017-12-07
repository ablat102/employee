package com.ablat.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 子部门
 */
@Component(value = "childDepartment")
public class ChildDepartment {
    //子部门主键
    private Integer childDepartmentId;
    //子部门名称
    private String childDepartmentName;
    //子部门编号
    private String childDepartmentNo;
    //能否转派
    private Integer isResendDepartment;
    //所属部门id
    @Autowired
    private Department departmentId;

    /**
     * 无参构造
     */
    public ChildDepartment() {
    }

    public ChildDepartment(Integer childDepartmentId, String childDepartmentName, String childDepartmentNo, Integer isResendDepartment, Department departmentId) {
        this.childDepartmentId = childDepartmentId;
        this.childDepartmentName = childDepartmentName;
        this.childDepartmentNo = childDepartmentNo;
        this.isResendDepartment = isResendDepartment;
        this.departmentId = departmentId;
    }

    public Integer getChildDepartmentId() {
        return childDepartmentId;
    }

    public void setChildDepartmentId(Integer childDepartmentId) {
        this.childDepartmentId = childDepartmentId;
    }

    public String getChildDepartmentName() {
        return childDepartmentName;
    }

    public void setChildDepartmentName(String childDepartmentName) {
        this.childDepartmentName = childDepartmentName;
    }

    public String getChildDepartmentNo() {
        return childDepartmentNo;
    }

    public void setChildDepartmentNo(String childDepartmentNo) {
        this.childDepartmentNo = childDepartmentNo;
    }

    public Integer getIsResendDepartment() {
        return isResendDepartment;
    }

    public void setIsResendDepartment(Integer isResendDepartment) {
        this.isResendDepartment = isResendDepartment;
    }

    public Department getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Department departmentId) {
        this.departmentId = departmentId;
    }
}
