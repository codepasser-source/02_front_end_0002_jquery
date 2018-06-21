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
    div { margin:3px; width:40px; height:40px;
        position:absolute; left:0px; top:280px; 
        background:green; 
        }
    .divStyle { margin:3px; width:40px; height:40px;
        position:absolute; left:0px; top:320px; 
        background:blue;  }
    span { color:red; }
 </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
      function  selector1(){
           alert("length:"+$("form input").length);
           alert($("form input").get(0).value);  
           alert($("form input").get(1).value); 
      }
      
      function  selector2(){
           alert("length:"+$("form > input").length);
           alert($("form>input").val());     
      }
      
       function  selector3(){
           alert("length:"+$("label + input").length);
           alert($("label + input").val());     
      }
        function  selector4(){
           alert("length:"+$("form ~ input").length);
           alert($("form ~ input").val());     
      }
  </script> 
  <body>
    <h1 align="center">JQuery 选择器  层级</h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">$("ancestor descendant")</font><button onclick="selector1();">test</button> 
        <font size="2" color="#0000aa">
                            在给定的祖先元素下匹配所有的后代元素,参数之间 用 空格分割
        </font>
      </li> 
       <li dir="ltr"><font size="4" color="#aa0000">$("parent > child")</font><button onclick="selector2();">test</button> 
        <font size="2" color="#0000aa">
                              在给定的父元素下匹配所有的子元素  
        </font>
       </li>
       <li dir="ltr"><font size="4" color="#aa0000">$("label + input")</font><button onclick="selector3();">test</button> 
        <font size="2" color="#0000aa">
                           匹配所有紧接在 prev 元素后的 next 元素 
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">$("prev ~ siblings")</font><button onclick="selector4();">test</button> 
        <font size="2" color="#0000aa">
                            匹配 prev 元素之后的所有 siblings 元素 
        </font>
       </li> 
    </ul>
     <form>
			<label>
				Name:
			</label>
			<input name="name" />
			<fieldset>
				<label>
					Newsletter:
				</label>
				<input name="newsletter" />
			</fieldset>
	 </form>
	 
	<input name="none" /> 
		
	</body>
</html>
