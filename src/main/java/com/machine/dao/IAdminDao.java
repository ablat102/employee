package com.machine.dao;

import com.machine.bean.Admin;

import java.util.List;

/**
 * 管理员DAO接口
 */


public interface IAdminDao {

    /**
     * 通过管理员的名字来查询管理员
     * @return
     */
    public Admin queryAdminByName(Admin adminName);


}
