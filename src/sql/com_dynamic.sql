/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-23 21:50:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for com_dynamic
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of com_dynamic
-- ----------------------------
INSERT INTO `com_dynamic` VALUES ('1', '欢迎大家来到社区', 'vicky', '2018-04-16 20:44:16', '96', '0', '0', '张老师', '2018-05-09 23:44:16', '不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕', 'resource', null, '1', '1');
INSERT INTO `com_dynamic` VALUES ('2', 'hello everyone!!!!!!', 'lili', '2018-04-16 20:44:16', '12', '0', '0', null, null, '不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕', 'new', null, '0', '0');
INSERT INTO `com_dynamic` VALUES ('3', '学习使我快乐', 'hehe', '2018-04-16 20:44:16', '15', '0', '0', null, null, '不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕', 'technology', null, '1', '1');
INSERT INTO `com_dynamic` VALUES ('4', '不要逼我，狠起来我都怕', 'lulu', '2018-04-16 20:44:16', '4', '0', '0', null, null, '不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕', 'new', null, '0', '1');
INSERT INTO `com_dynamic` VALUES ('5', '真怀念这些日子', '库鲁', '2018-04-16 20:44:16', '3', '0', '0', null, null, '不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕不要逼我，狠起来我都怕', 'resource', null, '0', '0');
INSERT INTO `com_dynamic` VALUES ('6', '起来', 'lulu', '2018-04-18 13:11:38', '3', '0', '0', null, null, null, 'resource', null, '1', null);
INSERT INTO `com_dynamic` VALUES ('7', '真怀念这些日子', 'lulu', '2018-04-18 13:11:38', '0', '0', '0', null, null, null, 'new', null, '1', '1');
INSERT INTO `com_dynamic` VALUES ('8', '真怀念这些日子', 'lulu', '2018-04-18 13:11:38', '1', '0', '0', null, null, null, 'technology', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('9', '真怀念这些日子', 'lulu', '2018-04-18 13:11:38', '3', '0', '0', null, null, null, 'technology', null, '0', '1');
INSERT INTO `com_dynamic` VALUES ('10', '欢迎大家来到社区', 'lulu', '2018-04-18 13:11:38', '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('11', '真怀念这些日子', 'lulu', '2018-04-18 13:11:38', '0', '0', '0', null, null, null, 'new', null, '0', '1');
INSERT INTO `com_dynamic` VALUES ('12', 'everyone!!!!!!', 'lulu', '2018-04-18 13:11:38', '0', '0', '0', null, null, null, 'technology', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('13', 'everyone!!!!!!', null, null, '2', '0', '0', null, null, null, 'resource', null, '1', null);
INSERT INTO `com_dynamic` VALUES ('14', 'everyone!!!!!!', null, null, '4', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('15', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('16', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('17', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('18', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('19', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('20', 'everyone!!!!!!', null, null, '2', '0', '0', null, null, null, 'resource', null, '1', null);
INSERT INTO `com_dynamic` VALUES ('21', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('22', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('23', 'everyone!!!!!!', null, '2018-06-16 20:44:16', '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('24', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('25', 'everyone!!!!!!', null, null, '1', '0', '0', null, null, null, 'resource', null, '1', null);
INSERT INTO `com_dynamic` VALUES ('26', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('27', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('28', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('29', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('30', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
INSERT INTO `com_dynamic` VALUES ('31', 'everyone!!!!!!', null, null, '0', '0', '0', null, null, null, 'resource', null, '0', null);
