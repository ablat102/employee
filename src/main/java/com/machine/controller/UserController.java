package com.machine.controller;

import com.machine.bean.User;
import com.machine.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 用户控制器
 */

@Controller(value = "userController")
@RequestMapping(value = "/admin")
public class UserController {

    @Autowired
    private IUserService userService;
    /**
     * 用户列表
     * @return
     */
    @RequestMapping(value = "/userList",method = RequestMethod.GET)
    public String userList(HttpServletRequest request) {
        List<User> users = userService.userList();
        if (users != null) {
            request.setAttribute("users",users);
        }
        return "userList";
    }

    /**
     * 修改用户信息
     * @return
     */
    @RequestMapping(value = "/changeUser")
    public String changeUser() {

        return "changeUser";
    }

}
