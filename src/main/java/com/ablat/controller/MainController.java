package com.ablat.controller;

import com.ablat.bean.Employee;
import com.ablat.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * 登录控制器
 */
@Controller(value = "mainController")
public class MainController {

    @Autowired
    IEmployeeService employeeService;
    @RequestMapping("/main")
    public String main(){
        List<Employee> employees = employeeService.getAll();
        System.err.println(employees.size());
        return "main";
    }

    @RequestMapping("/notice")
    public String notice(){
        return "notice";
    }
    @RequestMapping("/top")
    public String top(){
        return "top";
    }

    @RequestMapping("/left")
    public String left(){
        return "left";
    }
}
