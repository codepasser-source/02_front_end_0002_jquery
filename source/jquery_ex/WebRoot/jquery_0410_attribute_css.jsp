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
    .selected { margin:3px; width:40px; height:40px;
        position:absolute; left:0px; top:200px; 
        background:green; }
    div.newcolor { background:blue; } 
    div.red { background-color:red; }
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
      function testCss1(){
        $("#div1").addClass("selected");
      }
       function testCss2(){
        $("#div1").removeClass("selected");
      }
       function testCss3(){
        $("#div1").toggleClass("selected");
      }
      
       var count = 1; 
       function testCss4(){ 
        $("#div1").toggleClass("selected",count++%3==0);//点击三次执行切换
        
      }
  </script> 
  <body>
    <h1 align="center">JQuery  节点样式 CSS </h1>
    <ul>   
      <li dir="ltr"><font size="4" color="#aa0000">addClass(class)</font>   <button onclick="testCss1();">test</button> 
        <font size="2" color="#0000aa">
                             从每一个匹配的元素中删除一个属性 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">addClass(function(index, class))</font>   
        <font size="2" color="#0000aa">
                             根据函数的返回值指定设置的样式 值 例如 ：$('ul li:last').addClass(function() {  return 'item-' + $(this).index();});
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">removeClass([class])</font>   <button onclick="testCss2();">test</button> 
        <font size="2" color="#0000aa">
                             从每一个匹配的元素中删除一个样式
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">removeClass(function(index, class))</font> 
        <font size="2" color="#0000aa">
                             从每一个匹配的元素中删除  函数返回值对应的样式
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">toggleClass(class)</font> <button onclick="testCss3();">test</button> 
        <font size="2" color="#0000aa">
                            从每一个匹配的元素中切换指定样式     
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">toggleClass(class,switch)</font> <button onclick="testCss4();">test</button> 
        <font size="2" color="#0000aa">
                            从每一个匹配的元素中切换指定样式   ，第二个参数为是否切换  
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">toggleClass(function(index, class),switch)</font> 
        <font size="2" color="#0000aa">
                            从函数返回值切换每一个匹配的元素样式    并且指定是否切换 【switch】参数
        </font>
      </li>
    </ul>
    <div id="div1">div1</div>
	<div>div2</div>
	<div>div3</div>
	<div>div4</div> 
   </body>
</html>
