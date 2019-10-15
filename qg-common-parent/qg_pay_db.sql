/*
Navicat MySQL Data Transfer

Source Server         : 150
Source Server Version : 50638
Source Host           : 192.168.9.150:3306
Source Database       : qg_pay_db

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-01-03 15:14:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qg_trade
-- ----------------------------
DROP TABLE IF EXISTS `qg_trade`;
CREATE TABLE `qg_trade` (
  `id` varchar(255) NOT NULL,
  `orderNo` varchar(255) DEFAULT NULL COMMENT '业务订单号',
  `tradeNo` varchar(255) DEFAULT NULL COMMENT '交易订单号',
  `payMethod` int(1) DEFAULT NULL COMMENT '(1:支付宝 2:微信)',
  `amount` decimal(10,3) DEFAULT NULL COMMENT '交易金额',
  `createdTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updatedTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qg_trade
-- ----------------------------
