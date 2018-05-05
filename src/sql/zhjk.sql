-- MySQL dump 10.13  Distrib 5.7.3-m13, for Win64 (x86_64)
--
-- Host: localhost    Database: zhjk
-- ------------------------------------------------------
-- Server version	5.7.3-m13-log

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
-- Current Database: `zhjk`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zhjk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhjk`;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `src` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'1H5','img/home/H5-banner.jpg','HomePage','h5.action'),(2,'2Java','img/home/Java-banner.jpg','HomePage','java.action'),(3,'3UI','img/home/UI-banner.jpg','HomePage','ui.action');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_printscreen`
--

DROP TABLE IF EXISTS `chat_printscreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_printscreen` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `c_src` varchar(128) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_printscreen`
--

LOCK TABLES `chat_printscreen` WRITE;
/*!40000 ALTER TABLE `chat_printscreen` DISABLE KEYS */;
INSERT INTO `chat_printscreen` VALUES (5,'/pic/chatPrintscreen/1524487787364074.png'),(6,'/pic/chatPrintscreen/1524487796135781.png'),(7,'/pic/chatPrintscreen/1524487885343778.png'),(8,'/pic/chatPrintscreen/1524487899343943.png'),(9,'/pic/chatPrintscreen/1524487918668868.png');
/*!40000 ALTER TABLE `chat_printscreen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_dynamic`
--

DROP TABLE IF EXISTS `com_dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `content` text COMMENT '正文内容',
  `type` varchar(32) DEFAULT NULL COMMENT '分类 资源分享=resource 技术交流=technology 最新活动=new',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `top` tinyint(4) DEFAULT '0' COMMENT '是否置顶 0否 1是',
  `original` tinyint(4) DEFAULT '0' COMMENT '是否原创 0否 1是',
  `thumbuper` varchar(10000) DEFAULT NULL COMMENT '点赞者id记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_dynamic`
--

LOCK TABLES `com_dynamic` WRITE;
/*!40000 ALTER TABLE `com_dynamic` DISABLE KEYS */;
INSERT INTO `com_dynamic` VALUES (1,'欢迎大家来到社区','vicky','2018-04-16 20:44:16',185,0,38,'张老师','2018-05-09 23:44:16','不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','resource','/pic/chatPrintscreen/1524551889822939.jpg',1,1,'3,1,'),(2,'hello everyone!!!!!!','lili','2018-04-16 20:44:16',21,0,0,'管理员','2018-05-03 07:54:58','<div id=\"navCategory\" style=\"color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><p style=\"margin-right: auto; margin-left: auto; font-size: 18px;\"><b>阅读目录</b></p><ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 30px;\"><li style=\"margin-bottom: 0.1em; list-style: inherit !important;\"><a href=\"https://www.cnblogs.com/selene/p/4518246.html#_label0\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\">一:间接请求转发(Redirect)</a></li><li style=\"margin-bottom: 0.1em; list-style: inherit !important;\"><a href=\"https://www.cnblogs.com/selene/p/4518246.html#_label1\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\">二:直接请求转发(Forward)</a></li></ul></div><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　　用户向服务器发送了一次HTTP请求，该请求可能会经过多个信息资源处理以后才返回给用户，各个信息资源使用请求转发机制相互转发请求，但是用户是感觉不到请求转发的。根据转发方式的不同，可以区分为直接请求转发(Forward)和间接请求转发(Redirect)，那么这两种转发方式有何区别呢？本篇在回答该问题的同时全面的讲解两种请求转发方式的原理和区别。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">【出现频率】&nbsp;<img src=\"https://images0.cnblogs.com/blog2015/712052/201505/202134374792839.png\" alt=\"\" width=\"144\" height=\"24\" style=\"border: 0px; max-width: 900px;\"><br></span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">【关键考点】</span></p><ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 30px; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em; list-style: inherit !important;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">请求转发的含义；</span></li><li style=\"margin-bottom: 0.1em; list-style: inherit !important;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">Forward转发请求的原理；</span></li><li style=\"margin-bottom: 0.1em; list-style: inherit !important;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">Redirect转发请求的原理。</span></li></ul><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">【考题分析】</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　　Forward和Redirect代表了两种请求转发方式：直接转发和间接转发。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\"><strong>　 &nbsp;直接转发方式（Forward）</strong>，客户端和浏览器只发出一次请求，Servlet、HTML、JSP或其它信息资源，由第二个信息资源响应该请求，在请求对象request中，保存的对象对于每个信息资源是共享的。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　　<strong>间接转发方式（Redirect）</strong>实际是两次HTTP请求，服务器端在响应第一次请求的时候，让浏览器再向另外一个URL发出请求，从而达到转发的目的。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">举个通俗的例子：</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　<strong><span style=\"line-height: 1.8; color: rgb(255, 0, 0);\">　直接转发就相当于：“A找B借钱，B说没有，B去找C借，借到借不到都会把消息传递给A”；</span></strong></span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\"><strong><span style=\"line-height: 1.8; font-family: 宋体; color: rgb(255, 0, 0);\">　　间接转发就相当于：\"A找B借钱，B说没有，让A去找C借\"。</span></strong></span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">下面详细阐述一下两者的原理：</span></p><div style=\"color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px; text-align: right;\"><a href=\"https://www.cnblogs.com/selene/p/4518246.html#_labelTop\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\">回到顶部</a><a name=\"_label0\" style=\"padding: 1px 2px; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\"></a></div><h2 style=\"padding: 6px; color: rgb(255, 255, 255); background-color: rgb(64, 108, 164); font-size: 21px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, 宋体, &quot;Segoe UI&quot;, Tahoma, Arial; border-radius: 5px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">一:间接请求转发(Redirect)</span></h2><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\"><span style=\"line-height: 1.8; font-family: 宋体;\">　　间接转发方式，有时也叫重定向，它一般用于避免用户的非正常访问。例如：用户在没有登录的情况下访问后台资源，Servlet可以将该HTTP请求重定向到登录页面，让用户登录以后再访问。在Servlet中，通过调用response对象的SendRedirect()方法，告诉浏览器重定向访问指定的URL，示例代码如下：</span><span style=\"line-height: 1.8; font-family: 宋体;\">　</span></span></p><div style=\"margin-top: 5px; margin-bottom: 5px; padding: 5px; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); overflow: auto; font-family: &quot;Courier New&quot; !important;\"><div style=\"margin-top: 5px;\"><span style=\"padding-right: 5px; line-height: 1.8;\"><a href=\"javascript:void(0);\" onclick=\"copyCnblogsCode(this)\" title=\"复制代码\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border: none !important;\"><img src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" style=\"max-width: 900px; border: none !important;\"></a></span></div><pre style=\"margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &quot;Courier New&quot; !important;\"><span style=\"font-size: 16px; line-height: 1.8;\"><span style=\"line-height: 1.8; font-size: 12px !important;\">......\r\n</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">//</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">Servlet中处理get请求的方法</span>\r\n<span style=\"line-height: 1.8; color: rgb(0, 0, 255); font-size: 12px !important;\">public</span> <span style=\"line-height: 1.8; color: rgb(0, 0, 255); font-size: 12px !important;\">void</span><span style=\"line-height: 1.8; font-size: 12px !important;\"> doGet(HttpServletRequest request,HttpServletResponse response){\r\n</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">//</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">请求重定向到另外的资源</span>\r\n    response.sendRedirect(\"资源的URL\"<span style=\"line-height: 1.8; font-size: 12px !important;\">);\r\n}\r\n........</span></span></pre><div style=\"margin-top: 5px;\"><span style=\"padding-right: 5px; line-height: 1.8;\"><a href=\"javascript:void(0);\" onclick=\"copyCnblogsCode(this)\" title=\"复制代码\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border: none !important;\"><img src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" style=\"max-width: 900px; border: none !important;\"></a></span></div></div><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">　 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;　<img src=\"https://images0.cnblogs.com/blog2015/712052/201505/202214341663208.png\" alt=\"\" style=\"border: 0px; max-width: 900px;\"></span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">上图所示的间接转发请求的过程如下：</span></p><ol style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 40px; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">浏览器向Servlet1发出访问请求；</span></li><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">Servlet1调用sendRedirect()方法，将浏览器重定向到Servlet2；</span></li><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">浏览器向servlet2发出请求；</span></li><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">最终由Servlet2做出响应。&nbsp;</span></li></ol><div style=\"color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px; text-align: right;\"><a href=\"https://www.cnblogs.com/selene/p/4518246.html#_labelTop\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\">回到顶部</a><a name=\"_label1\" style=\"padding: 1px 2px; color: rgb(39, 105, 192); border-bottom: 1px dotted rgb(51, 51, 51);\"></a></div><h2 style=\"padding: 6px; color: rgb(255, 255, 255); background-color: rgb(64, 108, 164); font-size: 21px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;, 宋体, &quot;Segoe UI&quot;, Tahoma, Arial; border-radius: 5px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">二:直接请求转发(Forward)</span></h2><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">&nbsp;　　直接转发方式用的更多一些，一般说的请求转发指的就是直接转发方式。Web应用程序大多会有一个控制器。由控制器来控制请求应该转发给那个信息资源。然后由这些信息资源处理请求，处理完以后还可能转发给另外的信息资源来返回给用户，这个过程就是经典的MVC模式。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">　　javax.serlvet.RequestDispatcher接口是请求转发器必须实现的接口，由Web容器为Servlet提供实现该接口的对象，通过调用该接口的forward()方法到达请求转发的目的，示例代码如下：</span></p><div style=\"margin-top: 5px; margin-bottom: 5px; padding: 5px; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); overflow: auto; font-family: &quot;Courier New&quot; !important;\"><div style=\"margin-top: 5px;\"><span style=\"padding-right: 5px; line-height: 1.8;\"><a href=\"javascript:void(0);\" onclick=\"copyCnblogsCode(this)\" title=\"复制代码\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border: none !important;\"><img src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" style=\"max-width: 900px; border: none !important;\"></a></span></div><pre style=\"margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; word-wrap: break-word; font-family: &quot;Courier New&quot; !important;\"><span style=\"font-size: 16px; line-height: 1.8;\"><span style=\"line-height: 1.8; font-size: 12px !important;\">......\r\n    </span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">//</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">Servlet里处理get请求的方法</span>\r\n <span style=\"line-height: 1.8; color: rgb(0, 0, 255); font-size: 12px !important;\">public</span> <span style=\"line-height: 1.8; color: rgb(0, 0, 255); font-size: 12px !important;\">void</span><span style=\"line-height: 1.8; font-size: 12px !important;\"> doGet(HttpServletRequest request , HttpServletResponse response){\r\n     </span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">//</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">获取请求转发器对象，该转发器的指向通过getRequestDisPatcher()的参数设置</span>\r\n   RequestDispatcher requestDispatcher =request.getRequestDispatcher(\"资源的URL\"<span style=\"line-height: 1.8; font-size: 12px !important;\">);\r\n</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">    //</span><span style=\"line-height: 1.8; color: rgb(0, 128, 0); font-size: 12px !important;\">调用forward()方法，转发请求</span><span style=\"line-height: 1.8; font-size: 12px !important;\">      \r\n   requestDispatcher.forward(request,response);    \r\n}<br>......</span></span></pre><div style=\"margin-top: 5px;\"><span style=\"padding-right: 5px; line-height: 1.8;\"><a href=\"javascript:void(0);\" onclick=\"copyCnblogsCode(this)\" title=\"复制代码\" style=\"padding: 1px 2px; text-decoration-line: none; color: rgb(39, 105, 192); border: none !important;\"><img src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" style=\"max-width: 900px; border: none !important;\"></a></span></div></div><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">&nbsp;　　　　　　　　<img src=\"https://images0.cnblogs.com/blog2015/712052/201505/202240531979609.png\" alt=\"\" style=\"border: 0px; max-width: 900px;\"></span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\">&nbsp;上图所示的直接转发请求的过程如下：</span></p><ol style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 40px; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">浏览器向Servlet1发出访问请求；</span></li><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">Servlet1调用forward()方法，在服务器端将请求转发给Servlet2；</span></li><li style=\"list-style: decimal;\"><span style=\"line-height: 1.8; font-size: 16px;\">最终由Servlet2做出响应。</span></li></ol><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px;\"><strong><span style=\"line-height: 1.8; color: rgb(255, 0, 0);\">技巧：</span></strong>其实，通过浏览器就可以观察到服务器端使用了那种请求转发方式，当单击某一个超链接时，浏览器的地址栏会出现当前请求的地址，如果服务器端响应完成以后，发现地址栏的地址变了，则证明是间接的请求转发。相反，如果地址没有发生变化，则代表的是直接请求转发或者没有转发。</span></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体; color: rgb(255, 0, 0);\">问：直接转发和间接转发的原理及区别是什么？</span></strong></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">答：Forward和Redirect代表了两种请求转发方式：直接转发和间接转发。对应到代码里，分别是RequestDispatcher类的forward()方法和HttpServletRequest类的sendRedirect()方法。<br></span></strong></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　　对于间接方式，服务器端在响应第一次请求的时候，让浏览器再向另外一个URL发出请求，从而达到转发的目的。它本质上是两次HTTP请求，对应两个request对象。</span></strong></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">　　对于直接方式，客户端浏览器只发出一次请求，Servlet把请求转发给Servlet、HTML、JSP或其它信息资源，由第2个信息资源响应该请求，两个信息资源共享同一个request对象。</span></strong></p><p style=\"margin-right: auto; margin-left: auto; color: rgb(51, 51, 51); font-family: verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"line-height: 1.8; font-size: 16px; font-family: 宋体;\">&nbsp;　　最后，祝大家都能找到一个称心满意的工作！</span></p>','new','/pic/photos/1525348007807133.jpg',1,1,''),(3,'学习使我快乐','hehe','2018-04-16 20:44:16',44,0,1,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','technology',NULL,1,1,'3,'),(4,'不要逼我，狠起来我都怕','lulu','2018-04-16 20:44:16',4,0,0,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','new',NULL,0,1,NULL),(5,'真怀念这些日子','库鲁','2018-04-16 20:44:16',3,0,0,NULL,NULL,'不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕','resource',NULL,0,0,NULL),(6,'起来','lulu','2018-04-18 13:11:38',6,0,2,NULL,NULL,NULL,'resource',NULL,1,0,NULL),(7,'真怀念这些日子','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'new',NULL,1,1,NULL),(8,'真怀念这些日子','lulu','2018-04-18 13:11:38',1,0,0,NULL,NULL,NULL,'technology',NULL,0,0,NULL),(9,'真怀念这些日子','lulu','2018-04-18 13:11:38',4,0,1,NULL,NULL,NULL,'technology',NULL,0,1,'3,'),(10,'欢迎大家来到社区','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(11,'真怀念这些日子','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'new',NULL,0,1,NULL),(12,'everyone!!!!!!','lulu','2018-04-18 13:11:38',0,0,0,NULL,NULL,NULL,'technology',NULL,0,0,NULL),(13,'everyone!!!!!!',NULL,NULL,2,0,0,NULL,NULL,NULL,'resource',NULL,1,0,NULL),(14,'everyone!!!!!!',NULL,NULL,4,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(15,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(16,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(17,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(18,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(19,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(20,'everyone!!!!!!',NULL,NULL,2,0,0,NULL,NULL,NULL,'resource',NULL,1,0,NULL),(21,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(22,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(23,'everyone!!!!!!',NULL,'2018-06-16 20:44:16',0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(24,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(25,'everyone!!!!!!',NULL,NULL,13,0,0,NULL,NULL,NULL,'resource',NULL,1,0,NULL),(26,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(27,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(28,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(29,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(30,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(31,'everyone!!!!!!',NULL,NULL,0,0,0,NULL,NULL,NULL,'resource',NULL,0,0,NULL),(32,'哈哈哈','测试帐号1','2018-06-16 20:44:16',1,0,0,NULL,'2018-06-16 20:44:16','<b>减肥劳动纠纷</b>','new','pic/1524556252080241.jpg',0,0,NULL),(33,'再测试','测试帐号1','2018-04-24 15:57:03',3,0,0,NULL,'2018-04-24 15:57:03','<b><i>再测试再测试再测试</i></b>','technology','pic/1524556605270641.jpg',0,0,NULL),(34,'哈哈哈哈哈哈哈哈哈','测试帐号1','2018-04-24 16:18:08',1,0,0,NULL,'2018-04-24 16:18:08','<span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">哈哈哈</span><br>','new','pic/1524557886363935.jpg',0,0,NULL),(35,'就是大连分','测试帐号1','2018-04-24 16:21:45',1,0,0,NULL,'2018-04-24 16:21:45','从对方解放军饭到口就是大连分<div>的发送方法都是交流发电机发送<div>方分单巍峨问题的发送方第三</div><div>方洗发水的观点哦发放散热是个</div></div>','resource','pic/1524558103871456.jpg',0,0,NULL),(36,'伏牛山分单','测试帐号1','2018-04-24 16:30:11',1,0,0,NULL,'2018-04-24 16:30:11','     福鼎市福鼎市 福鼎市分单去； 发大水法啊','new','pic/1524558608759067.jpg',0,0,NULL),(37,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `com_dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `c_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `c_time` varchar(64) DEFAULT NULL COMMENT '鍙戣〃鏃堕棿',
  `c_thumbups` int(32) DEFAULT NULL COMMENT '璧炵殑鏁伴噺',
  `c_uid` int(255) DEFAULT NULL COMMENT '澶栭敭 鍙戣〃鑰卛d',
  `c_articleid` int(255) DEFAULT NULL COMMENT '澶栭敭 鏂囩珷id',
  `c_content` varchar(500) DEFAULT NULL COMMENT '璇勮?鍐呭?',
  `c_thumbuper` varchar(10000) DEFAULT NULL COMMENT '鐐硅禐鑰呯殑id瀛楃?涓?锛屽彿鍒嗛殧',
  PRIMARY KEY (`c_id`),
  KEY `articleid` (`c_articleid`),
  KEY `userid` (`c_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inst_dynamic`
--

DROP TABLE IF EXISTS `inst_dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inst_dynamic` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `post_time` varchar(128) NOT NULL,
  `views` int(11) DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inst_dynamic`
--

LOCK TABLES `inst_dynamic` WRITE;
/*!40000 ALTER TABLE `inst_dynamic` DISABLE KEYS */;
INSERT INTO `inst_dynamic` VALUES (6,'资讯2','2018-04-16 20:48:14',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(7,'资讯3','2018-04-16 20:59:01',0,'阿呆飞机阿里发动反击；按理说德萨放大经；降幅达； 阿凡达激发；十大风景啊；士大夫埃德加封口机啊；阿激发对方'),(8,'资讯4','2018-04-16 21:00:02',0,'阿呆飞机啊；了德萨可夫阿里奥斯丁啊激发对方'),(9,'资讯5','2018-04-16 21:06:00',0,'阿呆飞机啊；了德萨可夫阿里奥斯丁啊激发对方'),(10,'aaaa','2018-04-18 14:26:39',0,'<b>wangEditor</b><p><img src=\"http://localhost:8080/zhjkcms/img/e7b164f2f08c4144b5b602fdf9c8d7ee.png\" style=\"max-width:100%;\">fqawe;jfajdf\'admfa\'sdfd\'k \'ddddddddddddddddddddddddddddddddddddd<br></p>');
/*!40000 ALTER TABLE `inst_dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `succstudent`
--

DROP TABLE IF EXISTS `succstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `succstudent`
--

LOCK TABLES `succstudent` WRITE;
/*!40000 ALTER TABLE `succstudent` DISABLE KEYS */;
INSERT INTO `succstudent` VALUES (1,'赵铁柱','大专','广州未来**',8000,'UID设计','2017-7-2','哈佛大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375336872614.jpg'),(2,'李白','大专','广州未来**科技3',8000,'UID设计','2017-7-1','武汉大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375349557555.jpg'),(4,'李思','大专','广州未来**科技5',8000,'UID设计','2017-7-1','哈佛大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524375496406976.jpg'),(5,'李大钊','大专','广州未来**科技6',8000,'UID设计','2017-7-1','北京大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524376009932000.jpg'),(6,'毒妇','大专','广州未来**科技7',8000,'UID设计','2017-7-1','天津大学','互联网的发展让UI设计师成为当下最热门的...','/pic/photos/1524376023931571.jpg'),(69,'赵云','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407142744707.jpg'),(70,'关羽','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407155674545.jpg'),(71,'妲己','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407165951142.jpg'),(72,'武则天','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407180459324.jpg'),(73,'花木兰','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407192546109.jpg'),(74,'蔡文姬','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407207997707.jpg'),(75,'王昭君','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407223727057.jpg'),(76,'貂蝉','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407235690722.jpg'),(77,'甄姬','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407250391277.jpg'),(78,'杨玉环','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407262133810.jpg'),(79,'李元芳','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407272642750.jpg'),(80,'小乔','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407286119664.jpg'),(81,'大乔','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407297792914.jpg'),(82,'阿珂','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407307236349.jpg'),(83,'公孙离','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407343553175.jpg'),(84,'百里玄策','大专','阿里巴巴',8000,'UID设计','2017-7-2','哈佛大学','学厨师就到新东方','/pic/photos/1524407407526921.jpg');
/*!40000 ALTER TABLE `succstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师id',
  `t_name` varchar(20) DEFAULT NULL COMMENT '老师姓名',
  `t_course` varchar(50) DEFAULT NULL COMMENT '所教课程',
  `t_introduction` varchar(500) DEFAULT NULL COMMENT '老师介绍',
  `t_photos` varchar(128) DEFAULT NULL COMMENT '老师照片',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'老师一号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551950683697.jpg'),(2,'三生三世','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551185202227.jpg'),(3,'三生三世','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551193174149.jpg'),(4,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551206709155.jpg'),(5,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551962483549.jpg'),(6,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524551970109188.jpg'),(7,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552008880067.jpg'),(8,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552054309910.jpg'),(9,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552087771858.jpg'),(10,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552063350134.jpg'),(11,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552078230584.jpg'),(12,'老师二号','JAVA','知海匠库资深HTML5讲师、十年前端项目工作经验、曾任职于知名企业中国知网、并负责过民生银行、工商银行北京供热网等企业的系统开发和前端项目、精通CSS3,JQUERY,HTML5,JS系列技术、并熟悉其相关的前端框架：经常受邀参与一线技术的技术培训，培训客户涉及金融、石油、食品、烟草、民航、电子商务、网络游戏等多个行业、为众多客户单位提供了高质量的技术培训、为企业的信息化建设培养了大量相关人才','/pic/photos/1524552069383603.jpg');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户账号',
  `password` varchar(64) NOT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123','管理员');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (2,'3232',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(3,'43434',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(4,'tretret',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(6,'323232','dasda','sadasdsa','sdadsad','','',NULL,'','pic/666/666c4283-fecc-47bf-9656-cb5b7172929d.jpg',' \r\n													<span>限50字</span>\r\n												');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-05 10:51:50
