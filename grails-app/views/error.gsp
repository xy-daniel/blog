<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.springframework.http.HttpStatus" %>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8" lang=""> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<head>
    <!-- begin #page-loader -->
    <g:render template="/layouts/base_loader"/>
    <!-- end #page-loader -->
    <title>发生错误了...</title>
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <asset:stylesheet href="fonts.css" rel="stylesheet"/>
    <asset:stylesheet href="jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
    <asset:stylesheet href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <asset:stylesheet href="font-awesome/css/all.min.css" rel="stylesheet"/>
    <asset:stylesheet href="animate/animate.css" rel="stylesheet"/>
    <asset:stylesheet href="default/style.css" rel="stylesheet"/>
    <asset:stylesheet href="default/style-responsive.css" rel="stylesheet"/>
    <asset:stylesheet href="default/theme/default.css" rel="stylesheet" id="theme"/>
    <asset:stylesheet href="main.css"/>
    <!-- ================== BEGIN BASE JS ================== -->
    <asset:javascript src="pace/pace.min.js"/>
    <asset:javascript src="jquery/jquery-3.3.1.min.js"/>
    <asset:javascript src="jquery-ui/jquery-ui.min.js"/>
    <asset:javascript src="bootstrap/js/bootstrap.bundle.min.js"/>
    <asset:javascript src="slimscroll/jquery.slimscroll.min.js"/>
    <asset:javascript src="js-cookie/js.cookie.js"/>
    <asset:javascript src="jquery-form/jquery.form.js"/>
    <asset:javascript src="console/theme/default.min.js"/>
    <asset:javascript src="console/apps.js" />
    <asset:javascript src="main.js"/>
    <!-- ================== END BASE JS ================== -->

    <!-- ================== END BASE CSS STYLE ================== -->
</head>
<body class="pace-top">
<!-- begin #page-loader -->
<div id="page-loader" class="fade show"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade">
    <!-- begin error -->
    <div class="error">
        <div class="error-code m-b-10">${(request.getAttribute('javax.servlet.error.status_code') as int)}</div>
        <div class="error-content jcm-error">
            <div class="error-message">${HttpStatus.valueOf(request.getAttribute('javax.servlet.error.status_code') as int).getReasonPhrase()}</div>
            <div>
                <g:link controller="index" class="btn btn-success p-l-20 p-r-20">Go Home</g:link>
            </div>
            <div class="error-desc m-b-30">
                <g:if test="${Throwable.isInstance(exception)}">
                    <tc:renderException exception="${exception}" />
                </g:if>
                <g:else test="${request.getAttribute('javax.servlet.error.exception')}">
                    <tc:renderException exception="${request.getAttribute('javax.servlet.error.exception')}" />
                </g:else>
            </div>
        </div>
    </div>
    <!-- end error -->


    <!-- begin scroll to top btn -->
    <a href="javascript:void(0);" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<script>
    -function () {
        App.init();
    }();
</script>
</body>
</html>
