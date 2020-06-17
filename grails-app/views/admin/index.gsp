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
</body>
</html>
