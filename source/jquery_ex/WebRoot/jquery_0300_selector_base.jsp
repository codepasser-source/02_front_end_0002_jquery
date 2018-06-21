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
     function selectorById(){
         var text = jQuery("#div1").text();
         alert(text);
     }
     function selectorByClass(){
         var text = jQuery(".divStyle").text();
         alert(text);
     }
     function selectorByTag(){
           var text = $("span").html();//html  和  text 区别  在于 是否只输出内容
           alert(text);
         }

     function selectorAll(){
         var text = $("*").text(); 
         alert(nodes);
       }
     function selectorN(){
         var nodes = $("#div1,span"); 
         alert(nodes[0].innerHTML); //两种取节点的方法  nodes[index]  nodes.get(index) 返回的是Dom对象不是jquery对象
         alert(nodes.get(1).innerHTML);
       }
  </script> 
  <body>
    <h1 align="center">JQuery 选择器  基本</h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">#id  id选择器</font><button onclick="selectorById();">test</button> 
        <font size="2" color="#0000aa">
                            根据Id查找         
        </font>
      </li>  
       <li dir="ltr"><font size="4" color="#aa0000">.class  class选择器</font><button onclick="selectorByClass();">test</button> 
        <font size="2" color="#0000aa">
                            根据class查找         
        </font>
      </li> 
       <li dir="ltr"><font size="4" color="#aa0000">tagName  tag选择器</font><button onclick="selectorByTag();">test</button> 
        <font size="2" color="#0000aa">
                            一个用于搜索的元素。指向 DOM 节点的标签名。
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">$("*")</font><button onclick="selectorAll();">test</button> 
        <font size="2" color="#0000aa">
                            多用于结合上下文来搜索
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">$("selector1,selector2,selectorN")</font><button onclick="selectorN();">test</button> 
        <font size="2" color="#0000aa">
                            多个选择器同时搜索 ，匹配的对象一并返回
         </font>
      </li> 
    </ul>    
    <div id="div1">div1</div> 
    <div id="div2" class="divStyle">div2</div> <span>span1</span>
  </body>
</html>
