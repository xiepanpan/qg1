/*
Navicat MySQL Data Transfer

Source Server         : 150
Source Server Version : 50638
Source Host           : 192.168.9.150:3306
Source Database       : qg_user_db

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-01-03 15:14:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qg_user
-- ----------------------------
DROP TABLE IF EXISTS `qg_user`;
CREATE TABLE `qg_user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `wxUserId` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of qg_user
-- ----------------------------
INSERT INTO `qg_user` VALUES ('1', '13366055111', '123456', '', '张杉', '2017-12-22 09:54:06', '2017-12-23 09:54:08');
INSERT INTO `qg_user` VALUES ('590673375903354880', null, null, 'oPxiwwqb6H7bz1oACboaQ97txffY', null, '2018-12-13 14:20:02', null);
