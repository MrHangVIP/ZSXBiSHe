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
-- Table structure for table `t_chat`
--

DROP TABLE IF EXISTS `t_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_chat` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `stuId` int(100) NOT NULL,
  `createTime` datetime NOT NULL,
  `timelong` int(255) NOT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `imageUrl` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_chat`
--

LOCK TABLES `t_chat` WRITE;
/*!40000 ALTER TABLE `t_chat` DISABLE KEYS */;
INSERT INTO `t_chat` VALUES (1,12130311,'2015-10-03 13:25:37',0,'hhahah','/image/2015921162221.jpg'),(2,12130310,'2015-10-03 00:00:00',0,'lal','/image/2015921162221.jpg'),(3,12130310,'2015-10-03 13:35:16',1443850516,'哈哈哈哈哈哈哈','/image/2015921162221.jpg'),(4,12130310,'2015-10-03 13:38:47',1443850727,'哈哈哈哈哈哈哈','/image/2015921162221.jpg'),(5,12130310,'2015-10-04 11:02:56',1443927776,'健健康康','/image/2015921162221.jpg'),(6,12130310,'2015-10-04 11:06:40',1443928000,'哈哈哈哈','/image/2015921162221.jpg'),(7,12130310,'2015-10-05 09:55:08',1444010108,'每天一天','/image/2015921162221.jpg'),(8,12130310,'2015-10-05 16:16:37',1444032997,'呵呵呵地','/image/2015921162221.jpg'),(9,12130310,'2015-10-05 22:09:56',1444054196,'图片好难加载','  '),(10,12130310,'2015-10-06 21:24:09',1444137849,'有些了一点','  '),(11,12130310,'2015-10-08 11:41:32',1444275692,'拉哈哈','  '),(12,12130310,'2015-10-09 01:44:59',1444326299,'我把聊天写了！花了一天！','  '),(13,12130310,'2015-10-09 12:23:59',1444364639,'健健康康','  '),(14,12130310,'2015-10-10 10:33:38',1444444418,'要去学校见宝宝了！','  '),(15,12130313,'2015-10-10 12:01:14',1444449674,'呵呵呵','  '),(16,12130311,'2015-10-11 09:58:41',1444528721,'啦啦啦啊','  '),(17,12130310,'2015-10-11 21:45:28',1444571128,'ghjjjj ',' /image/20151011214528.jpg '),(18,12130310,'2015-10-11 21:47:29',1444571249,'hjkk ','  '),(19,12130310,'2015-10-11 21:47:59',1444571279,'ghjjk ','  '),(20,12130310,'2015-10-11 21:57:37',1444571857,'13130310',' /image/20151011215737.jpg '),(21,12130310,'2015-10-11 22:19:41',1444573181,'hhuuj ',' /image/20151011221941.jpg '),(22,12130310,'2015-10-11 22:22:05',1444573325,'jgtfkyddghj ',' /image/2015101122225.jpg '),(23,12130310,'2015-10-11 22:26:49',1444573609,'hjj ','  '),(24,12130310,'2015-10-11 22:27:29',1444573649,'hjkjfxjy ',' /image/20151011222729.jpg '),(25,12130310,'2015-10-11 22:44:47',1444574687,'图片去啊',' /image/20151011224447.jpg '),(26,12130310,'2015-10-11 22:47:32',1444574852,'哈哈，沉痛共啦',' /image/20151011224732.jpg '),(27,12130310,'2015-10-19 11:46:28',1445226388,'没事干来一发','  '),(28,12130310,'2015-10-27 16:25:58',1445934358,'在来一发','  '),(29,12130310,'2016-03-14 20:36:43',1457959003,'我有回来啦','  '),(30,12130310,'2016-03-14 20:37:14',1457959034,'九块九','  '),(31,12130310,'2016-03-21 19:32:26',1458559946,'呆呆','  '),(32,12130310,'2016-03-21 19:33:13',1458559993,'你回来','  '),(33,12130310,'2016-03-21 19:35:20',1458560120,'爱你','  '),(34,12130310,'2016-03-21 19:35:45',1458560145,'爱你',' /image/2016321193545.jpg '),(35,12130310,'2016-04-20 12:45:39',1461127539,'大家好！',' /image/2016420124539.jpg '),(36,12130310,'2016-04-20 12:47:36',1461127656,'哈哈哈',' /image/2016420124736.jpg '),(37,12130310,'2016-04-20 13:11:50',1461129110,'我也是你如果',' /image/2016420131150.jpg ');
/*!40000 ALTER TABLE `t_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `postbarId` int(100) NOT NULL,
  `stuId` int(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `timelong` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` VALUES (1,3,12130310,'啦啦啦啦','2015-10-03 14:05:01',1443852301),(2,3,12130311,'吼吼狐火呼和','2015-10-03 14:10:32',1443852632),(3,3,12130310,'不容易啊','2015-10-10 10:51:32',1444445492),(4,14,12130310,'评论','2015-10-10 11:03:59',1444446239),(5,13,12130310,'评论','2015-10-10 11:05:47',1444446347),(6,14,12130313,'评论','2015-10-10 11:10:14',1444446614),(7,14,12130313,'哈哈','2015-10-10 11:14:06',1444446846),(8,14,12130310,'笑屁！','2015-10-10 17:48:40',1444470520),(9,12,12130310,'哟呵⊙▽⊙','2015-10-11 09:43:07',1444527787),(10,25,12130310,'替我','2016-03-14 20:41:10',1457959270),(11,3,12130310,'佩服','2016-03-21 19:29:03',1458559743),(12,3,12130310,'佩服','2016-03-21 19:29:09',1458559749),(13,30,12130310,'春天花会开','2016-03-21 19:31:38',1458559898),(14,37,12130310,'哈哈','2016-04-20 15:00:43',1461135643),(15,37,12130310,'哈哈','2016-04-20 15:00:51',1461135651),(16,37,12130310,'真好玩','2016-04-20 15:01:00',1461135660),(17,37,12130310,'就','2016-05-20 22:26:45',1463754405),(18,6,12130310,'生生世世S','2016-05-20 23:18:08',1463757488);
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
 1 AS `postbarId`,
 1 AS `commentCount`*/;
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
-- Table structure for table `t_fcard`
--

DROP TABLE IF EXISTS `t_fcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_fcard` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `stuId` int(255) NOT NULL,
  `fcardId` int(255) NOT NULL,
  `mcardId` int(255) NOT NULL,
  `fmoney` varchar(255) NOT NULL DEFAULT '0',
  `money` varchar(255) NOT NULL DEFAULT '1000000',
  `password` varchar(255) NOT NULL DEFAULT '111111',
  `isloss` varchar(100) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`stuId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fcard`
--

LOCK TABLES `t_fcard` WRITE;
/*!40000 ALTER TABLE `t_fcard` DISABLE KEYS */;
INSERT INTO `t_fcard` VALUES (12,12130314,557994444,2147483647,'0','1000000','111111','0','宋啦啦啦'),(11,12130311,1091727990,1798616600,'0','1000000','111111','0','钟淑贤'),(10,12130310,1471275350,1241450896,'595775','404225','591546','0','宋智航'),(13,12130315,363909450,2031206632,'0','1000000','111111','0','宋开明'),(14,12130312,655036848,1079175360,'0','1000000','111111','0','宋开明'),(15,12130313,824861284,881749776,'100','999900','111111','0','大表哥');
/*!40000 ALTER TABLE `t_fcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_fcardrecord`
--

DROP TABLE IF EXISTS `t_fcardrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_fcardrecord` (
  `cardId` int(255) NOT NULL,
  `addmoney` varchar(255) DEFAULT '0',
  `decreasemoney` varchar(255) DEFAULT '0',
  `time` datetime NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `money` varchar(255) NOT NULL DEFAULT '0',
  `timelong` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fcardrecord`
--

LOCK TABLES `t_fcardrecord` WRITE;
/*!40000 ALTER TABLE `t_fcardrecord` DISABLE KEYS */;
INSERT INTO `t_fcardrecord` VALUES (1471275350,'500','0','2015-09-24 00:18:18',12,'1500',0),(0,'0','0','2015-09-24 00:01:31',11,'0',0),(1471275350,'500','0','2015-09-28 14:19:06',16,'3601',1443421146),(1471275350,'800','0','2015-09-24 09:16:06',13,'2300',0),(1471275350,'800','0','2015-09-24 09:21:41',14,'3100',1443057701),(1471275350,'1','0','2015-09-24 09:46:45',15,'3101',1443059205),(1471275350,'100','0','2015-09-28 14:33:38',17,'3701',1443422018),(1471275350,'591546','0','2015-09-28 14:36:10',18,'595247',1443422170),(1471275350,'1','0','2015-09-28 14:53:10',19,'595248',1443423190),(1471275350,'100','0','2015-09-28 15:14:30',20,'595348',1443424470),(1471275350,'1','0','2015-09-28 15:26:27',21,'595349',1443425187),(1471275350,'1','0','2015-09-28 15:30:28',22,'595350',1443425428),(1471275350,'100','0','2015-10-03 10:17:15',23,'595450',1443838635),(1471275350,'10','0','2015-10-06 21:09:27',24,'595460',1444136967),(1471275350,'25','0','2015-10-06 21:24:37',25,'595485',1444137877),(824861284,'100','0','2015-10-10 17:44:41',26,'100',1444470281),(1471275350,'188','0','2015-10-19 11:48:26',27,'595673',1445226506),(1471275350,'1','0','2016-05-20 22:18:22',28,'595674',1463753902),(1471275350,'100','0','2016-05-20 22:18:39',29,'595774',1463753919),(1471275350,'1','0','2016-05-21 10:42:38',30,'595775',1463798558);
/*!40000 ALTER TABLE `t_fcardrecord` ENABLE KEYS */;
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
-- Table structure for table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_news` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `timelong` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  `readnum` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_news`
--

LOCK TABLES `t_news` WRITE;
/*!40000 ALTER TABLE `t_news` DISABLE KEYS */;
INSERT INTO `t_news` VALUES (1,'习近平主席9月下旬对美国进行国事访问期间，与奥巴马总统就亚太地区事务、国际与地区问题以及全球性挑战等深入交换了意见，达成了广泛共识。中美国际合作闪耀多个新亮点，不仅使中美两国受惠，也使世界受益。中美携手支持阿富汗和平重建日前，第四届“美中合作培训阿富汗外交官美方培训班”开班仪式在美国举行。中国外长王毅表示，中美合作培训阿外交官项目增进了中美阿三方的相互了解，体现了国际社会支持阿和平重建的共同努力，是中美在第三国合作的成功范例。中美两国还在纽约联合主持阿富汗重建与区域合作高级别会议，为阿富汗政府和地区经济合作继续提供强有力的国际支持。','习主席访美打造中美国际合作新亮点','2015-10-01 15:06:24',1443683184,'1','/image/1443683184.jpg','39'),(2,'新华网北京10月5日电（记者王思北、吴晶）“青蒿素是传统中医药送给世界人民的礼物，对防治疟疾等传染性疾病、维护世界人民健康具有重要意义。青蒿素的发现是集体发掘中药的成功范例，由此获奖是中国科学事业、中医中药走向世界的一个荣誉。”这是5日晚间，刚刚摘取2015年诺贝尔生理学或医学奖的中国女药学家屠呦呦，通过前往看望她的有关部门负责同志，向外界表达的获奖感言。2015年10月5日北京时间17时30分，瑞典卡罗琳医学院在斯德哥尔摩宣布将2015年诺贝尔生理学或医学奖授予中国女药学家屠呦呦，以及另外两名科学家威廉·坎贝尔和大村智，表彰他们在寄生虫疾病治疗研究方面取得的成就。当晚，受有关党和国家领导人委托，国家卫生计生委副主任、国家中医药管理局局长王国强和中国科协党组书记尚勇前往屠呦呦家中表示祝贺','屠呦呦：青蒿素是传统中医药送给世界人民礼物','2015-10-02 15:12:34',1443770004,'1','/image/1443770004.jpg','22'),(3,'世界记忆工程国际咨询委员会第12次会议4日在阿联酋阿布扎比开幕，与会成员将在3天内评审全球各国约90项关于世界记忆遗产的提名，其中包括中国申报的南京大屠杀和日军强征慰安妇相关资料。这一委员会是联合国教科文组织下设机构，此次会议旨在审议各国申报项目，并向联合国教科文组织总干事提出建议。在得到后者认可后，相关项目将正式列入《世界记忆名录》。','南京大屠杀申遗开始评审 日方要求撤回遭拒绝','2015-10-03 15:18:27',1443856704,'1','/image/1443856704.jpg','4'),(4,'黄金周期间，号称“艳遇之都”的丽江古城游人如织。不过，来自深圳的游客阿鹏对澎湃新闻（www.thepaper.cn）记者称，他来丽江旅游却遭遇了酒托，被坑5000元。\n阿鹏称，有名女子通过手机软件向他打招呼，自称游客，说发呆寂寞想喝酒，互加好友后，阿鹏被两个女子带往一个酒吧，点了6瓶红酒，消费5000元，最后开房洗澡出来时不见人，对方失联。\n阿鹏的遭遇并非孤例。根据游客、丽江当地出租车司机、客栈老板等反映，丽江“艳遇”走向低俗的背后，是酒托打着寻找“艳遇”的名义在谋利欺诈游客，现象较为普遍。2015年7月丽江就曾设立联合调查组排查酒托，并处理了两家酒吧。\n为印证阿鹏等人的说法，此次黄金周期间，澎湃新闻（www.thepaper.cn）记者对丽江大研古城进行了暗访。\n','媒体曝丽江女酒托内幕：寂寞求结伴 喝完酒失联','2015-10-04 15:18:27',1443943104,'1','/image/1443943104.jpg','17'),(5,'国家主席习近平对美国进行的国事访问，达成的重要成果主要有49项。其中，第11项为技术合作方面的成果。\n技术合作是两个国家之间非常重要的方面。对于中美两个经济大国而言，如果没有技术方面的合作，很难称得上是真正的合作。但从实际情况来看，中美两国在技术方面的合作还是滞后于其他方面。原因就在于，美方设置了许多针对中国的技术壁垒，导致中国很难通过合作获得美国在技术方面的支持和帮助。\n对于中国来说，加大自主创新力度，当然是一项重要的工作。但如果完全关起门来自己搞，不仅效率会受到限制，投入也会更大。而如果能够通过转让与消化的方式引进国外先进技术，就可以大大提高经济结构调整与转型升级的速度和效率，从而使经济更快地步入新的发展阶段。\n也正因为如此，中国需要加强与美国等西方发达国家的沟通与协调，争取其在技术出口与转让等方面的支持，逐步消除技术壁垒。\n习近平主席此次访美，获得的重大成果之一，就是在技术合作方面取得重要进展。成果清单显示，双方共在6个方面达成了共识。这基本涵盖了目前技术出口与转让、技术保护和技术运用等各方面的内容，不仅有利于中国通过转让获得更多先进技术，而且有利于增强中国企业的技术保护意识。\n','国平：习近平访美促中美技术合作取得重要进展','2015-10-05 15:18:27',1444029504,'1','/image/1444029504.jpg','46');
/*!40000 ALTER TABLE `t_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_phone`
--

DROP TABLE IF EXISTS `t_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_phone` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fname` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT '',
  `phone` varchar(256) NOT NULL,
  `sonphone` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_phone`
--

LOCK TABLES `t_phone` WRITE;
/*!40000 ALTER TABLE `t_phone` DISABLE KEYS */;
INSERT INTO `t_phone` VALUES (1,'教育学院','艺训中心','86178809',''),(2,'教育学院','教务办','86178383',''),(3,'教育学院','综合办','86178205',''),(4,'文学院','综合办','86178245',''),(5,'文学院','教务办','86178233',''),(6,'文学院','团学办','86178246',''),(7,'外国语','团学办','86178235',''),(8,'外国语','教务办','86178237',''),(9,'外国语','综合办','86178238',''),(10,'经管院','综合办','86178343',''),(11,'经管院','教务办','86178244',''),(12,'经管院','团学办','86178240',''),(13,'社发院','教务办','86178504',''),(14,'社发院','综合办','86178503',''),(15,'社发院','团学办','86178505',''),(16,'社发院','调查中心','86178507',''),(17,'物电院','教务办','861785342',''),(18,'物电院','团学办','861785256',''),(19,'物电院','综合办','861785255',''),(20,'物电院','教师办','861785254',''),(21,'数信院','综合办、教师办','86178280',''),(22,'数信院','微软中心','86178329',''),(23,'数信院','实验室','86178250',''),(24,'数信院','团学办','86178281',''),(25,'体育学院','团学办','86178367',''),(26,'体育学院','教师办','86178363',''),(27,'体育学院','综合办','86178362',''),(28,'生化环院','综合办','86178264',''),(29,'生化环院','团学办','86178273',''),(30,'生化环院','教师办','86178274',''),(31,'生化环院','实验中心','86178270',''),(32,'音乐学院','综合办','86178220',''),(33,'音乐学院','团学办','86178219',''),(34,'美术学院','团学办','86178374',''),(35,'美术学院','实验室','86178375',''),(36,'美术学院','综合办、教师办','86178373',''),(37,'行知学院','综合办','86178310',''),(38,'行知学院','团学办','86178307',''),(39,'行知学院','实验室','86178311',''),(40,'行知学院','教务办','86178303','');
/*!40000 ALTER TABLE `t_phone` ENABLE KEYS */;
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
  `stuId` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_praise`
--

LOCK TABLES `t_praise` WRITE;
/*!40000 ALTER TABLE `t_praise` DISABLE KEYS */;
INSERT INTO `t_praise` VALUES (16,3,12130310),(4,6,12130310),(3,5,12130310),(7,7,12130310),(8,4,12130310),(17,9,12130310),(46,11,12130310),(23,12,12130311),(28,12,12130310),(25,9,12130311),(26,6,12130311),(27,4,12130311),(29,1,12130310),(30,14,12130310),(31,15,12130313),(33,12,12130313),(34,14,12130313),(37,15,12130310),(39,13,12130310),(40,15,12130311),(41,14,12130311),(42,10,12130311),(43,11,12130311),(44,20,12130310),(47,27,12130310),(48,28,12130310),(50,25,12130310),(56,31,12130310),(52,10,12130310),(57,32,12130310),(58,29,12130310),(59,26,12130310),(60,34,12130310),(61,35,12130310),(62,37,12130310),(63,36,12130310),(64,18,12130310),(67,17,12130310),(68,16,12130310);
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
 1 AS `postbarId`,
 1 AS `praiseCount`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_token`
--

LOCK TABLES `t_token` WRITE;
/*!40000 ALTER TABLE `t_token` DISABLE KEYS */;
INSERT INTO `t_token` VALUES (21,'18251986780','7c:1d:d9:61:13:5a6A88829G9827E14J','1483668854431'),(34,'15651071230','7c:1d:d9:61:13:5aN118PDS3U4FMOB9D','1483700081140');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (9,'18251986780','12345678','18251986780','2017-01-04 17:19:25',NULL,'备孕','南京',NULL,'女','image/splash.png'),(10,'15651071230','123456789','呼救','2017-01-04 17:28:43','1483701338527','好纠结','南京','','女','1483701836804.png');
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
/*!50001 VIEW `t_comment_nums` AS (select `t_comment`.`postbarId` AS `postbarId`,count(`t_comment`.`id`) AS `commentCount` from `t_comment` group by `t_comment`.`postbarId`) */;
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
/*!50001 VIEW `t_praise_nums` AS (select `t_praise`.`postbarId` AS `postbarId`,count(`t_praise`.`id`) AS `praiseCount` from `t_praise` group by `t_praise`.`postbarId`) */;
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

-- Dump completed on 2017-01-06 19:50:06
