<?php

namespace app\api\controller\update;

use app\common\controller\Api;

/**
 * 程序更新管理
 *
 * @icon fa fa-circle-o
 */
class Pargram extends Api
{
    
    /**
     * UpdatePargram模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('UpdatePargram');

    }

    public function getList()
    {
        $input = $this->inputData;
        $vercode = $input['vercode'];
        return api_json('0', 'ok', $this->model->checkVersion($vercode));
    }
}
