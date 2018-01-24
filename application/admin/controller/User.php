<?php

namespace app\admin\controller;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 用户管理
 *
 * @icon user
 */
class User extends Backend
{
    
    /**
     * User模型对象
     */
    protected $model = null;
    protected $searchFields = 'username,mobile';


    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('User');

    }

    /**
     * 详情
     */
    public function user_login($ids = null)
    {
        $row = model('UserLogin')->field('time')->where('uid', $ids)->order('time', 'DESC')->select();
        $this->view->assign("row", $row);
        return $this->view->fetch();
    }
}
