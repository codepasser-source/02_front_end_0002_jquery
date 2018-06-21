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
 
    .selected {width:260px;height:120px; overflow:scroll; border:1px solid;}
    
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
  var topVal = 100;
       function testOffset1(){
              alert("#div1 offset.top:"+$("#div1").offset().top);
              alert("#div1 offset.left:"+$("#div1").offset().left);
               
        }
       
       function  testOffset2(){
    	  topVal = topVal+100
             $("#div1").offset({top:topVal,left:"200"}); 
        }
       
       function testPosition(){
           alert("#div1 position.top:" +$("#div1").position().top);
           alert("#div1 position.left:" + $("#div1").position().left);
       }
       function  testScrollTop1(){ 
    	   alert("#div1 scrollTop:" +$("#div1").scrollTop()); 
           }
       function  testScrollTop2(){
    	   $("#div1").scrollTop(300);
           }
       function  testScrollLeft1(){
    	   alert("body scrollLeft:" +$("#div1").scrollLeft()); 
           }

       function testScrollLeft2(){
    	   $("#div1").scrollLeft(300)
           }
  </script> 
  <body>
    <h1 align="center">JQuery CSS  位置</h1>
     
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">offset() </font> <button onclick="testOffset1()">test</button>
           <font size="2" color="#0000aa">
                                  获取某个节点的在窗口中的相对位置   offset().left  offset().top  
           </font>
        </li>  
         <li dir="ltr"><font size="4" color="#aa0000">offset(coordinates) </font> <button onclick="testOffset2()">test</button>
           <font size="2" color="#0000aa">
                               设置某节点在document中的坐标  .offset()方法可以让我们重新设置元素的位置。这个元素的位置是相对于document对象的。如果对象原先的position样式属性是static的话，会被改成relative来实现重定位。
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">postion() </font> <button onclick="testPosition()">test</button>
           <font size="2" color="#0000aa">
                              获取匹配元素相对父元素的位置  top  left。 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">scrollTop() </font> <button onclick="testScrollTop1()">test</button>
           <font size="2" color="#0000aa">
                             获取相对滚动条顶端位置。 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">scrollTop(val) </font> <button onclick="testScrollTop2()">test</button>
           <font size="2" color="#0000aa">
                             设置相对滚动条顶端位置。 
           </font>
        </li> 
        <li dir="ltr"><font size="4" color="#aa0000">scrollLeft() </font> <button onclick="testScrollLeft1()">test</button>
           <font size="2" color="#0000aa">
                              获取滚动条相对左端位置
           </font>
        </li> 
          <li dir="ltr"><font size="4" color="#aa0000">scrollLeft(val) </font> <button onclick="testScrollLeft2()">test</button>
           <font size="2" color="#0000aa">
                             设置滚动条相对左端 偏移位置。 
           </font>
        </li> 
    </ul> 
    <div id="div1" class="selected">
      <p>divdivdivasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
       
        
    </body>
</html>
