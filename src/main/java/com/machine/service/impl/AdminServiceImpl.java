package com.machine.service.impl;

import com.machine.bean.Admin;
import com.machine.dao.IAdminDao;
import com.machine.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 管理员业务处理实现类
 */
@Service
public class AdminServiceImpl implements IAdminService {

    @Autowired
    private IAdminDao adminDao;

    /**
     * 管理员登录
     *
     * @param adminName     管理员名称
     * @param adminPassword 管理员密码
     * @param adminRole     管理员权限
     */
    @Override
    public Object login(String adminName, String adminPassword, Integer adminRole) {
        Admin admin = adminDao.queryAdminByNameAndByPass(adminName, adminPassword, adminRole);
        if (admin != null) {
            return admin;
        }
        return null;
    }

    @Override
    public void addAdmin(Admin admin) {
    }
}
