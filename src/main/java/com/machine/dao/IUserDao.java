package com.machine.dao;

import com.machine.bean.User;

import java.util.List;

/**
 * 用户DAO
 */
public interface IUserDao {

    /**
     *查找所有用户
     * @return
     */
    public List<User> queryAllUsers();

    /**
     * 修改用户状态
     * @param user
     * @return
     */
    public int updateUserStatus(User user);


    public int queryUserStatus(User user);
}
