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
    <link rel="stylesheet" href="static/css/header.css">
    <link rel="stylesheet" href="static/css/yy_area.css">
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
                <a href="yj/index.jsp">个人中心</a>
                <a href="goodCar.jsp"><img src="img/login/gouwuche.svg"></a>
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
    <!--中小屏下拉菜单选项-->
    <div class="row d-lg-none d-block" id="menu">
        <ul class="list-unstyled text-center">
            <li class="col-12 active" id="L1">医药专区</li>
            <li class="col-12" id="L2"><a href="#">皮肤药剂</a></li>
            <li class="col-12" id="L3"><a href="#">胃肠调理</a></li>
        </ul>
    </div>
    <!--主体内容区域-->
    <div class="dog_area  mx-auto pt-5 row m-0">
        <!--左侧内容-->
        <div class="main_left col-lg-3 d-lg-block d-none px-0">
            <div>
                <div class="style1"><img src="img/other/y.png"><span>医药专区</span></div>
                <ul class="list-unstyled mt-2">
                    <li><a href="#">皮肤药剂</a></li>
                    <li><a href="#">胃肠调理</a></li>
                </ul>
            </div>
            <div>
                <div class="style1"><img src="img/other/zan.png"><span>相关推荐</span></div>
                <div class="pro_intr">
                    <div class="row mx-0  mt-3">
                        <div class="col-4 px-1">
                            <img class="w-100" src="img/other/other3.jpg">
                        </div>
                        <div class="col-8 pl-1  details">
                            <a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫粮</a>
                            <div>¥255.00</div >
                            <button>立即购买</button>
                        </div>
                    </div>
                    <div class="row mx-0  mt-3">
                        <div class="col-4 px-1">
                            <img class="w-100" src="img/other/other5.jpg">
                        </div>
                        <div class="col-8 pl-1  details">
                            <a href="#">猫用羊奶粉新生体弱生病猫咪宠物适用</a>
                            <div>¥68.00</div >
                            <button>立即购买</button>
                        </div>
                    </div>
                    <div class="row mx-0  mt-3">
                        <div class="col-4 px-1">
                            <img class="w-100" src="img/other/other1.jpg">
                        </div>
                        <div class="col-8 pl-1  details">
                            <a href="#">怡亲猫砂 除臭膨润土猫沙 宠物猫砂</a>
                            <div>¥29.00</div >
                            <button>立即购买</button>
                        </div>
                    </div>
                    <div class="row mx-0  mt-3">
                        <div class="col-4 px-1">
                            <img class="w-100" src="img/other/other2.jpg">
                        </div>
                        <div class="col-8 pl-1  details">
                            <a href="#">麦富迪 宠物狗粮 牛肉双拼通用成犬粮</a>
                            <div>¥68.00</div >
                            <button>立即购买</button>
                        </div>
                    </div>
                    <div class="row mx-0  mt-3">
                        <div class="col-4 px-1">
                            <img class="w-100" src="img/other/other4.jpg">
                        </div>
                        <div class="col-8 pl-1  details">
                            <a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒零食
                            </a>
                            <div>¥19.80</div >
                            <button>立即购买</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--右侧大屏幕时内容-->
        <div class="main_right col-lg-9 d-lg-block d-none px-0">
            <div class="row m-0">
                <div class="col-12 px-0 mb-4">
                    <img class="w-100" src="img/other/cat.jpg">
                </div>
                <div class="col-lg-3  p-0">
                    <a href="product_details.jsp"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='../img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                    <div class="product_title">
                        <p><a href="product_details.jsp">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                        <p>¥29.00</p>
                    </div>
                </div>
                <div class="col-lg-3  p-0">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg" onmouseover="this.src='img/index/product/dog_pic0202.jpg'" onmouseout="this.src='img/index/product/dog_pic0201.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                        <p>¥68.00</p>
                    </div>
                </div>
                <div class="col-lg-3  p-0">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0302.jpg'" onmouseout="this.src='img/index/product/dog_pic0301.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫..</a></p>
                        <p>¥255.00</p>
                    </div>
                </div>
                <div class="col-lg-3  p-0">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                        <p>¥98.00</p>
                    </div>
                </div>
                <div class="col-lg-3 p-0">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                        <p>¥239.00</p>
                    </div>
                </div>
                <div class="col-lg-3 p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                    <div class="product_title"><p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                        <p>¥88.00</p></div>

                </div>
                <div class="col-lg-3 p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/dog_pic0701.jpg'"></a>
                    <div class="product_title"><p><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                        <p>¥119.00</p></div>
                </div>
                <div class="col-lg-3 p-0" ><a href="#"><img class="w-100" src="img/index/product/dog_pic0801.jpg" onmouseover="this.src='img/index/product/dog_pic0802.jpg'" onmouseout="this.src='img/index/product/dog_pic0801.jpg'"></a>
                    <div class="product_title"><p><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                        <p>¥19.80</p></div>
                </div>
            </div>
        </div>
        <!--右侧小屏时内容-->
        <div class="main_right_sd d-lg-none d-block">
            <div class="row m-0">
                <div class="col-6 px-1 mb-3">
                    <a href="product_details.jsp"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                    <div class="product_title">
                        <p><a href="product_details.jsp">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                        <p>¥29.00</p>
                    </div>
                </div>
                <div class="col-6 px-1 mb-3">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg" onmouseover="this.src='img/index/product/dog_pic0202.jpg'" onmouseout="this.src='img/index/product/dog_pic0201.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                        <p>¥68.00</p>
                    </div>
                </div>
                <div class="col-6 px-1 mb-3">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0302.jpg'" onmouseout="this.src='img/index/product/dog_pic0301.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫..</a></p>
                        <p>¥255.00</p>
                    </div>
                </div>
                <div class="col-6 px-1 mb-3">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                        <p>¥98.00</p>
                    </div>
                </div>
                <div class="col-6 px-1 mb-3">
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                    <div class="product_title">
                        <p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                        <p>¥239.00</p>
                    </div>
                </div>
                <div class="col-6 px-1 mb-3"><a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                    <div class="product_title"><p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                        <p>¥88.00</p></div>

                </div>
                <div class="col-6 px-1 mb-3"><a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/dog_pic0701.jpg'"></a>
                    <div class="product_title"><p><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                        <p>¥119.00</p></div>
                </div>
                <div class="col-6 px-1 mb-3" ><a href="#"><img class="w-100" src=" img/index/product/dog_pic0801.jpg" onmouseover="this.src='img/index/product/dog_pic0802.jpg'" onmouseout="this.src='img/index/product/dog_pic0801.jpg'"></a>
                    <div class="product_title"><p><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                        <p>¥19.80</p></div>
                </div>
            </div>
        </div>
        <!--右下角分页-->
        <div class="my_page">
            <ul class="pagination d-flex" id="page">
                <li id="page_prev"><a data-toggle="turn" href="javascript:;">上一页</a></li>
                <li id="page1" class="checkbox"><a data-toggle="turn" class="active" href="javascript:;">1</a></li>
                <li id="page2"><a data-toggle="turn" href="javascript:;">2</a></li>
                <li id="page_next"><a data-toggle="turn" href="javascript:;">下一页</a></li>
            </ul>
        </div>
    </div>
</div>
<script src="static/js/common1.js"></script>
<!--引入脚部footer  -->
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
</body>
</html>
