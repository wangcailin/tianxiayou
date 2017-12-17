<?php

namespace app\admin\controller;

use app\common\controller\Backend;

/**
 * 控制台
 *
 * @icon fa fa-dashboard
 * @remark 用于展示当前系统中的统计数据、统计报表及重要实时数据
 */
class Dashboard extends Backend
{

    /**
     * 查看
     */
    public function index()
    {
        // 总会员数
        $totaluser = model('User')->count();
        // 今日注册
        $todayusersignup = model('User')->where(['createtime' => ['>',strtotime(date('Y-m-d'))]])->count();
        // 今日登录
        $todayuserlogin = model('User')->where(['prevtime' => ['>',strtotime(date('Y-m-d'))]])->count();

        // 总订单数
        $totalorder = model('Order')->count();
        // 总金额
        $totalorderamount = model('Order')->sum('amount');
        // 总已支付金额
        $totalorderamountrue = model('Order')->where('status', 1)->sum('amount');
        // 今日订单
        $todayorder = model('Order')->where(['add_time' => ['>',strtotime(date('Y-m-d'))]])->count();
        // 未支付的订单
        $unsettleorder = model('Order')->where(['status' => ['<>',1]])->count();
        // 未支付的金额
        $unsettleorderamount = model('Order')->where(['status' => ['<>',1]])->sum('amount');


        $seventtime = \fast\Date::unixtime('day', -7);
        $paylist = $createlist = [];
        for ($i = 0; $i < 7; $i++)
        {
            $day = date("Y-m-d", $seventtime + ($i * 86400));
            $createlist[$day] = mt_rand(20, 200);
            $paylist[$day] = mt_rand(1, mt_rand(1, $createlist[$day]));
        }
        $hooks = config('addons.hooks');
        $uploadmode = isset($hooks['upload_config_init']) && $hooks['upload_config_init'] ? implode(',', $hooks['upload_config_init']) : 'local';
        $this->view->assign([
            'totaluser'        => $totaluser,
            'totalviews'       => $totalorderamountrue,
            'totalorder'       => $totalorder,
            'totalorderamount' => $totalorderamount,
            'todayuserlogin'   => $todayuserlogin,
            'todayusersignup'  => $todayusersignup,
            'todayorder'       => $todayorder,
            'unsettleorder'    => $unsettleorder,
            'sevendnu'         => '80%',
            'sevendau'         => $unsettleorderamount,
            'paylist'          => $paylist,
            'createlist'       => $createlist,
            'uploadmode'       => $uploadmode
        ]);

        return $this->view->fetch();
    }

}
