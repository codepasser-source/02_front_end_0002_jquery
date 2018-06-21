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
 
    .live {width:260px;height:120px; overflow:scroll; border:1px solid;}
    .changcolor{border-color: "#aa0000";background:"#cccccc"}
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">  
        $(".live").live("click",{msg:".live nodes click"},function(event){
                alert(event.data.msg);
            }); 
        function newLiveNode(){
        	 $("<div>newdiv<div>").addClass("live").appendTo(document.body) ;
            }

        function testDie(){
       	 $(".live").die("click");
           }
        function testHover(){ 
        	 $(".live").hover(
                  function(){
                      $(this).addClass("changcolor")
                  },
                  function(){
                	  $(this).removeClass("changcolor")
                  }
              );
      }
      function testToggle(){

    	    $("h1").toggle(
              function (){
            	 $(this).css({"list-style-type":"disc", "color":"blue"}); 
              },
              function (){
             	 $(this).css({"list-style-type":"disc", "color":"red"}); 
               },
               function (){
              	 $(this).css({"list-style-type":"disc", "color":"#cccccc"}); 
                }    
    	    );
          
       }
        
  </script> 
  <body>
    <h1 align="center">JQuery even 事件  处理</h1> 
    <ul>  
       <li dir="ltr"><font size="4" color="#aa0000">live(type,fn()) </font><button onclick="newLiveNode()">new .live node</button>  
           <font size="2" color="#0000aa"> 
            jQuery 给所有匹配的元素附加一个事件处理函数，即使这个元素是以后再添加进来的也有效。   
                                这个方法是基本是的 .bind() 方法的一个变体。使用 .bind() 时，选择器匹配的元素会附加一个事件处理函数，而以后再添加的元素则不会有。为此需要再使用一次 .bind() 才行
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">die(type,[fn]) </font><button onclick="testDie()">test die</button>  
           <font size="2" color="#0000aa"> 
                            如果不带参数，则所有绑定的live事件都会被移除。  你可以解除用live注册的自定义事件。 如果提供了type参数，那么会移除对应的live事件。 
                      如果也指定了第二个参数function,则只移出指定的事件处理函数。 
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">hover(overFn,outFn) </font><button onclick="testHover()">test Hover</button>  
           <font size="2" color="#0000aa"> 
                       一个模仿悬停事件（鼠标移动到一个对象上面及移出这个对象）的方法。这是一个自定义的方法，它为频繁使用的任务提供了一种“保持在其中”的状态。
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">toggle(fn1,fn2,fn...) </font><button onclick="testToggle()">test Toggle</button>  
           <font size="2" color="#0000aa"> 
                     每次点击后依次调用函数。

如果点击了一个匹配的元素，则触发指定的第一个函数，当再次点击同一元素时，则触发指定的第二个函数，如果有更多函数，则再次触发，直到最后一个。随后的每次点击都重复对这几个函数的轮番调用。 

可以使用unbind("click")来删除。 
           </font>
        </li>
         <li dir="ltr"><font size="4" color="#aa0000">具体事件</font> 
        <font size="2" color="#0000aa"> 
          blur, focus, focusin, focusout, load, resize, scroll, unload, click, dblclick, mousedown, mouseup, mousemove, mouseover, mouseout, mouseenter, mouseleave, change, select, submit, keydown, keypress, keyup, error 
          </font>
        </li>
         </ul> 
    <div id="div1" class="live">
      <p>divdivdivasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
  

   </body>
</html>
