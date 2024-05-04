-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm02xp0
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm02xp0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm02xp0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm02xp0/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuyedaoshi`
--

DROP TABLE IF EXISTS `jiuyedaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuyedaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616922876852 DEFAULT CHARSET=utf8 COMMENT='就业导师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuyedaoshi`
--

LOCK TABLES `jiuyedaoshi` WRITE;
/*!40000 ALTER TABLE `jiuyedaoshi` DISABLE KEYS */;
INSERT INTO `jiuyedaoshi` VALUES (21,'2021-03-28 08:39:17','就业导师1','123456','教师姓名1','女','职称1','13823888881','773890001@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian1.jpg','是',''),(22,'2021-03-28 08:39:17','就业导师2','123456','教师姓名2','男','职称2','13823888882','773890002@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian2.jpg','是',''),(23,'2021-03-28 08:39:17','就业导师3','123456','教师姓名3','男','职称3','13823888883','773890003@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian3.jpg','是',''),(24,'2021-03-28 08:39:17','就业导师4','123456','教师姓名4','男','职称4','13823888884','773890004@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian4.jpg','是',''),(25,'2021-03-28 08:39:17','就业导师5','123456','教师姓名5','男','职称5','13823888885','773890005@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian5.jpg','是',''),(26,'2021-03-28 08:39:17','就业导师6','123456','教师姓名6','男','职称6','13823888886','773890006@qq.com','http://localhost:8080/jspm02xp0/upload/jiuyedaoshi_zhaopian6.jpg','是',''),(1616921281046,'2021-03-28 08:48:01','123','123','123',NULL,'123','123','123@qq.com',NULL,'否',NULL),(1616922066351,'2021-03-28 09:01:06','1234','123','张三',NULL,'栓收','12345678910','1234@qq.com',NULL,'否',NULL),(1616922876851,'2021-03-28 09:14:36','12222','2323','2323',NULL,'23','23','23@qq.com',NULL,'否',NULL);
/*!40000 ALTER TABLE `jiuyedaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lijiebiyeshengjiuyexinxi`
--

DROP TABLE IF EXISTS `lijiebiyeshengjiuyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lijiebiyeshengjiuyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `ruzhidanwei` varchar(200) DEFAULT NULL COMMENT '入职单位',
  `ruzhirenshu` int(11) DEFAULT NULL COMMENT '入职人数',
  `xinchou` int(11) DEFAULT NULL COMMENT '薪酬',
  `qitadaiyu` longtext COMMENT '其他待遇',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616923614059 DEFAULT CHARSET=utf8 COMMENT='历届毕业生就业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lijiebiyeshengjiuyexinxi`
--

LOCK TABLES `lijiebiyeshengjiuyexinxi` WRITE;
/*!40000 ALTER TABLE `lijiebiyeshengjiuyexinxi` DISABLE KEYS */;
INSERT INTO `lijiebiyeshengjiuyexinxi` VALUES (51,'2021-03-28 08:39:17','学院1','入职单位1',1,1,'其他待遇1'),(52,'2021-03-28 08:39:17','学院2','入职单位2',2,2,'其他待遇2'),(53,'2021-03-28 08:39:17','学院3','入职单位3',3,3,'其他待遇3'),(54,'2021-03-28 08:39:17','学院4','入职单位4',4,4,'其他待遇4'),(55,'2021-03-28 08:39:17','学院5','入职单位5',5,5,'其他待遇5'),(56,'2021-03-28 08:39:17','学院6','入职单位6',6,6,'其他待遇6'),(1616923614058,'2021-03-28 09:26:53','233','233',233,23333,'2333\r\n');
/*!40000 ALTER TABLE `lijiebiyeshengjiuyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mianshiyaoqing`
--

DROP TABLE IF EXISTS `mianshiyaoqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mianshiyaoqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shifouluyong` varchar(200) DEFAULT NULL COMMENT '是否录用',
  `beiyaoqingrenxingming` varchar(200) DEFAULT NULL COMMENT '被邀请人姓名',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `mianshididian` varchar(200) DEFAULT NULL COMMENT '面试地点',
  `mianshishijian` datetime DEFAULT NULL COMMENT '面试时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616923292902 DEFAULT CHARSET=utf8 COMMENT='面试邀请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mianshiyaoqing`
--

LOCK TABLES `mianshiyaoqing` WRITE;
/*!40000 ALTER TABLE `mianshiyaoqing` DISABLE KEYS */;
INSERT INTO `mianshiyaoqing` VALUES (61,'2021-03-28 08:39:17','是','被邀请人姓名1','学籍号1','企业账号1','面试地点1','2021-03-28 16:39:17'),(62,'2021-03-28 08:39:17','是','被邀请人姓名2','学籍号2','企业账号2','面试地点2','2021-03-28 16:39:17'),(63,'2021-03-28 08:39:17','是','被邀请人姓名3','学籍号3','企业账号3','面试地点3','2021-03-28 16:39:17'),(64,'2021-03-28 08:39:17','是','被邀请人姓名4','学籍号4','企业账号4','面试地点4','2021-03-28 16:39:17'),(65,'2021-03-28 08:39:17','是','被邀请人姓名5','学籍号5','企业账号5','面试地点5','2021-03-28 16:39:17'),(66,'2021-03-28 08:39:17','是','被邀请人姓名6','学籍号6','企业账号6','面试地点6','2021-03-28 16:39:17'),(1616923292901,'2021-03-28 09:21:32','否','学生1','学生1','企业1','学校','2021-03-29 18:22:06');
/*!40000 ALTER TABLE `mianshiyaoqing` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='就业资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-28 08:39:17','标题1','简介1','http://localhost:8080/jspm02xp0/upload/news_picture1.jpg','内容1'),(82,'2021-03-28 08:39:17','标题2','简介2','http://localhost:8080/jspm02xp0/upload/news_picture2.jpg','内容2'),(83,'2021-03-28 08:39:17','标题3','简介3','http://localhost:8080/jspm02xp0/upload/news_picture3.jpg','内容3'),(84,'2021-03-28 08:39:17','标题4','简介4','http://localhost:8080/jspm02xp0/upload/news_picture4.jpg','内容4'),(85,'2021-03-28 08:39:17','标题5','简介5','http://localhost:8080/jspm02xp0/upload/news_picture5.jpg','内容5'),(86,'2021-03-28 08:39:17','标题6','简介6','http://localhost:8080/jspm02xp0/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyetupian` varchar(200) DEFAULT NULL COMMENT '企业图片',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiyejianjie` longtext COMMENT '企业简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616922896553 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (31,'2021-03-28 08:39:17','企业1','123456','企业名称1','企业地址1','企业规模1','负责人1','13823888881','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian1.jpg','773890001@qq.com','企业简介1'),(32,'2021-03-28 08:39:17','企业2','123456','企业名称2','企业地址2','企业规模2','负责人2','13823888882','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian2.jpg','773890002@qq.com','企业简介2'),(33,'2021-03-28 08:39:17','企业3','123456','企业名称3','企业地址3','企业规模3','负责人3','13823888883','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian3.jpg','773890003@qq.com','企业简介3'),(34,'2021-03-28 08:39:17','企业4','123456','企业名称4','企业地址4','企业规模4','负责人4','13823888884','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian4.jpg','773890004@qq.com','企业简介4'),(35,'2021-03-28 08:39:17','企业5','123456','企业名称5','企业地址5','企业规模5','负责人5','13823888885','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian5.jpg','773890005@qq.com','企业简介5'),(36,'2021-03-28 08:39:17','企业6','123456','企业名称6','企业地址6','企业规模6','负责人6','13823888886','http://localhost:8080/jspm02xp0/upload/qiye_qiyetupian6.jpg','773890006@qq.com','企业简介6'),(1616921302014,'2021-03-28 08:48:22','weqwe','1233','231','3123','231','23','12345678910',NULL,'123@qq.com',NULL),(1616922105730,'2021-03-28 09:01:45','企业','123','企业','地址','顶顶','张三','12345678910',NULL,'123@qq.com',NULL),(1616922896552,'2021-03-28 09:14:56','12323','23123','23123','321','231','231','12312312313',NULL,'2312@qq.com',NULL);
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'企业1','qiye','企业','9n564x0gfakca7v2ycmpjymw2cp0uryi','2021-03-28 08:49:18','2021-03-28 10:15:53'),(2,11,'学生1','xuesheng','学生','juhhgjnzs4j6qs87nw0vxkynb00lw8ct','2021-03-28 08:55:25','2021-03-28 10:18:13'),(3,21,'就业导师1','jiuyedaoshi','就业导师','v8i952w9opciizqlf0ixlr24mizzavok','2021-03-28 08:56:20','2021-03-28 10:23:54'),(4,1,'abo','users','管理员','hf30aidrpf41zxowjd0oxztq8ypi5tjr','2021-03-28 09:26:26','2021-03-28 10:26:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toudidejianli`
--

DROP TABLE IF EXISTS `toudidejianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toudidejianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `qiuzhigangwei` varchar(200) DEFAULT NULL COMMENT '求职岗位',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `qiwangxinzi` int(11) DEFAULT NULL COMMENT '期望薪资',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `huojiangzhengshu` varchar(200) DEFAULT NULL COMMENT '获奖证书',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `xiangxineirong` longtext COMMENT '详细内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616923190526 DEFAULT CHARSET=utf8 COMMENT='投递的简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toudidejianli`
--

LOCK TABLES `toudidejianli` WRITE;
/*!40000 ALTER TABLE `toudidejianli` DISABLE KEYS */;
INSERT INTO `toudidejianli` VALUES (71,'2021-03-28 08:39:17','学籍号1','学生姓名1','学历1','专业1','男','身份证1','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian1.jpg','2021-03-28','公司名称1','求职岗位1','工作地点1',1,'教育背景1','获奖证书1','毕业学校1','详细内容1'),(72,'2021-03-28 08:39:17','学籍号2','学生姓名2','学历2','专业2','男','身份证2','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian2.jpg','2021-03-28','公司名称2','求职岗位2','工作地点2',2,'教育背景2','获奖证书2','毕业学校2','详细内容2'),(73,'2021-03-28 08:39:17','学籍号3','学生姓名3','学历3','专业3','男','身份证3','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian3.jpg','2021-03-28','公司名称3','求职岗位3','工作地点3',3,'教育背景3','获奖证书3','毕业学校3','详细内容3'),(74,'2021-03-28 08:39:17','学籍号4','学生姓名4','学历4','专业4','男','身份证4','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian4.jpg','2021-03-28','公司名称4','求职岗位4','工作地点4',4,'教育背景4','获奖证书4','毕业学校4','详细内容4'),(75,'2021-03-28 08:39:17','学籍号5','学生姓名5','学历5','专业5','男','身份证5','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian5.jpg','2021-03-28','公司名称5','求职岗位5','工作地点5',5,'教育背景5','获奖证书5','毕业学校5','详细内容5'),(76,'2021-03-28 08:39:17','学籍号6','学生姓名6','学历6','专业6','男','身份证6','http://localhost:8080/jspm02xp0/upload/toudidejianli_zhaopian6.jpg','2021-03-28','公司名称6','求职岗位6','工作地点6',6,'教育背景6','获奖证书6','毕业学校6','详细内容6'),(1616923190525,'2021-03-28 09:19:50','学生1','学生姓名1','学历1','专业1','男','440300199101010001','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian1.jpg','2021-03-28','企业1','打字员','办公室',6000,'233','233','233','<p>请输入详细<span style=\"text-decoration: line-through;\">内容2323</span></p>');
/*!40000 ALTER TABLE `toudidejianli` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-28 08:39:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuejihao` varchar(200) NOT NULL COMMENT '学籍号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiuyedaoshi` varchar(200) DEFAULT NULL COMMENT '就业导师',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616922859333 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-28 08:39:17','学生1','123456','学生姓名1','男','学校1','学院1','专业1','年级1','班级1','020-89819991','773890001@qq.com','440300199101010001','就业导师1','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian1.jpg','出生日期1','学历1'),(12,'2021-03-28 08:39:17','学生2','123456','学生姓名2','男','学校2','学院2','专业2','年级2','班级2','020-89819992','773890002@qq.com','440300199202020002','就业导师2','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian2.jpg','出生日期2','学历2'),(13,'2021-03-28 08:39:17','学生3','123456','学生姓名3','男','学校3','学院3','专业3','年级3','班级3','020-89819993','773890003@qq.com','440300199303030003','就业导师3','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian3.jpg','出生日期3','学历3'),(14,'2021-03-28 08:39:17','学生4','123456','学生姓名4','女','学校4','学院4','专业4','年级4','班级4','020-89819994','773890004@qq.com','440300199404040004','就业导师4','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian4.jpg','出生日期4','学历4'),(15,'2021-03-28 08:39:17','学生5','123456','学生姓名5','男','学校5','学院5','专业5','年级5','班级5','020-89819995','773890005@qq.com','440300199505050005','就业导师5','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian5.jpg','出生日期5','学历5'),(16,'2021-03-28 08:39:17','学生6','123456','学生姓名6','男','学校6','学院6','专业6','年级6','班级6','020-89819996','773890006@qq.com','440300199606060006','就业导师6','http://localhost:8080/jspm02xp0/upload/xuesheng_zhaopian6.jpg','出生日期6','学历6'),(1616921195625,'2021-03-28 08:46:35','123','123','张三',NULL,'123','123','123','123','123','12345678910','123@qq.com','445585544588559988','jioada',NULL,'555','222'),(1616922037501,'2021-03-28 09:00:37','1234','123','张三',NULL,'清湖','电信','自动化','18','1802','12345678910','123456@qq.com','445289988744556633','就业',NULL,'5533','555'),(1616922859332,'2021-03-28 09:14:19','233','233','233',NULL,'233','233','233','33','233','12345679810','2323@qq.com','445585588977445566','555',NULL,'555','565');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbianhao` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `gongzidaiyu` longtext COMMENT '工资待遇',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaopinbianhao` (`zhaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616923548124 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (41,'2021-03-28 08:39:17','招聘编号1','企业账号1','企业名称1','联系方式1','邮箱1','招聘人数1','招聘岗位1','http://localhost:8080/jspm02xp0/upload/zhaopinxinxi_tupian1.jpg','职位要求1','工资待遇1','是',''),(42,'2021-03-28 08:39:17','招聘编号2','企业账号2','企业名称2','联系方式2','邮箱2','招聘人数2','招聘岗位2','http://localhost:8080/jspm02xp0/upload/zhaopinxinxi_tupian2.jpg','职位要求2','工资待遇2','是',''),(43,'2021-03-28 08:39:17','招聘编号3','企业账号3','企业名称3','联系方式3','邮箱3','招聘人数3','招聘岗位3','http://localhost:8080/jspm02xp0/upload/zhaopinxinxi_tupian3.jpg','职位要求3','工资待遇3','是',''),(44,'2021-03-28 08:39:17','招聘编号4','企业账号4','企业名称4','联系方式4','邮箱4','招聘人数4','招聘岗位4','http://localhost:8080/jspm02xp0/upload/zhaopinxinxi_tupian4.jpg','职位要求4','工资待遇4','是',''),(45,'2021-03-28 08:39:17','招聘编号5','企业账号5','企业名称5','联系方式5','邮箱5','招聘人数5','招聘岗位5','http://localhost:8080/jspm02xp0/upload/zhaopinxinxi_tupian5.jpg','职位要求5','工资待遇5','是',''),(1616921624253,'2021-03-28 08:53:44','1616921534','企业1','企业名称1','13823888881','773890001@qq.com','25','印刷工人','http://localhost:8080/jspm02xp0/upload/1616921586729.png','要求能熟练使用印刷机\r\n','月薪5200，包吃包住。\r\n','否',NULL),(1616922300172,'2021-03-28 09:04:59','1616922255','企业1','企业名称1','13823888881','773890001@qq.com','1','打字员','http://localhost:8080/jspm02xp0/upload/1616922272374.jpg','能熟练的使用打字软件\r\n','月薪5200，包吃住。\r\n','是',''),(1616923548123,'2021-03-28 09:25:47','1616923514','','','','773890001@qq.com','233','2333','','323\r\n','2323\r\n','是','');
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-29 12:14:10
