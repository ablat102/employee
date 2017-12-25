package com.machine.dao;

import com.machine.bean.OrderInfo;

import java.util.List;

/**
 * 订单DAO
 */
public interface IOrderInfoDao {

    /**
     * 查询所有订单
     * @return
     */
    public List<OrderInfo> queryAllOrder();

    /**
     * 通过订单id删除订单
     * @param orderInfo
     * @return
     */
    public int deleteOrderByOrderId(Integer orderInfo);

    /**
     * 删除所有订单
     * @return 删除的行数
     */
    public int deleteAllOrder();
}
