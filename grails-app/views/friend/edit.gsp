<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<title>控制台</title>

	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<asset:stylesheet rel="stylesheet" href="jquery-ui/jquery-ui.min.css"/>
	<asset:stylesheet rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
	<asset:stylesheet rel="stylesheet" href="font-awesome/css/all.min.css"/>
	<asset:stylesheet rel="stylesheet" href="animate/animate.css"/>
	<asset:stylesheet rel="stylesheet" href="default/style.css"/>
	<asset:stylesheet rel="stylesheet" href="default/style-responsive.css"/>
	<asset:stylesheet id="theme" rel="stylesheet" href="default/theme/default.css"/>
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<asset:javascript src="jquery/jquery-3.3.1.min.js" />
	<asset:javascript src="jquery-ui/jquery-ui.min.js" />
	<asset:javascript src="bootstrap/js/bootstrap.bundle.min.js" />
	<asset:javascript src="slimscroll/jquery.slimscroll.min.js" />
	<asset:javascript src="js-cookie/js.cookie.js" />
	<asset:javascript src="console/theme/default.min.js" />
	<asset:javascript src="console/apps.js" />
	<asset:javascript src="pace/pace.min.js" />
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<g:render template="/layouts/base_console_header"/>
		<g:render template="/layouts/base_console_sidebar"/>
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item"><g:link controller="index">首页</g:link></li>
				<li class="breadcrumb-item">友链管理</li>
				<li class="breadcrumb-item active">编辑友链</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">友链管理 <small>编辑友链</small></h1>
			<!-- end page-header -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:void(0);" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					</div>
					<h4 class="panel-title">编辑友链</h4>
				</div>
				<div class="panel-body">
					<legend class="no-border f-w-700 p-b-0 m-t-0 m-b-20 f-s-16 text-inverse">编辑友链请填写以下信息 </legend>
					<g:form controller="friend" action="editSave" id="${friend.id}" method="POST">
						<div class="col-md-8 offset-md-2">
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">网站名称 </label>
								<div class="col-md-6">
									<input type="text" class="form-control m-b-5" name="name" value="${friend.name}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
								</div>
							</div>
							<!-- end form-group row -->
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">网站地址 </label>
								<div class="col-md-6">
									<input type="text" class="form-control m-b-5" name="url" value="${friend.url}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
								</div>
							</div>
							<!-- end form-group row -->
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label id="status" class="col-md-3 text-md-right col-form-label">状态 </label>
								<div class="col-md-6">
									<select name="status" class="form-control m-b-5" data-parsley-required="false">
										<option value="0" <g:if test="${friend.status == 0}">selected</g:if>>已审核</option>
										<option value="1" <g:if test="${friend.status == 1}">selected</g:if>>待审核</option>
									</select>
								</div>
							</div>
							<!-- end form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label"></label>
								<div class="col-md-6">
									<button type="submit" class="btn btn-sm btn-primary m-r-5">编辑</button>
								</div>
							</div>
						</div>
					</g:form>
				</div>
			</div>
			<!-- end #content -->
			<g:render template="/layouts/base_console_topbtn"/>
		</div>
	</div>
	<!-- end page container -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
