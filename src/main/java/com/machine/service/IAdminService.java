package com.machine.service;

import com.machine.bean.Admin;
import org.springframework.stereotype.Service;

/**
 * 管理员相关的业务处理接口
 */

public interface IAdminService {
    /**
     * 管理员登录
     * @param adminName 管理员名称
     * @param adminPassword 管理员密码
     * @param adminRole 管理员权限
     */
    public Object login(String adminName , String adminPassword , Integer adminRole);

    /**
     * 添加维护管理员
     * @param admin
     */
    public void addAdmin(Admin admin);

}
