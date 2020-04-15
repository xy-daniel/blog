<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<title>主页</title>
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<asset:stylesheet rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
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
	<div id="content" class="content">
		<!-- begin container -->
		<div class="container">
			<!-- begin row -->
			<div class="row row-space-30">
				<!-- begin col-9 -->
				<div class="col-md-9">
					<!-- begin post-list -->
					<ul class="post-list">
						<li>
							<!-- begin post-left-info -->
							<div class="post-left-info">
								<div class="post-date">
									<span class="day">03</span>
									<span class="month">SEPT</span>
								</div>
								<div class="post-likes">
									<i class="fa fa-heart"></i>
									<span class="number">520</span>
								</div>
							</div>
							<!-- end post-left-info -->
							<!-- begin post-content -->
							<div class="post-content">
								<!-- begin post-image -->
								<div class="post-image post-image-with-carousel">
									<!-- begin carousel -->
									<div id="carousel-post" class="carousel slide" data-ride="carousel">
										<!-- begin carousel-indicators -->
										<ol class="carousel-indicators">
											<li data-target="#carousel-post" data-slide-to="0" class="active"></li>
											<li data-target="#carousel-post" data-slide-to="1"></li>
											<li data-target="#carousel-post" data-slide-to="2"></li>
										</ol>
										<!-- end carousel-indicators -->
										<!-- begin carousel-inner -->
										<div class="carousel-inner">
											<div class="carousel-item active">
												<a href="post_detail.gsp"><img class="d-block w-100" src='<asset:assetPath src="post/post-1.jpg"/>' alt="" /></a>
											</div>
											<div class="carousel-item">
												<a href="post_detail.gsp"><img class="d-block w-100" src='<asset:assetPath src="post/post-2.jpg"/>' alt="" /></a>
											</div>
											<div class="carousel-item">
												<a href="post_detail.gsp"><img class="d-block w-100" src='<asset:assetPath src="post/post-4.jpg"/>' alt="" /></a>
											</div>
										</div>
										<!-- end carousel-inner -->
										<!-- begin carousel-control -->
										<a class="carousel-control-prev" href="#carousel-post" role="button" data-slide="prev">
										<span class="fa fa-chevron-left" aria-hidden="true"></span>
										</a>
										<a class="carousel-control-next" href="#carousel-post" role="button" data-slide="next">
										<span class="fa fa-chevron-right" aria-hidden="true"></span>
										</a>
										<!-- end carousel-control -->
									</div>
									<!-- end carousel -->
								</div>
								<!-- end post-image -->
								<!-- begin post-info -->
								<div class="post-info">
									<h4 class="post-title">
										<g:link controller="index" action="post_detail">鵩鸟赋</g:link>
									</h4>
									<div class="post-by">
										作者 <a href="#">贾谊</a> <span class="divider">|</span> <a href="#">Sports</a>, <a href="#">Mountain</a>, <a href="#">Bike</a> <span class="divider">|</span> 2 评论
									</div>
									<div class="post-desc">
										单阏之岁兮，四月孟夏，庚子日斜兮，鵩集予舍。止于坐隅兮，貌甚闲暇。异物来萃兮，私怪其故。发书占之兮，谶言其度，曰：“野鸟入室兮，主人将去。”请问于鵩兮：“予去何之？吉乎告我，凶言其灾。淹速之度兮，语予其期。”鵩乃叹息，举首奋翼；口不能言，请对以臆：
										“万物变化兮，固无休息。斡流而迁兮，或推而还。形气转续兮，变化而蟺。沕穆无穷兮，胡可胜言！祸兮福所倚，福兮祸所伏；优喜聚门兮，吉凶同域。彼吴强大兮，夫差以败；越栖会稽兮， [...]
									</div>
								</div>
								<!-- end post-info -->
								<!-- begin read-btn-container -->
								<div class="read-btn-container">
									<g:link controller="index" action="post_detail" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></g:link>
								</div>
								<!-- end read-btn-container -->
							</div>
							<!-- end post-content -->
						</li>
						<li>
							<!-- begin post-left-info -->
							<div class="post-left-info">
								<div class="post-date">
									<span class="day">21</span>
									<span class="month">OCT</span>
								</div>
								<div class="post-likes">
									<i class="fa fa-heart"></i>
									<span class="number">1,292</span>
								</div>
							</div>
							<!-- end post-left-info -->
							<!-- begin post-content -->
							<div class="post-content">
								<!-- begin post-image -->
								<div class="post-image">
									<a href="post_detail.gsp">
										<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-5.jpg"/>');"></div>
									</a>
								</div>
								<!-- end post-image -->
								<!-- begin post-info -->
								<div class="post-info">
									<h4 class="post-title">
										<a href="post_detail.gsp">Demonstration Blog Post</a>
									</h4>
									<div class="post-by">
										Posted By <a href="#">admin</a> <span class="divider">|</span> <a href="#">Sports</a>, <a href="#">Parachute</a>, <a href="#">Blue Sky</a> <span class="divider">|</span> 12 Comments
									</div>
									<div class="post-desc">
										Pellentesque sit amet lectus at urna tempus tincidunt. Curabitur aliquet nisl ut magna efficitur scelerisque. 
										Mauris molestie elementum massa eget bibendum. Sed mauris tortor, condimentum nec efficitur lobortis, tempus ac metus. 
										Donec molestie, tortor ut rhoncus consectetur, ipsum elit maximus nulla, a vulputate augue massa ac dolor. 
										Quisque euismod ornare cursus. Ut consequat pellentesque mattis [...]
									</div>
								</div>
								<!-- end post-info -->
								<!-- begin read-btn-container -->
								<div class="read-btn-container">
									<g:link controller="index" action="post_detail" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></g:link>
								</div>
								<!-- end read-btn-container -->
							</div>
							<!-- end post-content -->
						</li>
						<li>
							<!-- begin post-left-info -->
							<div class="post-left-info">
								<div class="post-date">
									<span class="day">12</span>
									<span class="month">OCT</span>
								</div>
								<div class="post-likes">
									<i class="fa fa-heart"></i>
									<span class="number">3,673</span>
								</div>
							</div>
							<!-- end post-left-info -->
							<!-- begin post-content -->
							<div class="post-content">
								<!-- begin blockquote -->
								<blockquote>
									"What is design? It's where you stand with a foot in two worlds - the world of technology and the world of people and human purposes - and you try to bring the two together."
								</blockquote>
								<!-- end blockquote -->
								<!-- begin post-info -->
								<div class="post-info">
									<h4 class="post-title">
										<a href="post_detail.gsp">Blockquote Post</a>
									</h4>
									<div class="post-by">
										Posted By <a href="#">admin</a> <span class="divider">|</span> <a href="#">Animals</a>, <a href="#">Mountain</a>, <a href="#">Natural</a> <span class="divider">|</span> 2 Comments
									</div>
									<div class="post-desc">
										Ut vulputate sem id egestas faucibus. Phasellus volutpat malesuada lacus, eu semper enim hendrerit a. 
										Mauris vehicula sapien sit amet eros pharetra dignissim. Quisque sed elit hendrerit, tempor sem ut, faucibus massa. 
										Aliquam rutrum id massa interdum dapibus. Proin augue massa, feugiat eu velit vitae, vulputate ullamcorper turpis. 
										Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.  [...]
									</div>
								</div>
								<!-- end post-info -->
								<!-- begin read-btn-container -->
								<div class="read-btn-container">
									<g:link controller="index" action="post_detail" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></g:link>
								</div>
								<!-- begin read-btn-container -->
							</div>
							<!-- end post-content -->
						</li>
					</ul>
					<!-- end post-list -->
					<div class="section-container">
						<!-- begin pagination -->
						<div class="pagination-container">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link" href="javascript:void(0);">Prev</a></li>
								<li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
								<li class="page-item"><span class="text">...</span></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">1797</a></li>
								<li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
							</ul>
						</div>
						<!-- end pagination -->
					</div>
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
	<asset:javascript src="index/index.js"/>
</body>
</html>