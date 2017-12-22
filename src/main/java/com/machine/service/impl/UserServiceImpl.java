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

    @Override
    public boolean updateUserStatus(User user) {
        int userStatusId = userDao.queryUserStatus(user);

        if (userStatusId == 0) {
            user.setUserIsUsed(1);
            userDao.updateUserStatus(user);
        }else {
            user.setUserIsUsed(0);
            userDao.updateUserStatus(user);
        }
        
        return true;
    }
}
