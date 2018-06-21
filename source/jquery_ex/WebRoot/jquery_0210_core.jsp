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
    function testEach(){
          $("p").each(function(i){//参数为自增变量
        	  $(this).toggleClass("test"); //注意此时 this 和 $(this) 的区别  this 是dom对象 $(this)是jquery对象
              alert(this.innerHTML)
        	  alert($(this).html()); 
        	  alert("循环次数："+i);  
          }); 
    }  
    function testSize(){  
        alert( $("p").size());
    }

    function testLength(){
    	 alert( $("p").length);
    }

    function testSelector(){
    	$("ul")
    	  .append("<li>" + $("ul") + "</li>")
    	  .append("<li>" + $("ul li").selector + "</li>")
    	  .append("<li>" + $("div#foo ul:not([class])").selector + "</li>");
        }

    function  testContext(){//当前节点的上下文   没有指定第二个参数是 默认为 Body
    	$("ul")
    	  .append("<li>" + $("ul").context + "</li>")
    	  .append("<li>" + $("ul", document.body).context.nodeName + "</li>");
  	       alert($("p",document.body).context.nodeName);
    }
    function  testGet(){
    	 $(document.body).append($("p").get().reverse()); //获取匹配节点的集合 并反向
     }
    function testGetIndex(){
    	  alert($("p").get(1).innerHTML);//从0开始 第index个元素,返回值 为 dom节点对象 不是 jquery对象
        }

    function testIndex(){
    	alert( $('li').index(document.getElementById('bar')) ); //1，传递一个DOM对象，返回这个对象在原先集合中的索引位置
    	alert( $('li').index($('#bar')) ); //1，传递一个jQuery对象
    	alert( $('li').index($('li:gt(0)')) ); //1，传递一组jQuery对象，返回这个对象中第一个元素在原先集合中的索引位置
    	alert( $('#bar').index('li') ); //1，传递一个选择器，返回#bar在所有li中的做引位置
    	alert( $('#bar').index() ); //1，不传递参数，返回这个元素在同辈中的索引位置。
    }
</script> 
  <body>
    <h1 align="center">JQuery 核心  CORE  节点操作函数</h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">each()函数</font><button onclick="testEach();">test</button> 
        <font size="2" color="#0000aa">
                        节点循环函数                   
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">size()函数</font><button onclick="testSize();">test</button> 
        <font size="2" color="#0000aa">
                                节点数组个数                 
         </font>
      </li>
     <li dir="ltr"><font size="4" color="#aa0000">length属性</font><button onclick="testLength();">test</button> 
        <font size="2" color="#0000aa">
                                节点数组个数  (与size一致)  
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">selector函数</font><button onclick="testSelector();">test</button> 
        <font size="2" color="#0000aa">
                 返回传给jQuery()的原始选择器
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">context属性</font><button onclick="testContext();">test</button> 
        <font size="2" color="#0000aa">
                  jQuery 1.3新增。返回传给jQuery()的原始的DOM节点内容，即jQuery()的第二个参数。如果没有指定，那么context指向当前的文档(document)。
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">get()方法</font><button onclick="testGet();">test</button> 
        <font size="2" color="#0000aa">
              取得所有匹配的 DOM 元素集合。  这是取得所有匹配元素的一种向后兼容的方式（不同于jQuery对象，而实际上是元素数组）。 如果你想要直接操作 DOM 对象而不是 jQuery 对象，这个函数非常有用。
         </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">get(index)方法</font><button onclick="testGetIndex();">test</button> 
        <font size="2" color="#0000aa">
                        取得其中一个匹配的元素。 num表示取得第几个匹配的元素。 这能够让你选择一个实际的DOM 元素并且对他直接操作，而不是通过 jQuery 函数。$(this).get(0)与$(this)[0]等价。 
         </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">index(Element node)方法</font><button onclick="testIndex();">test</button> 
        <font size="2" color="#0000aa">
                        搜索匹配的元素，并返回相应元素的索引值，从0开始计数。 
                          如果不给 .index() 方法传递参数，那么返回值就是这个jQuery对象集合中第一个元素相对于其同辈元素的位置。 
                         如果参数是一组DOM元素或者jQuery对象，那么返回值就是传递的元素相对于原先集合的位置。  
                         如果参数是一个选择器，那么返回值就是原先元素相对于选择器匹配元素中的位置。如果找不到匹配的元素，则返回-1。
          </font>
      </li>
    </ul>   
    <p id="one">one</p>
    <p id="two">two</p>
    <p id="three">three</p>
    
    
     <ul>
       <li id="foo">foo</li>
       <li id="bar">bar</li>
        <li id="baz">baz</li>
    </ul>
  </body>
</html>
