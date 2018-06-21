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
        position:absolute; left:0px; top:200px; 
        background:green; display:none; }
    div.newcolor { background:blue; } 
    div.red { background-color:red; }
    
 </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
    function getQueueLength(){
    	 var n = $("#div1").queue("fx");
        alert("Queue length is: " + n.length);
     }

    function testQueue1(){
   	 $("#div2").show("slow");
        $("#div2").animate({left:'+=200'},2000);
        $("#div2").queue(function () {
            $(this).addClass("newcolor"); 
            $(this).dequeue();
        });
        $("#div2").animate({left:'-=200'},500);
        $("#div2").queue(function () {
            $(this).removeClass("newcolor");
            $(this).dequeue();
        });
        $("#div2").slideUp(); 
   }

    function runIt() {
        $("#div1").show("slow");//显示
        $("#div1").animate({left:'+=200'},2000);//向右移动  动画时间  2秒
        $("#div1").slideToggle(1000);//切换  滑动隐藏
        $("#div1").slideToggle("fast");//切换 滑动显示
        $("#div1").animate({left:'-=200'},2000);//向左移动 时间 1.5秒
        $("#div1").hide("slow");//隐藏
        $("#div1").show(1200);//显示 
        $("#div1").slideUp("normal", runIt);//隐藏   完成后 在执行runIt 递归
  }
 
  function testDequeue(){
	      $("#div3").show(1000);
	      $("#div3").animate({left:'+=200px'}, 2000);
	      $("#div3").animate({top:'0px'}, 600);
	      $("#div3").queue(function () {
	          $(this).toggleClass("red");
	          $(this).dequeue();
	      });
	      $("#div3").animate({left:'10px', top:'30px'}, 700);
	      $("#div3").slideUp(1000);
	  }

   function  testStart(){
	   $("#div4").show("slow");
	      $("#div4").animate({left:'+=200'},5000);
	      $("#div4").queue(function () {
	          $(this).addClass("newcolor");
	          $(this).dequeue();
	      });
	      $("#div4").animate({left:'-=200'},1500);
	      $("#div4").queue(function () {
	          $(this).removeClass("newcolor");
	          $(this).dequeue();
	      });
	      $("#div4").slideUp(); 
   }

   function testStop(){

	      $("#div4").queue("fx", []);
	      $("#div4").stop();

	   }
  function testClear(){
	  $("#div4").clearQueue();//清除未执行的动画函数 语句
	  }
  </script> 
  <body>
    <h1 align="center">JQuery 核心  CORE  队列控制</h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">queue([name])函数 参数：队列名 返回值：Array[function]</font><button onclick=" getQueueLength();">get queue length</button><button onclick=" runIt();">test</button> 
        <font size="2" color="#0000aa">
                          返回指向第一个匹配元素的队列(将是一个函数数组) 
        </font>
      </li>  
       <li dir="ltr"><font size="4" color="#aa0000">queue([name],[function])函数 参数：队列名 返回值：Array[function]</font><button onclick=" testQueue1();">test</button> 
        <font size="2" color="#0000aa">
                        在匹配的元素的队列最后添加一个函数
        </font>
      </li>  
       <li dir="ltr"><font size="4" color="#aa0000">dequeue(name)函数 参数：队列名  </font><button onclick="testDequeue();">test</button> 
        <font size="2" color="#0000aa">
                       从队列最前端移除一个队列函数，并执行他。插入一个自定义函数如果函数执行后要继续队列，则执行 jQuery(this).dequeue();
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">queue([name],[queue])函数    </font><button id="start" onclick="testStart();">start</button><button id="stop" onclick="testStop();">stop</button> 
        <font size="2" color="#0000aa">
                       将匹配元素的队列用新的一个队列来代替(函数数组)  用于替换的队列。所有函数都有同一个参数，这个值与queue(callback)相同
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">clearQueue([name])函数    </font><button id="start" onclick="testClear();">clear</button> 
        <font size="2" color="#0000aa">
                      清空对象上尚未执行的所有队列 
                     如果不带参数，则默认清空的是动画队列。这跟stop(true)类似，但stop()只能清空动画队列，而这个可以清空所有通过 .queue() 创建的队列。
          </font>
      </li> 
    </ul>    
    <div id="div1">div1</div> 
    <div id="div2">div2</div> 
    <div id="div3">div3</div>
    <div id="div4">div4</div>
  </body>
</html>
