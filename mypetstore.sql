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

 Date: 31/12/2021 10:47:14
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
INSERT INTO `account` VALUES ('1', 'r23756239856298458@qq.com', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `account` VALUES ('2', '89623495829@qq.com', '2', '2', NULL, '3', '3', '2', '2', '2', '2', '3');
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
INSERT INTO `cart` VALUES ('1', 0xACED00057372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4361727473988AAC6A4044D80200024C00086974656D4C6973747400104C6A6176612F7574696C2F4C6973743B4C00076974656D4D617074000F4C6A6176612F7574696C2F4D61703B7870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000077040000000078737200256A6176612E7574696C2E436F6C6C656374696F6E732453796E6368726F6E697A65644D61701B73F9094B4B397B0300024C00016D71007E00024C00056D757465787400124C6A6176612F6C616E672F4F626A6563743B7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000000770800000010000000007871007E000878);
INSERT INTO `cart` VALUES ('2', 0xACED00057372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4361727473988AAC6A4044D80200024C00086974656D4C6973747400104C6A6176612F7574696C2F4C6973743B4C00076974656D4D617074000F4C6A6176612F7574696C2F4D61703B7870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002737200236F72672E6373752E6D796A70657473746F72652E646F6D61696E2E436172744974656D5BE0D7D98E18F4AA0200045A0007696E53746F636B4900087175616E746974794C00046974656D7400214C6F72672F6373752F6D796A70657473746F72652F646F6D61696E2F4974656D3B4C0005746F74616C7400164C6A6176612F6D6174682F426967446563696D616C3B787001000000017372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4974656DE20942470B72DA1902000D4900087175616E7469747949000A737570706C69657249644C000A617474726962757465317400124C6A6176612F6C616E672F537472696E673B4C000A6174747269627574653271007E000B4C000A6174747269627574653371007E000B4C000A6174747269627574653471007E000B4C000A6174747269627574653571007E000B4C00066974656D496471007E000B4C00096C697374507269636571007E00084C000770726F647563747400244C6F72672F6373752F6D796A70657473746F72652F646F6D61696E2F50726F647563743B4C000970726F64756374496471007E000B4C000673746174757371007E000B4C0008756E6974436F737471007E00087870000027100000000174000753706F74746564707070707400054553542D34737200146A6176612E6D6174682E426967446563696D616C54C71557F981284F0300024900057363616C654C0006696E7456616C7400164C6A6176612F6D6174682F426967496E74656765723B787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000002737200146A6176612E6D6174682E426967496E74656765728CFC9F1FA93BFB1D030006490008626974436F756E744900096269744C656E67746849001366697273744E6F6E7A65726F427974654E756D49000C6C6F776573745365744269744900067369676E756D5B00096D61676E69747564657400025B427871007E0012FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE00000001757200025B42ACF317F8060854E0020000787000000002073A7878737200226F72672E6373752E6D796A70657473746F72652E646F6D61696E2E50726F647563749804CBD7B81F680F0200044C000A63617465676F7279496471007E000B4C000B6465736372697074696F6E71007E000B4C00046E616D6571007E000B4C000970726F64756374496471007E000B7870740004464953487400393C696D616765207372633D22696D616765732F66697368332E676966223E467265736820576174657220666973682066726F6D204A6170616E7400034B6F6974000846492D46572D303170740001507371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E00170000000204B078787371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E001700000002073A78787371007E000601000000017371007E000A0000271000000001740009546F6F74686C657373707070707400054553542D337371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E001700000002073A78787371007E00197400044649534874003C3C696D616765207372633D22696D616765732F66697368342E676966223E53616C7420576174657220666973682066726F6D204175737472616C696174000B546967657220536861726B74000846492D53572D303270740001507371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E00170000000204B078787371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E001700000002073A787878737200256A6176612E7574696C2E436F6C6C656374696F6E732453796E6368726F6E697A65644D61701B73F9094B4B397B0300024C00016D71007E00024C00056D757465787400124C6A6176612F6C616E672F4F626A6563743B7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000271007E000F71007E000971007E002971007E00267871007E003B78);
INSERT INTO `cart` VALUES ('a', NULL);
INSERT INTO `cart` VALUES ('j2ee', 0xACED00057372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4361727473988AAC6A4044D80200024C00086974656D4C6973747400104C6A6176612F7574696C2F4C6973743B4C00076974656D4D617074000F4C6A6176612F7574696C2F4D61703B7870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002737200236F72672E6373752E6D796A70657473746F72652E646F6D61696E2E436172744974656D5BE0D7D98E18F4AA0200045A0007696E53746F636B4900087175616E746974794C00046974656D7400214C6F72672F6373752F6D796A70657473746F72652F646F6D61696E2F4974656D3B4C0005746F74616C7400164C6A6176612F6D6174682F426967446563696D616C3B787001000000057372001F6F72672E6373752E6D796A70657473746F72652E646F6D61696E2E4974656DE20942470B72DA1902000D4900087175616E7469747949000A737570706C69657249644C000A617474726962757465317400124C6A6176612F6C616E672F537472696E673B4C000A6174747269627574653271007E000B4C000A6174747269627574653371007E000B4C000A6174747269627574653471007E000B4C000A6174747269627574653571007E000B4C00066974656D496471007E000B4C00096C697374507269636571007E00084C000770726F647563747400244C6F72672F6373752F6D796A70657473746F72652F646F6D61696E2F50726F647563743B4C000970726F64756374496471007E000B4C000673746174757371007E000B4C0008756E6974436F737471007E00087870000027100000000174000A4D616C65205075707079707070707400054553542D38737200146A6176612E6D6174682E426967446563696D616C54C71557F981284F0300024900057363616C654C0006696E7456616C7400164C6A6176612F6D6174682F426967496E74656765723B787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000002737200146A6176612E6D6174682E426967496E74656765728CFC9F1FA93BFB1D030006490008626974436F756E744900096269744C656E67746849001366697273744E6F6E7A65726F427974654E756D49000C6C6F776573745365744269744900067369676E756D5B00096D61676E69747564657400025B427871007E0012FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE00000001757200025B42ACF317F8060854E0020000787000000002073A7878737200226F72672E6373752E6D796A70657473746F72652E646F6D61696E2E50726F647563749804CBD7B81F680F0200044C000A63617465676F7279496471007E000B4C000B6465736372697074696F6E71007E000B4C00046E616D6571007E000B4C000970726F64756374496471007E000B7870740004444F47537400313C696D616765207372633D22696D616765732F646F67362E676966223E4375746520646F672066726F6D204672616E6365740006506F6F646C657400084B392D504F2D303270740001507371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E00170000000204B078787371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E001700000002242278787371007E000601000000027371007E000A000027100000000174000753706F74746564707070707400054553542D347371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E001700000002073A78787371007E0019740004464953487400393C696D616765207372633D22696D616765732F66697368332E676966223E467265736820576174657220666973682066726F6D204A6170616E7400034B6F6974000846492D46572D303170740001507371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E00170000000204B078787371007E0010000000027371007E0014FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE000000017571007E0017000000020E74787878737200256A6176612E7574696C2E436F6C6C656374696F6E732453796E6368726F6E697A65644D61701B73F9094B4B397B0300024C00016D71007E00024C00056D757465787400124C6A6176612F6C616E672F4F626A6563743B7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000271007E000F71007E000971007E002971007E00267871007E003B78);

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
INSERT INTO `lineitem` VALUES (1005, 1, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1005, 2, 'EST-1', 1, 16.50);
INSERT INTO `lineitem` VALUES (1005, 3, 'EST-2', 1, 16.50);
INSERT INTO `lineitem` VALUES (1006, 1, 'EST-1', 1, 16.50);
INSERT INTO `lineitem` VALUES (1007, 1, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1007, 2, 'EST-16', 4, 93.50);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1155 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `logs` VALUES (243, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:24:51');
INSERT INTO `logs` VALUES (244, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 18:24:58');
INSERT INTO `logs` VALUES (245, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 18:24:58');
INSERT INTO `logs` VALUES (246, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-11-07 18:25:02');
INSERT INTO `logs` VALUES (247, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-11-07 18:25:34');
INSERT INTO `logs` VALUES (248, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:26:04');
INSERT INTO `logs` VALUES (249, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:26:35');
INSERT INTO `logs` VALUES (250, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:26:58');
INSERT INTO `logs` VALUES (251, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:27:04');
INSERT INTO `logs` VALUES (252, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:27:31');
INSERT INTO `logs` VALUES (253, '1', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 18:27:47');
INSERT INTO `logs` VALUES (254, '1', 'ADD', '/jpetstore_war_exploded/register ', '2021-11-07 18:27:47');
INSERT INTO `logs` VALUES (255, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:27:47');
INSERT INTO `logs` VALUES (256, '1', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 18:27:51');
INSERT INTO `logs` VALUES (257, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 18:27:55');
INSERT INTO `logs` VALUES (258, '1', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-FW-01', '2021-11-07 18:28:00');
INSERT INTO `logs` VALUES (259, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-4', '2021-11-07 18:28:01');
INSERT INTO `logs` VALUES (260, '1', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-SW-01', '2021-11-07 18:28:03');
INSERT INTO `logs` VALUES (261, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-1', '2021-11-07 18:28:04');
INSERT INTO `logs` VALUES (262, '1', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-SW-01', '2021-11-07 18:28:04');
INSERT INTO `logs` VALUES (263, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-2', '2021-11-07 18:28:05');
INSERT INTO `logs` VALUES (264, '1', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 18:28:07');
INSERT INTO `logs` VALUES (265, '1', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 18:28:33');
INSERT INTO `logs` VALUES (266, '1', 'ADD', '/jpetstore_war_exploded/newOrder order.shipToFirstName=534543235245&order.shipToLastName=2345235&order.shipAddress1=235235&order.shipAddress2=243525&order.shipCity=23524&order.shipState=2452&order.shipZip=25&order.shipCountry=2&newOrder=Continue', '2021-11-07 18:28:43');
INSERT INTO `logs` VALUES (267, '1', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 18:28:45');
INSERT INTO `logs` VALUES (268, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:28:51');
INSERT INTO `logs` VALUES (269, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 18:28:54');
INSERT INTO `logs` VALUES (270, '1', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 18:28:57');
INSERT INTO `logs` VALUES (271, '1', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 18:29:00');
INSERT INTO `logs` VALUES (272, '1', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1005', '2021-11-07 18:29:02');
INSERT INTO `logs` VALUES (273, '1', 'QUERY', '/jpetstore_war_exploded/viewItem itemId=EST-1', '2021-11-07 18:29:05');
INSERT INTO `logs` VALUES (274, '1', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-1', '2021-11-07 18:29:07');
INSERT INTO `logs` VALUES (275, '1', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 18:29:09');
INSERT INTO `logs` VALUES (276, '1', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 18:29:10');
INSERT INTO `logs` VALUES (277, '1', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 18:29:42');
INSERT INTO `logs` VALUES (278, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:29:48');
INSERT INTO `logs` VALUES (279, '1', 'NULL', '/jpetstore_war_exploded/signOut ', '2021-11-07 18:29:52');
INSERT INTO `logs` VALUES (280, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:29:52');
INSERT INTO `logs` VALUES (281, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 18:32:04');
INSERT INTO `logs` VALUES (282, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:32:43');
INSERT INTO `logs` VALUES (283, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 19:32:47');
INSERT INTO `logs` VALUES (284, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:32:47');
INSERT INTO `logs` VALUES (285, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:32:53');
INSERT INTO `logs` VALUES (286, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:32:56');
INSERT INTO `logs` VALUES (287, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:33:05');
INSERT INTO `logs` VALUES (288, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 19:33:11');
INSERT INTO `logs` VALUES (289, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:33:11');
INSERT INTO `logs` VALUES (290, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 19:33:12');
INSERT INTO `logs` VALUES (291, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-PO-02', '2021-11-07 19:33:15');
INSERT INTO `logs` VALUES (292, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-8', '2021-11-07 19:33:16');
INSERT INTO `logs` VALUES (293, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:33:47');
INSERT INTO `logs` VALUES (294, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:33:50');
INSERT INTO `logs` VALUES (295, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:33:57');
INSERT INTO `logs` VALUES (296, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:34:03');
INSERT INTO `logs` VALUES (297, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:34:08');
INSERT INTO `logs` VALUES (298, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 19:34:12');
INSERT INTO `logs` VALUES (299, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:34:12');
INSERT INTO `logs` VALUES (300, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:37:06');
INSERT INTO `logs` VALUES (301, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 19:37:08');
INSERT INTO `logs` VALUES (302, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 19:37:14');
INSERT INTO `logs` VALUES (303, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 19:37:14');
INSERT INTO `logs` VALUES (304, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 19:37:15');
INSERT INTO `logs` VALUES (305, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:19:21');
INSERT INTO `logs` VALUES (306, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 20:19:23');
INSERT INTO `logs` VALUES (307, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 20:19:33');
INSERT INTO `logs` VALUES (308, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:19:33');
INSERT INTO `logs` VALUES (309, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 20:19:35');
INSERT INTO `logs` VALUES (310, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 20:19:36');
INSERT INTO `logs` VALUES (311, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 20:22:34');
INSERT INTO `logs` VALUES (312, 'j2ee', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 20:22:42');
INSERT INTO `logs` VALUES (313, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:22:48');
INSERT INTO `logs` VALUES (314, 'j2ee', 'NULL', '/jpetstore_war_exploded/signOut ', '2021-11-07 20:22:49');
INSERT INTO `logs` VALUES (315, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:22:49');
INSERT INTO `logs` VALUES (316, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:35:46');
INSERT INTO `logs` VALUES (317, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 20:35:55');
INSERT INTO `logs` VALUES (318, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-11-07 20:36:01');
INSERT INTO `logs` VALUES (319, '2', 'QUERY', '/jpetstore_war_exploded/register null', '2021-11-07 20:36:38');
INSERT INTO `logs` VALUES (320, '2', 'ADD', '/jpetstore_war_exploded/register ', '2021-11-07 20:36:38');
INSERT INTO `logs` VALUES (321, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:36:38');
INSERT INTO `logs` VALUES (322, '2', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-11-07 20:36:45');
INSERT INTO `logs` VALUES (323, '2', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-FW-01', '2021-11-07 20:36:48');
INSERT INTO `logs` VALUES (324, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-4', '2021-11-07 20:36:50');
INSERT INTO `logs` VALUES (325, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:36:54');
INSERT INTO `logs` VALUES (326, '2', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-11-07 20:36:56');
INSERT INTO `logs` VALUES (327, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:36:57');
INSERT INTO `logs` VALUES (328, '2', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-11-07 20:36:58');
INSERT INTO `logs` VALUES (329, '2', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FL-DLH-02', '2021-11-07 20:36:59');
INSERT INTO `logs` VALUES (330, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-16', '2021-11-07 20:37:00');
INSERT INTO `logs` VALUES (331, '2', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-4=1&EST-16=4', '2021-11-07 20:37:08');
INSERT INTO `logs` VALUES (332, '2', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-11-07 20:37:13');
INSERT INTO `logs` VALUES (333, '2', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 20:37:42');
INSERT INTO `logs` VALUES (334, '2', 'ADD', '/jpetstore_war_exploded/newOrder order.shipToFirstName=324&order.shipToLastName=324&order.shipAddress1=432&order.shipAddress2=423&order.shipCity=423&order.shipState=4&order.shipZip=4&order.shipCountry=4&newOrder=Continue', '2021-11-07 20:37:49');
INSERT INTO `logs` VALUES (335, '2', 'ADD', '/jpetstore_war_exploded/newOrder ', '2021-11-07 20:37:58');
INSERT INTO `logs` VALUES (336, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:38:03');
INSERT INTO `logs` VALUES (337, '2', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-11-07 20:38:05');
INSERT INTO `logs` VALUES (338, '2', 'QUERY', '/jpetstore_war_exploded/listOrder ', '2021-11-07 20:38:15');
INSERT INTO `logs` VALUES (339, '2', 'QUERY', '/jpetstore_war_exploded/viewOrder orderId=1007', '2021-11-07 20:38:19');
INSERT INTO `logs` VALUES (340, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:38:29');
INSERT INTO `logs` VALUES (341, '2', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-11-07 20:38:32');
INSERT INTO `logs` VALUES (342, '2', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-FW-01', '2021-11-07 20:38:33');
INSERT INTO `logs` VALUES (343, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-4', '2021-11-07 20:38:34');
INSERT INTO `logs` VALUES (344, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:38:35');
INSERT INTO `logs` VALUES (345, '2', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-11-07 20:38:37');
INSERT INTO `logs` VALUES (346, '2', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-SW-02', '2021-11-07 20:38:38');
INSERT INTO `logs` VALUES (347, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-3', '2021-11-07 20:38:38');
INSERT INTO `logs` VALUES (348, '2', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-4=1&EST-3=1', '2021-11-07 20:38:41');
INSERT INTO `logs` VALUES (349, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:39:07');
INSERT INTO `logs` VALUES (350, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:39:09');
INSERT INTO `logs` VALUES (351, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 20:39:09');
INSERT INTO `logs` VALUES (352, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 20:39:14');
INSERT INTO `logs` VALUES (353, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-11-07 20:39:15');
INSERT INTO `logs` VALUES (354, '2', 'QUERY', '/jpetstore_war_exploded/login ', '2021-11-07 20:39:24');
INSERT INTO `logs` VALUES (355, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:39:24');
INSERT INTO `logs` VALUES (356, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:39:26');
INSERT INTO `logs` VALUES (357, '2', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-11-07 20:39:26');
INSERT INTO `logs` VALUES (358, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-11-07 20:39:33');
INSERT INTO `logs` VALUES (359, '2', 'QUERY', '/jpetstore_war_exploded/search ', '2021-11-07 20:39:40');
INSERT INTO `logs` VALUES (360, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 13:15:33');
INSERT INTO `logs` VALUES (361, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 13:16:59');
INSERT INTO `logs` VALUES (362, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 15:56:43');
INSERT INTO `logs` VALUES (363, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-21 15:56:45');
INSERT INTO `logs` VALUES (364, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-21 15:56:54');
INSERT INTO `logs` VALUES (365, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-21 15:56:58');
INSERT INTO `logs` VALUES (366, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 15:56:58');
INSERT INTO `logs` VALUES (367, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-12-21 15:57:00');
INSERT INTO `logs` VALUES (368, 'j2ee', 'NULL', '/jpetstore_war_exploded/editAccountForm ', '2021-12-21 15:58:30');
INSERT INTO `logs` VALUES (369, 'j2ee', 'NULL', '/jpetstore_war_exploded/signOut ', '2021-12-21 16:15:10');
INSERT INTO `logs` VALUES (370, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 16:15:10');
INSERT INTO `logs` VALUES (371, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-21 16:15:11');
INSERT INTO `logs` VALUES (372, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:15:12');
INSERT INTO `logs` VALUES (373, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:21:02');
INSERT INTO `logs` VALUES (374, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:26:12');
INSERT INTO `logs` VALUES (375, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:27:43');
INSERT INTO `logs` VALUES (376, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:29:14');
INSERT INTO `logs` VALUES (377, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:29:59');
INSERT INTO `logs` VALUES (378, '', 'NULL', '/jpetstore_war_exploded/registerPage ', '2021-12-21 16:30:40');
INSERT INTO `logs` VALUES (379, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 21:45:29');
INSERT INTO `logs` VALUES (380, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-21 21:47:54');
INSERT INTO `logs` VALUES (381, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-21 21:47:57');
INSERT INTO `logs` VALUES (382, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 09:30:09');
INSERT INTO `logs` VALUES (383, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 09:31:13');
INSERT INTO `logs` VALUES (384, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 09:31:14');
INSERT INTO `logs` VALUES (385, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 09:32:56');
INSERT INTO `logs` VALUES (386, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:06:09');
INSERT INTO `logs` VALUES (387, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:10:57');
INSERT INTO `logs` VALUES (388, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:11:04');
INSERT INTO `logs` VALUES (389, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:11:08');
INSERT INTO `logs` VALUES (390, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:13:54');
INSERT INTO `logs` VALUES (391, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:14:26');
INSERT INTO `logs` VALUES (392, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:14:27');
INSERT INTO `logs` VALUES (393, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:15:26');
INSERT INTO `logs` VALUES (394, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:16:54');
INSERT INTO `logs` VALUES (395, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:17:40');
INSERT INTO `logs` VALUES (396, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:13');
INSERT INTO `logs` VALUES (397, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:18:16');
INSERT INTO `logs` VALUES (398, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:18');
INSERT INTO `logs` VALUES (399, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:23');
INSERT INTO `logs` VALUES (400, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:30');
INSERT INTO `logs` VALUES (401, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:31');
INSERT INTO `logs` VALUES (402, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:18:33');
INSERT INTO `logs` VALUES (403, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:18:38');
INSERT INTO `logs` VALUES (404, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:18:51');
INSERT INTO `logs` VALUES (405, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:07');
INSERT INTO `logs` VALUES (406, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:08');
INSERT INTO `logs` VALUES (407, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:09');
INSERT INTO `logs` VALUES (408, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:09');
INSERT INTO `logs` VALUES (409, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:09');
INSERT INTO `logs` VALUES (410, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:10');
INSERT INTO `logs` VALUES (411, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:10');
INSERT INTO `logs` VALUES (412, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:11');
INSERT INTO `logs` VALUES (413, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:11');
INSERT INTO `logs` VALUES (414, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (415, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (416, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (417, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (418, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (419, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:12');
INSERT INTO `logs` VALUES (420, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:13');
INSERT INTO `logs` VALUES (421, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:14');
INSERT INTO `logs` VALUES (422, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:14');
INSERT INTO `logs` VALUES (423, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:14');
INSERT INTO `logs` VALUES (424, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (425, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (426, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (427, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (428, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (429, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:15');
INSERT INTO `logs` VALUES (430, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:16');
INSERT INTO `logs` VALUES (431, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (432, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (433, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (434, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (435, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (436, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (437, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:17');
INSERT INTO `logs` VALUES (438, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (439, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (440, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (441, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (442, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (443, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (444, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (445, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (446, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (447, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:18');
INSERT INTO `logs` VALUES (448, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:19');
INSERT INTO `logs` VALUES (449, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:19');
INSERT INTO `logs` VALUES (450, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:19');
INSERT INTO `logs` VALUES (451, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:19');
INSERT INTO `logs` VALUES (452, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:19');
INSERT INTO `logs` VALUES (453, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:19:20');
INSERT INTO `logs` VALUES (454, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:22');
INSERT INTO `logs` VALUES (455, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:25');
INSERT INTO `logs` VALUES (456, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:25');
INSERT INTO `logs` VALUES (457, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:25');
INSERT INTO `logs` VALUES (458, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:26');
INSERT INTO `logs` VALUES (459, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:26');
INSERT INTO `logs` VALUES (460, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:19:29');
INSERT INTO `logs` VALUES (461, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:19:30');
INSERT INTO `logs` VALUES (462, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:25:36');
INSERT INTO `logs` VALUES (463, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:26:00');
INSERT INTO `logs` VALUES (464, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:29:22');
INSERT INTO `logs` VALUES (465, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:29:28');
INSERT INTO `logs` VALUES (466, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:29:35');
INSERT INTO `logs` VALUES (467, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:29:38');
INSERT INTO `logs` VALUES (468, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:30:40');
INSERT INTO `logs` VALUES (469, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:30:42');
INSERT INTO `logs` VALUES (470, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:27');
INSERT INTO `logs` VALUES (471, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:29');
INSERT INTO `logs` VALUES (472, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:34');
INSERT INTO `logs` VALUES (473, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:38');
INSERT INTO `logs` VALUES (474, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:41');
INSERT INTO `logs` VALUES (475, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:33:49');
INSERT INTO `logs` VALUES (476, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:34:40');
INSERT INTO `logs` VALUES (477, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:34:44');
INSERT INTO `logs` VALUES (478, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:35:03');
INSERT INTO `logs` VALUES (479, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:35:09');
INSERT INTO `logs` VALUES (480, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:35:56');
INSERT INTO `logs` VALUES (481, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:36:10');
INSERT INTO `logs` VALUES (482, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:36:10');
INSERT INTO `logs` VALUES (483, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:36:10');
INSERT INTO `logs` VALUES (484, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:36:53');
INSERT INTO `logs` VALUES (485, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:37:32');
INSERT INTO `logs` VALUES (486, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:37:52');
INSERT INTO `logs` VALUES (487, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:38:46');
INSERT INTO `logs` VALUES (488, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:39:42');
INSERT INTO `logs` VALUES (489, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:39:49');
INSERT INTO `logs` VALUES (490, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:40:28');
INSERT INTO `logs` VALUES (491, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:40:37');
INSERT INTO `logs` VALUES (492, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:41:55');
INSERT INTO `logs` VALUES (493, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:41:55');
INSERT INTO `logs` VALUES (494, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:25');
INSERT INTO `logs` VALUES (495, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:26');
INSERT INTO `logs` VALUES (496, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:28');
INSERT INTO `logs` VALUES (497, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:26');
INSERT INTO `logs` VALUES (498, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:44');
INSERT INTO `logs` VALUES (499, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 12:42:44');
INSERT INTO `logs` VALUES (500, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:54');
INSERT INTO `logs` VALUES (501, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:55');
INSERT INTO `logs` VALUES (502, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:42:56');
INSERT INTO `logs` VALUES (503, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 12:43:35');
INSERT INTO `logs` VALUES (504, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 13:20:21');
INSERT INTO `logs` VALUES (505, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 13:20:28');
INSERT INTO `logs` VALUES (506, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 13:26:13');
INSERT INTO `logs` VALUES (507, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 13:26:15');
INSERT INTO `logs` VALUES (508, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 14:56:47');
INSERT INTO `logs` VALUES (509, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 14:57:11');
INSERT INTO `logs` VALUES (510, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 14:57:55');
INSERT INTO `logs` VALUES (511, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 14:58:48');
INSERT INTO `logs` VALUES (512, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 14:58:53');
INSERT INTO `logs` VALUES (513, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:05:12');
INSERT INTO `logs` VALUES (514, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 15:05:23');
INSERT INTO `logs` VALUES (515, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 15:05:24');
INSERT INTO `logs` VALUES (516, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:06:23');
INSERT INTO `logs` VALUES (517, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:06:25');
INSERT INTO `logs` VALUES (518, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 15:06:36');
INSERT INTO `logs` VALUES (519, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 15:06:40');
INSERT INTO `logs` VALUES (520, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:07:05');
INSERT INTO `logs` VALUES (521, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 15:07:07');
INSERT INTO `logs` VALUES (522, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:11:11');
INSERT INTO `logs` VALUES (523, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:11:38');
INSERT INTO `logs` VALUES (524, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 15:14:02');
INSERT INTO `logs` VALUES (525, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 18:30:54');
INSERT INTO `logs` VALUES (526, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 18:33:07');
INSERT INTO `logs` VALUES (527, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 18:33:23');
INSERT INTO `logs` VALUES (528, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 18:33:25');
INSERT INTO `logs` VALUES (529, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 18:34:38');
INSERT INTO `logs` VALUES (530, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 18:35:44');
INSERT INTO `logs` VALUES (531, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 18:35:51');
INSERT INTO `logs` VALUES (532, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 18:48:17');
INSERT INTO `logs` VALUES (533, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 18:48:21');
INSERT INTO `logs` VALUES (534, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:18:36');
INSERT INTO `logs` VALUES (535, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:18:56');
INSERT INTO `logs` VALUES (536, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:19:23');
INSERT INTO `logs` VALUES (537, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 19:30:34');
INSERT INTO `logs` VALUES (538, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:30:39');
INSERT INTO `logs` VALUES (539, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:31:28');
INSERT INTO `logs` VALUES (540, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 19:31:39');
INSERT INTO `logs` VALUES (541, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:12:38');
INSERT INTO `logs` VALUES (542, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:12:40');
INSERT INTO `logs` VALUES (543, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:13:27');
INSERT INTO `logs` VALUES (544, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:13:27');
INSERT INTO `logs` VALUES (545, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:17:05');
INSERT INTO `logs` VALUES (546, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:17:08');
INSERT INTO `logs` VALUES (547, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:17:25');
INSERT INTO `logs` VALUES (548, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:19');
INSERT INTO `logs` VALUES (549, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:21');
INSERT INTO `logs` VALUES (550, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:22:21');
INSERT INTO `logs` VALUES (551, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:23');
INSERT INTO `logs` VALUES (552, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:24');
INSERT INTO `logs` VALUES (553, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:22:56');
INSERT INTO `logs` VALUES (554, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:58');
INSERT INTO `logs` VALUES (555, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:22:59');
INSERT INTO `logs` VALUES (556, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:18');
INSERT INTO `logs` VALUES (557, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:18');
INSERT INTO `logs` VALUES (558, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:19');
INSERT INTO `logs` VALUES (559, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:24');
INSERT INTO `logs` VALUES (560, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:27');
INSERT INTO `logs` VALUES (561, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:33');
INSERT INTO `logs` VALUES (562, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:37');
INSERT INTO `logs` VALUES (563, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:24:43');
INSERT INTO `logs` VALUES (564, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:25:09');
INSERT INTO `logs` VALUES (565, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:14');
INSERT INTO `logs` VALUES (566, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:16');
INSERT INTO `logs` VALUES (567, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:16');
INSERT INTO `logs` VALUES (568, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:17');
INSERT INTO `logs` VALUES (569, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:17');
INSERT INTO `logs` VALUES (570, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:25:32');
INSERT INTO `logs` VALUES (571, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:25:46');
INSERT INTO `logs` VALUES (572, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:26:29');
INSERT INTO `logs` VALUES (573, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:26:32');
INSERT INTO `logs` VALUES (574, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:26:42');
INSERT INTO `logs` VALUES (575, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:26:43');
INSERT INTO `logs` VALUES (576, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:26:44');
INSERT INTO `logs` VALUES (577, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:38:31');
INSERT INTO `logs` VALUES (578, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:38:36');
INSERT INTO `logs` VALUES (579, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:38:43');
INSERT INTO `logs` VALUES (580, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:39:51');
INSERT INTO `logs` VALUES (581, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:39:55');
INSERT INTO `logs` VALUES (582, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:40:00');
INSERT INTO `logs` VALUES (583, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:40:01');
INSERT INTO `logs` VALUES (584, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:40:29');
INSERT INTO `logs` VALUES (585, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:40:32');
INSERT INTO `logs` VALUES (586, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:40:36');
INSERT INTO `logs` VALUES (587, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:42:06');
INSERT INTO `logs` VALUES (588, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:42:07');
INSERT INTO `logs` VALUES (589, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:45:54');
INSERT INTO `logs` VALUES (590, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:46:52');
INSERT INTO `logs` VALUES (591, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:46:53');
INSERT INTO `logs` VALUES (592, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:46:54');
INSERT INTO `logs` VALUES (593, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:46:55');
INSERT INTO `logs` VALUES (594, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:47:04');
INSERT INTO `logs` VALUES (595, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:47:36');
INSERT INTO `logs` VALUES (596, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:48:52');
INSERT INTO `logs` VALUES (597, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:48:57');
INSERT INTO `logs` VALUES (598, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:49:53');
INSERT INTO `logs` VALUES (599, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:50:10');
INSERT INTO `logs` VALUES (600, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:50:16');
INSERT INTO `logs` VALUES (601, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:50:17');
INSERT INTO `logs` VALUES (602, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:57:19');
INSERT INTO `logs` VALUES (603, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:57:58');
INSERT INTO `logs` VALUES (604, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:58:00');
INSERT INTO `logs` VALUES (605, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:59:01');
INSERT INTO `logs` VALUES (606, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:59:03');
INSERT INTO `logs` VALUES (607, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 20:59:54');
INSERT INTO `logs` VALUES (608, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 20:59:57');
INSERT INTO `logs` VALUES (609, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:00:42');
INSERT INTO `logs` VALUES (610, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:00:48');
INSERT INTO `logs` VALUES (611, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:02:15');
INSERT INTO `logs` VALUES (612, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:02:17');
INSERT INTO `logs` VALUES (613, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:02:20');
INSERT INTO `logs` VALUES (614, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:03:02');
INSERT INTO `logs` VALUES (615, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:06:50');
INSERT INTO `logs` VALUES (616, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:06:54');
INSERT INTO `logs` VALUES (617, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:09:35');
INSERT INTO `logs` VALUES (618, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:09:38');
INSERT INTO `logs` VALUES (619, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:10:45');
INSERT INTO `logs` VALUES (620, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:10:47');
INSERT INTO `logs` VALUES (621, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:12:39');
INSERT INTO `logs` VALUES (622, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:13:22');
INSERT INTO `logs` VALUES (623, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:13:31');
INSERT INTO `logs` VALUES (624, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:13:34');
INSERT INTO `logs` VALUES (625, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:13:36');
INSERT INTO `logs` VALUES (626, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:13:37');
INSERT INTO `logs` VALUES (627, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:15:33');
INSERT INTO `logs` VALUES (628, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:17:11');
INSERT INTO `logs` VALUES (629, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:17:13');
INSERT INTO `logs` VALUES (630, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:20:38');
INSERT INTO `logs` VALUES (631, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:20:39');
INSERT INTO `logs` VALUES (632, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:22:59');
INSERT INTO `logs` VALUES (633, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:23:09');
INSERT INTO `logs` VALUES (634, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:23:09');
INSERT INTO `logs` VALUES (635, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:04');
INSERT INTO `logs` VALUES (636, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:10');
INSERT INTO `logs` VALUES (637, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:15');
INSERT INTO `logs` VALUES (638, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:18');
INSERT INTO `logs` VALUES (639, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:24');
INSERT INTO `logs` VALUES (640, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:32');
INSERT INTO `logs` VALUES (641, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:27:40');
INSERT INTO `logs` VALUES (642, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:27:42');
INSERT INTO `logs` VALUES (643, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:35:16');
INSERT INTO `logs` VALUES (644, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:35:18');
INSERT INTO `logs` VALUES (645, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:35:20');
INSERT INTO `logs` VALUES (646, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:37:05');
INSERT INTO `logs` VALUES (647, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 21:46:23');
INSERT INTO `logs` VALUES (648, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:46:25');
INSERT INTO `logs` VALUES (649, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:46:38');
INSERT INTO `logs` VALUES (650, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:54:02');
INSERT INTO `logs` VALUES (651, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:54:38');
INSERT INTO `logs` VALUES (652, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:55:55');
INSERT INTO `logs` VALUES (653, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:57:44');
INSERT INTO `logs` VALUES (654, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:57:48');
INSERT INTO `logs` VALUES (655, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:59:23');
INSERT INTO `logs` VALUES (656, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:59:39');
INSERT INTO `logs` VALUES (657, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 21:59:40');
INSERT INTO `logs` VALUES (658, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:00:24');
INSERT INTO `logs` VALUES (659, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:01:08');
INSERT INTO `logs` VALUES (660, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:01:20');
INSERT INTO `logs` VALUES (661, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:01:37');
INSERT INTO `logs` VALUES (662, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:01:40');
INSERT INTO `logs` VALUES (663, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:03:36');
INSERT INTO `logs` VALUES (664, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:03:37');
INSERT INTO `logs` VALUES (665, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:03:41');
INSERT INTO `logs` VALUES (666, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:03:46');
INSERT INTO `logs` VALUES (667, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:09:16');
INSERT INTO `logs` VALUES (668, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:09:36');
INSERT INTO `logs` VALUES (669, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:12:28');
INSERT INTO `logs` VALUES (670, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:12:30');
INSERT INTO `logs` VALUES (671, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:12:39');
INSERT INTO `logs` VALUES (672, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:12:42');
INSERT INTO `logs` VALUES (673, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:13:25');
INSERT INTO `logs` VALUES (674, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:13:28');
INSERT INTO `logs` VALUES (675, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:13:30');
INSERT INTO `logs` VALUES (676, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:14:15');
INSERT INTO `logs` VALUES (677, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:14:17');
INSERT INTO `logs` VALUES (678, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:20:00');
INSERT INTO `logs` VALUES (679, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:30:01');
INSERT INTO `logs` VALUES (680, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:30:16');
INSERT INTO `logs` VALUES (681, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:30:53');
INSERT INTO `logs` VALUES (682, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:30:55');
INSERT INTO `logs` VALUES (683, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:31:24');
INSERT INTO `logs` VALUES (684, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:32:08');
INSERT INTO `logs` VALUES (685, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:32:44');
INSERT INTO `logs` VALUES (686, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:32:47');
INSERT INTO `logs` VALUES (687, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:32:49');
INSERT INTO `logs` VALUES (688, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:32:50');
INSERT INTO `logs` VALUES (689, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:33:01');
INSERT INTO `logs` VALUES (690, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:35:58');
INSERT INTO `logs` VALUES (691, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:01');
INSERT INTO `logs` VALUES (692, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:08');
INSERT INTO `logs` VALUES (693, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:10');
INSERT INTO `logs` VALUES (694, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:29');
INSERT INTO `logs` VALUES (695, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:30');
INSERT INTO `logs` VALUES (696, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:36:46');
INSERT INTO `logs` VALUES (697, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:41:07');
INSERT INTO `logs` VALUES (698, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:43:57');
INSERT INTO `logs` VALUES (699, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:43:59');
INSERT INTO `logs` VALUES (700, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:44:00');
INSERT INTO `logs` VALUES (701, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-22 22:44:56');
INSERT INTO `logs` VALUES (702, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:45:00');
INSERT INTO `logs` VALUES (703, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:45:31');
INSERT INTO `logs` VALUES (704, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-22 22:46:33');
INSERT INTO `logs` VALUES (705, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:22:40');
INSERT INTO `logs` VALUES (706, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:22:45');
INSERT INTO `logs` VALUES (707, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:22:58');
INSERT INTO `logs` VALUES (708, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:35:47');
INSERT INTO `logs` VALUES (709, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:35:51');
INSERT INTO `logs` VALUES (710, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:36:08');
INSERT INTO `logs` VALUES (711, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:36:24');
INSERT INTO `logs` VALUES (712, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:37:22');
INSERT INTO `logs` VALUES (713, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:37:26');
INSERT INTO `logs` VALUES (714, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:37:50');
INSERT INTO `logs` VALUES (715, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:38:18');
INSERT INTO `logs` VALUES (716, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 09:38:43');
INSERT INTO `logs` VALUES (717, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:38:46');
INSERT INTO `logs` VALUES (718, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:39:23');
INSERT INTO `logs` VALUES (719, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:39:31');
INSERT INTO `logs` VALUES (720, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:40:04');
INSERT INTO `logs` VALUES (721, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:40:11');
INSERT INTO `logs` VALUES (722, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 09:40:45');
INSERT INTO `logs` VALUES (723, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 11:37:35');
INSERT INTO `logs` VALUES (724, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:37:38');
INSERT INTO `logs` VALUES (725, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 11:46:54');
INSERT INTO `logs` VALUES (726, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:46:56');
INSERT INTO `logs` VALUES (727, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:47:15');
INSERT INTO `logs` VALUES (728, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:47:33');
INSERT INTO `logs` VALUES (729, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 11:52:06');
INSERT INTO `logs` VALUES (730, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:52:08');
INSERT INTO `logs` VALUES (731, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-23 11:54:22');
INSERT INTO `logs` VALUES (732, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-23 14:01:49');
INSERT INTO `logs` VALUES (733, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-23 14:02:01');
INSERT INTO `logs` VALUES (734, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-23 14:02:01');
INSERT INTO `logs` VALUES (735, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-12-23 14:02:18');
INSERT INTO `logs` VALUES (736, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-FW-01', '2021-12-23 14:02:21');
INSERT INTO `logs` VALUES (737, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewItem itemId=EST-4', '2021-12-23 14:02:26');
INSERT INTO `logs` VALUES (738, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart workingItemId=EST-4', '2021-12-23 14:02:27');
INSERT INTO `logs` VALUES (739, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=100000&EST-4=1', '2021-12-23 14:02:52');
INSERT INTO `logs` VALUES (740, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-23 14:02:58');
INSERT INTO `logs` VALUES (741, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 10:29:43');
INSERT INTO `logs` VALUES (742, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-24 10:29:48');
INSERT INTO `logs` VALUES (743, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-24 10:29:54');
INSERT INTO `logs` VALUES (744, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 10:29:54');
INSERT INTO `logs` VALUES (745, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-24 10:29:58');
INSERT INTO `logs` VALUES (746, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:01');
INSERT INTO `logs` VALUES (747, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:23');
INSERT INTO `logs` VALUES (748, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:24');
INSERT INTO `logs` VALUES (749, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:25');
INSERT INTO `logs` VALUES (750, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:26');
INSERT INTO `logs` VALUES (751, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:27');
INSERT INTO `logs` VALUES (752, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:30');
INSERT INTO `logs` VALUES (753, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:31');
INSERT INTO `logs` VALUES (754, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:32');
INSERT INTO `logs` VALUES (755, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:30:55');
INSERT INTO `logs` VALUES (756, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart EST-8=1&EST-4=1', '2021-12-24 10:32:10');
INSERT INTO `logs` VALUES (757, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 11:16:35');
INSERT INTO `logs` VALUES (758, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-24 11:16:37');
INSERT INTO `logs` VALUES (759, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-24 11:16:37');
INSERT INTO `logs` VALUES (760, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-24 11:16:47');
INSERT INTO `logs` VALUES (761, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 11:16:47');
INSERT INTO `logs` VALUES (762, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-24 11:16:49');
INSERT INTO `logs` VALUES (763, 'j2ee', 'NULL', '/jpetstore_war_exploded/newOrderForm ', '2021-12-24 11:16:50');
INSERT INTO `logs` VALUES (764, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 11:18:08');
INSERT INTO `logs` VALUES (765, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-24 11:18:13');
INSERT INTO `logs` VALUES (766, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-24 11:18:13');
INSERT INTO `logs` VALUES (767, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-24 11:18:20');
INSERT INTO `logs` VALUES (768, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-24 11:18:20');
INSERT INTO `logs` VALUES (769, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-24 11:18:23');
INSERT INTO `logs` VALUES (770, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-25 20:02:18');
INSERT INTO `logs` VALUES (771, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-25 20:02:21');
INSERT INTO `logs` VALUES (772, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-25 20:02:37');
INSERT INTO `logs` VALUES (773, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-25 20:02:37');
INSERT INTO `logs` VALUES (774, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:02:41');
INSERT INTO `logs` VALUES (775, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:03:09');
INSERT INTO `logs` VALUES (776, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:03:30');
INSERT INTO `logs` VALUES (777, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:04:33');
INSERT INTO `logs` VALUES (778, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:06:27');
INSERT INTO `logs` VALUES (779, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:06:35');
INSERT INTO `logs` VALUES (780, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:07:03');
INSERT INTO `logs` VALUES (781, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:10:00');
INSERT INTO `logs` VALUES (782, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:12:56');
INSERT INTO `logs` VALUES (783, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:13:29');
INSERT INTO `logs` VALUES (784, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:15:07');
INSERT INTO `logs` VALUES (785, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:16:19');
INSERT INTO `logs` VALUES (786, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 20:19:07');
INSERT INTO `logs` VALUES (787, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 20:19:15');
INSERT INTO `logs` VALUES (788, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:43:45');
INSERT INTO `logs` VALUES (789, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-25 21:43:45');
INSERT INTO `logs` VALUES (790, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-25 21:43:54');
INSERT INTO `logs` VALUES (791, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-25 21:43:54');
INSERT INTO `logs` VALUES (792, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:43:55');
INSERT INTO `logs` VALUES (793, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:43:57');
INSERT INTO `logs` VALUES (794, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:52:12');
INSERT INTO `logs` VALUES (795, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:52:14');
INSERT INTO `logs` VALUES (796, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:52:22');
INSERT INTO `logs` VALUES (797, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:52:23');
INSERT INTO `logs` VALUES (798, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:52:25');
INSERT INTO `logs` VALUES (799, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:53:16');
INSERT INTO `logs` VALUES (800, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:58:58');
INSERT INTO `logs` VALUES (801, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:59:00');
INSERT INTO `logs` VALUES (802, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:59:04');
INSERT INTO `logs` VALUES (803, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:59:06');
INSERT INTO `logs` VALUES (804, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:59:13');
INSERT INTO `logs` VALUES (805, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-25 21:59:14');
INSERT INTO `logs` VALUES (806, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-25 21:59:15');
INSERT INTO `logs` VALUES (807, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 21:59:17');
INSERT INTO `logs` VALUES (808, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 21:59:21');
INSERT INTO `logs` VALUES (809, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:03:24');
INSERT INTO `logs` VALUES (810, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:03:31');
INSERT INTO `logs` VALUES (811, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:05:54');
INSERT INTO `logs` VALUES (812, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:05:59');
INSERT INTO `logs` VALUES (813, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:07:22');
INSERT INTO `logs` VALUES (814, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:07:25');
INSERT INTO `logs` VALUES (815, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:07:35');
INSERT INTO `logs` VALUES (816, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:11:30');
INSERT INTO `logs` VALUES (817, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:12:48');
INSERT INTO `logs` VALUES (818, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:12:49');
INSERT INTO `logs` VALUES (819, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:12:52');
INSERT INTO `logs` VALUES (820, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:12:53');
INSERT INTO `logs` VALUES (821, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:12:53');
INSERT INTO `logs` VALUES (822, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:12:54');
INSERT INTO `logs` VALUES (823, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:13:01');
INSERT INTO `logs` VALUES (824, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:13:37');
INSERT INTO `logs` VALUES (825, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:21:14');
INSERT INTO `logs` VALUES (826, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:21:16');
INSERT INTO `logs` VALUES (827, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:21:18');
INSERT INTO `logs` VALUES (828, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:21:39');
INSERT INTO `logs` VALUES (829, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:21:48');
INSERT INTO `logs` VALUES (830, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:22:49');
INSERT INTO `logs` VALUES (831, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:22:51');
INSERT INTO `logs` VALUES (832, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:23:33');
INSERT INTO `logs` VALUES (833, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:23:36');
INSERT INTO `logs` VALUES (834, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:23:59');
INSERT INTO `logs` VALUES (835, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:24:02');
INSERT INTO `logs` VALUES (836, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:24:24');
INSERT INTO `logs` VALUES (837, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:24:47');
INSERT INTO `logs` VALUES (838, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:24:50');
INSERT INTO `logs` VALUES (839, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:25:22');
INSERT INTO `logs` VALUES (840, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:25:23');
INSERT INTO `logs` VALUES (841, 'j2ee', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-25 22:27:35');
INSERT INTO `logs` VALUES (842, 'j2ee', 'MODIFY', '/jpetstore_war_exploded/updateCart ', '2021-12-25 22:27:38');
INSERT INTO `logs` VALUES (843, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-26 16:43:07');
INSERT INTO `logs` VALUES (844, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-26 16:44:25');
INSERT INTO `logs` VALUES (845, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-28 22:30:52');
INSERT INTO `logs` VALUES (846, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:33:44');
INSERT INTO `logs` VALUES (847, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:34:13');
INSERT INTO `logs` VALUES (848, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:35:06');
INSERT INTO `logs` VALUES (849, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-29 16:40:53');
INSERT INTO `logs` VALUES (850, '', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=AV-CB-01', '2021-12-29 16:40:59');
INSERT INTO `logs` VALUES (851, '', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=AV-SB-02', '2021-12-29 16:41:02');
INSERT INTO `logs` VALUES (852, '', 'QUERY', '/jpetstore_war_exploded/viewItem itemId=EST-19', '2021-12-29 16:41:15');
INSERT INTO `logs` VALUES (853, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:49:20');
INSERT INTO `logs` VALUES (854, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:49:37');
INSERT INTO `logs` VALUES (855, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-12-29 16:49:38');
INSERT INTO `logs` VALUES (856, '', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=FI-FW-01', '2021-12-29 16:49:40');
INSERT INTO `logs` VALUES (857, '', 'QUERY', '/jpetstore_war_exploded/addItemToCart ', '2021-12-29 16:49:42');
INSERT INTO `logs` VALUES (858, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-29 16:49:42');
INSERT INTO `logs` VALUES (859, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:50:08');
INSERT INTO `logs` VALUES (860, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:50:18');
INSERT INTO `logs` VALUES (861, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:50:28');
INSERT INTO `logs` VALUES (862, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:50:35');
INSERT INTO `logs` VALUES (863, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:50:35');
INSERT INTO `logs` VALUES (864, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:51:45');
INSERT INTO `logs` VALUES (865, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:51:45');
INSERT INTO `logs` VALUES (866, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:51:58');
INSERT INTO `logs` VALUES (867, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:56:56');
INSERT INTO `logs` VALUES (868, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:56:59');
INSERT INTO `logs` VALUES (869, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:10');
INSERT INTO `logs` VALUES (870, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:15');
INSERT INTO `logs` VALUES (871, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:27');
INSERT INTO `logs` VALUES (872, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:32');
INSERT INTO `logs` VALUES (873, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:34');
INSERT INTO `logs` VALUES (874, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:34');
INSERT INTO `logs` VALUES (875, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:34');
INSERT INTO `logs` VALUES (876, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:34');
INSERT INTO `logs` VALUES (877, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:34');
INSERT INTO `logs` VALUES (878, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:39');
INSERT INTO `logs` VALUES (879, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:57:55');
INSERT INTO `logs` VALUES (880, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:58:32');
INSERT INTO `logs` VALUES (881, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 16:58:33');
INSERT INTO `logs` VALUES (882, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:00:50');
INSERT INTO `logs` VALUES (883, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:01:09');
INSERT INTO `logs` VALUES (884, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:01:09');
INSERT INTO `logs` VALUES (885, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:01:14');
INSERT INTO `logs` VALUES (886, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:01:36');
INSERT INTO `logs` VALUES (887, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:07');
INSERT INTO `logs` VALUES (888, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:07');
INSERT INTO `logs` VALUES (889, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:08');
INSERT INTO `logs` VALUES (890, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:08');
INSERT INTO `logs` VALUES (891, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:30');
INSERT INTO `logs` VALUES (892, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:32');
INSERT INTO `logs` VALUES (893, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:02:33');
INSERT INTO `logs` VALUES (894, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:56');
INSERT INTO `logs` VALUES (895, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:57');
INSERT INTO `logs` VALUES (896, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:57');
INSERT INTO `logs` VALUES (897, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:57');
INSERT INTO `logs` VALUES (898, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:58');
INSERT INTO `logs` VALUES (899, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:04:58');
INSERT INTO `logs` VALUES (900, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:05:36');
INSERT INTO `logs` VALUES (901, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:05:37');
INSERT INTO `logs` VALUES (902, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:25');
INSERT INTO `logs` VALUES (903, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:25');
INSERT INTO `logs` VALUES (904, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:26');
INSERT INTO `logs` VALUES (905, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:26');
INSERT INTO `logs` VALUES (906, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:33');
INSERT INTO `logs` VALUES (907, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:33');
INSERT INTO `logs` VALUES (908, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:41');
INSERT INTO `logs` VALUES (909, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:06:41');
INSERT INTO `logs` VALUES (910, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:07:08');
INSERT INTO `logs` VALUES (911, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:07:08');
INSERT INTO `logs` VALUES (912, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:07:08');
INSERT INTO `logs` VALUES (913, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:07:46');
INSERT INTO `logs` VALUES (914, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:07:47');
INSERT INTO `logs` VALUES (915, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:31');
INSERT INTO `logs` VALUES (916, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:31');
INSERT INTO `logs` VALUES (917, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:31');
INSERT INTO `logs` VALUES (918, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:32');
INSERT INTO `logs` VALUES (919, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:33');
INSERT INTO `logs` VALUES (920, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:33');
INSERT INTO `logs` VALUES (921, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:08:34');
INSERT INTO `logs` VALUES (922, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:09:55');
INSERT INTO `logs` VALUES (923, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:09:55');
INSERT INTO `logs` VALUES (924, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:10:56');
INSERT INTO `logs` VALUES (925, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:10:56');
INSERT INTO `logs` VALUES (926, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:11:16');
INSERT INTO `logs` VALUES (927, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:11:18');
INSERT INTO `logs` VALUES (928, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:11:19');
INSERT INTO `logs` VALUES (929, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:09');
INSERT INTO `logs` VALUES (930, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:10');
INSERT INTO `logs` VALUES (931, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-29 17:12:10');
INSERT INTO `logs` VALUES (932, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:14');
INSERT INTO `logs` VALUES (933, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:15');
INSERT INTO `logs` VALUES (934, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:15');
INSERT INTO `logs` VALUES (935, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:16');
INSERT INTO `logs` VALUES (936, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:26');
INSERT INTO `logs` VALUES (937, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:26');
INSERT INTO `logs` VALUES (938, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:26');
INSERT INTO `logs` VALUES (939, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:29');
INSERT INTO `logs` VALUES (940, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:39');
INSERT INTO `logs` VALUES (941, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:39');
INSERT INTO `logs` VALUES (942, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:12:39');
INSERT INTO `logs` VALUES (943, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:13:12');
INSERT INTO `logs` VALUES (944, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:13:14');
INSERT INTO `logs` VALUES (945, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:13:14');
INSERT INTO `logs` VALUES (946, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:13:24');
INSERT INTO `logs` VALUES (947, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:15:10');
INSERT INTO `logs` VALUES (948, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:15:13');
INSERT INTO `logs` VALUES (949, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:15:14');
INSERT INTO `logs` VALUES (950, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:16:24');
INSERT INTO `logs` VALUES (951, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:16:43');
INSERT INTO `logs` VALUES (952, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:16:43');
INSERT INTO `logs` VALUES (953, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:18:45');
INSERT INTO `logs` VALUES (954, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:18:45');
INSERT INTO `logs` VALUES (955, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:18:54');
INSERT INTO `logs` VALUES (956, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:18:55');
INSERT INTO `logs` VALUES (957, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:47');
INSERT INTO `logs` VALUES (958, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:47');
INSERT INTO `logs` VALUES (959, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:48');
INSERT INTO `logs` VALUES (960, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:49');
INSERT INTO `logs` VALUES (961, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:50');
INSERT INTO `logs` VALUES (962, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:19:56');
INSERT INTO `logs` VALUES (963, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:20:18');
INSERT INTO `logs` VALUES (964, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:20:18');
INSERT INTO `logs` VALUES (965, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:20:21');
INSERT INTO `logs` VALUES (966, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:06');
INSERT INTO `logs` VALUES (967, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:06');
INSERT INTO `logs` VALUES (968, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:06');
INSERT INTO `logs` VALUES (969, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:07');
INSERT INTO `logs` VALUES (970, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:07');
INSERT INTO `logs` VALUES (971, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:07');
INSERT INTO `logs` VALUES (972, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:07');
INSERT INTO `logs` VALUES (973, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:21:10');
INSERT INTO `logs` VALUES (974, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:23:02');
INSERT INTO `logs` VALUES (975, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:23:02');
INSERT INTO `logs` VALUES (976, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:25:53');
INSERT INTO `logs` VALUES (977, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:25:54');
INSERT INTO `logs` VALUES (978, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:27:45');
INSERT INTO `logs` VALUES (979, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:06');
INSERT INTO `logs` VALUES (980, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:09');
INSERT INTO `logs` VALUES (981, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:12');
INSERT INTO `logs` VALUES (982, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:12');
INSERT INTO `logs` VALUES (983, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:14');
INSERT INTO `logs` VALUES (984, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:15');
INSERT INTO `logs` VALUES (985, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:17');
INSERT INTO `logs` VALUES (986, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:28:18');
INSERT INTO `logs` VALUES (987, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:29:05');
INSERT INTO `logs` VALUES (988, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:32:50');
INSERT INTO `logs` VALUES (989, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:32:50');
INSERT INTO `logs` VALUES (990, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:32:50');
INSERT INTO `logs` VALUES (991, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:32:56');
INSERT INTO `logs` VALUES (992, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:32:56');
INSERT INTO `logs` VALUES (993, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:19');
INSERT INTO `logs` VALUES (994, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:19');
INSERT INTO `logs` VALUES (995, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:19');
INSERT INTO `logs` VALUES (996, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:19');
INSERT INTO `logs` VALUES (997, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:34');
INSERT INTO `logs` VALUES (998, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:33:41');
INSERT INTO `logs` VALUES (999, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:03');
INSERT INTO `logs` VALUES (1000, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:03');
INSERT INTO `logs` VALUES (1001, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:03');
INSERT INTO `logs` VALUES (1002, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:04');
INSERT INTO `logs` VALUES (1003, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:47');
INSERT INTO `logs` VALUES (1004, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:47');
INSERT INTO `logs` VALUES (1005, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:47');
INSERT INTO `logs` VALUES (1006, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1007, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1008, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1009, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1010, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1011, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1012, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:48');
INSERT INTO `logs` VALUES (1013, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:49');
INSERT INTO `logs` VALUES (1014, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:53');
INSERT INTO `logs` VALUES (1015, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:34:53');
INSERT INTO `logs` VALUES (1016, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:35:06');
INSERT INTO `logs` VALUES (1017, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:35:06');
INSERT INTO `logs` VALUES (1018, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:35:07');
INSERT INTO `logs` VALUES (1019, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:35:07');
INSERT INTO `logs` VALUES (1020, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:36:40');
INSERT INTO `logs` VALUES (1021, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:36:40');
INSERT INTO `logs` VALUES (1022, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:36:47');
INSERT INTO `logs` VALUES (1023, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:37:46');
INSERT INTO `logs` VALUES (1024, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:37:46');
INSERT INTO `logs` VALUES (1025, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:37:46');
INSERT INTO `logs` VALUES (1026, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:37:52');
INSERT INTO `logs` VALUES (1027, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:37:52');
INSERT INTO `logs` VALUES (1028, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:01');
INSERT INTO `logs` VALUES (1029, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:17');
INSERT INTO `logs` VALUES (1030, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:18');
INSERT INTO `logs` VALUES (1031, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:18');
INSERT INTO `logs` VALUES (1032, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:18');
INSERT INTO `logs` VALUES (1033, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:34');
INSERT INTO `logs` VALUES (1034, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:34');
INSERT INTO `logs` VALUES (1035, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:39:34');
INSERT INTO `logs` VALUES (1036, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:40:06');
INSERT INTO `logs` VALUES (1037, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:40:06');
INSERT INTO `logs` VALUES (1038, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:40:06');
INSERT INTO `logs` VALUES (1039, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:41:48');
INSERT INTO `logs` VALUES (1040, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:41:48');
INSERT INTO `logs` VALUES (1041, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-12-29 17:41:49');
INSERT INTO `logs` VALUES (1042, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-12-29 17:41:52');
INSERT INTO `logs` VALUES (1043, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-12-29 17:41:54');
INSERT INTO `logs` VALUES (1044, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-29 17:41:55');
INSERT INTO `logs` VALUES (1045, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-12-29 17:41:56');
INSERT INTO `logs` VALUES (1046, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-12-29 17:41:57');
INSERT INTO `logs` VALUES (1047, '', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=K9-DL-01', '2021-12-29 17:41:59');
INSERT INTO `logs` VALUES (1048, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:42:15');
INSERT INTO `logs` VALUES (1049, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:38');
INSERT INTO `logs` VALUES (1050, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:38');
INSERT INTO `logs` VALUES (1051, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:42');
INSERT INTO `logs` VALUES (1052, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:42');
INSERT INTO `logs` VALUES (1053, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:42');
INSERT INTO `logs` VALUES (1054, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:45');
INSERT INTO `logs` VALUES (1055, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:45');
INSERT INTO `logs` VALUES (1056, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:46');
INSERT INTO `logs` VALUES (1057, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:47');
INSERT INTO `logs` VALUES (1058, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:47');
INSERT INTO `logs` VALUES (1059, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:48');
INSERT INTO `logs` VALUES (1060, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:43:49');
INSERT INTO `logs` VALUES (1061, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:53:37');
INSERT INTO `logs` VALUES (1062, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 17:53:37');
INSERT INTO `logs` VALUES (1063, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:01');
INSERT INTO `logs` VALUES (1064, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:06');
INSERT INTO `logs` VALUES (1065, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:07');
INSERT INTO `logs` VALUES (1066, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:07');
INSERT INTO `logs` VALUES (1067, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:07');
INSERT INTO `logs` VALUES (1068, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-29 19:50:22');
INSERT INTO `logs` VALUES (1069, 'j2ee', 'QUERY', '/jpetstore_war_exploded/login ', '2021-12-29 19:50:29');
INSERT INTO `logs` VALUES (1070, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:50:29');
INSERT INTO `logs` VALUES (1071, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-29 19:50:36');
INSERT INTO `logs` VALUES (1072, '', 'NULL', '/jpetstore_war_exploded/loginPage ', '2021-12-29 19:51:41');
INSERT INTO `logs` VALUES (1073, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:44');
INSERT INTO `logs` VALUES (1074, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:45');
INSERT INTO `logs` VALUES (1075, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:45');
INSERT INTO `logs` VALUES (1076, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:45');
INSERT INTO `logs` VALUES (1077, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1078, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1079, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1080, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1081, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1082, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1083, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1084, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:46');
INSERT INTO `logs` VALUES (1085, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:47');
INSERT INTO `logs` VALUES (1086, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:47');
INSERT INTO `logs` VALUES (1087, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:52');
INSERT INTO `logs` VALUES (1088, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:52');
INSERT INTO `logs` VALUES (1089, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:52');
INSERT INTO `logs` VALUES (1090, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:51:55');
INSERT INTO `logs` VALUES (1091, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 19:55:25');
INSERT INTO `logs` VALUES (1092, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:13:53');
INSERT INTO `logs` VALUES (1093, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:13:53');
INSERT INTO `logs` VALUES (1094, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:13:53');
INSERT INTO `logs` VALUES (1095, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:15:36');
INSERT INTO `logs` VALUES (1096, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:20:59');
INSERT INTO `logs` VALUES (1097, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:21:33');
INSERT INTO `logs` VALUES (1098, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:28:56');
INSERT INTO `logs` VALUES (1099, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-29 20:28:57');
INSERT INTO `logs` VALUES (1100, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:29:38');
INSERT INTO `logs` VALUES (1101, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:29:38');
INSERT INTO `logs` VALUES (1102, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-29 20:29:42');
INSERT INTO `logs` VALUES (1103, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewProduct productId=AV-CB-01', '2021-12-29 20:29:46');
INSERT INTO `logs` VALUES (1104, 'j2ee', 'QUERY', '/jpetstore_war_exploded/viewItem itemId=EST-18', '2021-12-29 20:29:48');
INSERT INTO `logs` VALUES (1105, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:58:27');
INSERT INTO `logs` VALUES (1106, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:59:26');
INSERT INTO `logs` VALUES (1107, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 20:59:27');
INSERT INTO `logs` VALUES (1108, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:13');
INSERT INTO `logs` VALUES (1109, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:14');
INSERT INTO `logs` VALUES (1110, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:14');
INSERT INTO `logs` VALUES (1111, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:14');
INSERT INTO `logs` VALUES (1112, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:14');
INSERT INTO `logs` VALUES (1113, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:02:16');
INSERT INTO `logs` VALUES (1114, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:09:03');
INSERT INTO `logs` VALUES (1115, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:09:45');
INSERT INTO `logs` VALUES (1116, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:10:49');
INSERT INTO `logs` VALUES (1117, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:11:32');
INSERT INTO `logs` VALUES (1118, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:11:57');
INSERT INTO `logs` VALUES (1119, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:12:08');
INSERT INTO `logs` VALUES (1120, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:24:27');
INSERT INTO `logs` VALUES (1121, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:26:01');
INSERT INTO `logs` VALUES (1122, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:26:17');
INSERT INTO `logs` VALUES (1123, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:27:21');
INSERT INTO `logs` VALUES (1124, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:27:44');
INSERT INTO `logs` VALUES (1125, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:28:27');
INSERT INTO `logs` VALUES (1126, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:29:27');
INSERT INTO `logs` VALUES (1127, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:29:50');
INSERT INTO `logs` VALUES (1128, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:34:42');
INSERT INTO `logs` VALUES (1129, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:34:43');
INSERT INTO `logs` VALUES (1130, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:37:00');
INSERT INTO `logs` VALUES (1131, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:37:49');
INSERT INTO `logs` VALUES (1132, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:40:06');
INSERT INTO `logs` VALUES (1133, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:47:09');
INSERT INTO `logs` VALUES (1134, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:48:00');
INSERT INTO `logs` VALUES (1135, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:50:11');
INSERT INTO `logs` VALUES (1136, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:50:12');
INSERT INTO `logs` VALUES (1137, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:55:24');
INSERT INTO `logs` VALUES (1138, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:55:40');
INSERT INTO `logs` VALUES (1139, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:56:11');
INSERT INTO `logs` VALUES (1140, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:56:37');
INSERT INTO `logs` VALUES (1141, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:58:31');
INSERT INTO `logs` VALUES (1142, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-29 21:58:33');
INSERT INTO `logs` VALUES (1143, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-30 13:25:39');
INSERT INTO `logs` VALUES (1144, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-31 10:05:17');
INSERT INTO `logs` VALUES (1145, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-31 10:05:38');
INSERT INTO `logs` VALUES (1146, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-31 10:05:39');
INSERT INTO `logs` VALUES (1147, '', 'QUERY', '/jpetstore_war_exploded/search ', '2021-12-31 10:05:41');
INSERT INTO `logs` VALUES (1148, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=FISH', '2021-12-31 10:36:49');
INSERT INTO `logs` VALUES (1149, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=DOGS', '2021-12-31 10:36:49');
INSERT INTO `logs` VALUES (1150, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=CATS', '2021-12-31 10:36:49');
INSERT INTO `logs` VALUES (1151, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=REPTILES', '2021-12-31 10:36:49');
INSERT INTO `logs` VALUES (1152, '', 'QUERY', '/jpetstore_war_exploded/viewCategory categoryId=BIRDS', '2021-12-31 10:36:49');
INSERT INTO `logs` VALUES (1153, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-31 10:42:58');
INSERT INTO `logs` VALUES (1154, '', 'NULL', '/jpetstore_war_exploded/main ', '2021-12-31 10:43:01');

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
INSERT INTO `orders` VALUES (1005, '1', '2021-11-07', '235235', '243525', '23524', '2452', '25', '2', '1', '1', '1', '1', '1', '1', 'UPS', 51.50, '1', '1', '534543235245', '2345235', '412414134134134134134', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1006, '1', '2021-11-07', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'UPS', 16.50, '1', '1', '1', '1', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1007, '2', '2021-11-07', '432', '423', '423', '4', '4', '4', '3', '3', '2', '2', '2', '2', 'UPS', 392.50, '2', '2', '324', '324', '423542673537', '12/03', 'Visa', 'CA');

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
INSERT INTO `orderstatus` VALUES (1005, 1005, '2021-11-07', 'P');
INSERT INTO `orderstatus` VALUES (1006, 1006, '2021-11-07', 'P');
INSERT INTO `orderstatus` VALUES (1007, 1007, '2021-11-07', 'P');

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
INSERT INTO `profile` VALUES ('1', 'Chinese', 'FISH', 1, 1);
INSERT INTO `profile` VALUES ('2', 'Chinese', 'FISH', 1, 1);
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
INSERT INTO `sequence` VALUES ('ordernum', 1007);

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
INSERT INTO `signon` VALUES ('1', '1');
INSERT INTO `signon` VALUES ('2', '2');
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
