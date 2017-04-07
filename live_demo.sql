/*
Navicat MySQL Data Transfer

Source Server         : live
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : live_demo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-03-29 09:32:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `groupid` varchar(128) NOT NULL DEFAULT '',
  `userid` varchar(50) NOT NULL,
  `liveuserid` varchar(50) NOT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupid`,`userid`,`liveuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for live_data
-- ----------------------------
DROP TABLE IF EXISTS `live_data`;
CREATE TABLE `live_data` (
  `userid` varchar(128) NOT NULL,
  `stream_id` varchar(128) DEFAULT NULL,
  `groupid` varchar(128) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  `frontcover` varchar(255) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `push_url` varchar(255) NOT NULL DEFAULT '',
  `status` int(4) DEFAULT '0',
  `like_count` int(11) DEFAULT '0',
  `viewer_count` int(11) DEFAULT '0',
  `check_status` int(4) DEFAULT '0',
  `forbidflag` int(2) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `play_url` varchar(255) DEFAULT NULL,
  `hls_play_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `stream_id` (`stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of live_data
-- ----------------------------
INSERT INTO `live_data` VALUES ('15', '191146937880438460', null, 'bshshshvv', 'test4', null, null, null, '', '0', '0', '0', '0', null, null, '0000-00-00 00:00:00', '58da1665f8bc7211f09e5699', null);
INSERT INTO `live_data` VALUES ('16', '638079348364314100', null, '哦护发素', 'test5', null, null, null, '', '1', '0', '0', '0', null, null, '0000-00-00 00:00:00', '58da1381f8bc7211f09e5685', null);
INSERT INTO `live_data` VALUES ('20', '317818257176937500', null, '反方向下', 'test7', null, null, null, '', '0', '0', '0', '0', null, null, '0000-00-00 00:00:00', '58da151ef8bc7211f09e568f', null);
INSERT INTO `live_data` VALUES ('777', null, null, '', null, null, null, null, '', '0', '0', '0', '0', null, null, '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for tape_data
-- ----------------------------
DROP TABLE IF EXISTS `tape_data`;
CREATE TABLE `tape_data` (
  `userid` varchar(50) NOT NULL,
  `file_id` varchar(150) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  `headpic` varchar(255) DEFAULT NULL,
  `frontcover` varchar(255) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `play_url` varchar(255) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT '0',
  `viewer_count` int(11) NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hls_play_url` varchar(255) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userid`,`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tape_data
-- ----------------------------
INSERT INTO `tape_data` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(255) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `sex` bit(1) DEFAULT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaaatest4', '', '654321');
INSERT INTO `user` VALUES ('2', 'modify1', '\0', '456789');
INSERT INTO `user` VALUES ('3', 'modify909890', '', '456789');
INSERT INTO `user` VALUES ('4', 'saltone2', null, '123456789');
INSERT INTO `user` VALUES ('5', 'saltone4', null, '456789');
INSERT INTO `user` VALUES ('6', 'saltone3', null, '456789');
INSERT INTO `user` VALUES ('7', 'test22', null, '123456789');
INSERT INTO `user` VALUES ('8', 'saltone6', null, '456789');
INSERT INTO `user` VALUES ('9', 'test2', null, '123456789');
INSERT INTO `user` VALUES ('10', 'test3', null, '987654321');
INSERT INTO `user` VALUES ('11', 'test', null, '123456789');
INSERT INTO `user` VALUES ('14', 'test123', null, '123456789');
INSERT INTO `user` VALUES ('15', 'test4', null, '123456789');
INSERT INTO `user` VALUES ('16', 'test5', null, '123456789');
INSERT INTO `user` VALUES ('17', 'tuuu', null, '123456789');
INSERT INTO `user` VALUES ('18', 'fhjjj', null, '123456789');
INSERT INTO `user` VALUES ('19', 'hjjhggg', null, '123456789');
INSERT INTO `user` VALUES ('20', 'test7', '\0', '123456789');
SET FOREIGN_KEY_CHECKS=1;
