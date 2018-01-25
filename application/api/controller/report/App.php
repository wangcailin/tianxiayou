<?php

namespace app\api\controller\report;

use app\common\controller\Api;

use think\Controller;
use think\Request;

/**
 * APP启动上报管理
 *
 * @icon fa fa-circle-o
 */
class App extends Api
{
    
    /**
     * ReportApp模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('ReportApp');

    }

    public function save()
    {
        $input = $this->inputData;
        $data = [
            'pkgName'       => $input['pkgName'],
            'signMd5'       => $input['signMd5'],
            'code1'         => $input['code1'],
            'code2'         => $input['code2'],
            'AndroidId'     => $input['AndroidId'],
            'IMEI'          => $input['IMEI'],
            'time'          => time()
        ];
        $this->model->save($data);
    }
}
