<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>类型新增</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
		$(function(){
			$('#img').bind('change',function(){
				var img = $('#img').val();
				$('#kanImg').attr('src',img);
			});
		});
	</script>
  </head>
  
  <body>
    <div class="row">
		<div class="col-xs-9">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">类型添加</div>
				<div class="panel-body">
					<form role="form" action="LoginAction!addType" method="post" class="form-horizontal">
						<fieldset>
							<div class="form-group has-success">
							<label class="col-sm-2 control-label">类型名称</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="title" name="type.tname" type="text" autofocus="">
								</div>
							</div>
							
							<div class="from-group" style="padding-top: 100pxpx;padding-left: 45%;">
								<button class="btn btn-primary"  type="submit">添加</button>
								<button class="btn btn-primary" type="reset">重置</button>
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
  </body>
</html>
