<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-13
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery.min.js"></script>
    <script src="static/js/common1.js"></script>
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/index.css">
    <link rel="stylesheet" href="static/css/footer.css">
</head>
<body>
<!--大背景-->
<div class="container-fluid px-0">
    <!--header内容-->
    <!--第一模块大屏幕显示-->
    <div class="main1 bg_picture d-none d-lg-block">
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
            <!--侧边栏导航-->
            <div class="aside d-lg-block d-none">
                <ul>
                    <li class="d-flex">
                        <a href="#">
                            <img src="img/index/h_01.png">
                        </a>
                        <div>
                            <p><a href="#">狗狗专区</a></p>
                            <p><a href="#">狗狗主食</a><a href="#">狗狗零食</a></p>
                        </div>
                    </li>
                    <li class="d-flex">
                        <a href="#">
                            <img src="img/index/h_02.png">
                        </a>
                        <div>
                            <p><a href="#">猫咪专区</a></p>
                            <p><a href="#">主食</a><a href="#">零食</a><a href="#">医药</a><a href="#">日用</a></p>
                        </div>
                    </li>
                    <li class="d-flex">
                        <a href="#">
                            <img src="img/index/h_03.png">
                        </a>
                        <div>
                            <p><a href="#">主食专区</a></p>
                            <p><a href="#">幼犬狗粮</a><a href="#">幼猫猫粮</a></p>
                        </div>
                    </li>
                    <li class="d-flex">
                        <a href="#">
                            <img src="img/index/h_04.png">
                        </a>
                        <div>
                            <p><a href="#">医药专区</a></p>
                            <p><a href="#">驱虫药</a><a href="#">肠胃调理</a></p>
                        </div>
                    </li>
                    <li class="d-flex">
                        <a href="#">
                            <img src="img/index/h_05.png">
                        </a>
                        <div>
                            <p><a href="#">日用专区</a></p>
                            <p><a href="#">出行用品</a><a href="#">家居用品</a></p>
                        </div>
                    </li>
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
    <!--显示内容-->
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
    <!--第一模块中小屏幕时轮播图-->
    <div class=" main1_sd_carousel bg_picture d-block d-lg-none"></div>
    <!--大屏时宠物用品商城模块-->
    <div class="main2 d-lg-block d-none">
        <div>
            <p>宠物用品商城</p>
            <p>我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，您可以随心所欲创建区块、添加组件…</p>
        </div>
    </div>
    <!--大屏时品牌视频介绍模块-->
    <div class="main3 d-lg-block d-none">
        <div>
            <p>品牌视频介绍</p>
            <p>我们的流线式网页布局设计方案和可视化图文内容编辑模式让网站制作和维护成为一件轻松惬意的事。起飞页的核心竞争力来自于它集流线式布局方案与可视化内容编辑于一体，支持打字传图、自由拖拽，不需要专业编写代码，您可以随心所欲创建区块、添加组件…</p>
        </div>
        <div>
            <img src="img/index/dog.png">
        </div>
    </div>
    <!--中小屏时品牌视频介绍模块-->
    <div class="main3_sm d-lg-none d-block">
        <div class="brand_intr">
            <div><div class="line"></div></div>
            <div><p>品牌视频介绍</p><p>VIDEO</p></div>
            <div><div class="line"></div></div>
        </div>
        <div>
            <img class="w-100" src="img/index/dog.png">
        </div>
    </div>
    <!--大屏时宠物产品模块-->
    <div class="main4 mx-auto d-none d-lg-block">
        <!--狗狗专区主题-->
        <div class="row dog_module p-0">
            <!--横线-->
            <div class="col p-0">
                <div class="line"></div>
            </div>
            <!--狗狗专区标题-->
            <div class="col-3 p-0">
                <p>狗狗专区</p>
                <p>OG</p>
            </div>
            <!--横线-->
            <div class="col p-0">
                <div class="line"></div>
            </div>
        </div>
        <!--狗狗专区产品-->
        <div class="row product m-0">
            <div class="col-lg p-0">
                <a href="product_details.html"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                <div class="product_title">
                    <p><a href="product_details.html">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                    <p>¥29.00</p>
                </div>
            </div>
            <div class="col-lg p-0">
                <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg" onmouseover="this.src='img/index/product/dog_pic0202.jpg'" onmouseout="this.src='img/index/product/dog_pic0201.jpg'"></a>
                <div class="product_title">
                    <p><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                    <p>¥68.00</p>
                </div>
            </div>
            <div class="col-lg p-0">
                <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0302.jpg'" onmouseout="this.src='img/index/product/dog_pic0301.jpg'"></a>
                <div class="product_title">
                    <p><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫..</a></p>
                    <p>¥255.00</p>
                </div>
            </div>
            <div class="col-lg p-0">
                <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                <div class="product_title">
                    <p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                    <p>¥98.00</p>
                </div>
            </div>
            <div class="col-lg p-0">
                <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                <div class="product_title">
                    <p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                    <p>¥239.00</p>
                </div>
            </div>
        </div>
        <div class="row product m-0">
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                <div class="product_title"><p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                    <p>¥88.00</p></div>

            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/dog_pic0701.jpg'"></a>
                <div class="product_title"><p><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                    <p>¥119.00</p></div>
            </div>
            <div class="col-lg p-0" ><a href="#"><img class="w-100" src="img/index/product/dog_pic0801.jpg" onmouseover="this.src='img/index/product/dog_pic0802.jpg'" onmouseout="this.src='img/index/product/dog_pic0801.jpg'"></a>
                <div class="product_title"><p><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                    <p>¥19.80</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0901.jpg" onmouseover="this.src='img/index/product/dog_pic0902.jpg'" onmouseout="this.src='img/index/product/dog_pic0901.jpg'"></a>
                <div class="product_title"><p><a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a></p>
                    <p>¥159.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic1001.jpg" onmouseover="this.src='img/index/product/dog_pic1002.jpg'" onmouseout="this.src='img/index/product/dog_pic1001.jpg'"></a>
                <div class="product_title"><p><a href="#">维克 营养膏克补软膏发育宠狗用猫...</a></p>
                    <p>¥95.00</p></div>
            </div>
        </div>
        <div class="row m-0 mt-4">
            <div class="col-4 p-0">
                <a href="#">
                    <img class="w-100" src="img/index/dog_02.jpg">
                </a>
            </div>
            <div class="col-8 p-0">
                <a href="#">
                    <img  class="w-100" src="img/index/dog_01.jpg">
                </a>
            </div>
        </div>
        <!--猫咪专区主题-->
        <div class="row cat_module">
            <!--横线-->
            <div class="col p-0">
                <div class="line"></div>
            </div>
            <!--猫咪专区标题-->
            <div class="col-3 p-0">
                <p>猫咪专区</p>
                <p>AT</p>
            </div>
            <!--横线-->
            <div class="col p-0">
                <div class="line"></div>
            </div>
        </div>
        <!--猫咪专区产品-->
        <div class="row product m-0">
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                <div class="product_title"><p><a href="#">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                    <p>¥29.00</p></div></div>
            <div class="col-lg  p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                <div class="product_title"><p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                    <p>¥98.00</p></div>
            </div>
            <div class="col-lg p-0" ><a href="#"><img class="w-100" src="img/index/product/cat_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/cat_pic0301.jpg'"></a>
                <div class="product_title"><p><a href="#">宠物航空箱狗狗猫咪外出箱托运旅行...</a></p>
                    <p>¥98.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                <div class="product_title"><p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                    <p>¥239.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="img/index/product/cat_pic0501.jpg" onmouseover="this.src='img/index/product/cat_pic0502.jpg'" onmouseout="this.src='img/index/product/cat_pic0501.jpg'"></a>
                <div class="product_title"><p><a href="#">宠物窝猫狗睡袋宠物猫咪垫子四季通...</a></p>
                    <p>¥99.00</p></div>
            </div>
        </div>
        <div class="row product  m-0">
            <div class="col-lg  p-0"><a href="#"><img class="w-100" src="../img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                <div class="product_title"><p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                    <p>¥88.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="../img/index/product/cat_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/cat_pic0701.jpg'"></a>
                <div class="product_title"><p><a href="#">猫用羊奶粉新生体弱生病猫咪宠物适...</a></p>
                    <p>¥68.00</p></div>
            </div>
            <div class="col-lg p-0" ><a href="#"><img class="w-100" src="../img/index/product/cat_pic0801.jpg" onmouseover="this.src='img/index/product/cat_pic0802.jpg'" onmouseout="this.src='img/index/product/cat_pic0801.jpg'"></a>
                <div class="product_title"><p><a href="#">怡亲猫砂 除臭膨润土猫沙 宠物猫...</a></p>
                    <p>¥29.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="../img/index/product/dog_pic0901.jpg" onmouseover="this.src='img/index/product/dog_pic0902.jpg'" onmouseout="this.src='img/index/product/dog_pic0901.jpg'"></a>
                <div class="product_title"><p><a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a></p>
                    <p>¥159.00</p></div>
            </div>
            <div class="col-lg p-0"><a href="#"><img class="w-100" src="../img/index/product/dog_pic1001.jpg" onmouseover="this.src='img/index/product/dog_pic1002.jpg'" onmouseout="this.src='img/index/product/dog_pic1001.jpg'"></a>
                <div class="product_title"><p><a href="#">维克 营养膏克补软膏发育宠狗用猫...</a></p>
                    <p>¥95.00</p></div>
            </div>
        </div>
        <div class="row m-0 mt-4">
            <div class="col-8 p-0">
                <a href="#">
                    <img class="w-100" src="img/index/cat_01.jpg">
                </a>
            </div>
            <div class="col-4 p-0">
                <a href="#">
                    <img  class="w-100" src="img/index/cat's hose.jpg">
                </a>
            </div>
        </div>
        <!--猜你喜欢-->
        <div class="may_like">
            <img src="img/index/maoyin2.png">
            <span>猜你喜欢</span>
            <img src="img/index/maoyin.png">
        </div>
        <div class="wrap" >
            <ul>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic1001.jpg"></a>
                    <p><a href="#">维克 营养膏克补软膏发育宠...</a></p>
                    <p>¥95.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0901.jpg"></a>
                    <p>
                        <a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a>
                    </p>
                    <p>¥159.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0801.jpg"></a>
                    <p><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                    <p>¥19.80</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0701.jpg"></a>
                    <p><a href="#">猫用羊奶粉新生体弱生病猫咪宠物适...</a></p>
                    <p>¥68.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg"></a>
                    <p><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                    <p>¥119.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"></a>
                    <p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                    <p>¥88.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0501.jpg"></a>
                    <p><a href="#">宠物窝猫狗睡袋宠物猫咪垫子四季通...</a></p>
                    <p>¥99.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0301.jpg"></a>
                    <p><a href="#">宠物航空箱狗狗猫咪外出箱托运旅行...</a></p>
                    <p>¥98.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg"></a>
                    <p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                    <p>¥239.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg"></a>
                    <p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                    <p>¥98.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg"></a>
                    <p><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫...</a></p>
                    <p>¥255.00</p>
                </li>
                <li>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg"></a>
                    <p><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                    <p>¥68.00</p>
                </li>
            </ul>
        </div>
    </div>
    <!--中小屏时宠物产品模块-->
    <div class="main4_sm mx-auto  d-block d-lg-none">
        <div class="brand_intr">
            <div><div class="line"></div></div>
            <div><p>狗狗专区</p><p>DOG</p></div>
            <div><div class="line"></div></div>
        </div>
        <!--狗狗专区产品-->
        <div class="row m-0 pet_module px-5">
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="product_details.html"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="product_details.html">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                    <p class="text-center mb-0 mt-1">¥29.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg" onmouseover="this.src='img/index/product/dog_pic0202.jpg'" onmouseout="this.src='img/index/product/dog_pic0201.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                    <p class="text-center mb-0 mt-1">¥68.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0302.jpg'" onmouseout="this.src='img/index/product/dog_pic0301.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫...</a></p>
                    <p class="text-center mb-0 mt-1">¥255.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                    <p class="text-center mb-0 mt-1">¥98.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                    <p class="text-center mb-0 mt-1">¥239.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                    <p class="text-center mb-0 mt-1">¥88.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/dog_pic0701.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                    <p class="text-center mb-0 mt-1">¥119.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0801.jpg" onmouseover="this.src='img/index/product/dog_pic0802.jpg'" onmouseout="this.src='img/index/product/dog_pic0801.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                    <p class="text-center mb-0 mt-1">¥19.80</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0901.jpg" onmouseover="this.src='img/index/product/dog_pic0902.jpg'" onmouseout="this.src='img/index/product/dog_pic0901.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a></p>
                    <p class="text-center mb-0 mt-1">¥159.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic1001.jpg" onmouseover="this.src='img/index/product/dog_pic1002.jpg'" onmouseout="this.src='img/index/product/dog_pic1001.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">维克 营养膏克补软膏发育宠狗用猫...</a></p>
                    <p class="text-center mb-0 mt-1">¥95.00</p>
                </div>
            </div>
            <div class="col-12 px-1 mt-3 mb-5">
                <a href="#"><img  class="w-100" src="img/index/dog_01.jpg"></a>
            </div>
        </div>
        <!--猫咪专区主题-->
        <div class="brand_intr">
            <div><div class="line"></div></div>
            <div><p>猫咪专区</p><p>CAT</p></div>
            <div><div class="line"></div></div>
        </div>
        <div class="row m-0 pet_module px-5">
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="product_details.html"><img class="w-100" src="img/index/product/dog_pic0101.jpg"  onmouseover="this.src='img/index/product/dog_pic0102.jpg'" onmouseout="this.src='img/index/product/dog_pic0101.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="product_details.html">顺口味 无尘豆腐猫砂6L 快速除...</a></p>
                    <p class="text-center mb-0 mt-1">¥29.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg" onmouseover="this.src='img/index/product/dog_pic0402.jpg'" onmouseout="this.src='img/index/product/dog_pic0401.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">维斯康 VITSCAN宠物保健品....</a></p>
                    <p class="text-center mb-0 mt-1">¥98.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0301.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/cat_pic0301.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">宠物航空箱狗狗猫咪外出箱托运旅行...</a></p>
                    <p class="text-center mb-0 mt-1">¥98.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg" onmouseover="this.src='img/index/product/dog_pic0502.jpg'" onmouseout="this.src='img/index/product/dog_pic0501.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                    <p class="text-center mb-0 mt-1">¥239.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0501.jpg" onmouseover="this.src='img/index/product/cat_pic0502.jpg'" onmouseout="this.src='img/index/product/cat_pic0501.jpg'"></a>

                    <p class="text-center mb-0 mt-2"><a href="#">宠物窝猫狗睡袋宠物猫咪垫子四季通...</a></p>
                    <p class="text-center mb-0 mt-1">¥99.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"  onmouseover="this.src='img/index/product/dog_pic0602.jpg'" onmouseout="this.src='img/index/product/dog_pic0601.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                    <p class="text-center mb-0 mt-1">¥88.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0701.jpg" onmouseover="this.src='img/index/product/dog_pic0702.jpg'" onmouseout="this.src='img/index/product/cat_pic0701.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">猫用羊奶粉新生体弱生病猫咪宠物适...</a></p>
                    <p class="text-center mb-0 mt-1">¥68.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/cat_pic0801.jpg" onmouseover="this.src='img/index/product/cat_pic0802.jpg'" onmouseout="this.src='img/index/product/cat_pic0801.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">怡亲猫砂 除臭膨润土猫沙 宠物猫...</a></p>
                    <p class="text-center mb-0 mt-1">¥29.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic0901.jpg" onmouseover="this.src='img/index/product/dog_pic0902.jpg'" onmouseout="this.src='img/index/product/dog_pic0901.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a></p>
                    <p class="text-center mb-0 mt-1">¥159.00</p>
                </div>
            </div>
            <div class="col-6 px-1 mb-3">
                <div>
                    <a href="#"><img class="w-100" src="img/index/product/dog_pic1001.jpg" onmouseover="this.src='img/index/product/dog_pic1002.jpg'" onmouseout="this.src='img/index/product/dog_pic1001.jpg'"></a>
                    <p class="text-center mb-0 mt-2"><a href="#">维克 营养膏克补软膏发育宠狗用猫...</a></p>
                    <p class="text-center mb-0 mt-1">¥95.00</p>
                </div>
            </div>
            <div class="col-12 px-1 mb-5 mt-3">
                <a href="#"><img  class="w-100" src="img/index/cat_01.jpg"></a>
            </div>
            <!--猫咪专区产品-->
            <!--猜你喜欢-->
            <div class="may_like">
                <img src="img/index/maoyin2.png">
                <span>猜你喜欢</span>
                <img src="img/index/maoyin.png">
            </div>
            <div class="wrap" >
                <ul>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic1001.jpg"></a>
                        <p><a href="#">维克 营养膏克补软膏发育宠...</a></p>
                        <p>¥95.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0901.jpg"></a>
                        <p>
                            <a href="#">猫狗天然植物除耳螨滴耳液耳漂洗耳...</a>
                        </p>
                        <p>¥159.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0801.jpg"></a>
                        <p><a href="#">亚禾 幼犬小型大型犬狗咬洁齿骨棒...</a></p>
                        <p>¥19.80</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/cat_pic0701.jpg"></a>
                        <p><a href="#">猫用羊奶粉新生体弱生病猫咪宠物适...</a></p>
                        <p>¥68.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0701.jpg"></a>
                        <p><a href="#">福莱希 自动伸缩 宠物狗牵引绳遛...</a></p>
                        <p>¥119.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0601.jpg"></a>
                        <p><a href="#">乐妃猫爬架 磨爪猫咪玩具宠物休闲...</a></p>
                        <p>¥88.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/cat_pic0501.jpg"></a>
                        <p><a href="#">宠物窝猫狗睡袋宠物猫咪垫子四季通...</a></p>
                        <p>¥99.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/cat_pic0301.jpg"></a>
                        <p><a href="#">宠物航空箱狗狗猫咪外出箱托运旅行...</a></p>
                        <p>¥98.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0501.jpg"></a>
                        <p><a href="#">小佩饮水机 宠物自动喂食器智能饮...</a></p>
                        <p>¥239.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0401.jpg"></a>
                        <p><a href="#">维斯康 VITSCAN宠物保健品...</a></p>
                        <p>¥98.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0301.jpg"></a>
                        <p><a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫...</a></p>
                        <p>¥255.00</p>
                    </li>
                    <li>
                        <a href="#"><img class="w-100" src="img/index/product/dog_pic0201.jpg"></a>
                        <p><a href="#">麦富迪 宠物狗粮 牛肉双拼通用成...</a></p>
                        <p>¥68.00</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--固定的侧边栏导航my_aside-->
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
</div>
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
