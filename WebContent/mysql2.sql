-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: zsxbishe
-- ------------------------------------------------------
-- Server version	5.5.39

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
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `author` varchar(45) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT ' ',
  `readnum` int(255) unsigned NOT NULL DEFAULT '0',
  `createtime` varchar(45) NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0,1,2,3',
  `imageurl` varchar(45) NOT NULL DEFAULT ' ',
  `articleurl` varchar(45) NOT NULL DEFAULT ' ' COMMENT '第三方文章的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article`
--

LOCK TABLES `t_article` WRITE;
/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
INSERT INTO `t_article` VALUES (1,'怀孕技巧篇：教你如何快速怀孕','如何快速怀孕？这是很多夫妻都想了解的一个问题，有一位女性朋友说，自己前几个月就准备怀孕了，可是一直未能如愿，其实，怀孕，是有技巧的，掌握技巧了，就可以增加怀孕几率，这里，主要介绍快速怀孕的一些方法，一起来看看吧。','AIYAMAYA',1000,'2017-01-07',0,'14a0000249023d043ecc.jpg',' '),(2,'造娃前一定要做的一件事，给备孕的父母看','孕前检查不同于常规体检，主要针对生殖系统和遗传因素。孕前3-6个月做检查，有问题及时解决。女方最好在月经干净后3-7天内进行，检查前3-5天不要同房。孕前检查最重要的是“致畸五项”检查（TORCH）。这五个字母分别对应弓形虫、其他病原微生物、风疹病毒、巨细胞病毒和单纯庖疹病毒。这些病原体通通可导致孕妇流产、死胎，即便胎儿幸存，出生后通常也有严重智力障碍。','今日头条',200,'2017-01-07',0,'14a0000249023d043ecc.jpg',' '),(3,'这些食物，怀孕女性不宜入口！','如果长期饮用咖啡，可能影响女性生理变化，在—定程度上可以改变女性体内雌、孕激素的比例，从而间接抑制受精卵在子宫内的着床和发育，同时对男性生育能力也会有一定影响。饮酒是造成婴儿畸形和智力迟钝的重要原因。酒精可以在没有任何阻碍的情况下通过胎盘而进入胎儿体内，使得胎儿体内的酒精浓度和母体内酒精浓度一样，并且酒精对大脑和心脏的危害非常大。这类食物中含有亚硝酸盐、苯丙芘等物质，经常食用可能会导致流产、早产等情况发生。','今日头条',0,'2017-01-07',1,'1419000693bfb65c3d18.jpg',' '),(4,'孕妇妈妈牢记7个临产前征兆，分娩前10大注意事项！','很多新妈妈在怀孕晚期十分担心，怕宝宝不知什么时候就出生，弄得自己措手不及。其实准妈妈们不用担心，从出现临产征兆到宝宝顺利分娩需要一个比较长的过程，因此了解临产前征兆十分必要，这样可以让孕妈妈及时就医。另外分娩前需要有什么注意事项呢？今天我们就一起来了解一下','AIYAMAYA',20,'2017-01-06',2,'14a200010bc999d452e5.jpg',' '),(5,'二哈在小宝宝面前假正经，没一会又开始逗逼了！','二哈在小宝宝面前假正经,没一会又开始逗逼了！\r\n二哈有时候会装的一本正经的样子，但是再怎么隐藏它也有着一颗二货的心。\r\n这不小宝宝就识破了它的假面具，两个好伙伴非常有爱的玩在了一起。\r\n这只哈士奇虽然守护着小宝宝，但是却摆着一副臭脸，似乎在说“让老子看孩子，老子很不爽！”\r\n然而面对着这样的哈士奇，小宝宝却展开了可爱的攻势，试图摘下它那酷酷的假面具。\r\n没想到一会儿二哈就缴械投降啦！\r\n“大材小用！非让伦家照顾这个小屁孩，真受不了......”','AIYAMAYA',2000,'2017-01-05',3,'135200077cf04ca885c9.jpg',' '),(6,'孕期常出现的两种腹痛，孕妈要区分清楚，第二种很危险','在怀孕之后，孕妈对于自己身体出现的异常情况都会比较敏感，发生不适之后都会十分紧张，怕伤到肚子里的宝宝。而在孕期，不少孕妈都曾经出现过不同程度的腹痛，可是有时候腹痛时紧急去医院医生却说没事，回去好好休息就行，有时候腹痛觉得不严重，想着休息休息就能好，却把孩子休息没了。这都是什么情况呢？','AIYAMAYA',100,'2017-01-06',1,'149c0004b06bb69b619c.jpg',' '),(7,'原来怀孕期间还有这么多的讲究','原来怀孕期间还有这么多的讲究','今日头条',1,'2017-01-07',1,'14a000023367593a8537.jpg',' '),(8,'为什么孕妇肚子上有一条黑线？可以判断生男生女吗？','年轻孕妈小可怀孕4个月了，最近照镜子，她惊讶地发现肚皮上出现了1道黑线！她赶紧去看了孕期5个月的闺蜜，但闺蜜肚子上却没有！\r\n她有点心慌，但又听很多老人家说那道线可以分辨男女宝：黑线偏左是男宝，偏右是女宝；黑线很直是男宝，有点弯是女宝。据说还很准呢！真的是这样吗？01孕肚上的“黑线”是怎么形成的？\r\n其实很多孕妈腹部中间都会出现的那道“黑线”叫“妊娠中线”\r\n（不过那时候是叫“白线”~）\r\n随着孕期的激素变化，色素细胞受到刺激、色素沉淀，原本的白线颜色加深；再加上肚子越来越大往外推，线条就变得更加明显了。','AIYAMAYA',1,'2017-01-05',1,'149f0007694c2ff7b816.jpg',' '),(9,'第一个月备孕，直接成功，幸福来得太突然','1.只在排卵期喝了两次黑豆豆浆，卵泡就发育的很好了。\r\n2.12月初准备开始要了就开始吃叶酸和维生素e了\r\n3.子宫后位用了抬屁股垫枕头的方法，但是好像是用反了\r\n4.基础体温每个人都不一样，我一度以为自己体温低，但是也好孕了，还是看自己，有三相变化就可以','海宝优孕课堂',100,'2017-01-06',0,'14210004510425521074.jpg',' '),(10,'一组超管用的备孕方法，不看后悔！','1、备孕\r\n首先去医院做孕前检查，妇科疾病还包括弓形虫（动物携带的容易导致流产和胎儿畸形，特别是喜欢养猫的）。\r\n其次提前三个月开始吃叶酸，最好老公也要吃维生素，一定要戒烟戒酒。\r\n最后有慢性的妇科疾病要提前治好，比如阴道炎、盆腔炎。不要过多的去医院做阴道冲洗。\r\n2、准备受孕\r\n去医院检测排卵，看看卵泡质量和自己的排卵日期，只有卵泡达到17以上才能受孕，指数越高质量越好。也可以自己用排卵试纸检测。','药趣事',200,'2017-01-07',0,'142200084e983b7c895f.jpg',' ');
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `postbarid` int(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `userphone` varchar(45) NOT NULL COMMENT '评论人的帐号',
  `nickname` varchar(45) NOT NULL COMMENT '评论人的昵称',
  `createtime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `t_comment_nums`
--

DROP TABLE IF EXISTS `t_comment_nums`;
/*!50001 DROP VIEW IF EXISTS `t_comment_nums`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `t_comment_nums` AS SELECT 
 1 AS `postbarid`,
 1 AS `commentcount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `t_contact`
--

DROP TABLE IF EXISTS `t_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contact` (
  `fromId` int(255) NOT NULL,
  `toId` int(255) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `timelong` int(100) NOT NULL,
  `isdelete` varchar(100) NOT NULL DEFAULT '0',
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contact`
--

LOCK TABLES `t_contact` WRITE;
/*!40000 ALTER TABLE `t_contact` DISABLE KEYS */;
INSERT INTO `t_contact` VALUES (12130311,12130310,'呵呵 ',1463734085,'0',1),(12130314,12130310,'赤果果 ',1463755760,'0',2),(12130314,12130315,'不容易啊 ',1444293500,'0',3),(12130313,12130310,'☆☆☆ ',1463755788,'1',4);
/*!40000 ALTER TABLE `t_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_feedback`
--

DROP TABLE IF EXISTS `t_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(100) NOT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `createTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_feedback`
--

LOCK TABLES `t_feedback` WRITE;
/*!40000 ALTER TABLE `t_feedback` DISABLE KEYS */;
INSERT INTO `t_feedback` VALUES (1,12130310,'太坏了','2015-10-27 20:32:33'),(2,4,'不好好','2015-10-27 20:45:57'),(3,4,'个hvv','2015-10-28 13:58:09'),(4,4,'陈','2016-03-21 19:28:27'),(5,4,'家家户户','2016-05-20 22:25:17');
/*!40000 ALTER TABLE `t_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_msg`
--

DROP TABLE IF EXISTS `t_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_msg` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fromId` int(255) NOT NULL,
  `toId` int(255) NOT NULL,
  `content` varchar(1024) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL,
  `timelong` int(255) NOT NULL,
  `isread` varchar(100) NOT NULL DEFAULT '0',
  `isdelete` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_msg`
--

LOCK TABLES `t_msg` WRITE;
/*!40000 ALTER TABLE `t_msg` DISABLE KEYS */;
INSERT INTO `t_msg` VALUES (1,12130310,12130311,'哈哈哈哈哈哈哈','2015-10-08 14:50:20',1444287020,'0','0'),(2,12130310,12130311,'哈哈哈哈哈哈哈','2015-10-08 14:52:35',1444287155,'0','0'),(3,1230310,12130311,'啦啦啦啦','2015-10-08 14:57:05',1444287425,'0','0'),(4,1230310,12130311,'吼吼狐火呼和','2015-10-08 15:04:36',1444287876,'0','0'),(5,12130310,12130311,'我爱你','2015-10-08 16:38:42',1444293522,'0','0'),(6,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:40:35',1444293635,'0','0'),(7,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:41:19',1444293679,'0','1'),(8,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:42:11',1444293731,'0','1'),(9,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:43:51',1444293831,'0','1'),(10,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:45:26',1444293926,'0','1'),(11,12130314,12130310,'哈哈哈哈哈哈哈','2015-10-08 16:48:01',1444294081,'0','1'),(12,12130310,12130311,'我爱你','2015-10-08 17:28:21',1444296501,'0','0'),(13,12130312,12130310,'啦啦啦啦','2015-10-08 19:27:08',1444303628,'0','0'),(14,12130313,12130310,'死22vsdnvonfov','2015-10-08 19:30:06',1444303806,'0','1'),(15,12130312,12130311,'啦啦啦啦','2015-10-08 19:32:09',1444303929,'0','0'),(16,12130311,12130314,'啦啦啦啦','2015-10-08 19:33:32',1444304012,'0','0'),(17,12130313,12130314,'巴拉拉','2015-10-08 19:35:38',1444304138,'0','0'),(18,12130312,12130315,'好难啊','2015-10-08 19:51:26',1444305086,'0','0'),(19,12130310,12130311,'做作业好难','2015-10-08 20:01:04',1444305664,'0','0'),(20,12130310,12130311,'难安安安那','2015-10-08 20:02:00',1444305720,'0','0'),(21,12130310,12130311,'男那喃喃','2015-10-08 20:03:44',1444305824,'0','0'),(22,12130310,12130311,'巴拉拉','2015-10-08 20:08:06',1444306086,'0','0'),(23,12130310,12130311,'哈哈哈哈哈哈哈','2015-10-08 20:15:54',1444293523,'0','0'),(24,12130312,12130315,'哈哈哈哈哈哈哈','2015-10-08 20:19:06',1444293523,'0','0'),(25,12130313,12130315,'哈哈哈哈哈哈哈','2015-10-08 20:20:18',1444293523,'0','0'),(37,12130314,12130315,'不容易啊','2015-10-08 21:19:43',1444310383,'0','0'),(27,12130310,12130311,'南岸安娜娜娜喃喃','2015-10-08 20:32:51',1444293500,'0','1'),(35,12130310,12130311,'不容易啊','2015-10-08 21:17:01',1444310221,'0','1'),(38,12130310,12130311,'好难啊','2015-10-08 21:20:25',1444310425,'0','1'),(39,12130310,12130314,'不容易啊','2015-10-08 21:22:42',1444310562,'0','1'),(40,12130311,12130310,'成功啦','2015-10-09 01:28:37',1444325317,'0','0'),(41,12130310,12130311,'哈哈哈哈哈我和你聊天','2015-10-09 11:29:47',1444361387,'0','0'),(42,12130311,12130310,'哈哈哈哈哈我也和你聊天','2015-10-09 11:30:09',1444361409,'0','0'),(43,12130311,12130310,'了了了了了','2015-10-09 12:19:47',1444364387,'0','0'),(44,12130311,12130310,'！！！！','2015-10-09 12:21:09',1444364469,'0','0'),(45,12130311,12130310,'。','2015-10-09 12:21:25',1444364485,'0','0'),(46,12130311,12130310,'。','2015-10-09 12:21:26',1444364486,'0','0'),(47,12130311,12130310,'？','2015-10-09 12:21:27',1444364487,'0','0'),(48,12130311,12130310,'。','2015-10-09 12:21:29',1444364489,'0','0'),(49,12130310,12130311,'健健康康啦啦啦','2015-10-09 12:22:51',1444364571,'0','0'),(50,12130310,12130311,'健健康康','2015-10-09 12:37:16',1444365436,'0','0'),(51,12130310,12130311,'咯哦哦哦快乐','2015-10-09 12:44:10',1444365850,'0','0'),(52,12130310,12130311,'哈哈','2015-10-09 12:49:35',1444366175,'0','0'),(53,12130310,12130311,'快乐','2015-10-09 12:49:40',1444366180,'0','0'),(54,12130311,12130310,'啦啦啦','2015-10-09 12:49:58',1444366198,'0','0'),(55,12130310,12130311,'尽可能','2015-10-09 12:59:47',1444366787,'0','0'),(56,12130310,12130314,'你有病？','2015-10-09 13:29:13',1444368553,'0','0'),(57,12130310,12130311,'类似啦宝宝','2015-10-09 13:29:42',1444368582,'0','0'),(58,12130310,12130311,'我的','2015-10-09 15:39:42',1444376382,'0','0'),(59,12130310,12130314,'嗯','2015-10-09 17:21:20',1444382480,'0','0'),(60,12130310,12130311,'？？？？？？','2015-10-10 09:55:51',1444442151,'0','0'),(61,12130313,12130310,'？？？？？','2015-10-10 12:02:21',1444449741,'0','1'),(62,12130313,12130310,'干嘛','2015-10-10 12:02:31',1444449751,'0','1'),(63,12130313,12130310,'哈哈','2015-10-10 17:46:00',1444470360,'0','1'),(64,12130310,12130313,'？？？','2015-10-10 17:49:12',1444470552,'0','1'),(65,12130310,12130311,'宝宝我来罗','2015-10-10 17:49:34',1444470574,'0','0'),(66,12130311,12130310,'哈哈','2015-10-11 09:46:19',1444527979,'0','0'),(67,12130310,12130311,'这是我吗？','2015-10-11 09:46:20',1444527980,'0','0'),(68,12130311,12130310,'对不起宝宝','2015-10-11 09:46:46',1444528006,'0','0'),(69,12130310,12130311,'为什么发不了表情','2015-10-11 09:46:53',1444528013,'0','0'),(70,12130310,12130311,'做的不好','2015-10-11 09:46:58',1444528018,'0','0'),(71,12130310,12130311,'做的不好','2015-10-11 09:46:58',1444528018,'0','0'),(72,12130311,12130310,'哦','2015-10-11 09:47:05',1444528025,'0','0'),(73,12130310,12130311,'对话框颜色可以改吗？','2015-10-11 09:47:09',1444528029,'0','0'),(74,12130311,12130310,'谢谢宝宝的意见我会努力的','2015-10-11 09:47:19',1444528039,'0','0'),(75,12130310,12130313,'狗东西','2015-10-11 09:47:45',1444528065,'0','1'),(76,12130310,12130314,'！！！','2015-10-11 23:54:01',1444578841,'0','0'),(77,12130310,12130313,'！！！','2015-10-12 00:01:49',1444579309,'0','0'),(78,12130310,12130313,'！！！','2015-10-12 10:34:25',1444617265,'0','0'),(79,12130310,12130313,'！！！','2015-10-12 10:39:27',1444617567,'0','0'),(80,12130310,12130311,'！！！','2015-10-12 10:39:36',1444617576,'0','0'),(81,12130310,12130311,'哈哈哈哈','2015-10-12 10:56:59',1444618619,'0','0'),(82,12130310,12130313,'我的天','2015-10-12 10:58:13',1444618693,'0','0'),(83,12130310,12130314,'哈哈哈','2015-10-12 11:04:54',1444619094,'0','0'),(84,12130310,12130314,'！！！','2015-10-12 11:07:05',1444619225,'0','0'),(85,12130310,12130313,'！！','2015-10-12 11:07:35',1444619255,'0','0'),(86,12130310,12130311,'什么','2015-10-12 11:33:25',1444620805,'0','0'),(87,12130310,12130313,'咯努力','2015-10-19 11:47:11',1445226431,'0','0'),(88,12130310,12130311,'哈哈','2016-03-21 19:27:32',1458559652,'0','0'),(89,12130310,12130311,'我还会做的更好的','2016-03-21 19:27:40',1458559660,'0','0'),(90,12130310,12130314,'是我的牵挂','2016-03-21 19:27:58',1458559678,'0','0'),(91,12130310,12130311,'你是我的爱人','2016-03-21 19:28:07',1458559687,'0','0'),(92,12130310,12130311,'哈哈','2016-04-20 15:03:13',1461135793,'0','0'),(93,12130310,12130311,'我都一个测了','2016-04-20 15:03:26',1461135806,'0','0'),(94,12130310,12130311,'加油','2016-04-20 15:03:35',1461135815,'0','0'),(95,12130310,12130311,'呵呵','2016-05-20 16:48:04',1463734084,'0','0'),(96,12130310,12130311,'呵呵','2016-05-20 16:48:05',1463734085,'0','0'),(97,12130310,12130314,'走着走着','2016-05-20 22:35:55',1463754955,'0','0'),(98,12130310,12130314,'赤果果','2016-05-20 22:49:20',1463755760,'0','0'),(99,12130310,12130313,'☆☆☆','2016-05-20 22:49:47',1463755787,'0','0');
/*!40000 ALTER TABLE `t_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_postbar`
--

DROP TABLE IF EXISTS `t_postbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_postbar` (
  `postbarid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userphone` varchar(45) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createtime` varchar(45) NOT NULL,
  `imageurl` varchar(45) NOT NULL,
  `orders` varchar(45) NOT NULL COMMENT '内容和图片的顺序关系，0代表文字1代表图片',
  PRIMARY KEY (`postbarid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_postbar`
--

LOCK TABLES `t_postbar` WRITE;
/*!40000 ALTER TABLE `t_postbar` DISABLE KEYS */;
INSERT INTO `t_postbar` VALUES (3,'15651071230','还是自己计算机等级大酒店','还在继续金都酒店酒店[媚眼][哼哼][刺瞎][难过][刺瞎]<&;&>','2017-01-21 16:47:54','','0,'),(4,'15651071230','发个回家近近景近景发广告','GG哈哈哈哈呼呼呼呼[忧郁][媚眼][害羞][难过]<&;&>','2017-01-21 16:49:21','','0,'),(5,'18251986780','陈赫胡歌过函谷关哈哈哈','','2017-01-21 16:56:05','1484988964956.png,','1,0,'),(6,'15651071230','家电家具世纪大酒店锦江大酒店就','九转金身决介绍介绍介绍<&;&>','2017-01-23 10:00:56','1485136856137.png<&;&>','0,1,0,'),(7,'15651071230','东方医院好好养好CF广告','','2017-01-23 10:18:24','1485137904628.png<&;&>','1,0,'),(8,'15651071230','东方给哈哈哈哈哈哈唱歌vv哥哥','香港恍恍惚惚法国红酒<&;&>','2017-01-23 10:23:07','','0,'),(9,'15651071230','发给哈哈哈发发发沟沟壑壑好','v嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎<&;&>','2017-01-23 10:23:17','','0,'),(10,'18251986780','废话i看见个发个广告哈哈哈哈哈','发个刚好回家<&;&>','2017-01-23 10:30:55','1485138655248.png<&;&>','0,1,0,'),(11,'18251986780','发个红几ii任反反复复','发个回家近近景近景姐姐<&;&>','2017-01-23 10:32:35','','0,'),(12,'18251986780','TF郭回家看看叫爸爸你们几号','长长久久陈反反复复<&;&>','2017-01-23 10:32:46','','0,'),(13,'18251986780','房管局开会v法国红酒哈哈哈','','2017-01-23 10:33:06','1485138786135.png<&;&>','1,0,'),(14,'18251986780','穿几件很过分沟沟壑壑','','2017-01-23 10:33:49','1485138829386.png<&;&>','1,0,'),(15,'18251986780','郭皇家公馆哈哈哈哈哈','','2017-01-23 10:38:39','1485139119234.png<&;&>','1,1,0,'),(16,'15651071230','你到家就是就是见识见识就睡觉','[害羞][害羞][哼哼]<&;&>','2017-02-14 14:51:16','','0,'),(17,'15651071230','见识见识计算机三级你说几点就是','见识见识就睡觉<&;&>','2017-02-14 14:51:51','1487055111325.png<&;&>','0,1,1,0,'),(18,'15651071230','好想你你在哪点你是男的女的','[媚眼][哼哼][刺瞎]<&;&>','2017-02-14 15:21:45','','0,'),(19,'15651071230','冯哈哈哈v出差vv个','[哭][激动][媚眼][累][累]<&;&>法国红酒呵呵<&;&>','2017-02-14 16:14:37','1487060077056.png<&;&>','0,1,0,'),(20,'15651071230','电饭锅红巨星滚滚滚乳房','','2017-02-14 16:15:14','1487060114225.png<&;&>','1,1,0,'),(21,'15651071230','见识见识就睡觉就是就是','','2017-02-14 17:10:14','1487063414575.png<&;&>','1,1,0,'),(22,'18251986780','刚回到家大家觉得家电家具店','','2017-02-14 17:50:52','1487065844107.png<&;&>','1,0,');
/*!40000 ALTER TABLE `t_postbar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_praise`
--

DROP TABLE IF EXISTS `t_praise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_praise` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `postbarId` int(255) NOT NULL,
  `userphone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_praise`
--

LOCK TABLES `t_praise` WRITE;
/*!40000 ALTER TABLE `t_praise` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_praise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `t_praise_nums`
--

DROP TABLE IF EXISTS `t_praise_nums`;
/*!50001 DROP VIEW IF EXISTS `t_praise_nums`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `t_praise_nums` AS SELECT 
 1 AS `postbarid`,
 1 AS `praisecount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `t_token`
--

DROP TABLE IF EXISTS `t_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userphone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `createtime` mediumtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_token`
--

LOCK TABLES `t_token` WRITE;
/*!40000 ALTER TABLE `t_token` DISABLE KEYS */;
INSERT INTO `t_token` VALUES (14,'15651071230','7c:1d:d9:61:13:5a9YL9405QED36K43N','1487064144470'),(15,'18251986780','7c:1d:d9:61:13:5a806PDLPRCW4FJQIJ','1487064519275');
/*!40000 ALTER TABLE `t_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `stuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userphone` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `createtime` varchar(45) NOT NULL,
  `lastupdatetime` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL DEFAULT '南京',
  `birthday` varchar(45) DEFAULT NULL,
  `sex` varchar(45) NOT NULL DEFAULT '女',
  `headurl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stuid`,`userphone`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (9,'18251986780','12345678','18251986780','2017-01-04 17:19:25','1485138619619','备孕','南京',NULL,'女','1485138619576.png'),(10,'15651071230','123456789','小航航','2017-01-04 17:28:43','1487055007992','唱歌喝酒','南京','','女','1487055007883.png'),(11,'15651071237','12345678','15651071237','2017-01-07 17:49:08',NULL,'怀孕','南京',NULL,'女',NULL),(12,'15651071330','123456789','唐僧洗头用几时帮','2017-01-07 17:50:42','1483782775743','备孕','南京','','女','1483782775668.png'),(13,'15651071232','12345678','航航','2017-01-07 17:57:48','1483783125805','备孕','南京','','女','1483783105461.png'),(14,'18251986782','123456789','唐僧','2017-01-11 10:07:05','1484124970169','怀孕','南京','','女','1484124969987.png');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `t_comment_nums`
--

/*!50001 DROP VIEW IF EXISTS `t_comment_nums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `t_comment_nums` AS (select `t_comment`.`postbarid` AS `postbarid`,count(`t_comment`.`id`) AS `commentcount` from `t_comment` group by `t_comment`.`postbarid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `t_praise_nums`
--

/*!50001 DROP VIEW IF EXISTS `t_praise_nums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `t_praise_nums` AS (select `t_praise`.`postbarId` AS `postbarid`,count(`t_praise`.`id`) AS `praisecount` from `t_praise` group by `t_praise`.`postbarId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-14 17:58:11
