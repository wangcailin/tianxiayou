<?php

namespace app\common\controller;

use think\Controller;

class Api extends Controller
{

    public $key = '@Y3YWe8Une@YfZ1*';
    public $iv = 'fEaTi*sC0%o8KAQw';
    public $type = '';  // 命令码
    public $body = '';  // 数据包
    public $t1 = '';  // 时间戳
    public $t2 = '';  // CRC校验值
    public $input = [];  // 请求信息
    public $inputHeader = [];  // 请求头信息
    public $inputData = [];  // 请求内容

    public function _initialize()
    {
        parent::_initialize();

        $this->type = input('type');
        $this->body = input('body');
        $this->t1 = input('t1');
        $this->t2 = input('t2');

        //解密
        $encryptedData = base64_decode($this->body);
        $decrypted = openssl_decrypt($encryptedData, 'AES-128-CBC', $this->key, true, $this->iv);

        $decrypted = $this->input = json_decode($decrypted, true);

        $this->inputHeader = $decrypted['header'];
        $this->inputData = $decrypted['data'];
        $this->inputData = json_decode($this->inputData, true);

        if (crc32($this->inputData) != $this->t2){
            return api_json('1', '数据错误', null);
            die;
        }
    }

//    public function pkcs5_unpad($text)
//    {
//        $pad = ord($text{strlen($text)-1});
//        if ($pad > strlen($text)) return false;
//        if (strspn($text, chr($pad), strlen($text) - $pad) != $pad) return false;
//        return substr($text, 0, -1 * $pad);
//    }

}
