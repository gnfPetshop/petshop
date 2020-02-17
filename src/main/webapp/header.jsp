<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--设置视口-->
    <meta name="viewport"
          content="width=device-width,initial-scale=1">
    <!--导入css-->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!--导入3个js-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/comm.css">
</head>
<body>
<!--大背景-->
<div class="container-fluid px-0">
    <!--header内容-->
    <div class=" bg_picture">
        <!--大div放logo和导航，分两行-->
        <div class="main1 d-lg-block d-none">
            <!--logo-->
            <div class="w-100 text-center logobar">
                <a href="#"><img src="img/index/log.png"></a>
            </div>
            <!--大屏导航栏-->
            <div class="nav">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">狗狗专区</a></li>
                    <li><a href="#">猫咪专区</a></li>
                    <li><a href="#">主食专区</a></li>
                    <li><a href="#">医药专区</a></li>
                    <li><a href="#">零食专区</a></li>
                    <li><a href="#">日用专区</a></li>
                    <li><a href="#"><img src="">登录</a></li>
                </ul>
            </div>
            <!--第一模块中小屏幕时显示内容-->
        </div>
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
        <div class="collapse d-lg-none" id="content">
            <div>
                <ul>
                    <li><a href="#">登录</a><a href="#">注册</a></li>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">狗狗专区</a></li>
                    <li><a href="#">猫咪专区</a></li>
                    <li><a href="#">主食专区</a></li>
                    <li><a href="#">医药专区</a></li>
                    <li><a href="#">零食专区</a></li>
                    <li><a href="#">日用专区</a></li>
                </ul>
            </div>
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
