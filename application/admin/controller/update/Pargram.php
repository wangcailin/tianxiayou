<?php

namespace app\admin\controller\update;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 程序更新管理
 *
 * @icon fa fa-circle-o
 */
class Pargram extends Backend
{
    
    /**
     * UpdatePargram模型对象
     */
    protected $model = null;
    protected $relationModel = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('UpdatePargram');
        $this->relationModel = model('UpdateKernel');
        $this->assign('cpu_xList', $this->relationModel->cpu_xList);
        $this->assign('ditchList', $this->relationModel->ditchList);
        $this->assign('cpu_platformList', $this->relationModel->cpu_platformList);

    }
}
