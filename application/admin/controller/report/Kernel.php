<?php

namespace app\admin\controller\report;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 内核启动失败上报管理
 *
 * @icon fa fa-circle-o
 */
class Kernel extends Backend
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
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个方法
     * 因此在当前控制器中可不用编写增删改查的代码,如果需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    

}
