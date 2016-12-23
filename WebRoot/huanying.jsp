<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'content1.jsp' starting page</title>
    <link href="css/content.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>

	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a href="#">首页</a></li>
	    <li><a href="#">欢迎</a></li>
	    </ul>
	</div>
	<div class="mainindex">
	    <div class="welinfo">
		    <span><img src="images/sun.png" alt="天气" /></span>
		    <b>${username}早上好，欢迎使用博客管理系统</b>(127.0.0.1:8080/blog)
		    <a href="LoginAction!getPersonalList" target="rightFrame">帐号修改</a>
	    </div>
	    <div class="welinfo">
		    <span><img src="images/time.png" alt="时间" /></span>
		    <i>您上次登录的时间：2013-10-09 15:22</i> （不是您登录的？<a href="LoginAction!getPersonalList" target="rightFrame">请点这里</a>）
	    </div>
	    <div class="xline"></div>
    </div>
  </body>
</html>
