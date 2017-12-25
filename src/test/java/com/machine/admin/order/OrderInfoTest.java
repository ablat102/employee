package com.machine.admin.order;

import com.machine.bean.OrderInfo;
import com.machine.service.IOrderInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class OrderInfoTest {

    @Autowired
    private IOrderInfoService orderInfoService;
    @Autowired
    private OrderInfo orderInfo;
    @Test
    public void testQueryAllOrder(){
        List<OrderInfo> orderInfos = orderInfoService.orderList();
        if (orderInfos != null) {
            System.out.println(orderInfos.size());
            System.out.println(orderInfos.get(1).getOrderAmount());
        }
    }
}
