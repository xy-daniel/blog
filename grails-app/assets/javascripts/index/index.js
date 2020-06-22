/**
 * Created by daniel on 2020/04/15.
 */
;-function (window) {

    //内部核心属性
    const core = {
        data: function () {
            //初始化数据
            getData(1,"", "");
            //点击标签数据---->在下面处理永远返回第一页数据，不进行模糊搜索
            //点击搜索数据---->应该确定在哪个标签下面---->永远返回第一页
            $("#search").bind('click', function() {
                const searchVal = $("#searchVal").val();
                let tag = "";
                const checked = $(".checked");
                if (checked.length !== 0){
                    tag = checked.parent().prev().val()
                }
                getData(1, searchVal, tag);
            });
            //直接点击页码
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
        $.get(
            "/api/visit",
            {
                cip:returnCitySN["cip"],
                cname:returnCitySN["cname"],
                cua:navigator.userAgent
            },function (result) {
                $("#from").append(result.address);
                $("#position").append(result.position);
                $("#total").append(result.total);
            },'json'
        );
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
            "/api/heartData",
            {
                //当前页数据
                currentPage: toPage,
                //关键词搜索
                search: search,
                //点击的数据
                tag: tag
            },
            function (result) {
                //数据
                const data = result.data;
                //分页插件
                pageNum(Math.ceil(result.recordsTotal / 6), result.currentPage);
                handleData(data);
            }, 'json'
        )
    }
}(window);
//点击前往需要去的页面
function toPage(elem,i) {
    if ($(elem).parent().prop("class") === "page-item active"){
        return;
    }
    //搜索数据
    const search = $("#searchVal").val();
    //标签数据
    let tag = "";
    const checked = $(".checked");
    if (checked.length !== 0){
        tag = checked.parent().prev().val()
    }
    $.get(
        "/api/heartData",
        {
            //前往的页数
            currentPage: i,
            //关键词搜索
            search: search,
            //点击的数据
            tag: tag
        },
        function (result) {
            //数据
            const data = result.data;
            //分页插件
            pageNum(Math.ceil(result.recordsTotal / 6), result.currentPage);
            handleData(data);
        }, 'json'
    )
}
//点击上一页
function up() {
    //搜索数据
    const search = $("#searchVal").val();
    //标签数据
    let tag = "";
    const checked = $(".checked");
    if (checked.length !== 0){
        tag = checked.parent().prev().val()
    }
    $.get(
        "/api/heartData",
        {
            //前往的页数
            currentPage: parseInt($("li.active").children().text())-1,
            //关键词搜索
            search: search,
            //点击的数据
            tag: tag
        },
        function (result) {
            //数据
            const data = result.data;
            //分页插件
            pageNum(Math.ceil(result.recordsTotal / 6), result.currentPage);
            handleData(data);
        }, 'json'
    )
}
//点击下一页
function down() {
    //搜索数据
    const search = $("#searchVal").val();
    //标签数据
    let tag = "";
    const checked = $(".checked");
    if (checked.length !== 0){
        tag = checked.parent().prev().val()
    }
    $.get(
        "/api/heartData",
        {
            //前往的页数
            currentPage: parseInt($("li.active").children().text())+1,
            //关键词搜索
            search: search,
            //点击的数据
            tag: tag
        },
        function (result) {
            //数据
            const data = result.data;
            //分页插件
            pageNum(Math.ceil(result.recordsTotal / 6), result.currentPage);
            handleData(data);
        }, 'json'
    )
}
//点击标签数据处理
function handleValue(elem) {
    $("#searchVal").val("");
    //点击标签判断是否是已经被选中的
    const checked = $(elem).prop("class");
    //如果被选中了取消选中然后直接返回
    if (checked==="checked"){
        $(elem).attr("class", "");
        return;
    }
    //如果没有被选中---->取消掉其他被选中的
    $(".checked").attr("class", "");
    $(elem).attr("class", "checked");
    $.get(
        "/api/heartData",
        {
            //当前页数据
            currentPage: 1,
            //关键词搜索
            search: "",
            //点击的数据
            tag: $(elem).parent().prev().val()
        },
        function (result) {
            //数据
            const data = result.data;
            //分页插件
            pageNum(Math.ceil(result.recordsTotal / 6), result.currentPage);
            handleData(data);
        }, 'json'
    )
}
//总数据处理
function handleData(data) {
    const list = $(".post-content");
    if (data.length===0){
        return
    }
    list.empty();
    //数据处理
    for (let i=0; i<data.length; i++){
        const date = data[i].date.split("-");
        const imgStr = data[i].img;
        $(".post-content").append("<div class=\"wrapper4trans\" style=\"margin-left: auto;margin-right: auto\">" +
            "                           <div class=\"col4trans\" ontouchstart=\"this.classList.toggle('hover');\" onclick='toDetail("+ data[i].id +")'>" +
            "                               <div class=\"container4trans\">" +
            "                                   <div class=\"front\" style=\"background-image: url(https://s1.ax1x.com/2020/06/17/NANzOs.jpg)\">" +
            "                                       <div class=\"inner\">" +
            "                                           <p>"+ data[i].wzm +"</p>" +
            "                                           <span>"+ data[i].gjc +"</span>" +
            "                                           <hr/>" +
            "                                           <span>"+ data[i].date +"</span>" +
            "                                       </div>" +
            "                                   </div>" +
            "                                   <div class=\"back\">" +
            "                                       <div class=\"inner\">" +
            "                                           <p>"+ data[i].gy +"</p>" +
            "                                       </div>" +
            "                                   </div>" +
            "                               </div>" +
            "                           </div>" +
            "                       </div>")
        if (i!==data.length-1){
            $(".post-content").append( "<hr/><hr/>")
        }
    }
}
//分页插件
function pageNum(totalPage, currentPage) {
    const pagination = $(".pagination");
    if (totalPage===0){
        alert("没有数据");
        return
    }
    pagination.empty();
    pagination.append("<li class=\"page-item upPage\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='up(); return false'>上页</a></li>");
    if (totalPage<=7){
        for (let i=1; i<=totalPage; i++){
            if (i===currentPage){
                pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
            }else{
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
            }
        }
    }else{
        if (currentPage<=3){
            for (let i=1; i<=3; i++){
                if (i===currentPage){
                    pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
                }else{
                    pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
                }
            }
            if (currentPage===3){
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ 4 +"); return false'>"+ 4 +"</a></li>");
            }
            pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ (totalPage-1) +"); return false'>"+ (totalPage-1) +"</a></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ totalPage +"); return false'>"+ totalPage +"</a></li>");
        }else if(currentPage+3 > totalPage){
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ 1 +"); return false'>1</a></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ 2 +"); return false'>2</a></li>");
            pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
            if (currentPage === totalPage-2){
                pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ (totalPage-3) +"); return false'>"+ (totalPage-3) +"</a></li>");
            }
            for (let i=totalPage-2; i<=totalPage; i++){
                if (i===currentPage){
                    pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
                }else{
                    pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ i +"); return false'>"+ i +"</a></li>");
                }
            }
        }else{
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ 1 +"); return false'>1</a></li>");
            pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ (currentPage-1) +"); return false'>"+ (currentPage-1) +"</a></li>");
            pagination.append("<li class=\"page-item active\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ currentPage +"); return false'>"+ currentPage +"</a></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ (currentPage+1) +"); return false'>"+ (currentPage+1) +"</a></li>");
            pagination.append("<li class=\"page-item\"><span class=\"text\">...</span></li>");
            pagination.append("<li class=\"page-item\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick='toPage(this,"+ totalPage +"); return false'>"+ totalPage +"</a></li>");
        }
    }
    pagination.append("<li class=\"page-item downPage\"><a class=\"page-link down\" href=\"javascript:void(0);\" onclick='down(); return false'>下页</a></li>");
    if (currentPage===1){
        $(".upPage").addClass("disabled");
    }
    if (currentPage===totalPage){
        $(".downPage").addClass("disabled");
    }
}

function toDetail(id) {
    window.location.href = "/index/detail/" + id
}