/*
Navicat MySQL Data Transfer

Source Server         : 150
Source Server Version : 50638
Source Host           : 192.168.9.150:3306
Source Database       : qg_order_db

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-01-03 15:14:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qg_order
-- ----------------------------
DROP TABLE IF EXISTS `qg_order`;
CREATE TABLE `qg_order` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `userId` varchar(255) DEFAULT NULL,
  `stockId` varchar(255) DEFAULT NULL COMMENT '库存Id',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `goodsId` varchar(255) DEFAULT NULL COMMENT '商品Id',
  `num` int(11) DEFAULT NULL COMMENT '购买量',
  `amount` decimal(5,2) DEFAULT NULL COMMENT '总价',
  `status` int(1) DEFAULT NULL COMMENT '状态(0：待支付 1：支付成功 2:支付失败)',
  `aliTradeNo` varchar(255) DEFAULT NULL COMMENT '阿里支付交易号',
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qg_order
-- ----------------------------
INSERT INTO `qg_order` VALUES ('593248700126466048', '1', '593248699430211584', 'QG00120181220085326baa811', '1', '1', '56.70', '2', null, '2018-12-20 08:53:27', null);
INSERT INTO `qg_order` VALUES ('593263365829169152', '1', '593263365325852672', 'QG00120181220095143d44b64', '1', '1', '56.70', '2', null, '2018-12-20 09:51:43', null);
INSERT INTO `qg_order` VALUES ('593273830386962432', '1', '593273829598433280', 'QG001201812201033188d2fcc', '1', '1', '56.70', '2', null, '2018-12-20 10:33:18', null);
INSERT INTO `qg_order` VALUES ('593281961917681664', '1', '593281961124958208', 'QG001201812201105374bb8f2', '1', '1', '56.70', '2', null, '2018-12-20 11:05:37', null);
