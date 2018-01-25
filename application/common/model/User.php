<?php

namespace app\common\model;

use think\Model;

class User extends Model
{
    // 表名
    protected $name = 'user';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    
    // 追加属性
    protected $append = [];


    protected function setVipExpireTimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }

    protected function setPrevtimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }

    /**
     * 验证用户token是否正确
     * @param $username
     * @param $token
     * @return bool
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function checkToken($username, $token)
    {
        $where['username'] = $username;
        $where['token']    = $token;
        if($res = $this->where($where)->find()){
            return $res;
        }
        return false;
    }

    /**
     * 更新token
     * @param $token
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function clearToken($username)
    {
        $res = $this->where('username', $username)->find();
        if ($res){
            $res->token = create_string('15');
            $res->save();
        }
    }


}
