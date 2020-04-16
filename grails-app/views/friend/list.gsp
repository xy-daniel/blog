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

	<!-- ================== BEGIN PAGE CSS STYLE ================== -->
	<asset:stylesheet href="DataTables/media/css/dataTables.bootstrap.min.css"/>
	<asset:stylesheet href="bootstrap-sweetalert/sweetalert.css"/>
	<asset:stylesheet href="DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"/>
	<!-- ================== END PAGE CSS STYLE ================== -->
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
				<li class="breadcrumb-item"><g:link controller="console">首页</g:link></li>
				<li class="breadcrumb-item active">友链管理</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">管理 <small>友链管理</small></h1>
			<!-- end page-header -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:void(0);" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					</div>
					<h4 class="panel-title">友链列表</h4>
				</div>
				<div class="panel-body">
					<div class="table-btn-row m-b-15">
						<g:link controller="friend" action="add" class="btn btn-sm btn-inverse btn-add"><i class="fa fa-plus m-r-5"></i> 添加友链</g:link>
					</div>
					<table id="data-table" class="table table-striped table-bordered display" style="width:100%">
						<thead>
						<tr>
							<th class="with-checkbox">
								<div class="checkbox checkbox-css">
									<input type="checkbox" value="" id="table_checkbox_all" />
									<label for="table_checkbox_all"></label>
								</div>
							</th>
							<th class="text-nowrap">名称</th>
							<th class="text-nowrap">链接</th>
							<th class="text-nowrap">状态</th>
							<th class="text-nowrap">操作</th>
						</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- end #content -->
		<g:render template="/layouts/base_console_topbtn"/>
	</div>
	<!-- end page container -->

	<!-- =========================BEGIN PAGE LEVEL JS======================== -->
	<asset:javascript src="DataTables/media/js/jquery.dataTables.min.js"/>
	<asset:javascript src="bootstrap-sweetalert/sweetalert.js"/>
	<asset:javascript src="DataTables/media/js/dataTables.bootstrap.min.js"/>
	<asset:javascript src="DataTables/extensions/Responsive/js/dataTables.responsive.min.js"/>
	<asset:javascript src="console/friend/list.js"/>
	<!-- =========================END PAGE LEVEL JS======================== -->
</body>
</html>
