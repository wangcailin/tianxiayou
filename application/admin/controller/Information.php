<?php

namespace app\admin\controller;

use app\common\controller\Backend;

use think\Controller;
use think\Request;

/**
 * 基础信息获取管理
 *
 * @icon fa fa-circle-o
 */
class Information extends Backend
{
    
    /**
     * Information模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Information');

        $this->assign('typeList', $this->model->getTypeList());
        $this->assign('pageTypeList', $this->model->getPageTypeList());
        $this->assign('actionTypeList', $this->model->getActionTypeList());
    }

}
