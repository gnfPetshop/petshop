<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>地址管理</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/amazeui/2.5.1/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/addstyle.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="https://cdn.bootcss.com/amazeui/2.5.1/js/amazeui.min.js"></script>

    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link type="text/css" rel="stylesheet" href="../css/comm.css">
    <!--   <link rel="stylesheet" href="css/login.css"> -->
    <link type="text/css" rel="stylesheet" href="../css/header.css">
    <script type="text/javascript" src="../dist/distpicker.data.js"></script>
    <script type="text/javascript" src="../dist/distpicker.js"></script>
</head>

<script type="text/javascript">
    $('#target').distpicker();
    
    $(function () {
        var $ww = $(window).width();
        if($ww>640) {
            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
        }
        queryAddress();

        $(".userAddress").on('click','.new-option-r',function () {
            var id =   $(this).parent('.user-addresslist').find("input[type=hidden]").val()
            $.getJSON("../address/updateAddress",{"id":id},function (data) {
                if (data){
                    console("默认发货地址修改成功！");
                }
            })
            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
        })

        $(".save").click(function () {
            var ordername = $("#user-name").val();
            var tel = $("#user-phone").val();
            var address = $(".sheng").val()+"/"+$(".shi").val()+"/"+$(".xian").val()+"/"+$("#user-intro").val();
            $.getJSON("../address/add",{"userid":1,"address":address,"ordername":ordername,"tel":tel,"used":0},function (data) {
                if (data){
                    alert("添加成功");
                    $("ul").empty();
                    queryAddress();
                    $("form")[0].reset();
                }
            })
        })
    })
    function delClick(id){
        if(confirm("确认删除吗")){
            $.getJSON("../address/del",{"id":id},function(data){

                if(data){
                    alert("删除成功");
                    window.location.reload();
                }else{
                    alert("默认地址不能删除")
                }
            })
        }
    }
    function queryAddress() {
        $.getJSON("../address/queryAddress",{"userid":1},function (data) {
            var str = "";

            $(data).each(function () {

                var arr = this.address.split("/");
                var sheng = arr[0].substring(0,arr[0].length-1);
                var shi = arr[1].substring(0,arr[1].length-1);
                var xian =arr[2].substring(0,arr[2].length-1);
                var xiangxi = arr[3]

                if (this.used==1) {
                    str +=" <li class=\"user-addresslist defaultAddr\">\n" +
                        "                            <span class=\"new-option-r\"><i class=\"am-icon-check-circle\"></i>默认地址</span>\n" +
                        "<input type='hidden' name='id' value=\""+this.id+"\">"+
                        "                            <p class=\"new-tit new-p-re\">\n" +
                        "                                <span class=\"new-txt\">"+this.ordername+"</span>\n" +
                        "                                <span class=\"new-txt-rd2\">"+this.tel+"</span>\n" +
                        "                            </p>\n" +
                        "                            <div class=\"new-mu_l2a new-p-re\">\n" +
                        "                                <p class=\"new-mu_l2cw\">\n" +
                        "                                    <span class=\"title\">地址：</span>\n" +
                        "                                    <span class=\"province\">"+sheng+"</span>省\n" +
                        "                                    <span class=\"city\">"+shi+"</span>市\n" +
                        "                                    <span class=\"dist\">"+xian+"</span>区\n" +
                        "                                    <span class=\"street\">"+xiangxi+"</span></p>\n" +
                        "                            </div>\n" +
                        "                            <div class=\"new-addr-btn\">\n" +
                        "                                <a href=\"#\"><i class=\"am-icon-edit\"></i>编辑</a>\n" +
                        "                                <span class=\"new-addr-bar\">|</span>\n" +
                        "                                <a href=\"javascript:void(0);\" onclick=\"delClick("+this.id+");\"><i class=\"am-icon-trash\"></i>删除</a>\n" +
                        "                            </div>\n" +
                        "                        </li>"
                }else{
                    str +=" <li class=\"user-addresslist \">\n" +
                        "                            <span class=\"new-option-r\"><i class=\"am-icon-check-circle\"></i>默认地址</span>\n" +
                        "<input type='hidden' name='id' value=\""+this.id+"\">"+
                        "                            <p class=\"new-tit new-p-re\">\n" +
                        "                                <span class=\"new-txt\">"+this.ordername+"</span>\n" +
                        "                                <span class=\"new-txt-rd2\">"+this.tel+"</span>\n" +
                        "                            </p>\n" +
                        "                            <div class=\"new-mu_l2a new-p-re\">\n" +
                        "                                <p class=\"new-mu_l2cw\">\n" +
                        "                                    <span class=\"title\">地址：</span>\n" +
                        "                                    <span class=\"province\">"+sheng+"</span>省\n" +
                        "                                    <span class=\"city\">"+shi+"</span>市\n" +
                        "                                    <span class=\"dist\">"+xian+"</span>区\n" +
                        "                                    <span class=\"street\">"+xiangxi+"</span></p>\n" +
                        "                            </div>\n" +
                        "                            <div class=\"new-addr-btn\">\n" +
                        "                                <a href=\"#\"><i class=\"am-icon-edit\"></i>编辑</a>\n" +
                        "                                <span class=\"new-addr-bar\">|</span>\n" +
                        "                                <a href=\"javascript:void(0);\" onclick=\"delClick(this);\"><i class=\"am-icon-trash\"></i>删除</a>\n" +
                        "                            </div>\n" +
                        "                        </li>"
                }
            })
            $("ul").append(str);
        })
    }
</script>
<body>
<!--头 -->

<div class="container-fluid px-0">





    <div class="center">
        <div class="col-main">
            <div class="main-wrap">

                <div class="user-address">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
                    </div>
                    <hr/>
                    <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails userAddress">

                       <%-- <li class="user-addresslist defaultAddr">
                            <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
                            <p class="new-tit new-p-re">
                                <span class="new-txt">小叮当</span>
                                <span class="new-txt-rd2">159****1622</span>
                            </p>
                            <div class="new-mu_l2a new-p-re">
                                <p class="new-mu_l2cw">
                                    <span class="title">地址：</span>
                                    <span class="province">湖北</span>省
                                    <span class="city">武汉</span>市
                                    <span class="dist">洪山</span>区
                                    <span class="street">雄楚大道666号(中南财经政法大学)</span></p>
                            </div>
                            <div class="new-addr-btn">
                                <a href="#"><i class="am-icon-edit"></i>编辑</a>
                                <span class="new-addr-bar">|</span>
                                <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
                            </div>
                        </li>--%>
                        
                    </ul>
                    <div class="clear"></div>
                    <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                    <!--例子-->
                    <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                        <div class="add-dress">

                            <!--标题 -->
                            <div class="am-cf am-padding">
                                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
                            </div>
                            <hr/>

                            <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                                <form class="am-form am-form-horizontal">

                                    <div class="am-form-group">
                                        <label for="user-name" class="am-form-label">收货人</label>
                                        <div class="am-form-content">
                                            <input type="text" id="user-name" placeholder="收货人">
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-phone" class="am-form-label">手机号码</label>
                                        <div class="am-form-content">
                                            <input id="user-phone" placeholder="手机号必填" type="tel">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-address" class="am-form-label">所在地</label>
                                        <div class="am-form-content address">
                                            <div data-toggle="distpicker">
                                                <select data-province="---- 选择省 ----" class="sheng"></select>
                                                <select data-city="---- 选择市 ----" class="shi"></select>
                                                <select data-district="---- 选择区 ----" class="xian"></select>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-intro" class="am-form-label">详细地址</label>
                                        <div class="am-form-content">
                                            <textarea class="xiangxi" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                                            <small>100字以内写出你的详细地址...</small>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-u-sm-9 am-u-sm-push-3">
                                            <a class="am-btn am-btn-danger save" >保存</a>
                                            <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>

                    </div>

                </div>

                <%--<script type="text/javascript">
                    $(document).ready(function() {
                        $(".new-option-r").click(function() {
                            $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                        });

                        var $ww = $(window).width();
                        if($ww>640) {
                            $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                        }

                    })
                </script>--%>

                <div class="clear"></div>
            </div>

        </div>
    </div>
</div>
</body>

</html>