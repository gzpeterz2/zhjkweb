/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-18 08:41:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for video
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '323232', null, null, null, null, null, '1', null, null, null);
INSERT INTO `video` VALUES ('2', '3232', null, null, null, null, null, '1', null, null, null);
INSERT INTO `video` VALUES ('3', '43434', null, null, null, null, null, '1', null, null, null);
INSERT INTO `video` VALUES ('4', 'tretret', null, null, null, null, null, '1', null, null, null);
