/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.22 : Database - zhjk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `zhjk`;

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `src` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `banner` */

insert  into `banner`(`id`,`name`,`src`,`location`,`url`) values (1,'1H5','img/home/H5-banner.jpg','HomePage','h5.action'),(2,'2Java','img/home/Java-banner.jpg','HomePage','java.action'),(4,'play','pic/783/783cc7f2-ac5b-44b6-9779-9a48840df0bd.gif','HomePage','afqerwq');

/*Table structure for table `chat_printscreen` */

DROP TABLE IF EXISTS `chat_printscreen`;

CREATE TABLE `chat_printscreen` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `c_src` varchar(128) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_printscreen` */

/*Table structure for table `com_dynamic` */

DROP TABLE IF EXISTS `com_dynamic`;

CREATE TABLE `com_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `author` varchar(32) DEFAULT NULL COMMENT '作者',
  `post_time` varchar(128) DEFAULT NULL COMMENT '发表时间',
  `views` int(11) DEFAULT '0' COMMENT '查看次数',
  `comments` int(11) DEFAULT '0' COMMENT '评论次数',
  `thumbups` int(11) DEFAULT '0' COMMENT '点赞次数',
  `editor` varchar(32) DEFAULT NULL COMMENT '编辑者',
  `edit_time` varchar(128) DEFAULT NULL COMMENT '编辑时间',
  `content` varchar(10000) DEFAULT NULL COMMENT '正文内容',
  `type` varchar(32) DEFAULT NULL COMMENT '分类 资源分享=resource 技术交流=technology 最新活动=new',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `top` tinyint(4) DEFAULT NULL COMMENT '是否置顶 0否 1是',
  `original` tinyint(4) DEFAULT NULL COMMENT '是否原创 0否 1是',
  `thumbuper` varchar(10000) DEFAULT NULL COMMENT '点赞者id记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `com_dynamic` */

insert  into `com_dynamic`(`id`,`title`,`author`,`post_time`,`views`,`comments`,`thumbups`,`editor`,`edit_time`,`content`,`type`,`cover`,`top`,`original`,`thumbuper`) values (1,'欢迎大家来到社区','vicky','2018-04-16 20:44:16',187,0,38,'张老师','2018-05-09 23:44:16','不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','resource',NULL,1,1,'3,1,'),(2,'hello everyone!!!!!!','lili','2018-04-16 20:44:16',21,0,0,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','new',NULL,0,0,NULL),(3,'学习使我快乐','hehe','2018-04-16 20:44:16',44,0,1,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','technology',NULL,1,1,'3,'),(4,'不要逼我，狠起来我都怕','lulu','2018-04-16 20:44:16',4,0,0,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','new',NULL,0,1,NULL),(5,'真怀念这些日子','库鲁','2018-04-16 20:44:16',3,0,0,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','resource',NULL,0,0,NULL),(6,'起来','lulu','2018-04-18 13:11:38',6,0,2,NULL,NULL,NULL,'resource',NULL,1,NULL,NULL),(7,'真怀念这些日子','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'new',NULL,1,1,NULL),(8,'真怀念这些日子','lulu','2018-04-18 13:11:38',1,0,0,NULL,NULL,NULL,'technology',NULL,0,NULL,NULL),(9,'真怀念这些日子','lulu','2018-04-18 13:11:38',4,0,1,NULL,NULL,NULL,'technology',NULL,0,1,'3,'),(10,'欢迎大家来到社区','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(11,'真怀念这些日子','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'new',NULL,0,1,NULL),(12,'everyone!!!!!!','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'technology',NULL,0,NULL,NULL),(13,'everyone!!!!!!',NULL,NULL,2,0,0,NULL,NULL,NULL,'resource',NULL,1,NULL,NULL),(14,'everyone!!!!!!',NULL,NULL,4,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(15,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(16,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(17,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(18,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(19,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(20,'everyone!!!!!!',NULL,NULL,2,0,0,NULL,NULL,NULL,'resource',NULL,1,NULL,NULL),(21,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(22,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(23,'everyone!!!!!!',NULL,'2018-06-16 20:44:16',0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(24,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(25,'everyone!!!!!!',NULL,NULL,13,0,0,NULL,NULL,NULL,'resource',NULL,1,NULL,NULL),(26,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(27,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(28,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(29,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(30,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(31,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,NULL,NULL),(32,'哈哈哈','测试帐号1','2018-06-16 20:44:16',1,0,0,NULL,'2018-06-16 20:44:16','<b>减肥劳动纠纷</b>','new','pic/1524556252080241.jpg',NULL,NULL,NULL),(33,'再测试','测试帐号1','2018-04-24 15:57:03',3,0,0,NULL,'2018-04-24 15:57:03','<b><i>再测试再测试再测试</i></b>','technology','pic/1524556605270641.jpg',NULL,NULL,NULL),(34,'哈哈哈哈哈哈哈哈哈','测试帐号1','2018-04-24 16:18:08',1,0,0,NULL,'2018-04-24 16:18:08','<span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><br>','new','pic/1524557886363935.jpg',NULL,NULL,NULL),(35,'就是大连分','测试帐号1','2018-04-24 16:21:45',1,0,0,NULL,'2018-04-24 16:21:45','从对方解放军饭到口就是大连分<div>的发送方法都是交流发电机发送<div>方分单巍峨问题的发送方第三</div><div>方洗发水的观点哦发放散热是个</div></div>','resource','pic/1524558103871456.jpg',NULL,NULL,NULL),(36,'伏牛山分单','测试帐号1','2018-04-24 16:30:11',1,0,0,NULL,'2018-04-24 16:30:11','     福鼎市福鼎市 福鼎市分单去； 发大水法啊','new','pic/1524558608759067.jpg',NULL,NULL,NULL);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `c_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `c_time` varchar(64) DEFAULT NULL COMMENT '发表时间',
  `c_thumbups` int(32) DEFAULT NULL COMMENT '赞的数量',
  `c_uid` int(255) DEFAULT NULL COMMENT '外键 发表者id',
  `c_articleid` int(255) DEFAULT NULL COMMENT '外键 文章id',
  `c_content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `c_thumbuper` varchar(10000) DEFAULT NULL COMMENT '点赞者的id字符串 ，号分隔',
  PRIMARY KEY (`c_id`),
  KEY `articleid` (`c_articleid`),
  KEY `userid` (`c_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`c_id`,`c_time`,`c_thumbups`,`c_uid`,`c_articleid`,`c_content`,`c_thumbuper`) values (1,'2018-06-16 20:44:16',2,1,1,'测试内容',NULL),(2,'2018-06-16 20:44:16',2,2,1,'测试内容',NULL),(3,'2018-06-16 20:44:16',2,3,1,'测试内容',NULL),(4,'2018-06-16 20:44:16',2,1,1,'测试内容',NULL),(5,'2018-06-16 20:44:16',2,2,1,'测试内容',NULL),(6,'2018-06-16 20:44:16',2,3,2,'测试内容',NULL),(7,'2018-06-16 20:44:16',2,1,2,'测试内容',NULL),(8,'2018-06-16 20:44:16',2,1,2,'测试内容',NULL),(9,'2018-06-16 20:44:16',2,2,2,'测试内容',NULL),(10,'2018-06-16 20:44:16',2,2,3,'测试内容',NULL),(11,'2018-06-16 20:44:16',2,2,3,'测试内容',NULL),(12,'2018-06-16 20:44:16',2,2,14,'测试内容',NULL),(13,'2018-06-16 20:44:16',2,2,14,'测试内容',NULL),(14,'2018-06-16 20:44:16',2,1,14,'测试内容',NULL),(15,'2018-06-16 20:44:16',2,1,14,'测试内容',NULL),(16,'2018-06-16 20:44:16',2,1,5,'测试内容',NULL),(17,'2018-06-16 20:44:16',2,1,5,'测试内容',NULL),(18,'2018-06-16 20:44:16',2,2,5,'测试内容',NULL),(19,'2018-06-16 20:44:16',2,2,5,'测试内容',NULL),(20,'2018-06-16 20:44:16',2,2,8,'测试内容',NULL),(21,'2018-06-16 20:44:16',3,1,1,'测试内容',NULL),(22,'2018-06-16 20:44:16',3,2,1,'测试内容',NULL),(23,'2018-06-16 20:44:16',3,3,1,'测试内容',NULL),(24,'2018-06-16 20:44:16',3,1,1,'测试内容',NULL),(25,'2018-06-16 20:44:16',3,1,1,'测试内容',NULL),(26,'2018-06-16 20:44:16',3,2,1,'测试内容',NULL),(27,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(28,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(29,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(30,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(31,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(32,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(33,'2018-02-16 20:44:16',3,1,2,'测试内容',NULL),(34,'2018-02-16 20:44:16',3,1,2,'测试内容',NULL),(35,'2018-02-16 20:44:16',3,2,2,'测试内容',NULL),(36,'2018-02-16 20:44:16',3,2,2,'测试内容',NULL),(37,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(38,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(39,'2018-02-16 20:44:16',3,3,1,'测试内容',NULL),(40,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(41,'2018-02-16 20:44:16',3,1,2,'测试内容',NULL),(42,'2018-02-16 20:44:16',3,2,2,'测试内容',NULL),(43,'2018-02-16 20:44:16',3,2,2,'测试内容',NULL),(44,'2018-02-16 20:44:16',3,2,2,'测试内容',NULL),(45,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(46,'2018-02-16 20:44:16',3,2,1,'测试内容',NULL),(47,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(48,'2018-02-16 20:44:16',3,1,1,'测试内容',NULL),(49,NULL,NULL,NULL,2,'',NULL),(50,NULL,NULL,NULL,25,'dsafffgsfdggfs',NULL),(51,NULL,NULL,3,1,'哈哈哈哈哈',NULL);

/*Table structure for table `inst_dynamic` */

DROP TABLE IF EXISTS `inst_dynamic`;

CREATE TABLE `inst_dynamic` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `post_time` varchar(128) NOT NULL,
  `views` int(11) DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `inst_dynamic` */

insert  into `inst_dynamic`(`art_id`,`title`,`post_time`,`views`,`content`) values (6,'资讯2','2018-04-16 20:48:14',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(7,'资讯3','2018-04-16 20:59:01',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(8,'资讯4','2018-04-16 21:00:02',0,'阿呆飞机啊；了德萨可夫阿里奥斯丁啊激发对方'),(17,'AAA','2018-04-27 09:07:45',1,'<p style=\"text-align: center;\">ASDFF</p><p style=\"text-align: center;\"><img src=\"/pic/195024a6ca6242589cbd7f3963956f5b.jpg\" style=\"max-width:100%;\"></p>');

/*Table structure for table `succstudent` */

DROP TABLE IF EXISTS `succstudent`;

CREATE TABLE `succstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员id',
  `name` varchar(50) DEFAULT NULL COMMENT '学员姓名',
  `degree` varchar(50) DEFAULT NULL COMMENT '学员学历',
  `enterprize` varchar(50) DEFAULT NULL COMMENT '入职公司',
  `salary` int(11) DEFAULT NULL COMMENT '薪资',
  `career` varchar(50) DEFAULT NULL COMMENT '专业',
  `hiredate` varchar(50) DEFAULT NULL COMMENT '就职信息',
  `graduateschool` varchar(128) DEFAULT NULL COMMENT '毕业院校',
  `sendword` varchar(256) DEFAULT NULL COMMENT '学员寄语',
  `photos_src` varchar(128) DEFAULT NULL COMMENT '学员照片',
  `post_time` varchar(32) DEFAULT NULL COMMENT '发表时间',
  `edit_time` varchar(32) DEFAULT NULL COMMENT '编辑时间',
  `views` int(32) DEFAULT NULL COMMENT '浏览量',
  `content` varchar(10000) DEFAULT NULL COMMENT '内容正文',
  `thumbups` int(12) DEFAULT NULL COMMENT '点赞数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `succstudent` */

insert  into `succstudent`(`id`,`name`,`degree`,`enterprize`,`salary`,`career`,`hiredate`,`graduateschool`,`sendword`,`photos_src`,`post_time`,`edit_time`,`views`,`content`,`thumbups`) values (1,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(2,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(3,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(4,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(5,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(6,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(7,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(8,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(9,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(10,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(11,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(12,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(13,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(14,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(15,'张小美','本科','腾讯公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,107,'啊哈哈哈哈哈哈',11),(16,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5),(17,'刘小玲','本科','百度公司',8000,NULL,NULL,NULL,NULL,NULL,'2017-05-15 17:25:17',NULL,20,'测试内容',5);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师id',
  `t_name` varchar(20) DEFAULT NULL COMMENT '老师姓名',
  `t_course` varchar(50) DEFAULT NULL COMMENT '所教课程',
  `t_introduction` varchar(500) DEFAULT NULL COMMENT '老师介绍',
  `t_photos` varchar(128) DEFAULT NULL COMMENT '老师照片',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`t_id`,`t_name`,`t_course`,`t_introduction`,`t_photos`) values (1,'老师一号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551950683697.jpg'),(2,'三生三世','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551185202227.jpg'),(3,'三生三世','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551193174149.jpg'),(4,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551206709155.jpg'),(5,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551962483549.jpg'),(6,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551970109188.jpg'),(7,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552008880067.jpg'),(8,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552054309910.jpg'),(9,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552087771858.jpg'),(10,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552063350134.jpg'),(11,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552078230584.jpg'),(12,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552069383603.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户账号',
  `password` varchar(64) NOT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`name`) values (1,'admin','123','管理员');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `v_id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `v_title` varchar(32) DEFAULT NULL COMMENT '视频标题',
  `v_type` varchar(32) DEFAULT NULL COMMENT '视频类型',
  `v_teacher` varchar(32) DEFAULT NULL COMMENT '视频讲师',
  `v_link` varchar(32) DEFAULT NULL COMMENT '视频链接',
  `v_date` varchar(32) DEFAULT NULL COMMENT '日期',
  `v_update` varchar(32) DEFAULT NULL COMMENT '目前更新',
  `v_isrecommend` tinyint(1) DEFAULT NULL COMMENT '是否首页推荐',
  `v_catelog` varchar(32) DEFAULT NULL COMMENT '课程目录',
  `v_cover` varchar(100) DEFAULT NULL COMMENT '视频封面',
  `v_describe` varchar(500) DEFAULT NULL COMMENT '描述',
  `v_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `video` */

insert  into `video`(`v_id`,`v_title`,`v_type`,`v_teacher`,`v_link`,`v_date`,`v_update`,`v_isrecommend`,`v_catelog`,`v_cover`,`v_describe`,`v_desc`) values (1,'哈哈哈课程','JAVA','张文老师',NULL,NULL,NULL,1,NULL,NULL,'鹅鹅鹅，曲项向天歌。白毛浮绿水，红掌拨清波。','男女老少皆宜'),(2,'3232','JAVA',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(3,'43434','JAVA',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(4,'tretrete','UI',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(5,'ewe','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'dsad','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'fdsf','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'gfdgs','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'gfdg','UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'gfsg','WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'fgsgf','UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'fgsgf','UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'fgsgf','JAVA',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(14,'fsg','UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'dsad','UI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'dsad','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'fdf','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'asdsa','UI',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(19,'cxcx','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'sad','WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'1212','WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'cxzc','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'fd','WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'dsc','JAVA',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(25,'df','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'csf','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'erew','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'eze5','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'5543','JAVA',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),(30,'vasd','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'34324','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'vccxv','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'fdsf','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'dsd43','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'dsfggfs','JAVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `webuser` */

DROP TABLE IF EXISTS `webuser`;

CREATE TABLE `webuser` (
  `u_id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `u_code` varchar(32) DEFAULT NULL COMMENT '用户名 账号',
  `u_password` varchar(64) DEFAULT NULL COMMENT '密码',
  `u_name` varchar(64) DEFAULT NULL COMMENT '昵称',
  `u_head` varchar(255) DEFAULT NULL COMMENT '头像',
  `u_level` int(255) DEFAULT NULL COMMENT '等级字段 发帖回帖计数',
  `u_phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `u_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `webuser` */

insert  into `webuser`(`u_id`,`u_code`,`u_password`,`u_name`,`u_head`,`u_level`,`u_phone`,`u_email`) values (1,'test1','e10adc3949ba59abbe56e057f20f883e','测试帐号1','fdsf',10,NULL,NULL),(2,'test2','e10adc3949ba59abbe56e057f20f883e','测试帐号2','fds',1000,NULL,NULL),(3,'test3','e10adc3949ba59abbe56e057f20f883e','测试帐号3','fs',100,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
