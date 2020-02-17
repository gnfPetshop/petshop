<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>优惠券</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/cpstyle.css" rel="stylesheet" type="text/css">

    <script type="text/javascript"  src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
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

                <div class="user-coupon">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">优惠券</strong> / <small>Coupon</small></div>
                    </div>
                    <hr/>

                    <div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

                        <ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">可用优惠券</a></li>
                            <li><a href="#tab2">已用/过期优惠券</a></li>

                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <div class="coupon-items">
                                    <div class="coupon-item coupon-item-d">
                                        <div class="coupon-list">
                                            <div class="c-type">
                                                <div class="c-class">
                                                    <strong>购物券</strong>
                                                </div>
                                                <div class="c-price">
                                                    <strong>￥8</strong>
                                                </div>
                                                <div class="c-limit">
                                                    【消费满&nbsp;95元&nbsp;可用】
                                                </div>
                                                <div class="c-time"><span>使用期限</span>2015-12-21--2015-12-31</div>
                                                <div class="c-type-top"></div>

                                                <div class="c-type-bottom"></div>
                                            </div>

                                            <div class="c-msg">
                                                <div class="c-range">
                                                    <div class="range-all">
                                                        <div class="range-item">
                                                            <span class="label">券&nbsp;编&nbsp;号：</span>
                                                            <span class="txt">35730144</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="op-btns">
                                                    <a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="coupon-item coupon-item-yf">
                                        <div class="coupon-list">
                                            <div class="c-type">
                                                <div class="c-class">
                                                    <strong>运费券</strong>
                                                </div>
                                                <div class="c-price">
                                                    <strong>可抵运费</strong>
                                                </div>
                                                <div class="c-limit">
                                                    【不含偏远地区】
                                                </div>
                                                <div class="c-time"><span>使用期限</span>2015-12-21--2015-12-31</div>
                                                <div class="c-type-top"></div>

                                                <div class="c-type-bottom"></div>
                                            </div>

                                            <div class="c-msg">
                                                <div class="c-range">
                                                    <div class="range-all">
                                                        <div class="range-item">
                                                            <span class="label">券&nbsp;编&nbsp;号：</span>
                                                            <span class="txt">35728267</span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="op-btns">
                                                    <a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="am-tab-panel am-fade" id="tab2">
                                <div class="coupon-items">
                                    <div class="coupon-item coupon-item-d">
                                        <div class="coupon-list">
                                            <div class="c-type">
                                                <div class="c-class">
                                                    <strong>购物券</strong>
                                                    <span class="am-icon-trash"></span>
                                                </div>
                                                <div class="c-price">
                                                    <strong>￥8</strong>
                                                </div>
                                                <div class="c-limit">
                                                    【消费满&nbsp;95元&nbsp;可用】
                                                </div>
                                                <div class="c-time"><span>使用期限</span>2015-12-21--2015-12-31</div>
                                                <div class="c-type-top"></div>

                                                <div class="c-type-bottom"></div>
                                            </div>

                                            <div class="c-msg">
                                                <div class="c-range">
                                                    <div class="range-all">
                                                        <div class="range-item">
                                                            <span class="label">券&nbsp;编&nbsp;号：</span>
                                                            <span class="txt">35730144</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="op-btns c-del">
                                                    <a href="#" class="btn"><span class="txt">删除</span><b></b></a>
                                                </div>
                                            </div>

                                            <li class="td td-usestatus ">
                                                <div class="item-usestatus ">
                                                    <span><img src="../images/gift_stamp_31.png"</span>
                                                </div>
                                            </li>
                                        </div>
                                    </div>
                                    <div class="coupon-item coupon-item-yf">
                                        <div class="coupon-list">
                                            <div class="c-type">
                                                <div class="c-class">
                                                    <strong>运费券</strong>
                                                    <span class="am-icon-trash"></span>
                                                </div>
                                                <div class="c-price">
                                                    <strong>可抵运费</strong>
                                                </div>
                                                <div class="c-limit">
                                                    【不含偏远地区】
                                                </div>
                                                <div class="c-time"><span>使用期限</span>2015-12-21--2015-12-31</div>
                                                <div class="c-type-top"></div>

                                                <div class="c-type-bottom"></div>
                                            </div>

                                            <div class="c-msg">
                                                <div class="c-range">
                                                    <div class="range-all">
                                                        <div class="range-item">
                                                            <span class="label">券&nbsp;编&nbsp;号：</span>
                                                            <span class="txt">35728267</span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="op-btns c-del">
                                                    <a href="#" class="btn"><span class="txt">删除</span><b></b></a>
                                                </div>
                                            </div>

                                            <li class="td td-usestatus ">
                                                <div class="item-usestatus ">
                                                    <span><img src="../images/gift_stamp_21.png"</span>
                                                </div>
                                            </li>
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