/**
 * Created by sakuri on 2019/8/13.
 */
;-function (window) {

    //内部核心属性
    const core = {
        data: function () {

            //初始化数据
            getData()

            //点击标签数据

            //点击搜索数据

            // //当前页、是否点击了链接
            //             // $("#active").click(function () {
            //             //     getData()
            //             // })

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
    function getData() {
        $.get(
            "/blog/api/heartData",
            {
                //当前页数据
                currentPage: 1,
                //关键词搜索
                search: "请",
                //点击的数据
                tag: 9
            },
            function (result) {
                console.log(result)
            }, 'json'
        )
    }
}(window);
