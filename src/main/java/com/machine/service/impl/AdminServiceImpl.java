package com.machine.service.impl;

import com.machine.bean.Admin;
import com.machine.dao.IAdminDao;
import com.machine.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
        if (admin.getAdminId() != null) {
            return "成功了";
        } else {
            return "出错了";
        }

    }

    /**
     * 是否该管理员存在
     *
     * @param adminName 管理员名
     * @return 是否存在
     */
    @Override
    public boolean checkName(String adminName) {
        if (adminDao.queryAdminByName(adminName) > 0) {
            return true;
        }
        return false;

    }

    /**
     * 密码是否正确
     *
     * @param adminPassword 管理员密码
     * @return
     */
    @Override
    public boolean checkPassword(String adminPassword) {
        if (adminDao.queryAdminByPassword(adminPassword) > 0) {
            return true;
        }
        return false;
    }

    /**
     * 是否超级管理员
     *
     * @return 是否存在
     */
    @Override
    public boolean checkRole(String adminName) {
        if (adminDao.queryAdminByRole(adminName) > 0) {
            return true;
        }
        return false;
    }

    /**
     *
     * @param admin
     */
    @Override
    public void addAdmin(Admin admin) {
        adminDao.addAdmin(admin);
    }

    /**
     * 查询词所有管理员
     * @return
     */
    @Override
    public List<Admin> allAdmins() {
        List<Admin> admins = adminDao.queryAllAdmins();
        if (admins != null) {
            return admins;
        }
        return null;
    }


}
