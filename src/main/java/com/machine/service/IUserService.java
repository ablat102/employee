package com.machine.service;

import com.machine.bean.User;

import java.util.List;

/**
 * 用户业务处理接口
 */
public interface IUserService {

    /**
     * 用户列表
     * @return
     */
    public List<User> userList();
}
