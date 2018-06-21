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
 
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
    jQuery.fn.extend({
	  check: function() { 
	    return this.each(function() { this.checked = true; });
	  },
	  uncheck: function() {
	    return this.each(function() { this.checked = false; });
	  }
	});
    jQuery.extend({
    	  min: function(a, b) { return a < b ? a : b; },
    	  max: function(a, b) { return a > b ? a : b; }
    	});


	function  testCheck(){ 
		$("input[type=checkbox]").check(); //执行自定义方法
	 }

	function testMin(){
		  alert(jQuery.min(3,4));//执行自定义方法
		}

	function testMax(){
		  alert(jQuery.max(3,4));//执行自定义方法
		}
  </script> 
  <body>
    <h1 align="center">JQuery 核心  CORE  插件机制</h1>
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">jQuery.fn.extend(object)  </font> <button onclick="testCheck()">test Check</button>
        <font size="2" color="#0000aa">扩展 jQuery 元素集来提供新的方法（通常用来制作插件）。  </font>
      </li> 
       <li dir="ltr"><font size="4" color="#aa0000">jQuery.extend(object) </font> <button onclick="testMin()">test Min</button> <button onclick="testMax()">test Max</button>
        <font size="2" color="#0000aa">扩展jQuery对象本身。 用来在jQuery命名空间上增加新函数。 </font>
      </li> 
    </ul>    
    <input type="checkbox"/>
     
  </body>
</html>
