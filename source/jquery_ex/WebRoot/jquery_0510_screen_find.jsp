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
     
  </script> 
  <body>
    <h1 align="center">JQuery 筛选      查找  </h1>
   
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">children(expr) 返回值：jquery</font> <button onclick="testEq()">test</button>
        <font size="2" color="#0000aa">
                               获取指定节点的 所有子节点的集合 
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">closest(expr,[context]) 返回值：jquery</font> <button onclick="testEq()">test</button>
        <font size="2" color="#0000aa">
            closest会首先检查当前元素是否匹配，如果匹配则直接返回元素本身。如果不匹配则向上查找父元素，一层一层往上，直到找到匹配选择器的元素。如果什么都没找到则返回一个空的jQuery对象。 
            closest和parents的主要区别是：1，前者从当前元素开始匹配寻找，后者从父元素开始匹配寻找；2，前者逐级向上查找，直到发现匹配的元素后就停止了，后者一直向上查找直到根元素，然后把这些元素放进一个临时集合中，再用给定的选择器表达式去过滤；3，前者返回0或1个元素，后者可能包含0个，1个，或者多个元素。 
        </font> 
       </li>  
    </ul> 
    
    <div>div1</div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
    </body>
</html>
