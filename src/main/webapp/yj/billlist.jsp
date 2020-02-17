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

    <title>账单明细</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/bilstyle.css" rel="stylesheet" type="text/css">

    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
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

    <div class="main1  d-none d-lg-block">




        <div class="center">
            <div class="col-main">
                <div class="main-wrap">
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账单明细</strong> / <small>Electronic&nbsp;bill</small></div>
                    </div>
                    <hr>

                    <!--交易时间	-->

                    <div class="order-time">
                        <label class="form-label">交易时间：</label>
                        <div class="show-input">
                            <select class="am-selected" data-am-selected>
                                <option value="today">今天</option>
                                <option value="sevenDays" selected="">最近一周</option>
                                <option value="oneMonth">最近一个月</option>
                                <option value="threeMonths">最近三个月</option>
                                <option class="date-trigger">自定义时间</option>
                            </select>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <table width="100%">

                        <thead>
                        <tr>
                            <th class="memo"></th>
                            <th class="time">创建时间</th>
                            <th class="name">名称</th>
                            <th class="amount">金额</th>
                            <th class="action">操作</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="img">
                                <i><img src="../images/songzi.jpg"></i>
                            </td>
                            <td class="time">
                                <p> 2016-01-28
                                </p>
                                <p class="text-muted"> 10:58
                                </p>
                            </td>
                            <td class="title name">
                                <p class="content">
                                    良品铺子精选松子，即开即食全国包邮
                                </p>
                            </td>

                            <td class="amount">
                                <span class="amount-pay">- 11.90</span>
                            </td>
                            <td class="operation">
                                删除
                            </td>
                        </tr>

                        <tr>

                            <td class="img">
                                <i><img src="../images/songzi.jpg"></i>
                            </td>
                            <td class="time">
                                <p> 2016-01-28
                                </p>
                                <p class="text-muted"> 10:58
                                </p>
                            </td>
                            <td class="title name">
                                <p class="content">
                                    良品铺子精选松子，即开即食全国包邮
                                </p>
                            </td>

                            <td class="amount">
                                <span class="amount-pay">- 11.90</span>
                            </td>
                            <td class="operation">
                                删除
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <script type="text/javascript">
                        $(document).ready(function() {
                            $(".date-trigger").click(function() {
                                $(".show-input").css("display", "none");
                            });

                        })
                    </script>

                </div>
                <!--底部-->

            </div>
        </div>
    </div>
</div>
</body>

</html>