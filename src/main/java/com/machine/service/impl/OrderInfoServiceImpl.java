package com.machine.service.impl;

import com.machine.bean.OrderInfo;
import com.machine.dao.IOrderInfoDao;
import com.machine.service.IOrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderInfoServiceImpl implements IOrderInfoService{

    @Autowired
    private IOrderInfoDao orderInfoDao;
    @Autowired
    private OrderInfo orderInfo;
    /**
     * 查询所有订单信息
     * @return 订单信息对象集合
     */
    @Override
    public List<OrderInfo> orderList() {
        List<OrderInfo> orderInfos = orderInfoDao.queryAllOrder();
        if (orderInfos != null){
            return orderInfos;
        }
        return null;
    }
}
