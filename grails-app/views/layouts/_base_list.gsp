<div class="col-md-3 order-2">
    <!-- begin section-container -->
    <div class="section-container">
        <div class="input-group sidebar-search">
            <input id="searchVal" type="text" class="form-control" placeholder="关键词搜索" />
            <span class="input-group-append">
                <button id="search" class="btn btn-inverse" type="button"><i class="fa fa-search"></i></button>
            </span>
        </div>
    </div>
    <!-- end section-container -->
    <!-- begin section-container -->
    <div class="section-container">
        <h4 class="section-title"><span>分类</span></h4>
        <ul class="sidebar-list" id="tags">
        </ul>
    </div>
    <!-- end section-container -->
    <!-- begin section-container -->
    <div class="section-container">
        <h4 class="section-title"><span>最近的文章</span></h4>
        <ul class="sidebar-recent-post" id="currentWZ">
%{--            <li>--}%
%{--                <div class="info">--}%
%{--                    <h4 class="title"><a href="#">岳阳楼记. </a></h4>--}%
%{--                    <div class="date">23 December 2020</div>--}%
%{--                </div>--}%
%{--            </li>--}%
%{--            <li>--}%
%{--                <div class="info">--}%
%{--                    <h4 class="title"><a href="#">劝学. </a></h4>--}%
%{--                    <div class="date">16 December 2018</div>--}%
%{--                </div>--}%
%{--            </li>--}%
%{--            <li>--}%
%{--                <div class="info">--}%
%{--                    <h4 class="title"><a href="#">过秦论. </a></h4>--}%
%{--                    <div class="date">7 December 2018</div>--}%
%{--                </div>--}%
%{--            </li>--}%
%{--            <li>--}%
%{--                <div class="info">--}%
%{--                    <h4 class="title"><a href="#">项脊轩志. </a></h4>--}%
%{--                    <div class="date">20 November 2018</div>--}%
%{--                </div>--}%
%{--            </li>--}%
%{--            <li>--}%
%{--                <div class="info">--}%
%{--                    <h4 class="title"><a href="#">六国论.</a></h4>--}%
%{--                    <div class="date">5 November 2018</div>--}%
%{--                </div>--}%
%{--            </li>--}%
        </ul>
    </div>
    <!-- end section-container -->
    <!-- begin section-container -->
    <div class="section-container">
        <h4 class="section-title"><span>友链</span></h4>
        <ul class="sidebar-list friendData">
        </ul>
        <script>
            $(function () {
                //友链列表
                $.get(
                    "/api/friendData",{},function (result) {
                        if(result.code===0){
                            for (let i=0; i<result.data.length; i++){
                                $(".friendData").append("<li><a target=\"_blank\" href=\""+ result.data[i].url +"\">"+ result.data[i].name +"</a></li>");
                            }
                        }
                    },'json'
                );
                //分类列表
                $.get(
                    "/api/tagData",{},function (result) {
                        if(result.code===0){
                            for (let i=0; i<result.data.length; i++){
                                $("#tags").append("<input type=\"hidden\" value=\""+ result.data[i].id +"\"/>\n" +
                                    "            <li><a class='' href=\"javascript:void(0);\" onclick='handleValue(this); return false'>"+ result.data[i].name +" ("+ result.data[i].uid +")</a></li>")
                            }
                        }
                    },'json'
                );
                //最近文章
                $.get(
                    "/api/currentWZ",{},function (result) {
                        for (let i=0; i<result.data.length; i++){
                            const date = result.data[i].date.split("-");
                            const time = date[2].substring(0,2) + " " + month(date[1]) + " " + date[0];
                            $("#currentWZ").append("<li>\n" +
                                "                <div class=\"info\">\n" +
                                "                    <h4 class=\"title\"><a href=\"/blog/index/detail/"+ result.data[i].id +"\">"+ result.data[i].wzm +"</a></h4>\n" +
                                "                    <div class=\"date\">"+ time +"</div>\n" +
                                "                </div>\n" +
                                "            </li>")
                        }

                    },'json'
                );
            })
        </script>
    </div>
    <!-- end section-container -->
</div>
<style>
    .checked{
        font-weight: bold;
    }
</style>