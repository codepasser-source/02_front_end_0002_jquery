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
   
       

       function testHeight(){
    	   alert("window hight:"+$("#div1").height());
    	   $("#div1").height(200);
           }
       function testWidth(){
    	   alert("window width:"+$("#div1").width());
    	   $("#div1").width(200);
           }
       function testInnerHeight(){
    	  alert( $("#div1").innerHeight());
           }
       function testInnerWidth(){
     	  alert( $("#div1").innerWidth());
            }
       function testOuterHeight(){
     	  alert( $("#div1").outerHeight());
            }
        function testOuterWidth(){
      	  alert( $("#div1").outerWidth());
             }
  </script> 
  <body>
    <h1 align="center">JQuery CSS  尺寸</h1>
     
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">height() </font> <button onclick="testHeight()">test</button>
           <font size="2" color="#0000aa">
                                  获取某个节点个高度值    height(val):设置某一节点的高度
           </font>
        </li>  
       <li dir="ltr"><font size="4" color="#aa0000">width() </font> <button onclick="testWidth()">test</button>
           <font size="2" color="#0000aa">
                                  获取某个节点个高度值   width(val):设置某一节点的高度
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">innerHeight() </font> <button onclick="testInnerHeight()">test</button>
           <font size="2" color="#0000aa">
                             获取某节点内部区域高度（包括补白、不包括边框） 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">innerHeight() </font> <button onclick="testInnerWidth()">test</button>
           <font size="2" color="#0000aa">
                             获取某节点内部区域宽度（包括补白、不包括边框） 
           </font>
        </li>  
         <li dir="ltr"><font size="4" color="#aa0000">innerHeight() </font> <button onclick="testOuterHeight()">test</button>
           <font size="2" color="#0000aa">
                             获取某节点整体域宽度（默认包括补白和边框） 
           </font>
        </li>  
         <li dir="ltr"><font size="4" color="#aa0000">innerHeight() </font> <button onclick="testOuterWidth()">test</button>
           <font size="2" color="#0000aa">
                             获取某节点整体域宽度（默认包括补白和边框） 
           </font>
        </li>  
    </ul> 
    <div id="div1" class="selected">
      <p>divdivdivasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
       
        
    </body>
</html>
