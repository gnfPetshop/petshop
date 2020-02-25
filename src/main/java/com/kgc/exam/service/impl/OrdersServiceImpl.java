package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Orders;
import com.kgc.exam.mapper.OrdersMapper;
import com.kgc.exam.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public List<Orders> queryByUserId(Integer userid) {
        return ordersMapper.queryByUserId(userid);
    }

    @Override
    public Boolean delOrders(Integer ordersid) {
        return ordersMapper.delOrders(ordersid)==1;
    }

    @Override
    public List<Orders> queryByUserIdAndState(Integer userid) {
        return ordersMapper.queryByUserIdAndState(userid);
    }

    @Override
    public List<Orders> queryByUserIdAndFahuo(Integer userid) {
        return ordersMapper.queryByUserIdAndFahuo(userid);
    }

    @Override
    public List<Orders> queryByUserIdAndShouhuo(Integer userid) {
        return ordersMapper.queryByUserIdAndShouhuo(userid);
    }

    @Override
    public List<Orders> queryByUserIdAndComment(Integer userid) {
        return ordersMapper.queryByUserIdAndComment(userid);
    }

    @Override
    public List<Orders> queryByUserIdAndTiJiaoComment(Integer userid, Integer ordersid) {
        return ordersMapper.queryByUserIdAndTiJiaoComment(userid,ordersid);
    }

    @Override
    public Boolean addComment(Integer userid, Integer ordersid, Integer goodsid, String content) {
         ordersMapper.addComment(userid,ordersid,goodsid,content);

        return ordersMapper.updateOrdersComment(ordersid,goodsid)==1;
    }
}
