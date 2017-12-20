package com.machine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 后台主页控制器
 */

@Controller(value = "mainController")
@RequestMapping(value = "/admin/")
public class MainController {

    @RequestMapping(value = "/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/top")
    public String top() {
        return "top";
    }

    @RequestMapping("/left")
    public String left() {
        return "left";
    }
}
