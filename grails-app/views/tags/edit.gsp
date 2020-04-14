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
				<li class="breadcrumb-item">标签管理</li>
				<li class="breadcrumb-item active">编辑标签</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">标签管理 <small>编辑标签</small></h1>
			<!-- end page-header -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:void(0);" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					</div>
					<h4 class="panel-title">编辑标签</h4>
				</div>
				<div class="panel-body">
					<legend class="no-border f-w-700 p-b-0 m-t-0 m-b-20 f-s-16 text-inverse">编辑标签请填写以下信息 </legend>
					<g:form controller="tags" action="editSave" id="${tags.id}" method="POST">
						<div class="col-md-8 offset-md-2">
							<!-- begin form-group row -->
							<div class="form-group row m-b-10">
								<label class="col-md-3 text-md-right col-form-label">标签名称 </label>
								<div class="col-md-6">
									<input type="text" class="form-control m-b-5" name="name" value="${tags.name}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
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

	<g:render template="/layouts/base_parsley"/>
</body>
</html>
