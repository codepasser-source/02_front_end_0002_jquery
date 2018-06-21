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
  #win{
    background-color:"#ffffff";
    width:"300px";
    height:"200px";
    left:"400px";
    top: "400px";
    border: 1px #5a5a5a solid; 
    position:absolute; /*绝对定位*/
    /*display:none;*/
  }
  #title{
     background-color:"#cccccc";
     width:"300px";
     height:"25px"; 
     padding: "3px"
  }
  #close{
     background-color:"#cccccc";
     width:"20px";
     height:"25px"; 
     margin-left: "240px";
     padding: "3px"
  }
   #content{
     background-color:"#00cc00";
     width:"300px";
     height:"180px";  
     padding: "10px"
   }
   
   #show{
     width: 40px;
     height: 25px;
   }
</style> 
  </head> 
  
  <script type="text/javascript" src="jquery-1.5.1.js"></script>
 
  <script type="text/javascript">
    
     
     function testShow(){
       var  win = $("#win");
      
      /*显示的方法 一 ：show 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)*/
       win.show(1000,function(){
          alert("显示完成");
       }); 
     }
      function testHide(){ 
       var  win = $("#win");
       /*隐藏的方法 一 ： 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)*/
       win.hide("slow",function(){
          alert("隐藏完毕");
       });
     }
     
     function  testToggle(){
        var win = $("#win");
        win.toggle(500);
        win.queue(function(){//加队列
          $(this).dequeue();
        })
        win.toggle(true);
        win.queue(function(){//加队列
          $(this).dequeue();
        })
        win.toggle(3000,function(){
          alert("切换完成");
        });
       
     }
     
     function testSlideDown(){
         var  win = $("#win");
         win.slideDown(1000,function(){
            alert("滑动显示完毕");
         });
     }
     function testSlideUp(){
         var  win = $("#win");
         win.slideUp(1000,function(){
            alert("滑动显示完毕");
         });
     }
     
     function testSlideToggle(){
         var  win = $("#win");
         
          win.slideToggle(1000,function(){
             alert("滑动");
          });
          
     }
     
     function  testFadeIn(){
          var  win = $("#win"); 
          win.fadeIn(2000,function(){
             alert("淡入淡出  显示");
          });
     }
     function  testFadeOut(){
          var  win = $("#win"); 
          win.fadeOut(1000,function(){
             alert("淡入淡出  隐藏");
          });
     }
     function  testFadeTo(){
          var  win = $("#win"); 
          win.fadeTo(1000,0.25,function(){
             alert("淡入淡出  指定透明度");
          });
     }

     function testAnimate1(){
         
    	 var  win = $("#win"); 
         win.animate(
                 { 
        	      //width: "110%",
        	     // height: "110%", 
        	     // fontSize: "3em", 
        	     // borderWidth: 8,
        	      left: "-5px"
        	     }, 
        	     2000,
        	     //"easein", 擦除 ：需要插件支持
        	     function(){
                     alert("动画完成");
               	     } 
        	     ); 
      }

    function testAnimate2(){

    	 var  win = $("#win"); 
    	 win.animate( { width: "10%"}, { queue: true, duration: 5000 } ) .animate( { fontSize: '10em' } , 1000 ).animate( { borderWidth: 5 }, 1000);
    	        
    }
    function  testStop(){
    	 var  win = $("#win"); 
    	 win.stop();
        }
    function  testDelay(){
    	$('#win').slideUp(1000).delay(2000).slideDown(1000);
        }
</script> 
  <body>
  
    <ul>
         <li dir="ltr"><font size="4" color="#aa0000">show() | show(speed, [callback]) </font><button onclick="testShow()">show</button>  
           <font size="2" color="#0000aa"> 
                                    显示隐藏的匹配元素。 
           </font>
        </li>
      <li dir="ltr"><font size="4" color="#aa0000">hide() |  hide(speed, [callback])</font><button onclick="testHide()">hide</button>  
           <font size="2" color="#0000aa"> 
                                隐藏  可见的匹配元素
           </font>
        </li>
         <li dir="ltr"><font size="4" color="#aa0000"> toggle()  |  toggle(switch)  |   toggle(speed, [callback])  </font><button onclick="testToggle()">toggle</button>  
           <font size="2" color="#0000aa"> 
                                   切换元素的可见性 ，设置动画切换   (true 可见   false 隐藏)
           </font>
        </li>
         <li dir="ltr"><font size="4" color="#aa0000">slideDown(speed, [callback])</font><button onclick="testSlideDown()">slideDown</button>  
           <font size="2" color="#0000aa"> 
                                  向下展开显示
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">slideUp(speed, [callback])</font><button onclick="testSlideUp()">slideUp</button>  
           <font size="2" color="#0000aa"> 
                                    向上收起隐藏
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">slideToggle(speed, [callback])</font><button onclick="testSlideToggle()">slideToggle</button>  
           <font size="2" color="#0000aa"> 
                                    上下展开  收起  切换
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">fadeIn(speed, [callback])</font><button onclick="testFadeIn()">fadeIn</button>  
           <font size="2" color="#0000aa"> 
                                  淡入淡出效果 【显示】   通过不透明度的变化来实现所有匹配元素的淡入效果，并在动画完成后可选地触发一个回调函数。 
           </font>
        </li>
        
         <li dir="ltr"><font size="4" color="#aa0000">fadeOut(speed, [callback])</font><button onclick="testFadeOut()">fadeOut</button>  
           <font size="2" color="#0000aa"> 
                                    淡入淡出效果 【隐藏】
           </font>
        </li>
        
        <li dir="ltr"><font size="4" color="#aa0000">fadeTo(speed, opacity, [callback])</font><button onclick="testFadeTo()">fadeTo</button>  
           <font size="2" color="#0000aa"> 
                                    淡入淡出效果 【隐藏】
           </font>
        </li>
        
         <li dir="ltr"><font size="4" color="#aa0000">fadeTo(speed, opacity, [callback])</font><button onclick="testFadeTo()">fadeTo</button>  
           <font size="2" color="#0000aa"> 
                                    淡入淡出效果 【隐藏】
           </font>
         </li>
        
        <li dir="ltr"><font size="4" color="#aa0000">animate(params, [duration], [easing], [callback])</font><button onclick="testAnimate1()">animate</button>  
           <font size="2" color="#0000aa"> 
                           自定义动画 : 这个函数的关键在于指定动画形式及结果样式属性对象。这个对象中每个属性都表示一个可以变化的样式属性（如“height”、“top”或“opacity”）。注意：所有指定的属性必须用骆驼形式，比如用marginLeft代替margin-left. 

而每个属性的值表示这个样式属性到多少时动画结束。如果是一个数值，样式属性就会从当前的值渐变到指定的值。如果使用的是“hide”、“show”或“toggle”这样的字符串值，则会为该属性调用默认的动画形式。 
             
 paramsOptions一组包含作为动画属性和终值的样式属性和及其值的集合

 duration (可选)String,Number三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)

 easing (可选)String要使用的擦除效果的名称(需要插件支持).默认jQuery提供"linear" 和 "swing".

 callback (可选)Function在动画完成时执行的函数 
           </font>
        </li>
        <li dir="ltr"><font size="4" color="#aa0000">animate(params, options)</font><button onclick="testAnimate2()">animate</button>  
           <font size="2" color="#0000aa"> 
                     自定义动画 :            
           </font>
         </li>
          <li dir="ltr"><font size="4" color="#aa0000">stop([clearQueue], [gotoEnd])</font><button onclick="testStop()">stop</button>  
           <font size="2" color="#0000aa"> 
                   停止动画       
           </font>
         </li>
          <li dir="ltr"><font size="4" color="#aa0000">delay(duration, [queueName])</font><button onclick="testDelay()">delay</button>  
           <font size="2" color="#0000aa"> 
                     动画设置延迟        
           </font>
         </li>
          <li dir="ltr"><font size="4" color="#aa0000">jQuery.fx.off = [true|false] </font>
           <font size="2" color="#0000aa"> 
              关闭页面上所有的动画。

把这个属性设置为true可以立即关闭所有动画(所有效果会立即执行完毕)。有些情况下可能需要这样，比如： 

* 你在配置比较低的电脑上使用jQuery。 

              
           </font>
         </li>
     </ul>
  
      
     <div id="win"> 
         <div id="title">标题<span id="close" onclick="testHide();">X</span></div>
         <div id="content">内容</div>
     </div>
     
     
  </body>
</html>
