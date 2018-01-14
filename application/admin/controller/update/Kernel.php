<?php

namespace app\admin\controller\update;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 内核更新管理
 *
 * @icon fa fa-circle-o
 */
class Kernel extends Backend
{
    
    /**
     * UpdateKernel模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('UpdateKernel');
        $this->assign('cpu_xList', $this->model->cpu_xList);
        $this->assign('ditchList', $this->model->ditchList);
        $this->assign('cpu_platformList', $this->model->cpu_platformList);
    }
}
