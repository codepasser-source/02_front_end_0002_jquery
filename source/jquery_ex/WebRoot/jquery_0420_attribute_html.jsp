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
      function testHtml1(){
        alert($(document.body).html());
      }
       function testHtml2(){
          $("div").html("div");
      }
       function testHtml3(){
          $("div").html(function(index,html){
            return html+index
          });
      }
  </script> 
  <body>
    <h1 align="center">JQuery 节点 HTML</h1>
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">html()</font> <button onclick="testHtml1()">test</button>
        <font size="2" color="#0000aa">
              取得第一个匹配元素的html内容。这个函数不能用于XML文档。但可以用于XHTML文档
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">html(val)</font> <button onclick="testHtml2()">test</button>
        <font size="2" color="#0000aa">
                            设置内容 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">html(function(index, html))</font> <button onclick="testHtml3()">test</button>
        <font size="2" color="#0000aa">
                            根据函数返回值设置内容 
        </font>
      </li>
    </ul>
    <div id="div1">div1</div>
	<div>div2</div>
	<div>div3</div>
	<div>div4</div> 
   </body>
</html>
