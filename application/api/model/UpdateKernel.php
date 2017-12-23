<?php

namespace app\api\model;

use think\Model;

class UpdateKernel extends Model
{
    // 表名
    protected $name = 'update_kernel';

    public function checkVersion($vercode)
    {
        return $this->where('vercode', '>', $vercode)
            ->field('link,key,file_md5,vercode')
            ->find();
    }
}
