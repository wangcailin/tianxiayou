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
                        {field: 'isforce', title: __('Isforce'), formatter: Controller.api.formatter.isforce},
                        {field: 'link', title: __('Link')},
                        {field: 'file_md5', title: __('File_md5')},
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
                isforce: function (value, row, index) {
                    if (value == '0'){
                        return '否'
                    }else{
                        return '是'
                    }
                },
            }
        }
    };
    return Controller;
});