<?php

namespace app\admin\model;

use think\Model;

class Information extends Model
{
    // 表名
    protected $name = 'information';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;

    // 信息类型
    protected $typeList = [0 => '广告'];
    // 所属页面
    protected $pageTypeList = [0 => 'splash页', 1 => '首页', 2 => '切换页'];
    // 所属页面
    protected $actionTypeList = [0 => '网页打开', 1 => '打开应用', 2 => '播放视频'];
    
    // 追加属性
    protected $append = [];

    public function getPageTypeList()
    {
        return $this->pageTypeList;
    }

    public function getTypeList()
    {
        return $this->typeList;
    }

    public function getActionTypeList()
    {
        return $this->actionTypeList;
    }
}
