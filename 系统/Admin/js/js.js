// JavaScript Document 
 var open = 1;// 设置初始打开的层序号
 var openState = new Array();
 var closeState = new Array();
 var dH = 220;
 function $(id){
  if(document.getElementById(id))
  {
   return document.getElementById(id);
  }
  else
  {
   alert("没有找到!");
  }
 }
 function $tag(id,tagName){
  return $(id).getElementsByTagName(tagName)
 }
 function closeMe(Cid,Oid){    
  var h = parseInt(Ds[Cid].style.height);
  //alert(h);
  if(h > 0)
  {
   h = h - Math.ceil(h/1);    
   Ds[Cid].style.height = h+"px";
  }
  else
  {  
   
   openMe(Oid);
   clearTimeout(closeState[Cid]);
   return false;
  }
  closeState[Cid] = setTimeout("closeMe("+Cid+","+Oid+")");
 }
 function openMe(Oid){
  var h = parseInt(Ds[Oid].style.height);  
  //alert(h);
  if(h < dH)
  {
   h = h + Math.ceil((dH-h)/1);    
   Ds[Oid].style.height = h+"px";
  }
  else
  {  
   clearTimeout(openState[Oid]);   
   return false;
  }
  openState[Oid] = setTimeout("openMe("+Oid+")");
 }
 var Ds = $tag("DoorP","div");
 var Ts = $tag("DoorP","table");
 if(Ds.length != Ts.length)
 {
  alert("标题和内容数目不相同!");
 }
 
 for(var i = 0 ; i < Ds.length ; i++)
 {  
  if(i==open)
  {
   Ds[i].style.height = dH+"px";
   Ts[i].className="title01";
  }
  else
  {
   Ds[i].style.height = "0px";
   Ts[i].className="title02";
  }
  Ts[i].value = i;
  Ts[i].onclick = function(){
   if(open==this.value)
   {
    return false;
   }
   Ts[open].className="title02";
   Ts[this.value].className="title01";
   for(var i = 0 ; i < openState.length ; i++)
   {
    clearTimeout(openState[i]);
    clearTimeout(closeState[i]);
   }
   closeMe(open,this.value);
   //openMe(this.value);
   open = this.value;
  }
 } 
 //直接打开层函数
 function showDiv(id){  
  Ds[id].style.height=dH+"px";
  Ds[open].style.height="0px";
  open = id;
 }
 //渐渐打开层函数