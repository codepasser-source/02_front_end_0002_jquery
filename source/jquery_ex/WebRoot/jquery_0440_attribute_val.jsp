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
      function testVal1(){
       alert( $(":text").val());
      }
      function testVal2(){
           $(":text").val("input");
      }
      function testVal3(){
          $("#single").val("Single0");  
          $("#multiple").val(["Multiple2","Multiple3"]);
      }
      function testVal4(){
          $(":text").val(function(index,text){
              return  text+"1";
          });   
      }
      
  </script> 
  <body>
    <h1 align="center">JQuery 节点val 值</h1>
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">val()</font> <button onclick="testVal1()">test</button>
        <font size="2" color="#0000aa">
      获得第一个匹配元素的当前值。  在 jQuery 1.2 中,可以返回任意元素的值了。包括select。如果多选，将返回一个数组，其包含所选的值。
           </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">val(val)</font> <button onclick="testVal2()">test</button>
        <font size="2" color="#0000aa">
      获得第一个匹配元素的当前值。  在 jQuery 1.2 中,可以返回任意元素的值了。包括select。如果多选，将返回一个数组，其包含所选的值。
           </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">val(array)</font> <button onclick="testVal3()">test</button>
        <font size="2" color="#0000aa">
     参数为数组  用于 check/select 的值 
           </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">val(function(index,value))</font> <button onclick="testVal4()">test</button>
        <font size="2" color="#0000aa">
     根据函数返回值设置值 
           </font>
      </li>
    </ul>
    <input type="text" value="some text"/>
		<select id="single">
			<option >
				Single0
			</option>
			<option selected="selected">
				Single1
			</option>
		</select>
<select id="multiple" multiple="multiple">
  <option selected="selected">Multiple</option>
  <option>Multiple2</option>
  <option selected="selected">Multiple3</option>
</select>
	</body>
</html>
