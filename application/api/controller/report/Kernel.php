<?php

namespace app\api\controller\report;

use app\common\controller\Api;

use think\Controller;
use think\Request;

/**
 * 内核启动失败上报管理
 *
 * @icon fa fa-circle-o
 */
class Kernel extends Api
{
    
    /**
     * ReportKernel模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('ReportKernel');

    }

    public function save()
    {
        $input = $this->inputData;
        $data = [
            'code1'         => $input['code1'],
            'code2'         => $input['code2'],
            'reportCode'    => $input['reportCode'],
            'time'          => time()
        ];
        $this->model->save($data);
    }
}
