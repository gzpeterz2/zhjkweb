/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.22 : Database - zhjk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhjk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhjk`;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;