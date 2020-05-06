<!-- 左边显示个人信息、归档、关键词 -->
<div class="col-md-3 order-0">
    <!-- begin card -->
    <div class="card card-inverse">
        <img class="card-img" src="<asset:assetPath src="cover/gzh.jpg"/>" alt="" />
        <div class="card-block text-lg-center" style="color: black;text-align: center">
            <h5 class="card-title">Cruder拯救者</h5>
            <hr/>
            <div class="row">
                <div class="col-4">
                    文章<br/><b>${hearts}</b>
                </div>
                <div class="col-4">
                    分类<br/><b>${tags}</b>
                </div>
                <div class="col-4">
                    关键词<br/><b>${gjcs}</b>
                </div>
            </div>
            <!-- 扫码关注微信公众号到一个单独的页面显示公众号图片 -->
            <div>
                <a href="javascript:void(0);" class="btn btn-primary" style="margin: 10px;width: 70%;border-radius: 30px">扫码关注微信公众号</a>
            </div>
            <!-- github地址 -->
            <div class="row" style="margin: 10px 0">
                <div class="col-4">
                    <a class="black" href="https://github.com/xy-daniel" title="GitHub" target="_blank">
                        <i class="fab fa-lg fa-fw fa-github"></i>
                    </a>
                </div>
                <div class="col-4">
                    <a class="black" href="mailto:myarctic@163.com" title="envelope" target="_blank">
                        <i class="fas fa-lg fa-fw fa-envelope"></i>
                    </a>
                </div>
                <div class="col-4">
                    <a class="black" href="javascript:void(0);" title="rss">
                        <i class="fas fa-lg fa-fw fa-rss"></i>
                    </a>
                </div>
                <script>
                    $(".fa-rss").bind('click',function () {
                        const url = window.location;
                        const title = document.title;
                        try {
                            window.external.addFavorite(url, title);
                        }
                        catch (e) {
                            try {
                                window.sidebar.addPanel(title, url, "");
                            }
                            catch (e) {
                                alert("抱歉，您所使用的浏览器无法完成此操作。加入收藏失败，请使用Ctrl+D进行添加。");
                            }
                        }
                    })
                </script>
            </div>
        </div>
    </div>
    <!-- end card -->
    <!-- begin section-container -->
    <div class="section-container" style="margin-top: 10%">
        <h4 class="section-title"><span>归档</span></h4>
        <ul class="sidebar-list" id="file">
        </ul>
    </div>
    <!-- end section-container -->
    <!-- begin section-container -->
    <div class="section-container" style="margin-top: 10%">
        <h4 class="section-title"><span>关键词</span></h4>
        <div class="gjcs" style="color: #0a6aa1">
        </div>
    </div>
    <!-- end section-container -->
    <!-- 去后台读取数据然后 -->
    <script>
        const myDate = new Date();
        const tYear = myDate.getFullYear();
        const tMonth = myDate.getMonth() + 1;
        for (let i = tMonth; i>0; i--){
            $("#file").append("<li><a class='gd' href=\"/index/file?date="+ tYear +"年"+ i +"月\" >"+ tYear +"年"+ i +"月</a></li>")
        }
        for (let i = 0; i<13-tMonth; i++){
            $("#file").append("<li><a class='gd' href=\"/index/file?date="+ (tYear-1) +"年"+ (12-i) +"月\" >"+ (tYear-1) +"年"+ (12-i) +"月</a></li>")
        }
        $.get("/api/getGjc",{},function (result) {
            for (let i=0; i<result.length; i++){
                $(".gjcs").append("<span style=\"font-size: "+ parseInt(Math.random()*15+5) +"px\">"+ result[i] +"</span>&nbsp;")
            }
        },'json')
    </script>
</div>
