<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <style type="text/css"> 
 
    .selected {width:260px;height:120px; overflow:scroll; border:1px solid;}
    
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript"> 
     $("#div1").ready(function(){
         alert("div载入完成");
     });
     $().ready(function(){
         alert("document载入完成");
       });
  </script> 
  <body>
    <h1 align="center">JQuery even 事件  载入</h1>
     
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">ready(fn()) </font> 
           <font size="2" color="#0000aa">
                          获取某个节点 或者 document 载入完成时 参数 为一个 回调函数，载入完成时执行<br>
                          使用 $(document).ready() 的简写，同时内部的 jQuery 代码依然使用 $ 作为别名，而不管全局的 $ 为何。 
           </font>
        </li>  
        
    </ul> 
    <div id="div1" class="selected">
      <p>divdivdivasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
   </body>
</html>
