/**
 * Created by daniel on 2019/8/13.
 */
;-function (window) {

    //内部核心属性
    const core = {
        //增加浏览量
        addRead: function () {

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
        App.init();
        let editormdView;
        $.get(
            "/index/getHtml",
            {id:$("#heartId").val()},
            function (result) {
                $(".post-title").text(result.data.title);
                editormdView = editormd.markdownToHTML("editormd-view", {
                    markdown        : result.data.md ,
                    htmlDecode      : "style,script,iframe",
                    tocm            : true,
                    emoji           : true,
                    taskList        : true,
                    tex             : true,
                    flowChart       : true,
                    sequenceDiagram : true
                });
            },'json'
        )
    }

    function init_event() {//初始化页面事件
        core.addRead();
    }
    //对外公开的方法
    const page = {};
    init();
    window.p = page;
}(window);