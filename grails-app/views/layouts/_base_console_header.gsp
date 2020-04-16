<!-- begin #header -->
<div id="header" class="header navbar-default">
    <!-- begin navbar-header -->
    <div class="navbar-header">
        <a href="${createLink(uri: '/')}" class="navbar-brand"><span class="navbar-logo"></span> <b>Blog</b> 控制台</a>
        <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!-- end navbar-header -->

    <!-- begin header-nav -->
    <ul class="navbar-nav navbar-right">
        <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle f-s-14">
                <i class="fa fa-bell"></i>
                <span class="label">5</span>
            </a>
            <ul class="dropdown-menu media-list dropdown-menu-right">
                <li class="dropdown-header">最新提醒 (5)</li>
                <li class="media">
                    <a href="javascript:void(0);">
                        <div class="media-left">
                            <i class="fa fa-bug media-object bg-silver-darker"></i>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">服务错误报告 <i class="fa fa-exclamation-circle text-danger"></i></h6>
                            <div class="text-muted f-s-11">3 minutes ago</div>
                        </div>
                    </a>
                </li>
                <li class="media">
                    <a href="javascript:void(0);">
                        <div class="media-left">
                            <img src="<asset:assetPath src="user/user-1.jpg"/>" class="media-object" alt="" />
                            <i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">John Smith</h6>
                            <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                            <div class="text-muted f-s-11">25 minutes ago</div>
                        </div>
                    </a>
                </li>
                <li class="media">
                    <a href="javascript:void(0);">
                        <div class="media-left">
                            <img src="<asset:assetPath src="user/user-2.jpg"/>" class="media-object" alt="" />
                            <i class="fab fa-facebook-messenger text-primary media-object-icon"></i>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading">Olivia</h6>
                            <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                            <div class="text-muted f-s-11">35 minutes ago</div>
                        </div>
                    </a>
                </li>
                <li class="media">
                    <a href="javascript:void(0);">
                        <div class="media-left">
                            <i class="fa fa-plus media-object bg-silver-darker"></i>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading"> 新用户注册</h6>
                            <div class="text-muted f-s-11">1 hour ago</div>
                        </div>
                    </a>
                </li>
                <li class="media">
                    <a href="javascript:void(0);">
                        <div class="media-left">
                            <i class="fa fa-envelope media-object bg-silver-darker"></i>
                            <i class="fab fa-google text-warning media-object-icon f-s-14"></i>
                        </div>
                        <div class="media-body">
                            <h6 class="media-heading"> 来自张三的邮件</h6>
                            <div class="text-muted f-s-11">2 hour ago</div>
                        </div>
                    </a>
                </li>
                <li class="dropdown-footer text-center">
                    <a href="javascript:void(0);">更多</a>
                </li>
            </ul>
        </li>
        <li class="dropdown navbar-user">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="<blog:photo/>/>" onerror="this.src='<asset:assetPath src="user/user-13.jpg" />'" alt="" />
                <span class="d-none d-md-inline"><blog:realName/></span> <b class="caret"></b>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
                <g:link url="${createLink(uri: '/')}self/edit" class="dropdown-item">个人信息</g:link>
                <g:link url="${createLink(uri: '/')}logout" class="dropdown-item">登出</g:link>
            </div>
        </li>
    </ul>
    <!-- end header navigation right -->
</div>
<!-- end #header -->