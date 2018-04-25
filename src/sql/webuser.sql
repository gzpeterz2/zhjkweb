/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-23 21:50:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for webuser
-- ----------------------------
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

-- ----------------------------
-- Records of webuser
-- ----------------------------
INSERT INTO `webuser` VALUES ('1', 'test1', 'e10adc3949ba59abbe56e057f20f883e', '测试帐号1', 'fdsf', '10', null, null);
INSERT INTO `webuser` VALUES ('2', 'test2', 'e10adc3949ba59abbe56e057f20f883e', '测试帐号2', 'fds', '1000', null, null);
INSERT INTO `webuser` VALUES ('3', 'test3', 'e10adc3949ba59abbe56e057f20f883e', '测试帐号3', 'fs', '100', null, null);
