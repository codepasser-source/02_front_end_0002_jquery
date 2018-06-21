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
        function  testAjax1(){
             
             $.ajax({
            	   type: "POST",
            	   url: "<%=path%>/AjaxServer",
            	   data: {array1:['bar1','bar2'],array2:['bar3','bar4']} ,
            	   processData:true, //是否自动转换参数格式
            	   async:true,  //异步交互方式
            	   dataType:"Text",
            	   cache:false, 
            	   contentType:"application/x-www-form-urlencoded",
            	   //context:document.body, //指定上下文 this
            	   global:true,
            	   ifModified:false,
            	   username:"username",
            	   password:"password",
            	   beforeSend:function(xhr){
                	   alert("ajax 回调函数 [beforeSend]  [options：{data:" + this.data +"],[url:"+ this.url +"]}");
                      // return false; 返回false 则不执行当前request
                   },
                   dataFilter:function(data,type){
                         alert("ajax 回调函数 [dataFilter]  [options：{data:" + this.data +"],[type:"+ type +"]}")
                         return data;
                   },
            	   success: function(data,reqState){
            	     alert( "ajax 回调函数 [success]  参数[data  返回值：" + data +"] [reqState:"+reqState+"]" );
                     //$(this).append(data);//根据content获取节点 
              	   },
            	   complete:function(xhr,reqState){
            		 alert( "ajax 回调函数 [complete:function]  参数[xhr  ：" + xhr +"] [reqState:"+reqState+"]" );
                   },
                   error:function (xhr, reqState, errorThrown){
                       alert("ajax 回调函数 [error:function]  参数[xhr  ：" + xhr +"] [reqState:"+reqState+"] [errorThrown:"+errorThrown+"]" )
                   }
            	});
        }
  </script> 
  <body>
    <h1 align="center">JQuery AJAX  $.ajax()</h1> 
    <ul>  
       <li dir="ltr"><font size="4" color="#aa0000">jQuery.ajax([options])</font>
                    <button onclick="testAjax1()">test ajax 请求</button>  <br>
                    <font size="3" color="#aa0000">通过 HTTP 请求加载远程数据。 jQuery 底层 AJAX 实现。简单易用的高层实现见 $.get, $.post 等。$.ajax() 返回其创建的 XMLHttpRequest 对象。大多数情况下你无需直接操作该函数，除非你需要操作不常用的选项，以获得更多的灵活性。 
                                                     最简单的情况下，$.ajax()可以不带任何参数直接使用。注意，所有的选项都可以通过$.ajaxSetup()函数来全局设置。</font> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                         <font size="2" color="#0000aa">(默认: 当前页地址) 发送请求的地址。 </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ type ][String]</font>
                         <font size="2" color="#0000aa">请求类型   get or  post </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ data ][Object,String]</font>
                         <font size="2" color="#0000aa"> 发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。查看 processData 选项说明以禁止此自动转换。必须为 Key/Value 格式。如果为数组，jQuery 将自动为不同值对应同一个名称。如 {foo:["bar1", "bar2"]} 转换为 '&foo=bar1&foo=bar2  </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ processData ][boolean]</font>
                         <font size="2" color="#0000aa">  (默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。</font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ async ][boolean]</font>
                         <font size="2" color="#0000aa"> (默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行</font></li> 
                     <li ><font size="2" color="#ff00ff">参数 ：[ dataType ][String]</font>
                         <font size="2" color="#0000aa"> 预期服务器返回的数据类型"xml": 返回 XML 文档，可用 jQuery 处理。 "html": 返回纯文本 HTML 信息；包含的script标签会在插入dom时执行。"script": 返回纯文本 JavaScript 代码。不会自动缓存结果。除非设置了"cache"参数。'''注意：'''在远程请求时(不在同一个域下)，所有POST请求都将转为GET请求。(因为将使用DOM的script标签来加载)"json": 返回 JSON 数据 。"jsonp": JSONP 格式。使用 JSONP 形式调用函数时，如 "myurl?callback=?" jQuery 将自动替换 ? 为正确的函数名，以执行回调函数。"text": 返回纯文本字符串</font></li> 
                     <li ><font size="2" color="#ff00ff">参数 ：[ cache ][boolean]</font>
                         <font size="2" color="#0000aa"> (默认: true,dataType为script和jsonp时默认为false) jQuery 1.2 新功能，设置为 false 将不缓存此页面。</font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ contentType ][String]</font>
                         <font size="2" color="#0000aa"> (默认: "application/x-www-form-urlencoded") 发送信息至服务器时内容编码类型。默认值适合大多数情况。如果你明确地传递了一个content-type给 $.ajax() 那么他必定会发送给服务器（即使没有数据要发送）</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ context ][Object]</font>
                         <font size="2" color="#0000aa">这个对象用于设置Ajax相关回调函数的上下文。也就是说，让回调函数内this指向这个对象（如果不设定这个参数，那么this就指向调用本次AJAX请求时传递的options参数）。比如指定一个DOM元素作为context参数，这样就设置了success回调函数的上下文为这个DOM元素。就像这样： </font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ global ][boolean]</font>
                         <font size="2" color="#0000aa">(默认: true) 是否触发全局 AJAX 事件。设置为 false 将不会触发全局 AJAX 事件，如 ajaxStart 或 ajaxStop 可用于控制不同的</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ ifModified ][boolean]</font>
                         <font size="2" color="#0000aa">(默认: false) 仅在服务器数据改变时获取新数据。使用 HTTP 包 Last-Modified 头信息判断。在jQuery 1.4中，他也会检查服务器指定的'etag'来确定数据没有被修改过。</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ jsonp ][String]</font>
                         <font size="2" color="#0000aa">在一个jsonp请求中重写回调函数的名字。这个值用来替代在"callback=?"这种GET或POST请求中URL参数里的"callback"部分，比如{jsonp:'onJsonPLoad'}会导致将"onJsonPLoad=?"传给服务器。</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ jsonpCallback ][String]</font>
                         <font size="2" color="#0000aa"> 为jsonp请求指定一个回调函数名。这个值将用来取代jQuery自动生成的随机函数名。这主要用来让jQuery生成度独特的函数名，这样管理请求更容易，也能方便地提供回调函数和错误处理。你也可以在想让浏览器缓存GET请求的时候，指定这个回调函数名。</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ username ][String]</font>
                         <font size="2" color="#0000aa">用于响应HTTP访问认证请求的用户名</font></li>
                   <li ><font size="2" color="#ff00ff">参数 ：[ password ][String]</font>
                         <font size="2" color="#0000aa">用于响应HTTP访问认证请求的密码</font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ scriptCharset ][String]</font>
                         <font size="2" color="#0000aa">只有当请求时dataType为"jsonp"或"script"，并且type是"GET"才会用于强制修改charset。通常只在本地和远程的内容编码不同时使用。</font></li> 
                   <li ><font size="2" color="#ff00ff">参数 ：[ traditional ][boolean]</font>
                         <font size="2" color="#0000aa">如果你想要用传统的方式来序列化数据，那么就设置为true。请参考工具分类下面的jQuery.param 方法。</font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ timeout ][number]</font>
                         <font size="2" color="#0000aa">设置请求超时时间（毫秒）。此设置将覆盖全局设置。</font></li> 
                   
                    
                    <li ><font size="2" color="#ff00ff">回调函数 ：[ beforeSend(XHR) ][function]</font>
                         <font size="2" color="#0000aa">发送请求前可修改 XMLHttpRequest 对象的函数，如添加自定义 HTTP 头。XMLHttpRequest 对象是唯一的参数。这是一个 Ajax 事件。如果返回false可以取消本次ajax请求。 </font></li> 
                    <li ><font size="2" color="#ff00ff">回调函数 ：[ dataFilter(data,type) ][function]</font>
                         <font size="2" color="#0000aa">给Ajax返回的原始数据的进行预处理的函数。提供data和type两个参数：data是Ajax返回的原始数据，type是调用jQuery.ajax时提供的dataType参数。函数返回的值将由jQuery进一步处理。  </font></li> 
                    <li ><font size="2" color="#ff00ff">回调函数 ：[ success(data,textStatus) ][function]</font>
                         <font size="2" color="#0000aa">请求成功后的回调函数。参数：由服务器返回，并根据dataType参数进行处理后的数据；描述状态的字符串 </font></li> 
                    <li ><font size="2" color="#ff00ff">回调函数 ：[ complete(XHR,TS) ][function]</font>
                         <font size="2" color="#0000aa">请求完成后回调函数 (请求成功或失败之后均调用)。参数： XMLHttpRequest 对象和一个描述成功请求类型的字符串。</font></li> 
                    <li ><font size="2" color="#ff00ff">回调函数 ：[ error(XMLHttpRequest, textStatus, errorThrown) ][function]</font>
                         <font size="2" color="#0000aa">(默认: 自动判断 (xml 或 html)) 请求失败时调用此函数。有以下三个参数：XMLHttpRequest 对象、错误信息、（可选）捕获的异常对象。如果发生了错误，错误信息（第二个参数）除了得到null之外，还可能是"timeout", "error", "notmodified" 和 "parsererror"。</font></li> 
                    
        </li>
        
    </ul>    
   </body>
</html>
