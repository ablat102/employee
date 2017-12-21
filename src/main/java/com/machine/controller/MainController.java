package com.machine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 后台主页控制器
 */

@Controller(value = "mainController")
@RequestMapping(value = "/admin")
public class MainController {

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main() {
        return "main";
    }

    @RequestMapping(value = "/top", method = RequestMethod.GET)
    public String top() {
        return "top";
    }

    @RequestMapping(value = "/left", method = RequestMethod.GET)
    public String left() {
        return "left";
    }

}
