/*
Navicat MySQL Data Transfer

Source Server         : 150
Source Server Version : 50638
Source Host           : 192.168.9.150:3306
Source Database       : qg_goods_db

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-01-03 15:13:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qg_goods
-- ----------------------------
DROP TABLE IF EXISTS `qg_goods`;
CREATE TABLE `qg_goods` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `goodsImg` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goodsName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(5,2) DEFAULT NULL COMMENT '商品单价',
  `stock` int(5) DEFAULT NULL COMMENT '原始库存',
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qg_goods
-- ----------------------------
INSERT INTO `qg_goods` VALUES ('1', 'img/daisen.png', '双十一戴森进口Supersonic&nbsp;HD01吹风机', '56.70', '100', '2018-02-23 11:31:28', '2018-02-23 11:31:30');

-- ----------------------------
-- Table structure for qg_goods_message
-- ----------------------------
DROP TABLE IF EXISTS `qg_goods_message`;
CREATE TABLE `qg_goods_message` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `goodsId` varchar(255) DEFAULT NULL COMMENT '消息ID',
  `status` varchar(1) DEFAULT NULL COMMENT '抢购状态',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `createdTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qg_goods_message
-- ----------------------------

-- ----------------------------
-- Table structure for qg_goods_temp_stock
-- ----------------------------
DROP TABLE IF EXISTS `qg_goods_temp_stock`;
CREATE TABLE `qg_goods_temp_stock` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `goodsId` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `userId` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态(0:锁定库存,1:成功支付,2:支付超时)',
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qg_goods_temp_stock
-- ----------------------------
INSERT INTO `qg_goods_temp_stock` VALUES ('593245982221668352', '1', '1', '0', '2018-12-20 08:42:39', null);
INSERT INTO `qg_goods_temp_stock` VALUES ('593246263441362944', '1', '1', '0', '2018-12-20 08:43:46', null);
INSERT INTO `qg_goods_temp_stock` VALUES ('593246465028001792', '1', '1', '0', '2018-12-20 08:44:34', null);
INSERT INTO `qg_goods_temp_stock` VALUES ('593248699430211584', '1', '1', '2', '2018-12-20 08:53:27', '2018-12-20 09:23:30');
INSERT INTO `qg_goods_temp_stock` VALUES ('593263365325852672', '1', '1', '2', '2018-12-20 09:51:43', '2018-12-20 10:21:50');
INSERT INTO `qg_goods_temp_stock` VALUES ('593273829598433280', '1', '1', '2', '2018-12-20 10:33:18', '2018-12-20 11:03:20');
INSERT INTO `qg_goods_temp_stock` VALUES ('593281961124958208', '1', '1', '2', '2018-12-20 11:05:37', '2018-12-20 11:35:40');
