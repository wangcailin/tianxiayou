define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'information/index',
                    add_url: 'information/add',
                    edit_url: 'information/edit',
                    del_url: 'information/del',
                    multi_url: 'information/multi',
                    table: 'information',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id'), operate: false},
                        {field: 'type', title: __('Type'), searchList: {'0': __('广告')}, formatter: Controller.api.formatter.type},
                        {field: 'page', title: __('Page'), searchList: {'0': __('splash页'), '1': __('首页'), '2': __('切换页')}, formatter: Controller.api.formatter.page},
                        {field: 'images', title: __('Images'), operate: false, formatter: Table.api.formatter.images},
                        {field: 'url', title: __('Url'), operate: false, formatter: Table.api.formatter.url},
                        {field: 'actiontype', title: __('Actiontype'), searchList: {'0': __('网页打开'), '1': __('打开应用'), '2': __('播放视频')}, formatter: Controller.api.formatter.actiontype},
                        {field: 'version', title: __('Version'), operate: false},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            formatter: {
                type: function (value, row, index) {
                    if (value == 0){
                        return '<span class="label label-success">广告</span>';
                    }
                },
                page: function (value, row, index) {
                    if (value == 0){
                        return 'splash页';
                    }else if(value == 1){
                        return '首页';
                    }else {
                        return '切换页';
                    }
                },
                actiontype: function (value, row, index) {
                    if (value == 0){
                        return '网页打开';
                    }else if(value == 1){
                        return '打开应用';
                    }else {
                        return '播放视频';
                    }
                }
            },
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});