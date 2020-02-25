<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>订单管理</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/orstyle.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">

    <script type="text/javascript">
        var userid=1;
        $(function(){
            $.getJSON("../orders/queryByUserId",{"userid":userid},function (data) {
                var str ="";
                var money =0;
                var staus="";
                for(var i=0;i<data.length;i++){
                      staus =  data[i].wuliu;
                    if(i==0){
                        str +="<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid==data[i-1].ordersid){
                        str += "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid!=data[i-1].ordersid){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">" +
                            "<div class=\"item-status\">" +
                            "<p class=\"Mystatus\">"+(data[i-1].wuliu==2?'交易成功':'交易未完成')+"</p>" +
                            "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>" +
                            "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-change\">" +
                            "<div class=\"am-btn am-btn-danger anniu \" onclick='del("+data[i-1].ordersid+","+data[i-1].wuliu+")'><a href='javascript:del("+data[i-1].ordersid+","+data[i-1].wuliu+")'>删除订单</a>" +
                            "</div>" +
                            "</li>" +
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"+
                            "<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money =0;
                        money+=data[i].totalprice;

                    }
                    if (i==data.length-1){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">" +
                            "<div class=\"item-status\">" +
                            "<p class=\"Mystatus\">"+(data[i].wuliu==2?'交易成功':'交易未完成')+"</p>" +
                            "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>" +
                            "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-change\">" +
                            "<div class=\"am-btn am-btn-danger anniu\" >" +
                            "<a href='javascript:del("+data[i].ordersid+","+data[i].wuliu+")'>删除订单</a></div>" +
                            "</li>" +
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"

                    }
                }
                $("#order-list-1").empty().append(str);

            })

            /** 待付款**/
            $.getJSON("../orders/queryByUserIdAndState",{"userid":userid},function (data) {
                var str ="";
                var money =0;
                for(var i=0;i<data.length;i++){

                    if(i==0){
                        str +="<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid==data[i-1].ordersid){
                        str += "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid!=data[i-1].ordersid){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>" +
                            "</li>" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">等待买家付款</p>\n" +
                            "<p class=\"order-info\"><a href='javascript:cancel("+data[i-1].ordersid+")' >取消订单</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<a href=\"javascript:pay("+money+","+data[i-1].ordersid+")\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu a_tijiao\" >\n" +
                            "一键支付</div></a>\n" +
                            "</li>"+
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"+
                            "<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime)+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money =0;
                        money+=data[i].totalprice;

                    }
                    if (i==data.length-1){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>" +
                            "</li>" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">等待买家付款</p>\n" +
                            "<p class=\"order-info\"><a href='javascript:cancel("+data[i].ordersid+")' >取消订单</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<a href=\"javascript:pay("+money+","+data[i].ordersid+")\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu \">\n" +
                            "一键支付</div></a>\n" +
                            "</li>"+
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"

                    }
                }
                $("#order-list-2").empty().append(str);

            })


        /** 待发货**/
        $.getJSON("../orders/queryByUserIdAndFahuo",{"userid":userid},function (data) {
            var str ="";
            var money =0;
            for(var i=0;i<data.length;i++){

                if(i==0){
                    str +="<div class=\"order-status5\">" +
                        "<div class=\"order-title\">" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                        "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                        "</div>" +
                        "<div class=\"order-content\">" +
                        "<div class=\"order-left\">" +
                        "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money+=data[i].totalprice;
                }else if (i>=1 && data[i].ordersid==data[i-1].ordersid){
                    str += "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money+=data[i].totalprice;
                }else if (i>=1 && data[i].ordersid!=data[i-1].ordersid){

                    str +="</div>" +
                        "<div class=\"order-right\">" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-amount\">" +
                        "<div class=\"item-amount\">" +
                        "合计："+money+"" +
                        "<p>含运费：<span>0.00</span></p>" +
                        "</div>" +
                        "</li>" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">买家已付款</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div class=\"am-btn am-btn-danger anniu\">\n" +
                        "提醒发货</div>\n" +
                        "</li>"+
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>"+
                        "<div class=\"order-status5\">" +
                        "<div class=\"order-title\">" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                        "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                        "</div>" +
                        "<div class=\"order-content\">" +
                        "<div class=\"order-left\">" +
                        "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money =0;
                    money+=data[i].totalprice;

                }
                if (i==data.length-1){

                    str +="</div>" +
                        "<div class=\"order-right\">" +
                        "<li class=\"td td-amount\">" +
                        "<div class=\"item-amount\">" +
                        "合计："+money+"" +
                        "<p>含运费：<span>0.00</span></p>" +
                        "</div>" +
                        "</li>" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">买家已付款</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div class=\"am-btn am-btn-danger anniu\">\n" +
                        "提醒发货</div>\n" +
                        "</li>"+
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>"

                }
            }
            $("#order-list-3").empty().append(str);

        })

        /** 待收货**/
        $.getJSON("../orders/queryByUserIdAndShouhuo",{"userid":userid},function (data) {
            var str ="";
            var money =0;
            for(var i=0;i<data.length;i++){

                if(i==0){
                    str +="<div class=\"order-status5\">" +
                        "<div class=\"order-title\">" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                        "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                        "</div>" +
                        "<div class=\"order-content\">" +
                        "<div class=\"order-left\">" +
                        "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money+=data[i].totalprice;
                }else if (i>=1 && data[i].ordersid==data[i-1].ordersid){
                    str += "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money+=data[i].totalprice;
                }else if (i>=1 && data[i].ordersid!=data[i-1].ordersid){

                    str +="</div>" +
                        "<div class=\"order-right\">" +
                        "<li class=\"td td-amount\">" +
                        "<div class=\"item-amount\">" +
                        "合计："+money+"" +
                        "<p>含运费：<span>0.00</span></p>" +
                        "</div>\n" +
                        "</li>\n" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-amount\">" +
                        "<div class=\"item-amount\">" +
                        "合计："+money+"" +
                        "<p>含运费：<span>0.00</span></p>" +
                        "</div>" +
                        "</li>" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">卖家已发货</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"#\">延长收货</a></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div class=\"am-btn am-btn-danger anniu\">\n" +
                        "确认收货</div>\n" +
                        "</li>"+
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>"+
                        "<div class=\"order-status5\">" +
                        "<div class=\"order-title\">" +
                        "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                        "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                        "</div>" +
                        "<div class=\"order-content\">" +
                        "<div class=\"order-left\">" +
                        "<ul class=\"item-list\">" +
                        "<li class=\"td td-item\">" +
                        "<div class=\"item-pic\">" +
                        "<a href=\"#\" class=\"J_MakePoint\">" +
                        "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                        "</a>" +
                        "</div>" +
                        "<div class=\"item-info\">" +
                        "<div class=\"item-basic-info\">" +
                        "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                        "</div>" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-price\">" +
                        "<div class=\"item-price\">"+data[i].singleprice+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-number\">" +
                        "<div class=\"item-number\">" +
                        "<span>×</span>"+data[i].amount+"" +
                        "</div>" +
                        "</li>" +
                        "<li class=\"td td-operation\">" +
                        "<div class=\"item-operation\">" +
                        "</div>" +
                        "</li>" +
                        "</ul>"
                    money =0;
                    money+=data[i].totalprice;

                }
                if (i==data.length-1){

                    str +="</div>" +
                        "<div class=\"order-right\">" +
                        "<li class=\"td td-amount\">" +
                        "<div class=\"item-amount\">" +
                        "合计："+money+"" +
                        "<p>含运费：<span>0.00</span></p>" +
                        "</div>" +
                        "</li>" +
                        "<div class=\"move-right\">" +
                        "<li class=\"td td-status\">\n" +
                        "<div class=\"item-status\">\n" +
                        "<p class=\"Mystatus\">卖家已发货</p>\n" +
                        "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>\n" +
                        "<p class=\"order-info\"><a href=\"#\">延长收货</a></p>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-change\">\n" +
                        "<div class=\"am-btn am-btn-danger anniu\">\n" +
                        "确认收货</div>\n" +
                        "</li>"+
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>"

                }
            }
            $("#order-list-4").empty().append(str);

        })


            /** 待评价**/
            $.getJSON("../orders/queryByUserIdAndComment",{"userid":userid},function (data) {
                var str ="";
                var money =0;
                for(var i=0;i<data.length;i++){

                    if(i==0){
                        str +="<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid==data[i-1].ordersid){
                        str += "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money+=data[i].totalprice;
                    }else if (i>=1 && data[i].ordersid!=data[i-1].ordersid){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>\n" +
                            "</li>\n" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">交易成功</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                            "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<a href=\"commentlist.jsp?userid="+userid+"&ordersid="+data[i-1].ordersid+"\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu\">\n" +
                            "评价商品</div>\n" +
                            "</a>\n" +
                            "</li>"+
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"+
                            "<div class=\"order-status5\">" +
                            "<div class=\"order-title\">" +
                            "<div class=\"dd-num\">订单编号：<a href=\"javascript:;\">"+data[i].ordersid+"</a></div>" +
                            "<span>成交时间："+(data[i].paytime==null?'':data[i].paytime.substring(0, 19))+"</span>" +
                            "</div>" +
                            "<div class=\"order-content\">" +
                            "<div class=\"order-left\">" +
                            "<ul class=\"item-list\">" +
                            "<li class=\"td td-item\">" +
                            "<div class=\"item-pic\">" +
                            "<a href=\"#\" class=\"J_MakePoint\">" +
                            "<img src=\"../upload/"+data[i].goods.goodspicture1+"\" class=\"itempic J_ItemImg\">" +
                            "</a>" +
                            "</div>" +
                            "<div class=\"item-info\">" +
                            "<div class=\"item-basic-info\">" +
                            "<p  class='goodsname'>"+data[i].goods.goodsname+"</p>" +
                            "</div>" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-price\">" +
                            "<div class=\"item-price\">"+data[i].singleprice+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-number\">" +
                            "<div class=\"item-number\">" +
                            "<span>×</span>"+data[i].amount+"" +
                            "</div>" +
                            "</li>" +
                            "<li class=\"td td-operation\">" +
                            "<div class=\"item-operation\">" +
                            "</div>" +
                            "</li>" +
                            "</ul>"
                        money =0;
                        money+=data[i].totalprice;

                    }
                    if (i==data.length-1){

                        str +="</div>" +
                            "<div class=\"order-right\">" +
                            "<li class=\"td td-amount\">" +
                            "<div class=\"item-amount\">" +
                            "合计："+money+"" +
                            "<p>含运费：<span>0.00</span></p>" +
                            "</div>" +
                            "</li>" +
                            "<div class=\"move-right\">" +
                            "<li class=\"td td-status\">\n" +
                            "<div class=\"item-status\">\n" +
                            "<p class=\"Mystatus\">交易成功</p>\n" +
                            "<p class=\"order-info\"><a href=\"orderinfo.html\">订单详情</a></p>\n" +
                            "<p class=\"order-info\"><a href=\"logistics.html\">查看物流</a></p>\n" +
                            "</div>\n" +
                            "</li>\n" +
                            "<li class=\"td td-change\">\n" +
                            "<a href=\"commentlist.jsp?userid="+userid+"&ordersid="+data[i].ordersid+"\">\n" +
                            "<div class=\"am-btn am-btn-danger anniu\">\n" +
                            "评价商品</div>\n" +
                            "</a>\n" +
                            "</li>"+
                            "</div>" +
                            "</div>" +
                            "</div>" +
                            "</div>"

                    }
                }
                $("#order-list-5").empty().append(str);

            })

        })
        function del(ordersid,wuliu) {
            if (wuliu==2){
            if (confirm("确认删除该订单吗？")){
                $.getJSON("../orders/delOrders",{"ordersid":ordersid},function (data) {
                    if (data){
                        alert("删除成功");
                    }
                })

            }
            }
        }
        function cancel(ordersid) {

                if (confirm("确认取消该订单吗？")) {
                    $.getJSON("../orders/delOrders", {"ordersid": ordersid}, function (data) {
                        if (data) {
                            alert("取消成功");
                            window.location.reload();
                        }
                    })

                }
        }
        function pay(money,ordersid) {


                var in_name="小羊";
                var in_phone = "15850530538";
                //var in_money = $(".a_goods_sum_money").text();
                window.location.href = "../user/alipay.action?in_name=" + in_name
                    + "&&in_phone=" + in_phone + "&&in_money=" + money;

        }
    </script>
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">
    <!--头部背景颜色-->
    <div class="bg_color w-100 d-lg-block d-none"></div>

    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-order">

                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                    </div>
                    <hr/>

                    <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                        <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">所有订单</a></li>
                            <li><a href="#tab2">待付款</a></li>
                            <li><a href="#tab3">待发货</a></li>
                            <li><a href="#tab4">待收货</a></li>
                            <li><a href="#tab5">待评价</a></li>
                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <div class="order-top">
                                    <div class="th th-item">
                                        <td class="td-inner">商品</td>
                                    </div>
                                    <div class="th th-price">
                                        <td class="td-inner">单价</td>
                                    </div>
                                    <div class="th th-number">
                                        <td class="td-inner">数量</td>
                                    </div>
                                    <div class="th th-operation">
                                        <td class="td-inner">商品操作</td>
                                    </div>
                                    <div class="th th-amount">
                                        <td class="td-inner">合计</td>
                                    </div>
                                    <div class="th th-status">
                                        <td class="td-inner">交易状态</td>
                                    </div>
                                    <div class="th th-change">
                                        <td class="td-inner">交易操作</td>
                                    </div>
                                </div>

                                <div class="order-main">
                                    <div class="order-list" id="order-list-1">

                                        <!--交易成功-->
                                       <%-- <div class="order-status5">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                                <span>成交时间：2015-12-20</span>

                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                        <p class="info-little">颜色：12#川南玛瑙
                                                                            <br/>包装：裸装 </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                333.00
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>2
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>


                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：676.00
                                                            <p>含运费：<span>10.00</span></p>
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">交易成功</p>
                                                                <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                                <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                删除订单</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>




                                    </div>

                                </div>

                            </div>
                            <div class="am-tab-panel am-fade" id="tab2">

                                <div class="order-top">
                                    <div class="th th-item">
                                        <td class="td-inner">商品</td>
                                    </div>
                                    <div class="th th-price">
                                        <td class="td-inner">单价</td>
                                    </div>
                                    <div class="th th-number">
                                        <td class="td-inner">数量</td>
                                    </div>
                                    <div class="th th-operation">
                                        <td class="td-inner">商品操作</td>
                                    </div>
                                    <div class="th th-amount">
                                        <td class="td-inner">合计</td>
                                    </div>
                                    <div class="th th-status">
                                        <td class="td-inner">交易状态</td>
                                    </div>
                                    <div class="th th-change">
                                        <td class="td-inner">交易操作</td>
                                    </div>
                                </div>


                                <!--      待付款     -->
                                <div class="order-main">
                                    <div class="order-list" id="order-list-2">
                                      <%--  <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                                <span>成交时间：2015-12-20</span>

                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                        <p class="info-little">颜色：12#川南玛瑙
                                                                            <br/>包装：裸装 </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                333.00
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>2
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：676.00
                                                            <p>含运费：<span>10.00</span></p>
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">等待买家付款</p>
                                                                <p class="order-info"><a href="#">取消订单</a></p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="pay.html">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    一键支付</div></a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>--%>
                                    </div>

                                </div>
                            </div>
                            <div class="am-tab-panel am-fade" id="tab3">
                                <div class="order-top">
                                    <div class="th th-item">
                                        <td class="td-inner">商品</td>
                                    </div>
                                    <div class="th th-price">
                                        <td class="td-inner">单价</td>
                                    </div>
                                    <div class="th th-number">
                                        <td class="td-inner">数量</td>
                                    </div>
                                    <div class="th th-operation">
                                        <td class="td-inner">商品操作</td>
                                    </div>
                                    <div class="th th-amount">
                                        <td class="td-inner">合计</td>
                                    </div>
                                    <div class="th th-status">
                                        <td class="td-inner">交易状态</td>
                                    </div>
                                    <div class="th th-change">
                                        <td class="td-inner">交易操作</td>
                                    </div>
                                </div>

                                <div class="order-main">
                                    <div class="order-list" id="order-list-3">
                                    <%--    <div class="order-status2">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                                <span>成交时间：2015-12-20</span>

                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                        <p class="info-little">颜色：12#川南玛瑙
                                                                            <br/>包装：裸装 </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                333.00
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>2
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                <a href="refund.html">退款</a>
                                                            </div>
                                                        </li>
                                                    </ul>


                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：676.00
                                                            <p>含运费：<span>10.00</span></p>
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">买家已付款</p>
                                                                <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                提醒发货</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="am-tab-panel am-fade" id="tab4">
                                <div class="order-top">
                                    <div class="th th-item">
                                        <td class="td-inner">商品</td>
                                    </div>
                                    <div class="th th-price">
                                        <td class="td-inner">单价</td>
                                    </div>
                                    <div class="th th-number">
                                        <td class="td-inner">数量</td>
                                    </div>
                                    <div class="th th-operation">
                                        <td class="td-inner">商品操作</td>
                                    </div>
                                    <div class="th th-amount">
                                        <td class="td-inner">合计</td>
                                    </div>
                                    <div class="th th-status">
                                        <td class="td-inner">交易状态</td>
                                    </div>
                                    <div class="th th-change">
                                        <td class="td-inner">交易操作</td>
                                    </div>
                                </div>

                                <div class="order-main">
                                    <div class="order-list" id="order-list-4">
                                        <%--<div class="order-status3">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                                <span>成交时间：2015-12-20</span>

                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                        <p class="info-little">颜色：12#川南玛瑙
                                                                            <br/>包装：裸装 </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                333.00
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>2
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                <a href="refund.html">退款/退货</a>
                                                            </div>
                                                        </li>
                                                    </ul>



                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：676.00
                                                            <p>含运费：<span>10.00</span></p>
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">卖家已发货</p>
                                                                <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                                <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                                <p class="order-info"><a href="#">延长收货</a></p>
                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                确认收货</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>


                        <div class="am-tab-panel am-fade" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list" id="order-list-5">
                                    <!--不同状态的订单	-->

                                    <div class="order-status4">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br/>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>


                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="commentlist.jsp">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                评价商品</div>
                                                        </a>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>

                        </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--底部-->

        </div>

    </div>
</div>
</body>

</html>