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

    <title>我的评价</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/cmstyle.css" rel="stylesheet" type="text/css">

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
        //userid从session里取
        var userid=1;
        $(function () {
            $.getJSON("../comments/queryCommentsByUseridAndComment",{"userid":userid},function (data) {
                var str="";
                $(data).each(function(){
                    str +="<ul class=\"item-list\">\n" +
                        "<li class=\"td td-item\">\n" +
                        "<div class=\"item-pic\">\n" +
                        "<a href=\"#\" class=\"J_MakePoint\">\n" +
                        "<img src=\"../upload/"+this.goods.goodspicture1+"\" class=\"itempic\">\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "<li class=\"td td-comment\">\n" +
                        "<div class=\"item-title\">\n" +
                        "<div class=\"item-name\">\n" +
                        "<a href=\"#\">\n" +
                        "<p class=\"item-basic-info\">"+this.goods.goodsname+"</p>\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class=\"item-comment\">"+this.content+"" +
                        "</div>\n" +
                        "<div class=\"item-info\">\n" +
                        "<div>\n" +
                        "<p class=\"info-time\">"+this.commentdate.substring(0, 19)+"</p>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "</li>\n" +
                        "</ul>"
                })
                $(".comment-list").empty().append(str);
            })
        })
    </script>
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">
    <!--头部背景颜色-->


    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-comment">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的评价</strong> / <small>Manage&nbsp;Comment</small></div>
                    </div>
                    <hr/>

                    <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                        <ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">所有评价</a></li>
                            <%--<li><a href="#tab2">有图评价</a></li>--%>

                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                                <div class="comment-main">
                                    <div class="comment-list">
                                        <%--<ul class="item-list">
                                            <li class="td td-item">
                                                <div class="item-pic">
                                                    <a href="#" class="J_MakePoint">
                                                        <img src="../images/kouhong.jpg_80x80.jpg" class="itempic">
                                                    </a>
                                                </div>
                                            </li>
                                            <li class="td td-comment">
                                                <div class="item-title">

                                                    <div class="item-name">
                                                        <a href="#">
                                                            <p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="item-comment">
                                                    宝贝非常漂亮，超级喜欢！！！ 口红颜色很正呐，还有第两支半价，买三支免单一支的活动，下次还要来买。就是物流太慢了，还要我自己去取快递，店家不考虑换个物流么？
                                                </div>
                                                <div class="item-info">
                                                    <div>
                                                        <p class="info-time">2015-12-24</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>--%>

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