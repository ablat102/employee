package com.machine.service.impl;

import com.machine.bean.User;
import com.machine.dao.IAdminDao;
import com.machine.dao.IUserDao;
import com.machine.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<User> userList() {
        List<User> users = userDao.queryAllUsers();
        if (users != null) {
            return users;
        }
        return null;
    }
}
