<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<!-- begin #page-loader -->
	<g:render template="/layouts/base_loader"/>
	<!-- end #page-loader -->
	<title>控制台</title>

	<g:render template="/layouts/base_console_plugin"/>

	<!-- =========================BEGIN PAGE LEVEL STYLE========================= -->
	<asset:stylesheet rel="stylesheet" href="md/css/style.css"/>
	<asset:stylesheet rel="stylesheet" href="md/css/editormd.css"/>
	<!-- =========================  END PAGE LEVEL STYLE========================= -->


</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<g:render template="/layouts/base_console_header"/>
		<g:render template="/layouts/base_console_sidebar"/>
		<!-- begin #content -->
		<div id="content" class="content">
			<g:form controller="aboutMe" action="update" method="POST" data-parsley-validate="true">
				<div class="col-md-12">
					<!-- begin markdown -->
					<div id="editormd">
						<textarea name="data" data-parsley-required="true" data-parsley-required-message="此项不能为空">${data}</textarea>
					</div>
					<!-- end markdown -->
					<!-- end form-group row -->
					<div class="form-group row m-b-8">
						<div class="col-md-2">
							<button type="submit" class="btn btn-sm btn-primary m-r-5">更新</button>
						</div>
					</div>
				</div>
			</g:form>
</div>
		<!-- end #content -->
		<g:render template="/layouts/base_console_topbtn"/>
	</div>
	<!-- end page container -->

	<!-- =========================BEGIN PAGE LEVEL JS========================= -->
	<!-- begin tagit -->
	<g:render template="/layouts/base_console_tagit"/>
	<!-- end tagit -->
	<!-- begin parsley -->
	<g:render template="/layouts/base_parsley"/>
	<!-- end parsley -->
	<asset:javascript src="md/js/editormd.js" />
	<script type="text/javascript">
		let editor;
		$(function() {
			editor = editormd("editormd", {
				width: "100%",
				height: 800,
				path : '../../assets/md/lib/',
				theme : "white",
				previewTheme : "white",
				editorTheme : "pastel-on-white",
				codeFold : true,
				saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
				searchReplace : true,
				htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
				emoji : true,
				taskList : true,
				tocm : true,         // Using [TOCM]
				toc : true,         // Using [TOC]
				tex : true,                   // 开启科学公式TeX语言支持，默认关闭
				flowChart : true,             // 开启流程图支持，默认关闭
				sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
				dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
				dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
				dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
				dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
				dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
				imageUpload : true,
				imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
				imageUploadURL : "./upload"
			});
			//现在设置一个定时器定时器每隔1分钟往服务器推送已经编写的数据
			setInterval(update,60*1000);
			function update() {
				//获取markdown数据
				const mdc = editor.getMarkdown();
				$.get("./update",{
					mdc: mdc
				},function (result) {
					if(result.code===0){
						console.log("推送成功")
					}
				}, 'json')
			}

		});
	</script>
	<!-- =========================  END PAGE LEVEL JS========================= -->
</body>
</html>
