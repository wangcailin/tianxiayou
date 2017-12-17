define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'order/index',
                    add_url: 'order/add',
                    edit_url: 'order/edit',
                    del_url: 'order/del',
                    multi_url: 'order/multi',
                    table: 'order',
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
                        {field: 'order_sn', title: __('Order_sn'), operate: false},
                        {field: 'username', title: __('Username'), operate: false},
                        {field: 'pay_type', title: __('Pay_type'), searchList: {'0': __('充值卡'), '1': __('微信'), '2': __('支付宝')}, formatter: Controller.api.formatter.paytype},
                        {field: 'amount', title: __('Amount')},
                        {field: 'code', title: __('Code'), operate: false},
                        {field: 'system', title: __('System'), searchList: {'0': __('Android'), '1': __('iOS')}, formatter: Controller.api.formatter.sys},
                        {field: 'add_time', title: __('Add_time'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"'},
                        {field: 'pay_time', title: __('Pay_time'), formatter: Table.api.formatter.datetime, operate: 'BETWEEN', type: 'datetime', addclass: 'datetimepicker', data: 'data-date-format="YYYY-MM-DD"'},
                        {field: 'status', title: __('Status'), searchList: {'0': __('待支付'), '1': __('支付成功'), '2': __('支付失败')}, formatter: Controller.api.formatter.status},
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
                    }else if(value == 1){
                        return '<span class="label label-info">iOS</span>';
                    }
                },
                paytype: function (value, row, index) {
                    if (value == 0){
                        return '充值卡';
                    }else if (value == 1){
                        return '微信';
                    }else if (value == 2){
                        return '支付宝';
                    }
                },
                status: function (value, row, index) {
                    if (value == 0){
                        return '待支付';
                    }else if (value == 1){
                        return '支付成功';
                    }else if (value == 2){
                        return '支付失败';
                    }
                }
            }
        }
    };
    return Controller;
});