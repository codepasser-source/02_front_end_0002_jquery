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
 .div { margin:3px; width:40px; height:40px;
        position:absolute; left:0px; top:40px; 
        background:green;  }
        
 </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
      function testAttr1(){
           alert($("div:first").attr("id"));
      }
       function testAttr2(){
            $("#div1").attr({innerHTML:"div11"}); 
      }
      
      function testAttr3(){
        $("#div1").attr("innerHTML","div1"); 
      }
      
      function testAttr4(){
         $("#div1").attr("innerHTML",function(){return  "div"}); 
      }
      function testAttr5(){
         $("#div1").removeAttr("innerHTML"); 
      }
  </script> 
  <body>
    <h1 align="center">JQuery 属性  attr 读取 或  设置  节点属性值的方法</h1>
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">attr(name)</font><button onclick="testAttr1();">test</button> 
        <font size="2" color="#0000aa">
                     取得第一个匹配元素的属性值。通过这个方法可以方便地从第一个匹配元素中获取一个属性的值。如果元素没有相应属性，则返回 undefined 。
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">attr(properties)</font> <button onclick="testAttr2();">test</button> 
        <font size="2" color="#0000aa">
                                将一个“名/值”形式的对象设置为所有匹配元素的属性。 例如：$("img").attr({ src: "test.jpg", alt: "Test Image" });
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">attr(key, value)</font>   <button onclick="testAttr3();">test</button> 
        <font size="2" color="#0000aa">
                           为所有匹配的元素设置一个属性值  例如：$("img").attr("src","test.jpg");
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">attr(key, function(index, attr))</font>   <button onclick="testAttr4();">test</button> 
        <font size="2" color="#0000aa">
                              为所有匹配的元素设置一个计算的属性值。  不提供值，而是提供一个函数，由这个函数计算的值作为属性值。 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000"> removeAttr(name)</font>   <button onclick="testAttr5();">test</button> 
        <font size="2" color="#0000aa">
                             从每一个匹配的元素中删除一个属性 
        </font>
      </li>
    </ul>
    <div id="div1">div1</div>
	<div>div2</div>
	<div>div3</div>
	<div>div4</div> 
	</body>
</html>
