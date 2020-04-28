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
	<asset:javascript src="masonry/masonry.min.js"/>
	<asset:javascript src="paroller/jquery.paroller.min.js"/>
	<asset:javascript src="blog/apps.js"/>
	<!-- ================== END BASE JS ================== -->
</head>
<body>

	<!-- begin #page-header -->
	<g:render template="/layouts/base_header"/>
	<!-- end #page-header -->
	
	<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin container -->
		<div class="container">
			<!-- begin row -->
			<div class="row row-space-30">
				<!-- begin col-12 -->
				<div class="col-md-12">
					<!-- begin post-detail -->
					<div class="post-detail section-container">
						<h4 class="post-title"></h4>
						<input type="hidden" id="contentId" value="${id}">
						<div id="html"></div>
						<script>
							$.get(
								"/index/getHtml",
								{id:$("#contentId").val()},
								function (result) {
									$(".post-title").append(result.data.title);
									$("#html").append(result.data.html);
									document.body.scrollTop = document.documentElement.scrollTop = 0;
								},'json'
							)
						</script>
					</div>
				</div>
				<!-- end col-12 -->
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