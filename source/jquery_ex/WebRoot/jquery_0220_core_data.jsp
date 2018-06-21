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
      
      function  testData(){ 
    	      $("div").data("paramName","paramValue");//摄入值
              alert( $("div").data("paramName"));//取值 
              $("div").removeData("paramName");//删除
              alert( $("div").data("paramName"));//取值
          }

      function testDataObj(){
    	  $("div").data("array",{first:19,second:20,third:21})//存放 数组 对象为 json数据格式 返回值为 jquery对象
    	  alert("obj.first : "+$("div").data("array").first);
    	  alert("obj.second : "+$("div").data("array").second);
    	  alert("obj.third : "+$("div").data("array").third);
       }

      function testJQueryData(){
          alert(jQuery("div").html());// jQuery 与 $相等
          alert($("div").html());
    	  jQuery.data(document.body, 'foo', 52);
    	  jQuery.data(document.body, 'bar', 'test');

    	  alert(jQuery.data(document.body,'foo' ));
    	  alert(jQuery.data(document.body));//不指定变量名 取出所有存储的数据
    	  alert(jQuery.data(document.body).foo);// .变量名 一样可以取出数据
       }
  </script> 
  <body>
    <h1 align="center">JQuery 核心  CORE  数据缓存</h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">data([name])函数 返回值：any</font><button onclick="testData();">test</button> 
        <font size="2" color="#0000aa">
                          返回元素节点上储存的相应名字的数据，可以用data(name, value)来设定。
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">data([name],[value])函数 返回值：jquery</font><button onclick="testData();">test</button> 
        <font size="2" color="#0000aa">
                              在元素上存放数据,返回jQuery对象。       
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">removeData([name])函数 返回值：jquery</font><button onclick="testData();">test</button> 
        <font size="2" color="#0000aa">
                              根据变量名删除  存储在元素节点上的变量data
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">data([obj])函数 返回值：jquery</font><button onclick="testDataObj();">test</button> 
        <font size="2" color="#0000aa">
                              在元素上存放一组数据，返回jQuery对象。
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000"> jQuery.data(element, key, value) 返回值：jquery</font><button onclick="testJQueryData();">test</button> 
        <font size="2" color="#0000aa">
                     在元素上存放数据,返回jQuery对象。 注意：这是一个底层方法。你应当使用.data()来代替 
        </font>
      </li>
    </ul>    
     <div id="store">data存储节点</div>
     
  </body>
</html>
