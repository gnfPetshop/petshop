<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>个人中心</title>
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
    <script>
        function setIframeHeight(iframe) {
            if (iframe) {
                var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                if (iframeWin.document.body) {
                    iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                    var height=iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                    $(iframe).css('height',(height+50));

                }
            }
        };
    </script>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/personal.css" >
    <link href="../css/systyle.css" rel="stylesheet" type="text/css">
    <link href="../css/infstyle.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../css/bootstrap.css"/>

    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/comm.css" type="text/css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link rel="stylesheet" href="../css/header.css" type="text/css">
</head>

<body>

<div class="container-fluid px-0">
    <!--头部背景颜色-->
    <div class="bg_color w-100 d-lg-block d-none"></div>
    <!--顶部登录条top_bar-->
    <!--大屏时显示-->
    <div class="top_bar  d-lg-block d-none">
        <div class="mx-auto">
            <span>欢迎访问宠物用品商城!</span>
            <div>
                <a href="../login.jsp"><img src="../img/login/login1.png">登录</a>
                <a href="../regist.jsp"><img src="../img/login/zhuce .png">注册</a>
                <a href="../static/goodCar.html"><img src="../img/login/gouwuche.svg"></a>
            </div>
        </div>
    </div>
    <!--header内容-->
    <!--第一模块显示-->
    <div class="main1  d-none d-lg-block">
        <!--logo和导航模块，分两行-->
        <div>
            <!--logo-->
            <div class="w-100 text-center logobar">
                <a href="#"><img src="../img/index/logo.png"></a>
            </div>
            <!--导航栏-->
            <div class="nav d-lg-block d-none">
                <ul>
                    <li><a href="../index.jsp">首页</a></li>
                    <li><a href="../dog_area.jsp">狗狗专区</a></li>
                    <li><a href="../cat_area.jsp">猫咪专区</a></li>
                    <li><a href="../zs_area.jsp">主食专区</a></li>
                    <li><a href="../yy_area.jsp">医药专区</a></li>
                    <li><a href="../linshi_area.jsp">零食专区</a></li>
                    <li><a href="../riyong_area.jsp">日用专区</a></li>
                    <li><a href="../login.jsp">登录</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!--头 -->

    <div class="center">
        <div class="col-main">
            <div class="main-wrap">
                <div class="wrap-left">
                        <iframe  name="my-iframe" id="my-iframe" width="100%" height="1000px"scrolling="No" frameborder="0" onload="setIframeHeight(this)">

                    </iframe>
                </div>

            </div>
            <!--底部-->
            <div class="footer">
                <div class="footer-hd">
                    <p>
                        <a href="#">岗难风科技</a>
                        <b>|</b>
                        <a href="#">商城首页</a>
                        <b>|</b>
                        <a href="#">支付宝</a>
                        <b>|</b>
                        <a href="#">物流</a>
                    </p>
                </div>
                <div class="footer-bd">
                    <p>
                        <a href="#">关于岗难风</a>
                        <a href="#">合作伙伴</a>
                        <a href="#">联系我们</a>
                        <a href="#">网站地图</a>
                        <em>© 2020-2026 XXXX 版权所有 <a href="http://www.gangnanfeng.com/" target="_blank" title="版权所有">版权所有</a> - Collect from</em>
                    </p>
                </div>
            </div>

        </div>

        <aside class="menu">
            <ul>
                <li class="person active">
                    <a href="index.html">个人中心</a>
                </li>
                <li class="person">
                    <a href="#">个人资料</a>
                    <ul>
                        <li> <a href="information.jsp"  target="my-iframe"  >个人信息</a></li>

                        <li> <a href="address.jsp"  target="my-iframe" >收货地址</a></li>
                        <li> <a href="password.jsp"  target="my-iframe" >修改密码</a></li>
                    </ul>
                </li>
                <li class="person">
                    <a href="#">我的交易</a>
                    <ul>
                        <li><a href="order.jsp"   target="my-iframe">订单管理</a></li>

                    </ul>
                </li>
                <%--<li class="person">
                    <a href="#">我的资产</a>
                    <ul>
                        <li> <a href="coupon.jsp"   target="my-iframe">优惠券 </a></li>
                        <li> <a href="bonus.jsp"   target="my-iframe">红包</a></li>
                        &lt;%&ndash;<li> <a href="billlist.jsp" target="my-iframe">账单明细</a></li>&ndash;%&gt;
                    </ul>
                </li>--%>

                <li class="person">
                    <a href="#">我的小窝</a>
                    <ul>
                        <li> <a href="collection.jsp" target="my-iframe">收藏</a></li>
                        <li> <a href="comment.jsp" target="my-iframe">我的评价</a></li>

                    </ul>
                </li>

            </ul>

        </aside>
    </div>
    <!--引导 -->
    <div class="navCir">
        <li><a href="../home/home.html"><i class="am-icon-home "></i>首页</a></li>
        <li><a href="../home/sort.html"><i class="am-icon-list"></i>分类</a></li>
        <li><a href="../home/shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
        <li class="active"><a href="index.html"><i class="am-icon-user"></i>我的</a></li>
    </div>
</div>
</body>

</html>
