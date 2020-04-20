/**
 * Created by daniel on 2020/04/15.
 */
;-function (window) {

    //内部核心属性
    const core = {
        data: function () {
            //初始化数据
            getData(1,"", "");
            //点击标签数据

            //点击搜索数据
            $("#search").bind('click', function() {
                const searchVal = $("#searchVal").val();
                getData(1, searchVal, "");
            });
            //点击下一页数据

            //点击到达数据
        }
    };
    'use strict';
    const ready = {};
    const option = {};
    const init = function () {
        init_ready();//加载预设变量
        init_event();//初始化页面事件
    };

    function init_ready() {//初始化预设值
    }

    function init_event() {//初始化页面事件
        core.data();
    }
    //对外公开的方法
    const page = {};
    init();
    window.p = page;
    function getData(toPage, search, tag) {
        $.get(
            "/blog/api/heartData",
            {
                //当前页数据
                currentPage: toPage,
                //关键词搜索
                search: search,
                //点击的数据
                tag: tag
            },
            function (result) {
                //总页数
                const totalPage = Math.ceil(result.recordsTotal / 3);
                //当前页
                const currentPage = result.currentPage;
                //数据
                const data = result.data;
                //分页插件
                pageNum(totalPage, currentPage);
                const list = $(".post-list");
                list.empty();
                //数据处理
                for (let i=0; i<data.length; i++){
                    const date = data[i].date.split("-");
                    const imgStr = data[i].img;
                    if (imgStr === "" || imgStr === null){
                        list.append("<li>\n" +
                            "\t\t\t\t\t\t\t<!-- begin post-left-info -->\n" +
                            "\t\t\t\t\t\t\t<div class=\"post-left-info\">\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"post-date\">\n" +
                            "\t\t\t\t\t\t\t\t\t<span class=\"day\">"+ date[2].substring(0,2) +"</span>\n" +
                            "\t\t\t\t\t\t\t\t\t<span class=\"month\">"+ month(date[1]) + date[0] +"</span>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"post-likes\">\n" +
                            "\t\t\t\t\t\t\t\t\t<i class=\"fa fa-heart\"></i>\n" +
                            "\t\t\t\t\t\t\t\t\t<span class=\"number\">"+ data[i].dzs +"</span>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t<!-- end post-left-info -->\n" +
                            "\t\t\t\t\t\t\t<!-- begin post-content -->\n" +
                            "\t\t\t\t\t\t\t<div class=\"post-content\">\n" +
                            "\t\t\t\t\t\t\t\t<!-- begin blockquote -->\n" +
                            "\t\t\t\t\t\t\t\t<blockquote>\n" +
                            "\t\t\t\t\t\t\t\t\t"+ data[i].origin +"\n" +
                            "\t\t\t\t\t\t\t\t</blockquote>\n" +
                            "\t\t\t\t\t\t\t\t<!-- end blockquote -->\n" +
                            "\t\t\t\t\t\t\t\t<!-- begin post-info -->\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"post-info\">\n" +
                            "\t\t\t\t\t\t\t\t\t<h4 class=\"post-title\">\n" +
                            "\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\">"+ data[i].wzm +"</a>\n" +
                            "\t\t\t\t\t\t\t\t\t</h4>\n" +
                            "\t\t\t\t\t\t\t\t\t<div class=\"post-by\">\n" +
                            "\t\t\t\t\t\t\t\t\t\tPosted By <a href=\"#\">"+ data[i].zz +"</a> <span class=\"divider\">|</span> <a href=\"#\">"+ data[i].gjc +"</a> <span class=\"divider\">|</span> "+ data[i].pls +" 评论\n" +
                            "\t\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t\t\t<div class=\"post-desc\">\n" +
                            "\t\t\t\t\t\t\t\t\t\t"+ data[i].gy +"\n" +
                            "\t\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t\t<!-- end post-info -->\n" +
                            "\t\t\t\t\t\t\t\t<!-- begin read-btn-container -->\n" +
                            "\t\t\t\t\t\t\t\t<div class=\"read-btn-container\">\n" +
                            "\t\t\t\t\t\t\t\t\t<g:link controller=\"index\" action=\"post_detail\" class=\"read-btn\">Read More <i class=\"fa fa-angle-double-right\"></i></g:link>\n" +
                            "\t\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t\t<!-- begin read-btn-container -->\n" +
                            "\t\t\t\t\t\t\t</div>\n" +
                            "\t\t\t\t\t\t\t<!-- end post-content -->\n" +
                            "\t\t\t\t\t\t</li>")
                    }else {
                        const img = imgStr.split(",");
                        const imgLength = img.length;
                        if (imgLength===1){
                            list.append("<li>\n" +
                                "\t\t\t\t\t\t\t<!-- begin post-left-info -->\n" +
                                "\t\t\t\t\t\t\t<div class=\"post-left-info\">\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"post-date\">\n" +
                                "\t\t\t\t\t\t\t\t\t<span class=\"day\">"+ date[2].substring(0,2) +"</span>\n" +
                                "\t\t\t\t\t\t\t\t\t<span class=\"month\">"+ month(date[1]) + date[0] +"</span>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"post-likes\">\n" +
                                "\t\t\t\t\t\t\t\t\t<i class=\"fa fa-heart\"></i>\n" +
                                "\t\t\t\t\t\t\t\t\t<span class=\"number\">"+ data[i].dzs +"</span>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t<!-- end post-left-info -->\n" +
                                "\t\t\t\t\t\t\t<!-- begin post-content -->\n" +
                                "\t\t\t\t\t\t\t<div class=\"post-content\">\n" +
                                "\t\t\t\t\t\t\t\t<!-- begin post-image -->\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"post-image\">\n" +
                                "\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<div class=\"post-image-cover\" style=\"background-image: url("+ img[0].replace(/\s/g,"%20") +");\"></div>\n" +
                                "\t\t\t\t\t\t\t\t\t</a>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t<!-- end post-image -->\n" +
                                "\t\t\t\t\t\t\t\t<!-- begin post-info -->\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"post-info\">\n" +
                                "\t\t\t\t\t\t\t\t\t<h4 class=\"post-title\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\">"+ data[i].wzm +"</a>\n" +
                                "\t\t\t\t\t\t\t\t\t</h4>\n" +
                                "\t\t\t\t\t\t\t\t\t<div class=\"post-by\">\n" +
                                "\t\t\t\t\t\t\t\t\t\tPosted By <a href=\"#\">"+ data[i].zz +"</a> <span class=\"divider\">|</span> <a href=\"#\">"+ data[i].gjc +"</a><span class=\"divider\">|</span> "+ data[i].pls +" 评论\n" +
                                "\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t\t<div class=\"post-desc\">\n" +
                                "\t\t\t\t\t\t\t\t\t\t"+ data[i].gy +"\n" +
                                "\t\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t<!-- end post-info -->\n" +
                                "\t\t\t\t\t\t\t\t<!-- begin read-btn-container -->\n" +
                                "\t\t\t\t\t\t\t\t<div class=\"read-btn-container\">\n" +
                                "\t\t\t\t\t\t\t\t\t<g:link controller=\"index\" action=\"post_detail\" class=\"read-btn\">Read More <i class=\"fa fa-angle-double-right\"></i></g:link>\n" +
                                "\t\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t\t<!-- end read-btn-container -->\n" +
                                "\t\t\t\t\t\t\t</div>\n" +
                                "\t\t\t\t\t\t\t<!-- end post-content -->\n" +
                                "\t\t\t\t\t\t</li>")
                        }else {
                            if (imgLength===2){
                                list.append("<li>\n" +
                                    "\t\t\t\t\t\t\t<!-- begin post-left-info -->\n" +
                                    "\t\t\t\t\t\t\t<div class=\"post-left-info\">\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-date\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"day\">"+ date[2].substring(0,2) +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"month\">"+ month(date[1]) + date[0] +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-likes\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<i class=\"fa fa-heart\"></i>\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"number\">"+ data[i].dzs +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t<!-- end post-left-info -->\n" +
                                    "\t\t\t\t\t\t\t<!-- begin post-content -->\n" +
                                    "\t\t\t\t\t\t\t<div class=\"post-content\">\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin post-image -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-image post-image-with-carousel\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<!-- begin carousel -->\n" +
                                    "\t\t\t\t\t\t\t\t\t<div id=\"carousel"+ i +"\" class=\"carousel slide\" data-ride=\"carousel\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-indicators -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<ol class=\"carousel-indicators\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<li data-target=\"#carousel"+ i +"\" data-slide-to=\"0\" class=\"active\"></li>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<li data-target=\"#carousel"+ i +"\" data-slide-to=\"1\"></li>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</ol>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-indicators -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-inner -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-inner\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-item active\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\"><img class=\"d-block w-100\" src='"+ img[0].replace(/\s/g,"%20") +"' alt=\"\" /></a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-item\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\"><img class=\"d-block w-100\" src='"+ img[1].replace(/\s/g,"%20") +"' alt=\"\" /></a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-inner -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-control -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a class=\"carousel-control-prev\" href=\"#carousel"+ i +"\" role=\"button\" data-slide=\"prev\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-chevron-left\" aria-hidden=\"true\"></span>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a class=\"carousel-control-next\" href=\"#carousel"+ i +"\" role=\"button\" data-slide=\"next\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-chevron-right\" aria-hidden=\"true\"></span>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-control -->\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t<!-- end carousel -->\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end post-image -->\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin post-info -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-info\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<h4 class=\"post-title\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a>"+ data[i].wzm +"</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t</h4>\n" +
                                    "\t\t\t\t\t\t\t\t\t<div class=\"post-by\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\tPost By <a href=\"#\">"+ data[i].zz +"</a> <span class=\"divider\">|</span> <a href=\"#\">"+ data[i].gjc +"</a><span class=\"divider\">|</span> "+ data[i].pls +" 评论\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t<div class=\"post-desc\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t"+ data[i].gy +"\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end post-info -->\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin read-btn-container -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"read-btn-container\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<g:link controller=\"index\" action=\"post_detail\" class=\"read-btn\">Read More <i class=\"fa fa-angle-double-right\"></i></g:link>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end read-btn-container -->\n" +
                                    "\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t<!-- end post-content -->\n" +
                                    "\t\t\t\t\t\t</li>")
                            }else{
                                list.append("<li>\n" +
                                    "\t\t\t\t\t\t\t<!-- begin post-left-info -->\n" +
                                    "\t\t\t\t\t\t\t<div class=\"post-left-info\">\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-date\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"day\">"+ date[2].substring(0,2) +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"month\">"+ month(date[1]) + date[0] +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-likes\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<i class=\"fa fa-heart\"></i>\n" +
                                    "\t\t\t\t\t\t\t\t\t<span class=\"number\">"+ data[i].dzs +"</span>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t<!-- end post-left-info -->\n" +
                                    "\t\t\t\t\t\t\t<!-- begin post-content -->\n" +
                                    "\t\t\t\t\t\t\t<div class=\"post-content\">\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin post-image -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-image post-image-with-carousel\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<!-- begin carousel -->\n" +
                                    "\t\t\t\t\t\t\t\t\t<div id=\"carousel"+ i +"\" class=\"carousel slide\" data-ride=\"carousel\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-indicators -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<ol class=\"carousel-indicators\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<li data-target=\"#carousel"+ i +"\" data-slide-to=\"0\" class=\"active\"></li>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<li data-target=\"#carousel"+ i +"\" data-slide-to=\"1\"></li>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<li data-target=\"#carousel"+ i +"\" data-slide-to=\"2\"></li>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</ol>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-indicators -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-inner -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-inner\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-item active\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\"><img class=\"d-block w-100\" src='"+ img[0].replace(/\s/g,"%20") +"' alt=\"\" /></a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-item\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\"><img class=\"d-block w-100\" src='"+ img[1].replace(/\s/g,"%20") +"' alt=\"\" /></a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-item\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"post_detail.gsp\"><img class=\"d-block w-100\" src='"+ img[2].replace(/\s/g,"%20") +"' alt=\"\" /></a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-inner -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- begin carousel-control -->\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a class=\"carousel-control-prev\" href=\"#carousel"+ i +"\" role=\"button\" data-slide=\"prev\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-chevron-left\" aria-hidden=\"true\"></span>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a class=\"carousel-control-next\" href=\"#carousel"+ i +"\" role=\"button\" data-slide=\"next\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-chevron-right\" aria-hidden=\"true\"></span>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<!-- end carousel-control -->\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t<!-- end carousel -->\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end post-image -->\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin post-info -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"post-info\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<h4 class=\"post-title\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t<a>"+ data[i].wzm +"</a>\n" +
                                    "\t\t\t\t\t\t\t\t\t</h4>\n" +
                                    "\t\t\t\t\t\t\t\t\t<div class=\"post-by\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\tPost By <a href=\"#\">"+ data[i].zz +"</a> <span class=\"divider\">|</span> <a href=\"#\">"+ data[i].gjc +"</a><span class=\"divider\">|</span> "+ data[i].pls +" 评论\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t\t<div class=\"post-desc\">\n" +
                                    "\t\t\t\t\t\t\t\t\t\t"+ data[i].gy +"\n" +
                                    "\t\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end post-info -->\n" +
                                    "\t\t\t\t\t\t\t\t<!-- begin read-btn-container -->\n" +
                                    "\t\t\t\t\t\t\t\t<div class=\"read-btn-container\">\n" +
                                    "\t\t\t\t\t\t\t\t\t<g:link controller=\"index\" action=\"post_detail\" class=\"read-btn\">Read More <i class=\"fa fa-angle-double-right\"></i></g:link>\n" +
                                    "\t\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t\t<!-- end read-btn-container -->\n" +
                                    "\t\t\t\t\t\t\t</div>\n" +
                                    "\t\t\t\t\t\t\t<!-- end post-content -->\n" +
                                    "\t\t\t\t\t\t</li>")
                            }
                        }

                    }
                }
            }, 'json'
        )
    }
    //分页插件
    function pageNum(totalPage, currentPage) {
        const pagination = $(".pagination");
        pagination.empty();
        pagination.append("<li class=\"page-item upPage\"><a class=\"page-link\" href=\"javascript:void(0);\">上页</a></li>");
        if (totalPage<=7){
            for (let i=1; i<=totalPage; i++){
                if (i===currentPage){
                    pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                }else{
                    pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                }
            }
        }else{
            if (currentPage<=3){
                for (let i=1; i<=3; i++){
                    if (i===currentPage){
                        pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                    }else{
                        pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                    }
                }
                if (currentPage===3){
                    pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ 4 +"</a></li>");
                }
                pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ (totalPage-1) +"</a></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ totalPage +"</a></li>");
            }else if(currentPage+3 > totalPage){
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">1</a></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">2</a></li>");
                pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
                if (currentPage === totalPage-2){
                    pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ (totalPage-3) +"</a></li>");
                }
                for (let i=totalPage-2; i<=totalPage; i++){
                    if (i===currentPage){
                        pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                    }else{
                        pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ i +"</a></li>");
                    }
                }
            }else{
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">1</a></li>");
                pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ (currentPage-1) +"</a></li>");
                pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ currentPage +"</a></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ (currentPage+1) +"</a></li>");
                pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\">"+ totalPage +"</a></li>");
            }
        }
        pagination.append("<li class=\"page-item downPage\"><a class=\"page-link\" href=\"javascript:void(0);\">下页</a></li>");
        if (currentPage===1){
            $(".upPage").addClass("disabled");
        }
        if (currentPage===totalPage){
            $(".downPage").addClass("disabled");
        }
    }
    //月份插件
    function month(monthNum) {
        if (monthNum==="01"){
            return "Jan."
        }
        if (monthNum==="02"){
            return "Feb."
        }
        if (monthNum==="03"){
            return "Mar."
        }
        if (monthNum==="04"){
            return "Apr."
        }
        if (monthNum==="05"){
            return "May."
        }
        if (monthNum==="06"){
            return "Jun."
        }
        if (monthNum==="07"){
            return "Jul."
        }
        if (monthNum==="08"){
            return "Aug."
        }
        if (monthNum==="09"){
            return "Sept."
        }
        if (monthNum==="10"){
            return "Oct."
        }
        if (monthNum==="11"){
            return "Nov."
        }
        if (monthNum==="12"){
            return "Dec."
        }
    }
}(window);
