package com.ablat.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 合作伙伴
 */
@Component(value = "partner")
public class Partner {
    //合作伙伴主键
    private Integer partnerId;
    //合作伙伴姓名
    private String parterName;
    //合作伙伴公司
    private String partnerCompany;
    //合作伙伴编号
    private String partnerNo;
    //合作伙伴电话号
    private String partnerPhone;
    //合作伙伴类型
    private Integer partnerType;
    //合作伙伴状态
    private Integer partnerStatus;
    //合作伙伴创建时间
    private Date partnerCreateTime;
    //合作伙伴回访时间
    private Date partnerVisitTime;
    //员工主键
    @Autowired
    private Employee employeeId;
}
