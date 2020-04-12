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
				<g:link controller="index" action="index" class="navbar-brand">
					<span class="brand-logo"></span>
					<span class="brand-text">
						Daniel's Blog
					</span>
				</g:link>
			</div>
			<!-- end navbar-header -->
			<!-- begin navbar-collapse -->
			<div class="collapse navbar-collapse" id="header-navbar">
				<ul class="nav navbar-nav navbar-right">
					<li><g:link controller="index" action="index">主页</g:link></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown">帖子 <b class="caret"></b></a>
						<div class="dropdown-menu">
							<g:link class="dropdown-item" controller="index" action="grid">技文</g:link>
							<g:link class="dropdown-item" controller="index" action="algorithm">算法</g:link>
						</div>
					</li>
					<li><g:link controller="index" action="file">时光轴</g:link></li>
					<li><g:link controller="index" action="about_me">关于我</g:link></li>
					<li><g:link controller="index" action="contact_us">联系我</g:link></li>
				</ul>
			</div>
			<!-- end navbar-collapse -->
		</div>
		<!-- end container -->
	</div>
	<!-- end #header -->