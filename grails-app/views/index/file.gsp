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
	<asset:stylesheet rel="stylesheet" href="index/timeline.css"/>
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

	<div class="container" style="padding-top: 100px;padding-bottom: 20px">
		<h4 class="page-header" style="color: black">归档 <small>${date}文章...</small></h4>
		<p>您可在地址栏中拼接?date=XXXX年XX月进行归档查询</p>
		<input type="hidden" id="date" value="${date}">
		<div class="content" id="content">
			<ul class="timeline data">
			</ul>
		</div>
	</div>

	<script>
		$.get(
				"/index/getFileByDate",
				{date: $("#date").val()},
				function (result) {
					const data = result.data;
					console.log(data);
					if (data.length===0){
						$(".data").append("<li>" +
								"<div class=\"timeline-icon\">" +
								"<a href=\"javascript:;\">&nbsp;</a>" +
								"</div>" +
								"<div class=\"timeline-body\">" +
								"本月没有发布文章" +
								"</div>" +
								"</li>");
						return
					}
					for (let i=0; i<data.length; i++){
						$(".data").append("<li>" +
								"<div class=\"timeline-time\">" +
								"<span class=\"date\">"+ data[i].date.split("T")[0] +"</span>" +
								"<span class=\"time\">"+ data[i].date.split("T")[1].split("Z")[0] +"</span>" +
								"</div>" +
								"<div class=\"timeline-icon\">" +
								"<a href=\"javascript:;\">&nbsp;</a>" +
								"</div>" +
								"<div class=\"timeline-body\">" +
								"<div class=\"timeline-header\">" +
								"<span class=\"username\"><a href=\"/index/detail/"+ data[i].id +"\">"+ data[i].wzm +"</a> <small></small></span>" +
								"</div>" +
								"<div class=\"timeline-content\">" +
								"<p>"+ data[i].gy +
								"</p>" +
								"</div>" +
								"</div>" +
								"</li>")
					}
				},'json'
		)
	</script>
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