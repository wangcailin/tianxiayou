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
                        {field: 'id', title: __('Id')},
                        {field: 'type', title: __('Type'), formatter: Controller.api.formatter.type},
                        {field: 'page', title: __('Page'), formatter: Controller.api.formatter.page},
                        {field: 'images', title: __('Images'), formatter: Table.api.formatter.images},
                        {field: 'url', title: __('Url'), formatter: Table.api.formatter.url},
                        {field: 'actiontype', title: __('Actiontype')},
                        {field: 'version', title: __('Version')},
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
                    console.info(value)
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
                }
            },
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});