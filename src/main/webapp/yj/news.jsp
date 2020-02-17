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

    <title>我的消息</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/newstyle.css" rel="stylesheet" type="text/css">

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
    <!--头部背景颜色-->

    <!--大屏时显示-->

    <!--header内容-->



    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-news">

                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的消息</strong> / <small>News</small></div>
                    </div>
                    <hr/>

                    <div class="am-tabs am-tabs-d2" data-am-tabs>
                        <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">商城活动</a></li>


                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                                <div class="news-day">
                                    <div class="goods-date" data-date="2015-12-21">
                                        <span><i class="month-lite">12</i>.<i class="day-lite">21</i>	<i class="date-desc">今天</i></span>
                                    </div>

                                    <!--消息 -->
                                    <div class="s-msg-item s-msg-temp i-msg-downup">
                                        <h6 class="s-msg-bar"><span class="s-name">每日新鲜事</span></h6>
                                        <div class="s-msg-content i-msg-downup-wrap">
                                            <div class="i-msg-downup-con">
                                                <a class="i-markRead" target="_blank" href="blog.html">
                                                    <img src="../images/TB102.jpg">
                                                    <p class="s-main-content">
                                                        最特色的湖北年货都在这儿 ~快来囤年货啦！
                                                    </p>
                                                    <p class="s-row s-main-content">
                                                        <a href="blog.html">
                                                            阅读全文 <i class="am-icon-angle-right"></i>
                                                        </a>
                                                    </p>
                                                </a>
                                            </div>
                                        </div>
                                        <a class="i-btn-forkout" href="#"><i class="am-icon-close am-icon-fw"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="am-tab-panel am-fade" id="tab2">
                                <!--消息 -->

                            </div>

                            <div class="am-tab-panel am-fade" id="tab3">
                                <!--消息 -->

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