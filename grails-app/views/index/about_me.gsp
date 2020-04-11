<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Blog Concept Front End Theme</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="../assets/plugins/font-awesome/css/all.min.css" rel="stylesheet" />
	<link href="../assets/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="../assets/css/blog/style.min.css" rel="stylesheet" />
	<link href="../assets/css/blog/style-responsive.min.css" rel="stylesheet" />
	<link href="../assets/css/blog/theme/default.css" id="theme" rel="stylesheet" />
	<!-- ================== END BASE CSS STYLE ================== -->
    
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="../assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #header -->
	<div id="header" class="header navbar navbar-default navbar-fixed-top">
		<!-- begin container -->
		<div class="container">
			<!-- begin navbar-header -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.html" class="navbar-brand">
					<span class="brand-logo"></span>
					<span class="brand-text">
						COLOR ADMIN
					</span>
				</a>
			</div>
			<!-- end navbar-header -->
			<!-- begin navbar-collapse -->
			<div class="collapse navbar-collapse" id="header-navbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" data-toggle="dropdown">HOME <b class="caret"></b></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="index_transparent_header.gsp">Page with Transparent Header</a>
							<a class="dropdown-item" href="index_inverse_header.gsp">Page with Inverse Header</a>
							<a class="dropdown-item" href="index.html">Default Header</a>
						</div>
					</li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown">POSTS <b class="caret"></b></a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="grid.gsp">Page with Grid View Blog Post</a>
							<a class="dropdown-item" href="algorithm.gsp">Page without Sidebar</a>
						</div>
					</li>
					<li><a href="about_me.gsp">ABOUT ME</a></li>
					<li><a href="contact_us.gsp">CONTACT US</a></li>
					<li><a href="https://wrapbootstrap.com/theme/color-admin-admin-template-front-end-WB0N89JMK">PURCHASE</a></li>
				</ul>
			</div>
			<!-- end navbar-collapse -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #header -->
	
	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.2" style="background: url(../assets/img/cover/cover-7.jpg) center 0px / cover no-repeat"></div>
		<div class="container">
			<h1>Official Color Admin Blog</h1>
			<p>Blog Concept Front End Page</p>
		</div>
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
							<div class="post-image-cover" style="background-image: url(../assets/img/about/about-me.jpg)"></div>
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
				<div class="col-md-3">
					<!-- begin section-container -->
					<div class="section-container">
						<div class="input-group sidebar-search">
							<input type="text" class="form-control" placeholder="Search Our Stories..." />
							<span class="input-group-append">
							<button class="btn btn-inverse" type="button"><i class="fa fa-search"></i></button>
							</span>
						</div>
					</div>
					<!-- end section-container -->
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="section-title"><span>Categories</span></h4>
						<ul class="sidebar-list">
							<li><a href="#">Sports (20)</a></li>
							<li><a href="#">Outdoor Sports (45)</a></li>
							<li><a href="#">Indoor Sports (1,292)</a></li>
							<li><a href="#">Video Shooting (12)</a></li>
							<li><a href="#">Drone (229)</a></li>
							<li><a href="#">Uncategorized (1,482)</a></li>
						</ul>
					</div>
					<!-- end section-container -->
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="section-title"><span>Recent Post</span></h4>
						<ul class="sidebar-recent-post">
							<li>
								<div class="info">
									<h4 class="title"><a href="#">Lorem ipsum dolor sit amet.</a></h4>
									<div class="date">23 December 2018</div>
								</div>
							</li>
							<li>
								<div class="info">
									<h4 class="title"><a href="#">Vestibulum a cursus arcu.</a></h4>
									<div class="date">16 December 2018</div>
								</div>
							</li>
							<li>
								<div class="info">
									<h4 class="title"><a href="#">Nullam vel condimentum lectus. </a></h4>
									<div class="date">7 December 2018</div>
								</div>
							</li>
							<li>
								<div class="info">
									<h4 class="title"><a href="#">Proin in dui egestas libero posuere ullamcorper. </a></h4>
									<div class="date">20 November 2018</div>
								</div>
							</li>
							<li>
								<div class="info">
									<h4 class="title"><a href="#">Interdum et malesuada fames ac ante.</a></h4>
									<div class="date">5 November 2018</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- end section-container -->
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="section-title"><span>Follow Us</span></h4>
						<ul class="sidebar-social-list">
							<li><a href="#"><i class="fab fa-facebook"></i></a></li>
							<li><a href="#"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#"><i class="fab fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-3 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #content -->
	
	<!-- begin #footer -->
	<div id="footer" class="footer">
		<!-- begin container -->
		<div class="container">
			<!-- begin row -->
			<div class="row">
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-3">
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="footer-title">Categories</h4>
						<ul class="categories">
							<li><a href="#">Sports</a></li>
							<li><a href="#">Outdoor Sports</a></li>
							<li><a href="#">Indoor Sports</a></li>
							<li><a href="#">Video Shooting</a></li>
							<li><a href="#">Drone</a></li>
							<li><a href="#">Uncategorized</a></li>
						</ul>
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-3">
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="footer-title">Archives</h4>
						<ul class="archives">
							<li><a href="#">June 2018</a> <span class="total">(102)</span></li>
							<li><a href="#">May 2018</a> <span class="total">(46)</span></li>
							<li><a href="#">April 2018</a> <span class="total">(84)</span></li>
							<li><a href="#">March 2018</a> <span class="total">(67)</span></li>
							<li><a href="#">February 2018</a> <span class="total">(99)</span></li>
							<li><a href="#">January 2018</a> <span class="total">(113)</span></li>
							<li><a href="#">December 2017</a> <span class="total">(25)</span></li>
						</ul>
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-3">
					<!-- begin section-container -->
					<div class="section-container">
						<h4 class="footer-title">Recent Posts</h4>
						<ul class="recent-post">
							<li>
								<h4>
									<a href="#">Nam ut urna hendrerit</a>
									<span class="time">February 22, 2018</span>
								</h4>
							</li>
							<li>
								<h4>
									<a href="#">Class aptent taciti sociosqu</a>
									<span class="time">July 15, 2018</span>
								</h4>
							</li>
							<li>
								<h4>
									<a href="#">Donec rhoncus arcu</a>
									<span class="time">March 21, 2018</span>
								</h4>
							</li>
						</ul>
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-3">
					<div class="section-container">
						<h4 class="footer-title">About Color Admin</h4>
						<address>
							<strong>Twitter, Inc.</strong><br />
							795 Folsom Ave, Suite 600<br />
							San Francisco, CA 94107<br />
							P: (123) 456-7890<br />
							<br />
							<strong>Full Name</strong><br />
							<a href="#">first.last@example.com</a>
						</address>
					</div>
					<!-- end section-container -->
				</div>
				<!-- end col-3 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #footer -->
	
	<!-- begin #footer-copyright -->
	<div id="footer-copyright" class="footer-copyright">
		<!-- begin container -->
		<div class="container">
			<span class="copyright">&copy; 2019 SeanTheme All Right Reserved</span>
			<ul class="social-media-list mt-2 mt-sm-0 float-none float-sm-right">
				<li><a href="#"><i class="fab fa-facebook"></i></a></li>
				<li><a href="#"><i class="fab fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fab fa-instagram"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-rss"></i></a></li>
			</ul>
		</div>
		<!-- end container -->
	</div>
	<!-- end #footer-copyright -->
	
	<!-- begin theme-panel -->
	<div class="theme-panel">
		<a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
		<div class="theme-panel-content">
			<ul class="theme-list clearfix">
				<li><a href="javascript:;" class="bg-red" data-theme="red" data-theme-file="../assets/css/blog/theme/red.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-pink" data-theme="pink" data-theme-file="../assets/css/blog/theme/pink.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Pink" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-orange" data-theme="orange" data-theme-file="../assets/css/blog/theme/orange.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-yellow" data-theme="yellow" data-theme-file="../assets/css/blog/theme/yellow.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Yellow" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-lime" data-theme="lime" data-theme-file="../assets/css/blog/theme/lime.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-green" data-theme="green" data-theme-file="../assets/css/blog/theme/green.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Green" data-original-title="" title="">&nbsp;</a></li>
				<li class="active"><a href="javascript:;" class="bg-teal" data-theme="default" data-theme-file="../assets/css/blog/theme/default.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-aqua" data-theme="aqua" data-theme-file="../assets/css/blog/theme/aqua.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Aqua" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-blue" data-theme="blue" data-theme-file="../assets/css/blog/theme/blue.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-purple" data-theme="purple" data-theme-file="../assets/css/blog/theme/purple.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-indigo" data-theme="indigo" data-theme-file="../assets/css/blog/theme/indigo.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Indigo" data-original-title="" title="">&nbsp;</a></li>
				<li><a href="javascript:;" class="bg-black" data-theme="black" data-theme-file="../assets/css/blog/theme/black.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black" data-original-title="" title="">&nbsp;</a></li>
			</ul>
		</div>
	</div>
	<!-- end theme-panel -->
    
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="../assets/plugins/jquery/jquery-3.3.1.min.js"></script>
	<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="../assets/crossbrowserjs/html5shiv.js"></script>
		<script src="../assets/crossbrowserjs/respond.min.js"></script>
		<script src="../assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="../assets/plugins/js-cookie/js.cookie.js"></script>
	<script src="../assets/plugins/paroller/jquery.paroller.min.js"></script>
	<script src="../assets/js/blog/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
</body>
</html>