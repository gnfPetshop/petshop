package com.kgc.exam.mapper;

import com.kgc.exam.entity.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersMapper {

    List<Orders> queryByUserId(@Param("userid") Integer userid);

    Integer delOrders(@Param("ordersid") Integer ordersid);

    List<Orders> queryByUserIdAndState(@Param("userid") Integer userid);

    List<Orders> queryByUserIdAndFahuo(@Param("userid") Integer userid);


    List<Orders> queryByUserIdAndShouhuo(@Param("userid") Integer userid);

    List<Orders> queryByUserIdAndComment(@Param("userid") Integer userid);

    List<Orders> queryByUserIdAndTiJiaoComment(@Param("userid") Integer userid,@Param("ordersid") Integer ordersid);

    Integer addComment(@Param("userid") Integer userid,@Param("ordersid")Integer ordersid,@Param("goodsid")Integer goodsid,@Param("content")String content);

    Integer updateOrdersComment(@Param("ordersid")Integer ordersid,@Param("goodsid")Integer goodsid);

}
