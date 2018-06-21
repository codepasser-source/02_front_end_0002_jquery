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
      function testEq(){
       alert( $("div").eq(0).html());
      }
      
      function  testMap(){
         alert(  $("div").map(function(){  return $(this).html(); }).get() );  
      }
      
      function  testSlice(){
      $("div").slice(0, 2).wrapInner("<b></b>");
      }
  </script> 
  <body>
    <h1 align="center">JQuery 筛选      过滤 <font size="4" color="#aa0000">节点查找的基本过滤方法 有两种写法   ：1.  $("div:eq(0)")  2.  $("div").eq(0)  </font></h1>
   
    <ul>  
      <li dir="ltr"><font size="4" color="#aa0000">eq(index) 返回值：jquery</font> <button onclick="testEq()">test</button>
        <font size="2" color="#0000aa">
                               获取第N个元素  这个元素的位置是从0算起 
        </font>
       </li> 
       <li dir="ltr"><font size="4" color="#aa0000">first() 返回值：jquery</font> <button  >test</button>
        <font size="2" color="#0000aa">
                              获取第一个元素
        </font>
       </li> 
       <li dir="ltr"><font size="4" color="#aa0000">last() 返回值：jquery</font> <button >test</button>
        <font size="2" color="#0000aa">
                              获取最后一个元素
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">hasClass(class)  返回值：boolean</font> <button >test</button>
        <font size="2" color="#0000aa">
                             判断是否含有某个class 样式  返回 true  false
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">filter(expr)</font> <button >test</button>
        <font size="2" color="#0000aa">
                             筛选出与指定表达式匹配的元素集合。  这个方法用于缩小匹配的范围。用逗号分隔多个表达式   例如：$("p").filter(".selected, :first")
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">filter(fn)</font> <button >test</button>
        <font size="2" color="#0000aa">
                             筛选出与指定表达式匹配的元素集合。 通过fn 返回一个表达式 来筛选
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">is(expr)</font> <button >test</button>
        <font size="2" color="#0000aa">
                           用一个表达式来检查当前选择的元素集合，如果其中至少有一个元素符合这个给定的表达式就返回true。
                            如果没有元素符合，或者表达式无效，都返回'false'。 
        </font>
       </li>  
       <li dir="ltr"><font size="4" color="#aa0000">map(expr)</font> <button onclick="testMap()">test</button>
          <font size="2" color="#0000aa">
                                    将一组元素转换成其他数组（不论是否是元素数组） 你可以用这个函数来建立一个列表，不论是值、属性还是CSS样式，或者其他特别形式。这都可以用'$.map()'来方便的建立。
         </font>
       </li> 
       
       <li dir="ltr"><font size="4" color="#aa0000">not(expr)</font> <button onclick="">test</button>
          <font size="2" color="#0000aa">
                              删除与指定表达式匹配的元素  
         </font>
       </li> 
       <li dir="ltr"><font size="4" color="#aa0000">slice(start, [end])</font> <button onclick="testSlice()">test</button>
          <font size="2" color="#0000aa">
               开始选取子集的位置。第一个元素是0.如果是负数，则可以从集合的尾部开始选起。
               结束选取自己的位置，如果不指定，则就是本身的结尾。  
         </font>
       </li> 
    </ul> 
    
    <div>div1</div>
     <div>div2</div>
      <div>div3</div>
       <div>div4</div>
    </body>
</html>
