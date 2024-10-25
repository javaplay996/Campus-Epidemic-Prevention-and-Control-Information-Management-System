/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanyiqingfangkongxinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanyiqingfangkongxinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanyiqingfangkongxinxiguanlixitong`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='疫情咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'语法书','2023-05-08 15:53:00',NULL,NULL,2,1,'2023-05-08 15:53:00'),(2,1,NULL,NULL,'sad','2023-05-08 15:54:13',NULL,2,'2023-05-08 15:54:14');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_name` varchar(200) DEFAULT NULL COMMENT '健康码打卡  Search111 ',
  `daka_file` varchar(200) DEFAULT NULL COMMENT '健康码照片',
  `daka_jiuzhen` varchar(200) DEFAULT NULL COMMENT '就诊情况',
  `daka_types` int(11) DEFAULT NULL COMMENT '疫情状态 Search111',
  `daka_wendu` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `daka_text` text COMMENT '备注 ',
  `daka_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='疫情数据';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_name`,`daka_file`,`daka_jiuzhen`,`daka_types`,`daka_wendu`,`daka_text`,`daka_delete`,`insert_time`,`create_time`) values (1,2,'健康码打卡1','upload/file.rar','就诊情况1',2,'523.52','备注1',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,1,'健康码打卡2','upload/file.rar','就诊情况2',2,'401.07','备注2',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,2,'健康码打卡3','upload/file.rar','就诊情况3',1,'174.65','备注3',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,3,'健康码打卡4','upload/file.rar','就诊情况4',3,'752.86','备注4',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,3,'健康码打卡5','upload/file.rar','就诊情况5',3,'998.03','备注5',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,1,'健康码打卡6','upload/file.rar','就诊情况6',2,'432.72','备注6',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,1,'健康码打卡7','upload/file.rar','就诊情况7',2,'443.92','备注7',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,2,'健康码打卡8','upload/file.rar','就诊情况8',2,'300.90','备注8',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,2,'健康码打卡9','upload/file.rar','就诊情况9',1,'245.48','备注9',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,3,'健康码打卡10','upload/file.rar','就诊情况10',2,'726.37','备注10',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,1,'健康码打卡11','upload/file.rar','就诊情况11',3,'38.82','备注11',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,3,'健康码打卡12','upload/file.rar','就诊情况12',1,'18.13','备注12',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,3,'健康码打卡13','upload/file.rar','就诊情况13',2,'842.65','备注13',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,3,'健康码打卡14','upload/file.rar','就诊情况14',2,'146.10','备注14',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(18,1,'手打','upload/1683532389464.jpg','但是',1,'35.00','阿萨德',1,'2023-05-08 15:53:17','2023-05-08 15:53:17');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-08 14:41:26'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-08 14:41:26'),(3,'yonghu_types','用户类型',1,'教职工',NULL,NULL,'2023-05-08 14:41:26'),(4,'yonghu_types','用户类型',2,'学生',NULL,NULL,'2023-05-08 14:41:26'),(5,'yonghu_guankong_types','管控状态',1,'限制出入校园',NULL,NULL,'2023-05-08 14:41:26'),(6,'yonghu_guankong_types','管控状态',2,'集中隔离观察',NULL,NULL,'2023-05-08 14:41:26'),(7,'yonghu_guankong_types','管控状态',3,'密切接触者',NULL,NULL,'2023-05-08 14:41:26'),(8,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-08 14:41:26'),(9,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-08 14:41:26'),(10,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-08 14:41:26'),(11,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-08 14:41:26'),(12,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-05-08 14:41:26'),(13,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-05-08 14:41:26'),(14,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-05-08 14:41:26'),(15,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-05-08 14:41:26'),(16,'jiaoyu_types','防疫宣传类型',1,'防疫宣传类型1',NULL,NULL,'2023-05-08 14:41:27'),(17,'jiaoyu_types','防疫宣传类型',2,'防疫宣传类型2',NULL,NULL,'2023-05-08 14:41:27'),(18,'jiaoyu_types','防疫宣传类型',3,'防疫宣传类型3',NULL,NULL,'2023-05-08 14:41:27'),(19,'jiaoyu_types','防疫宣传类型',4,'防疫宣传类型4',NULL,NULL,'2023-05-08 14:41:27'),(20,'yimiao_types','疫苗类型',1,'疫苗类型1',NULL,NULL,'2023-05-08 14:41:27'),(21,'yimiao_types','疫苗类型',2,'疫苗类型2',NULL,NULL,'2023-05-08 14:41:27'),(22,'yimiao_types','疫苗类型',3,'疫苗类型3',NULL,NULL,'2023-05-08 14:41:27'),(23,'yimiao_types','疫苗类型',4,'疫苗类型4',NULL,NULL,'2023-05-08 14:41:27'),(24,'yimiao_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-05-08 14:41:27'),(25,'yimiao_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-05-08 14:41:27'),(26,'yimiao_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-05-08 14:41:27'),(27,'fengkong_didian_types','地区',1,'地区1',NULL,NULL,'2023-05-08 14:41:27'),(28,'fengkong_didian_types','地区',2,'地区2',NULL,NULL,'2023-05-08 14:41:27'),(29,'fengkong_didian_types','地区',3,'地区3',NULL,NULL,'2023-05-08 14:41:27'),(30,'fengkong_types','风险类型',1,'低风险',NULL,NULL,'2023-05-08 14:41:27'),(31,'fengkong_types','风险类型',2,'中风险',NULL,NULL,'2023-05-08 14:41:27'),(32,'fengkong_types','风险类型',3,'高风险',NULL,NULL,'2023-05-08 14:41:27'),(33,'wangfan_yuyue_yesno_types','申报状态',1,'待审核',NULL,NULL,'2023-05-08 14:41:27'),(34,'wangfan_yuyue_yesno_types','申报状态',2,'同意',NULL,NULL,'2023-05-08 14:41:27'),(35,'wangfan_yuyue_yesno_types','申报状态',3,'拒绝',NULL,NULL,'2023-05-08 14:41:27'),(36,'wangfan_yuyue_types','交通工具',1,'自驾',NULL,NULL,'2023-05-08 14:41:27'),(37,'wangfan_yuyue_types','交通工具',2,'汽车',NULL,NULL,'2023-05-08 14:41:27'),(38,'wangfan_yuyue_types','交通工具',3,'火车',NULL,NULL,'2023-05-08 14:41:27'),(39,'daka_types','疫情状态',1,'未感染',NULL,NULL,'2023-05-08 14:41:27'),(40,'daka_types','疫情状态',2,'已感染',NULL,NULL,'2023-05-08 14:41:27'),(41,'daka_types','疫情状态',3,'接触',NULL,NULL,'2023-05-08 14:41:27');

/*Table structure for table `fengkong` */

DROP TABLE IF EXISTS `fengkong`;

CREATE TABLE `fengkong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fengkong_name` varchar(200) DEFAULT NULL COMMENT '地区名称  Search111 ',
  `fengkong_photo` varchar(200) DEFAULT NULL COMMENT '地区照片',
  `fengkong_didian_types` int(11) DEFAULT NULL COMMENT '地区 Search111',
  `fengkong_types` int(11) DEFAULT NULL COMMENT '风险类型 Search111',
  `fengkong_content` text COMMENT '地区介绍 ',
  `fengkong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='隔离信息';

/*Data for the table `fengkong` */

insert  into `fengkong`(`id`,`fengkong_name`,`fengkong_photo`,`fengkong_didian_types`,`fengkong_types`,`fengkong_content`,`fengkong_delete`,`insert_time`,`create_time`) values (1,'地区名称1','upload/fengkong1.jpg',2,3,'地区介绍1',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,'地区名称2','upload/fengkong2.jpg',2,2,'地区介绍2',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,'地区名称3','upload/fengkong3.jpg',1,2,'地区介绍3',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,'地区名称4','upload/fengkong4.jpg',3,3,'地区介绍4',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,'地区名称5','upload/fengkong5.jpg',1,2,'地区介绍5',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,'地区名称6','upload/fengkong6.jpg',1,3,'地区介绍6',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,'地区名称7','upload/fengkong7.jpg',2,2,'地区介绍7',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,'地区名称8','upload/fengkong8.jpg',3,1,'地区介绍8',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,'地区名称9','upload/fengkong9.jpg',2,2,'地区介绍9',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,'地区名称10','upload/fengkong10.jpg',3,1,'地区介绍10',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,'地区名称11','upload/fengkong11.jpg',2,2,'地区介绍11',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,'地区名称12','upload/fengkong12.jpg',1,2,'地区介绍12',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,'地区名称13','upload/fengkong13.jpg',2,3,'地区介绍13',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,'地区名称14','upload/fengkong14.jpg',1,3,'地区介绍14',1,'2023-05-08 14:41:42','2023-05-08 14:41:42');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',7,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,'帖子标题2',1,NULL,'发布内容2',315,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,'帖子标题3',3,NULL,'发布内容3',257,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,'帖子标题4',3,NULL,'发布内容4',362,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,'帖子标题5',3,NULL,'发布内容5',112,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,'帖子标题6',3,NULL,'发布内容6',103,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,'帖子标题7',3,NULL,'发布内容7',201,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,'帖子标题8',3,NULL,'发布内容8',34,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,'帖子标题9',1,NULL,'发布内容9',210,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,'帖子标题10',2,NULL,'发布内容10',345,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,'帖子标题11',3,NULL,'发布内容11',113,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,'帖子标题12',3,NULL,'发布内容12',142,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,'帖子标题13',3,NULL,'发布内容13',224,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,'帖子标题14',1,NULL,'发布内容14',290,1,'2023-05-08 14:41:42','2023-05-08 14:41:42','2023-05-08 14:41:42'),(16,'测试',1,NULL,'<p>测试</p>',NULL,1,'2023-05-08 15:52:20',NULL,'2023-05-08 15:52:20'),(17,NULL,NULL,1,'大撒',16,2,'2023-05-08 15:54:35',NULL,'2023-05-08 15:54:35');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-08 14:41:42','公告详情1','2023-05-08 14:41:42'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-05-08 14:41:42','公告详情2','2023-05-08 14:41:42'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-08 14:41:42','公告详情3','2023-05-08 14:41:42'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-08 14:41:42','公告详情4','2023-05-08 14:41:42'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-08 14:41:42','公告详情5','2023-05-08 14:41:42'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-08 14:41:42','公告详情6','2023-05-08 14:41:42'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-08 14:41:42','公告详情7','2023-05-08 14:41:42'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-08 14:41:42','公告详情8','2023-05-08 14:41:42'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-08 14:41:42','公告详情9','2023-05-08 14:41:42'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-05-08 14:41:42','公告详情10','2023-05-08 14:41:42'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-08 14:41:42','公告详情11','2023-05-08 14:41:42'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-08 14:41:42','公告详情12','2023-05-08 14:41:42'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-08 14:41:42','公告详情13','2023-05-08 14:41:42'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-08 14:41:42','公告详情14','2023-05-08 14:41:42');

/*Table structure for table `jiaoyu` */

DROP TABLE IF EXISTS `jiaoyu`;

CREATE TABLE `jiaoyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoyu_name` varchar(200) DEFAULT NULL COMMENT '防疫宣传名称  Search111 ',
  `jiaoyu_uuid_number` varchar(200) DEFAULT NULL COMMENT '防疫宣传编号',
  `jiaoyu_photo` varchar(200) DEFAULT NULL COMMENT '防疫宣传照片',
  `jiaoyu_types` int(11) DEFAULT NULL COMMENT '防疫宣传类型 Search111',
  `jiaoyu_video` varchar(200) DEFAULT NULL COMMENT '防疫宣传视频',
  `jiaoyu_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `jiaoyu_content` longtext COMMENT '防疫宣传介绍 ',
  `jiaoyu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='防疫宣传';

/*Data for the table `jiaoyu` */

insert  into `jiaoyu`(`id`,`jiaoyu_name`,`jiaoyu_uuid_number`,`jiaoyu_photo`,`jiaoyu_types`,`jiaoyu_video`,`jiaoyu_file`,`jiaoyu_content`,`jiaoyu_delete`,`insert_time`,`create_time`) values (1,'防疫宣传名称1','1683528102147','upload/jiaoyu1.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍1',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,'防疫宣传名称2','1683528102131','upload/jiaoyu2.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍2',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,'防疫宣传名称3','1683528102147','upload/jiaoyu3.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍3',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,'防疫宣传名称4','1683528102182','upload/jiaoyu4.jpg',2,'upload/video.mp4','upload/file.rar','防疫宣传介绍4',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,'防疫宣传名称5','1683528102137','upload/jiaoyu5.jpg',4,'upload/video.mp4','upload/file.rar','防疫宣传介绍5',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,'防疫宣传名称6','1683528102168','upload/jiaoyu6.jpg',2,'upload/video.mp4','upload/file.rar','防疫宣传介绍6',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,'防疫宣传名称7','1683528102172','upload/jiaoyu7.jpg',4,'upload/video.mp4','upload/file.rar','防疫宣传介绍7',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,'防疫宣传名称8','1683528102165','upload/jiaoyu8.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍8',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,'防疫宣传名称9','1683528102182','upload/jiaoyu9.jpg',3,'upload/video.mp4','upload/file.rar','防疫宣传介绍9',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,'防疫宣传名称10','1683528102159','upload/jiaoyu10.jpg',4,'upload/video.mp4','upload/file.rar','防疫宣传介绍10',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,'防疫宣传名称11','1683528102174','upload/jiaoyu11.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍11',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,'防疫宣传名称12','1683528102206','upload/jiaoyu12.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍12',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,'防疫宣传名称13','1683528102178','upload/jiaoyu13.jpg',1,'upload/video.mp4','upload/file.rar','防疫宣传介绍13',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,'防疫宣传名称14','1683528102190','upload/jiaoyu14.jpg',4,'upload/video.mp4','upload/file.rar','防疫宣传介绍14',1,'2023-05-08 14:41:42','2023-05-08 14:41:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','waqxrcb3ll15svbsqqcffdt5k9ljpvht','2023-05-08 14:44:42','2023-05-08 16:51:47'),(2,1,'admin','users','管理员','raoyim0hvfen1qnqka8uakws2tuam4y3','2023-05-08 14:47:18','2023-05-08 16:53:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-08 14:41:26');

/*Table structure for table `wangfan_yuyue` */

DROP TABLE IF EXISTS `wangfan_yuyue`;

CREATE TABLE `wangfan_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wangfan_yuyue_text` text COMMENT '申请理由',
  `wangfan_yuyue_types` int(11) DEFAULT NULL COMMENT '交通工具 Search111',
  `wangfan_yuyue_mudidi` varchar(200) DEFAULT NULL COMMENT '去哪里',
  `wangfan_yuyue_chufadi` varchar(200) DEFAULT NULL COMMENT '所在地',
  `wangfan_yuyue_chufa_time` date DEFAULT NULL COMMENT '出发时间',
  `wangfan_yuyue_daoda_time` date DEFAULT NULL COMMENT '到达时间',
  `wangfan_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申报状态 Search111 ',
  `wangfan_yuyue_yesno_text` text COMMENT '审核回复',
  `wangfan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '疫苗接种时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='上报信息';

/*Data for the table `wangfan_yuyue` */

insert  into `wangfan_yuyue`(`id`,`yonghu_id`,`wangfan_yuyue_text`,`wangfan_yuyue_types`,`wangfan_yuyue_mudidi`,`wangfan_yuyue_chufadi`,`wangfan_yuyue_chufa_time`,`wangfan_yuyue_daoda_time`,`wangfan_yuyue_yesno_types`,`wangfan_yuyue_yesno_text`,`wangfan_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,1,'申请理由1',2,'去哪里1','所在地1','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,3,'申请理由2',1,'去哪里2','所在地2','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,2,'申请理由3',2,'去哪里3','所在地3','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,3,'申请理由4',1,'去哪里4','所在地4','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,2,'申请理由5',2,'去哪里5','所在地5','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,3,'申请理由6',2,'去哪里6','所在地6','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,2,'申请理由7',1,'去哪里7','所在地7','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,3,'申请理由8',3,'去哪里8','所在地8','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,1,'申请理由9',1,'去哪里9','所在地9','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,1,'申请理由10',2,'去哪里10','所在地10','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,1,'申请理由11',2,'去哪里11','所在地11','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,3,'申请理由12',1,'去哪里12','所在地12','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,2,'申请理由13',2,'去哪里13','所在地13','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,2,'申请理由14',3,'去哪里14','所在地14','2023-05-08','2023-05-08',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(18,1,'sad',3,'按时','撒的','2023-05-08','2023-05-08',3,'手打','2023-05-08 15:55:00','2023-05-08 15:53:33','2023-05-08 15:53:33');

/*Table structure for table `yimiao` */

DROP TABLE IF EXISTS `yimiao`;

CREATE TABLE `yimiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗名称  Search111 ',
  `yimiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '疫苗编号',
  `yimiao_photo` varchar(200) DEFAULT NULL COMMENT '疫苗照片',
  `yimiao_address` varchar(200) DEFAULT NULL COMMENT '疫苗接种地点',
  `yimiao_types` int(11) DEFAULT NULL COMMENT '疫苗类型 Search111',
  `yimiao_content` longtext COMMENT '疫苗介绍 ',
  `yimiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='疫苗';

/*Data for the table `yimiao` */

insert  into `yimiao`(`id`,`yimiao_name`,`yimiao_uuid_number`,`yimiao_photo`,`yimiao_address`,`yimiao_types`,`yimiao_content`,`yimiao_delete`,`insert_time`,`create_time`) values (1,'疫苗名称1','1683528102198','upload/yimiao1.jpg','疫苗接种地点1',2,'疫苗介绍1',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,'疫苗名称2','1683528102141','upload/yimiao2.jpg','疫苗接种地点2',1,'疫苗介绍2',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,'疫苗名称3','1683528102188','upload/yimiao3.jpg','疫苗接种地点3',1,'疫苗介绍3',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,'疫苗名称4','1683528102201','upload/yimiao4.jpg','疫苗接种地点4',2,'疫苗介绍4',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,'疫苗名称5','1683528102207','upload/yimiao5.jpg','疫苗接种地点5',2,'疫苗介绍5',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,'疫苗名称6','1683528102173','upload/yimiao6.jpg','疫苗接种地点6',3,'疫苗介绍6',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,'疫苗名称7','1683528102136','upload/yimiao7.jpg','疫苗接种地点7',1,'疫苗介绍7',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,'疫苗名称8','1683528102193','upload/yimiao8.jpg','疫苗接种地点8',1,'疫苗介绍8',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,'疫苗名称9','1683528102160','upload/yimiao9.jpg','疫苗接种地点9',4,'疫苗介绍9',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,'疫苗名称10','1683528102159','upload/yimiao10.jpg','疫苗接种地点10',4,'疫苗介绍10',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,'疫苗名称11','1683528102204','upload/yimiao11.jpg','疫苗接种地点11',3,'疫苗介绍11',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,'疫苗名称12','1683528102226','upload/yimiao12.jpg','疫苗接种地点12',4,'疫苗介绍12',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,'疫苗名称13','1683528102200','upload/yimiao13.jpg','疫苗接种地点13',2,'疫苗介绍13',1,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,'疫苗名称14','1683528102162','upload/yimiao14.jpg','疫苗接种地点14',3,'疫苗介绍14',1,'2023-05-08 14:41:42','2023-05-08 14:41:42');

/*Table structure for table `yimiao_yuyue` */

DROP TABLE IF EXISTS `yimiao_yuyue`;

CREATE TABLE `yimiao_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yimiao_id` int(11) DEFAULT NULL COMMENT '疫苗',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiao_yuyue_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '疫苗接种时间',
  `yimiao_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `yimiao_yuyue_yesno_text` longtext COMMENT '审核回复',
  `yimiao_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `yimiao_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='疫苗接种';

/*Data for the table `yimiao_yuyue` */

insert  into `yimiao_yuyue`(`id`,`yimiao_yuyue_uuid_number`,`yimiao_id`,`yonghu_id`,`yimiao_yuyue_text`,`insert_time`,`yimiao_yuyue_yesno_types`,`yimiao_yuyue_yesno_text`,`yimiao_yuyue_shenhe_time`,`yimiao_yuyue_time`,`create_time`) values (1,'1683528102180',1,3,'报名理由1','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(2,'1683528102153',2,2,'报名理由2','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(3,'1683528102173',3,2,'报名理由3','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(4,'1683528102226',4,2,'报名理由4','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(5,'1683528102169',5,1,'报名理由5','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(6,'1683528102213',6,3,'报名理由6','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(7,'1683528102192',7,1,'报名理由7','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(8,'1683528102213',8,2,'报名理由8','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(9,'1683528102171',9,2,'报名理由9','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(10,'1683528102137',10,3,'报名理由10','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(11,'1683528102137',11,2,'报名理由11','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(12,'1683528102155',12,1,'报名理由12','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(13,'1683528102155',13,1,'报名理由13','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(14,'1683528102167',14,3,'报名理由14','2023-05-08 14:41:42',1,NULL,NULL,'2023-05-08 14:41:42','2023-05-08 14:41:42'),(15,'1683529210002',13,1,'大但是 ','2023-05-08 15:00:10',1,NULL,NULL,'2023-05-08 15:00:06','2023-05-08 15:00:10'),(16,'1683532364843',14,1,'预约','2023-05-08 15:52:45',2,'地方但是','2023-05-08 15:55:22','2023-05-08 15:52:39','2023-05-08 15:52:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '用户类型',
  `yonghu_guankong_types` int(11) DEFAULT NULL COMMENT '管控状态',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_types`,`yonghu_guankong_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1683528102203','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,1,1,'1@qq.com','2023-05-08 14:41:42'),(2,'a2','123456','1683528102174','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,2,3,'2@qq.com','2023-05-08 14:41:42'),(3,'a3','123456','1683528102165','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,1,3,'3@qq.com','2023-05-08 14:41:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
