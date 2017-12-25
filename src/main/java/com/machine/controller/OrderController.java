package com.machine.controller;

import com.machine.bean.OrderInfo;
import com.machine.service.IOrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 订单控制器
 */
@Controller
@RequestMapping(value = "admin/order")
public class OrderController {

    @Autowired
    private IOrderInfoService orderInfoService;
    @RequestMapping(value = "orderList",method = RequestMethod.GET)
    public String orderList(HttpServletRequest request) {
        if (orderInfoService.orderList() != null){
            List<OrderInfo> orderInfos = orderInfoService.orderList();
            request.setAttribute("orderInfos",orderInfos);
        }
        return "orderList";
    }

    @RequestMapping(value = "orderManage")
    public String orderManage(){
        return "orderMange";
    }
}
