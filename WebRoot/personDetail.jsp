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
		<div class="col-xs-9">
			<div class="login-panel panel panel-default">
				<div class="panel-body">
					<form role="form" action="LoginAction!updatePerson" method="post" class="form-horizontal">
									<input type="hidden" name="personal.pid" value="${personal.pid}">
									<input type="hidden" name="personal.zcsj" value="${personal.zcsj}">
						<fieldset>
							<div class="form-group">
							<label class="col-sm-2 control-label">用户名:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="username" name="personal.username" type="text" autofocus="" value="${personal.username }">
								</div>
							</div>
							
							<div class="form-group">
							<label class="col-sm-2 control-label">密码:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="Password" name="personal.password" type="text" value="${personal.password }">
								</div>
							</div>
							
							<div class="form-group">
							<label class="col-sm-2 control-label">性别:</label>	
								<div class="col-sm-10">
									<div class="radio">
										<label>
											<input type="radio" name="personal.sex" value="1" ${personal.sex eq '1' ? 'checked="checked"' :""  }>男
										</label>
										<label>
											<input type="radio" name="personal.sex" value="0" ${personal.sex eq '0' ? 'checked="checked"' :""  }>女
										</label>
									</div>
								</div>
							</div>
							
						
							
							<div class="form-group">
							<label class="col-sm-2 control-label">地址:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="address" name="personal.address" type="text" value="${personal.address }">
								</div>
							</div>
							
							<div class="from-group" style="padding-top: 50px;padding-left: 45%;">
								<button class="btn btn-primary" type="submit">修改</button>
								<a class="btn btn-primary" href="LoginAction!getPersonalList">返回</a>
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
  </body>
</html>
