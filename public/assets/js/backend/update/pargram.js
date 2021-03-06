define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'update/pargram/index',
                    add_url: 'update/pargram/add',
                    edit_url: 'update/pargram/edit',
                    del_url: 'update/pargram/del',
                    multi_url: 'update/pargram/multi',
                    table: 'update_pargram',
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
                        {field: 'vername', title: __('Vername')},
                        {field: 'isforce', title: __('Isforce')},
                        {field: 'link', title: __('Link')},
                        {field: 'ditch', title: __('Ditch')},
                        {field: 'debug', title: __('Debug')},
                        {field: 'brand', title: __('Brand')},
                        {field: 'status', title: __('Status'), formatter: Controller.api.formatter.status},
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
            },
            formatter: {
                status: function (value, row, index) {
                    if (value == '1'){
                        return '<span class="text-success"><i class="fa fa-circle"></i> 启用</span>';
                    }else{
                        return '<span class="text-grey"><i class="fa fa-circle"></i> 禁用</span>';
                    }
                }
            }
        }
    };
    return Controller;
});