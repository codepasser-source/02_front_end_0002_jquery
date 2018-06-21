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
 </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
      function testForm(){
        var nodes = $(":input");
        alert(nodes.length);
      
      } 
      
  </script> 
  <body>
    <h1 align="center">JQuery 选择器 节点查找常用方法  表单  </h1>
    <ul> 
        
      <li dir="ltr"><font size="4" color="#aa0000">:input</font><button onclick="testForm();">test</button> 
        <font size="2" color="#0000aa">
                                匹配所有 input, textarea, select 和 button 元素  
        </font>
      </li>
      <li dir="ltr">
        <font size="2" color="#0000aa">
            其他：$(":text") |  $(":password") |$(":radio") |$(":checkbox") |$(":submit") |$(":image") | $(":reset") |$(":button") |$(":file") |$(":hidden") |            
        </font></li>
     <li dir="ltr">
        <font size="2" color="#0000aa">
            表单对象属性： $("input:enabled") |$("input:disabled")|$("input:checked")|$("select option:selected")
        </font></li>
    </ul>
    <form>
    <input type="button" value="Input Button"/>
    <input type="checkbox" />

    <input type="file" />
    <input type="hidden" />
    <input type="image" />

    <input type="password" />
    <input type="radio" />
    <input type="reset" />

    <input type="submit" />
    <input type="text" />
    <select><option>Option</option></select>

    <textarea></textarea>
    <button>Button</button> 
</form>
	</body>
</html>
