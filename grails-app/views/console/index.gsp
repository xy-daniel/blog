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
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
%{--	<asset:stylesheet rel="stylesheet" href="jquery-jvectormap/jquery-jvectormap.css"/>--}%
%{--	<asset:stylesheet rel="stylesheet" href="bootstrap-datepicker/css/bootstrap-datepicker.css"/>--}%
%{--	<asset:stylesheet rel="stylesheet" href="gritter/css/jquery.gritter.css"/>--}%
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
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
			<!-- begin panel -->
			<div class="row">
				<div class="col-md-12">
					<div class="note note-info">
						<h3>欢迎使用博客控制台</h3>
						<div>&nbsp;</div>
						<p>
							您可以选择管理用户信息
							文章列表
							添加文章
							作者信息
							分类信息
							友链信息。
						</p>
						<p>
							您可以介绍其他用户使用本系统，希望您可以给一个star。
						</p>
						<p>
							如果您有更好的建议欢迎您反映给作者，如果合理作者将进行优化提升。
						</p>
						<p>
							最后如果您感觉此系统符合您的需求请您点击这个链接提交一下您的使用记录,用于作者的推广。
							并希望您在修改源代码时保留此段介绍。
						</p>
						<p>
							作者在此万分感谢。
						</p>
					</div>
				</div>
			</div>
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
