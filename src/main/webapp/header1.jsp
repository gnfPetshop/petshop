<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link rel="stylesheet" href="static/css/header.css">
    <title></title>
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
                <a href="login.html"><img src="img/login/login1.png">登录</a>
                <a href="regist.html"><img src="img/login/zhuce .png">注册</a>
                <a href="#"><img src="img/login/gouwuche.svg"></a>
            </div>
        </div>
    </div>
    <!--header内容-->
    <!--第一模块大屏幕显示-->
    <div class="main1  d-none d-lg-block">
        <!--logo和导航模块，分两行-->
        <div>
            <!--logo-->
            <div class="w-100 text-center logobar">
                <a href="#"><img src="img/index/log.png"></a>
            </div>
            <!--大屏导航栏-->
            <div class="nav d-lg-block d-none">
                <ul>
                    <li><a href="index.html">首页</a></li>
                    <li><a href="dog_area.html">狗狗专区</a></li>
                    <li><a href="cat_area.html">猫咪专区</a></li>
                    <li><a href="zs_area.html">主食专区</a></li>
                    <li><a href="yy_area.html">医药专区</a></li>
                    <li><a href="linshi_area.html">零食专区</a></li>
                    <li><a href="riyong_area.html">日用专区</a></li>
                    <li><a href="login.html">登录</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--第一模块中小屏幕时显示内容-->
    <div class=" main1_sd d-block d-lg-none">
        <div>
            <a href="#content" id="my_click"  data-toggle="collapse" ><img src="img/index/nav-collapse.png" ></a>
        </div>
        <div>
            <a href="#"><img src="img/index/log.png"></a>
        </div>
        <div>
            <a href="#"><img src="img/index/gouwuche.svg"></a>
        </div>
    </div>
    <!--折叠内容-->
    <div class="collapse d-lg-none" id="content">
        <div>
            <ul>
                <li><a href="login.html">登录</a><a href="regist.html">注册</a></li>
                <li><a href="index.html">首页</a></li>
                <li><a href="dog_area.html">狗狗专区</a></li>
                <li><a href="cat_area.html">猫咪专区</a></li>
                <li><a href="zs_area.html">主食专区</a></li>
                <li><a href="yy_area.html">医药专区</a></li>
                <li><a href="linshi_area.html">零食专区</a></li>
                <li><a href="riyong_area.html">日用专区</a></li>
            </ul>
        </div>
    </div>
</div>
<script>
    $(document).mouseup(function(e){
        var _con = $(' #my_click ');   // 设置目标区域
        var cDom = document.querySelector("#content");
        if(!_con.is(e.target) && _con.has(e.target).length === 0){ // Mark 1
            cDom.style.display = "none"
        }else{
            cDom.style.display = "block"
        }
    });
</script>
</body>
</html>
