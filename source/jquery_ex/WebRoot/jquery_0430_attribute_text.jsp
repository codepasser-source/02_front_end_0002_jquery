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
      function testText1(){
        alert($("#div1").text());
      }
      function testText2(){
         $("div").text("<div>");//不转换<>
      }
      function testText3(){
        $("div").text(function (index,text){
          return  text+index;
        });
      }
     
  </script> 
  <body>
    <h1 align="center">JQuery 节点Text 文本</h1>
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">text()</font> <button onclick="testText1()">test</button>
        <font size="2" color="#0000aa">
          取得所有匹配元素的内容。  结果是由所有匹配元素包含的文本内容组合起来的文本。这个方法对HTML和XML文档都有效。 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">text(val)</font> <button onclick="testText2()">test</button>
        <font size="2" color="#0000aa">
                          设置所有匹配元素的文本内容   与 html() 类似, 但将编码 HTML (将 "<" 和 ">" 替换成相应的HTML实体)
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">text(function(index, html))</font> <button onclick="testText3()">test</button>
        <font size="2" color="#0000aa">
                          根据函数返回值设置内容             
        </font>
      </li>
    </ul>
    <div  id="div1">div1 </div>
	<div  id="div2">div2 </div>
	<div  id="div3">div3 </div>
	<div  id="div4">div4 </div>
   </body>
</html>
