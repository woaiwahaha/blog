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
			<th>类型名称</th>
			<th>创建时间</th>
			<th>创建人</th>
			<th>操作</th>
		</tr>
		<s:iterator value="types" status="t">
		<tr>
			<td><s:property value="tid"/></td>
			<td><s:property value="tname"/></td>
			<td><s:property value="cjsj"/></td>
			<td><s:property value="cjr"/></td>
			<td><a class="btn" href="LoginAction!delType?type.tid=${tid}">删除</a></td>
		</tr>
		</s:iterator>
	</table>
	</div>
</body>
</html>