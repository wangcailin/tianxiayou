<?php

namespace app\api\controller\update;

use app\common\controller\Api;

/**
 * 内核更新管理
 *
 * @icon fa fa-circle-o
 */
class Kernel extends Api
{
    
    /**
     * UpdateKernel模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('UpdateKernel');
    }

    public function getList()
    {
        $vercode = input('vercode');

        return api_json('0', 'ok', $this->model->checkVersion($vercode));
    }
}
