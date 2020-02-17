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

    <title>修改密码</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/stepstyle.css" rel="stylesheet" type="text/css">


    <script type="text/javascript" src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">

    <script type="text/javascript">
        $(function () {
            var reg = /^[A-Za-z0-9]{4,40}$/;
            $("#user-new-password").blur(function () {
                var pwd = $("#user-new-password").val();
                if (!reg.test(pwd)) {
                    $(".tishi1").html("格式不对，请重新输入！");
                    $("#user-new-password").val("")
                    $("#user-new-password").css("border","1px solid red");
                }
            })
            $("#user-new-password").focus(function () {
                $(".tishi1").html("");
                $("#user-new-password").css("border","1px solid #CCCCCC");
            })

            $("#user-confirm-password").blur(function () {
                var pwd2 = $("#user-confirm-password").val();
                if ($("#user-new-password").val()!="") {
                    if (pwd2 !=$("#user-new-password").val()) {
                        $(".tishi2").html("密码不一致，重新输入！");
                        $("#user-confirm-password").val("");
                        $("#user-new-password").css("border","1px solid red");
                    }
                }
            })
            $("#user-confirm-password").focus(function () {
                $(".tishi2").html("");
                $("#user-confirm-password").css("border","1px solid #CCCCCC");
            })



            $(".saveupdate").click(function () {
                var oldpwd = $("#user-old-password").val();
                var newpwd = $("#user-new-password").val();
                if ( oldpwd!=""&&newpwd!=""&&$("#user-confirm-password").val()!="") {
                $.getJSON("../users/updatePwd",{"id":1,"oldpwd":oldpwd,"newpwd":newpwd},function (data) {
                    if (data){
                        alert("修改成功！");
                        $(".step-2 .u-stage-icon-inner").css({"background-color":"#27C37C","border-radius":"10px"});
                        $("#user-new-password").val("");
                        $("#user-old-password").val("");
                        $("#user-confirm-password").val("");
                    } else{
                        alert("原密码填写不正确！");
                    }
                })
                } else{
                    alert("请填写完整");
                }
            })

        })
    </script>
</head>

<body>
<!--头 -->
<div class="container-fluid px-0">
    <!--头部背景颜色-->

    <!--顶部登录条top_bar-->



    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
                </div>
                <hr/>
                <!--进度条-->
                <div class="m-progress">
                    <div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">重置密码</p>
                            </span>
                        <span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg2"></em></i>
                                <p class="stage-name">完成</p>
                            </span>
                        <span class="u-progress-placeholder"></span>
                    </div>
                    <div class="u-progress-bar total-steps-2">
                        <div class="u-progress-bar-inner"></div>
                    </div>
                </div>
                <form class="am-form am-form-horizontal">
                    <div class="am-form-group">
                        <label for="user-old-password" class="am-form-label">原密码</label>
                        <div class="am-form-content">
                            <input type="password" id="user-old-password" placeholder="请输入原登录密码">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-new-password" class="am-form-label">新密码</label>
                        <div class="am-form-content">
                            <input type="password" id="user-new-password" placeholder="由数字、字母组合">
                            <label class="tishi1" style="color: red;"></label>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-confirm-password" class="am-form-label">确认密码</label>
                        <div class="am-form-content">
                            <input type="password" id="user-confirm-password" placeholder="请再次输入上面的密码">
                            <label class="tishi2" style="color: red;"></label>
                        </div>
                    </div>
                    <div class="info-btn">
                        <div class="am-btn am-btn-danger saveupdate">保存修改</div>
                    </div>

                </form>

            </div>
            <!--底部-->

        </div>


    </div>
</div>
</body>

</html>