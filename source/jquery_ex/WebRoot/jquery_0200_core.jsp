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
   .test{
      font-size: "14px";
      color: "#aa0000";
   }
 
 </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">

     function testJquery(){ 
         var p_Node=$("div > p");  //获取div下的子节点
         var buttonNodes=$("input:button",document.forms[0]); //获取第一个表单下的 所有属性为button的元素
         alert(p_Node.html());
         alert(buttonNodes.length); 
         for(var i=0 ;i< buttonNodes.length;i++){
        	 alert(buttonNodes.first().val()); 
         }
     }

     function createNode(){
        $("<div><p>four</p></div>").appendTo("body");//第一种动态添加 的方法 appendTo
        var cb = "<input type='checkbox'>";
        $(document.forms[0]).append(cb); //第二种动态添加 的方法    node.append(newNode);
        
     }

     function createNode1(){ 
    	   $("<div>", {
    		  "class": "test",
    		  text: "Click me!",
    		  click: function(){
    		    $(this).toggleClass("test");//切换样式
    		  }
    		}).appendTo("body"); 
     }
     
     function testJquery1(){ 
    	 $(document.body).css( "background", "black" );
     }
     function testJquery2(){
    	var dom = $();
    	alert(dom);
         
     }


     $(function(){
    	  alert("文档就绪");
    	  $("p").toggleClass("test");
    	});
 	
</script> 
  <body>
    <h1 align="center">JQuery 核心  CORE 核心函数  $()</h1>
    <ul>
      <li dir="ltr"><font size="4" color="#aa0000">jQuery(expression, [context])</font> <button onclick="testJquery()">test</button> 
        <font size="2" color="#0000aa">
                              返回值:jQuery    参数：expression 用来查找的字符串  context (可选)Element, jQuery作为待查找的 DOM 元素集、文档或 jQuery 对象。
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">jQuery(html, [ownerDom])</font> <button onclick="createNode()">test</button> 
        <font size="2" color="#0000aa">
                              动态添加dom节点                 
        </font>
      </li>
     <li dir="ltr"><font size="4" color="#aa0000">jQuery(html, [props])</font> <button onclick="createNode1()">test</button> 
        <font size="2" color="#0000aa">
                              动态添加dom节点,并直接初始化属性及事件                 
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">jQuery(elements)</font> <button onclick="testJquery1()">test</button> 
        <font size="2" color="#0000aa">
                        将一个或多个DOM元素转化为jQuery对象。 这个函数也可以接收XML文档和Window对象（虽然它们不是DOM元素）作为有效的参数。
         </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">jQuery()</font> <button onclick="testJquery2()">test</button> 
        <font size="2" color="#0000aa">
                      jQuery 1.4中，如果不提供任何参数，则返回一个空jQuery对象。在先前版本中，这会返回一个包含document节点的对象。
         </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">jQuery(document).ready()</font> 
        <font size="2" color="#0000aa">
                                      当DOM加载完成后，执行其中的函数。 
         </font>
      </li>
    </ul>  
    <p>one</p><div><p>tow</p></div><p>three</p>
    <form action="form1 action value" name="form1">
       <input type="button" value="form button1"/> 
       <input type="button" value="form button2"/>
   </form>
     
  </body>
</html>
