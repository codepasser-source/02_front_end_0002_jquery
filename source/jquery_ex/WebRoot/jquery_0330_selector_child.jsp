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
      function testChild1(){
        var nodes = $("ul li:nth-child(2)");
        alert(nodes[1].innerHTML);
        alert(nodes[2].innerHTML);
      } 
      function testChild2(){
        var nodes = $("ul li:first-child");
        alert(nodes.get(1).innerHTML);
        alert(nodes.get(2).innerHTML);
      }
      
      function testChild3(){
        var nodes = $("ul li:only-child");
        alert(nodes.get(0).innerHTML);
      }
  </script> 
  <body>
    <h1 align="center">JQuery 选择器 节点查找常用方法  子节点  </h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">:nth-child</font><button onclick="testChild1();">test</button> 
        <font size="2" color="#0000aa">
                        获取 父节点下第N个子节点
        ':eq(index)' 只匹配一个元素，而这个将为每一个父元素匹配子元素。:nth-child从1开始的，而:eq()是从0算起的！可以使用:
          nth-child(even)
          :nth-child(odd)
          :nth-child(3n)
          :nth-child(2)
          :nth-child(3n+1)
          :nth-child(3n+2) 
        </font>
      </li>  
      <li dir="ltr"><font size="4" color="#aa0000">:first-child</font><button onclick="testChild2();">test</button> 
        <font size="2" color="#0000aa">
                               匹配每一个符合条件的 节点 的 第一个子元素     同理 ：last-child 匹配最后一个
        </font>
      </li>  
      <li dir="ltr"><font size="4" color="#aa0000">:only-child</font><button onclick="testChild3();">test</button> 
        <font size="2" color="#0000aa">
                          如果某个元素是父元素中唯一的子元素，那将会被匹配 
        </font>
      </li> 
    </ul> 
		<ul>
			<li>
				John
			</li>
			<li>
				Karl
			</li>
			<li>
				Brandon
			</li>
		</ul>
		<ul>
			<li>
				Glen
			</li>
			<li>
				Tane
			</li>
			<li>
				Ralph
			</li>
		</ul>
        <ul>
			<li>
				only
			</li>
		 </ul>
	</body>
</html>
