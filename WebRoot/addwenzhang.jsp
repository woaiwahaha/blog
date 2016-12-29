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
				<div class="panel-heading">文章添加</div>
				<div class="panel-body">
					<form role="form" action="LoginAction!addWenZhang" method="post" class="form-horizontal">
						<fieldset>
							<div class="form-group has-success">
							<label class="col-sm-2 control-label">文章标题:</label>
								<div class="col-sm-10">
									<input class="form-control" placeholder="title" name="wenzhang.wztitle" type="text" autofocus="">
								</div>
							</div>
							
							<div class="form-group has-success">
							<label class="col-sm-2 control-label">文章内容:</label>
								<div class="col-sm-10">
									<textarea rows="3" cols="5" placeholder="body" name="wenzhang.wbody" class="form-control"></textarea>
								</div>
							</div>
														
							<div class="from-group has-success">
								<label class="col-sm-2 control-label">文章类型:</label>
								<div class="col-sm-10">
									<select name="wenzhang.typeid" class="form-control">
										<s:iterator value="types">
											<option value="<s:property value="tid"/>"><s:property value="tname"/></option>
										</s:iterator>
									</select>
								</div>
							</div>
							
							
							
							
							<div class="from-group has-success">
								<label class="col-sm-2 control-label">文章封面:</label>
								<div class="col-sm-10">
									<select name="wenzhang.wzimg" id="img" class="form-control">
										<option value="images/01.jpg">图片1</option>
										<option value="images/02.jpg">图片2</option>
										<option value="images/03.jpg">图片3</option>
										<option value="images/04.jpg">图片4</option>
										<option value="images/05.jpg">图片5</option>
										<option value="images/06.jpg">图片6</option>
									</select>
									<img id="kanImg">
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
