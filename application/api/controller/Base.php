<?php

namespace app\api\controller;

use app\common\controller\Api;

/**
 * 基础信息获取管理
 *
 * @icon fa fa-circle-o
 */
class Base extends Api
{
    
    /**
     * Information模型对象
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Information');
        $key = '@Y3YWe8Une@YfZ1*';
        $iv = 'fEaTi*sC0%o8KAQw';

        $type = input('type');  // 命令码
        $body = input('body');  // 数据包
        $t1 = input('t1');  // 时间戳
        $t2 = input('t2');  // CRC校验值

        //解密
        $encryptedData = base64_decode($body);
        $decrypted = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $encryptedData, MCRYPT_MODE_CBC, $iv);

        $decrypted = $this->pkcs5_unpad($decrypted);
        $decrypted = json_decode($decrypted, true);

        var_dump(crc32($decrypted['data']));
        var_dump($t2);
        die;
    }

    public function pkcs5_unpad($text)
    {
        $pad = ord($text{strlen($text)-1});
        if ($pad > strlen($text)) return false;
        if (strspn($text, chr($pad), strlen($text) - $pad) != $pad) return false;
        return substr($text, 0, -1 * $pad);
    }

    public function index()
    {

    }
}
