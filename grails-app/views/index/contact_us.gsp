<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<asset:stylesheet rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
	<asset:stylesheet rel="stylesheet" href="font-awesome/css/all.min.css"/>
	<asset:stylesheet rel="stylesheet" href="animate/animate.css"/>
	<asset:stylesheet rel="stylesheet" href="blog/style.css"/>
	<asset:stylesheet rel="stylesheet" href="blog/style-responsive.css"/>
	<asset:stylesheet rel="stylesheet" href="blog/theme/default.css"/>
	<!-- ================== END BASE CSS STYLE ================== -->
    
	<!-- ================== BEGIN BASE JS ================== -->
	<asset:javascript src="pace/pace.min.js"/>
	<asset:javascript src="jquery/jquery-3.3.1.min.js"/>
	<asset:javascript src="bootstrap/js/bootstrap.bundle.min.js"/>
	<asset:javascript src="js-cookie/js.cookie.js"/>
	<asset:javascript src="paroller/jquery.paroller.min.js"/>
	<asset:javascript src="blog/apps.js"/>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-header -->
	<g:render template="/layouts/base_header"/>
	<!-- end #page-header -->

	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.2" style="background: url('<asset:assetPath src="cover/cover-8.jpg"/>') center 0 / cover no-repeat"></div>
	<!-- begin #page-container -->
	<g:render template="/layouts/base_container"/>
	<!-- end #page-container -->
	</div>
	<!-- end #page-title -->
	
	<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin container -->
		<div class="container">
			<!-- begin row -->
			<div class="row row-space-30">
				<!-- begin col-9 -->
				<div class="col-md-9">
					<!-- begin section-container -->
					<div class="section-container">
						<div class="post-image">
							<div class="post-image-cover" style="background-image: url('<asset:assetPath src="work/work-img-2.jpg"/>')"></div>
						</div>
					</div>
					<!-- end section-container -->
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="section-title m-b-20"><span>联系我</span></h4>
						<p class="m-b-30 f-s-13">
							如果你有一个项目想要与我讨论共同创作或者您有更好的资源与我共享(包括但不限于推荐公司入职)，
							你可以在这儿填写您的姓名(当然您可以随意填写您想让我知道的昵称)、邮箱(手机号)和主要内容。
							我看到之后将及时通过邮件联系您。
						</p>
						<!-- begin row -->
						<div class="row row-space-30 f-s-12 text-inverse">
							<!-- begin col-8 -->
							<div class="col-md-8">
								<form class="form-horizontal">
									<div class="form-group row">
										<label class="col-form-label col-md-3 text-md-right">姓名(昵称) <span class="text-danger">*</span></label>
										<div class="col-md-9">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-md-3 text-md-right">邮箱(手机号) <span class="text-danger">*</span></label>
										<div class="col-md-9">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-md-3 text-md-right">简述概要 <span class="text-danger">*</span></label>
										<div class="col-md-9">
											<textarea class="form-control" rows="10"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-md-3 text-md-right"></label>
										<div class="col-md-9 text-left">
											<button type="submit" class="btn btn-inverse btn-lg btn-block">提交</button>
										</div>
									</div>
								</form>
							</div>
							<!-- end col-8 -->
							<!-- begin col-4 -->
							<div class="col-md-4">
								<p>
									<strong>邮箱</strong><br>
									<a>myarctic@163.com</a>
								</p>
							</div>
							<!-- end col-4 -->
						</div>
						<!-- end row -->
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-9 -->
				<!-- begin col-3 -->
				<g:render template="/layouts/base_list"/>
				<!-- end col-3 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #content -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>