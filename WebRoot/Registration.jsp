<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
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

  </head>
  
  <body>
    <div class="row">
		<div class="col-xs-12 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<form role="form" action="RegistAction" method="post" class="form-horizontal">
						<fieldset>
							<div class="form-group">
							<label class="col-sm-2 control-label">用户名:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="username" name="personal.username" type="text" autofocus="">
								</div>
							</div>
							
							<div class="form-group">
							<label class="col-sm-2 control-label">密码:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="Password" name="personal.password" type="password" value="">
								</div>
							</div>
							
							<div class="form-group">
							<label class="col-sm-2 control-label">性别:</label>	
								<div class="col-sm-10">
									<div class="radio">
										<label>
											<input type="radio" name="personal.sex" value="1">男
										</label>
										<label>
											<input type="radio" name="personal.sex" value="0">女
										</label>
									</div>
								</div>
							</div>
							
							<div class="from-group">
								<label class="col-sm-2 control-label">地址:</label>
								<div class="col-sm-10">
									<input class="form-control" name="personal.address" placeholder="Adderss">
								</div>
							</div>
							
							<div class="from-group">
								<button class="btn btn-primary btn-block"  type="submit">注册</button>
								<button class="btn btn-primary btn-block" type="reset">重置</button>
								<a href="index.jsp">返回</a>
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
  </body>
</html>
