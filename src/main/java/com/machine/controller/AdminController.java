package com.machine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 处理管理员相关的请求
 */

@Controller(value = "adminController")
@RequestMapping(value = "/admin/")
public class AdminController {

    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String login(){
        return "main";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public Object login(String adminName, String adminPassword, String adminRole, HttpSession session) {
        return "";
    }
}
