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

    $().ready(function(){
      $("#div1").bind("click",function(){
             alert("div1 click even");
          });
      $("#div1").bind("scroll",function(){
          alert("div1 scroll even");
       });
      $("#div1").bind("mouseover mouseout",function(event){
          alert("div1 mousedown & mouseup even");
          alert( "x:"+event.pageX+" y:"+ event.pageY  )
       });

      $("#bt1").one("click",{msg:"只执行一次"},function(event){
                alert(event.data.msg);
          });


      //注册一个自定义事件
      $("#bt1").bind("myEvent", function (event, message1, message2) {
    	  alert(message1 + ' ' + message2);
    	}); 
  	
    });

    //触发事件
     function  testTrigger(){
    	 $("#bt1").trigger("myEvent", ["Hello","World!"]);
         }

//  如果你对一个focus事件执行了 .triggerHandler() ，浏览器默认动作将不会被触发，只会触发你绑定的动作。 
     function  testTriggerHandler(){
    	    $("#old").click(function(){
    		  $("input").trigger("focus");
    		});
    		$("#new").click(function(){
    		  $("input").triggerHandler("focus");
    		});
    		$("input").focus(function(){
        	
    		  $("<span>Focused!</span>").appendTo("body").fadeOut(1000);
    		});
      }

 
     function testUnbind(){
       
    	 $("#div1").unbind("mouseover mouseout");
    	 alert("#div1  unbind mouseover mouseout even");
    	 
      }
  </script> 
  <body>
    <h1 align="center">JQuery even 事件  处理</h1>
     
    <ul>  
        <li dir="ltr"><font size="4" color="#aa0000">bind(type,data,fn()) </font> 
           <font size="2" color="#0000aa">
                                   为某个节点的特定事件绑定事件处理函数。<br/>
           jQuery还提供了一些绑定这些标准事件类型的简单方式，比如.click()用于简化.bind('click')。一共有以下这些：blur, focus, focusin, focusout, load, resize, scroll, unload, click, dblclick, mousedown, mouseup, mousemove, mouseover, mouseout, mouseenter, mouseleave, change, select, submit, keydown, keypress, keyup, error  
               *多个事件 ：  依次可以绑定多个事件类型，每个事件类型用空格分隔 <br>
               event对象：fn这个参数的回调函数还可以接受一个参数。当这个函数被调用时，一个JavaScript事件对象会作为一个参数传进来  获取鼠标坐标 [event.pageX   event.pageY ]
           <br>
                            通过使用 preventDefault() 方法只取消默认的行为;通过使用 stopPropagation() 方法只阻止一个事件起泡。 <br>
                              自定义一个事件                
           </font>
        </li>  
        <li dir="ltr"><font size="4" color="#aa0000">one(type,data,fn()) </font> 
           <font size="2" color="#0000aa"> 
                                     为每一个匹配元素的特定事件（像click）绑定一个一次性的事件处理函数。  在每个对象上，
                                     这个事件处理函数只会被执行一次。其他规则与bind()函数相同。这个事件处理函数会接收到一个事件对象，
                                     可以通过它来阻止（浏览器）默认的行为。如果既想取消默认的行为，又想阻止事件起泡，这个事件处理函数必须返回false。  
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">trigger(type,[data]) </font>  <button onclick="testTrigger()">test</button>
           <font size="2" color="#0000aa"> 
                                   触发一个某节点上的一个事件
           </font>
        </li>
         <li dir="ltr"><font size="4" color="#aa0000">trigger(type,[data]) </font>  <button onclick="testTriggerHandler()">test</button>
           <font size="2" color="#0000aa"> 
                                  如果你对一个focus事件执行了 .triggerHandler() ，浏览器默认动作将不会被触发，只会触发你绑定的动作。 
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">unbind(type,fn()) </font>  <button onclick="testUnbind()">test</button>
           <font size="2" color="#0000aa"> 
                                  解除指定节点的已经注册的某个事件
           </font>
        </li>
        
    </ul> 
    <div id="div1" class="selected">
      <p>divdivdivasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
    <button id="bt1">bt1 one</button>
    <br>
    <button id="old">.trigger("focus")</button>
    <button id="new">.triggerHandler("focus")</button><br/><br/>
     <input type="text" value="To Be Focused"/>

   </body>
</html>
