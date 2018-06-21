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
      function testAfter1(){
          $("div").not("#div").after("<img/>");
       }
      function testAfter2(){
          $("div").not("#div").after(function(){
                 return "div";
              });
       }
      function testBefore1(){
    	  $("div").not("#div").before("<img/>");
          }
      function testBefore2(){
          $("div").not("#div").before(function(){
                 return "div";
              });
       }

      function testInsertAfter(){
            $("#div").insertAfter("div");
      }
      function testInsertBefore(){
          $("#div").insertBefore("div");
      }
  </script> 
  <body>
    <h1 align="center">JQuery 文档操作  外部插入  </h1>
   
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">after(content) </font> <button onclick="testAfter1()">test</button>
           <font size="2" color="#0000aa">
                                      在匹配的节点后 插入内容
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">after(fn(index,html)) </font> <button onclick="testAfter2()">test</button>
           <font size="2" color="#0000aa">
                                    根据函数返回值插入到指定节点后面
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">before(content) </font> <button onclick="testBefore1()">test</button>
           <font size="2" color="#0000aa">
                                  插入到指定节点的前面
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">before(fn(index,html)) </font> <button onclick="testBefore2()">test</button>
           <font size="2" color="#0000aa">
                                  根据函数返回值插入到指定节点的前面
           </font>
        </li>   
         <li dir="ltr"><font size="4" color="#aa0000">insertAfter(node) </font> <button onclick="testInsertAfter()">test</button>
           <font size="2" color="#0000aa">
                                 将查找到的节点插入到指定节点的后面
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">insertBefore(node) </font> <button onclick="testInsertBefore()">test</button>
           <font size="2" color="#0000aa">
                                 将查找到的节点插入到指定节点的前面。 
           </font>
        </li>  
    </ul> 
    <div id="div" class="selected"></div>
    <div>div1</div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
    </body>
</html>
