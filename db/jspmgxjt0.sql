-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmgxjt0
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735191529 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-03 00:37:32',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-03 00:37:32',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-03 00:37:32',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-03 00:37:32',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-03 00:37:32',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-03 00:37:32',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614735191528,'2021-03-03 01:33:10',1614735097043,'广东省揭阳市榕城区东兴街道玉田颐乐园','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735258582 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmgxjt0/upload/1614735054473.jpg'),(2,'picture2','http://localhost:8080/jspmgxjt0/upload/1614735061025.jpg'),(3,'picture3','http://localhost:8080/jspmgxjt0/upload/1614735067699.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735381030 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (51,'2021-03-03 00:37:32','订单编号1','商品名称1','商品分类1','品牌1','1','http://localhost:8080/jspmgxjt0/upload/1614734449729.jpg','评价内容1','2021-03-03','用户名1','是',''),(52,'2021-03-03 00:37:32','订单编号2','商品名称2','商品分类2','品牌2','1','http://localhost:8080/jspmgxjt0/upload/dingdanpingjia_tianjiatupian2.jpg','评价内容2','2021-03-03','用户名2','是',''),(53,'2021-03-03 00:37:32','订单编号3','商品名称3','商品分类3','品牌3','1','http://localhost:8080/jspmgxjt0/upload/1614734456603.jpg','评价内容3','2021-03-03','用户名3','是',''),(54,'2021-03-03 00:37:32','订单编号4','商品名称4','商品分类4','品牌4','1','http://localhost:8080/jspmgxjt0/upload/1614734463858.jpg','评价内容4','2021-03-03','用户名4','是',''),(55,'2021-03-03 00:37:32','订单编号5','商品名称5','商品分类5','品牌5','1','http://localhost:8080/jspmgxjt0/upload/dingdanpingjia_tianjiatupian5.jpg','评价内容5','2021-03-03','用户名5','是',''),(56,'2021-03-03 00:37:32','订单编号6','商品名称6','商品分类6','品牌6','1','http://localhost:8080/jspmgxjt0/upload/1614734473638.jpg','评价内容6','2021-03-03','用户名6','是',''),(1614735381029,'2021-03-03 01:36:20','2021339343585252617','飞利浦折叠熨斗机','家居电器','飞利浦','5','http://localhost:8080/jspmgxjt0/upload/1614735369180.jpg','很不错的熨斗','2021-03-03','1','是','感谢支持');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (121,'2021-03-03 00:37:32',1,1,'评论内容1','回复内容1'),(122,'2021-03-03 00:37:32',2,2,'评论内容2','回复内容2'),(123,'2021-03-03 00:37:32',3,3,'评论内容3','回复内容3'),(124,'2021-03-03 00:37:32',4,4,'评论内容4','回复内容4'),(125,'2021-03-03 00:37:32',5,5,'评论内容5','回复内容5'),(126,'2021-03-03 00:37:32',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735442393 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-03-03 00:37:32',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-03 00:37:32',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-03 00:37:32',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-03 00:37:32',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-03 00:37:32',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-03 00:37:32',6,'用户名6','留言内容6','回复内容6'),(1614735442392,'2021-03-03 01:37:22',1614735097043,'1','熨斗机发热严重正常吗','初使用是正常的');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614734947795 DEFAULT CHARSET=utf8 COMMENT='商品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-03 00:37:32','标题1','简介1','http://localhost:8080/jspmgxjt0/upload/1614734484712.jpg','内容1\r\n'),(102,'2021-03-03 00:37:32','标题2','简介2','http://localhost:8080/jspmgxjt0/upload/1614734490630.jpg','内容2\r\n'),(103,'2021-03-03 00:37:32','标题3','简介3','http://localhost:8080/jspmgxjt0/upload/1614734496524.jpg','内容3\r\n'),(104,'2021-03-03 00:37:32','标题4','简介4','http://localhost:8080/jspmgxjt0/upload/1614734501575.jpg','内容4\r\n'),(105,'2021-03-03 00:37:32','标题5','简介5','http://localhost:8080/jspmgxjt0/upload/1614734507634.jpg','内容5\r\n'),(106,'2021-03-03 00:37:32','标题6','简介6','http://localhost:8080/jspmgxjt0/upload/1614734514996.jpg','内容6\r\n'),(1614734947794,'2021-03-03 01:29:07','商品优惠资讯','商品优惠','http://localhost:8080/jspmgxjt0/upload/1614734919912.jpg','全场电器参与满300减40的优惠活动\r\n上不封顶\r\n<img src=\"http://localhost:8080/jspmgxjt0/upload/1614734946321.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmgxjt0/upload/1614734946321.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1614735277540 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614735277539,'2021-03-03 01:34:37','2021339343585252617','shangpinxinxi',1614735097043,1614734896706,'飞利浦折叠熨斗机','http://localhost:8080/jspmgxjt0/upload/1614734821902.jpg',2,299,299,598,598,1,'已完成','广东省揭阳市榕城区东兴街道玉田颐乐园');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinpai`
--

DROP TABLE IF EXISTS `pinpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpai` (`pinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1614734799922 DEFAULT CHARSET=utf8 COMMENT='品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinpai`
--

LOCK TABLES `pinpai` WRITE;
/*!40000 ALTER TABLE `pinpai` DISABLE KEYS */;
INSERT INTO `pinpai` VALUES (31,'2021-03-03 00:37:32','品牌1'),(32,'2021-03-03 00:37:32','品牌2'),(33,'2021-03-03 00:37:32','品牌3'),(34,'2021-03-03 00:37:32','品牌4'),(35,'2021-03-03 00:37:32','品牌5'),(36,'2021-03-03 00:37:32','品牌6'),(1614734644206,'2021-03-03 01:24:03','西门子'),(1614734799921,'2021-03-03 01:26:39','飞利浦');
/*!40000 ALTER TABLE `pinpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614734792315 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (21,'2021-03-03 00:37:32','制冷电器'),(22,'2021-03-03 00:37:32','清洁电器'),(23,'2021-03-03 00:37:32','厨房电器'),(24,'2021-03-03 00:37:32','电暖器具'),(1614734792314,'2021-03-03 01:26:32','家居电器');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614734896707 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-03-03 00:37:32','商品编号1','商品名称1','制冷电器','http://localhost:8080/jspmgxjt0/upload/1614734379092.jpg','品牌1','规格1','商品详情1\r\n','2021-03-03 09:33:27',4,99.9),(42,'2021-03-03 00:37:32','商品编号2','商品名称2','厨房电器','http://localhost:8080/jspmgxjt0/upload/1614734389475.jpg','品牌2','规格2','商品详情2\r\n','2021-03-03 09:19:43',4,99.9),(43,'2021-03-03 00:37:32','商品编号3','商品名称3','厨房电器','http://localhost:8080/jspmgxjt0/upload/1614734398852.jpg','品牌3','规格3','商品详情3\r\n','2021-03-03 09:19:53',5,99.9),(44,'2021-03-03 00:37:32','商品编号4','商品名称4','清洁电器','http://localhost:8080/jspmgxjt0/upload/1614734409383.jpg','品牌4','规格4','商品详情4\r\n','2021-03-03 09:33:32',11,99.9),(45,'2021-03-03 00:37:32','商品编号5','商品名称5','清洁电器','http://localhost:8080/jspmgxjt0/upload/1614734424520.jpg','品牌5','规格5','商品详情5\r\n','2021-03-03 09:20:13',7,99.9),(46,'2021-03-03 00:37:32','商品编号6','商品名称6','电暖器具','http://localhost:8080/jspmgxjt0/upload/1614734439511.jpg','品牌6','规格6','商品详情6\r\n','2021-03-03 09:20:29',8,99.9),(1614734896706,'2021-03-03 01:28:16','1614734802','飞利浦折叠熨斗机','家居电器','http://localhost:8080/jspmgxjt0/upload/1614734821902.jpg','飞利浦','浅绿色','<img src=\"http://localhost:8080/jspmgxjt0/upload/1614734894471.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmgxjt0/upload/1614734894471.jpg\">\r\n','2021-03-03 09:34:37',3,299);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735256899 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','bt0dn1bojh47o6co0ere8mil1op7zwx5','2021-03-03 00:38:01','2021-03-03 02:37:36'),(2,11,'用户1','yonghu','用户','wqr8hjiejlqjiwcy5yj53f1n0wuq4gin','2021-03-03 01:13:58','2021-03-03 02:13:58'),(3,1614735097043,'1','yonghu','用户','w6nbjmdrb2q5jup2fe01nvk8qcw995re','2021-03-03 01:32:23','2021-03-03 02:36:41');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-03 00:37:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614735097044 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-03 00:37:32','用户1','123456','姓名1','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-03 00:37:32','用户2','123456','姓名2','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-03 00:37:32','用户3','123456','姓名3','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-03 00:37:32','用户4','123456','姓名4','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-03 00:37:32','用户5','123456','姓名5','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-03 00:37:32','用户6','123456','姓名6','http://localhost:8080/jspmgxjt0/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1614735097043,'2021-03-03 01:31:37','1','1','陈一','http://localhost:8080/jspmgxjt0/upload/1614735156292.jpg','女','12312312312',1402);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 16:03:37
