package com.machine.controller;

import com.machine.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * 处理管理员相关的请求
 */

@Controller(value = "adminController")
@RequestMapping(value = "/admin/")
public class AdminController {

    @Autowired
    IAdminService adminService;

    /**
     * GET请求login的时候跳转login.jsp页面
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    /**
     * POST请求
     *
     * @param adminName
     * @param adminPassword
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody
    Object login(@RequestParam(value = "adminValue", required = true) String adminName, @RequestParam(value = "password", required = true) String adminPassword, HttpSession session) {
        System.out.println(adminName);
        //前台发送过来的管理员信息不为空

        return adminName + "";
    }


}
