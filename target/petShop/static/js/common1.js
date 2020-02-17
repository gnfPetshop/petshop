$(document).mouseup(function(e){
  var _con = $('#my_click');   // 设置目标区域
  var cDom = document.querySelector("#content");
  if(!_con.is(e.target) && _con.has(e.target).length === 0){ // Mark 1
      cDom.style.display = "none"
  }else{
      cDom.style.display = "block"
  }
});
// <!--查找出触发事件元素-->
var L1=document.getElementById("L1");
var L2=document.getElementById("L2");
var L3=document.getElementById("L3");
//L1绑定触发事件
L1.onclick=function(){
   if(L1.className=="active"){
               L2.style.display="none";
               L3.style.display="none";
               L1.textContent="狗狗专区";
               L1.className="";


   }else{
                L2.style.display="block";
               L3.style.display="block";
               L1.textContent="关闭";
               L1.className="active";
   }
}
//L2绑定触发事件
L2.onclick=function(){
    if(L2.className=="active"){
        L1.style.display="none";
        L3.style.display="none";
        L2.className="";

    }else{
        L1.style.display="block";
        L3.style.display="block";
        L2.className="active";
    }
}
//L3绑定触发事件
L3.onclick=function(){
    if(L3.className=="active"){
        L1.style.display="none";
        L2.style.display="none";
        L3.className="";

    }else{
        L1.style.display="block";
        L2.style.display="block";
        L3.className="active";
    }
}