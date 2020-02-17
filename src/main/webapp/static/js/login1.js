//!--验证--
 	// 手机号登录验证
//手机号非空判断
 phone.onblur=function(){
     if(!phone.value){
			  phone_msg.innerHTML="手机号不能为空";
				phone_msg.style.color="red";
		 
		 }else{
		    phone_msg.innerHTML="";
		 }
	}
//密码非空判断
upwd.onblur=function(){
	      if(!upwd.value){
	 		  upwd_msg.innerHTML="密码不能为空";
              upwd_msg.style.color="red";
		 
		 }else{
		   upwd_msg.innerHTML="";
		 }
 }
//ajax发送请求，连接数据库，验证账号登录模块
  var btn=document.getElementById("button");
  btn.onclick=function(){
	   //获取数据
		 var p_hone=phone.value;
		 var u_pwd=upwd.value;
    //创建xhr对象
		 var xhr=new XMLHttpRequest();
    //绑定监听事件
		 xhr.onreadystatechange=function(){
       //判断readyState==4 status==200
			if(xhr.readyState==4 && xhr.status==200){
         //接收返回数据
			   var result=xhr.responseText;
//				 var obj=JSON.parse(result);
				   alert(result);
             if(result=="登录成功"){ 
				   window.location.href = './index.html';
			   }
			}
		 }
     //设置请求主体
		 var formdata="phone="+p_hone+"&upwd="+u_pwd;
     //打开连接
		 xhr.open("post","http://127.0.0.1:8080/user/login3",true);
     //设置请求头
		 xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
     //发送请求
		 xhr.send(formdata);	 
	}

