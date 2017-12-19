package com.machine.bean;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 系统日志实体类
 */
@Component(value = "log")
public class Log {
    //日志编号
    private Integer logId;
    //日志标题
    private String logTitle;
    //日志内容
    private String logContent;
    //日志创建时间
    private Date createTime;
    //管理员编号
    private Integer adminId;

    public Log() {
    }

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getLogTitle() {
        return logTitle;
    }

    public void setLogTitle(String logTitle) {
        this.logTitle = logTitle;
    }

    public String getLogContent() {
        return logContent;
    }

    public void setLogContent(String logContent) {
        this.logContent = logContent;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }
}
