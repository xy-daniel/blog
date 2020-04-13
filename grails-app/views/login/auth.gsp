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
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin login-cover -->
	<div class="login-cover">
		<div class="login-cover-image" style="background-image: url(<asset:assetPath src="login-bg/login-bg-17.jpg"/>)" data-id="login-cover-image"></div>
		<div class="login-cover-bg"></div>
	</div>
	<!-- end login-cover -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin login -->
		<div class="login login-v2" data-pageload-addclass="animated fadeIn">
			<!-- begin brand -->
			<div class="login-header">
				<div class="brand">
					<span class="logo"></span> <b>Daniel's</b> 控制台
					<small>cruder拯救者</small>
				</div>
				<div class="icon">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<!-- end brand -->
			<!-- begin login-content -->
			<div class="login-content">
				<g:form url="${postUrl}" name="loginForm" id="loginForm" method="POST" class="margin-bottom-0">
					<div class="form-group m-b-20">
						<input type="text" class="form-control form-control-lg" name="username" id="username" placeholder="用户名" required />
					</div>
					<div class="form-group m-b-20">
						<input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="密码" required />
					</div>
					<g:if test="${flash.message}">
						<p class="text-center text-red f-s-11">
							${flash.message}
						</p>
					</g:if>
					<div class="checkbox checkbox-css m-b-20">
						<input type="checkbox" id="remember_checkbox" /> 
						<label for="remember_checkbox">
							记住我
						</label>
					</div>
					<div class="login-buttons">
						<button type="submit" class="btn btn-success btn-block btn-lg">登录</button>
					</div>
				</g:form>
			</div>
			<!-- end login-content -->
		</div>
		<!-- end login -->
		
		<!-- begin login-bg -->
		<ul class="login-bg-list clearfix">
			<li class="active"><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-17.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-17.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-16.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-16.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-15.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-15.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-14.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-14.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-12.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-12.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/blog/assets/login-bg/login-bg-11.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-11.jpg"/>)"></a></li>
		</ul>
		<!-- end login-bg -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<asset:javascript src="console/demo/login-v2.demo.min.js" />
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
		});
	</script>
</body>
</html>
