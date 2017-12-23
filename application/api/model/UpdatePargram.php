<?php

namespace app\api\model;

use think\Model;

class UpdatePargram extends Model
{
    // 表名
    protected $name = 'update_pargram';

    public function checkVersion($vercode)
    {
        return $this->where('vercode', '>', $vercode)
            ->field('vercode,vername,description,isforce,link,file_md5')
            ->find();
    }
}
