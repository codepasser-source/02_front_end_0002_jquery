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
 
 .div { margin:3px; width:40px; height:40px;
        position:absolute; left:0px; top:40px; 
        background:green;  }
        
        </style>
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script> 
  <script type="text/javascript">
      function testFirst(){
         alert($("div").first().html());
      }
      function testLast(){
          alert($("div").last().html());
      }
      function testNot(){
        var nodes = $("div:not(#div1)");
        alert("length:"+nodes.length);
        alert("first:"+nodes.first().html());
      }
       function testEven(){
        var nodes = $("div:even");
        alert("length:"+nodes.length);
        alert(nodes.get(0).innerHTML);
        alert(nodes.get(1).innerHTML);
      }
      function testOdd(){
        var nodes = $("div:odd");
        alert("length:"+nodes.length);
        alert(nodes.get(0).innerHTML);
        alert(nodes.get(1).innerHTML);
      }
     function testEq(){
        var nodes = $("div:eq(1)");//指定下标
        alert("length:"+nodes.length);
        alert(nodes.get(0).innerHTML); 
      }
      function testGt(){
        var nodes = $("div:gt(1)");//指定下标
        alert("length:"+nodes.length);
        alert(nodes.get(0).innerHTML); 
      }
     function testLt(){
        var nodes = $("div:lt(1)");//指定下标
        alert("length:"+nodes.length);
        alert(nodes.get(0).innerHTML); 
      }
       function testHeader(){
        var nodes = $(":header");//指定下标
        alert("length:"+nodes.length);
        alert(nodes.get(1).innerHTML); 
      }
      
      function testAnimated(){
        var nodes = $("#div1:not(:animated)").animate({ left: "+=100" }, 1000); 
      }
      
      function testContains(){
         alert($("div:contains('div1')").text());
      }
      function  testEmpty(){
         alert($("p:empty").attr("id"));
      }
      
      function testHas(){
       alert($("div:has(p)").attr("id"));
      }
      
      function testParent(){
         alert($("div:parent").length);
      }
      
      function testHidden(){
         alert($("div:hidden").text());
      }
      function testVisible(){
      alert($("div:visible").length);
      }
      function testAttribute(){
         alert($("div[id]").length);
      }
  </script> 
  <body>
    <h1 align="center">JQuery 选择器 节点查找常用方法 属性  </h1>
    <ul> 
       <li dir="ltr"><font size="4" color="#aa0000">：first</font><button onclick="testFirst();">test</button> 
        <font size="2" color="#0000aa">
                                 获取第一个元素   
        </font>
      </li>  
      <li dir="ltr"><font size="4" color="#aa0000">：last</font><button onclick="testLast();">test</button> 
        <font size="2" color="#0000aa">
                                 获取最后一个元素
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">：not</font><button onclick="testNot();">test</button> 
        <font size="2" color="#0000aa">
                                 去除所有与给定选择器匹配的元素 ,筛选条件
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：even</font><button onclick="testEven();">test</button> 
        <font size="2" color="#0000aa">
                                 匹配所有索引值为偶数的元素，从 0 开始计数 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：odd</font><button onclick="testOdd();">test</button> 
        <font size="2" color="#0000aa">
                                 匹配所有索引值为奇数的元素，从 0 开始计数 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：eq(index)</font><button onclick="testEq();">test</button> 
        <font size="2" color="#0000aa">
                               匹配一个给定索引值的元素 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：gt(index)</font><button onclick="testGt();">test</button> 
        <font size="2" color="#0000aa">
                               匹配所有大于给定索引值的元素 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：lt(index)</font><button onclick="testLt();">test</button> 
        <font size="2" color="#0000aa">
                               匹配所有小于给定索引值的元素 
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">：header</font><button onclick="testHeader();">test</button> 
        <font size="2" color="#0000aa">
                           匹配如 h1, h2, h3之类的标题元素 
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">：animated</font><button onclick="testAnimated();">test</button> 
        <font size="2" color="#0000aa">
                            匹配所有正在执行动画效果的元素 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：contains</font><button onclick="testContains();">test</button> 
        <font size="2" color="#0000aa">
                           匹配包含给定文本的元素 
        </font>
      </li> 
      <li dir="ltr"><font size="4" color="#aa0000">：empty</font><button onclick="testEmpty();">test</button> 
        <font size="2" color="#0000aa">
                         匹配所有不包含子元素或者文本的空元素 
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：has</font><button onclick="testHas();">test</button> 
        <font size="2" color="#0000aa">
                                 匹配含有当前指定子元素 的 元素 
        </font>
      </li>
       <li dir="ltr"><font size="4" color="#aa0000">：parent</font><button onclick="testParent();">test</button> 
        <font size="2" color="#0000aa">
                                 匹配含有子元素或者文本的元素  
        </font>
      </li>
      <li dir="ltr"><font size="4" color="#aa0000">：hidden</font><button onclick="testHidden();">test</button> 
        <font size="2" color="#0000aa">
                                匹配所有不可见元素，或者type为hidden的元素  
        </font>
      </li>  
      <li dir="ltr"><font size="4" color="#aa0000">：visible</font><button onclick="testVisible();">test</button> 
        <font size="2" color="#0000aa">
                                匹配所有的可见元素  
        </font>
      </li>       
       <li dir="ltr"><font size="4" color="#aa0000">[attribute]</font><button onclick="testAttribute();">test</button> 
        <font size="2" color="#0000aa">
                              匹配包含给定属性的元素。注意，在jQuery 1.3中，前导的@符号已经被废除！如果想要兼容最新版本，只需要简单去掉@符号即可
        <br/>
        [attribute=value] (匹配给定的属性是某个特定值的元素 )
        [attribute!=value](匹配给定的属性不是某些值的元素)
        [attribute^=value](匹配给定的属性是以某些值开始的元素)
        [attribute$=value](匹配给定的属性值是以某些值结束元素)
        [attribute*=value](匹配给定的属性是以包含某些值的元素)
        [selector1][selector2][selectorN] 符合选择器包含多个条件
        
        </font>
      </li>
    </ul>
     
    <div id="div1" class="div">div1</div>
	<div>div2</div>
	<div>div3</div>
	<div>div4</div>
<h1>Header 1</h1> 
<div id="div5"><p id="myp">div5</p></div> 
<h2>Header 2</h2> 
<div style="display: none">div6</div>
	</body>
</html>
