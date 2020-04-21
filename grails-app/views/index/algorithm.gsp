<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<title>图书馆</title>
	
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
	
	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" style="background: url('<asset:assetPath src="cover/cover-8.jpg"/>') center 0 / cover no-repeat"></div>
		<!-- begin #page-container -->
		<g:render template="/layouts/base_container"/>
		<!-- end #page-container -->
	</div>
	<!-- end #page-title -->
	
	<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin container -->
		<div class="container">
			<!-- begin post-list -->
			<div class="post-list post-grid post-grid-3">
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-1.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 03 Sep 2018
							</div>
							<div class="post-desc">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis elit dolor, elementum ut ligula ultricies, 
								aliquet eleifend risus. Vivamus ut auctor sapien. Etiam consectetur non leo at auctor. [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-2.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 21 Oct 2018
							</div>
							<div class="post-desc">
								Pellentesque sit amet lectus at urna tempus tincidunt. Curabitur aliquet nisl ut magna efficitur scelerisque [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-3.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> Oct 18, 2018
							</div>
							<div class="post-desc">
								Praesent maximus malesuada purus, sit amet auctor velit scelerisque nec. Suspendisse eget pellentesque dui, ut egestas orci. 
								Proin eget massa et magna faucibus pulvinar. Quisque tortor orci, volutpat vel auctor non, varius a augue. Cras non ante arcu. 
								Phasellus sit amet dolor non est dictum convallis vel eu lectus [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-4.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 17 Oct 2018
							</div>
							<div class="post-desc">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis elit dolor, elementum ut ligula ultricies, 
								aliquet eleifend risus. Vivamus ut auctor sapien [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-5.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 16 Oct 2018
							</div>
							<div class="post-desc">
								Pellentesque sit amet lectus at urna tempus tincidunt. Curabitur aliquet nisl ut magna efficitur scelerisque. 
								Mauris molestie elementum massa eget bibendum. Sed mauris tortor, condimentum nec efficitur lobortis, tempus ac metus [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-6.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 15 Oct, 2018
							</div>
							<div class="post-desc">
								Phasellus sit amet dolor non est dictum convallis vel eu lectus. 
								Etiam consectetur non leo at auctor. Proin porttitor tellus arcu, in accumsan eros tincidunt eget[...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-7.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 15 Oct 2018
							</div>
							<div class="post-desc">
								Pellentesque sit amet lectus at urna tempus tincidunt. Curabitur aliquet nisl ut magna efficitur scelerisque [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp" class="read-btn">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-8.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 14 Oct, 2018
							</div>
							<div class="post-desc">
								Praesent maximus malesuada purus, sit amet auctor velit scelerisque nec. Suspendisse eget pellentesque dui, ut egestas orci. 
								Proin eget massa et magna faucibus pulvinar. Quisque tortor orci, volutpat vel auctor non, varius a augue. Cras non ante arcu. 
								Phasellus sit amet dolor non est dictum convallis vel eu lectus [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-9.jpg"/>')"></div>
							</a>
						</div>
						<!-- end post-image -->
						<!-- begin post-info -->
						<div class="post-info">
							<h4 class="post-title">
								<a href="post_detail.gsp">Demonstration Blog Post</a>
							</h4>
							<div class="post-by">
								Posted By <a href="#">admin</a> <span class="divider">|</span> 13 Oct 2018
							</div>
							<div class="post-desc">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis elit dolor, elementum ut ligula ultricies, 
								aliquet eleifend risus. Vivamus ut auctor sapien Quisque tortor orci, volutpat vel auctor non, varius a augue. Cras non ante arcu. 
								Phasellus sit amet dolor non est dictum convallis vel eu lectus. Quisque tortor orci, volutpat vel auctor non, varius a augue. Cras non ante arcu. 
								Phasellus sit amet dolor non est dictum convallis vel eu lectus [...]
							</div>
							<div class="read-btn-container">
								<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
						<!-- end post-info -->
					</div>
					<!-- end post-content -->
				</div>
				<div class="post-li">
					<!-- begin post-content -->
					<div class="post-content">
						<!-- begin post-image -->
						<div class="post-image">
							<a href="post_detail.gsp">
								<div class="post-image-cover" style="background-image: url('<asset:assetPath src="post/post-10.jpg"/>')"></div>
							</a>
							<!-- end post-image -->
							<!-- begin post-info -->
							<div class="post-info">
								<h4 class="post-title">
									<a href="post_detail.gsp">Demonstration Blog Post</a>
								</h4>
								<div class="post-by">
									Posted By <a href="#">admin</a> <span class="divider">|</span> 141 Oct, 2018
								</div>
								<div class="post-desc">
									Praesent maximus malesuada purus, sit amet auctor velit scelerisque nec [...]
								</div>
								<div class="read-btn-container">
									<a href="post_detail.gsp">Read More <i class="fa fa-angle-double-right"></i></a>
								</div>
							</div>
							<!-- end post-info -->
						</div>
						<!-- end post-content -->
					</div>
				</div>
			</div>
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