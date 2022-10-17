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
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin login-cover -->
	<div class="login-cover">
		<div class="login-cover-image" style="background-image: url(<asset:assetPath src="login-bg/login-bg-1.jpg"/>)" data-id="login-cover-image"></div>
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
					<span class="logo"></span> <b>Blog</b> 控制台
					<small>十一次方</small>
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
			<li class="active"><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-1.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-1.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-2.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-2.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-3.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-3.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-4.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-4.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-5.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-5.jpg"/>)"></a></li>
			<li><a href="javascript:void(0);" data-click="change-bg" data-img="/assets/login-bg/login-bg-6.jpg" style="background-image: url(<asset:assetPath src="login-bg/login-bg-6.jpg"/>)"></a></li>
		</ul>
		<!-- end login-bg -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<asset:javascript src="console/demo/login-v2.demo.min.js" />
	<asset:javascript src="login/login.js"/>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			LoginV2.init();
			const username = Cookies.get('username');
			if(username != null && username !== ""){
				$("#username").val(atob(username));
				$("input[type='checkbox']").attr("checked", true);
			}
		});
	</script>
</body>
</html>
