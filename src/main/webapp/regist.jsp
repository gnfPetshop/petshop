<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 12:13
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
    <link rel="stylesheet" href="static/css/regist.css">
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/footer.css">
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
                <a href="login.jsp"><img src="img/login/login1.png">登录</a>
                <a href="regist.jsp"><img src="img/login/zhuce .png">注册</a>


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
                <a href="#"><img src="img/index/logo.png"></a>
            </div>
            <!--大屏导航栏-->
            <div class="nav d-lg-block d-none">
                <ul>
                    <li><a href="login.jsp">首页</a></li>
                    <li><a href="dog_area.jsp">狗狗专区</a></li>
                    <li><a href="cat_area.jsp">猫咪专区</a></li>
                    <li><a href="zs_area.jsp">主食专区</a></li>
                    <li><a href="yy_area.jsp">医药专区</a></li>
                    <li><a href="linshi_area.jsp">零食专区</a></li>
                    <li><a href="riyong_area.jsp">日用专区</a></li>
                    <li><a href="login.jsp">登录</a></li>
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
                <li><a href="login.jsp">登录</a><a href="regist.jsp">注册</a></li>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="dog_area.jsp">狗狗专区</a></li>
                <li><a href="cat_area.jsp">猫咪专区</a></li>
                <li><a href="zs_area.jsp">主食专区</a></li>
                <li><a href="yy_area.jsp">医药专区</a></li>
                <li><a href="linshi_area.jsp">零食专区</a></li>
                <li><a href="riyong_area.jsp">日用专区</a></li>
            </ul>
        </div>
    </div>
    <div class="my_aside d-lg-block d-none">
        <ul>
            <li>
                <a href="#">
                    <img src="img/index/1pic.png">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="img/index/2pic.png">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="img/index/3pic.png">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="img/index/4pic.png">
                </a>
            </li>
        </ul>
    </div>
    <!--中间注册模块-->
    <div class="main_module row">
        <!--左边图片-->
        <div class="left_pic text-center col-lg-6 col-md-12">
            <img  class="w-100" src="img/login/login_bg.jpg">
        </div>
        <!--右侧注册-->
        <div class="right_login col-lg-6 col-md-12">
            <div class="text-left">
                <h3 class="mt-2 mb-4 text-center">商城注册</h3>
                <div>
                    <ul class="list-unstyled">
                        <li><input type="text" class="uname" id="uname" placeholder="昵称"></li>
                        <li><input type="text" class="phone" id="phone" placeholder="电话号码"></li>
                        <li>
                            <input type="text" class="input_code">
                            <input type="button" class="code" value="获取"></li>
                        <li><input type="password" class="upwd" id="upwd" placeholder="请输入密码"></li>
                        <li><input type="password" class="rewd" id="rewd" placeholder="再输一次密码"></li>
                        <li></li>
                        <li><button class="w-100" id="btn">注册</button></li>
                        <li><button class="w-100" onclick="javascript:window.location.href='login.jsp'">已经有了账号了?请登录</button></li>
                    </ul>
                </div>
                <div>
                    <p>用户注册/登录说明:</p>
                    <p>1、演示用户名：12345678910；密码： <span>demo1234</span></p>
                    <p>2、商城不可注册，实际使用需单独购买<span>短信资源包</span></p>
                </div>
                <span id="uname_msg"></span>
                <span id="phone_msg"></span>
                <span id="upwd_msg"></span>
                <span id="rewd_msg"></span>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid p-0">
    <!--底部-->
    <div class="footer d-md-block d-none">
        <!--第一行-->
        <div class="w-75 m-auto">
            <ul class="list-unstyled d-md-flex justify-content-around pt-5">
                <li  class="d-md-flex">
                    <img src="img/index/footer01.png" >
                    <div>
                        <p class="mb-0"><strong>速享</strong></p>
                        <p class="mb-0">尽享便捷服务</p>
                    </div>
                </li >
                <li  class="d-md-flex">
                    <img src="img/index/footer02.png" >
                    <div>
                        <p class="mb-0"><strong>普惠</strong></p>
                        <p class="mb-0">诚意惠及大众</p>
                    </div>
                </li>
                <li  class="d-md-flex">
                    <img src="img/index/footer03.png" >
                    <div>
                        <p class="mb-0"><strong>专业</strong></p>
                        <p class="mb-0">十年专注母婴</p>
                    </div>
                </li>
                <li class="d-md-flex">
                    <img src="img/index/footer04.png" >
                    <div>
                        <p class="mb-0"><strong>品质</strong></p>
                        <p class="mb-0">正规品质保障</p>
                    </div>
                </li>
            </ul>
            <!--中间分隔线-->
            <div class="f-line"></div>
            <!--第三行-->
            <div class="d-md-flex justify-content-around pt-4">
                <ul class="list-unstyled pl-5">
                    <li class="font-weight-bold">新手指南</li>
                    <li><a href="#">购物流程</a></li>
                    <li><a href="#">会员介绍</a></li>
                    <li><a href="#">积分制度</a></li>
                </ul>
                <ul class="list-unstyled">
                    <li class="font-weight-bold">物流配送</li>
                    <li><a href="#">配送服务</a></li>
                    <li><a href="#">验货签收</a></li>
                    <li><a href="#">合作快递</a></li>
                </ul>
                <ul class="list-unstyled">
                    <li class="font-weight-bold">支付方式</li>
                    <li><a href="#">货到付款</a></li>
                    <li><a href="#">在线支付</a></li>
                    <li><a href="#">现金账户</a></li>
                </ul>
                <ul class="list-unstyled">
                    <li class="font-weight-bold">售后服务</li>
                    <li><a href="#">赔偿承诺</a></li>
                    <li><a href="#">发票制度</a></li>
                    <li><a href="#">退货政策</a></li>
                </ul>
                <ul class="list-unstyled">
                    <li class="font-weight-bold">常见问题</li>
                    <li><a href="#">购物问题</a></li>
                    <li><a href="#">账户安全</a></li>
                </ul>
                <ul class="list-unstyled">
                    <li class="font-weight-bold">联系我们</li>
                    <li><a href="#">联系客服</a></li>
                    <li><a href="#">意见反馈</a></li>
                </ul>
                <div class="QR_code bg-white p-1">
                    <img src="img/index/二维码.png">
                </div>
            </div>
        </div>
    </div>
    <div class="footer2 d-md-none d-sm-block">
        <p>Copyright  © 2019  宠物用品商城  All rights reserved. 本网站为演示模板，商品不可购买</p>
    </div>
</div>
<script src="js/regist1.js"></script>

</body>
</html>
