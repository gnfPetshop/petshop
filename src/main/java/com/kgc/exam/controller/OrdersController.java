package com.kgc.exam.controller;


import com.kgc.exam.entity.Orders;
import com.kgc.exam.service.OrdersService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@RequestMapping("orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;

    @RequestMapping("queryByUserId")
    public List<Orders> queryByUserId(@RequestParam("userid") Integer userid){
        return ordersService.queryByUserId(userid);
    }

    @RequestMapping("delOrders")
    public Boolean delOrders(@RequestParam("ordersid") Integer ordersid){
        return ordersService.delOrders(ordersid);
    }

    @RequestMapping("queryByUserIdAndState")
    public List<Orders> queryByUserIdAndState(@RequestParam("userid") Integer userid){
        return ordersService.queryByUserIdAndState(userid);
    }

    @RequestMapping("queryByUserIdAndFahuo")
    public List<Orders> queryByUserIdAndFahuo(@RequestParam("userid") Integer userid){
        return ordersService.queryByUserIdAndFahuo(userid);
    }
    @RequestMapping("queryByUserIdAndShouhuo")
    public List<Orders> queryByUserIdAndShouhuo(@RequestParam("userid") Integer userid){
        return ordersService.queryByUserIdAndShouhuo(userid);
    }

    @RequestMapping("queryByUserIdAndComment")
    public List<Orders> queryByUserIdAndComment(@RequestParam("userid") Integer userid){
        return ordersService.queryByUserIdAndComment(userid);
    }

    @RequestMapping("queryByUserIdAndTiJiaoComment")
    public List<Orders> queryByUserIdAndTiJiaoComment(@RequestParam("userid") Integer userid,@RequestParam("ordersid") Integer ordersid){
        return ordersService.queryByUserIdAndTiJiaoComment(userid,ordersid);
    }

    @RequestMapping("addComment")
    public Boolean addComment(@RequestParam("userid") Integer userid, @RequestParam("ordersid")Integer ordersid, @RequestParam("goodsid")Integer goodsid, @RequestParam("content")String content){
        return ordersService.addComment(userid,ordersid,goodsid,content);
    }
}
