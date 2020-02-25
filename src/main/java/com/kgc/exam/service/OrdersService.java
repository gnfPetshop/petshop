package com.kgc.exam.service;

import com.kgc.exam.entity.Orders;

import java.util.List;

public interface OrdersService {

    List<Orders> queryByUserId(Integer userid);

    Boolean delOrders(Integer ordersid);

    List<Orders> queryByUserIdAndState(Integer userid);

    List<Orders> queryByUserIdAndFahuo(Integer userid);

    List<Orders> queryByUserIdAndShouhuo(Integer userid);

    List<Orders> queryByUserIdAndComment(Integer userid);


    List<Orders> queryByUserIdAndTiJiaoComment(Integer userid,Integer ordersid);

    Boolean addComment(Integer userid,Integer ordersid,Integer goodsid,String content);

}
