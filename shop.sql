/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50545
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50545
 File Encoding         : 65001

 Date: 25/03/2021 21:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类',
  `englishName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '英文名称',
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '专辑分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES (1, '经典音乐', 'music', NULL);
INSERT INTO `group` VALUES (2, '#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/CPop1554365748744.jpg');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `musicName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '专辑名称',
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片地址',
  `musicType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '专辑格式',
  `synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '简介',
  `recommend` int(255) DEFAULT 0 COMMENT '推荐1表示推荐',
  `price` double(10, 2) DEFAULT NULL COMMENT '价格',
  `num` int(11) DEFAULT NULL COMMENT '剩余数量',
  `allNum` int(11) DEFAULT NULL COMMENT '总量',
  `groupId` bigint(20) DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, '童话', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1);
INSERT INTO `music` VALUES (2, '21克', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/21克/G010003186021L_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/21克/21克.txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (3, 'J-Game', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/J-Game/G010001963403I_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/J-Game/J-Game.txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (4, 'Kimbonomics 金式代', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/Kimbonomics 金式代/G010003096890X_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/Kimbonomics 金式代/Kimbonomics 金式代.txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (5, 'Victor 刘伟德 同名专辑', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/Victor 刘伟德 同名专辑/G010003147940Q_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/Victor 刘伟德 同名专辑/Victor 刘伟德 同名专辑.txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (6, '公转自转 (Revolution)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/公转自转 (Revolution)/G0100013986863_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/公转自转 (Revolution)/公转自转 (Revolution).txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (7, '北纬66度 (66 Degree North)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/北纬66度 (66 Degree North)/G010003784626Y_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/北纬66度 (66 Degree North)/北纬66度 (66 Degree North).txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (8, '如果身体全部开放了 (Anatta)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/如果身体全部开放了 (Anatta)/G010003349051V_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/如果身体全部开放了 (Anatta)/如果身体全部开放了 (Anatta).txt', 1, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (9, '往前飞 (Fly Away)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/往前飞 (Fly Away)/G010003198248E_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/往前飞 (Fly Away)/往前飞 (Fly Away).txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (10, '情敌贝多芬', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/情敌贝多芬/G010001390359R_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/情敌贝多芬/情敌贝多芬.txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (11, '成人世界 (Paradox)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/成人世界 (Paradox)/G010003395314K_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/成人世界 (Paradox)/成人世界 (Paradox).txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (12, '我不知道爱是什么', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我不知道爱是什么/G010003218048W_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我不知道爱是什么/我不知道爱是什么.txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (13, '我不离开 (Stay)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我不离开 (Stay)/G010003368080Z_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我不离开 (Stay)/我不离开 (Stay).txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (14, '我都记得', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我都记得/G010003283946A_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/我都记得/我都记得.txt', 0, NULL, NULL, NULL, 2);
INSERT INTO `music` VALUES (15, '蒙娜丽莎的眼泪 (Mona Lisa\'s Tear)', '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/蒙娜丽莎的眼泪 (Mona Lisa\'s Tear)/G0100038783180_512.jpg', NULL, '新建文件夹/#流行也经典# 华语Hi-Res专辑惊艳上架索尼精选！/蒙娜丽莎的眼泪 (Mona Lisa\'s Tear)/蒙娜丽莎的眼泪 (Mona Lisa\'s Tear).txt', 0, NULL, NULL, NULL, 2);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL COMMENT '所属用户',
  `pay` int(255) DEFAULT 0 COMMENT '0未支付 1支付 2出库 3完成',
  `musicId` bigint(255) DEFAULT 0 COMMENT '关联专辑',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `allPrice` double(10, 2) DEFAULT 0.00 COMMENT '总价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, 2, 0, 1, NULL, 1, 20.00);
INSERT INTO `shop` VALUES (2, 2, 1, 1, NULL, 1, 20.00);
INSERT INTO `shop` VALUES (3, 1, 0, 1, NULL, NULL, 0.00);
INSERT INTO `shop` VALUES (4, 1, 0, 2, NULL, NULL, 0.00);
INSERT INTO `shop` VALUES (5, 2, 0, 1, NULL, NULL, 0.00);
INSERT INTO `shop` VALUES (6, 2, 0, 1, NULL, NULL, 0.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `fromAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '推荐人账号',
  `mailbox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `sex` int(255) DEFAULT 0 COMMENT '0男1女',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '昵称',
  `role` int(255) UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 COMMENT '角色0普通1管理员',
  `headUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '', '', 1, 0, '', 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, NULL);
INSERT INTO `user` VALUES (2, '17756822324', '123456', NULL, NULL, 1615529338255, 0, NULL, 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL);
INSERT INTO `user` VALUES (3, '12234344323', '1', NULL, NULL, 1616589796915, 0, NULL, 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL);
INSERT INTO `user` VALUES (4, '11111111111', '123456', NULL, NULL, 1616591245837, 0, NULL, 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL);

SET FOREIGN_KEY_CHECKS = 1;
