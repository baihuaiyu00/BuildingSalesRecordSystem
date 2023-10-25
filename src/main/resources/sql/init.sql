/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : building

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/09/2023 17:12:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                         `build_number` bigint(20) NULL DEFAULT NULL,
                         `room_name` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL,
                         `view_user` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL,
                         `status` int(11) NULL DEFAULT NULL,
                         `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
                         `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 1, '101', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (2, 1, '102', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (3, 1, '201', NULL, 0, '2023-09-08 15:05:09', '2023-09-08 15:05:09');
INSERT INTO `room` VALUES (4, 1, '202', NULL, 0, '2023-09-08 16:43:40', '2023-09-08 16:43:40');
INSERT INTO `room` VALUES (5, 1, '301', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (6, 1, '302', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (7, 1, '401', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (8, 1, '402', '败坏与', 1, NULL, NULL);
INSERT INTO `room` VALUES (9, 1, '501', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (10, 1, '502', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (11, 1, '601', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (12, 1, '602', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (13, 1, '701', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (14, 1, '702', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (15, 1, '801', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (16, 1, '802', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (18, 2, '101', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (19, 2, '102', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (20, 2, '201', NULL, 2, '2023-09-08 15:05:09', '2023-09-08 15:05:09');
INSERT INTO `room` VALUES (21, 2, '202', NULL, 2, '2023-09-08 15:05:16', '2023-09-08 15:05:16');
INSERT INTO `room` VALUES (22, 2, '301', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (23, 2, '302', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (24, 2, '401', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (25, 2, '402', '六只七', 1, NULL, NULL);
INSERT INTO `room` VALUES (26, 2, '501', '六只七', 1, NULL, NULL);
INSERT INTO `room` VALUES (27, 2, '502', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (28, 2, '601', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (29, 2, '602', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (30, 2, '701', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (31, 2, '702', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (32, 2, '801', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (33, 2, '802', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (34, 3, '101', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (35, 3, '102', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (36, 3, '201', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (37, 3, '202', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (38, 3, '301', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (39, 3, '302', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (40, 3, '401', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (41, 3, '402', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (42, 3, '501', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (43, 3, '502', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (44, 3, '601', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (45, 3, '602', NULL, 2, NULL, NULL);
INSERT INTO `room` VALUES (46, 3, '701', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (47, 3, '702', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (48, 3, '801', NULL, 0, NULL, NULL);
INSERT INTO `room` VALUES (49, 3, '802', NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                         `username` varchar(255) CHARACTER SET utf8mb4 NULL DEFAULT NULL,
                         `password` varchar(255) CHARACTER SET utf8mb4 NULL DEFAULT NULL,
                         `name` varchar(255) CHARACTER SET utf8mb4 NULL DEFAULT NULL,
                         `code` varchar(255) CHARACTER SET utf8mb4 NULL DEFAULT NULL,
                         `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
                         `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', '123', '败坏与', '001', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
