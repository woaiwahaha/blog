<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<link href="css/base.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	
	<script type="text/javascript">
	var wd;
   	var winTimer;//计时器变量, 监听窗口关闭 
   	function openWindow(wzid) {
         wd = window.open("LoginAction!updateWenZhangBefore?wenzhang.wzid="+wzid,"文章详情","height=800,width=1000,padding=300,toolbar=no,menubar=no,location=no, status=no,scrollbars=yes,resizable=yes");
         if (wd)  
          window.wd.focus();//判断窗口是否打开,如果打开,窗口前置  
          winTimer=window.setInterval("wisclosed()",500);
   }
   function wisclosed(){
    if(wd.closed){  
      alert(window.returnVaule);//子窗体返回值  
      //这里可以做赋值操作  
      window.clearInterval(winTimer);  
    }  
   }
 </script>
	
	
<body>
<div class="table-responsive col-md-12">
	<div class="topnews">
	<h2><span><a href="#" target="_blank">栏目标题</a><a href="#" target="_blank">栏目标题</a><a href="#" target="_blank">栏目标题</a></span><b>文章</b>推荐</h2>
	<s:iterator value="wenzhangs" status="wz">
		<div class="blogs">
        <figure><img src="<s:property value='wzimg'/>"></figure>
	        <ul>
	          <h3><a href="LoginAction!updateWenZhangBefore?wenzhang.wzid=${wzid }" class="btn" id="a"><s:property value="wztitle"/></a></h3>
	          <div><s:property value="wbody"/></div>
	          <p class="autor"><span class="lm f_l"><a href="/"><s:property value="wzautor"/></a></span><span class="dtime f_l"><s:property value="wzcjsj"/></span><a href="LoginAction!delWenZhang?wenzhang.wzid=${wzid}" class="glyphicon glyphicon-trash"></a><span class="viewnum f_r">浏览（<a href="#">459</a>）</span><span class="pingl f_r">评论（<a href="#">30</a>）</span></p>
	        </ul>
      </div>
      </s:iterator>
	</div>
	</div>
</body>
</html>