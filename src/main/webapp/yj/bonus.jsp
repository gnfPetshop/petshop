<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的红包</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/bostyle.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">







    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-bonus">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">红包</strong> / <small>Bonus</small></div>
                    </div>
                    <hr/>

                    <div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

                        <ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">可用红包</a></li>
                            <li><a href="#tab2">已用/过期红包</a></li>

                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                                <div class="cart-table-th">
                                    <div class="order-top">
                                        <div class="th th-from">
                                            来源
                                        </div>
                                        <div class="th th-remainderprice">
                                            剩余金额
                                        </div>
                                        <div class="th th-term">
                                            有效期
                                        </div>
                                        <div class="th th-usestatus">
                                            使用状态
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="order-main">

                                        <ul class="item-list">
                                            <li class="td td-from">
                                                <div class="item-img">
                                                    <img src="../images/566fda5cN4b8a1675.gif">
                                                </div>

                                                <div class="item-info">

                                                    <a href="#">
                                                        <p>蓝胖子赠与</p>
                                                        <p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
                                                    </a>

                                                </div>
                                            </li>
                                            <li class="td td-remainderprice">
                                                <div class="item-remainderprice">
                                                    <span>还剩</span>10.40<span>元</span>
                                                </div>
                                            </li>

                                            <li class="td td-term ">
                                                <div class="item-term">
                                                    <span>有效期</span> 2015.12.26-2016.2.1
                                                </div>
                                            </li>

                                            <li class="td td-usestatus ">
                                                <div class="item-usestatus ">
                                                    <p>可使用</p><span><img src="../images/gift_stamp_1.png"</span>
                                                </div>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div class="am-tab-panel am-fade" id="tab2">

                                <div class="cart-table-th">
                                    <div class="order-top">
                                        <div class="th th-from">
                                            来源
                                        </div>
                                        <div class="th th-remainderprice">
                                            剩余金额
                                        </div>
                                        <div class="th th-term">
                                            有效期
                                        </div>
                                        <div class="th th-usestatus">
                                            使用状态
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="order-main">

                                        <ul class="item-list">
                                            <li class="td td-from">
                                                <div class="item-img">
                                                    <img src="../images/566fda5cN4b8a1675.gif">
                                                </div>

                                                <div class="item-info">

                                                    <a href="# ">
                                                        <p>蓝胖子赠与</p>
                                                        <p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
                                                    </a>

                                                </div>
                                            </li>
                                            <li class="td td-remainderprice">
                                                <div class="item-remainderprice">
                                                    <span>还剩</span>0.00<span>元</span>
                                                </div>
                                            </li>

                                            <li class="td td-term ">
                                                <div class="item-term">
                                                    <span>有效期</span> 2015.12.26-2016.2.1
                                                </div>
                                            </li>

                                            <li class="td td-usestatus ">
                                                <div class="item-usestatus ">
                                                    <p>已用完</p><span><img src="../images/gift_stamp_2.png"</span>
                                                </div>
                                            </li>
                                        </ul>

                                        <!--已过期-->
                                        <ul class="item-list">

                                            <li class="td td-from">
                                                <div class="item-img">
                                                    <img src="../images/566fda5cN4b8a1675.gif">
                                                </div>

                                                <div class="item-info">

                                                    <a href="# ">
                                                        <p>蓝胖子赠与</p>
                                                        <p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
                                                    </a>

                                                </div>
                                            </li>
                                            <li class="td td-remainderprice">
                                                <div class="item-remainderprice">
                                                    <span>还剩</span>50.00<span>元</span>
                                                </div>
                                            </li>

                                            <li class="td td-term ">
                                                <div class="item-term">
                                                    <span>有效期</span> 2015.12.26-2016.2.1
                                                </div>
                                            </li>

                                            <li class="td td-usestatus ">
                                                <div class="item-usestatus ">
                                                    <p>已过期</p><span><img src="../images/gift_stamp_3.png"</span>
                                                </div>
                                            </li>
                                        </ul>



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