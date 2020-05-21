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
	<asset:stylesheet id="theme" rel="stylesheet" href="index/trans.css"/>
	<!-- ================== END BASE CS	S STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<asset:javascript src="jquery/jquery-3.3.1.min.js"/>
	<asset:javascript src="bootstrap/js/bootstrap.bundle.min.js"/>
	<asset:javascript src="slimscroll/jquery.slimscroll.min.js" />
	<asset:javascript src="js-cookie/js.cookie.js"/>
	<asset:javascript src="paroller/jquery.paroller.min.js"/>
	<asset:javascript src="blog/apps.js"/>
	<asset:javascript src="pace/pace.min.js" />
	<!-- ================== END BASE JS ================== -->

	<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
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


		#ad{
			position: absolute;
			width: 250px;
			top: 10px;
			left: 10px;
			z-index: 10000;
		}

		.wrapper4trans {
			margin: 20px 0 40px;
		}
	</style>
</head>
<body>
	<!-- begin #page-header -->
	<g:render template="/layouts/base_header"/>
	<!-- end #page-header -->

	<!-- begin #page-title -->
	<div id="page-title" class="page-title has-bg">
		<div class="bg-cover" data-paroller="true" data-paroller-factor="0.5" data-paroller-factor-xs="0.2" style="background: url(<asset:assetPath src="cover/cover-3.jpg"/>) center 0 / cover no-repeat"></div>
		<!-- begin #page-container -->
		<g:render template="/layouts/base_container"/>
		<!-- end #page-container -->
	</div>
	<!-- end #page-title -->

	<!-- begin #content -->
	<div id="content" class="content row" style="margin: 100px 10%">
	<!-- begin row -->
	<div class="row row-space-30" style="width: 100%">
		<g:render template="/layouts/base_left"/>
		<!-- begin col-6 -->
		<div class="col-md-6 order-1 data" style="width: 100%">
			<div class="post-content">
			</div>
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
	<!-- end #content -->

	<!-- begin #page-copyright -->
	<g:render template="/layouts/base_copyright"/>

%{--	<div id="ad" class="card card-outline-danger text-left bg-white">--}%
%{--		<div class="card-block">--}%
%{--			<blockquote class="card-blockquote" style="margin-bottom: 0">--}%
%{--				<p class="f-s-14 text-inverse f-w-600">来自<span id="from"></span>的用户您好：</p>--}%
%{--				<p class="f-s-14 text-inverse f-w-600">欢迎您访问本站，您是本站的第<span id="position"></span>个用户</p>--}%
%{--				<p class="f-s-14 text-inverse f-w-600" style="margin-bottom: 0">用户量：<span id="total"></span></p>--}%
%{--			</blockquote>--}%
%{--		</div>--}%
%{--	</div>--}%
	<!-- end #page-copyright -->
	<asset:javascript src="index/index.js"/>
	<asset:javascript src="index/month.js"/>
	<script>
		// window.onload=function(){
		// 	ad=document.getElementById("ad");
		// 	moveY=1;
		// 	moveX=1;
		// 	timer=null;
		// 	startMove();
		//
		// };
		// function startMove(){
		// 	if(timer==null){
		// 		timer=window.setInterval(moveImg,40);
		// 	}
		// }
		// function moveImg(){
		// 	let top;
		// 	let left;
		// 	if(moveY===1){
		// 		top=getData.eleLT(ad).y+1;
		// 	}
		// 	if(moveY===-1){
		// 		top=getData.eleLT(ad).y-1;
		// 	}
		//
		// 	if(getData.eleLT(ad).y>getData.clientWH().y+getData.scrollLT().y-getData.eleWH(ad).y){
		// 		moveY=-1;
		// 	}
		// 	if(getData.eleLT(ad).y<=getData.scrollLT().y){
		// 		moveY=1;
		// 	}
		// 	ad.style.top=top+"px";
		//
		// 	/**
		// 	 * 横坐标移动
		// 	 */
		// 	if(moveX===1){
		// 		left=getData.eleLT(ad).x+1;
		// 	}
		// 	if(moveX===-1){
		// 		left=getData.eleLT(ad).x-1;
		// 	}
		//
		// 	if(getData.eleLT(ad).x>getData.clientWH().x+getData.scrollLT().x-getData.eleWH(ad).x){
		// 		moveX=-1;
		// 	}
		// 	if(getData.eleLT(ad).x<=getData.scrollLT().x){
		// 		moveX=1;
		// 	}
		// 	ad.style.left=left+"px";
		// }
		// getData={
		// 	eleWH:function(obj){
		// 		const eleW = obj.style.width || document.defaultView.getComputedStyle(obj, null).width;
		// 		const eleH = obj.style.height || document.defaultView.getComputedStyle(obj, null).height;
		// 		return new  this.result(parseInt(eleW),parseInt(eleH));
		// 	},
		// 	eleLT:function(obj){
		// 		const eleL = obj.style.width || document.defaultView.getComputedStyle(obj, null).left;
		// 		const eleT = obj.style.height || document.defaultView.getComputedStyle(obj, null).top;
		// 		return new this.result(parseInt(eleL),parseInt(eleT));
		// 	},
		// 	scrollLT:function(){
		// 		const scrollL = document.documentElement.scrollLeft || document.body.scrollLeft;
		// 		const scrollT = document.documentElement.scrollTop || document.body.scrollTop;
		// 		return new this.result(scrollL,scrollT);
		// 	},
		// 	clientWH:function(){
		// 		const clientW = document.documentElement.clientWidth;
		// 		const clientH = document.documentElement.clientHeight;
		// 		return new this.result(clientW,clientH);
		// 	},
		// 	result:function(x,y){
		// 		this.x=x;
		// 		this.y=y;
		// 	}
		// };
		$.get(
			"/api/visit",
			{
				cip:returnCitySN["cip"],
				cname:returnCitySN["cname"],
				cua:navigator.userAgent
			},function (result) {
				$("#from").append(result.address);
				$("#position").append(result.position);
				$("#total").append(result.total);
			},'json'
		);
	</script>
</body>
</html>