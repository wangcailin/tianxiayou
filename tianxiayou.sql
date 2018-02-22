-- MySQL dump 10.13  Distrib 5.6.39, for osx10.13 (x86_64)
--
-- Host: 47.94.193.179    Database: tianxiayou
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `txy_admin`
--

DROP TABLE IF EXISTS `txy_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_admin`
--

LOCK TABLES `txy_admin` WRITE;
/*!40000 ALTER TABLE `txy_admin` DISABLE KEYS */;
INSERT INTO `txy_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',1,1517995074,1492186163,1518072737,'e04ab043-cfc9-4368-bae8-645377f948d2','normal');
/*!40000 ALTER TABLE `txy_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_admin_log`
--

DROP TABLE IF EXISTS `txy_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_admin_log`
--

LOCK TABLES `txy_admin_log` WRITE;
/*!40000 ALTER TABLE `txy_admin_log` DISABLE KEYS */;
INSERT INTO `txy_admin_log` VALUES (1,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"eb1e802540aac3b75452ddbc26f43ac6\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512003569),(2,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"1e92f8b1c8b8cde0f51c05ae8279c91b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512093809),(3,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"b3923518c1c3a072fd1c3c4f36139182\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512181122),(4,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"6e5c6370d89dfea42a1950ddfa73b3b8\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512545485),(5,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512546076),(6,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"939c665d16ec6ffa1ebad8420158efbf\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240713),(7,1,'admin','/admin/auth/rule/del/ids/3','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240736),(8,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240832),(9,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240839),(10,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240840),(11,1,'admin','/admin/auth/rule/edit/ids/71?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"update\",\"title\":\"Update\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"71\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513241097),(12,1,'admin','/admin/auth/rule/edit/ids/99?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"user\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"99\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513241524),(13,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"d36a88989dcfd29512462b08b8ee13b0\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513300981),(14,1,'admin','/admin/user/add?dialog=1','用户管理 添加','{\"dialog\":\"1\",\"row\":{\"username\":\"wangcailin\",\"password\":\"aaa\",\"salt\":\"a\",\"mobile\":\"1111111111\",\"system\":\"0\",\"prevtime\":\"2017-12-15 10:00:11\",\"jointime\":\"2017-12-15 10:00:11\",\"token\":\"12312dsffsdfadfasdfa\",\"status\":\"a\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513303240),(15,1,'admin','/admin/user/multi/ids/1','用户管理 批量更新','{\"ids\":\"1\",\"params\":\"status=normal\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513304085),(16,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"categorytype\":{\"field\":{\"default\":\"default\",\"page\":\"page\",\"article\":\"article\",\"test\":\"test\"},\"value\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}},\"configgroup\":{\"field\":{\"basic\":\"basic\",\"email\":\"email\",\"dictionary\":\"dictionary\",\"example\":\"example\"},\"value\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"example\":\"Example\"}}}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513317234),(17,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"categorytype\":{\"field\":{\"default\":\"default\",\"page\":\"page\",\"article\":\"article\",\"test\":\"test\"},\"value\":{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}},\"configgroup\":{\"field\":{\"basic\":\"basic\",\"email\":\"email\",\"dictionary\":\"dictionary\",\"example\":\"others\"},\"value\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"example\":\"Others\"}}}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513317383),(18,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513317620),(19,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"configgroup\":{\"field\":{\"basic\":\"basic\",\"email\":\"email\",\"dictionary\":\"dictionary\",\"others\":\"others\"},\"value\":{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"others\":\"Others\"}}}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513317632),(20,1,'admin','/admin/index/login?url=%2Fadmin%2Fgeneral%2Fconfig%3Fref%3Daddtabs','登录','{\"url\":\"\\/admin\\/general\\/config?ref=addtabs\",\"__token__\":\"63908ab8529de40e22a1109751239f1d\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513327690),(21,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"alidayu_key\":\"LTAIsx04CiNWqwMi\",\"alidayu_key_secret\":\"cUe0dnIQ8sWffxRSx29lM7P5xuuuXg\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513327943),(22,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"alidayu_key\":\"LTAIsx04CiNWqwMi\",\"alidayu_key_secret\":\"cUe0dnIQ8sWffxRSx29lM7P5xuuuXg\",\"ali_push_key_id\":\"3292109\",\"ali_push_key_secret\":\"3b2d0047ed00477e712de6df37dd1c55\",\"ali_push_key\":\"23688665\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513330418),(23,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"efe3de41e1eaedcec41742752c727d1d\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513397461),(24,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"4f7444d473bb5b186ea274e4ed006f26\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513405716),(25,1,'admin','/admin/information/add?dialog=1','基础信息获取管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"0\",\"page\":\"0\",\"images\":\"\",\"description\":\"\\u4fe1\\u606f\\u7b80\\u4ecb\",\"url\":\"http:\\/\\/www.baidu.com\",\"actiontype\":\"0\",\"version\":\"1.0.0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513406879),(26,1,'admin','/admin/update/pargram/add?dialog=1','更新管理 程序更新管理 添加','{\"dialog\":\"1\",\"row\":{\"vercode\":\"1.0.0\",\"vername\":\"\\u7248\\u672c1\",\"description\":\"\\u66f4\\u65b0\\u63cf\\u8ff0\\u6d4b\\u8bd5\",\"isforce\":\"1\",\"link\":\"\",\"file_md5\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513407253),(27,1,'admin','/admin/update/pargram/edit/ids/1?dialog=1','更新管理 程序更新管理 编辑','{\"dialog\":\"1\",\"row\":{\"vercode\":\"1.0.0\",\"vername\":\"\\u7248\\u672c1\",\"description\":\"\\u66f4\\u65b0\\u63cf\\u8ff0\\u6d4b\\u8bd5\",\"isforce\":\"0\",\"link\":\"\",\"file_md5\":\"\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513407258),(28,1,'admin','/admin/information/edit/ids/1?dialog=1','基础信息获取管理 编辑','{\"dialog\":\"1\",\"row\":{\"type\":\"0\",\"page\":\"0\",\"images\":\"\\/assets\\/img\\/qrcode.png\",\"description\":\"\\u4fe1\\u606f\\u7b80\\u4ecb\",\"url\":\"http:\\/\\/www.baidu.com\",\"actiontype\":\"0\",\"version\":\"1.0.0\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513513239),(29,1,'admin','/admin/push/add?dialog=1','信息推送管理 添加','{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"content\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"status\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513513533),(30,1,'admin','/admin/push/edit/ids/1?dialog=1','信息推送管理 编辑','{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"content\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"status\":\"1\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513514034),(31,1,'admin','/admin/push/edit/ids/1?dialog=1','信息推送管理 编辑','{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"content\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"status\":\"0\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513514100),(32,1,'admin','/admin/push/edit/ids/1?dialog=1','信息推送管理 编辑','{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"content\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"status\":\"1\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513514104),(33,1,'admin','/admin/push/edit/ids/1?dialog=1','信息推送管理 编辑','{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"content\":\"\\u6d4b\\u8bd5\\u5185\\u5bb9\",\"status\":\"0\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513515992),(34,1,'admin','/admin/user/multi/ids/1','用户管理 批量更新','{\"ids\":\"1\",\"params\":\"status=hidden\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513516153),(35,1,'admin','/admin/user/multi/ids/1','用户管理 批量更新','{\"ids\":\"1\",\"params\":\"status=normal\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513516157),(36,1,'admin','/admin/information/add?dialog=1','基础信息获取管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"0\",\"page\":\"0\",\"images\":\"\\/assets\\/img\\/qrcode.png\",\"description\":\"\\u5e7f\\u544a\\u7b80\\u4ecb\",\"url\":\"http:\\/\\/www.baidu.com\",\"actiontype\":\"0\",\"version\":\"1.0.0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513517070),(37,1,'admin','/admin/information/del/ids/2','基础信息获取管理 删除','{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513517079),(38,1,'admin','/admin/information/edit/ids/1?dialog=1','基础信息获取管理 编辑','{\"dialog\":\"1\",\"row\":{\"type\":\"0\",\"page\":\"0\",\"images\":\"\\/assets\\/img\\/qrcode.png\",\"description\":\"\\u4fe1\\u606f\\u7b80\\u4ecb\",\"url\":\"http:\\/\\/www.baidu.com\",\"actiontype\":\"1\",\"version\":\"1.0.0\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513517200),(39,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"9b6885ddf28d7e7d93f14fca2c954ef9\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513823512),(40,1,'admin','/admin/auth/rule/del/ids/4','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513824724),(41,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"5df8ae21ffee2e0d41fc39efed187ce4\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513857891),(42,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"bc3d1388d21aca7116efb908af97d440\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513953825),(43,1,'admin','/admin/information/add/ids/1?dialog=1','基础信息获取管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"0\",\"page\":\"1\",\"images\":\"\\/assets\\/img\\/qrcode.png\",\"description\":\"\\u4fe1\\u606f\\u7b80\\u4ecb\",\"url\":\"http:\\/\\/www.baidu.com\",\"actiontype\":\"1\",\"version\":\"1.0.0\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513954169),(44,1,'admin','/admin/update/kernel/add?dialog=1','更新管理 内核更新管理 添加','{\"dialog\":\"1\",\"row\":{\"link\":\"http:\\/\\/zcb.wx.tindsoft.com\\/\",\"key\":\"field(\'id,title,images,description,url,actiontype\')\",\"file_md5\":\"field(\'id,title,images,description,url,actiontype\')\",\"vercode\":\"1.0.0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513996544),(45,1,'admin','/admin/update/pargram/edit/ids/1?dialog=1','更新管理 程序更新管理 编辑','{\"dialog\":\"1\",\"row\":{\"vercode\":\"1.0.0\",\"vername\":\"\\u7248\\u672c1\",\"description\":\"\\u66f4\\u65b0\\u63cf\\u8ff0\\u6d4b\\u8bd5\",\"isforce\":\"0\",\"link\":\"http:\\/\\/zcb.wx.tindsoft.com\\/\",\"file_md5\":\"field(\'id,title,images,description,url,actiontype\')\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513996558),(46,1,'admin','/admin/update/kernel/edit/ids/1?dialog=1','更新管理 内核更新管理 编辑','{\"dialog\":\"1\",\"row\":{\"link\":\"http:\\/\\/zcb.wx.tindsoft.com\\/\",\"key\":\"field(\'id,title,images,description,url,actiontype\')\",\"file_md5\":\"field(\'id,title,images,description,url,actiontype\')\",\"vercode\":\"1.0.1\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514001655),(47,1,'admin','/admin/update/kernel/edit/ids/1?dialog=1','更新管理 内核更新管理 编辑','{\"dialog\":\"1\",\"row\":{\"link\":\"http:\\/\\/zcb.wx.tindsoft.com\\/\",\"key\":\"field(\'id,title,images,description,url,actiontype\')\",\"file_md5\":\"field(\'id,title,images,description,url,actiontype\')\",\"vercode\":\"1\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514001690),(48,1,'admin','/admin/update/kernel/edit/ids/1?dialog=1','更新管理 内核更新管理 编辑','{\"dialog\":\"1\",\"row\":{\"link\":\"http:\\/\\/zcb.wx.tindsoft.com\\/\",\"key\":\"field(\'id,title,images,description,url,actiontype\')\",\"file_md5\":\"field(\'id,title,images,description,url,actiontype\')\",\"vercode\":\"2\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514001701),(49,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"wx_app_id\":\"\",\"wx_mch_id\":\"\",\"wx_md5_key\":\"\",\"wx_app_cert_pem\":\"\",\"wx_app_key_pem\":\" \"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514036652),(50,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"wx_app_id\":\"\",\"wx_mch_id\":\"\",\"wx_md5_key\":\"\",\"wx_app_cert_pem\":\"\",\"wx_app_key_pem\":\" \",\"ali_app_id\":\" \",\"ali_public_key\":\" \"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514036692),(51,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"name\":\"\\u5929\\u4e0b\\u6e38\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"field\":{\"backend\":\"backend\",\"frontend\":\"frontend\"},\"value\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}},\"fixedpage\":\"dashboard\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514036831),(52,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','{\"row\":{\"wx_app_id\":\"\",\"wx_mch_id\":\"\",\"wx_md5_key\":\"\",\"wx_app_cert_pem\":\"\",\"wx_app_key_pem\":\" \",\"ali_app_id\":\" \",\"ali_public_key\":\"\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1514036908),(53,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"4de0205511cc6a0b2be8a58d1b8166eb\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1517210027),(54,1,'admin','/admin/update/kernel/add?dialog=1','更新管理 内核更新管理 添加','{\"dialog\":\"1\",\"row\":{\"link\":\"1\",\"key\":\"1\",\"file_md5\":\"1\",\"vercode\":\"1\",\"ditch\":\"0\",\"debug\":\"0\",\"cpu_x\":\"0\",\"cpu_platform\":\"0\",\"brand\":\"\",\"uuid\":\"\",\"status\":\"1\",\"start_time\":\"2018-02-11 15:34:32\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1517211277),(55,1,'admin','/admin/update/kernel/del/ids/1','更新管理 内核更新管理 删除','{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1517211284),(56,1,'admin','/admin/user/edit/ids/1?dialog=1','用户管理 编辑','{\"dialog\":\"1\",\"row\":{\"username\":\"wangcailin\",\"password\":\"aaa\",\"salt\":\"a\",\"mobile\":\"1111111111\",\"system\":\"0\",\"vip\":\"0\",\"vip_expire_time\":\"1970-01-01 08:00:00\",\"status\":\"hidden\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1517211414),(57,1,'admin','/admin/user/edit/ids/1?dialog=1','用户管理 编辑','{\"dialog\":\"1\",\"row\":{\"username\":\"wangcailin\",\"password\":\"aaa\",\"salt\":\"a\",\"mobile\":\"1111111111\",\"system\":\"0\",\"vip\":\"0\",\"vip_expire_time\":\"1970-01-01 08:00:00\",\"status\":\"normal\"},\"ids\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1517211430),(58,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"6c4b0107bba0a09a1c4fcadb67e04f27\",\"username\":\"admin\"}','114.248.213.63','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0) Gecko/20100101 Firefox/58.0',1517810715),(59,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"8e55747a319bf0e10b7b1b30b4abb28d\",\"username\":\"admin\"}','36.5.75.169','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',1517995074),(60,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"52b0080b58d1aed66be3f8ac5ca36fa2\",\"username\":\"root\"}','1.192.166.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0.1 Safari/604.3.5',1518072574),(61,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"e4665d69a90d51c59e32ae8ddee507c3\",\"username\":\"admin\"}','1.192.166.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0.1 Safari/604.3.5',1518072737),(62,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"0facf3d29eb4eae2ae99a55b91c48875\",\"username\":\"root\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073170),(63,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"34835dd8675ccb782e6a5d20cc260fb9\",\"username\":\"root\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073181),(64,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"2ba4b1c84ca5dcd8252b65b3e1461dcc\",\"username\":\"root@\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073187),(65,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"8f033280b362afd7b785902f0f797f5c\",\"username\":\"root@47.94.193.179\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073192),(66,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"1d47286dc99f143f360767ecab92fadc\",\"username\":\"root@47.94.193.179\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073193),(67,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"6f2e42ae6dd4b998123eb26ddd396369\",\"username\":\"root@47.94.193.179\"}','1.192.166.108','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) Core/1.63.4793.400 QQBrowser/10.0.702.400',1518073212);
/*!40000 ALTER TABLE `txy_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_attachment`
--

DROP TABLE IF EXISTS `txy_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(50) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_attachment`
--

LOCK TABLES `txy_attachment` WRITE;
/*!40000 ALTER TABLE `txy_attachment` DISABLE KEYS */;
INSERT INTO `txy_attachment` VALUES (1,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6');
/*!40000 ALTER TABLE `txy_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_auth_group`
--

DROP TABLE IF EXISTS `txy_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_auth_group`
--

LOCK TABLES `txy_auth_group` WRITE;
/*!40000 ALTER TABLE `txy_auth_group` DISABLE KEYS */;
INSERT INTO `txy_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal');
/*!40000 ALTER TABLE `txy_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_auth_group_access`
--

DROP TABLE IF EXISTS `txy_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_auth_group_access`
--

LOCK TABLES `txy_auth_group_access` WRITE;
/*!40000 ALTER TABLE `txy_auth_group_access` DISABLE KEYS */;
INSERT INTO `txy_auth_group_access` VALUES (1,1);
/*!40000 ALTER TABLE `txy_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_auth_rule`
--

DROP TABLE IF EXISTS `txy_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_auth_rule`
--

LOCK TABLES `txy_auth_rule` WRITE;
/*!40000 ALTER TABLE `txy_auth_rule` DISABLE KEYS */;
INSERT INTO `txy_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,137,'normal'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,99,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,34,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,118,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,113,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,109,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,104,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,28,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,100,'normal'),(71,'file',0,'update','Update','fa fa-list','','',1,1513241050,1513241097,0,'normal'),(72,'file',71,'update/kernel','内核更新管理','fa fa-circle-o','','',1,1513241050,1513241050,0,'normal'),(73,'file',72,'update/kernel/index','查看','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(74,'file',72,'update/kernel/recyclebin','回收站','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(75,'file',72,'update/kernel/add','添加','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(76,'file',72,'update/kernel/edit','编辑','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(77,'file',72,'update/kernel/del','删除','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(78,'file',72,'update/kernel/destroy','真实删除','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(79,'file',72,'update/kernel/restore','还原','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(80,'file',72,'update/kernel/multi','批量更新','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(81,'file',71,'update/pargram','程序更新管理','fa fa-circle-o','','',1,1513241055,1513241055,0,'normal'),(82,'file',81,'update/pargram/index','查看','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(83,'file',81,'update/pargram/recyclebin','回收站','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(84,'file',81,'update/pargram/add','添加','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(85,'file',81,'update/pargram/edit','编辑','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(86,'file',81,'update/pargram/del','删除','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(87,'file',81,'update/pargram/destroy','真实删除','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(88,'file',81,'update/pargram/restore','还原','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(89,'file',81,'update/pargram/multi','批量更新','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(90,'file',0,'information','基础信息获取管理','fa fa-circle-o','','',1,1513241377,1513241377,0,'normal'),(91,'file',90,'information/index','查看','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(92,'file',90,'information/recyclebin','回收站','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(93,'file',90,'information/add','添加','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(94,'file',90,'information/edit','编辑','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(95,'file',90,'information/del','删除','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(96,'file',90,'information/destroy','真实删除','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(97,'file',90,'information/restore','还原','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(98,'file',90,'information/multi','批量更新','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(99,'file',0,'user','用户管理','fa fa-user','','',1,1513241490,1513241524,0,'normal'),(100,'file',99,'user/index','查看','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(101,'file',99,'user/recyclebin','回收站','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(102,'file',99,'user/add','添加','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(103,'file',99,'user/edit','编辑','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(104,'file',99,'user/del','删除','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(105,'file',99,'user/destroy','真实删除','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(106,'file',99,'user/restore','还原','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(107,'file',99,'user/multi','批量更新','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(108,'file',0,'order','订单管理','fa fa-circle-o','','',1,1513241719,1513241719,0,'normal'),(109,'file',108,'order/index','查看','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(110,'file',108,'order/recyclebin','回收站','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(111,'file',108,'order/add','添加','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(112,'file',108,'order/edit','编辑','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(113,'file',108,'order/del','删除','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(114,'file',108,'order/destroy','真实删除','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(115,'file',108,'order/restore','还原','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(116,'file',108,'order/multi','批量更新','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(117,'file',0,'push','信息推送管理','fa fa-circle-o','','',1,1513242514,1513242514,0,'normal'),(118,'file',117,'push/index','查看','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(119,'file',117,'push/recyclebin','回收站','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(120,'file',117,'push/add','添加','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(121,'file',117,'push/edit','编辑','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(122,'file',117,'push/del','删除','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(123,'file',117,'push/destroy','真实删除','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(124,'file',117,'push/restore','还原','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(125,'file',117,'push/multi','批量更新','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal');
/*!40000 ALTER TABLE `txy_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_category`
--

DROP TABLE IF EXISTS `txy_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_category`
--

LOCK TABLES `txy_category` WRITE;
/*!40000 ALTER TABLE `txy_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_config`
--

DROP TABLE IF EXISTS `txy_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='系统配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_config`
--

LOCK TABLES `txy_config` WRITE;
/*!40000 ALTER TABLE `txy_config` DISABLE KEYS */;
INSERT INTO `txy_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','天下游','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果静态资源使用第三方云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Category type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"others\":\"Others\",\"pay\":\"Pay\"}','','',''),(18,'alidayu_key','others','Alidayu Key','阿里大于 Access Key ID','string','LTAIsx04CiNWqwMi',' ','require',''),(19,'alidayu_key_secret','others','Alidayu Key Secret','阿里大于 Access Key Secret','string','cUe0dnIQ8sWffxRSx29lM7P5xuuuXg',' ','require',''),(20,'ali_push_key_id','others','Ali Push Key Id','阿里推送 Key Id','string','3292109',' ','require',''),(21,'ali_push_key_secret','others','Ali Push Key Secret','阿里推送 Key Secret','string','3b2d0047ed00477e712de6df37dd1c55',' ','require',''),(22,'ali_push_key','others','Ali Push Key','阿里推送 APP Key','string','23688665',' ','require',''),(23,'wx_app_id','pay','微信支付-公众账号ID','微信支付-公众账号ID','string','',' ','require',''),(24,'wx_mch_id','pay','微信支付-商户ID','微信支付-商户ID','string','',' ','require',''),(25,'wx_md5_key','pay','微信支付-md5 秘钥','微信支付-md5 秘钥','string','',' ','require',''),(26,'wx_app_cert_pem','pay','app_cert_pem','','file','',' ','require',''),(27,'wx_app_key_pem','pay','app_key_pem','','file',' ',' ','require',''),(28,'ali_app_id','pay','支付宝支付-ID','支付宝支付-ID','string',' ',' ','require',''),(29,'ali_public_key','pay','支付宝支付-ali_public_key','支付宝支付-ali_public_key','text','',' ','require',''),(30,'ali_rsa_private_key','pay','支付宝支付-rsa_private_key','支付宝支付-rsa_private_key','text',' ',' ','require','');
/*!40000 ALTER TABLE `txy_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_information`
--

DROP TABLE IF EXISTS `txy_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '信息类型 0广告',
  `page` tinyint(3) NOT NULL COMMENT '所属页面: 0splash页,1首页,2切换页',
  `title` varchar(50) DEFAULT NULL COMMENT '信息标题',
  `images` varchar(255) DEFAULT NULL COMMENT '信息图片',
  `description` text COMMENT '信息简介',
  `url` varchar(255) DEFAULT NULL COMMENT '信息跳转链接',
  `actiontype` tinyint(1) DEFAULT NULL COMMENT '触发类型 触发类型 0:网页打开 1:打开应用 2:播放视频',
  `version` varchar(50) DEFAULT NULL COMMENT '应用版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基础信息获取表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_information`
--

LOCK TABLES `txy_information` WRITE;
/*!40000 ALTER TABLE `txy_information` DISABLE KEYS */;
INSERT INTO `txy_information` VALUES (1,0,0,NULL,'/assets/img/qrcode.png','信息简介','http://www.baidu.com',1,'1.0.0'),(2,0,1,NULL,'/assets/img/qrcode.png','信息简介','http://www.baidu.com',1,'1.0.0');
/*!40000 ALTER TABLE `txy_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_lbs`
--

DROP TABLE IF EXISTS `txy_lbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_lbs` (
  `id` int(10) NOT NULL,
  `lat` double(10,6) NOT NULL COMMENT '纬度',
  `lon` double(10,6) NOT NULL COMMENT '经度',
  `code1` varchar(50) NOT NULL COMMENT '机器码1',
  `code2` varchar(50) NOT NULL COMMENT '机器码2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='lbs数据上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_lbs`
--

LOCK TABLES `txy_lbs` WRITE;
/*!40000 ALTER TABLE `txy_lbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_lbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_lbs_cellinfos`
--

DROP TABLE IF EXISTS `txy_lbs_cellinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_lbs_cellinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lbs_id` int(10) NOT NULL COMMENT 'lbs表ID',
  `cid` varchar(50) NOT NULL,
  `lac` varchar(50) NOT NULL,
  `mcc` varchar(50) NOT NULL,
  `mnc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='lbs-cellinfos数据上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_lbs_cellinfos`
--

LOCK TABLES `txy_lbs_cellinfos` WRITE;
/*!40000 ALTER TABLE `txy_lbs_cellinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_lbs_cellinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_lbs_wifiinfos`
--

DROP TABLE IF EXISTS `txy_lbs_wifiinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_lbs_wifiinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lbs_id` int(10) NOT NULL COMMENT 'lbs表ID',
  `bssid` varchar(50) NOT NULL,
  `capabilities` varchar(50) NOT NULL,
  `ssid` varchar(50) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='lbs-wifiinfos数据上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_lbs_wifiinfos`
--

LOCK TABLES `txy_lbs_wifiinfos` WRITE;
/*!40000 ALTER TABLE `txy_lbs_wifiinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_lbs_wifiinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_order`
--

DROP TABLE IF EXISTS `txy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL COMMENT '订单号',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `pay_type` tinyint(1) NOT NULL COMMENT '付款类型: 0充值卡 1微信 2支付宝',
  `amount` decimal(6,2) NOT NULL COMMENT '订单金额',
  `code` varchar(20) NOT NULL COMMENT '机器码',
  `system` tinyint(1) NOT NULL COMMENT '0安卓1苹果',
  `add_time` int(10) NOT NULL COMMENT '下单时间',
  `pay_time` int(10) DEFAULT NULL COMMENT '支付时间',
  `status` tinyint(1) NOT NULL COMMENT '订单状态: 0待支付 1支付成功 2支付失败 3放弃支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_order`
--

LOCK TABLES `txy_order` WRITE;
/*!40000 ALTER TABLE `txy_order` DISABLE KEYS */;
INSERT INTO `txy_order` VALUES (1,'2017121708927128','wangcailin',2,20.00,'HISNEJKNSF',0,1513515341,1513515341,1);
/*!40000 ALTER TABLE `txy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_push`
--

DROP TABLE IF EXISTS `txy_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_push` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `status` tinyint(1) NOT NULL COMMENT '状态 0暂不推送 1立即推送',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='信息推送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_push`
--

LOCK TABLES `txy_push` WRITE;
/*!40000 ALTER TABLE `txy_push` DISABLE KEYS */;
INSERT INTO `txy_push` VALUES (1,'测试标题','测试内容',0,1513515992);
/*!40000 ALTER TABLE `txy_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_app`
--

DROP TABLE IF EXISTS `txy_report_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(100) NOT NULL COMMENT '应用包名',
  `signMd5` varchar(100) NOT NULL COMMENT '应用包md5',
  `code1` varchar(50) DEFAULT NULL COMMENT '机器码1',
  `code2` varchar(50) DEFAULT NULL COMMENT '机器码2',
  `AndroidId` varchar(50) DEFAULT NULL COMMENT '设备ID',
  `IMEI` varchar(50) DEFAULT NULL COMMENT '机器IMEI标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='APP启动上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_app`
--

LOCK TABLES `txy_report_app` WRITE;
/*!40000 ALTER TABLE `txy_report_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_apphidden`
--

DROP TABLE IF EXISTS `txy_report_apphidden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_apphidden` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code1` varchar(50) DEFAULT NULL COMMENT '机器码1',
  `code2` varchar(50) DEFAULT NULL COMMENT '机器码2',
  `dataType` varchar(50) DEFAULT NULL COMMENT '数据类型',
  `actionType` int(1) DEFAULT NULL COMMENT 'actionType 1为添加,2为全部开，3为全部关闭,4为全部删除,5 为开，6为关',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='APP隐藏数据上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_apphidden`
--

LOCK TABLES `txy_report_apphidden` WRITE;
/*!40000 ALTER TABLE `txy_report_apphidden` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_apphidden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_contacts`
--

DROP TABLE IF EXISTS `txy_report_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(50) DEFAULT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_contacts`
--

LOCK TABLES `txy_report_contacts` WRITE;
/*!40000 ALTER TABLE `txy_report_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_information`
--

DROP TABLE IF EXISTS `txy_report_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(50) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `body` varchar(50) NOT NULL,
  `unique_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_information`
--

LOCK TABLES `txy_report_information` WRITE;
/*!40000 ALTER TABLE `txy_report_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_kernel`
--

DROP TABLE IF EXISTS `txy_report_kernel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_kernel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code1` varchar(50) DEFAULT NULL COMMENT '机器码1',
  `code2` varchar(50) DEFAULT NULL COMMENT '机器码2',
  `reportCode` varchar(50) DEFAULT NULL COMMENT '待定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内核启动失败上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_kernel`
--

LOCK TABLES `txy_report_kernel` WRITE;
/*!40000 ALTER TABLE `txy_report_kernel` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_kernel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_report_program`
--

DROP TABLE IF EXISTS `txy_report_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_report_program` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code1` varchar(50) DEFAULT NULL COMMENT '机器码1',
  `code2` varchar(50) DEFAULT NULL COMMENT '机器码2',
  `dataType` varchar(50) DEFAULT NULL COMMENT '数据类型',
  `packageName` varchar(50) DEFAULT NULL COMMENT '包名',
  `appName` varchar(50) DEFAULT NULL COMMENT '应用名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指定应用程序上报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_report_program`
--

LOCK TABLES `txy_report_program` WRITE;
/*!40000 ALTER TABLE `txy_report_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_report_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_test`
--

DROP TABLE IF EXISTS `txy_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_test`
--

LOCK TABLES `txy_test` WRITE;
/*!40000 ALTER TABLE `txy_test` DISABLE KEYS */;
INSERT INTO `txy_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,0,1,'normal','1');
/*!40000 ALTER TABLE `txy_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_update_kernel`
--

DROP TABLE IF EXISTS `txy_update_kernel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_update_kernel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `key` varchar(100) DEFAULT NULL COMMENT 'KEY',
  `file_md5` varchar(255) DEFAULT NULL COMMENT 'MD5值',
  `vercode` varchar(50) DEFAULT NULL COMMENT '服务端版本号',
  `ditch` tinyint(1) unsigned DEFAULT NULL COMMENT '更新渠道',
  `debug` tinyint(1) unsigned DEFAULT NULL COMMENT 'debug',
  `cpu_x` tinyint(1) unsigned DEFAULT NULL COMMENT 'CPU位数',
  `cpu_platform` tinyint(1) unsigned DEFAULT NULL COMMENT 'CPU平台',
  `brand` varchar(100) DEFAULT NULL COMMENT '手机品牌',
  `uuid` varchar(100) DEFAULT NULL COMMENT 'UUID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `start_time` int(10) DEFAULT NULL COMMENT '开始更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内核更新表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_update_kernel`
--

LOCK TABLES `txy_update_kernel` WRITE;
/*!40000 ALTER TABLE `txy_update_kernel` DISABLE KEYS */;
INSERT INTO `txy_update_kernel` VALUES (2,'1','1','1','1',0,0,0,0,'','',1,1518334472);
/*!40000 ALTER TABLE `txy_update_kernel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_update_pargram`
--

DROP TABLE IF EXISTS `txy_update_pargram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_update_pargram` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vercode` varchar(50) DEFAULT NULL COMMENT '服务端版本号',
  `vername` varchar(50) DEFAULT NULL COMMENT '版本名称',
  `description` text COMMENT '更新描述',
  `isforce` tinyint(1) unsigned DEFAULT NULL COMMENT '强制更新: 0否,1是',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `file_md5` varchar(255) DEFAULT NULL COMMENT 'md5值',
  `ditch` tinyint(1) unsigned DEFAULT NULL COMMENT '更新渠道',
  `debug` tinyint(1) unsigned DEFAULT NULL COMMENT 'debug',
  `cpu_x` tinyint(1) unsigned DEFAULT NULL COMMENT 'CPU位数',
  `cpu_platform` tinyint(1) unsigned DEFAULT NULL COMMENT 'CPU平台',
  `brand` tinyint(1) unsigned DEFAULT NULL COMMENT '手机品牌',
  `uuid` tinyint(1) unsigned DEFAULT NULL COMMENT 'UUID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='程序更新表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_update_pargram`
--

LOCK TABLES `txy_update_pargram` WRITE;
/*!40000 ALTER TABLE `txy_update_pargram` DISABLE KEYS */;
INSERT INTO `txy_update_pargram` VALUES (1,'1.0.0','版本1','更新描述测试',0,'http://zcb.wx.tindsoft.com/','field(\'id,title,images,description,url,actiontype\')',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `txy_update_pargram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_user`
--

DROP TABLE IF EXISTS `txy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `system` tinyint(1) unsigned NOT NULL COMMENT '0安卓1苹果',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '会员状态 1是0否',
  `vip_expire_time` int(10) unsigned DEFAULT NULL COMMENT '会员到期时间',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_user`
--

LOCK TABLES `txy_user` WRITE;
/*!40000 ALTER TABLE `txy_user` DISABLE KEYS */;
INSERT INTO `txy_user` VALUES (1,'wangcailin','aaa','a','1111111111',0,0,0,1513303211,1513303240,1517211430,'12312dsffsdfadfasdfa','normal'),(2,'123456','123456','','18697362435',123,1,NULL,0,1518081852,1518081852,'',''),(3,'123456','123456','','18697362435',123,1,NULL,0,1518081912,1518081912,'','');
/*!40000 ALTER TABLE `txy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_user_code`
--

DROP TABLE IF EXISTS `txy_user_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_user_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `code` varchar(255) DEFAULT NULL COMMENT '机器码',
  `code_type` tinyint(1) DEFAULT NULL COMMENT '1新机码 0老机器码',
  `binding_time` int(10) DEFAULT NULL COMMENT '绑定时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户设备表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_user_code`
--

LOCK TABLES `txy_user_code` WRITE;
/*!40000 ALTER TABLE `txy_user_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_user_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txy_user_info`
--

DROP TABLE IF EXISTS `txy_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txy_user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '会员状态 1是0否',
  `vip_expire_time` int(10) unsigned DEFAULT NULL COMMENT '会员到期时间',
  `systype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0安卓 1苹果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_user_info`
--

LOCK TABLES `txy_user_info` WRITE;
/*!40000 ALTER TABLE `txy_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `txy_user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-22 10:59:58
