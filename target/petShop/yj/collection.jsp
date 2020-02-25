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

    <title>我的收藏</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/colstyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">
    <style type="text/css">
        .tupian{
            width: 308px;
            height: 308px;
        }
    </style>
    <script type="text/javascript">
        var userid=1;
        $(function () {
            $.getJSON("../comments/queryCollections",{"userid":userid},function (data) {
                var str ="";
                $(data).each(function () {
                    str +="<div class='zongti'>"+
                        "<div class=\"s-item-wrap\">\n" +
                        "<div class=\"s-item\">\n" +
                        "<div class=\"s-pic\">\n" +
                        "<a href=\"#\" class=\"s-pic-link\">\n" +
                        "<img src=\"../upload/"+this.goods.goodspicture1+"\"   class=\"s-pic-img s-guess-item-img tupian\">\n" +
                        "</a>\n" +
                        "</div>\n" +
                        "<div class=\"s-info\">\n" +
                        "<div class=\"s-title \"><a href=\"#\" >"+this.goods.goodsname+"</a></div>\n" +
                        "<div class=\"s-price-box\">\n" +
                        "<span class=\"s-price\"><em class=\"s-price-sign\">¥</em><em class=\"s-value\">"+this.goods.price+"</em></span>\n" +
                        " </div>\n" +
                        "<div class=\"s-extra-box\">\n" +
                        "<span class=\"s-comment\">好评: 99.99%</span>\n" +
                        "<span class=\"s-sales\">月销: "+this.goods.sales+"</span>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class=\"s-tp\">\n" +
                        "<span class=\"ui-btn-loading-before\">找相似</span>\n" +
                        "<i class=\"am-icon-shopping-cart\"></i>\n" +
                        "<span class=\"ui-btn-loading-before buy\" onclick='cancelCollection("+this.goodsid+",this)'>取消收藏</span>\n" +

                        "</div>\n" +
                        "</div>\n" +
                        "</div>"+
                            "</div>"
                })
                $(".collection").empty().append(str);
            })
        })

        function cancelCollection(goodsid,obj) {
            if (confirm("确认取消收藏吗？")){
                $.getJSON("../comments/delCollections",{"userid":userid,"goodsid":goodsid},function (data) {
                    $(obj).parents(".zongti").remove();
                })
            }
        }
    </script>
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">
    <!--头部背景颜色-->

    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-collection">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>My&nbsp;Collection</small></div>
                    </div>
                    <hr/>

                    <div class="you-like">
                        <div class="s-bar">
                            我的收藏
                            <a class="am-badge am-badge-danger am-round">降价</a>
                            <a class="am-badge am-badge-danger am-round">下架</a>
                        </div>
                        <div class="s-content collection">


                            <%--<div class="s-item-wrap">
                                <div class="s-item">

                                    <div class="s-pic">
                                        <a href="#" class="s-pic-link">
                                            <img src="../images/1-item_pic.jpg_220x220.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                        </a>
                                    </div>
                                    <div class="s-info">
                                        <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
                                        <div class="s-price-box">
                                            <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                            <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                        </div>
                                        <div class="s-extra-box">
                                            <span class="s-comment">好评: 99.74%</span>
                                            <span class="s-sales">月销: 69</span>
                                        </div>
                                    </div>
                                    <div class="s-tp">
                                        <span class="ui-btn-loading-before">找相似</span>
                                        <i class="am-icon-shopping-cart"></i>
                                        <span class="ui-btn-loading-before buy">加入购物车</span>
                                        <p>
                                            <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                        </p>
                                    </div>
                                </div>
                            </div>--%>



                        </div>

                        <div class="s-more-btn i-load-more-item" data-screen="0"><i class="am-icon-refresh am-icon-fw"></i>更多</div>

                    </div>

                </div>

            </div>
            <!--底部-->
        </div>


    </div>
</div>
</body>

</html>