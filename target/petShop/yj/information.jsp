<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>个人资料</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/infstyle.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">
    <script type="text/javascript" src="../dist/distpicker.data.js"></script>
    <script type="text/javascript" src="../dist/distpicker.js"></script>
    <style type="text/css">
        .am-form-content select{
            width: 229px;
            display: inline-block;
        }
    </style>

    <script type="text/javascript">

        var id=0;

        $(function () {
            $.getJSON("../users/queryUsers",function (data) {
                id = data.id;
                $(".yhm").html(data.username);
                $("#username").val(data.username);
                $("#account").val(data.account);

                if (data.sex==0){
                    $("input[name='sex'][value=0]").attr("checked",true);
                } else if (data.sex==1) {
                    $("input[name='sex'][value=1]").attr("checked",true);
                }else{
                    $("input[name='sex'][value=2]").attr("checked",true);
                }

                var arr = data.address.split("/");
                $(".am-form-group select:first-of-type").val(arr[0]);
                $(".shi").val(arr[1]);
                $(".xian").val(arr[2]);

                $("#user-phone").val(data.tel);
                $("#user-email").val(data.email);
            })
            $(".saveupdate").click(function () {
                var account = $("#account").val();
                var username = $("#username").val();
                var sex = $("input[name='sex'][checked]").val();
                var tel = $("#user-phone").val();
                var email = $("#user-email").val();
                var address = $(".sheng").val()+"/"+$(".shi").val()+"/"+$(".xian").val();
                $.getJSON("../users/updateUsers",{"id":id,"account":account,"username":username,"sex":sex,"tel":tel,"email":email,"address":address},function (data) {
                    if (data){
                        alert("修改成功");
                    } else{
                        alert("修改失败");
                    }
                })
            })
        })

    </script>
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">

    <!--顶部登录条top_bar-->
    <!--大屏时显示-->

    <!--header内容-->
    <!--第一模块大屏幕显示-->



    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-info">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
                    </div>
                    <hr/>

                    <!--头像 -->
                    <div class="user-infoPic">

                        <div class="filePic">
                            <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
                            <img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
                        </div>

                        <p class="am-form-help">头像</p>

                        <div class="info-m">
                            <div><b>用户名：<i class="yhm"></i></b></div>
                            <div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
						            </span>
                            </div>
                            <div class="u-safety">
                                <a href="safety.html">
                                    账户安全
                                    <span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--个人信息 -->
                    <div class="info-main">
                        <form class="am-form am-form-horizontal">

                            <div class="am-form-group">
                                <label for="username" class="am-form-label">昵称</label>
                                <div class="am-form-content">
                                    <input type="text" id="username" placeholder="nickname">

                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="account" class="am-form-label">姓名</label>
                                <div class="am-form-content">
                                    <input type="text" id="account" placeholder="name">

                                </div>
                            </div>

                            <div class="am-form-group">
                                <label class="am-form-label">性别</label>
                                <div class="am-form-content sex">
                                    <label class="am-radio-inline">
                                        <input type="radio" name="sex" value="1" data-am-ucheck> 男
                                    </label>
                                    <label class="am-radio-inline">
                                        <input type="radio" name="sex" value="0" data-am-ucheck> 女
                                    </label>
                                    <label class="am-radio-inline">
                                        <input type="radio" name="sex" value="2" data-am-ucheck> 保密
                                    </label>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label for="address" class="am-form-label">居住地</label>

                                    <div class="am-form-content address">
                                        <div data-toggle="distpicker">
                                            <select data-province="---- 选择省 ----" class="sheng"></select>
                                            <select data-city="---- 选择市 ----" class="shi"></select>
                                            <select data-district="---- 选择区 ----" class="xian"></select>
                                        </div>



                                </div>

                            </div>
                            <div class="am-form-group">
                                <label for="user-phone" class="am-form-label">电话</label>
                                <div class="am-form-content">
                                    <input id="user-phone" placeholder="telephonenumber" type="tel">

                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="user-email" class="am-form-label">电子邮件</label>
                                <div class="am-form-content">
                                    <input id="user-email" placeholder="Email" type="email">

                                </div>
                            </div>
                            <div class="am-form-group address">
                                <label for="user-address" class="am-form-label">收货地址</label>
                                <div class="am-form-content address">
                                    <a href="address.html">
                                        <p class="new-mu_l2cw">
                                            <span class="province">湖北</span>省
                                            <span class="city">武汉</span>市
                                            <span class="dist">洪山</span>区
                                            <span class="street">雄楚大道666号(中南财经政法大学)</span>
                                            <span class="am-icon-angle-right"></span>
                                        </p>
                                    </a>

                                </div>
                            </div>
                            <div class="am-form-group safety">
                                <label for="user-safety" class="am-form-label">账号安全</label>
                                <div class="am-form-content safety">
                                    <a href="safety.html">

                                        <span class="am-icon-angle-right"></span>

                                    </a>

                                </div>
                            </div>
                            <div class="info-btn">
                                <div class="am-btn am-btn-danger saveupdate">保存修改</div>
                            </div>

                        </form>
                    </div>

                </div>

            </div>
            <!--底部-->

        </div>


    </div>
</div>
</body>

</html>
