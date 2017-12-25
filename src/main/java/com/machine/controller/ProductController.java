package com.machine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 物品控制器
 */

@Controller
@RequestMapping(value = "admin/product")
public class ProductController {

    /**
     * 物品列表页面
     * @return 物品列表页面
     */
    @RequestMapping(value = "productList",method = RequestMethod.GET)
    public String productList(){


        return "productList";
    }
}
