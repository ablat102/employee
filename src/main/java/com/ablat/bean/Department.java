package com.ablat.bean;

import org.springframework.stereotype.Component;

/**
 * 部门
 */
@Component(value = "department")
public class Department {
    //部门主键
    private Integer departmentId;
    //部门名称
    private String departmentName;
    //部门编号
    private String departmentNo;

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDepartmentNo() {
        return departmentNo;
    }

    public void setDepartmentNo(String departmentNo) {
        this.departmentNo = departmentNo;
    }
}
