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

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `src` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `banner` */

insert  into `banner`(`id`,`name`,`src`,`location`,`url`) values (1,'1H5','img/home/H5-banner.jpg','HomePage','h5.action'),(2,'2Java','img/home/Java-banner.jpg','HomePage','java.action'),(3,'3UI','img/home/UI-banner.jpg','HomePage','ui.action');

/*Table structure for table `chat_printscreen` */

DROP TABLE IF EXISTS `chat_printscreen`;

CREATE TABLE `chat_printscreen` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `c_src` varchar(128) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `chat_printscreen` */

insert  into `chat_printscreen`(`c_id`,`c_src`) values (5,'/pic/chatPrintscreen/1524487787364074.png'),(6,'/pic/chatPrintscreen/1524487796135781.png'),(7,'/pic/chatPrintscreen/1524487885343778.png'),(8,'/pic/chatPrintscreen/1524487899343943.png'),(9,'/pic/chatPrintscreen/1524487918668868.png');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

/*Data for the table `succstudent` */

insert  into `succstudent`(`id`,`name`,`degree`,`enterprize`,`salary`,`career`,`hiredate`,`graduateschool`,`sendword`,`photos_src`) values (1,'赵铁柱','大专','广州未来**',8000,'UID设计','2017-7-2','哈佛大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375336872614.jpg'),(2,'李白','大专','广州未来**科技3',8000,'UID设计','2017-7-1','武汉大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375349557555.jpg'),(4,'李思','大专','广州未来**科技5',8000,'UID设计','2017-7-1','哈佛大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375496406976.jpg'),(5,'李大钊','大专','广州未来**科技6',8000,'UID设计','2017-7-1','北京大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524376009932000.jpg'),(6,'毒妇','大专','广州未来**科技7',8000,'UID设计','2017-7-1','天津大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524376023931571.jpg'),(69,'赵云','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407142744707.jpg'),(70,'关羽','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407155674545.jpg'),(71,'妲己','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407165951142.jpg'),(72,'武则天','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407180459324.jpg'),(73,'花木兰','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407192546109.jpg'),(74,'蔡文姬','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407207997707.jpg'),(75,'王昭君','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407223727057.jpg'),(76,'貂蝉','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407235690722.jpg'),(77,'甄姬','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407250391277.jpg'),(78,'杨玉环','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407262133810.jpg'),(79,'李元芳','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407272642750.jpg'),(80,'小乔','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407286119664.jpg'),(81,'大乔','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407297792914.jpg'),(82,'阿珂','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407307236349.jpg'),(83,'公孙离','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407343553175.jpg'),(84,'百里玄策','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407407526921.jpg');

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
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `video` */

insert  into `video`(`v_id`,`v_title`,`v_type`,`v_teacher`,`v_link`,`v_date`,`v_update`,`v_isrecommend`,`v_catelog`,`v_cover`,`v_describe`) values (2,'3232',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(3,'43434',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(4,'tretret',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(6,'323232','dasda','sadasdsa','sdadsad','','',NULL,'','pic/666/666c4283-fecc-47bf-9656-cb5b7172929d.jpg',' \r\n													<span>限50字</span>\r\n												');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
