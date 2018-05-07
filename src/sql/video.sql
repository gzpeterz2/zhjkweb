/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-23 21:50:22
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
  `v_describe` varchar(1000) DEFAULT NULL COMMENT '描述',
  `v_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '哈哈哈课程', 'JAVA', '张文老师', null, null, null, '1', null, null, '鹅鹅鹅，曲项向天歌。白毛浮绿水，红掌拨清波。', '男女老少皆宜');
INSERT INTO `video` VALUES ('2', '3232', 'JAVA', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('3', '43434', 'JAVA', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('4', 'tretrete', 'UI', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('5', 'ewe', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('6', 'dsad', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('7', 'fdsf', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('8', 'gfdgs', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('9', 'gfdg', 'UI', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('10', 'gfsg', 'WEB', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('11', 'fgsgf', 'UI', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('12', 'fgsgf', 'UI', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('13', 'fgsgf', 'JAVA', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('14', 'fsg', 'UI', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('15', 'dsad', 'UI', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('16', 'dsad', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('17', 'fdf', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('18', 'asdsa', 'UI', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('19', 'cxcx', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('20', 'sad', 'WEB', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('21', '1212', 'WEB', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('22', 'cxzc', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('23', 'fd', 'WEB', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('24', 'dsc', 'JAVA', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('25', 'df', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('26', 'csf', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('27', 'erew', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('28', 'eze5', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('29', '5543', 'JAVA', null, null, null, null, '1', null, null, null, null);
INSERT INTO `video` VALUES ('30', 'vasd', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('31', '34324', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('32', 'vccxv', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('33', 'fdsf', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('34', 'dsd43', 'JAVA', null, null, null, null, null, null, null, null, null);
INSERT INTO `video` VALUES ('35', 'dsfggfs', 'JAVA', null, null, null, null, null, null, null, null, null);
