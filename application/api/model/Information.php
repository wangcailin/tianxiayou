<?php

namespace app\api\model;

use think\Model;

class Information extends Model
{
    // 表名
    protected $name = 'information';

    public function checkFormatData($version)
    {
        $data = [];
        $data[0]['page'] = 0;
        $data[0]['data'] = $this->where('version', $version)->where('page', 0)->field('id,title,images,description,url,actiontype')->select();
        $data[1]['page'] = 1;
        $data[1]['data'] = $this->where('version', $version)->where('page', 1)->field('id,title,images,description,url,actiontype')->select();
        $data[2]['page'] = 2;
        $data[2]['data'] = $this->where('version', $version)->where('page', 2)->field('id,title,images,description,url,actiontype')->select();
        return $data;
    }
}
