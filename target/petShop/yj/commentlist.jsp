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

    <title>发表评论</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/appstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
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


    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-comment">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">发表评论</strong> / <small>Make&nbsp;Comments</small></div>
                    </div>
                    <hr/>

                    <div class="comment-main">
                        <div class="comment-list">
                            <div class="item-pic">
                                <a href="#" class="J_MakePoint">
                                    <img src="../images/comment.jpg_400x400.jpg" class="itempic">
                                </a>
                            </div>

                            <div class="item-title">

                                <div class="item-name">
                                    <a href="#">
                                        <p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="info-little">
                                        <span>颜色：洛阳牡丹</span>
                                        <span>包装：裸装</span>
                                    </div>
                                    <div class="item-price">
                                        价格：<strong>19.88元</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <div class="item-comment">
                                <textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
                            </div>
                            <div class="filePic">
                                <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" >
                                <span>晒照片(0/5)</span>
                                <img src="../images/image.jpg" alt="">
                            </div>
                            <div class="item-opinion">
                                <li><i class="op1"></i>好评</li>
                                <li><i class="op2"></i>中评</li>
                                <li><i class="op3"></i>差评</li>
                            </div>
                        </div>

                        <!--多个商品评论-->
                        <div class="comment-list">
                            <div class="item-pic">
                                <a href="#" class="J_MakePoint">
                                    <img src="../images/comment.jpg_400x400.jpg" class="itempic">
                                </a>
                            </div>

                            <div class="item-title">

                                <div class="item-name">
                                    <a href="#">
                                        <p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="info-little">
                                        <span>颜色：洛阳牡丹</span>
                                        <span>包装：裸装</span>
                                    </div>
                                    <div class="item-price">
                                        价格：<strong>19.88元</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <div class="item-comment">
                                <textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
                            </div>
                            <div class="filePic">
                                <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" >
                                <span>晒照片(0/5)</span>
                                <img src="../images/image.jpg" alt="">
                            </div>
                            <div class="item-opinion">
                                <li><i class="op1"></i>好评</li>
                                <li><i class="op2"></i>中评</li>
                                <li><i class="op3"></i>差评</li>
                            </div>
                        </div>

                        <div class="comment-list">
                            <div class="item-pic">
                                <a href="#" class="J_MakePoint">
                                    <img src="../images/comment.jpg_400x400.jpg" class="itempic">
                                </a>
                            </div>

                            <div class="item-title">

                                <div class="item-name">
                                    <a href="#">
                                        <p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="info-little">
                                        <span>颜色：洛阳牡丹</span>
                                        <span>包装：裸装</span>
                                    </div>
                                    <div class="item-price">
                                        价格：<strong>19.88元</strong>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <div class="item-comment">
                                <textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
                            </div>
                            <div class="filePic">
                                <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" >
                                <span>晒照片(0/5)</span>
                                <img src="../images/image.jpg" alt="">
                            </div>
                            <div class="item-opinion">
                                <li><i class="op1"></i>好评</li>
                                <li><i class="op2"></i>中评</li>
                                <li><i class="op3"></i>差评</li>
                            </div>
                        </div>
                        <div class="info-btn">
                            <div class="am-btn am-btn-danger">发表评论</div>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function() {
                                $(".comment-list .item-opinion li").click(function() {
                                    $(this).prevAll().children('i').removeClass("active");
                                    $(this).nextAll().children('i').removeClass("active");
                                    $(this).children('i').addClass("active");

                                });
                            })
                        </script>



                    </div>

                </div>

            </div>
            <!--底部-->

        </div>


    </div>
</div>
</body>

</html>