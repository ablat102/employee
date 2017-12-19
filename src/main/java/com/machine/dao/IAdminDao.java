package com.machine.dao;

import com.machine.bean.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO接口
 */


public interface IAdminDao {

    /**
     * 通过管理员的名字和密码来查询管理员
     *
     * @return
     */
    public Admin queryAdminByNameAndByPass(@Param("adminName") String adminName, @Param("adminPassword") String adminPassword,@Param("adminRole") Integer adminRole);

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
     * @param admin 管理员对象
     * @return 删除的行数
     */
    public int deleteAdmin(Admin admin);

}
