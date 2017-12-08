package com.ablat.controller;

import com.ablat.bean.Employee;
import com.ablat.service.ILoginService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 处理登录信息
 */
@Controller(value = "loginController")
public class LoginController {
    @Resource
    ILoginService loginService;
    @Autowired
    Employee employee;

    @RequestMapping(path = "/login")
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userValue = request.getParameter("userValue");
        String password = request.getParameter("password");
        //如果获取的数据不为空，则进行验证
        if (!"".equals(userValue) && !"".equals(password)) {
            Employee employees = loginService.getEmployee(userValue);
            //如果有该账号
            if (employees.getEmployeeNo() != null) {
                response.getWriter().print(1);
                System.out.println(employees.getEmployeeName());
            }
            response.getWriter().print(2);
        }
        response.getWriter().print(3);
    }
}
