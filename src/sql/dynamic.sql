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

/*Table structure for table `com_dynamic` */

DROP TABLE IF EXISTS `com_dynamic`;

CREATE TABLE `com_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL COMMENT '标题',
  `author` varchar(32) NOT NULL COMMENT '作者',
  `post_time` varchar(128) NOT NULL COMMENT '发表时间',
  `views` int(11) DEFAULT '0' COMMENT '查看次数',
  `comments` int(11) DEFAULT '0' COMMENT '评论次数',
  `thumbups` int(11) DEFAULT '0' COMMENT '点赞次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `com_dynamic` */

insert  into `com_dynamic`(`id`,`title`,`author`,`post_time`,`views`,`comments`,`thumbups`) values (1,'欢迎大家来到社区','vicky','2018-04-16 20:44:16',0,0,0),(2,'hello everyone!!!!!!','lili','2018-04-16 20:44:16',0,0,0),(3,'学习使我快乐','hehe','2018-04-16 20:44:16',0,0,0),(4,'不要逼我，狠起来我都怕','lulu','2018-04-16 20:44:16',0,0,0),(5,'真怀念这些日子','库鲁','2018-04-16 20:44:16',0,0,0);

/*Table structure for table `inst_dynamic` */

DROP TABLE IF EXISTS `inst_dynamic`;

CREATE TABLE `inst_dynamic` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `post_time` varchar(128) NOT NULL,
  `views` int(11) DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `inst_dynamic` */

insert  into `inst_dynamic`(`art_id`,`title`,`post_time`,`views`,`content`) values (6,'资讯2','2018-04-16 20:48:14',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(7,'资讯3','2018-04-16 20:59:01',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(8,'资讯4','2018-04-16 21:00:02',0,'阿呆飞机啊；了德萨可夫阿里奥斯丁啊激发对方'),(9,'资讯5','2018-04-16 21:06:00',0,'阿呆飞机啊；了德萨可夫阿里奥斯丁啊激发对方'),(10,'aaaa','2018-04-18 14:26:39',0,'<b>wangEditor</b><p><img src=\"http://localhost:8080/zhjkcms/img/e7b164f2f08c4144b5b602fdf9c8d7ee.png\" style=\"max-width:100%;\">fqawe;jfajdf\'admfa\'sdfd\'k \'ddddddddddddddddddddddddddddddddddddd<br></p>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
