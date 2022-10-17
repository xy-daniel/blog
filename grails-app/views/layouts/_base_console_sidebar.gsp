<!-- begin #sidebar -->
<div id="sidebar" class="sidebar">
    <!-- begin sidebar scrollbar -->
    <div data-scrollbar="true" data-height="100%" style="font-size: 12px;text-align: left">
        <!-- begin sidebar user -->
        <ul class="nav">
            <li class="nav-profile">
                <a data-toggle="nav-profile">
                    <div class="cover with-shadow"></div>
                    <div class="image">
                        <img src="<blog:photo/>" onerror="this.src='<asset:assetPath src="user.jpg" />'" alt="" />
                    </div>
                    <div class="info">
                        <blog:realName/>
                        <small>万物皆有裂痕,那是光进来的地方</small>
                    </div>
                </a>
            </li>
        </ul>
        <!-- end sidebar user -->
        <!-- begin sidebar nav -->
        <ul class="nav">
            <!-- 系统信息 -->
            <li><a href="/admin"><i class="fas fa-cog fa-fw"></i> <span>系统信息</span></a></li>
            <!-- 文章管理 -->
            <li class="has-sub">
                <a href="javascript:void(0);">
                    <b class="caret"></b>
                    <i class="fas fa-book fa-fw"></i>
                    <span>文章管理</span>
                </a>
                <ul class="sub-menu">
                    <!-- 添加文章  可以保存为关于我的文章 -->
                    <li><g:link controller="heart" action="add">发布文章</g:link></li>
                    <!-- 添加文章的时候需要填写是什么种类的文章方便前段进行遍历-->
                    <li><g:link controller="heart" action="list">文章列表</g:link></li>
                </ul>
            </li>
            <!-- 关于我 -->
            <li><g:link controller="aboutMe" action="data"><i class="fas fa-user"></i> <span>关于我</span></g:link></li>
            <!-- 联系人管理 -->
            <li><g:link controller="contacts" action="list"><i class="fas fa-user"></i> <span>联系人管理</span></g:link></li>
            <!-- 标签管理 -->
            <li><g:link controller="tags" action="list"><i class="fas fa-tags"></i> <span>标签管理</span></g:link></li>
            <!-- 友链管理 -->
            <li><g:link controller="friend" action="list"><i class="fas fa-address-card"></i> <span>友链管理</span></g:link></li>
            <!-- 项目管理 -->
            <li><g:link controller="friend" action="list"><i class="fas fa-address-card"></i> <span>项目管理</span></g:link></li>
            <!-- begin sidebar minify button -->
            <li><a href="javascript:void(0);" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
            <!-- end sidebar minify button -->
        </ul>
        <!-- end sidebar nav -->
    </div>
    <!-- end sidebar scrollbar -->
</div>
<div class="sidebar-bg"></div>
<!-- end #sidebar -->