<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>My JSP 'jquery_ex_EditTable.jsp' starting page</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 
  <style type="text/css">
    .table{ 
      border: 1px solid #0000aa;
      margin-left: 150px ;
      margin-top: 100px;      
      width: 300px; 
    }
    .title{
       height: 28px;
       font-size: 13px;
       font-family: "微软雅黑"; 
       text-align: center;
       border: 1px solid #0000aa;
       width: 100px;
    }
    .tr{
       height: 28px;
       font-size: 12px;
       font-family: "微软雅黑";  
    }
    .td{ 
      border: 1px solid #cccccc;
      width: 100px;
      text-align: center;
    }
    .input{
      width: 80px;
      height : "20";
      font-size: 12px;
      font-family: "微软雅黑";    
      color: "#ff0000";
      text-align: left;
      margin:0px;
      margin-left: 0px; 
    }
  </style>
  </head>
  <script type="text/javascript" src="jquery-1.5.1.js"></script>  
  <script type="text/javascript">
    var  tdNodes ; 
  
    var tdNode;
    var  inputNode;
    var tdTemp ;
    var inputTemp;
    $(document).ready(function(){
       tdNodes = $(".td"); 
       tdNodes.click(tdClick); 
    });
    
    var tdClick = function(){ 
       tdNode = $(this);
       tdTemp = tdNode.text(); 
       tdNode.empty(); 
       inputNode = $("<input class='input'/>");
       inputNode.appendTo(tdNode);
       inputNode.focus();
       inputNode.select();
       inputNode.attr("value",tdTemp); 
       inputNode.blur(inputBlur);
       tdNode.unbind("click");	 //解除click事件
    }
    
    var inputBlur = function(){
       inputTemp=$(this).attr("value");  
       if(tdTemp!=inputTemp){
             if(confirm("当前内容已经更改，是否保存？")){
                 tdTemp=inputTemp; 
             }            
       } 
       tdNode.empty();
       tdNode.text(tdTemp);  
       tdNode.click(tdClick); 
    }
    
    
    
  </script> 
  <body>
    <table class="table">
       <tr> <td class="title">name</td> <td class="title">age</td> <td  class="title">sex</td> </tr>
       <%for(int  i = 1;i<10;i++){%> 
          <tr class="tr">
             <td class="td">name<%=i%></td>
             <td class="td">age<%=i%></td>
             <td class="td">sex<%=i%></td>
          </tr>
       <%       
         }
       %>
    </table>
  </body>
</html>
