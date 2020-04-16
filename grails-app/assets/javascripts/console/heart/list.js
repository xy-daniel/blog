/**
 * Created by daniel on 2020/04/16.
 */
;-function (window) {

    //内部核心属性
    const core = {
        render_table: function () {
            $('#data-table').DataTable({
                language: {
                    'sProcessing': '处理中...',
                    'sLengthMenu': '显示 _MENU_ 项结果',
                    'sZeroRecords': '没有匹配结果',
                    'sInfo': '显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项',
                    'sInfoEmpty': '显示第 0 至 0 项结果，共 0 项',
                    'sInfoFiltered': '(由 _MAX_ 项结果过滤)',
                    'sInfoPostFix': '',
                    'sSearch': '搜索：',
                    'sUrl': '',
                    'sEmptyTable': '表中数据为空',
                    'sLoadingRecords': '载入中...',
                    'sInfoThousands': ',',
                    'oPaginate': {
                        'sFirst': '首页',
                        'sPrevious': '上页',
                        'sNext': '下页',
                        'sLast': '末页'
                    },
                    'oAria': {
                        'sSortAscending': ': 以升序排列此列',
                        'sSortDescending': ': 以降序排列此列'
                    }
                },
                serverSide: true,
                ordering: false,
                bProcessing: true,
                ajax: {
                    url: contextPath + 'heart/list',
                    type: "POST"
                },
                aoColumns: [//初始化要显示的列
                    {
                        "mDataProp": "wzm",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "gjc",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "poll",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "read",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "comment",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "id_isTop",
                        "sClass": "center",
                        "mRender": function (data, type, full) {
                            //这儿我需要设置置顶
                            //设置详情
                            const dataArr = data.split("_");
                            let html = '<div class="table-text">';
                            html += '<input type="hidden" value="' + dataArr[0] + '">';
                            html += '<a href="' + contextPath + 'heart/edit/' + dataArr[0] + '" class="btn btn-inverse btn-xs m-r-5 btn-enabled">详情</a>';
                            if (dataArr[1]==="false"){
                                html += '<a href="javascript:void(0)" class="btn btn-inverse btn-xs m-r-5 btn-enabled" onclick="isTop(this)">置顶</a>';
                            }
                            html += '</div>';
                            return html
                        }
                    }
                ],
                fnDrawCallback: function () {
                    $("th").attr("style", "display: table-cell;vertical-align: middle;");
                    $("td").attr("style", "display: table-cell;vertical-align: middle;");
                }
            });
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
        core.render_table();
    }
    //对外公开的方法
    const page = {};
    init();
    window.p = page;
}(window);

function isTop(elem) {
    const id = elem.parentNode.firstChild.value;
    let xmlHttp;
    if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    } else {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    const url = contextPath + 'heart/top?id=' + id;
    xmlHttp.open("GET", url, true);
    xmlHttp.send();
    //接收服务器返回的数据
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState === 4 && xmlHttp.status === 200) {
            const data = JSON.parse(xmlHttp.responseText);
            if (data.code === 0) {
                window.location.reload()
            }
        }
    };
}
