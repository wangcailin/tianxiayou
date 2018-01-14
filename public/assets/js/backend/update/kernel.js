define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'update/kernel/index',
                    add_url: 'update/kernel/add',
                    edit_url: 'update/kernel/edit',
                    del_url: 'update/kernel/del',
                    multi_url: 'update/kernel/multi',
                    table: 'update_kernel',
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
                        {field: 'vercode', title: __('Vercode')},
                        {field: 'ditch', title: __('Ditch')},
                        {field: 'debug', title: __('Debug')},
                        {field: 'brand', title: __('Brand')},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'start_time', title: __('Start_time'), formatter: Table.api.formatter.datetime},
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
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});