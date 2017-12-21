package com.machine.dao;

import com.machine.bean.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO接口
 */


public interface IAdminDao {

    /**
     * 查询所有员工信息
     *
     * @return
     */
    public List<Admin> queryAllAdmins();

    /**
     * 通过管理员的名字和密码来查询管理员
     *
     * @return
     */
    public Admin queryAdminByNameAndByPass(@Param("adminName") String adminName, @Param("adminPassword") String adminPassword, @Param("adminRole") Integer adminRole);

    /**
     * 通过管理员名称查询管理员
     *
     * @param adminName
     * @return 查询到的行数
     */
    public int queryAdminByName(String adminName);

    /**
     * 通过管理员密码查询管理员
     *
     * @param adminPassword 管理员密码
     * @return 查询到的行数
     */
    public int queryAdminByPassword(String adminPassword);

    /**
     * 通过管理员权限查询管理员
     *
     * @return 管理员对象
     */
    public int queryAdminByRole(String adminName);

    /**
     * 添加普通管理员
     *
     * @param admin 管理员
     * @return
     */

    public int addAdmin(Admin admin);

    /**
     * 删除管理员
     *
     * @param adminId 管理员编号
     * @return 删除的行数
     */
    public int deleteAdmin(Integer adminId);

}
