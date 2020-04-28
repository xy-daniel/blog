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
			<g:form controller="heart" action="editSave" method="POST" data-parsley-validate="true">
				<div class="col-md-12">
					<legend class="no-border f-w-700 p-b-0 m-t-0 m-b-20 f-s-16 text-inverse">更新文章 </legend>
					<input type="hidden" name="id" value="${heart.id}">
					<!-- begin form-group row 文章名称 -->
					<div class="form-group row m-b-8">
						<label id="title" class="col-md-1 text-md-right col-form-label">文章标题 </label>
						<div class="col-md-10">
							<input type="text" class="form-control m-b-5" name="title" value="${heart.wzm}" data-parsley-required="true"
								   data-parsley-required-message="此项不能为空"/>
						</div>
					</div>
					<!-- end form-group row 文章名称 -->
					<!-- begin form-group row 关键词 -->
					<div class="form-group row m-b-8">
						<label id="status" class="col-md-1 text-md-right col-form-label">关键词(必填) </label>
						<div class="col-md-10">
							<ul id="tagIt" class="primary">
							</ul>
							<input type="hidden" id="tagsValues" name="keys" value="${heart.gjc}" data-parsley-required="true" data-parsley-required-message="此项不能为空"/>
						</div>
					</div>
					<!-- end form-group row 关键词 -->
					<!-- begin form-group row 分类 -->
					<div class="form-group row m-b-8">
						<label id="tags" class="col-md-1 text-md-right col-form-label">分类(必填) </label>
						<div class="col-md-10" style="margin-left: 10px">
							<div class="row">
								<g:each in="${tags}" var="tag" status="i">
									<div class="col-md-2 checkbox checkbox-css">
										<input type="checkbox" name="tags" id="cssCheckbox${tag.id}" <g:if test="${ids.indexOf("id="+tag.id+"=di") != -1}"> checked </g:if> value="${tag.id}" />
										<label for="cssCheckbox${tag.id}">${tag.name}</label>
									</div>
								</g:each>
							</div>
						</div>
					</div>
					<!-- end form-group row 分类 -->
					<!-- begin form-group row 文章类型 -->
					<div class="form-group text-md-right row m-b-8">
						<label id="wzlx" class="col-md-1 col-form-label">文章类型 </label>
						<div class="col-md-10 text-md-left">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="wzlx" id="defaultInlineRadio1" value="1" <g:if test="${heart.wzlx==1}"> checked </g:if> />
								<label class="form-check-label" for="defaultInlineRadio1">学习笔记</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="wzlx" id="defaultInlineRadio2" value="2" <g:if test="${heart.wzlx==2}"> checked </g:if>/>
								<label class="form-check-label" for="defaultInlineRadio2">技术文章</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="wzlx" id="defaultInlineRadio3" value="3" <g:if test="${heart.wzlx==3}"> checked </g:if>/>
								<label class="form-check-label" for="defaultInlineRadio3">算法文章</label>
							</div>
						</div>
					</div>
					<!-- end form-group row 文章类型 -->
					<!-- begin form-group row 文章概要 -->
					<div class="form-group row m-b-8">
						<label id="summary" class="col-md-1 text-md-right col-form-label">文章概要 </label>
						<div class="col-md-10">
							<textarea class="form-control" name="summary" data-parsley-maxlength="200" style="height: 100px">${heart.gy}</textarea>
						</div>
					</div>
					<!-- end form-group row 文章概要 -->
					<!-- begin form-group row 问题情景 -->
					<div class="form-group row m-b-8">
						<label id="origin" class="col-md-1 text-md-right col-form-label">问题情景 </label>
						<div class="col-md-10">
							<textarea class="form-control" name="origin" data-parsley-required="true" data-parsley-maxlength="200"
									  data-parsley-required-message="此项不能为空" style="height: 100px">${heart.origin}</textarea>
						</div>
					</div>
					<!-- end form-group row 问题情景 -->
					<!-- begin markdown -->
					<div id="editormd">
						<textarea name="content" data-parsley-required="true" data-parsley-required-message="此项不能为空">${content}</textarea>
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
				tocm            : true,         // Using [TOCM]
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
		});
	</script>
	<!-- =========================  END PAGE LEVEL JS========================= -->
</body>
</html>
