<?php

namespace app\api\controller\report;

use app\common\controller\Api;

use think\Controller;
use think\Request;

/**
 * APP隐藏数据上报
 *
 * @icon fa fa-circle-o
 */
class Apphidden extends Api
{
    
    /**
     * ReportApphidden模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('ReportApphidden');

    }

    public function save()
    {
        $input = $this->inputData;
        $data = [
            'code1'         => $input['code1'],
            'code2'         => $input['code2'],
            'dataType'      => $input['dataType'],
            'actionType'    => $input['actionType'],
            'time'          => time()
        ];
        $this->model->save($data);
    }
}
