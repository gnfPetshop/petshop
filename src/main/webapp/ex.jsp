<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<div>
    <div>
        <img class="w-100 img_lg" src="img/pro_details/maosha_lg.jpg">
    </div>
</div>
<!--小图-->
<div>
    <ul>
        <li><a href="javascript:;"><img class="w-100 img_small" data-toggle="img/pro_details/maosha_lg.jpg" src="img/index/product/dog_pic0101_sm.jpg"></a></li>
        <li><a href="javascript:;"><img class="w-100 img_small" data-toggle="img/pro_details/maosha2_lg.jpg" src="img/index/product/dog_pic0102_sm.jpg"></a></li>
    </ul>
</div>
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
</body>
</html>

