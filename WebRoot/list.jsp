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

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	
	<script type="text/javascript">
		
	</script>
<body>
<div class="table-responsive col-md-12">
	<table class="table table-striped table-hover">
		<tr>
			<th>编号</th>
			<th>用户名</th>
			<th>性别</th>
			<th>家庭住址</th>
			<th>注册时间</th>
			<th>操作</th>
		</tr>
		<s:iterator value="personals" status="p">
		<tr>
			<td><s:property value="pid"/></td>
			<td><s:property value="username"/></td>
			<td><s:if test="sex>0">男</s:if><s:elseif test="sex==0">女</s:elseif></td>
			<td><s:property value="address"/></td>
			<td><s:property value="zcsj"/></td>
			<td><a class="btn" href="LoginAction!getPerson?personal.pid=${pid}">修改</a></td>
		</tr>
		</s:iterator>
	</table>
	</div>
</body>
</html>