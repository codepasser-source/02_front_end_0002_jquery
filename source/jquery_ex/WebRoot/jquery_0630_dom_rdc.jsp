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
       function  testReplaceWith(){
         $("div").replaceWith("<b>span</b>")
       }
       function  testReplaceAll(){
           $("<span>span</span>").replaceAll("div")
         }
       function  testEmpty(){ 
    	   $("div").not("#div").empty();
       } 
       function testRemove(){
          $("div").remove(".selected");
       }
       function  testDetach(){
          $("div").detach(".selected");
           }
       
       function testClone(){
    	   $("#clone").clone().insertBefore("#clone");
    	   $("#clone").clone(true).insertAfter("#clone");
    	 } 
  </script> 
  <body>
    <h1 align="center">JQuery 文档操作  替换   删除   赋值</h1>
    
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">replaceWith(content) </font> <button onclick="testReplaceWith()">test</button>
           <font size="2" color="#0000aa">
                               利用content替换指定 节点
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">replaceAll(selector) </font> <button onclick="testReplaceAll()">test</button>
           <font size="2" color="#0000aa">
                                  利用$(createNode) 创建节点   并替换指定节点
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">empty() </font> <button onclick="testEmpty()">test</button>
           <font size="2" color="#0000aa">
                                   删除匹配的元素集合中所有的子节点。 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">remove([expr]) </font> <button onclick="testRemove()">test</button>
           <font size="2" color="#0000aa">
                                从DOM中删除所有匹配的元素  可以添加条件 expr   这个方法不会把匹配的元素从jQuery对象中删除，因而可以在将来再使用这些匹配的元素。但除了这个元素本身得以保留之外，其他的比如绑定的事件，附加的数据等都会被移除。
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">detach([expr]) </font> <button onclick="testDetach()">test</button>
           <font size="2" color="#0000aa">
                              从DOM中删除所有匹配的元素,可以添加条件 expr  这个方法不会把匹配的元素从jQuery对象中删除，因而可以在将来再使用这些匹配的元素。与remove()不同的是，所有绑定的事件、附加的数据等都会保留下来。
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">clone([true]) </font> 
           <font size="2" color="#0000aa">
                              元素以及其所有的事件处理并且选中这些克隆的副本     在想把DOM文档中元素的副本添加到其他位置时这个函数非常有用。 
           注意：参数true 是 指定赋值 全部包括事件
           </font>
        </li> 
    </ul> 
    <div id="div" class="selected"></div>
    <div>div1<b>s</b></div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
       <button id="clone" onclick="testClone()">Clone Me!</button>
    </body>
</html>
