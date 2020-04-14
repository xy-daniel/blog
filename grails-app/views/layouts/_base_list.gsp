<div class="col-md-3">
    <!-- begin section-container -->
    <div class="section-container">
        <div class="input-group sidebar-search">
            <input type="text" class="form-control" placeholder="Time Machine Biu" />
            <span class="input-group-append">
                <button class="btn btn-inverse" type="button"><i class="fa fa-search"></i></button>
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
        <ul class="sidebar-recent-post">
            <li>
                <div class="info">
                    <h4 class="title"><a href="#">岳阳楼记. </a></h4>
                    <div class="date">23 December 2020</div>
                </div>
            </li>
            <li>
                <div class="info">
                    <h4 class="title"><a href="#">劝学. </a></h4>
                    <div class="date">16 December 2018</div>
                </div>
            </li>
            <li>
                <div class="info">
                    <h4 class="title"><a href="#">过秦论. </a></h4>
                    <div class="date">7 December 2018</div>
                </div>
            </li>
            <li>
                <div class="info">
                    <h4 class="title"><a href="#">项脊轩志. </a></h4>
                    <div class="date">20 November 2018</div>
                </div>
            </li>
            <li>
                <div class="info">
                    <h4 class="title"><a href="#">六国论.</a></h4>
                    <div class="date">5 November 2018</div>
                </div>
            </li>
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
                $.get(
                    "/blog/friend/data",{},function (result) {
                        if(result.code===0){
                            for (let i=0; i<result.data.length; i++){
                                $(".friendData").append("<li><a target=\"_blank\" href=\""+ result.data[i].url +"\">"+ result.data[i].name +"</a></li>");
                            }
                        }
                    },'json'
                )
                $.get(
                    "/blog/tags/data",{},function (result) {
                        if(result.code===0){
                            for (let i=0; i<result.data.length; i++){
                                $("#tags").append("<input type=\"hidden\" value=\""+ result.data[i].id +"\"/>\n" +
                                    "            <li><a href=\"#\">"+ result.data[i].name +" ("+ result.data[i].uid +")</a></li>")
                            }
                        }
                    },'json'
                )
            })
        </script>
    </div>
    <!-- end section-container -->
</div>