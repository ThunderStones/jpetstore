/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50027
 Source Host           : localhost:3306
 Source Schema         : mypetstore

 Target Server Type    : MySQL
 Target Server Version : 50027
 File Encoding         : 65001

 Date: 07/11/2021 17:58:50
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `firstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addr2` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `zip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`userid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', NULL, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('admin', '879068849@qq.com', 'Sun', 'Yuhao', NULL, 'None', 'None', 'None', 'Hunan', '00000', '中国', '+18357644781');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('TimberWolf', '879068849@qq.com', 'Sun', 'Yuhao', NULL, 'None', 'None', 'None', 'Hunan', '00000', '中国', '+18357644781');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata`  (
  `favcategory` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bannername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`favcategory`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cartString` varbinary(25500) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`userId`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('a', NULL);
INSERT INTO `cart` VALUES ('j2ee', 0xACED00057372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4361727473988AAC6A4044D80200024C00086974656D4C6973747400104C6A6176612F7574696C2F4C6973743B4C00076974656D4D617074000F4C6A6176612F7574696C2F4D61703B7870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000077040000000078737200256A6176612E7574696C2E436F6C6C656374696F6E732453796E6368726F6E697A65644D61701B73F9094B4B397B0300024C00016D71007E00024C00056D757465787400124C6A6176612F6C616E672F4F626A6563743B7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000000770800000010000000007871007E000878);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `catid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`catid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qty` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`itemid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', 10000);
INSERT INTO `inventory` VALUES ('EST-10', 10000);
INSERT INTO `inventory` VALUES ('EST-11', 10000);
INSERT INTO `inventory` VALUES ('EST-12', 10000);
INSERT INTO `inventory` VALUES ('EST-13', 10000);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 10000);
INSERT INTO `inventory` VALUES ('EST-16', 10000);
INSERT INTO `inventory` VALUES ('EST-17', 10000);
INSERT INTO `inventory` VALUES ('EST-18', 10000);
INSERT INTO `inventory` VALUES ('EST-19', 10000);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 10000);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 10000);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 10000);
INSERT INTO `inventory` VALUES ('EST-4', 10000);
INSERT INTO `inventory` VALUES ('EST-5', 10000);
INSERT INTO `inventory` VALUES ('EST-6', 10000);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 10000);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listprice` decimal(10, 2) NULL DEFAULT NULL,
  `unitcost` decimal(10, 2) NULL DEFAULT NULL,
  `supplier` int(11) NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr3` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr4` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr5` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`itemid`),
  INDEX `fk_item_2` USING BTREE(`supplier`),
  INDEX `itemProd` USING BTREE(`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`productid`) REFER `mypetstore/product`(`productid`); (`' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem`  (
  `orderid` int(11) NOT NULL DEFAULT '',
  `linenum` int(11) NOT NULL DEFAULT '',
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `quantity` int(11) NOT NULL DEFAULT '',
  `unitprice` decimal(10, 2) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`orderid`, `linenum`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lineitem
-- ----------------------------
INSERT INTO `lineitem` VALUES (1000, 1, 'EST-9', 1, 18.50);
INSERT INTO `lineitem` VALUES (1001, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (1001, 2, 'EST-23', 2, 145.49);
INSERT INTO `lineitem` VALUES (1002, 1, 'EST-12', 1, 18.50);
INSERT INTO `lineitem` VALUES (1002, 2, 'EST-8', 2, 18.50);
INSERT INTO `lineitem` VALUES (1003, 1, 'EST-15', 1, 23.50);
INSERT INTO `lineitem` VALUES (1004, 1, 'EST-17', 1, 93.50);
INSERT INTO `lineitem` VALUES (1004, 2, 'EST-13', 2, 18.50);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logInfo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`logId`)
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (4, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-06 13:10:45');
INSERT INTO `logs` VALUES (5, '', 'QUERY', '/jpetstore_war_exploded/viewCategory', '2021-11-06 13:10:47');
INSERT INTO `logs` VALUES (6, '', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-06 13:10:48');
INSERT INTO `logs` VALUES (7, '', 'QUERY', '/jpetstore_war_exploded/viewItem', '2021-11-06 13:10:49');
INSERT INTO `logs` VALUES (8, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-06 13:12:33');
INSERT INTO `logs` VALUES (9, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-06 13:12:35');
INSERT INTO `logs` VALUES (10, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-06 13:12:54');
INSERT INTO `logs` VALUES (11, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-06 13:13:46');
INSERT INTO `logs` VALUES (12, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-06 13:14:26');
INSERT INTO `logs` VALUES (13, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-06 13:15:01');
INSERT INTO `logs` VALUES (14, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-06 13:15:06');
INSERT INTO `logs` VALUES (15, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-06 13:15:06');
INSERT INTO `logs` VALUES (16, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:08');
INSERT INTO `logs` VALUES (17, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/editAccount', '2021-11-06 13:15:10');
INSERT INTO `logs` VALUES (18, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:10');
INSERT INTO `logs` VALUES (19, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/editAccount', '2021-11-06 13:15:11');
INSERT INTO `logs` VALUES (20, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:11');
INSERT INTO `logs` VALUES (21, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/editAccount', '2021-11-06 13:15:14');
INSERT INTO `logs` VALUES (22, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:14');
INSERT INTO `logs` VALUES (23, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/editAccount', '2021-11-06 13:15:15');
INSERT INTO `logs` VALUES (24, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:15');
INSERT INTO `logs` VALUES (25, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/editAccount', '2021-11-06 13:15:16');
INSERT INTO `logs` VALUES (26, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-06 13:15:16');
INSERT INTO `logs` VALUES (27, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-06 13:15:18');
INSERT INTO `logs` VALUES (28, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-06 13:15:20');
INSERT INTO `logs` VALUES (29, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 15:56:36');
INSERT INTO `logs` VALUES (30, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:56:38');
INSERT INTO `logs` VALUES (31, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 15:58:01');
INSERT INTO `logs` VALUES (32, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 15:58:02');
INSERT INTO `logs` VALUES (33, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:02');
INSERT INTO `logs` VALUES (34, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:09');
INSERT INTO `logs` VALUES (35, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:13');
INSERT INTO `logs` VALUES (36, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:26');
INSERT INTO `logs` VALUES (37, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-07 15:58:39');
INSERT INTO `logs` VALUES (38, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 15:58:39');
INSERT INTO `logs` VALUES (39, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 15:58:40');
INSERT INTO `logs` VALUES (40, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm', '2021-11-07 15:58:47');
INSERT INTO `logs` VALUES (41, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder', '2021-11-07 15:58:48');
INSERT INTO `logs` VALUES (42, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder', '2021-11-07 15:58:49');
INSERT INTO `logs` VALUES (43, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 15:58:52');
INSERT INTO `logs` VALUES (44, 'j2ee', 'NULL', '/jpetstore_war_exploded/signOut', '2021-11-07 15:58:54');
INSERT INTO `logs` VALUES (45, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 15:58:54');
INSERT INTO `logs` VALUES (46, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:54');
INSERT INTO `logs` VALUES (47, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:58:59');
INSERT INTO `logs` VALUES (48, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 15:59:11');
INSERT INTO `logs` VALUES (49, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-07 15:59:15');
INSERT INTO `logs` VALUES (50, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 15:59:15');
INSERT INTO `logs` VALUES (51, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 15:59:16');
INSERT INTO `logs` VALUES (52, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:00:56');
INSERT INTO `logs` VALUES (53, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:00:58');
INSERT INTO `logs` VALUES (54, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:01:04');
INSERT INTO `logs` VALUES (55, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-07 16:01:08');
INSERT INTO `logs` VALUES (56, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:01:08');
INSERT INTO `logs` VALUES (57, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:01:09');
INSERT INTO `logs` VALUES (58, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm', '2021-11-07 16:01:11');
INSERT INTO `logs` VALUES (59, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder', '2021-11-07 16:01:12');
INSERT INTO `logs` VALUES (60, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder', '2021-11-07 16:01:13');
INSERT INTO `logs` VALUES (61, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:01:15');
INSERT INTO `logs` VALUES (62, 'j2ee', 'NULL', '/jpetstore_war_exploded/signOut', '2021-11-07 16:01:16');
INSERT INTO `logs` VALUES (63, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:01:16');
INSERT INTO `logs` VALUES (64, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:01:16');
INSERT INTO `logs` VALUES (65, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-07 16:01:20');
INSERT INTO `logs` VALUES (66, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:01:20');
INSERT INTO `logs` VALUES (67, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:01:21');
INSERT INTO `logs` VALUES (68, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-07 16:01:22');
INSERT INTO `logs` VALUES (69, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder', '2021-11-07 16:01:23');
INSERT INTO `logs` VALUES (70, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm', '2021-11-07 16:01:35');
INSERT INTO `logs` VALUES (71, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory', '2021-11-07 16:01:36');
INSERT INTO `logs` VALUES (72, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-07 16:01:37');
INSERT INTO `logs` VALUES (73, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:01:37');
INSERT INTO `logs` VALUES (74, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-07 16:02:05');
INSERT INTO `logs` VALUES (75, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:05:41');
INSERT INTO `logs` VALUES (76, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:05:43');
INSERT INTO `logs` VALUES (77, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:05:54');
INSERT INTO `logs` VALUES (78, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login', '2021-11-07 16:05:59');
INSERT INTO `logs` VALUES (79, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:05:59');
INSERT INTO `logs` VALUES (80, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:06:00');
INSERT INTO `logs` VALUES (81, 'j2ee', 'NULL', '/jpetstore_war_exploded/signOut', '2021-11-07 16:14:22');
INSERT INTO `logs` VALUES (82, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:14:22');
INSERT INTO `logs` VALUES (83, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:14:25');
INSERT INTO `logs` VALUES (84, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:46:52');
INSERT INTO `logs` VALUES (85, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:46:57');
INSERT INTO `logs` VALUES (86, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:46:59');
INSERT INTO `logs` VALUES (87, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:47:03');
INSERT INTO `logs` VALUES (88, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:47:04');
INSERT INTO `logs` VALUES (89, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart', '2021-11-07 16:47:08');
INSERT INTO `logs` VALUES (90, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:47:08');
INSERT INTO `logs` VALUES (91, '', 'NULL', '/jpetstore_war_exploded/loginPage', '2021-11-07 16:47:10');
INSERT INTO `logs` VALUES (92, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:47:11');
INSERT INTO `logs` VALUES (93, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-07 16:47:14');
INSERT INTO `logs` VALUES (94, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 16:48:51');
INSERT INTO `logs` VALUES (95, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-07 16:48:54');
INSERT INTO `logs` VALUES (96, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-07 16:51:20');
INSERT INTO `logs` VALUES (97, '', 'QUERY', '/jpetstore_war_exploded/search', '2021-11-07 16:51:20');
INSERT INTO `logs` VALUES (98, '', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-07 16:51:21');
INSERT INTO `logs` VALUES (99, '', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-07 16:51:24');
INSERT INTO `logs` VALUES (100, '', 'QUERY', '/jpetstore_war_exploded/viewProduct', '2021-11-07 16:51:31');
INSERT INTO `logs` VALUES (101, '', 'NULL', '/jpetstore_war_exploded/main', '2021-11-07 17:00:11');
INSERT INTO `logs` VALUES (102, '', 'QUERY', '/jpetstore_war_exploded/viewCategory', '2021-11-07 17:02:07');
INSERT INTO `logs` VALUES (103, '', 'QUERY', '/jpetstore_war_exploded/viewCategory', '2021-11-07 17:03:55');
INSERT INTO `logs` VALUES (104, '', 'QUERY', '/jpetstore_war_exploded/viewCategory', '2021-11-07 17:04:08');
INSERT INTO `logs` VALUES (105, '', 'NULL', '/jpetstore_war_exploded/main null', '2021-11-07 17:07:06');
INSERT INTO `logs` VALUES (106, '', 'NULL', '/jpetstore_war_exploded/loginPage null', '2021-11-07 17:07:11');
INSERT INTO `logs` VALUES (107, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login null', '2021-11-07 17:07:22');
INSERT INTO `logs` VALUES (108, '', 'NULL', '/jpetstore_war_exploded/main null', '2021-11-07 17:07:22');
INSERT INTO `logs` VALUES (109, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:12:06');
INSERT INTO `logs` VALUES (110, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-11-07 17:12:08');
INSERT INTO `logs` VALUES (111, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:12:10');
INSERT INTO `logs` VALUES (112, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:12:18');
INSERT INTO `logs` VALUES (113, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:12:18');
INSERT INTO `logs` VALUES (114, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 17:12:31');
INSERT INTO `logs` VALUES (115, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 17:12:32');
INSERT INTO `logs` VALUES (116, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-BD-01', '2021-11-07 17:12:33');
INSERT INTO `logs` VALUES (117, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-7', '2021-11-07 17:12:34');
INSERT INTO `logs` VALUES (118, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-13=1&EST-7=2', '2021-11-07 17:12:37');
INSERT INTO `logs` VALUES (119, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:12:54');
INSERT INTO `logs` VALUES (120, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:12:55');
INSERT INTO `logs` VALUES (121, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:12:56');
INSERT INTO `logs` VALUES (122, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:12:57');
INSERT INTO `logs` VALUES (123, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:12:58');
INSERT INTO `logs` VALUES (124, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 17:13:06');
INSERT INTO `logs` VALUES (125, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:13:07');
INSERT INTO `logs` VALUES (126, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:13:09');
INSERT INTO `logs` VALUES (127, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1000', '2021-11-07 17:13:10');
INSERT INTO `logs` VALUES (128, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:16:41');
INSERT INTO `logs` VALUES (129, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:16:43');
INSERT INTO `logs` VALUES (130, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:16:48');
INSERT INTO `logs` VALUES (131, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:16:48');
INSERT INTO `logs` VALUES (132, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 17:17:03');
INSERT INTO `logs` VALUES (133, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-DL-01', '2021-11-07 17:17:03');
INSERT INTO `logs` VALUES (134, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-9', '2021-11-07 17:17:04');
INSERT INTO `logs` VALUES (135, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:17:05');
INSERT INTO `logs` VALUES (136, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:17:06');
INSERT INTO `logs` VALUES (137, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:17:08');
INSERT INTO `logs` VALUES (138, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:17:09');
INSERT INTO `logs` VALUES (139, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:17:10');
INSERT INTO `logs` VALUES (140, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:18:25');
INSERT INTO `logs` VALUES (141, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:18:27');
INSERT INTO `logs` VALUES (142, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:18:32');
INSERT INTO `logs` VALUES (143, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:18:32');
INSERT INTO `logs` VALUES (144, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-11-07 17:18:33');
INSERT INTO `logs` VALUES (145, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FL-DLH-02', '2021-11-07 17:18:35');
INSERT INTO `logs` VALUES (146, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-17', '2021-11-07 17:18:35');
INSERT INTO `logs` VALUES (147, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:18:36');
INSERT INTO `logs` VALUES (148, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:18:37');
INSERT INTO `logs` VALUES (149, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:18:38');
INSERT INTO `logs` VALUES (150, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:30:50');
INSERT INTO `logs` VALUES (151, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:30:52');
INSERT INTO `logs` VALUES (152, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:31:00');
INSERT INTO `logs` VALUES (153, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:31:04');
INSERT INTO `logs` VALUES (154, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:31:11');
INSERT INTO `logs` VALUES (155, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:31:16');
INSERT INTO `logs` VALUES (156, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:31:16');
INSERT INTO `logs` VALUES (157, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-11-07 17:31:18');
INSERT INTO `logs` VALUES (158, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=RP-LI-02', '2021-11-07 17:31:19');
INSERT INTO `logs` VALUES (159, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-13', '2021-11-07 17:31:21');
INSERT INTO `logs` VALUES (160, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:31:21');
INSERT INTO `logs` VALUES (161, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:31:22');
INSERT INTO `logs` VALUES (162, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:31:23');
INSERT INTO `logs` VALUES (163, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:31:24');
INSERT INTO `logs` VALUES (164, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:31:26');
INSERT INTO `logs` VALUES (165, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:32:25');
INSERT INTO `logs` VALUES (166, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:32:26');
INSERT INTO `logs` VALUES (167, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:34:06');
INSERT INTO `logs` VALUES (168, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:34:08');
INSERT INTO `logs` VALUES (169, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:34:13');
INSERT INTO `logs` VALUES (170, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:34:13');
INSERT INTO `logs` VALUES (171, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:34:15');
INSERT INTO `logs` VALUES (172, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:34:16');
INSERT INTO `logs` VALUES (173, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:34:54');
INSERT INTO `logs` VALUES (174, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:34:58');
INSERT INTO `logs` VALUES (175, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:35:01');
INSERT INTO `logs` VALUES (176, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:35:01');
INSERT INTO `logs` VALUES (177, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:35:03');
INSERT INTO `logs` VALUES (178, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:35:04');
INSERT INTO `logs` VALUES (179, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1001', '2021-11-07 17:35:05');
INSERT INTO `logs` VALUES (180, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:35:11');
INSERT INTO `logs` VALUES (181, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 17:35:13');
INSERT INTO `logs` VALUES (182, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-BD-01', '2021-11-07 17:35:14');
INSERT INTO `logs` VALUES (183, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-7', '2021-11-07 17:35:15');
INSERT INTO `logs` VALUES (184, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 17:35:16');
INSERT INTO `logs` VALUES (185, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-RT-02', '2021-11-07 17:35:17');
INSERT INTO `logs` VALUES (186, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-23', '2021-11-07 17:35:18');
INSERT INTO `logs` VALUES (187, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-7=1&EST-23=2', '2021-11-07 17:35:21');
INSERT INTO `logs` VALUES (188, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:35:22');
INSERT INTO `logs` VALUES (189, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:35:24');
INSERT INTO `logs` VALUES (190, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:35:25');
INSERT INTO `logs` VALUES (191, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:35:27');
INSERT INTO `logs` VALUES (192, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:35:28');
INSERT INTO `logs` VALUES (193, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:39:26');
INSERT INTO `logs` VALUES (194, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:39:34');
INSERT INTO `logs` VALUES (195, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:39:40');
INSERT INTO `logs` VALUES (196, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:39:40');
INSERT INTO `logs` VALUES (197, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:39:41');
INSERT INTO `logs` VALUES (198, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-11-07 17:39:42');
INSERT INTO `logs` VALUES (199, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=RP-SN-01', '2021-11-07 17:39:43');
INSERT INTO `logs` VALUES (200, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-12', '2021-11-07 17:39:44');
INSERT INTO `logs` VALUES (201, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 17:39:45');
INSERT INTO `logs` VALUES (202, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-PO-02', '2021-11-07 17:39:46');
INSERT INTO `logs` VALUES (203, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-8', '2021-11-07 17:39:46');
INSERT INTO `logs` VALUES (204, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-12=1&EST-8=2', '2021-11-07 17:39:49');
INSERT INTO `logs` VALUES (205, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:39:50');
INSERT INTO `logs` VALUES (206, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:39:52');
INSERT INTO `logs` VALUES (207, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:39:52');
INSERT INTO `logs` VALUES (208, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:39:53');
INSERT INTO `logs` VALUES (209, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:39:54');
INSERT INTO `logs` VALUES (210, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1002', '2021-11-07 17:39:55');
INSERT INTO `logs` VALUES (211, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:40:07');
INSERT INTO `logs` VALUES (212, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-11-07 17:40:08');
INSERT INTO `logs` VALUES (213, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FL-DSH-01', '2021-11-07 17:40:09');
INSERT INTO `logs` VALUES (214, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-15', '2021-11-07 17:40:10');
INSERT INTO `logs` VALUES (215, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:40:11');
INSERT INTO `logs` VALUES (216, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:40:16');
INSERT INTO `logs` VALUES (217, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:40:47');
INSERT INTO `logs` VALUES (218, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder order.shipToFirstName=Sun&order.shipToLastName=Yuhao&order.shipAddress1=None&order.shipAddress2=None&order.shipCity=None&order.shipState=Hunan&order.shipZip=00000&order.shipCountry=%E4%B8%AD%E5%9B%BD&newOrder=Continue', '2021-11-07 17:40:50');
INSERT INTO `logs` VALUES (219, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:40:52');
INSERT INTO `logs` VALUES (220, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 17:40:54');
INSERT INTO `logs` VALUES (221, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:40:56');
INSERT INTO `logs` VALUES (222, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1003', '2021-11-07 17:40:57');
INSERT INTO `logs` VALUES (223, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 17:43:33');
INSERT INTO `logs` VALUES (224, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:45:19');
INSERT INTO `logs` VALUES (225, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-11-07 17:45:21');
INSERT INTO `logs` VALUES (226, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:53:03');
INSERT INTO `logs` VALUES (227, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:53:05');
INSERT INTO `logs` VALUES (228, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 17:53:11');
INSERT INTO `logs` VALUES (229, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 17:53:15');
INSERT INTO `logs` VALUES (230, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 17:53:15');
INSERT INTO `logs` VALUES (231, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-11-07 17:53:17');
INSERT INTO `logs` VALUES (232, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FL-DLH-02', '2021-11-07 17:53:19');
INSERT INTO `logs` VALUES (233, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-17', '2021-11-07 17:53:20');
INSERT INTO `logs` VALUES (234, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-11-07 17:53:23');
INSERT INTO `logs` VALUES (235, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=RP-LI-02', '2021-11-07 17:53:26');
INSERT INTO `logs` VALUES (236, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-13', '2021-11-07 17:53:27');
INSERT INTO `logs` VALUES (237, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-11-07 17:53:28');
INSERT INTO `logs` VALUES (238, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=RP-LI-02', '2021-11-07 17:53:29');
INSERT INTO `logs` VALUES (239, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-13', '2021-11-07 17:53:29');
INSERT INTO `logs` VALUES (240, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 17:53:30');
INSERT INTO `logs` VALUES (241, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:53:31');
INSERT INTO `logs` VALUES (242, 'j2ee', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 17:53:33');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(11) NOT NULL DEFAULT '',
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `orderdate` date NOT NULL DEFAULT '',
  `shipaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shipcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `billcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `courier` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `totalprice` decimal(10, 2) NOT NULL DEFAULT '',
  `billtofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `billtolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shiptofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `shiptolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `creditcard` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `exprdate` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cardtype` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `locale` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`orderid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1000, 'j2ee', '2021-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1001, 'j2ee', '2021-11-07', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1002, 'j2ee', '2021-11-07', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 55.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1003, 'j2ee', '2021-11-07', 'None', 'None', 'None', 'Hunan', '00000', '中国', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'C2', '94303', 'USA', 'UPS', 23.50, 'ABC', 'XYX', 'Sun', 'Yuhao', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1004, 'j2ee', '2021-11-07', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 130.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `orderid` int(11) NOT NULL DEFAULT '',
  `linenum` int(11) NOT NULL DEFAULT '',
  `timestamp` date NOT NULL DEFAULT '',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`orderid`, `linenum`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES (1000, 1000, '2021-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1001, 1001, '2021-11-07', 'P');
INSERT INTO `orderstatus` VALUES (1002, 1002, '2021-11-07', 'P');
INSERT INTO `orderstatus` VALUES (1003, 1003, '2021-11-07', 'P');
INSERT INTO `orderstatus` VALUES (1004, 1004, '2021-11-07', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`productid`),
  INDEX `productCat` USING BTREE(`category`),
  INDEX `productName` USING BTREE(`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`category`) REFER `mypetstore/category`(`catid`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/lizard1.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `langpref` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `favcategory` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mylistopt` tinyint(1) NULL DEFAULT NULL,
  `banneropt` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`userid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('admin', 'Chinese', 'FISH', 1, 1);
INSERT INTO `profile` VALUES ('j2ee', 'Chinese', 'DOGS', 1, 1);
INSERT INTO `profile` VALUES ('TimberWolf', 'Chinese', 'DOGS', 1, 1);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nextid` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`name`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', 1001);
INSERT INTO `sequence` VALUES ('ordernum', 1004);

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon`  (
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`username`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('a', 'a');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('admin', '123');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');
INSERT INTO `signon` VALUES ('TimberWolf', '123');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `suppid` int(11) NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`suppid`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');

SET FOREIGN_KEY_CHECKS = 1;
