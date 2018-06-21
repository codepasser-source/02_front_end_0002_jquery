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
    .selected { width:40px; height:40px;background:green; }
    div.newcolor { background:blue; } 
    div.red { background-color:red; }
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
       function  testCss1(){
          alert( $("#div").css("height"));
          alert( $("#div").css("color"));
        }

       function  testCss2(){
    	   $("div").not("#div").css({background:"blue",width:"40px",height:"40px",left:"0px"})
           }

       function  testCss3(){
    	   $("div").not("#div").css("color","#cccccc");
           }
       function  testCss4(){
    	   $("div").not("#div").css({
               width:function(index,value){
                    return value = parseFloat(value)+index;
               },
               height:function(index,value){
            	   return value = parseFloat(value)+index;
                   }
        	 });
           }
  </script> 
  <body>
    <h1 align="center">JQuery CSS  </h1>
     
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">css(class) </font> <button onclick="testCss1()">test</button>
           <font size="2" color="#0000aa">
                 获取某个节点的 css的某个样式属性值             
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">css(properties) </font> <button onclick="testCss2()">test</button>
           <font size="2" color="#0000aa">
                 利用键值对动态为某节点添加样式            
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">css(name,value) </font> <button onclick="testCss3()">test</button>
           <font size="2" color="#0000aa">
                 指定样式名称 并赋值
           </font>
        </li> 
         <li dir="ltr"><font size="4" color="#aa0000">css(name,fn(index,value)) </font> <button onclick="testCss4()">test</button>
           <font size="2" color="#0000aa">
             根据函数返回值 设置样式
           </font>
        </li> 
    </ul> 
    <div id="div" class="selected"></div>
    <div>div1<b>s</b></div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
        
    </body>
</html>
