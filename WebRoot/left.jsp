<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		function yonghu(){
			alert(a);
		}
	</script>
<body>

		<ul class="nav menu"> 
				<li class="parent"> 
				<a href="#"> 
					<span class="glyphicon glyphicon-list"></span> 文章（类型）管理 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>  
				</a> 
				<ul class="children collapse" id="sub-item-1"> 
					<li> 
						<a href="LoginAction!getTypeList" target="rightFrame"> 
							<span class="glyphicon glyphicon-share-alt"></span>文章类型管理
						</a> 
					</li> 
					<li> 
						<a href="addType.jsp" target="rightFrame"> 
							<span class="glyphicon glyphicon-share-alt"></span>文章类型新增
						</a> 
					</li> 
					<li> 
						<a href="LoginAction!getWenzhangList" target="rightFrame"> 
							<span class="glyphicon glyphicon-share-alt"></span>文章管理
						</a> 
					</li> 
					
					<li> 
						<a href="LoginAction!addWenZhangBefore" target="rightFrame"> 
							<span class="glyphicon glyphicon-share-alt"></span>文章添加
						</a> 
					</li> 
				</ul> 
			</li> 
			<li><a href="LoginAction!getPersonalList" target="rightFrame"><span class="glyphicon glyphicon-th" ></span> 用户信息管理</a></li> 
			<li><a href="#"><span class="glyphicon glyphicon-stats"></span> Charts</a></li> 
			<li><a href="#"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li> 
			<li><a href="#"><span class="glyphicon glyphicon-pencil"></span> Forms</a></li> 
			<li><a href="#"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li> 
			<li class="parent"> 
				<a href="#"> 
					<span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>  
				</a> 
				<ul class="children collapse" id="sub-item-1"> 
					<li> 
						<a href="#"> 
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 1 
						</a> 
					</li> 
					<li> 
						<a href="#"> 
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 2 
						</a> 
					</li> 
					<li> 
						<a href="#"> 
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 3 
						</a> 
					</li> 
				</ul> 
			</li> 
			</ul><br><br><ul class="nav menu"> 
		</ul>
		
</body>
</html>