define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'report/app/index',
                    add_url: 'report/app/add',
                    edit_url: 'report/app/edit',
                    del_url: 'report/app/del',
                    multi_url: 'report/app/multi',
                    table: 'report_app',
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
                        {field: 'pkgName', title: __('Pkgname')},
                        {field: 'signMd5', title: __('Signmd5')},
                        {field: 'code1', title: __('Code1')},
                        {field: 'code2', title: __('Code2')},
                        {field: 'AndroidId', title: __('Androidid')},
                        {field: 'IMEI', title: __('Imei')},
                        {field: 'time', title: __('Time'), formatter: Table.api.formatter.datetime},
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