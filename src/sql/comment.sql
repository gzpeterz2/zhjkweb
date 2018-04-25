/*
Navicat MySQL Data Transfer

Source Server         : oylsql
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : zhjk

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2018-04-24 22:45:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
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

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2018-06-16 20:44:16', '2', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('2', '2018-06-16 20:44:16', '2', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('3', '2018-06-16 20:44:16', '2', '3', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('4', '2018-06-16 20:44:16', '2', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('5', '2018-06-16 20:44:16', '2', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('6', '2018-06-16 20:44:16', '2', '3', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('7', '2018-06-16 20:44:16', '2', '1', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('8', '2018-06-16 20:44:16', '2', '1', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('9', '2018-06-16 20:44:16', '2', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('10', '2018-06-16 20:44:16', '2', '2', '3', '测试内容', null);
INSERT INTO `comment` VALUES ('11', '2018-06-16 20:44:16', '2', '2', '3', '测试内容', null);
INSERT INTO `comment` VALUES ('12', '2018-06-16 20:44:16', '2', '2', '14', '测试内容', null);
INSERT INTO `comment` VALUES ('13', '2018-06-16 20:44:16', '2', '2', '14', '测试内容', null);
INSERT INTO `comment` VALUES ('14', '2018-06-16 20:44:16', '2', '1', '14', '测试内容', null);
INSERT INTO `comment` VALUES ('15', '2018-06-16 20:44:16', '2', '1', '14', '测试内容', null);
INSERT INTO `comment` VALUES ('16', '2018-06-16 20:44:16', '2', '1', '5', '测试内容', null);
INSERT INTO `comment` VALUES ('17', '2018-06-16 20:44:16', '2', '1', '5', '测试内容', null);
INSERT INTO `comment` VALUES ('18', '2018-06-16 20:44:16', '2', '2', '5', '测试内容', null);
INSERT INTO `comment` VALUES ('19', '2018-06-16 20:44:16', '2', '2', '5', '测试内容', null);
INSERT INTO `comment` VALUES ('20', '2018-06-16 20:44:16', '2', '2', '8', '测试内容', null);
INSERT INTO `comment` VALUES ('21', '2018-06-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('22', '2018-06-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('23', '2018-06-16 20:44:16', '3', '3', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('24', '2018-06-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('25', '2018-06-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('26', '2018-06-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('27', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('28', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('29', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('30', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('31', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('32', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('33', '2018-02-16 20:44:16', '3', '1', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('34', '2018-02-16 20:44:16', '3', '1', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('35', '2018-02-16 20:44:16', '3', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('36', '2018-02-16 20:44:16', '3', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('37', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('38', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('39', '2018-02-16 20:44:16', '3', '3', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('40', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('41', '2018-02-16 20:44:16', '3', '1', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('42', '2018-02-16 20:44:16', '3', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('43', '2018-02-16 20:44:16', '3', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('44', '2018-02-16 20:44:16', '3', '2', '2', '测试内容', null);
INSERT INTO `comment` VALUES ('45', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('46', '2018-02-16 20:44:16', '3', '2', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('47', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('48', '2018-02-16 20:44:16', '3', '1', '1', '测试内容', null);
INSERT INTO `comment` VALUES ('49', null, null, null, '2', '', null);
INSERT INTO `comment` VALUES ('50', null, null, null, '25', 'dsafffgsfdggfs', null);
INSERT INTO `comment` VALUES ('51', null, null, '3', '1', '哈哈哈哈哈', null);
