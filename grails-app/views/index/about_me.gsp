<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<title>关于我</title>

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
	<asset:javascript src="blog/apps.min.js"/>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-header -->
	<g:render template="/layouts/base_header"/>
	<!-- end #page-header -->
	
	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.2" style="background: url('<asset:assetPath src="cover/cover-7.jpg"/>') center 0 / cover no-repeat"></div>
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
							<div class="post-image-cover" style="background-image: url('<asset:assetPath src="about/about-me.jpg"/>')"></div>
						</div>
						<h3 class="text-inverse about-me-title">Dagan Ammiel</h3>
						<p class="about-me-desc">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id efficitur ipsum. 
							Praesent vulputate vulputate metus vulputate hendrerit. Sed in magna sit amet lorem congue 
							semper non vel tellus. Nam tempor molestie aliquet. Fusce ultrices magna efficitur, 
							sodales turpis ut, suscipit tortor. Mauris at sem pellentesque, fringilla ligula vel, 
							luctus metus.
						</p>
						<p class="about-me-desc">
							Morbi convallis volutpat quam, sit amet fermentum massa. 
							Nulla ac faucibus risus. Suspendisse ante elit, faucibus sed pharetra nec, 
							laoreet sed enim. Integer consectetur, risus id semper porttitor, lacus dolor euismod magna, 
							id consectetur dui mi vitae lorem. Nam ac malesuada urna, vel mollis eros. Aliquam erat volutpat.
						</p>
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

	<!-- begin #page-copyright -->
	<g:render template="/layouts/base_copyright"/>
	<!-- end #page-copyright -->

	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>