package com.machine.service;

import com.machine.bean.OrderInfo;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IOrderInfoService {

    /**
     * 查询所有订单信息
     * @return
     */
    public List<OrderInfo> orderList();
}
