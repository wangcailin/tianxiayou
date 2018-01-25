<?php

namespace app\api\controller\report;

use app\common\controller\Api;

use think\Controller;
use think\Request;

/**
 * 指定应用程序上报管理
 *
 * @icon fa fa-circle-o
 */
class Program extends Api
{
    
    /**
     * ReportProgram模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('ReportProgram');

    }

    public function save()
    {
        $input = $this->inputData;
        $data = [
            'code1'         => $input['code1'],
            'code2'         => $input['code2'],
            'dataType'      => $input['dataType'],
            'packageName'   => $input['packageName'],
            'appName'       => $input['appName'],
            'time'          => time()
        ];
        $this->model->save($data);
    }
}
