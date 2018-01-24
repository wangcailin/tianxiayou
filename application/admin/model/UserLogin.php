<?php

namespace app\common\model;

use think\Model;

class UserLogin extends Model
{
    // 表名
    protected $name = 'user_login';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'time';
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [];


    protected function setTimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }

    protected function getTimeAttr($value)
    {
        return date('Y-m-d H:i:s', $value);
    }

    /**
     * 记录用户登录记录
     * @param $uid
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function addUserLogin($uid)
    {
        $count = $this->field('time')->where('uid', $uid)->count();
        if ($count >= 10){
            $res = $this->field('time')->where('uid', $uid)->order('time', 'ASC')->find();
            $res->delete();
        }
        $this->save(['time' => time()]);
    }
}
