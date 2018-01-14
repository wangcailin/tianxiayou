<?php

namespace app\admin\model;

use think\Model;

class UpdateKernel extends Model
{
    // 表名
    protected $name = 'update_kernel';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    
    // 追加属性
    protected $append = [];

    public $ditchList = [
        0 => '官方',
        1 => '百度',
        2 => '测试',
        3 => '小米',
        4 => '奇虎',
        5 => '应用宝',
        6 => 'OPPO',
        7 => 'partner_001',
        8 => 'partner_002'
    ];
    public $cpu_xList = [
        0 => '32位',
        1 => '64位'
    ];
    public $cpu_platformList = [
        0 => 'ARM',
        1 => 'X86'
    ];

    protected function setStartTimeAttr($value)
    {
        return $value && !is_numeric($value) ? strtotime($value) : $value;
    }


}
