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
        $this->model = model('User');
    }

    /**
     * 注册
     */
    public function registered()
    {
        $input = $this->inputData;
        if (empty($input['mobile'])){
            $input['mobile'] = null;
        }
        $header = $this->inputHeader;
        $data = [
            'username'      => $input['username'],
            'password'      => $input['password'],
            'mobile'        => $input['mobile'],
            'system'        => $header['systype'],
        ];

        if ($this->model->save($data)){
            return api_json('0', '注册成功', null);
        }
        return api_json('1', '注册失败', null);
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
        if ($this->model->checkToken($input['username'], $input['token'])){
            $this->model->clearToken($input['username']);
            return api_json('0', '退出成功', null);
        }
        return api_json('1', '退出失败', null);
    }

    /**
     * 忘记密码
     */
    public function forgotPassword()
    {
        $input = $this->inputData;
        $mobile = $input['mobile'];
        if ($mobile){
            $res = $this->model->field('username')->where('mobile', $mobile)->select();
            if ($res){
                return api_json('0', 'ok', $res);
            }
        }
        return api_json('1', '手机号不存在', null);
    }

    /**
     * 修改密码
     */
    public function editPassword()
    {
        $input = $this->inputData;
        $res = $this->model->where(['username'=>$input['username'],'token'=>$input['token']])->find();
        if ($res){
            $res->password = $input['password'];
            if ($res->save()){
                return api_json('0', '修改成功', null);
            }
        }
        return api_json('1', '修改失败', null);
    }

    /**
     * 个人信息
     */
    public function userInfo()
    {
        $input = $this->inputData;
        if ($res = $this->model->checkToken($input['username'], $input['token'])){
            $info = model('UserInfo')->where(['uid'=>$res->id, 'vip'=>'1'])->find();
            if ($info){
                $res = array_merge($res,$info);
            }
            return api_json('0', 'ok', $res);
        }
        return api_json('1', '验证失败', null);
    }

    /**
     * 修改个人信息
     */
    public function userInfoEdit()
    {
        $input = $this->inputData;
    }

}
