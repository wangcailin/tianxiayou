<?php

namespace app\api\controller;

use app\common\controller\Api;

/**
 * 基础信息获取管理
 *
 * @icon fa fa-circle-o
 */
class Information extends Api
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


    public function getList()
    {
        $version = input('version');
        $data    = [];

        $data['ad'] = $this->model->checkFormatData($version);

        return api_json('0', 'ok', $data);
    }

}
