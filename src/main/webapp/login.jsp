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
    <link rel="stylesheet" href="static/css/login.css">
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
                    <img src="../img/index/4pic.png">
                </a>
            </li>
        </ul>
    </div>
    <!--中间登录模块-->
    <div class="main_module row">
        <!--左边图片-->
        <div class="left_pic text-center col-lg-6 col-md-12">
            <div><img src="img/login/login_bg.jpg"></div>
        </div>
        <!--右侧登录-->
        <div class="right_login col-lg-6 col-md-12">
            <div class="text-left">
                <h3 class="mt-2 mb-4 text-center">商城登录</h3>
                <div>
                    <ul class="list-unstyled">
                        <li><input type="text" class="uname" id="phone" placeholder="手机号码"></li>
                        <li><input type="password" class="upwd" id="upwd" placeholder="请输入密码"></li>
                        <li>
                            <input type="checkbox" id="ck">
                            <label for="ck">记住我 ( 请在私人设备上使用此功能 )</label>
                        </li>
                        <li></li>
                        <li><button class="w-100" id="button">登录</button></li>
                        <li><button class="w-100" onclick="javascript:window.location.href='regist.html'">注册</button></li>
                        <li><span><a href="#">忘记密码?点这里找回</a></span></li>
                    </ul>
                </div>
                <div>
                    <p>用户注册/登录说明:</p>
                    <p>1、演示用户名：18123456789；密码： <span>aaa123456</span></p>
                    <p>2、商城不可注册，实际使用需单独购买<span>短信资源包</span></p>
                </div>
                <span id="phone_msg"></span>
                <span id="upwd_msg"></span>
            </div>
        </div>
    </div>
</div>
<footer>
    <iframe class="my_footer" src="footer.jsp" frameborder="0" scrolling="no"></iframe>
</footer>
<script src="js/login.js">


</script>
</body>
</html>

