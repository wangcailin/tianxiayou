<?php

namespace app\api\controller;

use app\common\controller\Api;

/**
 * 基础信息获取管理
 *
 * @icon fa fa-circle-o
 */
class User extends Api
{
    
    /**
     * Information模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Information');
    }

    /**
     * 注册
     */
    public function registered()
    {
        $input = $this->inputData;
        $header = $this->inputHeader;
    }

    /**
     * 登录
     */
    public function login()
    {
        $input = $this->inputData;
    }

    /**
     * 退出登录
     */
    public function loginOut()
    {
        $input = $this->inputData;
    }

    /**
     * 忘记密码
     */
    public function forgotPassword()
    {
        $input = $this->inputData;
    }

    /**
     * 修改密码
     */
    public function editPassword()
    {
        $input = $this->inputData;
    }

    /**
     * 个人信息
     */
    public function userInfo()
    {
        $input = $this->inputData;
    }

    /**
     * 修改个人信息
     */
    public function userInfoEdit()
    {
        $input = $this->inputData;
    }

}
