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
				<a href="index.gsp" class="navbar-brand">
					<span class="brand-logo"></span>
					<span class="brand-text">
						Daniel's Blog
					</span>
				</a>
			</div>
			<!-- end navbar-header -->
			<!-- begin navbar-collapse -->
			<div class="collapse navbar-collapse" id="header-navbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" data-toggle="dropdown">主页 <b class="caret"></b></a>
						<div class="dropdown-menu">
%{--							<a class="dropdown-item" href="index_transparent_header.gsp">Page with Transparent Header</a>--}%
%{--							<a class="dropdown-item" href="index_inverse_header.gsp">Page with Inverse Header</a>--}%
%{--							<a class="dropdown-item" href="index.gsp">Default Header</a>--}%
						</div>
					</li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown">帖子 <b class="caret"></b></a>
						<div class="dropdown-menu">
							<g:link class="dropdown-item" controller="index" action="grid">技文</g:link>
							<g:link class="dropdown-item" controller="index" action="algorithm">算法</g:link>
						</div>
					</li>
					<li><a href="../index/about_me.gsp">关于我</a></li>
					<li><a href="../index/contact_us.gsp">联系我</a></li>
				</ul>
			</div>
			<!-- end navbar-collapse -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #header -->