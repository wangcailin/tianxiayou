-- MySQL dump 10.13  Distrib 5.6.38, for osx10.13 (x86_64)
--
-- Host: localhost    Database: tianxiayou
-- ------------------------------------------------------
-- Server version	5.6.38

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_admin`
--

LOCK TABLES `txy_admin` WRITE;
/*!40000 ALTER TABLE `txy_admin` DISABLE KEYS */;
INSERT INTO `txy_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1511957914,1492186163,1511957914,'b7f68a83-74ec-4410-a474-db32b18f185c','normal');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_admin_log`
--

LOCK TABLES `txy_admin_log` WRITE;
/*!40000 ALTER TABLE `txy_admin_log` DISABLE KEYS */;
INSERT INTO `txy_admin_log` VALUES (1,0,'Unknown','/admin/index/login.html','登录','{\"__token__\":\"1e00f3eeeb2d0a042e8387bb26eebde5\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511919139),(12,1,'admin','/admin/auth/adminlog/del/ids/11','权限管理 管理员日志 删除','{\"action\":\"del\",\"ids\":\"11\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511957948),(13,1,'admin','/admin/addon/install','插件管理 安装','{\"name\":\"user\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511959178),(14,1,'admin','/admin/user/multi/ids/3','会员管理 批量更新','{\"ids\":\"3\",\"params\":\"status=normal\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511959205),(15,1,'admin','/admin/user/multi/ids/3','会员管理 批量更新','{\"ids\":\"3\",\"params\":\"status=hidden\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511959208),(16,1,'admin','/admin/user/edit/ids/3?dialog=1','会员管理 修改','{\"dialog\":\"1\",\"row\":{\"username\":\"admin\",\"nickname\":\"admin\",\"email\":\"admin@163.com\",\"mobile\":\"13888888888\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"birthday\":\"2017-04-15\",\"score\":\"0\",\"prevtime\":\"2017-04-10 19:00:15\",\"loginfailure\":\"0\",\"logintime\":\"2017-04-10 19:00:38\",\"loginip\":\"127.0.0.1\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511959215),(17,1,'admin','/admin/user/multi/ids/3','会员管理 批量更新','{\"ids\":\"3\",\"params\":\"status=normal\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511959228),(18,1,'admin','/admin/category/del/ids/13,12,5,7,11,10,6,9,8,2,4,3,1','分类管理 删除','{\"action\":\"del\",\"ids\":\"13,12,5,7,11,10,6,9,8,2,4,3,1\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1511964783);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_auth_rule`
--

LOCK TABLES `txy_auth_rule` WRITE;
/*!40000 ALTER TABLE `txy_auth_rule` DISABLE KEYS */;
INSERT INTO `txy_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,137,'normal'),(3,'file',0,'category','Category','fa fa-list\r','','Category tips',1,1497429920,1497429920,119,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',1,1502035509,1502035509,0,'normal'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,99,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,34,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,118,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,113,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,109,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,104,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,28,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','',0,1497429920,1497429920,142,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,141,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,140,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,139,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,138,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,100,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(66,'file',0,'user','会员管理','fa fa-user-o','','用于管理前台注册的会员',1,1511959178,1511959178,0,'normal'),(67,'file',66,'user/index','查看','fa fa-circle-o','','',0,1511959178,1511959178,0,'normal'),(68,'file',66,'user/edit','修改','fa fa-circle-o','','',0,1511959178,1511959178,0,'normal'),(69,'file',66,'user/del','删除','fa fa-circle-o','','',0,1511959178,1511959178,0,'normal'),(70,'file',66,'user/multi','批量更新','fa fa-circle-o','','',0,1511959178,1511959178,0,'normal');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_config`
--

LOCK TABLES `txy_config` WRITE;
/*!40000 ALTER TABLE `txy_config` DISABLE KEYS */;
INSERT INTO `txy_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','天下游','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果静态资源使用第三方云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Category type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
/*!40000 ALTER TABLE `txy_config` ENABLE KEYS */;
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
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `email` varchar(100) DEFAULT '' COMMENT '电子邮箱',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '会员状态 1是2否',
  `level` tinyint(1) unsigned DEFAULT '0' COMMENT '等级',
  `score` int(10) unsigned DEFAULT '0' COMMENT '积分',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `loginfailure` tinyint(1) unsigned DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_user`
--

LOCK TABLES `txy_user` WRITE;
/*!40000 ALTER TABLE `txy_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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

-- Dump completed on 2017-11-29 22:16:58
-- MySQL dump 10.13  Distrib 5.6.38, for osx10.13 (x86_64)
--
-- Host: localhost    Database: tianxiayou
-- ------------------------------------------------------
-- Server version	5.6.38

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
INSERT INTO `txy_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1513300981,1492186163,1513300981,'1e476a03-272d-41ad-9398-641a863119bf','normal');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_admin_log`
--

LOCK TABLES `txy_admin_log` WRITE;
/*!40000 ALTER TABLE `txy_admin_log` DISABLE KEYS */;
INSERT INTO `txy_admin_log` VALUES (1,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"eb1e802540aac3b75452ddbc26f43ac6\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512003569),(2,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"1e92f8b1c8b8cde0f51c05ae8279c91b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512093809),(3,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"b3923518c1c3a072fd1c3c4f36139182\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512181122),(4,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"6e5c6370d89dfea42a1950ddfa73b3b8\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512545485),(5,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1512546076),(6,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"939c665d16ec6ffa1ebad8420158efbf\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240713),(7,1,'admin','/admin/auth/rule/del/ids/3','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240736),(8,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240832),(9,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240839),(10,1,'admin','/admin/addon/uninstall','插件管理 卸载','{\"name\":\"user\",\"force\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513240840),(11,1,'admin','/admin/auth/rule/edit/ids/71?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"update\",\"title\":\"Update\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"71\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513241097),(12,1,'admin','/admin/auth/rule/edit/ids/99?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"user\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"99\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513241524),(13,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"d36a88989dcfd29512462b08b8ee13b0\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513300981),(14,1,'admin','/admin/user/add?dialog=1','用户管理 添加','{\"dialog\":\"1\",\"row\":{\"username\":\"wangcailin\",\"password\":\"aaa\",\"salt\":\"a\",\"mobile\":\"1111111111\",\"system\":\"0\",\"prevtime\":\"2017-12-15 10:00:11\",\"jointime\":\"2017-12-15 10:00:11\",\"token\":\"12312dsffsdfadfasdfa\",\"status\":\"a\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513303240),(15,1,'admin','/admin/user/multi/ids/1','用户管理 批量更新','{\"ids\":\"1\",\"params\":\"status=normal\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0',1513304085);
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
INSERT INTO `txy_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,137,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',1,1502035509,1502035509,0,'normal'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,99,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,34,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,118,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,113,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,109,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,104,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,28,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,100,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(71,'file',0,'update','Update','fa fa-list','','',1,1513241050,1513241097,0,'normal'),(72,'file',71,'update/kernel','内核更新管理','fa fa-circle-o','','',1,1513241050,1513241050,0,'normal'),(73,'file',72,'update/kernel/index','查看','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(74,'file',72,'update/kernel/recyclebin','回收站','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(75,'file',72,'update/kernel/add','添加','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(76,'file',72,'update/kernel/edit','编辑','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(77,'file',72,'update/kernel/del','删除','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(78,'file',72,'update/kernel/destroy','真实删除','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(79,'file',72,'update/kernel/restore','还原','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(80,'file',72,'update/kernel/multi','批量更新','fa fa-circle-o','','',0,1513241050,1513241050,0,'normal'),(81,'file',71,'update/pargram','程序更新管理','fa fa-circle-o','','',1,1513241055,1513241055,0,'normal'),(82,'file',81,'update/pargram/index','查看','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(83,'file',81,'update/pargram/recyclebin','回收站','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(84,'file',81,'update/pargram/add','添加','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(85,'file',81,'update/pargram/edit','编辑','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(86,'file',81,'update/pargram/del','删除','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(87,'file',81,'update/pargram/destroy','真实删除','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(88,'file',81,'update/pargram/restore','还原','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(89,'file',81,'update/pargram/multi','批量更新','fa fa-circle-o','','',0,1513241055,1513241055,0,'normal'),(90,'file',0,'information','基础信息获取管理','fa fa-circle-o','','',1,1513241377,1513241377,0,'normal'),(91,'file',90,'information/index','查看','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(92,'file',90,'information/recyclebin','回收站','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(93,'file',90,'information/add','添加','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(94,'file',90,'information/edit','编辑','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(95,'file',90,'information/del','删除','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(96,'file',90,'information/destroy','真实删除','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(97,'file',90,'information/restore','还原','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(98,'file',90,'information/multi','批量更新','fa fa-circle-o','','',0,1513241377,1513241377,0,'normal'),(99,'file',0,'user','用户管理','fa fa-user','','',1,1513241490,1513241524,0,'normal'),(100,'file',99,'user/index','查看','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(101,'file',99,'user/recyclebin','回收站','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(102,'file',99,'user/add','添加','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(103,'file',99,'user/edit','编辑','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(104,'file',99,'user/del','删除','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(105,'file',99,'user/destroy','真实删除','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(106,'file',99,'user/restore','还原','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(107,'file',99,'user/multi','批量更新','fa fa-circle-o','','',0,1513241490,1513241490,0,'normal'),(108,'file',0,'order','订单管理','fa fa-circle-o','','',1,1513241719,1513241719,0,'normal'),(109,'file',108,'order/index','查看','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(110,'file',108,'order/recyclebin','回收站','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(111,'file',108,'order/add','添加','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(112,'file',108,'order/edit','编辑','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(113,'file',108,'order/del','删除','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(114,'file',108,'order/destroy','真实删除','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(115,'file',108,'order/restore','还原','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(116,'file',108,'order/multi','批量更新','fa fa-circle-o','','',0,1513241719,1513241719,0,'normal'),(117,'file',0,'push','信息推送管理','fa fa-circle-o','','',1,1513242514,1513242514,0,'normal'),(118,'file',117,'push/index','查看','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(119,'file',117,'push/recyclebin','回收站','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(120,'file',117,'push/add','添加','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(121,'file',117,'push/edit','编辑','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(122,'file',117,'push/del','删除','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(123,'file',117,'push/destroy','真实删除','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(124,'file',117,'push/restore','还原','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal'),(125,'file',117,'push/multi','批量更新','fa fa-circle-o','','',0,1513242514,1513242514,0,'normal');
/*!40000 ALTER TABLE `txy_auth_rule` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_config`
--

LOCK TABLES `txy_config` WRITE;
/*!40000 ALTER TABLE `txy_config` DISABLE KEYS */;
INSERT INTO `txy_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','天下游','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果静态资源使用第三方云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Category type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
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
  `type` tinyint(1) NOT NULL COMMENT '信息类型',
  `page` tinyint(3) NOT NULL COMMENT '所属页面: 0splash页,1首页,2切换页',
  `images` varchar(255) DEFAULT NULL COMMENT '信息图片',
  `description` text COMMENT '信息简介',
  `url` varchar(255) DEFAULT NULL COMMENT '信息跳转链接',
  `actiontype` tinyint(1) DEFAULT NULL COMMENT '触发类型 触发类型 0:网页打开 1:打开应用 2:播放视频',
  `version` varchar(50) DEFAULT NULL COMMENT '应用版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础信息获取表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_information`
--

LOCK TABLES `txy_information` WRITE;
/*!40000 ALTER TABLE `txy_information` DISABLE KEYS */;
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
  `id` int(10) NOT NULL,
  `order_sn` varchar(20) NOT NULL COMMENT '订单号',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `pay_type` tinyint(1) NOT NULL COMMENT '付款类型: 1充值卡 2微信 3支付宝',
  `amount` decimal(6,2) NOT NULL COMMENT '订单金额',
  `code` varchar(20) NOT NULL COMMENT '机器码',
  `system` tinyint(1) NOT NULL COMMENT '0安卓1苹果',
  `add_time` int(10) NOT NULL COMMENT '下单时间',
  `pay_time` int(10) DEFAULT NULL COMMENT '支付时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '订单状态: 0待支付 1支付成功 2支付失败 3放弃支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_order`
--

LOCK TABLES `txy_order` WRITE;
/*!40000 ALTER TABLE `txy_order` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息推送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_push`
--

LOCK TABLES `txy_push` WRITE;
/*!40000 ALTER TABLE `txy_push` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内核更新表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_update_kernel`
--

LOCK TABLES `txy_update_kernel` WRITE;
/*!40000 ALTER TABLE `txy_update_kernel` DISABLE KEYS */;
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
  `isforce` tinyint(1) DEFAULT NULL COMMENT '强制更新: 0否,1是',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `file_md5` varchar(255) DEFAULT NULL COMMENT 'md5值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='程序更新表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_update_pargram`
--

LOCK TABLES `txy_update_pargram` WRITE;
/*!40000 ALTER TABLE `txy_update_pargram` DISABLE KEYS */;
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
  `vip` tinyint(1) unsigned NOT NULL COMMENT '会员状态 1是0否',
  `vip_expire_time` int(10) unsigned DEFAULT NULL COMMENT '会员到期时间',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txy_user`
--

LOCK TABLES `txy_user` WRITE;
/*!40000 ALTER TABLE `txy_user` DISABLE KEYS */;
INSERT INTO `txy_user` VALUES (1,'wangcailin','aaa','a','1111111111',0,0,NULL,1513303211,1513303240,1513303240,'12312dsffsdfadfasdfa','normal');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15 13:47:12