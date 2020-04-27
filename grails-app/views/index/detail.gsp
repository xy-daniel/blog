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
						<div id="html">
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
					<!-- end post-detail -->
					<!-- begin section-container -->
%{--					<div class="section-container">--}%
%{--						<h4 class="section-title"><span>所有评论 (3)</span></h4>--}%
%{--						<!-- begin comment-list -->--}%
%{--						<ul class="comment-list">--}%
%{--							<li>--}%
%{--								<!-- begin comment-avatar -->--}%
%{--								<div class="comment-avatar">--}%
%{--									<i class="fa fa-user"></i>--}%
%{--								</div>--}%
%{--								<!-- end comment-avatar -->--}%
%{--								<!-- begin comment-container -->--}%
%{--								<div class="comment-container">--}%
%{--									<div class="comment-author">--}%
%{--										张三--}%
%{--										<span class="comment-date">--}%
%{--										on <span class="underline">June 6, 2018</span> at <span class="underline">6:17 pm</span>--}%
%{--										</span>--}%
%{--									</div>--}%
%{--									<div class="comment-content">--}%
%{--										曲贾谊于长沙非无圣主.--}%
%{--									</div>--}%
%{--									<div class="comment-btn pull-left">--}%
%{--										<a href="#"><i class="fa fa-reply"></i> 回复</a>--}%
%{--									</div>--}%
%{--									<div class="comment-rating">--}%
%{--										<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-up text-success"></i> 154</a>--}%
%{--										<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-down text-danger"></i> 112</a>--}%
%{--									</div>--}%
%{--									<!-- begin comment-list -->--}%
%{--									<ul class="comment-list">--}%
%{--										<li>--}%
%{--											<!-- begin comment-avatar -->--}%
%{--											<div class="comment-avatar">--}%
%{--												<i class="fa fa-user"></i>--}%
%{--											</div>--}%
%{--											<!-- end comment-avatar -->--}%
%{--											<!-- begin comment-container -->--}%
%{--											<div class="comment-container">--}%
%{--												<div class="comment-author">--}%
%{--													李四--}%
%{--													<span class="comment-date">--}%
%{--													on <span class="underline">June 6, 2018</span> at <span class="underline">8:17 pm</span>--}%
%{--													</span>--}%
%{--												</div>--}%
%{--												<div class="comment-content">--}%
%{--													天地造物不测.--}%
%{--												</div>--}%
%{--												<div class="comment-btn pull-left">--}%
%{--													<a href="#"><i class="fa fa-reply"></i> 回复</a>--}%
%{--												</div>--}%
%{--												<div class="comment-rating">--}%
%{--													<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-up text-success"></i> 5</a> --}%
%{--													<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-down text-danger"></i> 0</a>--}%
%{--												</div>--}%
%{--											</div>--}%
%{--											<!-- end comment-container -->--}%
%{--										</li>--}%
%{--									</ul>--}%
%{--									<!-- end comment-list -->--}%
%{--								</div>--}%
%{--								<!-- end comment-container -->--}%
%{--							</li>--}%
%{--							<li>--}%
%{--								<!-- begin comment-avatar -->--}%
%{--								<div class="comment-avatar">--}%
%{--									<img src="<asset:assetPath src="user.jpg"/>" alt="" />--}%
%{--								</div>--}%
%{--								<!-- end comment-avatar -->--}%
%{--								<!-- begin comment-container -->--}%
%{--								<div class="comment-container">--}%
%{--									<div class="comment-author">--}%
%{--										王五--}%
%{--										<span class="comment-date">--}%
%{--										on <span class="underline">June 6, 2018</span> at <span class="underline">11:23 pm</span>--}%
%{--										</span>--}%
%{--									</div>--}%
%{--									<div class="comment-content">--}%
%{--										呜呼哀哉.--}%
%{--									</div>--}%
%{--									<div class="comment-btn pull-left">--}%
%{--										<a href="#"><i class="fa fa-reply"></i> 回复</a>--}%
%{--									</div>--}%
%{--									<div class="comment-rating">--}%
%{--										<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-up text-success"></i> 2</a>--}%
%{--										<a href="#" class="m-l-10 text-inverse"><i class="fa fa-thumbs-down text-danger"></i> 0</a>--}%
%{--									</div>--}%
%{--								</div>--}%
%{--								<!-- end comment-container -->--}%
%{--							</li>--}%
%{--						</ul>--}%
%{--						<!-- end comment-list -->--}%
%{--					</div>--}%
					<!-- end section-container -->
					<!-- begin section-container -->
					<div class="section-container">
%{--						<h4 class="section-title m-b-20"><span>发表评论</span></h4>--}%
%{--						<div class="alert alert-warning f-s-12">--}%
%{--							如果您已经有一个Cruder拯救者的账号您可以直接发表评论/匿名评论当然我是不推荐的，或者您可以尝试选择下面的复选框发表评论的同时为您创建一个账号。当然，此账号仅作为您发表评论所用别无他用。--}%
%{--						</div>--}%
%{--						<form class="form-horizontal" action="" method="POST">--}%
%{--							<div class="form-group row">--}%
%{--								<label class="col-form-label f-s-12 col-md-2 text-md-right">用户名 <span class="text-danger">*</span></label>--}%
%{--								<div class="col-md-10">--}%
%{--									<input type="text" class="form-control" />--}%
%{--								</div>--}%
%{--							</div>--}%
%{--							<div class="form-group row">--}%
%{--								<label class="col-form-label f-s-12 col-md-2 text-md-right">电子邮箱 <span class="text-danger">*</span></label>--}%
%{--								<div class="col-md-10">--}%
%{--									<input type="text" class="form-control" />--}%
%{--								</div>--}%
%{--							</div>--}%
%{--							<div class="form-group row">--}%
%{--								<label class="col-form-label f-s-12 col-md-2 text-md-right">评论内容 <span class="text-danger">*</span></label>--}%
%{--								<div class="col-md-10">--}%
%{--									<textarea class="form-control" rows="10"></textarea>--}%
%{--								</div>--}%
%{--							</div>--}%
%{--							<div class="form-group row">--}%
%{--								<div class="col-md-10 offset-md-2">--}%
%{--									<div class="custom-control custom-checkbox f-s-12">--}%
%{--										<input type="checkbox" class="custom-control-input" id="emailNotify" name="email_notify" />--}%
%{--										<label class="custom-control-label p-t-3" for="emailNotify">若您选择申请账号此后关于此评论的问答将以邮箱的形式发送给您.</label>--}%
%{--									</div>--}%
%{--								</div>--}%
%{--							</div>--}%
%{--							<div class="form-group row">--}%
%{--								<div class="col-md-10 offset-md-2">--}%
%{--									<button type="submit" class="btn btn-inverse btn-lg">发表评论</button>--}%
%{--								</div>--}%
%{--							</div>--}%
%{--						</form>--}%
					</div>
					<!-- end section-container -->
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