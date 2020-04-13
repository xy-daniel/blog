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

		</div>
		<!-- end #content -->
		<g:render template="/layouts/base_console_topbtn"/>
	</div>


	<!-- end page container -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>
