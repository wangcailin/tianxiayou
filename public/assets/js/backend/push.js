define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'push/index',
                    add_url: 'push/add',
                    edit_url: 'push/edit',
                    del_url: 'push/del',
                    multi_url: 'push/multi',
                    table: 'push',
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
                        {field: 'title', title: __('Title')},
                        {field: 'content', title: __('Content')},
                        {field: 'time', title: __('Time'), formatter: Table.api.formatter.datetime},
                        {field: 'status', title: __('Status'), formatter: Controller.api.formatter.status},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ],
                commonSearch: false
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
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            },
            formatter: {
                status: function (value, row, index) {
                    if (value == 0){
                        return '<span class="label label-danger">暂不推送</span>';
                    }else if (value == 1){
                        return '<span class="label label-success">立即推送</span>';
                    }
                }
            }
        }
    };
    return Controller;
});