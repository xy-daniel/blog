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

	<g:render template="/layouts/base_console_plugin"/>
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
				<li class="breadcrumb-item active">个人信息</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">用户管理 <small>个人信息</small></h1>
			<!-- end page-header -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:void(0);" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					</div>
					<h4 class="panel-title">个人信息</h4>
				</div>
				<div class="panel-body">
					<legend class="no-border f-w-700 p-b-0 m-t-0 m-b-20 f-s-16 text-inverse">个人信息修改请填写以下信息 </legend>
					<g:form controller="self" action="editSave" id="${user.id}" method="POST" enctype="multipart/form-data">
						<div class="col-md-8 offset-md-2">
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">姓名 </label>
								<div class="col-md-6">
									<input type="text" class="form-control m-b-5" name="realName" value="${user.realName}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
								</div>
							</div>
							<!-- end form-group row -->
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">昵称 </label>
								<div class="col-md-6">
									<input type="text" class="form-control m-b-5" name="username" value="${user.username}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
								</div>
							</div>
							<!-- end form-group row -->
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">密码 </label>
								<div class="col-md-6">
									<input type="password" class="form-control m-b-5" name="password" value="${user.password}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
								</div>
							</div>
							<!-- end form-group row -->
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">头像 </label>
								<div class="col-md-6">
									<input type="file" class="form-control m-b-5" name="photo" value="${user.photo}"/>
								</div>
							</div>
							<!-- end form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label"></label>
								<div class="col-md-6">
									<button type="submit" class="btn btn-sm btn-primary m-r-5">修改</button>
								</div>
							</div>
						</div>
					</g:form>
				</div>
			</div>
		</div>
		<!-- end #content -->
		<g:render template="/layouts/base_console_topbtn"/>
		<g:render template="/layouts/base_parsley"/>
	</div>
	<!-- end page container -->
</body>
</html>
