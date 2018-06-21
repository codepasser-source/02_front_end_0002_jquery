<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jquery_ex_AutoComplete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  
  </head>
  
  <style type="text/css">
    div{
       font-family: "黑体";
       font-size: 12px;
    }
     .word {
       margin-left: 100px;
       margin-top: 20px;
       width: 380px;
       height: 28px;
       font-family: "微软雅黑";
       font-size: 14px;
     }  
     .complete{
       border: 1px  solid  #5a5a5a;
       position:absolute;
       width:  380px;
       height: 200px;   
       overflow :scroll;
       display: none;
     }  
  </style>
 <script type="text/javascript" src="jquery-1.5.1.js"></script>  
 <script type="text/javascript">
  
     var word;
     var wordText;
     var complete;
     var timsId; //服务器交互延迟

     var count=0;     //词条个数
     var selectId=-1; //初始时选中状态
   
     
     $(document).ready(function(){
    	 word =$("#word");
    	 complete=$("#complete");
    	 var offset = word.offset(); 
    	 complete.css("left",offset.left+"px");
         complete.css("top",offset.top+word.height()+5+"px"); 
    	 word.keyup(wordKeyUpListener);
     });
     
  var wordKeyUpListener = function(event){ 
	    var myEvent = event || window.event;
		var keyCode = myEvent.keyCode; 

		if(keyCode!=13&&keyCode!=38&&keyCode!=40&&keyCode!=27){
			   clearTimeout(timsId);//当下一次操作开始时清除当前延迟交互的方法，达到减轻服务器压力的方法
			   timsId = setTimeout(function (){
					 wordText = word.val(); 
					 if(wordText.length!=0){//如果不为空时不发送
						 accServer(wordText); 
						 complete.fadeIn(200);  
					 }else{//如果为空时隐藏提示框
						 complete.fadeOut(200);
					 }
				},800);
				
		}else{  
			  var autoNodes =  complete.children("div"); 
			  
			  if(count!=0){ 
				  if(keyCode==40){//向下键
					  autoNodes.eq(selectId).css("background","#ffffff");
					  if(selectId==count-1){ 
						  selectId=-2; 
                      }
					  selectId++; 
					  if(selectId==-1){
						  word.attr("value",wordText);
					  }else{
						  autoNodes.eq(selectId).css("background","#cccccc");
						  word.attr("value", autoNodes.eq(selectId).text());
				      } 
	              }else if(keyCode==38){ //向上
	            	  autoNodes.eq(selectId).css("background","#ffffff");
					  if(selectId==-1){ 
						  selectId=count; 
                      }else if(selectId == 0){
                         selectId = count+1;
                      }
					  selectId--; 
					  if(selectId==count){
						  word.attr("value",wordText);
					  }else{
						  autoNodes.eq(selectId).css("background","#cccccc");
						  word.attr("value", autoNodes.eq(selectId).text());
				      } 
	              }else if(keyCode==13){ //回车
	            	  completeFadeOut();
	              }else if(keyCode==27){ //esc
	            	  word.attr("value",wordText);
	            	  completeFadeOut();
	              }	 
			  } 
		}
  }

  function completeFadeOut(){ 
	  complete.empty();
	  selectId=-1;
	  count=0; 
	  complete.fadeOut(200);
  }
  
  function  accServer(wordText){
	  complete.empty(); 
	  $.get("wordxml.jsp",{word:wordText},function(xmlData){
		  var wordNodes = $(xmlData).find("word");
           wordNodes.each(function(){
             var newNode = $("<div>")
             newNode.html($(this).text());
             newNode.hover(wordNodeMouseOverListener,wordNodeMouseOutListener);
             complete.append(newNode); 
           }); 
         count = wordNodes.length; //记录总节点数 
     	 selectId=-1;//重置初始值
	  }); 
   }

   var wordNodeMouseOverListener = function() {
	  $(this).css("background","#cccccc"); 
   }
   var wordNodeMouseOutListener = function() {
		  $(this).css("background","#ffffff"); 
	 }
 
 </script> 
 <body>
    
      <input id="word"  type="text" class="word"><input id="submit"  type="button"  value="提交"> 
    <div id="complete" class="complete"></div>
 </body>
</html>
