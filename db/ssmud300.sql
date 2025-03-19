-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmud300
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-11-19 02:25:14',1,'地址1','收货人1','电话1','是否默认地址[是/否]1'),(2,'2020-11-19 02:25:14',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-19 02:25:14',3,'地址3','收货人3','电话3','是否默认地址[是/否]3');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baojianyaofang`
--

DROP TABLE IF EXISTS `baojianyaofang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baojianyaofang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaofangbiaoti` varchar(200) DEFAULT NULL COMMENT '药方标题',
  `shiyongrenqun` varchar(200) DEFAULT NULL COMMENT '适用人群',
  `shiyongjijie` varchar(200) DEFAULT NULL COMMENT '适用季节',
  `yongliangyongfa` varchar(200) DEFAULT NULL COMMENT '用量用法',
  `yaocaijishuliang` longtext COMMENT '药材及数量',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `yaofanggongxiao` longtext COMMENT '药方功效',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保健药方';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baojianyaofang`
--

LOCK TABLES `baojianyaofang` WRITE;
/*!40000 ALTER TABLE `baojianyaofang` DISABLE KEYS */;
INSERT INTO `baojianyaofang` VALUES (1,'2020-11-19 02:25:14','药方标题1','儿童','春季','用量用法1','药材及数量1','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian1.jpg','药方功效1',1,1),(2,'2020-11-19 02:25:14','药方标题2','儿童','春季','用量用法2','药材及数量2','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian2.jpg','药方功效2',2,2),(3,'2020-11-19 02:25:14','药方标题3','儿童','春季','用量用法3','药材及数量3','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian3.jpg','药方功效3',3,3);
/*!40000 ALTER TABLE `baojianyaofang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'songlitaocan' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-19 02:25:14','商品表名1',1,1,'商品名称1','http://localhost:8080/ssmud300/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-19 02:25:14','商品表名2',2,2,'商品名称2','http://localhost:8080/ssmud300/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-19 02:25:14','商品表名3',3,3,'商品名称3','http://localhost:8080/ssmud300/upload/cart_picture3.jpg',3,3,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-11-19 02:25:14',1,1,'提问1','回复1',1),(2,'2020-11-19 02:25:14',2,2,'提问2','回复2',2),(3,'2020-11-19 02:25:14',3,3,'提问3','回复3',3);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukujilu`
--

DROP TABLE IF EXISTS `chukujilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaocaibianhao` varchar(200) DEFAULT NULL COMMENT '药材编号',
  `yaocaimingcheng` varchar(200) DEFAULT NULL COMMENT '药材名称',
  `yaocaileixing` varchar(200) DEFAULT NULL COMMENT '药材类型',
  `yaocaikucun` int(11) DEFAULT NULL COMMENT '药材库存',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605753207589 DEFAULT CHARSET=utf8 COMMENT='出库记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukujilu`
--

LOCK TABLES `chukujilu` WRITE;
/*!40000 ALTER TABLE `chukujilu` DISABLE KEYS */;
INSERT INTO `chukujilu` VALUES (1,'2020-11-19 02:25:14','药材编号1','药材名称1','药材类型1',1,'2020-11-19 10:25:14'),(2,'2020-11-19 02:25:14','药材编号2','药材名称2','药材类型2',2,'2020-11-19 10:25:14'),(3,'2020-11-19 02:25:14','药材编号3','药材名称3','药材类型3',3,'2020-11-19 10:25:14'),(1605753207588,'2020-11-19 02:33:26','20201119103225417','库存测试','药材类型1',52,'2020-11-19 10:33:24');
/*!40000 ALTER TABLE `chukujilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmud300/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmud300/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmud300/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssmud300/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssmud300/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussbaojianyaofang`
--

DROP TABLE IF EXISTS `discussbaojianyaofang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussbaojianyaofang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='保健药方评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussbaojianyaofang`
--

LOCK TABLES `discussbaojianyaofang` WRITE;
/*!40000 ALTER TABLE `discussbaojianyaofang` DISABLE KEYS */;
INSERT INTO `discussbaojianyaofang` VALUES (1,'2020-11-19 02:25:14',1,'评论内容1',1),(2,'2020-11-19 02:25:14',2,'评论内容2',2),(3,'2020-11-19 02:25:14',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussbaojianyaofang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssonglitaocan`
--

DROP TABLE IF EXISTS `discusssonglitaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssonglitaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='送礼套餐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssonglitaocan`
--

LOCK TABLES `discusssonglitaocan` WRITE;
/*!40000 ALTER TABLE `discusssonglitaocan` DISABLE KEYS */;
INSERT INTO `discusssonglitaocan` VALUES (1,'2020-11-19 02:25:14',1,'评论内容1',1),(2,'2020-11-19 02:25:14',2,'评论内容2',2),(3,'2020-11-19 02:25:14',3,'评论内容3',3);
/*!40000 ALTER TABLE `discusssonglitaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyaocaixinxi`
--

DROP TABLE IF EXISTS `discussyaocaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyaocaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='药材信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyaocaixinxi`
--

LOCK TABLES `discussyaocaixinxi` WRITE;
/*!40000 ALTER TABLE `discussyaocaixinxi` DISABLE KEYS */;
INSERT INTO `discussyaocaixinxi` VALUES (1,'2020-11-19 02:25:14',1,'评论内容1',1),(2,'2020-11-19 02:25:14',2,'评论内容2',2),(3,'2020-11-19 02:25:14',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussyaocaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (1,'2020-11-19 02:25:14','会员1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian1.jpg',1,1),(2,'2020-11-19 02:25:14','会员2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian2.jpg',2,2),(3,'2020-11-19 02:25:14','会员3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian3.jpg',3,3);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='健康资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-11-19 02:25:14','标题1','http://localhost:8080/ssmud300/upload/news_picture1.jpg','内容1'),(2,'2020-11-19 02:25:14','标题2','http://localhost:8080/ssmud300/upload/news_picture2.jpg','内容2'),(3,'2020-11-19 02:25:14','标题3','http://localhost:8080/ssmud300/upload/news_picture3.jpg','内容3');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'songlitaocan' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukujilu`
--

DROP TABLE IF EXISTS `rukujilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaocaibianhao` varchar(200) DEFAULT NULL COMMENT '药材编号',
  `yaocaimingcheng` varchar(200) DEFAULT NULL COMMENT '药材名称',
  `yaocaileixing` varchar(200) DEFAULT NULL COMMENT '药材类型',
  `yaocaikucun` int(11) DEFAULT NULL COMMENT '药材库存',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605753180079 DEFAULT CHARSET=utf8 COMMENT='入库记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukujilu`
--

LOCK TABLES `rukujilu` WRITE;
/*!40000 ALTER TABLE `rukujilu` DISABLE KEYS */;
INSERT INTO `rukujilu` VALUES (1,'2020-11-19 02:25:14','药材编号1','药材名称1','药材类型1',1,'2020-11-19 10:25:14'),(2,'2020-11-19 02:25:14','药材编号2','药材名称2','药材类型2',2,'2020-11-19 10:25:14'),(3,'2020-11-19 02:25:14','药材编号3','药材名称3','药材类型3',3,'2020-11-19 10:25:14'),(1605753180078,'2020-11-19 02:32:59','20201119103225417','库存测试','药材类型1',100,'2020-11-19 10:32:57');
/*!40000 ALTER TABLE `rukujilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songlitaocan`
--

DROP TABLE IF EXISTS `songlitaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songlitaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jieshao` longtext COMMENT '介绍',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='送礼套餐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songlitaocan`
--

LOCK TABLES `songlitaocan` WRITE;
/*!40000 ALTER TABLE `songlitaocan` DISABLE KEYS */;
INSERT INTO `songlitaocan` VALUES (1,'2020-11-19 02:25:14','名称1','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian1.jpg','介绍1','详情1',1,1,1),(2,'2020-11-19 02:25:14','名称2','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian2.jpg','介绍2','详情2',2,2,2),(3,'2020-11-19 02:25:14','名称3','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian3.jpg','介绍3','详情3',3,3,3);
/*!40000 ALTER TABLE `songlitaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-19 02:25:14',1,1,'表名1','收藏名称1','http://localhost:8080/ssmud300/upload/storeup_picture1.jpg'),(2,'2020-11-19 02:25:14',2,2,'表名2','收藏名称2','http://localhost:8080/ssmud300/upload/storeup_picture2.jpg'),(3,'2020-11-19 02:25:14',3,3,'表名3','收藏名称3','http://localhost:8080/ssmud300/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','iwci43pv5cq1g512pf6ub695r7ybfxov','2020-11-19 02:30:41','2020-11-19 03:30:42');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-19 02:25:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaocaifenlei`
--

DROP TABLE IF EXISTS `yaocaifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaocaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaocaileixing` varchar(200) DEFAULT NULL COMMENT '药材类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='药材分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaocaifenlei`
--

LOCK TABLES `yaocaifenlei` WRITE;
/*!40000 ALTER TABLE `yaocaifenlei` DISABLE KEYS */;
INSERT INTO `yaocaifenlei` VALUES (1,'2020-11-19 02:25:14','药材类型1'),(2,'2020-11-19 02:25:14','药材类型2'),(3,'2020-11-19 02:25:14','药材类型3');
/*!40000 ALTER TABLE `yaocaifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaocaixinxi`
--

DROP TABLE IF EXISTS `yaocaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaocaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yaocaibianhao` varchar(200) DEFAULT NULL COMMENT '药材编号',
  `yaocaimingcheng` varchar(200) DEFAULT NULL COMMENT '药材名称',
  `yaocaileixing` varchar(200) DEFAULT NULL COMMENT '药材类型',
  `yaocaikucun` int(11) DEFAULT NULL COMMENT '药材库存',
  `yaocaitupian` varchar(200) DEFAULT NULL COMMENT '药材图片',
  `yaocaijieshao` longtext COMMENT '药材介绍',
  `yaocaixiangqing` longtext COMMENT '药材详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaocaibianhao` (`yaocaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1605753166018 DEFAULT CHARSET=utf8 COMMENT='药材信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaocaixinxi`
--

LOCK TABLES `yaocaixinxi` WRITE;
/*!40000 ALTER TABLE `yaocaixinxi` DISABLE KEYS */;
INSERT INTO `yaocaixinxi` VALUES (1,'2020-11-19 02:25:14','药材编号1','药材名称1','药材类型1',1,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian1.jpg','药材介绍1','药材详情1',1,1,1,1),(2,'2020-11-19 02:25:14','药材编号2','药材名称2','药材类型2',2,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian2.jpg','药材介绍2','药材详情2',2,2,2,2),(3,'2020-11-19 02:25:14','药材编号3','药材名称3','药材类型3',3,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian3.jpg','药材介绍3','药材详情3',3,3,3,3),(1605753166017,'2020-11-19 02:32:45','20201119103225417','库存测试','药材类型1',548,NULL,'测试','<p>请输入药材详情</p>',0,0,200,200);
/*!40000 ALTER TABLE `yaocaixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19 10:37:10
