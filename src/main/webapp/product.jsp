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
    <link rel="stylesheet" href="static/css/product_details.css">
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
                    <li><a href="index.jsp">首页</a></li>
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
    <!--面包屑导航 -->
    <ul class="breadcrumb mx-auto mt-3">
        <li class="breadcrumb-item"><a href="index.jsp"><img src="img/pro_details/shouye.svg">首页</a></li>
        <li class="breadcrumb-item"><a href="zs_area.jsp">主食专区</a></li>
        <li class="breadcrumb-item"><a href="cat_area.jsp">猫咪主食</a></li>
        <li class="breadcrumb-item">顺口味 无尘豆腐猫砂6L 快速除臭结团</li>
    </ul>
    <!-- 导航下的大屏幕主体内容-->
    <div class="main">
        <!--左侧产品描述-->
        <div class="left_pro row m-0">
            <!-- 产品图片 -->
            <div class="left_pic col-5 p-0">
                <!-- 产品图片 -->
                <div class="pic_big">
                    <div><img class="w-100" src="img/pro_details/maosha_lg.jpg"></div>
                    <div class="pic_sm">
                        <ul class="d-flex list-unstyled">
                            <li><a href="#"><img class="w-100" src="img/index/product/dog_pic0101_sm.jpg"></a></li>
                            <li><a href="#"><img class="w-100" src="img/index/product/dog_pic0102_sm.jpg"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--产品购买信息-->
            <div class="left_intr col-5 p-0">
                <div>
                    <!--标题-->
                    <p>顺口味 无尘豆腐猫砂6L 快速除臭结团</p>
                    <!--下划线-->
                    <div class="my_line"></div>
                    <!--规格说明-->
                    <p>
                        品牌: hipidog/嬉皮狗
                        <br>
                        物理形态: 其他
                        <br>
                        适用对象: 通用
                    </p>
                    <!--价格-->
                    <p>¥29.00</p>
                    <!--口味种类-->
                    <p>口味<a href="javascript:;" class="ck_color">绿茶味</a><a class="unck_color" href="javascript:;">蜜桃味</a></p>
                    <!--立即购买+数量-->
                    <div class="d-flex">
                        <a href="#">立即购买</a>
                        <div class="d-flex"><button>-</button><input type="text" value="1"><button>+</button></div>
                    </div>
                    <p>商品编号： 00010011 </p>
                    <p>分类：<a href="#">狗狗主粮, 猫咪主粮, 猫咪主食</a></p>
                    <a href="#"><img src="img/pro_details/shoucang.svg">收藏</a>
                </div>
            </div>
            <!--详情信息和客户评价-->
            <div class="xq col-12 p-0">
                <a href="javascript:;" onmouseover="change(0)" class="det_content">详情信息</a>
                <a href="javascript:;" onmouseover="change(1)"class="evaluate">客户评价</a>
            </div>
            <!--详情信息内容-->
            <div id="det_content">
                <img class="w-100"src="img/pro_details/detail_01.jpg">
            </div>
            <!--客户评价内容-->
            <div id="evaluate" class="hide">
                <p>
                    目前还未有评论
                    <br>
                    只有买过此商品的客户登录后才能发表评论 <br>
                </p>
            </div>
        </div>
        <!--右侧相关推荐-->
        <div class="right_intr ">
            <div class="style1"><img src="img/other/zan.png"><span>相关推荐</span></div>
            <!--推荐产品中的详情介绍 -->
            <div class="pro_intr">
                <div class="row mx-0  mt-3">
                    <div class="col-4 px-1">
                        <img class="w-100" src="img/other/other3.jpg">
                    </div>
                    <div class="col-8 pl-1  details">
                        <a href="#">猫用羊奶粉新生体弱生病猫咪宠物适用</a>
                        <div>¥68.00</div >
                        <button>立即购买</button>
                    </div>
                </div>
                <div class="row mx-0  mt-3">
                    <div class="col-4 px-1">
                        <img class="w-100" src="img/other/other5.jpg">
                    </div>
                    <div class="col-8 pl-1  details">
                        <a href="#">麦富迪 宠物猫粮藻趣儿 金枪鱼猫粮</a>
                        <div>¥255.00</div >
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
    <!-- 导航下的中小屏幕主体内容-->
    <div class="main_sd">
        <!--产品图片信息-->
        <div class="row d-lg-none">
            <!--大图-->
            <div class="col-12 pic_big">
                <div class="w-75 mx-auto">
                    <img class="w-100 img_lg" src="img/pro_details/maosha_lg.jpg">
                </div>
            </div>
            <!--小图-->
            <div class="col-12 pic_sm">
                <ul class="d-flex list-unstyled w-75 mx-auto">
                    <li><a href="javascript:;"><img class="w-100 img_small" data-toggle="img/pro_details/maosha_lg.jpg" src="img/index/product/dog_pic0101_sm.jpg"></a></li>
                    <li><a href="javascript:;"><img class="w-100 img_small" data-toggle="img/pro_details/maosha2_lg.jpg" src="img/index/product/dog_pic0102_sm.jpg"></a></li>
                </ul>
            </div>
            <!--产品购买信息-->
            <div class="left_intr col-12 p-0">
                <div class="w-75 mx-auto">
                    <!--标题-->
                    <p>顺口味 无尘豆腐猫砂6L 快速除臭结团</p>
                    <!--下划线-->
                    <div class="my_line"></div>
                    <!--规格说明-->
                    <p>
                        品牌: hipidog/嬉皮狗
                        <br>
                        物理形态: 其他
                        <br>
                        适用对象: 通用
                    </p>
                    <!--价格-->
                    <p>¥29.00</p>
                    <!--口味种类-->
                    <p>口味<a href="javascript:;" class="ck_color">绿茶味</a><a class="unck_color" href="javascript:;">蜜桃味</a></p>
                    <!--立即购买+数量-->
                    <div class="d-flex">
                        <a href="#">立即购买</a>
                        <div class="d-flex"><button>-</button><input type="text" value="1"><button>+</button></div>
                    </div>
                    <p>商品编号： 00010011 </p>
                    <p>分类：<a href="#">狗狗主粮, 猫咪主粮, 猫咪主食</a></p>
                    <a href="#"><img src="img/pro_details/shoucang.svg">收藏</a>
                </div>
            </div>
            <!--详情信息和客户评价-->
            <div class="w-75 mx-auto mt-3">
                <div class="xq_sd col-12 p-0">
                    <a href="javascript:;">详情信息</a>
                    <a href="javascript:;">客户评价</a>
                </div>
            </div>
            <!--详情信息内容-->
            <div class="w-75 mx-auto">
                <img class="w-100"src="img/pro_details/detail_01.jpg">
            </div>
            <!--用户评价-->
            <div  class="w-75 mx-auto yh_pj hide">
                <p>
                    目前还未有评论
                    <br>
                    只有买过此商品的客户登录后才能发表评论 <br>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- 大小图切换 -->
<script>
    var imgs=document.getElementsByClassName("img_small");
    console.log(imgs)
    var img_lg=document.getElementsByClassName("img_lg")[0];
    for(var img of imgs){
        console.log(img.getAttribute("data-toggle"))
        img.onclick=function(){
            var img=this;
            var i=img.getAttribute("data-toggle")
            img_lg.setAttribute("src",i);

        }
    }
</script>
<!--口味切换JS代码-->
<script>
    //查找触发事件的元素
    var as=document.querySelectorAll(".left_intr>div>p:nth-child(5) a");
    //  console.log(as);
    // 绑定事件
    for(var a of as){
        a.onclick=function(){
            var a=this;
            if(a.innerHTML==="绿茶味"){
                //如果当前是ck_color样式  就选unck_color样式，并且保证a,b不能重复选
                if(a.className==="ck_color"){
                    a.className="unck_color";
                    a.nextElementSibling.className="ck_color";
                }else{
                    a.className="ck_color";
                    a.nextElementSibling.className="unck_color";
                }

            }else{ //否则蜜桃味
                //如果当前是unck_color样式  就选ck_color样式，并且保证a,b不能重复选
                if(a.className==="ck_color"){
                    a.className="unck_color";
                    a.previousElementSibling.className="ck_color";
                }else{
                    a.className="ck_color";
                    a.previousElementSibling.className="unck_color";
                }
            }

        }
    }
</script>
<!--购物车添加数量-->
<script>
    //  找到left_intr类下的子元素button
    var btns=document.querySelectorAll(".left_intr button");
    //  console.log(btns);
    //2. 遍历btns
    for(var btn of btns){
        //--每遍历一个按钮，就为其绑定单击事件处理函数
        btn.onclick=function(){
            //所有事件处理函数中的this，永远指.前的当前元素对象
            var btn=this;
            //3. 查找要修改的元素
            var inpt=document.querySelector(".left_intr input");
            //          console.log(inpt);
            var n=parseInt(inpt.value);
            //--如果btn的内容是+,执行加法运算
            if(btn.innerHTML==="+"){
                n++;
            }else if(n>1){
                n--;
            }
            //最后把修改后的n放入input中
            inpt.value=n;
        }


    }
</script>
<!--详情信息和客户评价模块的JS功能实现-->
<script>
    //大屏幕时，实现情信息和客户评价模块js功能实现
    function change(num) {
        //获取触发事件的元素
        var as = document.querySelectorAll(".xq>a");
        // console.log(as);
        // 遍历数组
        for (var i = 0; i < as.length; i++) {
            // 绑定事件处理
            var div = document.getElementById(as[i].className);
            div.className = 'hide';
            //console.log()
            if (num === i) {
                div.className = "";
            }
        }
    }
</script>
<!--引入脚部footer  -->
<!--小屏点击屏幕隐藏功能JS-->
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
