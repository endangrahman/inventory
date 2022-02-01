/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : apotek

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 06/11/2021 15:13:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'undefined', '2021-05-20 08:33:49', '2021-05-26 13:03:51');
INSERT INTO `categories` VALUES (2, 'Tablet', '2021-05-23 22:25:24', '2021-05-26 13:01:58');
INSERT INTO `categories` VALUES (3, 'Injeksi', '2021-05-23 22:25:50', '2021-05-26 13:02:09');
INSERT INTO `categories` VALUES (4, 'Syrup', '2021-05-23 22:25:59', '2021-05-26 13:02:29');
INSERT INTO `categories` VALUES (5, 'Puyer', '2021-05-26 13:02:40', '2021-05-26 13:02:40');
INSERT INTO `categories` VALUES (6, 'Salep', '2021-05-26 13:03:00', '2021-05-26 13:03:00');
INSERT INTO `categories` VALUES (7, 'Alkes', '2021-05-26 13:03:41', '2021-05-26 13:03:41');
INSERT INTO `categories` VALUES (8, 'Kapsul', '2021-05-26 13:03:59', '2021-05-26 13:03:59');
INSERT INTO `categories` VALUES (9, 'Infus', '2021-05-26 13:04:17', '2021-05-26 13:04:17');
INSERT INTO `categories` VALUES (10, 'Topical', '2021-05-26 13:04:48', '2021-05-26 13:04:48');
INSERT INTO `categories` VALUES (11, 'Non Medis', '2021-05-26 13:04:56', '2021-05-26 13:04:56');
INSERT INTO `categories` VALUES (12, 'BHP Laboratorium', '2021-06-05 09:35:37', '2021-06-05 09:36:06');
INSERT INTO `categories` VALUES (13, 'BHP Radiologi', '2021-06-05 09:35:50', '2021-06-05 09:36:17');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'undefined', NULL, NULL, NULL, '2021-06-02 10:58:42', '2021-06-02 10:58:42');

-- ----------------------------
-- Table structure for datasetting
-- ----------------------------
DROP TABLE IF EXISTS `datasetting`;
CREATE TABLE `datasetting`  (
  `Prefix` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Value` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Prefix`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (1, 'undefined', '2021-05-20 20:35:40', '2021-05-20 20:35:47');
INSERT INTO `locations` VALUES (2, 'Rak 1 Box 1', '2021-05-20 13:52:53', '2021-06-05 09:39:00');
INSERT INTO `locations` VALUES (3, 'Rak 1 Box 2', '2021-05-20 13:53:03', '2021-06-05 09:39:11');
INSERT INTO `locations` VALUES (4, 'Rak 1 Box 3', '2021-05-26 13:06:06', '2021-06-05 09:39:21');
INSERT INTO `locations` VALUES (5, 'Rak 1 Box 4', '2021-06-05 09:39:32', '2021-06-05 09:39:32');
INSERT INTO `locations` VALUES (6, 'Rak 1 Box 5', '2021-06-05 09:39:44', '2021-06-05 09:39:44');
INSERT INTO `locations` VALUES (7, 'Rak 2 Box 1', '2021-06-05 09:39:54', '2021-06-05 09:39:54');
INSERT INTO `locations` VALUES (8, 'Rak 2 Box 2', '2021-06-05 09:40:03', '2021-06-05 09:40:03');
INSERT INTO `locations` VALUES (9, 'Rak 2 Box 3', '2021-06-05 09:40:14', '2021-06-05 09:40:14');
INSERT INTO `locations` VALUES (10, 'Rak Box 4', '2021-06-05 09:40:24', '2021-06-05 09:40:24');
INSERT INTO `locations` VALUES (11, 'Rak 2 Box 5', '2021-06-05 09:40:33', '2021-06-05 09:40:33');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_12_18_035002_create_customers_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_12_18_035015_create_sales_table', 1);
INSERT INTO `migrations` VALUES (5, '2018_12_18_035038_create_suppliers_table', 1);
INSERT INTO `migrations` VALUES (6, '2018_12_18_041830_create_categories_table', 1);
INSERT INTO `migrations` VALUES (7, '2018_12_18_042809_create_products_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_12_18_043146_create_product_masuk_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_12_18_043233_create_product_keluar_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_12_19_044911_add_field_role_to_table_users', 1);

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `qty` float UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `subtotal` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IX_Order_Product`(`product_id`) USING BTREE,
  INDEX `IX_Order_Source`(`source_id`) USING BTREE,
  INDEX `IX_Order_Order`(`order_id`) USING BTREE,
  CONSTRAINT `FK_OrderDetail_Order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_Order_Product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_Order_Source` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (7, 3, 15, 2, 400, 1500, 600000);
INSERT INTO `order_details` VALUES (8, 3, 16, 2, 300, 2000, 600000);
INSERT INTO `order_details` VALUES (9, 3, 17, 2, 100, 2500, 250000);
INSERT INTO `order_details` VALUES (10, 3, 18, 2, 200, 3000, 600000);
INSERT INTO `order_details` VALUES (11, 4, 15, 2, 200, 1500, 300000);
INSERT INTO `order_details` VALUES (12, 4, 16, 2, 200, 2000, 400000);
INSERT INTO `order_details` VALUES (13, 6, 17, 2, 50, 2500, 125000);
INSERT INTO `order_details` VALUES (14, 6, 18, 2, 100, 3000, 300000);
INSERT INTO `order_details` VALUES (15, 7, 41, 2, 200, 0, 0);
INSERT INTO `order_details` VALUES (16, 7, 35, 2, 100, 0, 0);
INSERT INTO `order_details` VALUES (17, 7, 36, 2, 100, 0, 0);
INSERT INTO `order_details` VALUES (18, 8, 48, 2, 100, 0, 0);
INSERT INTO `order_details` VALUES (19, 8, 39, 2, 200, 0, 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_number` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trans_date` datetime(0) NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `product_in_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IX_order_date`(`trans_date`) USING BTREE,
  INDEX `order_supplier_fk`(`supplier_id`) USING BTREE,
  CONSTRAINT `order_supplier_fk` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, 'ORD2106010002', '2021-06-01 21:32:51', 2, 8, '2021-06-01 21:32:51', '2021-06-05 16:07:14', 25);
INSERT INTO `orders` VALUES (4, 'ORD2106020003', '2021-06-02 15:52:40', 5, 8, '2021-06-02 15:52:40', '2021-06-03 12:58:20', NULL);
INSERT INTO `orders` VALUES (6, 'ORD2106030004', '2021-06-03 15:55:09', 4, 8, '2021-06-03 15:55:09', '2021-06-03 15:55:09', NULL);
INSERT INTO `orders` VALUES (7, 'ORD2106050005', '2021-06-05 10:21:34', 9, 8, '2021-06-05 10:21:34', '2021-06-05 10:22:33', 24);
INSERT INTO `orders` VALUES (8, 'ORD2106050006', '2021-06-05 19:29:24', 6, 8, '2021-06-05 19:29:24', '2021-06-05 19:31:31', 26);

-- ----------------------------
-- Table structure for prescription_details
-- ----------------------------
DROP TABLE IF EXISTS `prescription_details`;
CREATE TABLE `prescription_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `fifo_number` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` float UNSIGNED NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `subtotal` double UNSIGNED NOT NULL,
  `how_to_use` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seq_number` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_prescription_id`(`prescription_id`) USING BTREE,
  CONSTRAINT `FK_prescription_id` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prescription_details
-- ----------------------------
INSERT INTO `prescription_details` VALUES (20, 16, 48, 2, '2106050004', 5, 4000, 20000, '3x1 sehari', 'sebelum makan', 1);
INSERT INTO `prescription_details` VALUES (21, 16, 35, 2, '2106050002', 10, 2000, 20000, '2x1 sehari', 'sesudah makan', 1);

-- ----------------------------
-- Table structure for prescriptions
-- ----------------------------
DROP TABLE IF EXISTS `prescriptions`;
CREATE TABLE `prescriptions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_number` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trans_date` datetime(0) NOT NULL,
  `from` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `instance` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `customer_id` int(10) NULL DEFAULT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prescriptions
-- ----------------------------
INSERT INTO `prescriptions` VALUES (16, 'INV2106050001', '2021-06-05 19:36:04', 'dr Budi', '2021-06-05 00:00:00', 'Klinik Aminah', 'Jl. H. Ibrahim Adjie No.358', '02285440004', 1, 8, '2021-06-05 19:36:04', '2021-06-05 19:36:04');

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `fifo_number` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_price_pruduct`(`product_id`) USING BTREE,
  INDEX `FK_price_source`(`source_id`) USING BTREE,
  CONSTRAINT `FK_price_pruduct` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_price_source` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prices
-- ----------------------------
INSERT INTO `prices` VALUES (3, 15, 2, '0000000000', 1500);
INSERT INTO `prices` VALUES (4, 16, 2, '0000000000', 2000);
INSERT INTO `prices` VALUES (5, 17, 2, '0000000000', 2500);
INSERT INTO `prices` VALUES (6, 18, 2, '0000000000', 3000);
INSERT INTO `prices` VALUES (28, 19, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (29, 20, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (30, 21, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (31, 22, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (32, 23, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (33, 24, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (34, 25, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (35, 26, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (36, 27, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (37, 28, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (38, 29, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (39, 30, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (40, 31, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (41, 32, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (42, 33, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (43, 34, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (44, 35, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (45, 36, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (46, 37, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (47, 38, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (48, 39, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (49, 40, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (50, 41, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (51, 42, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (52, 43, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (53, 44, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (54, 45, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (55, 46, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (56, 41, 2, '2106050002', 2500);
INSERT INTO `prices` VALUES (57, 35, 2, '2106050002', 2000);
INSERT INTO `prices` VALUES (58, 36, 2, '2106050002', 3000);
INSERT INTO `prices` VALUES (59, 47, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (60, 15, 2, '2106050003', 2500);
INSERT INTO `prices` VALUES (61, 16, 2, '2106050003', 3000);
INSERT INTO `prices` VALUES (62, 17, 2, '2106050003', 4000);
INSERT INTO `prices` VALUES (63, 18, 2, '2106050003', 3500);
INSERT INTO `prices` VALUES (64, 48, 2, '0000000000', 0);
INSERT INTO `prices` VALUES (65, 48, 2, '2106050004', 4000);
INSERT INTO `prices` VALUES (66, 39, 2, '2106050004', 5000);

-- ----------------------------
-- Table structure for product_in
-- ----------------------------
DROP TABLE IF EXISTS `product_in`;
CREATE TABLE `product_in`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_date` datetime(0) NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` datetime(0) NOT NULL,
  `user_id` int(10) NOT NULL,
  `total` double UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IX_product_in`(`trans_date`, `supplier_id`, `invoice_number`) USING BTREE,
  INDEX `product_in_supplier_fk`(`supplier_id`) USING BTREE,
  CONSTRAINT `product_in_supplier_fk` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_in
-- ----------------------------
INSERT INTO `product_in` VALUES (24, 'INV2106050001', '2021-06-05 10:22:32', 9, 'F-1827199', '2021-06-05 00:00:00', 8, 1100000, '2021-06-05 10:22:32', '2021-06-05 10:22:32');
INSERT INTO `product_in` VALUES (25, 'INV2106050002', '2021-06-05 16:07:13', 2, 'F-123456', '2021-06-05 00:00:00', 8, 3300000, '2021-06-05 16:07:13', '2021-06-05 16:07:13');
INSERT INTO `product_in` VALUES (26, 'INV2106050003', '2021-06-05 19:31:30', 6, 'F-1902910', '2021-06-05 00:00:00', 8, 1540000, '2021-06-05 19:31:30', '2021-06-05 19:31:30');

-- ----------------------------
-- Table structure for product_in_details
-- ----------------------------
DROP TABLE IF EXISTS `product_in_details`;
CREATE TABLE `product_in_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_in_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) UNSIGNED NOT NULL,
  `fifo_number` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` float UNSIGNED NOT NULL,
  `price` double NULL DEFAULT NULL,
  `discount` double NULL DEFAULT NULL,
  `tax` double NULL DEFAULT NULL,
  `subtotal` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_product_in_product`(`product_id`) USING BTREE,
  INDEX `FK_product_in_source`(`source_id`) USING BTREE,
  INDEX `IX_product_in_id_details`(`product_in_id`) USING BTREE,
  CONSTRAINT `FK_product_in_detail_id` FOREIGN KEY (`product_in_id`) REFERENCES `product_in` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_in_details
-- ----------------------------
INSERT INTO `product_in_details` VALUES (23, 24, 41, 2, '2106050002', 200, 2500, 0, 50000, 500000);
INSERT INTO `product_in_details` VALUES (24, 24, 35, 2, '2106050002', 100, 2000, 0, 20000, 200000);
INSERT INTO `product_in_details` VALUES (25, 24, 36, 2, '2106050002', 100, 3000, 0, 30000, 300000);
INSERT INTO `product_in_details` VALUES (26, 25, 15, 2, '2106050003', 400, 2500, 0, 100000, 1000000);
INSERT INTO `product_in_details` VALUES (27, 25, 16, 2, '2106050003', 300, 3000, 0, 90000, 900000);
INSERT INTO `product_in_details` VALUES (28, 25, 17, 2, '2106050003', 100, 4000, 0, 40000, 400000);
INSERT INTO `product_in_details` VALUES (29, 25, 18, 2, '2106050003', 200, 3500, 0, 70000, 700000);
INSERT INTO `product_in_details` VALUES (30, 26, 48, 2, '2106050004', 100, 4000, 0, 40000, 400000);
INSERT INTO `product_in_details` VALUES (31, 26, 39, 2, '2106050004', 200, 5000, 0, 100000, 1000000);

-- ----------------------------
-- Table structure for product_out
-- ----------------------------
DROP TABLE IF EXISTS `product_out`;
CREATE TABLE `product_out`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_date` datetime(0) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_out
-- ----------------------------
INSERT INTO `product_out` VALUES (21, 'SAL2106050001', '2021-06-05 19:33:02', 8, 1, '2021-06-05 19:33:02', '2021-06-05 19:33:02');

-- ----------------------------
-- Table structure for product_out_details
-- ----------------------------
DROP TABLE IF EXISTS `product_out_details`;
CREATE TABLE `product_out_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_out_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `source_id` int(11) UNSIGNED NOT NULL,
  `fifo_number` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` float UNSIGNED NOT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_product_out_detail_id`(`product_out_id`) USING BTREE,
  CONSTRAINT `FK_product_out_detail_id` FOREIGN KEY (`product_out_id`) REFERENCES `product_out` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_out_details
-- ----------------------------
INSERT INTO `product_out_details` VALUES (24, 21, 48, 2, '2106050004', 10, 'test');
INSERT INTO `product_out_details` VALUES (25, 21, 41, 2, '2106050002', 20, 'test');
INSERT INTO `product_out_details` VALUES (26, 21, 36, 2, '2106050002', 25, 'test');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barcode` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `volume` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_product_category`(`category_id`) USING BTREE,
  INDEX `FK_product_unit`(`unit_id`) USING BTREE,
  CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (15, 12345678, 'AMINOPHYLLIN INJ 24 MG/ML', 3, 12, 1, '2021-05-26 14:37:18', '2021-05-26 14:37:18');
INSERT INTO `products` VALUES (16, 12345678, 'AMIODARON INJ 150 MG/3 ML', 3, 12, 1, '2021-05-27 07:26:13', '2021-05-27 07:26:13');
INSERT INTO `products` VALUES (17, 12345678, 'AMLODIPIN TAB 10 MG', 2, 10, 1, '2021-05-27 07:26:34', '2021-05-27 07:26:34');
INSERT INTO `products` VALUES (18, 12345678, 'AMOXICILLIN DROP', 4, 9, 1, '2021-05-27 07:26:54', '2021-05-27 07:26:54');
INSERT INTO `products` VALUES (19, 12345678, 'AMBROXOL SYR', 4, 9, 1, '2021-06-05 09:44:22', '2021-06-05 09:44:22');
INSERT INTO `products` VALUES (20, 12345678, 'AMOXICILLIN TAB 500 MG', 2, 10, 1, '2021-06-05 09:45:39', '2021-06-05 09:45:39');
INSERT INTO `products` VALUES (21, 12345678, 'AMPICILLIN TAB 500 MG', 2, 10, 1, '2021-06-05 09:46:00', '2021-06-05 09:46:00');
INSERT INTO `products` VALUES (22, 12345678, 'BIOSANBE TAB', 2, 10, 1, '2021-06-05 09:46:55', '2021-06-05 09:46:55');
INSERT INTO `products` VALUES (23, 12345678, 'BIOTHICOL KAP 500 MG', 2, 10, 1, '2021-06-05 09:47:17', '2021-06-05 09:47:17');
INSERT INTO `products` VALUES (24, 12345678, 'CALCIUM LACTAT TAB 500 MG', 2, 10, 1, '2021-06-05 09:47:55', '2021-06-05 09:47:55');
INSERT INTO `products` VALUES (25, 12345678, 'CALNIC SYR 100 ML', 4, 9, 1, '2021-06-05 09:48:15', '2021-06-05 09:48:15');
INSERT INTO `products` VALUES (26, 12345678, 'CAPTOPRIL TAB 50 MG', 2, 10, 1, '2021-06-05 09:49:35', '2021-06-05 09:49:35');
INSERT INTO `products` VALUES (27, 12345678, 'CEFADROXIL KAP 250 MG', 8, 19, 1, '2021-06-05 09:50:38', '2021-06-05 09:50:38');
INSERT INTO `products` VALUES (28, 12345678, 'CEFIXIME KAP 100 MG', 8, 19, 1, '2021-06-05 10:00:38', '2021-06-05 10:00:38');
INSERT INTO `products` VALUES (29, 12345678, 'CEFXON INJ', 3, 6, 1, '2021-06-05 10:01:09', '2021-06-05 10:01:09');
INSERT INTO `products` VALUES (30, 12345678, 'CETIRIZINE DROP', 4, 9, 1, '2021-06-05 10:01:37', '2021-06-05 10:01:37');
INSERT INTO `products` VALUES (31, 12345678, 'CETIRIZINE TAB 10 MG', 2, 10, 1, '2021-06-05 10:01:52', '2021-06-05 10:01:52');
INSERT INTO `products` VALUES (32, 12345678, 'CLINDAMYCIN KAP 300 MG', 8, 19, 1, '2021-06-05 10:02:45', '2021-06-05 10:02:45');
INSERT INTO `products` VALUES (33, 12345678, 'DIAZEPAM INJ 5 MG/ML', 3, 12, 1, '2021-06-05 10:04:09', '2021-06-05 10:04:09');
INSERT INTO `products` VALUES (34, 12345678, 'DIAZEPAM TAB 5 MG', 2, 10, 1, '2021-06-05 10:04:26', '2021-06-05 10:04:26');
INSERT INTO `products` VALUES (35, 12345678, 'PARACETAMOL DROP', 4, 9, 1, '2021-06-05 10:05:13', '2021-06-05 10:05:13');
INSERT INTO `products` VALUES (36, 12345678, 'PARACETAMOL INF 100 ML', 9, 9, 1, '2021-06-05 10:05:43', '2021-06-05 10:05:43');
INSERT INTO `products` VALUES (37, 12345678, 'PARACETAMOL SYR 120 MG/5 ML', 4, 9, 1, '2021-06-05 10:06:04', '2021-06-05 10:06:04');
INSERT INTO `products` VALUES (38, 12345678, 'PARACETAMOL TAB', 2, 10, 1, '2021-06-05 10:06:22', '2021-06-05 10:06:22');
INSERT INTO `products` VALUES (39, 12345678, 'SALBUTAMOL TAB 2 MG', 2, 10, 1, '2021-06-05 10:07:11', '2021-06-05 10:07:11');
INSERT INTO `products` VALUES (40, 12345678, 'SANBE KIDS SYRUP', 4, 9, 1, '2021-06-05 10:07:32', '2021-06-05 10:07:32');
INSERT INTO `products` VALUES (41, 12345678, 'SANMOL DROP', 4, 9, 1, '2021-06-05 10:08:36', '2021-06-05 10:08:36');
INSERT INTO `products` VALUES (42, 12345678, 'SANMOL INF', 9, 9, 1, '2021-06-05 10:08:57', '2021-06-05 10:08:57');
INSERT INTO `products` VALUES (43, 12345678, 'SANMOL TAB', 2, 10, 1, '2021-06-05 10:09:15', '2021-06-05 10:09:15');
INSERT INTO `products` VALUES (44, 12345678, 'SPUIT 1 ML', 7, 4, 1, '2021-06-05 10:14:51', '2021-06-05 10:14:51');
INSERT INTO `products` VALUES (45, 12345678, 'SPUIT 10 ML', 7, 4, 1, '2021-06-05 10:15:43', '2021-06-05 10:15:43');
INSERT INTO `products` VALUES (46, 12345678, 'VIT A TAB 6000 IU', 2, 10, 1, '2021-06-05 10:16:40', '2021-06-05 10:16:40');
INSERT INTO `products` VALUES (47, 12345678, 'Reagen Antigen Covid-19', 12, 11, 1, '2021-06-05 11:49:23', '2021-06-05 11:49:23');
INSERT INTO `products` VALUES (48, 12345678, 'Sanmag tab', 2, 10, 1, '2021-06-05 19:26:22', '2021-06-05 19:26:22');

-- ----------------------------
-- Table structure for sources
-- ----------------------------
DROP TABLE IF EXISTS `sources`;
CREATE TABLE `sources`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sources
-- ----------------------------
INSERT INTO `sources` VALUES (1, 'undefined', '2021-05-20 14:21:05', '2021-05-26 13:05:31');
INSERT INTO `sources` VALUES (2, 'Anggaran', '2021-05-20 14:21:12', '2021-05-26 13:05:39');
INSERT INTO `sources` VALUES (3, 'Konsinyasi', '2021-05-20 14:21:23', '2021-05-20 14:21:23');
INSERT INTO `sources` VALUES (4, 'Pinjaman', '2021-05-21 09:30:37', '2021-05-21 09:30:46');
INSERT INTO `sources` VALUES (5, 'Hibah', '2021-05-26 13:05:49', '2021-05-26 13:05:49');

-- ----------------------------
-- Table structure for stock_card
-- ----------------------------
DROP TABLE IF EXISTS `stock_card`;
CREATE TABLE `stock_card`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty_first` float NOT NULL,
  `qty_in` float UNSIGNED NOT NULL,
  `qty_out` float UNSIGNED NOT NULL,
  `qty_last` float UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `trans_date` datetime(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_stock_card_product`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_card
-- ----------------------------
INSERT INTO `stock_card` VALUES (10, 20, 18, 0, 0, 10, 0, 8, 'products Out', '2021-06-05 18:27:39', '2021-06-05 18:27:40', '2021-06-05 18:27:40');
INSERT INTO `stock_card` VALUES (11, 20, 35, 0, 0, 5, 0, 8, 'products Out', '2021-06-05 18:27:39', '2021-06-05 18:27:40', '2021-06-05 18:27:40');
INSERT INTO `stock_card` VALUES (12, 26, 48, 0, 100, 0, 100, 8, 'Products In', '2021-06-05 19:31:30', '2021-06-05 19:31:31', '2021-06-05 19:31:31');
INSERT INTO `stock_card` VALUES (13, 26, 39, 0, 200, 0, 200, 8, 'Products In', '2021-06-05 19:31:30', '2021-06-05 19:31:31', '2021-06-05 19:31:31');
INSERT INTO `stock_card` VALUES (14, 21, 48, 100, 0, 10, 90, 8, 'products Out', '2021-06-05 19:33:02', '2021-06-05 19:33:02', '2021-06-05 19:33:02');
INSERT INTO `stock_card` VALUES (15, 21, 41, 0, 0, 20, 0, 8, 'products Out', '2021-06-05 19:33:02', '2021-06-05 19:33:02', '2021-06-05 19:33:02');
INSERT INTO `stock_card` VALUES (16, 21, 36, 0, 0, 25, 0, 8, 'products Out', '2021-06-05 19:33:02', '2021-06-05 19:33:02', '2021-06-05 19:33:02');
INSERT INTO `stock_card` VALUES (17, 16, 48, 90, 0, 5, 85, 8, 'Prescriptions', '2021-06-05 19:36:04', '2021-06-05 19:36:04', '2021-06-05 19:36:04');

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source_id` int(11) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `fifo_number` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` float UNSIGNED NOT NULL,
  `qty_min` float UNSIGNED NOT NULL,
  `qty_max` float UNSIGNED NOT NULL,
  `exp_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_stock_porduct`(`product_id`) USING BTREE,
  INDEX `FK_stock_source`(`source_id`) USING BTREE,
  INDEX `FK_stock_location`(`location_id`) USING BTREE,
  CONSTRAINT `FK_stock_location` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_stock_porduct` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_stock_source` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stocks
-- ----------------------------
INSERT INTO `stocks` VALUES (4, 15, 2, 2, '0000000000', 985, 1, 10000, '2021-05-26 14:37:18');
INSERT INTO `stocks` VALUES (5, 16, 2, 2, '0000000000', 995, 1, 10000, '2023-05-27 07:26:13');
INSERT INTO `stocks` VALUES (6, 17, 2, 2, '0000000000', 990, 1, 10000, '2022-05-27 07:26:34');
INSERT INTO `stocks` VALUES (7, 18, 2, 2, '0000000000', 970, 1, 10000, '2023-05-27 07:26:54');
INSERT INTO `stocks` VALUES (29, 19, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:44:22');
INSERT INTO `stocks` VALUES (30, 20, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:45:40');
INSERT INTO `stocks` VALUES (31, 21, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:46:00');
INSERT INTO `stocks` VALUES (32, 22, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:46:55');
INSERT INTO `stocks` VALUES (33, 23, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:47:17');
INSERT INTO `stocks` VALUES (34, 24, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:47:55');
INSERT INTO `stocks` VALUES (35, 25, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:48:15');
INSERT INTO `stocks` VALUES (36, 26, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:49:35');
INSERT INTO `stocks` VALUES (37, 27, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 09:50:38');
INSERT INTO `stocks` VALUES (38, 28, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:00:39');
INSERT INTO `stocks` VALUES (39, 29, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:01:09');
INSERT INTO `stocks` VALUES (40, 30, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:01:37');
INSERT INTO `stocks` VALUES (41, 31, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:01:52');
INSERT INTO `stocks` VALUES (42, 32, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:02:45');
INSERT INTO `stocks` VALUES (43, 33, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:04:09');
INSERT INTO `stocks` VALUES (44, 34, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:04:27');
INSERT INTO `stocks` VALUES (45, 35, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:05:13');
INSERT INTO `stocks` VALUES (46, 36, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:05:43');
INSERT INTO `stocks` VALUES (47, 37, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:06:04');
INSERT INTO `stocks` VALUES (48, 38, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:06:22');
INSERT INTO `stocks` VALUES (49, 39, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:07:11');
INSERT INTO `stocks` VALUES (50, 40, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:07:32');
INSERT INTO `stocks` VALUES (51, 41, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:08:36');
INSERT INTO `stocks` VALUES (52, 42, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:08:57');
INSERT INTO `stocks` VALUES (53, 43, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:09:15');
INSERT INTO `stocks` VALUES (54, 44, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:14:51');
INSERT INTO `stocks` VALUES (55, 45, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:15:43');
INSERT INTO `stocks` VALUES (56, 46, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 10:16:40');
INSERT INTO `stocks` VALUES (57, 41, 2, 1, '2106050002', 970, 1, 10000, '2024-06-05 10:22:32');
INSERT INTO `stocks` VALUES (58, 35, 2, 1, '2106050002', 490, 1, 10000, '2023-06-05 10:22:32');
INSERT INTO `stocks` VALUES (59, 36, 2, 1, '2106050002', 960, 1, 10000, '2024-06-05 10:22:33');
INSERT INTO `stocks` VALUES (60, 47, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 11:49:23');
INSERT INTO `stocks` VALUES (61, 15, 2, 1, '2106050003', 400, 1, 10000, '2021-06-05 16:07:13');
INSERT INTO `stocks` VALUES (62, 16, 2, 1, '2106050003', 300, 1, 10000, '2021-06-05 16:07:13');
INSERT INTO `stocks` VALUES (63, 17, 2, 1, '2106050003', 100, 1, 10000, '2021-06-05 16:07:13');
INSERT INTO `stocks` VALUES (64, 18, 2, 1, '2106050003', 200, 1, 10000, '2021-06-05 16:07:14');
INSERT INTO `stocks` VALUES (65, 48, 2, 1, '0000000000', 0, 1, 10000, '2021-06-05 19:26:22');
INSERT INTO `stocks` VALUES (66, 48, 2, 1, '2106050004', 85, 1, 10000, '2021-06-05 19:31:31');
INSERT INTO `stocks` VALUES (67, 39, 2, 1, '2106050004', 200, 1, 10000, '2021-06-05 19:31:31');

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 'PT. Kimia Farma', 'Jl. Ir. H. Juanda No.90', 'info@kimiafarma.com', '02652354848', '2021-05-21 08:45:27', '2021-05-27 19:14:38');
INSERT INTO `suppliers` VALUES (2, 'PT. Anugerah Pharmindo Lestari', 'Jl. Terusan Holis, Rt/rw.001/010', 'Deny.kurniawan@aplcare.com', '02285440004', '2021-05-27 19:09:42', '2021-05-27 19:19:39');
INSERT INTO `suppliers` VALUES (3, 'PT. Mensa Bina Sukses', 'Jl. H. Ibrahim Adjie No.358', 'Kacabbdg@mbs.co.id', '0227308617', '2021-05-27 19:11:03', '2021-05-27 19:11:03');
INSERT INTO `suppliers` VALUES (4, 'PT. Merapi Utama Pharma', 'Jl. Gedebage No.163 Rt/rw.003/006', 'Mupbdg@merapi.net', '0227506816', '2021-05-27 19:11:30', '2021-05-27 19:19:27');
INSERT INTO `suppliers` VALUES (5, 'PT. Antarmitra Sembada', 'Jl. Brigjen Dharsono No.96 Kedawung', 'Kacab@crb.ams.co.id', '02318493831', '2021-05-27 19:12:10', '2021-05-27 19:12:10');
INSERT INTO `suppliers` VALUES (6, 'PT. Parit Padang Global', 'Komp. Kopo Mas Regency Blok. B No.21-22', 'Pbdg@sohoglobalhealth.com', '0225436829', '2021-05-27 19:13:15', '2021-05-27 19:18:31');
INSERT INTO `suppliers` VALUES (7, 'PT. Tempo', 'Jl. Soekarno - Hatta No.604', 'PTtbm00bdg@thetempogroup.com', '0227562072', '2021-05-27 19:13:45', '2021-05-27 19:13:45');
INSERT INTO `suppliers` VALUES (8, 'PT. Dos Ni Roha', 'Jl. Satria Raya Ii No.46', 'Markus_proyono@dosniroha.com', '0225412462', '2021-05-27 19:15:25', '2021-05-27 19:19:13');
INSERT INTO `suppliers` VALUES (9, 'PT. Rajawali Nusindo', 'Jl. Soekarno - Hatta No.493', 'Cab.bandung@nusindo.co.id', '0227301947', '2021-05-27 19:15:57', '2021-05-27 19:15:57');
INSERT INTO `suppliers` VALUES (10, 'PT. Enseval Putera Megatrading Tbk', 'Jl. Ir. H. Juanda No.18', 'admin@enseval.com', '0227569730', '2021-05-27 19:17:15', '2021-05-27 19:17:15');

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `units` VALUES (1, 'kg', '2021-05-21 09:27:39', '2021-05-21 09:29:19');
INSERT INTO `units` VALUES (2, 'ml', '2021-05-21 09:27:46', '2021-05-21 09:27:46');
INSERT INTO `units` VALUES (3, 'mg', '2021-05-21 09:27:52', '2021-05-21 09:28:34');
INSERT INTO `units` VALUES (4, 'pcs', '2021-05-21 09:28:00', '2021-05-21 09:28:00');
INSERT INTO `units` VALUES (5, 'box', '2021-05-21 09:28:06', '2021-05-21 09:28:06');
INSERT INTO `units` VALUES (6, 'vial', '2021-05-21 09:28:13', '2021-05-21 09:28:13');
INSERT INTO `units` VALUES (7, 'cm', '2021-05-21 09:28:40', '2021-05-21 09:28:40');
INSERT INTO `units` VALUES (8, 'ltr', '2021-05-21 09:28:46', '2021-05-21 09:31:07');
INSERT INTO `units` VALUES (9, 'botol', '2021-05-23 22:26:16', '2021-05-23 22:26:16');
INSERT INTO `units` VALUES (10, 'tab', '2021-05-23 22:27:34', '2021-05-23 22:27:34');
INSERT INTO `units` VALUES (11, 'tube', '2021-05-25 01:00:30', '2021-05-25 01:00:30');
INSERT INTO `units` VALUES (12, 'ampul', '2021-05-26 12:57:43', '2021-05-26 12:57:43');
INSERT INTO `units` VALUES (13, 'gr', '2021-05-26 12:57:49', '2021-05-26 12:57:49');
INSERT INTO `units` VALUES (14, 'set', '2021-05-26 12:58:01', '2021-05-26 12:58:01');
INSERT INTO `units` VALUES (15, 'pack', '2021-05-26 12:58:28', '2021-05-26 12:58:28');
INSERT INTO `units` VALUES (16, 'rol', '2021-05-26 12:59:33', '2021-05-26 12:59:33');
INSERT INTO `units` VALUES (17, 'rim', '2021-05-26 12:59:39', '2021-05-26 12:59:39');
INSERT INTO `units` VALUES (18, 'strip', '2021-05-26 13:00:45', '2021-05-26 13:00:45');
INSERT INTO `units` VALUES (19, 'caps', '2021-06-05 09:37:33', '2021-06-05 09:37:33');
INSERT INTO `units` VALUES (20, 'rol', '2021-06-05 19:25:37', '2021-06-05 19:25:37');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'Gudang', 'gudang@gmail.com', '$2y$10$SGQmIPPNWashC.2FqHUdCuPjrFJA.zTi7XG2hpyDk8QdCo8f/nsee', 'WUJvEFFswoktoLzo5O0gKFjQObffNePt6obE79lGySh85bPGwoQyZaksxZ5z', '2021-05-28 19:41:28', '2021-05-28 19:41:28', 'gudang');
INSERT INTO `users` VALUES (4, 'Endang Rahman', 'endangrahman@gmail.com', '$2y$10$HJ5XnMIAv7uT4Zk5smK4O.i6SZ5oyAY2SIWSR196oknzvoRKbuRmi', 'DidqEv2v8uMabEFuDlzpBDlBPov5PMH16ECxEPAtEOLpRHnsOYMhRIJvnyIv', '2021-05-28 19:43:47', '2021-05-28 19:43:47', 'admin');
INSERT INTO `users` VALUES (5, 'Staff', 'staff@gmail.com', '$2y$10$KSSim4GhhqzSuzJCAv1y6.s.0XRDDjC.Osbgc7rOkly68s3ICCSbu', 'YhCaHepv1eSXTk3Xvo4eXJtuhAWDe2Nvo2lr1CVmt51vswLkBj4r11dD9eWK', '2021-05-28 19:46:47', '2021-05-28 19:46:47', 'staff');
INSERT INTO `users` VALUES (8, 'Admin', 'admin@gmail.com', '$2y$10$sq9Nf2KdRrczlUnJI2/.yOCZGjry4HIvP95FWDxJaHoZvuU7SGI9C', '5ZYg10IsxqvlxYGIiaQ997s6lZzwb6e93xpDx2feMmfvJ8u4kVnkp8WVXWBD', '2021-05-28 19:53:54', '2021-05-28 19:53:54', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
