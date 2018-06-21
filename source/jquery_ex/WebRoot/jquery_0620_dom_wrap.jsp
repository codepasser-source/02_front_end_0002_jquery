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
       function  testWrap(){
         $("span").wrap("#div")
       }
       function testUnwrap(){
           $("span").unwrap();
       }
       function  testWrapAll(){
         $("span").wrapAll("#div")
           }
       function  testWrapInner(){
          $("span").wrapInner("#div")
           }
  </script> 
  <body>
    <h1 align="center">JQuery 文档操作  包裹 </h1>
    
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">wrap(html/element/fn) </font> <button onclick="testWrap()">test</button>
           <font size="2" color="#0000aa">
                                      将指定的节点用自定义的 html 标签包裹起来  （分别包裹）参数（ 闭合标签或节点  或  函数返回值（标签）） 
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">unwrap(html/element/fn) </font> <button onclick="testUnwrap()">test</button>
           <font size="2" color="#0000aa">
                                      将指定的节点解除包裹的标签 
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">wrapAll(html/element) </font> <button onclick="testWrapAll()">test</button>
           <font size="2" color="#0000aa">
                                    将指定的节点整体包裹 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">wrapInner(html/element/fn) </font> <button onclick="testWrapInner()">test</button>
           <font size="2" color="#0000aa">
                                    将指定的节点的内容和 子节点  分别包裹 
           </font>
        </li> 
    </ul> 
    <div id="div" class="selected"></div>
    <span>div1</span>
     <span>div2</span>
      <span>div3</span>
       <span>div4</span>
    </body>
</html>
