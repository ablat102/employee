package com.machine.service;

import com.machine.bean.Admin;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 管理员相关的业务处理接口
 */

public interface IAdminService {
    /**
     * 管理员登录
     *
     * @param adminName     管理员名称
     * @param adminPassword 管理员密码
     * @param adminRole     管理员权限
     */
    public Object login(String adminName, String adminPassword, Integer adminRole);

    /**
     * 检查密码
     *
     * @param adminPassword 管理员密码
     * @return 是否存在
     */
    public boolean checkPassword(String adminPassword);

    /**
     * 检查权限
     *
     * @param adminName 管理员名
     * @return 是否存在
     */

    public boolean checkRole(String adminName);


    /**
     * 检查用户名
     *
     * @param adminName 用户名
     * @return 是否存在
     */
    public boolean checkName(String adminName);

    /**
     * 添加维护管理员
     *
     * @param admin
     */
    public void addAdmin(Admin admin);

    /**
     * 所有管理员
     * @return
     */
    public List<Admin> allAdmins();
}
