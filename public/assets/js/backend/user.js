define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'user/index',
                    add_url: 'user/add',
                    edit_url: 'user/edit',
                    del_url: 'user/del',
                    multi_url: 'user/multi',
                    table: 'user',
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
                        {field: 'username', title: __('Username'), operate: false},
                        {field: 'mobile', title: __('Mobile'), operate: false},
                        {field: 'system', title: __('System'), searchList: {'0': __('Android'), '1': __('iOS')}, formatter: Table.api.formatter.sys},
                        {field: 'vip', title: __('Vip'), searchList: {'0': __('否'), '1': __('是')}, formatter: Table.api.formatter.vip},
                        {field: 'vip_expire_time', title: __('Vip_expire_time'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"'},
                        {field: 'prevtime', title: __('Prevtime'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"'},
                        {field: 'createtime', title: __('Createtime'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"'},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status, searchList: {'normal': __('Normal'), 'hidden': __('Hidden')}},
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
                sys: function (value, row, index) {
                    if (value == 0){
                        return '<span class="label label-success">Android</span>';
                    }else{
                        return '<span class="label label-danger">iOS</span>';
                    }
                },
                vip: function (value, row, index) {
                    if (value == 0){
                        return '<span class="label label-success">否</span>';
                    }else{
                        return '<span class="label label-danger">是</span>';
                    }
                }
            }
        }
    };
    return Controller;
});