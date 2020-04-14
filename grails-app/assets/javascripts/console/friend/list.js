/**
 * Created by sakuri on 2019/8/13.
 */
;-function (window) {

    //内部核心属性
    const core = {
        handleSelect: function () {
            $('#table_checkbox_all').click(function () {
                const checkbox = $("input[type='checkbox']");
                if ($(this).is(':checked')) {
                    checkbox.prop("checked", true);
                } else {
                    checkbox.prop("checked", false);
                }
            });
            //每一次的小checkbox点击事件
            $(".ck").click(function () {
                //获取所有的小的checkbox
                const checkboxes = $(".ck");
                const checker = $('#table_checkbox_all');
                for (let i = 0; i < checkboxes.length; i++) {
                    if (!checkboxes[i].checked) {
                        checker.prop("checked", false);
                        return;
                    }
                }
                checker.prop("checked", true);
            })
        },
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
                    url: contextPath + 'friend/list',
                    type: "POST"
                },
                aoColumns: [//初始化要显示的列
                    {
                        "mDataProp": "id",
                        "sClass": "table-select",
                        "mRender": function (data, type, full) {
                            return '<td class="with-checkbox">' +
                                '<div class="checkbox checkbox-css">' +
                                '<input class="ck" type="checkbox" name="checkbox-select" value="' + data + '" id="table_checkbox_' + data + '" data-user="' + data + '" />' +
                                '<label for="table_checkbox_' + data + '">&nbsp;</label>' +
                                '</div>'
                        }
                    },
                    {
                        "mDataProp": "name",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "url",
                        "mRender": function (data, type, full) {
                            return data
                        }
                    },
                    {
                        "mDataProp": "status",
                        "mRender": function (data, type, full) {
                            if (data===0){
                                return "已审核"
                            }
                            return "待审核"
                        }
                    },
                    {
                        "mDataProp": "id_status",
                        "sClass": "center",
                        "mRender": function (data, type, full) {
                            const dataArr = data.split("_");
                            let html = '<div class="table-text">';
                            html += '<input type="hidden" value="' + dataArr[0] + '">';
                            html += '<a href="' + contextPath + 'friend/edit/' + dataArr[0] + '" class="btn btn-inverse btn-xs m-r-5 btn-enabled">编辑</a>';
                            if (dataArr[1]==='0'){
                                html += '<a href="" class="btn btn-inverse btn-xs m-r-5 btn-enabled" onclick="active(this)">取消激活</a>';
                            }
                            if (dataArr[1]==='1'){
                                html += '<button class="btn btn-inverse btn-xs m-r-5 btn-enabled" onclick="active(this)">激活</button>';
                            }
                            html += '</div>';
                            return html
                        }
                    }
                ],
                fnDrawCallback: function () {
                    $("th").attr("style", "display: table-cell;vertical-align: middle;");
                    $("td").attr("style", "display: table-cell;vertical-align: middle;");
                    core.handleSelect();
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

function active(elem) {
    const id = elem.parentNode.firstChild.value;
    let xmlHttp;
    if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    } else {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    const url = contextPath + 'friend/active?id=' + id;
    xmlHttp.open("GET", url, true);
    xmlHttp.send();
    //接收服务器返回的数据
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState === 4 && xmlHttp.status === 200) {
            const data = JSON.parse(xmlHttp.responseText);
            if (data.code === 0) {
                if (elem.innerText === "激活"){
                    elem.innerText = "取消激活"
                }else{
                    elem.innerText = "激活"
                }
            }
        }
    };
}
