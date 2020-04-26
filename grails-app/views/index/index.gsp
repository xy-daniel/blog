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
	<asset:stylesheet rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
	<asset:stylesheet rel="stylesheet" href="font-awesome/css/all.min.css"/>
	<asset:stylesheet rel="stylesheet" href="animate/animate.css"/>
	<asset:stylesheet rel="stylesheet" href="blog/style.css"/>
	<asset:stylesheet rel="stylesheet" href="blog/style-responsive.css"/>
	<asset:stylesheet id="theme" rel="stylesheet" href="blog/theme/default.css"/>
	<!-- ================== END BASE CS	S STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<asset:javascript src="jquery/jquery-3.3.1.min.js"/>
	<asset:javascript src="bootstrap/js/bootstrap.bundle.min.js"/>
	<asset:javascript src="js-cookie/js.cookie.js"/>
	<asset:javascript src="paroller/jquery.paroller.min.js"/>
	<asset:javascript src="blog/apps.js"/>
	<asset:javascript src="pace/pace.min.js" />
	<!-- ================== END BASE JS ================== -->
	<style>
		@media (max-width: 576px) {
			.order-0 {
				-ms-flex-order: 1;
				order: 1;
			}

			.order-1 {
				-ms-flex-order: 0;
				order: 0;
			}

		}
	</style>
</head>
<body>
	<!-- begin #page-header -->
	<g:render template="/layouts/base_header"/>
	<!-- end #page-header -->

	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.2" style="background: url(<asset:assetPath src="cover/cover-4.jpg"/>) center 0 / cover no-repeat"></div>
		<!-- begin #page-container -->
		<g:render template="/layouts/base_container"/>
		<!-- end #page-container -->
	</div>
	<!-- end #page-title -->
	
	<!-- begin #content -->
	<div id="content" class="content row" style="margin: 100px 10% 0">
		<!-- begin container -->
		<div>
			<!-- begin row -->
			<div class="row row-space-30">
				<!-- 左边显示个人信息、归档、关键词 -->
				<div class="col-md-3 order-0">
					<!-- begin card -->
					<div class="card card-inverse">
						<img class="card-img" src="<asset:assetPath src="cover/gzh.jpg"/>" alt="" />
						<div class="card-block text-lg-center" style="color: black">
							<h5 class="card-title">Cruder拯救者</h5>
							<hr/>
							<div class="row">
								<div class="col-md-4">
									文章<br/><b>20</b>
								</div>
								<div class="col-md-4">
									分类<br/><b>20</b>
								</div>
								<div class="col-md-4">
									标签<br/><b>20</b>
								</div>
							</div>
							<!-- 扫码关注微信公众号到一个单独的页面显示公众号图片 -->
							<div>
								<a href="javascript:void(0);" class="btn btn-primary" style="margin: 10px;width: 70%;border-radius: 30px">扫码关注微信公众号</a>
							</div>
							<!-- github地址 -->
							<div class="row" style="margin: 10px 0">
								<div class="col-md-4">
									<a class="black" href="https://github.com/xy-daniel" title="GitHub" target="_blank">
										<i class="fab fa-lg fa-fw fa-github"></i>
									</a>
								</div>
								<div class="col-md-4">
									<a class="black" href="mailto:myarctic@163.com" title="envelope" target="_blank">
										<i class="fas fa-lg fa-fw fa-envelope"></i>
									</a>
								</div>
								<div class="col-md-4">
									<a class="black" href="javascript:void(0);" title="rss">
										<i class="fas fa-lg fa-fw fa-rss"></i>
									</a>
								</div>
								<script>
									$(".fa-rss").bind('click',function () {
										const url = window.location;
										const title = document.title;
										try {
											window.external.addFavorite(url, title);
										}
										catch (e) {
											try {
												window.sidebar.addPanel(title, url, "");
											}
											catch (e) {
												alert("抱歉，您所使用的浏览器无法完成此操作。加入收藏失败，请使用Ctrl+D进行添加。");
											}
										}
									})
								</script>
							</div>
						</div>
					</div>
					<!-- end card -->
				</div>
				<!-- begin col-6 -->
				<div class="col-md-6 order-1">
					<!-- begin post-list -->
					<ul class="post-list">
					</ul>
					<!-- end post-list -->
					<div class="section-container">
						<!-- begin pagination -->
						<div class="pagination-container">
							<ul class="pagination justify-content-center">
							</ul>
						</div>
						<!-- end pagination -->
					</div>
				</div>
				<!-- end col-6 -->
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
	<asset:javascript src="index/index.js"/>
	<asset:javascript src="index/month.js"/>
</body>
</html>