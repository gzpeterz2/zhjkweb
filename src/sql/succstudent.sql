/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-25 20:12:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for succstudent
-- ----------------------------
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

-- ----------------------------
-- Records of succstudent
-- ----------------------------
INSERT INTO `succstudent` VALUES ('1', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('2', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('3', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('4', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('5', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('6', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('7', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('8', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('9', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('10', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('11', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('12', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('13', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('14', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('15', '张小美', '本科', '腾讯公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '107', '啊哈哈哈哈哈哈', '11');
INSERT INTO `succstudent` VALUES ('16', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
INSERT INTO `succstudent` VALUES ('17', '刘小玲', '本科', '百度公司', '8000', null, null, null, null, null, '2017-05-15 17:25:17', null, '20', '测试内容', '5');
