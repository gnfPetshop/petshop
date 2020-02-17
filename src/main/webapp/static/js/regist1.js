$(document).mouseup(function(e){
  var _con = $('#my_click');   // 设置目标区域
  var cDom = document.querySelector("#content");
  if(!_con.is(e.target) && _con.has(e.target).length === 0){ // Mark 1
      cDom.style.display = "none"
  }else{
      cDom.style.display = "block"
  }
});



	//用户名获取焦点时事件
uname.onfocus=function(){
   	  uname_msg.innerHTML="中文、英文、数字包括下划线"; 

}
//正则表达式判断是否符合规则
uname.onblur=function(){
    //正则表达式用户名：数字、字母、下划线
		var reg=/^[a-zA-Z0-9_\u4e00-\u9fa5]+$/;
	    if(!uname.value){
				  uname_msg.innerHTML="用户名不能为空";
					uname_msg.style.color="red";
					
      }else if(!reg.test(uname.value)){
				 		  uname_msg.innerHTML="用户名格式不正确";
				     	uname_msg.style.color="red";
			}else{
     //	 uname_msg.innerHTML="输入格式正确"; 
     //  uname_msg.style.color="blue";
           var u_name=uname.value;
           //创建异步对象   
		   var xhr=new XMLHttpRequest();
           //监听并接收响应
		   xhr.onreadystatechange=function(){
			 if(xhr.readyState==4 && xhr.status==200){
				 var result=xhr.responseText;
					if(result==1){
					uname_msg.innerHTML="用户名已被使用"
					uname_msg.style.color="red";
					alert("该用户名已被使用")
				}else{
					uname_msg.innerHTML="输入格式正确"
					uname_msg.style.color="blue";
				}
			}				 
		  }
		//打开连接并创建请求
		xhr.open("get","http://127.0.0.1:8080/user/reg_check?uname="+u_name,true);
		 //发送请求
		xhr.send();

	 }
}



 //手机获取焦点时事件
phone.onfocus=function(){
    phone_msg.innerHTML="请输入13位手机号"
}

//用正则表达式判断手机是否符合规则
phone.onblur=function(){
	    var reg=/^1(3|4|5|6|7|8|9)\d{9}$/;
       if(!phone.value){
				   phone_msg.innerHTML="手机号不能为空";
					 phone_msg.style.color="red";

        }else if(!reg.test(phone.value)){
					  phone_msg.innerHTML="手机格式不正确";
					  phone_msg.style.color="red";
					
				}else{
					// console.log(phone.value)
					//创建异步对象   
		    	var xhr=new XMLHttpRequest();
					//监听并接收响应
		    	xhr.onreadystatechange=function(){
						if(xhr.readyState==4 && xhr.status==200){
							var result=xhr.responseText;
							if(result==1){
								phone_msg.innerHTML="手机号已被使用"
								phone_msg.style.color="red";
								alert("该手机号已被使用")
							}else{
								phone_msg.innerHTML="输入格式正确";
								phone_msg.style.color="blue";
							}
						}
					}
						//打开连接并创建请求
	       	xhr.open("get","http://127.0.0.1:8080/user/reg_checkp?phone="+phone.value,true);
		      //发送请求
	        xhr.send();

	    }	

}
//密码获取焦点时事件
upwd.onfocus=function(){
 upwd_msg.innerHTML="长度在6~12位之间的数字和字母";
}

//	用正则表达式判断密码是否符合规则
  upwd.onblur=function(){
		var reg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/;
		    if(!upwd.value){
				  upwd_msg.innerHTML="密码不能为空";
					upwd_msg.style.color="red";

        }else  if(!reg.test(upwd.value)){
				 	  upwd_msg.innerHTML="密码格式不正确";
					  upwd_msg.style.color="red";
				}else{
				    upwd_msg.innerHTML="输入格式正确";
						upwd_msg.style.color="blue";
				}
				
	}
//确认密码获取焦点时事件
 rewd.onfocus=function(){
   rewd_msg.innerHTML="长度在6~12位之间的数字和字母";
}
//判断密码前后是否一致
 rewd.onblur=function(){
	    if(!rewd.value){
				  rewd_msg.innerHTML="密码不能为空";
					rewd_msg.style.color="red";

        }else if(rewd.value!==upwd.value){
					  rewd_msg.innerHTML="密码不一致,请确认";
					  rewd_msg.style.color="red";
					
				}else{
				   rewd_msg.innerHTML="输入格式正确";
					 rewd_msg.style.color="blue";

				}	
	}

var btn=document.getElementById("btn");
 btn.onclick=function(){
  //获取数据
  var u_name=uname.value;
  var u_pwd=upwd.value;
  var p_hone=phone.value;
	var c_pwd=rewd.value;
	if(uname_msg.innerHTML=="用户名已被使用"){
		alert("用户名已被使用");
	}else if(phone_msg.innerHTML=="手机号已被使用"){
		alert("手机号已被使用")
	}else{
  //创建异步对象
  var xhr=new XMLHttpRequest();
  //监听并接收响应
  xhr.onreadystatechange=function(){
  //判断readyState==4 status==200
	if(xhr.readyState==4 && xhr.status==200){
		var result=xhr.responseText;
				alert(result);
		if(result=="注册成功"){
			window.location.href="./login.html";		  
		}
	}	
  }
  //设置请求主体
  var formdata="uname="+u_name+"&upwd="+u_pwd+"&phone="+p_hone+"&cpwd="+c_pwd;
  //打开连接并创建请求
  xhr.open("post","http://127.0.0.1:8080/user/regist",true);
  //设置请求头
  xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  //发送请求
   xhr.send(formdata);	 
	} 
 }




