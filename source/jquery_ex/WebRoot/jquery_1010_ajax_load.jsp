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
    .live {width:400px;height:300px; overflow:scroll; border:1px solid;}
    .changcolor{border-color: "#aa0000";background:"#cccccc"}
 </style>
  </head>  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">  
        
        function testLoad(){
        
           $("#div1").load(
             "<%=path%>/jquery_1010_ajax_load.jsp",
             {limte:30},
             function(){
               alert("load complete");
             }
           );
        }
        function testGet(){
        
           $.get(
             "<%=path%>/AjaxServer",
             {array1:['bar1','bar2'],array2:['bar3','bar4']},
             function(data){
               alert("get complete");
             },
             "text"
           );
        }
         function testPost(){ 
           $.post(
             "<%=path%>/AjaxServer",
             {array1:['bar1','bar2'],array2:['bar3','bar4']},
             function(data){
               alert("post complete");
             },
             "text"
           );
        } 
        function testGetJson(){ 
           alert("json")
           $.getJSON(
             "<%=path%>/AjaxJsonServer", 
             function(jsonData){ 
               alert(jsonData);
             } 
           );
        }

        
  </script> 
  <body>
    <h1 align="center">JQuery AJAX  node.load()</h1> 
    <ul>  
         <li dir="ltr"><font size="4" color="#aa0000"> load(url, [data], [callback])</font>
                    <button onclick="testLoad()">test load</button>  <br>
                    <font size="3" color="#aa0000">载入远程 HTML 文件代码并插入至 DOM 中。 默认使用 GET 方式 - 传递附加参数时自动转换为 POST 方式。jQuery 1.2 中，可以指定选择符，来筛选载入的 HTML 文档，DOM 中将仅插入筛选出的 HTML 代码。语法形如 "url #some > selector"。请查看示例。</font> 
                    <li><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                        <font size="2" color="#0000aa">待装入 HTML 网页网址。 </font></li> 
                    <li><font size="2" color="#ff00ff">参数 ：[ data ][Object , String]</font>
                         <font size="2" color="#0000aa">发送至服务器的 key/value 数据。在jQuery 1.3中也可以接受一个字符串了。 </font></li> 
                    <li><font size="2" color="#ff00ff">参数 ：[ callback ][function]</font>
                         <font size="2" color="#0000aa">载入成功时回调函数</font></li> 
         </li>  
          <li dir="ltr"><font size="4" color="#aa0000"> get(url, [data], [callback],[type])</font>
                    <button onclick="testGet()">test get</button>  <br>
                    <font size="3" color="#aa0000">通过远程 HTTP GET 请求载入信息。这是一个简单的 GET 请求功能以取代复杂 $.ajax 。请求成功时可调用回调函数。如果需要在出错时执行函数，请使用 $.ajax。</font> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                         <font size="2" color="#0000aa">请求地址。 </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ data ][Object , String]</font>
                         <font size="2" color="#0000aa">发送至服务器的 key/value 数据。在jQuery 1.3中也可以接受一个字符串了。 </font></li>
                    <li ><font size="2" color="#ff00ff">参数 ：[ callback ][function]</font>
                         <font size="2" color="#0000aa">载入成功时回调函数。 </font></li>
                    <li ><font size="2" color="#ff00ff">参数 ：[ type ][String]</font>
                         <font size="2" color="#0000aa"> 返回内容格式，xml, html, script, json, text, _default。 </font></li>    
          </li>     
           <li dir="ltr"><font size="4" color="#aa0000"> get(url, [data], [callback],[type])</font>
                    <button onclick="testPost()">test post</button>  <br>
                    <font size="3" color="#aa0000">通过远程 HTTP post请求载入信息。这是一个简单的post请求功能以取代复杂 $.ajax 。请求成功时可调用回调函数。如果需要在出错时执行函数，请使用 $.ajax。</font> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                         <font size="2" color="#0000aa">请求地址。 </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ data ][Object , String]</font>
                         <font size="2" color="#0000aa">发送至服务器的 key/value 数据。在jQuery 1.3中也可以接受一个字符串了。 </font></li>
                    <li ><font size="2" color="#ff00ff">参数 ：[ callback ][function]</font>
                         <font size="2" color="#0000aa">载入成功时回调函数。 </font></li>
                    <li ><font size="2" color="#ff00ff">参数 ：[ type ][String]</font>
                         <font size="2" color="#0000aa"> 返回内容格式，xml, html, script, json, text, _default。 </font></li>    
          </li>     
           <li dir="ltr"><font size="4" color="#aa0000"> Jquery.getJson(url, [data], [callback])</font>
                    <button onclick="testGetJson()">test getJson</button>  <br>
                    <font size="3" color="#aa0000">通过 HTTP GET 请求载入 JSON 数据。在 jQuery 1.2 中，您可以通过使用JSONP 形式的回调函数来加载其他网域的JSON数据，如 "myurl?callback=?"。jQuery 将自动替换 ? 为正确的函数名，以执行回调函数。 注意：此行以后的代码将在这个回调函数执行前执行。</font> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                         <font size="2" color="#0000aa">请求地址。 </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ data ][Object , String]</font>
                         <font size="2" color="#0000aa">发送至服务器的 key/value 数据。在jQuery 1.3中也可以接受一个字符串了。 </font></li>
                    <li ><font size="2" color="#ff00ff">参数 ：[ callback ][function]</font>
                         <font size="2" color="#0000aa">载入成功时回调函数。 </font></li> 
          </li>   
          <li dir="ltr"><font size="4" color="#aa0000"> Jquery.getScript(url,  [callback])</font>
                    <button onclick="testGetScript()">test getScript</button>  <br>
                    <font size="3" color="#aa0000">通过 HTTP GET 请求 载入js文件并执行。</font> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ url ][String] </font>
                         <font size="2" color="#0000aa">请求地址。 </font></li> 
                    <li ><font size="2" color="#ff00ff">参数 ：[ callback ][function]</font>
                         <font size="2" color="#0000aa">载入成功时回调函数。 </font></li> 
          </li>        
          
    </ul> 
    <div id="div1" class="live">
      <p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p><p>div</p>
    </div>
  

   </body>
</html>
