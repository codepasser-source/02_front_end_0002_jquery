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
      function testAppend1(){
            $("div").append("<b>div</b>");
          }
      function   testAppend2(){ 
          $("div").append(function(index,html){
                  return  "<b>"+html+index+"</b>";
              }); 
      }

      function   testAppend3(){
          $("div:contains(div1)").appendTo("div")
      }
      function   testAppend4(){
          $("div").prepend("div")
      }
      function   testAppend5(){ 
          $("div").prepend(function(index,html){
                  return  "<b>"+html+index+"</b>";
              }); 
      }
      function   testAppend6(){
          $("div:contains(div1)").prependTo("div")
      }
  </script> 
  <body>
    <h1 align="center">JQuery 文档操作  内部插入  </h1>
   
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">append(content) </font> <button onclick="testAppend1()">test</button>
           <font size="2" color="#0000aa">
                                      在匹配的节点中 插入内容
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">append(fn(index,html)) </font> <button onclick="testAppend2()">test</button>
           <font size="2" color="#0000aa">
                                      在匹配的节点中 插入内容
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">appendTo(node) </font> <button onclick="testAppend3()">test</button>
           <font size="2" color="#0000aa">
                                     把查找到的节点插入到指定节点中
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">prepend(node) </font> <button onclick="testAppend4()">test</button>
           <font size="2" color="#0000aa">
                                  向每个匹配的元素内部前置内容。 这是向所有匹配元素内部的开始处插入内容的最佳方式。 
           </font>
        </li>   
         <li dir="ltr"><font size="4" color="#aa0000">prepend(fn(index,html)) </font> <button onclick="testAppend5()">test</button>
           <font size="2" color="#0000aa">
                                  根据函数返的内容  插入到指定节点的前端
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">prependTo(node) </font> <button onclick="testAppend6()">test</button>
           <font size="2" color="#0000aa">
                                 将查找到的节点插入到指定节点的前端。 
           </font>
        </li>  
    </ul> 
    
    <div>div1</div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
    </body>
</html>
