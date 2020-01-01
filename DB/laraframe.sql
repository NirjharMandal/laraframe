/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : laraframe

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 01/01/2020 19:10:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for law_app_users
-- ----------------------------
DROP TABLE IF EXISTS `law_app_users`;
CREATE TABLE `law_app_users`  (
  `law_app_users_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_app_users_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_type` enum('Individual','Company') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Individual',
  `marital_status` enum('Married','Unmarried','Single') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marriage_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `law_lawyers_id` int(10) NULL DEFAULT NULL,
  `bank_account_number` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tax_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `citizen_card_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `citizen_card_exp_date` date NULL DEFAULT NULL,
  `passport_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passport_issue_date` date NULL DEFAULT NULL,
  `passport_exp_date` date NULL DEFAULT NULL,
  `passport_issue_entity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passport_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commercial_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `letter_attorney_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_app_users_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_app_users
-- ----------------------------
INSERT INTO `law_app_users` VALUES (1, 'nirjhar', 'Individual', NULL, NULL, 'nirjhar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:31:28', 'Active');
INSERT INTO `law_app_users` VALUES (2, 'masum', 'Individual', NULL, NULL, 'masum@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:31:45', 'Active');
INSERT INTO `law_app_users` VALUES (3, 'jony', 'Individual', NULL, NULL, 'jony@gmial.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:32:00', 'Active');
INSERT INTO `law_app_users` VALUES (4, 'Zim', 'Individual', NULL, NULL, 'zim@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:32:13', 'Active');
INSERT INTO `law_app_users` VALUES (5, 'dasdasd', '', '', NULL, 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 12:43:19', 'Active');
INSERT INTO `law_app_users` VALUES (6, 'asdfas', 'Individual', 'Married', 'dfasdf', 'sfdsf', 'dfasdfasdfas', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 12:45:59', 'Active');
INSERT INTO `law_app_users` VALUES (7, 'asdfas', 'Individual', 'Married', 'dfasdf', 'sfdsf', 'dfasdfasdfas', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'client_files/7/passport_info.txt', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:57:38', 'Active');
INSERT INTO `law_app_users` VALUES (8, 'asdfas', 'Individual', 'Married', 'dfasdf', 'sfdsf', 'dfasdfasdfas', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'client_files/8/commercial_certificate.txt', NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:57:22', 'Active');
INSERT INTO `law_app_users` VALUES (9, 'asdfas', 'Individual', 'Married', 'dfasdf', 'sfdsf@fff.ll', 'dfasdfasdfas', 1, NULL, 'sdfsdf', 'yuyu', '2019-12-10', 'asdasd zxx', '2019-12-20', '2019-12-17', 'asd', 'client_files/9/passport_info.pdf', 'client_files/9/commercial_certificate.jpeg', 'client_files/9/letter_of_attorny.jpeg', NULL, NULL, NULL, NULL, '2019-12-31 20:00:40', 'Active');
INSERT INTO `law_app_users` VALUES (10, 'asd', 'Individual', 'Married', NULL, 'aaa', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 12:58:44', 'Active');
INSERT INTO `law_app_users` VALUES (11, 'fsdfsdf', 'Individual', 'Married', NULL, 'afsdsdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 12:59:48', 'Active');
INSERT INTO `law_app_users` VALUES (12, 'fsdfsdf', 'Individual', 'Married', NULL, 'afsdsdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 12:59:59', 'Active');
INSERT INTO `law_app_users` VALUES (13, 'fsdfsdf', 'Individual', 'Married', NULL, 'afsdsdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:00:38', 'Active');
INSERT INTO `law_app_users` VALUES (14, 'zxcz', 'Individual', 'Married', NULL, 'zczxc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:01:39', 'Active');
INSERT INTO `law_app_users` VALUES (15, 'dasdasd', 'Individual', 'Married', NULL, 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:01:55', 'Active');
INSERT INTO `law_app_users` VALUES (16, 'asd', 'Individual', 'Married', NULL, 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:04:43', 'Active');
INSERT INTO `law_app_users` VALUES (17, 'dasdasd', 'Individual', 'Married', NULL, 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:05:10', 'Active');
INSERT INTO `law_app_users` VALUES (18, 'asd', 'Individual', 'Married', 'asd', 'asdasd', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:06:47', 'Active');
INSERT INTO `law_app_users` VALUES (19, 'asdsad', 'Individual', 'Married', NULL, 'asdasd', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:35:31', 'Active');
INSERT INTO `law_app_users` VALUES (20, 'dasd', 'Individual', 'Married', NULL, 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:41:44', 'Active');
INSERT INTO `law_app_users` VALUES (21, 'asd', 'Individual', 'Married', NULL, 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 13:42:05', 'Active');
INSERT INTO `law_app_users` VALUES (22, 'dasd', 'Individual', 'Married', NULL, 'asdas@ww', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 15:55:15', 'Active');
INSERT INTO `law_app_users` VALUES (23, 'asas', 'Individual', 'Married', NULL, 'asas@asas', NULL, NULL, NULL, NULL, 'asas', '2019-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:06:59', 'Active');
INSERT INTO `law_app_users` VALUES (24, 'dfsdf', 'Individual', 'Married', NULL, 'sdf@sdfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:16:51', 'Active');
INSERT INTO `law_app_users` VALUES (25, 'fsdf', 'Individual', 'Married', NULL, 'sdff@sdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:17:22', 'Active');
INSERT INTO `law_app_users` VALUES (26, 'sdasdas', 'Individual', 'Married', NULL, 'asdas@asda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:18:15', 'Active');
INSERT INTO `law_app_users` VALUES (27, 'sdasdas', 'Individual', 'Married', NULL, 'asdas@asda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:18:16', 'Active');
INSERT INTO `law_app_users` VALUES (28, 'sdasdasd', 'Individual', 'Married', NULL, 'dsf@Adsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-27 16:19:07', 'Active');
INSERT INTO `law_app_users` VALUES (29, 'sdfsdfsdfsd', 'Company', 'Married', NULL, 'asd@sfdsf', 'fsdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:18:02', 'Active');
INSERT INTO `law_app_users` VALUES (30, 'dasd', 'Individual', 'Married', NULL, 'asd@asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:18:59', 'Active');
INSERT INTO `law_app_users` VALUES (31, 'sdf', 'Individual', 'Married', 'sdfdsf', 'asd@dfsf.sdf', NULL, NULL, 'ssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:30:56', 'Active');

-- ----------------------------
-- Table structure for law_app_users_legal_representative
-- ----------------------------
DROP TABLE IF EXISTS `law_app_users_legal_representative`;
CREATE TABLE `law_app_users_legal_representative`  (
  `law_app_users_legal_representative_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_app_users_id` int(10) NULL DEFAULT NULL COMMENT 'only connected for the buyer/seller information',
  `citizen_card_number` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `legal_representative_attachemnt_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_app_users_legal_representative_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_app_users_legal_representative
-- ----------------------------
INSERT INTO `law_app_users_legal_representative` VALUES (10, 9, '759768567856', 'client_files/9/legal_representative_1.jpeg', NULL, NULL, NULL, '2019-12-30 16:48:44', 'Active');
INSERT INTO `law_app_users_legal_representative` VALUES (14, 9, '234234 234 234 234', 'client_files/9/Jj1xVPlRjXbMZcdUGCLUi19e7JJSVukDvvM2PDp6.pdf', NULL, NULL, NULL, '2019-12-30 18:04:42', 'Active');

-- ----------------------------
-- Table structure for law_app_users_transfer
-- ----------------------------
DROP TABLE IF EXISTS `law_app_users_transfer`;
CREATE TABLE `law_app_users_transfer`  (
  `law_app_users_transfer_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_app_users_id` int(10) NOT NULL,
  `transfers_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_app_users_transfer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_app_users_transfer
-- ----------------------------
INSERT INTO `law_app_users_transfer` VALUES (17, 9, 'qweqwe', NULL, NULL, NULL, '2019-12-30 13:39:14', 'Active');

-- ----------------------------
-- Table structure for law_banks
-- ----------------------------
DROP TABLE IF EXISTS `law_banks`;
CREATE TABLE `law_banks`  (
  `law_banks_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_banks_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_banks_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_banks
-- ----------------------------
INSERT INTO `law_banks` VALUES (2, 'Janata Bank', 'Half Govt. Bank', 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:24:34', 'Active');
INSERT INTO `law_banks` VALUES (3, 'Brac Bank Limited', 'Non Govt. Bank', 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:25:01', 'Active');

-- ----------------------------
-- Table structure for law_contract
-- ----------------------------
DROP TABLE IF EXISTS `law_contract`;
CREATE TABLE `law_contract`  (
  `law_contract_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `buyer_id` int(10) NULL DEFAULT NULL,
  `reservation_agreement_date` date NULL DEFAULT NULL,
  `reservation_agreement_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deal_buying_value` decimal(15, 2) NULL DEFAULT NULL,
  `deal_initial_payment` decimal(15, 2) NULL DEFAULT NULL,
  `deal_conc_limit_date` date NULL DEFAULT NULL,
  `deal_notes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `promise_contact_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `annexed_document_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deed_date` date NULL DEFAULT NULL,
  `law_notaries_id` int(10) NULL DEFAULT NULL,
  `deed_payment_method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `law_banks_id` int(10) NULL DEFAULT NULL,
  `bank_mutual_value` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_stamp_tax` decimal(10, 3) NULL DEFAULT NULL COMMENT 'calculated as 6% of mutual value',
  `bank_agency` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_responsible_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_responsible_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_contract_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for law_contract_initial_payment
-- ----------------------------
DROP TABLE IF EXISTS `law_contract_initial_payment`;
CREATE TABLE `law_contract_initial_payment`  (
  `law_contract_initial_payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_contract_id` int(10) NULL DEFAULT NULL,
  `law_contract_initial_payment_method` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_contract_initial_payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for law_contract_property
-- ----------------------------
DROP TABLE IF EXISTS `law_contract_property`;
CREATE TABLE `law_contract_property`  (
  `law_contract_property_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_contract_id` int(10) NOT NULL,
  `price` decimal(15, 2) NULL DEFAULT NULL,
  `water_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `electricity_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gas_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tv_internet_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_contract_property_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for law_lawyers
-- ----------------------------
DROP TABLE IF EXISTS `law_lawyers`;
CREATE TABLE `law_lawyers`  (
  `law_lawyers_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_lawyers_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contacts` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_lawyers_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_lawyers
-- ----------------------------
INSERT INTO `law_lawyers` VALUES (1, 'Lwies Smith', '01888999000', 'Bangladesh', '9111', 'Jessore', 'Experienced Lawyer', 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:19:02', 'Active');
INSERT INTO `law_lawyers` VALUES (2, 'John Doe', '01777888999', 'Bangladesh', '9901', 'Khulna', 'nothing to describe', 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:16:10', 'Active');

-- ----------------------------
-- Table structure for law_notaries
-- ----------------------------
DROP TABLE IF EXISTS `law_notaries`;
CREATE TABLE `law_notaries`  (
  `law_notaries_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_notaries_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contacts` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_notaries_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_notaries
-- ----------------------------
INSERT INTO `law_notaries` VALUES (1, 'Ass. John Doe', '01222333444', 'Bangladesh', '8888', 'Bagerhat', 'Reliable', 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:22:55', 'Active');

-- ----------------------------
-- Table structure for law_properties
-- ----------------------------
DROP TABLE IF EXISTS `law_properties`;
CREATE TABLE `law_properties`  (
  `law_properties_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_property_type_id` int(2) NULL DEFAULT NULL,
  `law_properties_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `property_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `land_reg_certificate_conservatory` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_reg_certificate_building_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `land_reg_certificate_county` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `land_reg_certificate_house_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_reg_certificate_provisory_acq_request` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_reg_certificate_provisory_acq_mortage` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `land_reg_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toponymic_certificate_city_hall` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `toponymic_certificate_issue_Date` date NULL DEFAULT NULL,
  `toponymic_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_municipal_tax` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `google_map_lat` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `google_map_long` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fiscal_reg_certificate_finance_service` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fiscal_reg_certificate_matricial_article` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fiscal_reg_certificate_village_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fiscal_reg_certificate_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fiscal_reg_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_hall_license_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_hall_issue_date` date NULL DEFAULT NULL,
  `city_hall_emission_date` date NULL DEFAULT NULL,
  `city_hall_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `energy_certificate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `energy_certificate_technic_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `energy_certificate_technic_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `energy_certificate_issue_date` date NULL DEFAULT NULL,
  `energy_certificate_expiry_date` date NULL DEFAULT NULL,
  `energy_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `technical_certificate_city_hall` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `technical_certificate_issue_date` date NULL DEFAULT NULL,
  `technical_certificate_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `infrastructures_certificate` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `constitutive_act_issue_date` date NULL DEFAULT NULL,
  `constitutive_act_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_properties_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_properties
-- ----------------------------
INSERT INTO `law_properties` VALUES (1, 1, 'sssssssssss', 'sssssssssss ssssssssssssssssssssssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:08:17', 'Active');
INSERT INTO `law_properties` VALUES (2, 2, 'sssssssssssss ssssssssss', 's             ssssssssssssssssssssssssssssssss ssssssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:09:55', 'Active');
INSERT INTO `law_properties` VALUES (3, 1, '5', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:13:26', 'Active');
INSERT INTO `law_properties` VALUES (4, 1, 'aa', 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:14:35', 'Active');
INSERT INTO `law_properties` VALUES (5, 2, 'adas fas', 'dfasdgfads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31 13:33:05', 'Active');
INSERT INTO `law_properties` VALUES (6, 2, 'asd', 'asdas aaa ll', 'ss', 's', 'sad as', 'd asda', 'as da', 'sd asd', NULL, 'rewr', '2019-12-19', NULL, 'sss', 'ss', 'ss', 'aaa', 'aaa', 'aaa', 'sss', 'property_files/6/fiscalregistrycertificate.jpeg', 'sss', '2019-12-25', '2019-12-04', NULL, 'asdas', 'dasdas', 'dasdas', '2019-12-05', '2019-12-20', 'property_files/6/energyregistrycertificate.pdf', 'aaaaaaaaaaaa', '2019-12-19', 'property_files/6/technicalcertificate.jpeg', 'opop', '2019-12-13', 'property_files/6/constitutiveact.pdf', NULL, NULL, NULL, '2019-12-31 19:22:35', 'Active');

-- ----------------------------
-- Table structure for law_properties_burden_of_property
-- ----------------------------
DROP TABLE IF EXISTS `law_properties_burden_of_property`;
CREATE TABLE `law_properties_burden_of_property`  (
  `law_properties_burden_of_property_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_properties_id` int(10) NULL DEFAULT NULL,
  `law_properties_burden_bank` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number_n_date_of_presentation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `burden_attachment_path` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_properties_burden_of_property_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_properties_burden_of_property
-- ----------------------------
INSERT INTO `law_properties_burden_of_property` VALUES (2, 6, 'asd', '345', 'property_files/6/Ec5sGn8i9OWHVyGZvYrh5hQCxzhO9bYZAx9caent.jpeg', NULL, NULL, NULL, '2019-12-31 18:06:34', 'Active');

-- ----------------------------
-- Table structure for law_properties_usage_license
-- ----------------------------
DROP TABLE IF EXISTS `law_properties_usage_license`;
CREATE TABLE `law_properties_usage_license`  (
  `law_properties_usage_license_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_properties_id` int(10) NULL DEFAULT NULL,
  `usage_license` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_properties_usage_license_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_properties_usage_license
-- ----------------------------
INSERT INTO `law_properties_usage_license` VALUES (4, 6, 'sdfsdf', NULL, NULL, NULL, NULL, '2019-12-31 17:31:22', 'Active');
INSERT INTO `law_properties_usage_license` VALUES (5, 6, 'sdfsdfsdf', NULL, NULL, NULL, NULL, '2019-12-31 17:31:22', 'Active');

-- ----------------------------
-- Table structure for law_property_type
-- ----------------------------
DROP TABLE IF EXISTS `law_property_type`;
CREATE TABLE `law_property_type`  (
  `law_property_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `law_property_type_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_property_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_property_type
-- ----------------------------
INSERT INTO `law_property_type` VALUES (1, 'Urban', 'Urban', 1, '2019-12-19 00:00:00', NULL, '2019-12-19 19:45:25', 'Active');
INSERT INTO `law_property_type` VALUES (2, 'Rustic', 'Rustic', 1, '2019-12-19 00:00:00', NULL, '2019-12-19 19:45:13', 'Active');
INSERT INTO `law_property_type` VALUES (3, 'Mixed', 'Mixed', 1, '2019-12-19 00:00:00', NULL, '2019-12-19 19:45:04', 'Active');

-- ----------------------------
-- Table structure for law_real_states
-- ----------------------------
DROP TABLE IF EXISTS `law_real_states`;
CREATE TABLE `law_real_states`  (
  `law_real_states_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_real_states_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seller_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tax_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ami_license` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`law_real_states_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of law_real_states
-- ----------------------------
INSERT INTO `law_real_states` VALUES (1, 'Rupayan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-12-23 00:00:00', NULL, '2019-12-23 17:31:13', NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE INDEX `sessions_id_unique`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('58zihzxsqtJHPUIjKaWH8RwAzjDsdJqWnRZoBQDM', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWszMk83RDVCUWhNenR2UE9Nem5jQzl5TUNMaW5LVGpEcDgyeFNURSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvYXBzaXNlbmdpbmUvaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1576647888);
INSERT INTO `sessions` VALUES ('mHZRKQzSbozDU4x0lBZiJFytFAn5O5v7pHUPUFkz', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ1lmak9IalZRYWEySWJtbDh6NmtRRzBXRk91czRNYlBXTGo2blZMbSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovL2xvY2FsaG9zdC9hcHNpc2VuZ2luZS9ob21lIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvYXBzaXNlbmdpbmUvc3ZnLzQwMy5zdmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1576647962);
INSERT INTO `sessions` VALUES ('tBBfaMcOQgcO5EFWl0QqGXFAoKSHdIZzHEJVPtqF', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTozMjp7czo2OiJfdG9rZW4iO3M6NDA6IkJ3TlR3WFM1QTRYdWU1OFZuMDRoUk5pWXVhb05oRkptekZTTWFGQVAiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vbG9jYWxob3N0L2Fwc2lzZW5naW5lL2dyaWQvYnJhbmNoIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjc6IlVTRVJfSUQiO2k6MTtzOjk6IlVTRVJfTkFNRSI7czoxMjoiU2FpZnVsIElzbGFtIjtzOjEwOiJVU0VSX0VNQUlMIjtzOjE3OiJuaXJqaGFyQGdtYWlsLmNvbSI7czoyNToiVVNFUl9QQVNTV09SRF9FWFBJUkVfREFZUyI7TjtzOjExOiJVU0VSX01PQklMRSI7czoxNDoiKzg4MDE4NTUxNDkxOTYiO3M6MTE6IlVTRVJfTEVWRUxTIjthOjU6e2k6MDtpOjE7aToxO2k6MjtpOjI7aTozO2k6MztpOjQ7aTo0O2k6NTt9czoxMjoiVVNFUl9NT0RVTEVTIjthOjE6e2k6MDtpOjE7fXM6OToiREJfV0lER0VUIjthOjE6e2k6MTthOjI6e3M6NzoiREVGQVVMVCI7czoxMToiMSwyLDMsNCw1LDYiO3M6NToiVVNFUlMiO3M6MDoiIjt9fXM6NToiTUVOVVMiO3M6NDM6IjE3MywxNzQsMTc1LDE3NiwxNzcsMTkxLDE5MiwxOTMsMTk0LDE5NSwxOTciO3M6MTc6IkRFRkFVTFRfTU9EVUxFX0lEIjtpOjE7czoxNToiTElORV9NQU5BR0VSX0lEIjtpOjE7czoxNDoiREVTSUdOQVRJT05fSUQiO2k6MjtzOjE2OiJERVNJR05BVElPTl9OQU1FIjtzOjE4OiJHZW5lcmFsIEZpdHRlciBNYW4iO3M6MTM6IkRFUEFSVE1FTlRfSUQiO2k6MTtzOjk6IkJSQU5DSF9JRCI7aToxO3M6NzoiVU5JVF9JRCI7aToxO3M6MTA6IlNFQ1RJT05fSUQiO2k6MTtzOjEwOiJVU0VSX0lNQUdFIjtzOjE2OiIvaW1nL3VzZXJzLzEuSlBHIjtzOjE1OiJQQVNTV09SRF9OT1RJRlkiO2k6MDtzOjE1OiJQQVNTV09SRF9FWFBJUlkiO2k6MDtzOjE0OiJTRVNTSU9OX0ZJTFRFUiI7YTowOnt9czoxMToiVVNFUl9BQ0NFU1MiO2E6MDp7fXM6MTI6IkdST1VQX0FDQ0VTUyI7YToxOntzOjEzOiJzeXNfZHJvcGRvd25zIjthOjI6e3M6MjE6InByb2R1Y3RzX2xpc3RfZGV0YWlscyI7YTozOntzOjE2OiJvcGVyYXRpb25hbF90eXBlIjthOjM6e3M6MTA6InBlcm1pc3Npb24iO3M6NToiR29vZHMiO3M6MTM6Im5vX3Blcm1pc3Npb24iO047czoxNjoic3FsX3doZXJlX2NsYXVzZSI7Tjt9czoyNjoicHJvZHVjdHMub3BlcmF0aW9uYWxfZ3JvdXAiO2E6Mzp7czoxMDoicGVybWlzc2lvbiI7czo0OiJPUEVYIjtzOjEzOiJub19wZXJtaXNzaW9uIjtOO3M6MTY6InNxbF93aGVyZV9jbGF1c2UiO047fXM6MzI6InByb2R1Y3RzX2luX3N0b2Nrcy53YXJlaG91c2VzX2lkIjthOjM6e3M6MTA6InBlcm1pc3Npb24iO3M6NToiMSwzLDUiO3M6MTM6Im5vX3Blcm1pc3Npb24iO047czoxNjoic3FsX3doZXJlX2NsYXVzZSI7Tjt9fXM6MTI6InByb2R1Y3RfdW9tcyI7YToxOntzOjE1OiJwcm9kdWN0X3VvbXNfaWQiO2E6Mzp7czoxMDoicGVybWlzc2lvbiI7czoxMjoiMSwyLDMsNCw1LDEwIjtzOjEzOiJub19wZXJtaXNzaW9uIjtOO3M6MTY6InNxbF93aGVyZV9jbGF1c2UiO047fX19fXM6MjI6IlBBU1NXT1JEX0VYUElSWV9BQ1RJT04iO3M6NjoiTm90aWZ5IjtzOjE1OiJTRUxFQ1RFRF9NT0RVTEUiO3M6MToiMSI7czoxMToiTU9EVUxFX0xBTkciO3M6NToiQWRtaW4iO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fXM6NzoiTUVOVV9JRCI7aToxOTc7fQ==', 1576650796);

-- ----------------------------
-- Table structure for sys_approval_modules
-- ----------------------------
DROP TABLE IF EXISTS `sys_approval_modules`;
CREATE TABLE `sys_approval_modules`  (
  `sys_approval_modules_id` int(10) NOT NULL AUTO_INCREMENT,
  `sys_approval_modules_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Approval Module Item box name',
  `color_class` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'bg-teal',
  `approval_url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'action link which is made for the approval process by the module developer',
  `unique_id_logic_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the slug name which is defined in sys_unique_id_logic',
  `custom_query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'variable name __USER_ID__',
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_approval_modules_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_approval_modules
-- ----------------------------
INSERT INTO `sys_approval_modules` VALUES (1, 'Purchase - Requisition Approval', 'bg-blue', 'requisition-approve-list', 'prc_req', NULL, NULL, NULL, NULL, '2019-04-03 13:21:53', 'Active');
INSERT INTO `sys_approval_modules` VALUES (2, 'Purchase - CS Approval', 'bg-cyan', 'purchase-cs-confirm-list', 'req_cs', NULL, NULL, NULL, NULL, '2019-04-03 13:22:07', 'Active');
INSERT INTO `sys_approval_modules` VALUES (3, 'Purchase Order - Approval', 'bg-info', 'po-approval-list', 'prc_ord', NULL, NULL, NULL, NULL, '2019-04-03 13:22:19', 'Active');
INSERT INTO `sys_approval_modules` VALUES (6, 'LC - Requisition', 'bg-pink', 'lc-approval-list', 'prc_lc', '', NULL, '2018-12-13 12:11:12', NULL, '2019-04-03 13:25:21', 'Active');
INSERT INTO `sys_approval_modules` VALUES (7, 'Stock - Requisition Approval', 'bg-green', 'stock-requisition-approval-list', 'stc_req', NULL, NULL, NULL, NULL, '2019-04-03 13:22:39', 'Active');
INSERT INTO `sys_approval_modules` VALUES (8, 'Sales - Order Approval', 'bg-orange', 'sales-order-approval-list', 'sls_ord', '', NULL, '2019-01-14 17:30:36', NULL, '2019-04-03 13:22:49', 'Active');
INSERT INTO `sys_approval_modules` VALUES (9, 'Price - List Approval', 'bg-gray', 'price-approval-list', 'price_list', '', NULL, '2019-01-14 17:30:36', NULL, '2019-04-03 13:23:05', 'Active');
INSERT INTO `sys_approval_modules` VALUES (10, 'Salary - Approval', 'bg-yellow', 'hr-salary-approve-list', 'hr_inc', NULL, NULL, NULL, NULL, '2019-04-03 13:55:49', 'Active');
INSERT INTO `sys_approval_modules` VALUES (11, 'Working - Shift Approval', 'bg-yellow', 'shift-approval', 'hr_shift', 'SELECT count(*) Total FROM `hr_emp_vs_shift_log` WHERE shift_status = 55;', NULL, NULL, NULL, '2019-04-03 13:23:52', 'Active');
INSERT INTO `sys_approval_modules` VALUES (12, 'Transfer - Approval', 'bg-yellow', 'hr-transfer-approve-list', 'hr_tfr', '', NULL, NULL, NULL, '2019-04-03 13:23:54', 'Active');
INSERT INTO `sys_approval_modules` VALUES (14, 'Leave - Approval', 'bg-yellow', 'hr-leave-approve-list', 'hr_leave', '', NULL, NULL, NULL, '2019-04-03 13:23:54', 'Active');
INSERT INTO `sys_approval_modules` VALUES (15, 'PI - Approval', 'bg-info', 'pi-approval-list', 'pi_app', NULL, NULL, NULL, NULL, '2019-04-03 13:23:19', 'Active');
INSERT INTO `sys_approval_modules` VALUES (16, 'Maintenance Request', 'bg-teal', 'fams/maintenance-approval-list', 'req_code', NULL, NULL, NULL, NULL, '2019-05-30 14:22:38', 'Active');

-- ----------------------------
-- Table structure for sys_dashboard_layouts
-- ----------------------------
DROP TABLE IF EXISTS `sys_dashboard_layouts`;
CREATE TABLE `sys_dashboard_layouts`  (
  `user_id` int(10) NOT NULL,
  `module_id` int(3) NULL DEFAULT NULL,
  `dashboard_widget_layout` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dashboard_layouts
-- ----------------------------
INSERT INTO `sys_dashboard_layouts` VALUES (2, 1, '[{\"attr\":\"5\",\"x\":0},{\"attr\":\"1\",\"x\":0.24998799699924984},{\"attr\":\"3\",\"x\":0.4999759939984997},{\"attr\":\"6\",\"x\":0},{\"attr\":\"4\",\"x\":0},{\"attr\":\"2\",\"x\":0.4999759939984997}]');
INSERT INTO `sys_dashboard_layouts` VALUES (3, 1, '');
INSERT INTO `sys_dashboard_layouts` VALUES (25, 1, '');
INSERT INTO `sys_dashboard_layouts` VALUES (26, 1, '[{\"attr\":\"4\",\"x\":0},{\"attr\":\"2\",\"x\":0.5833333333333334},{\"attr\":\"3\",\"x\":0}]');

-- ----------------------------
-- Table structure for sys_dashboard_widget
-- ----------------------------
DROP TABLE IF EXISTS `sys_dashboard_widget`;
CREATE TABLE `sys_dashboard_widget`  (
  `sys_dashboard_widget_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(4) NULL DEFAULT NULL,
  `grid_space` int(11) NULL DEFAULT 4 COMMENT 'BETWEEN 1 & 12',
  `order` int(2) NULL DEFAULT 0,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `additional_subtitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `widget_type` enum('summary','list','piechart','columnchart','custom') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'summary',
  `custom_widget_view_page` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_form_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'custom_form_slug name which will appear in ucer-wise widget pop up form',
  `icon_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` enum('default','primary','success','danger','info','warning') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'primary',
  `bg_color_class` enum('bg-red','bg-primary','bg-blue','bg-gray','bg-white') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'bg-white',
  `select_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `source_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `condition_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `having_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `groupby_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orderby_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `limit_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `column_plot_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `column_3d_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `columnXtitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `columnYtitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pie_series_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Amount',
  `pie_plot_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '{\r\n  allowPointSelect: true,\r\n  innerSize: 100,\r\n  depth: 45,\r\n  dataLabels: {\r\n      enabled: true,\r\n      format: \'{point.name}\'\r\n  }\r\n}',
  `pie_3d_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_dashboard_widget_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dashboard_widget
-- ----------------------------
INSERT INTO `sys_dashboard_widget` VALUES (1, 1, 3, 2, 'Product in Stock List', '', '', 'list', NULL, NULL, 'fa fa-envelope-o fa-5x', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (2, 1, 5, 5, 'Product in Stock 2 pie', NULL, '', 'piechart', NULL, NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adasdasd', NULL, 'Qty', '{allowPointSelect:true,innerSize:100,depth:45,dataLabels:{enabled:true,format:\'{point.name}\'}}', '{enabled: true,alpha: 15,beta: 15,depth: 50,viewDistance: 25}', 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (3, 1, 3, 3, 'Product in Stock 1b', '', '', 'summary', NULL, 'dashboard_widget1', 'fa fa-envelope-o fa-5x', 'primary', 'bg-white', 'SELECT \r\nSUM(products_in_stocks.current_stock_qty) AS current_stock\r\n\r\n\r\n', 'FROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id', 'WHERE products_in_stocks.warehouses_id IS NOT NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (4, 1, 6, 6, 'Product in Stock 3', '', '', 'columnchart', NULL, NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', NULL, NULL, NULL, 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (5, 1, 3, 1, 'Custom widget 1', '', '', 'custom', 'Dashboard.custom_widget', NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL AND products_in_stocks.warehouses_id = 7', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', '', '', '', 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (6, 1, 3, 4, 'Custom widget 2', '', '', 'custom', 'Dashboard.custom_widget', NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL AND products_in_stocks.warehouses_id = 7', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', '', '', '', 'Active');
INSERT INTO `sys_dashboard_widget` VALUES (7, 2, 5, 1, 'Product in Stock for Fixed Asset', '', '', 'columnchart', '', NULL, 'fa fa-list', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', '', '', '', 'Active');

-- ----------------------------
-- Table structure for sys_dashboard_widget_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_dashboard_widget_users`;
CREATE TABLE `sys_dashboard_widget_users`  (
  `sys_dashboard_widget_id` int(11) NOT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `module_id` int(4) NULL DEFAULT NULL,
  `grid_space` int(11) NULL DEFAULT 4 COMMENT 'BETWEEN 1 & 12',
  `order` int(2) NULL DEFAULT 0,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `additional_subtitle` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `widget_type` enum('summary','list','piechart','columnchart','custom') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'summary',
  `custom_widget_view_page` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_form_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` enum('default','primary','success','danger','info','warning') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'primary',
  `bg_color_class` enum('bg-red','bg-primary','bg-blue','bg-gray','bg-white') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'bg-white',
  `select_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `source_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `condition_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `having_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `groupby_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orderby_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `limit_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `column_plot_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `column_3d_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `columnXtitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `columnYtitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pie_series_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Amount',
  `pie_plot_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '{\r\n  allowPointSelect: true,\r\n  innerSize: 100,\r\n  depth: 45,\r\n  dataLabels: {\r\n      enabled: true,\r\n      format: \'{point.name}\'\r\n  }\r\n}',
  `pie_3d_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  `user_settings` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dashboard_widget_users
-- ----------------------------
INSERT INTO `sys_dashboard_widget_users` VALUES (2, 25, 1, 5, 5, 'Product in Stock 2 pie', NULL, '', 'piechart', NULL, NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adasdasd', NULL, 'Qty', '{allowPointSelect:true,innerSize:100,depth:45,dataLabels:{enabled:true,format:\'{point.name}\'}}', '{enabled: true,alpha: 15,beta: 15,depth: 50,viewDistance: 25}', 'Active', NULL);
INSERT INTO `sys_dashboard_widget_users` VALUES (1, 25, 1, 3, 2, 'Product in Stock List', '', '', 'list', NULL, NULL, 'fa fa-envelope-o fa-5x', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 3\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', 'Active', NULL);
INSERT INTO `sys_dashboard_widget_users` VALUES (6, 25, 1, 3, 4, 'Custom widget 2', '', '', 'custom', 'Dashboard.custom_widget', NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL AND products_in_stocks.warehouses_id = 7', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', '', '', '', 'Active', NULL);
INSERT INTO `sys_dashboard_widget_users` VALUES (4, 25, 1, 6, 6, 'Product in Stock 3', '', '', 'columnchart', NULL, NULL, 'fa fa-envelope-o', 'primary', 'bg-white', 'SELECT\r\nproducts.products_name as name,\r\nCOALESCE(products_in_stocks.current_stock_qty, 0) AS y\r\nFROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id\r\nWHERE products_in_stocks.warehouses_id IS NOT NULL\r\nORDER BY products_in_stocks.current_stock_qty DESC\r\nLIMIT 5\r\n', NULL, NULL, NULL, NULL, NULL, NULL, '{depth: 20}', '{enabled: true,alpha: 0,beta: 0,depth: 20,viewDistance: 25}', 'Prooduct Name', 'Stock Amount', NULL, NULL, NULL, 'Active', NULL);
INSERT INTO `sys_dashboard_widget_users` VALUES (3, 25, 1, 3, 3, 'Product in Stock 1b', '', '', 'summary', NULL, 'dashboard_widget1', 'fa fa-envelope-o fa-5x', 'primary', 'bg-white', 'SELECT \r\nSUM(products_in_stocks.current_stock_qty) AS current_stock\r\n\r\n\r\n', 'FROM\r\nproducts\r\nLEFT JOIN products_in_stocks ON products.products_id = products_in_stocks.products_id\r\nINNER JOIN warehouses ON products_in_stocks.warehouses_id = warehouses.warehouses_id', 'WHERE products_in_stocks.warehouses_id IS NOT NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL);

-- ----------------------------
-- Table structure for sys_delegation_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_delegation_conf`;
CREATE TABLE `sys_delegation_conf`  (
  `delegation_for` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'for which module or purpose. could be for Purchase or Requistion or sales or anything define by the stackholder. and always select one field in select query.',
  `ref_event_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the value of session variable. relation with db table sys_unique_id_logic.session_variable',
  `delegation_version` int(2) NOT NULL DEFAULT 1,
  `manage_by` enum('Hierarchy','Sorting','Limit') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Hierarchy',
  `user_id` int(11) NULL DEFAULT NULL,
  `max_limit` int(10) NULL DEFAULT NULL COMMENT 'the amount of the limit. ',
  `limit_type` enum('Maximum','Above') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Maximum',
  `sort_number` int(2) NULL DEFAULT NULL,
  `same_sort` tinyint(1) NULL DEFAULT 0 COMMENT 'use for when configuration is sorting and same sort\r\n\r\n0=not same sort\r\n1=same sort',
  `step_number` int(2) NULL DEFAULT NULL,
  `must_approve` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) NOT NULL,
  `created` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `approve_priority` enum('Majority','Minority','All') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'All' COMMENT 'Majority = if maximum people approve; Minority = at least one person approve, All = everyone must approve',
  `step_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Optional if user like to define any name.',
  `decline_logic` enum('Previous Approval','Initiator') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Initiator',
  `termination_trigger` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session_variable` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Must be a sql to find the termination trigger value. and its dynamic variable always @delegation_person_id which will be replace by current delegation person id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_delegation_conf
-- ----------------------------
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('prc_lc', '1,1', 1, 'Sorting', 4, NULL, 'Maximum', 1, 0, 2, 0, 1, '2018-11-15 11:45:42', 'All', 'Two', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_lc', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 3, 0, 1, '2018-11-15 11:45:42', 'All', 'Three', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_lc', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '1,1', 1, 'Sorting', 4, NULL, 'Maximum', 1, 0, 2, 0, 1, '2018-11-15 11:45:42', 'All', 'Two', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 3, 0, 1, '2018-11-15 11:45:42', 'All', 'Three', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_ord', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_ord', '1,1', 1, 'Sorting', 4, NULL, 'Maximum', 1, 0, 2, 0, 1, '2018-11-15 11:45:42', 'All', 'Two', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_ord', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 3, 0, 1, '2018-11-15 11:45:42', 'All', 'Three', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('req_cs', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('stc_req', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2019-01-13 12:31:01', 'All', 'One', 'Initiator', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('stc_req', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 2, 0, 1, '2019-01-13 12:31:01', 'All', 'Two', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('stc_req', '1,1', 1, 'Sorting', 1, NULL, 'Maximum', 1, 0, 3, 0, 1, '2019-01-13 12:31:01', 'All', 'Three', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('sls_ord', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('sls_ord', '1,1', 1, 'Sorting', 4, NULL, 'Maximum', 1, 0, 2, 0, 1, '2018-11-15 11:45:42', 'All', 'Two', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('sls_ord', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 3, 0, 1, '2018-11-15 11:45:42', 'All', 'Three', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('price_list', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Previous Approval', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('price_list', '1,1', 1, 'Sorting', 4, NULL, 'Maximum', 1, 0, 2, 0, 1, '2018-11-15 11:45:42', 'All', 'Two', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('price_list', '1,1', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 3, 0, 1, '2018-11-15 11:45:42', 'All', 'Three', 'Previous Approval', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '5', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '3', 1, 'Sorting', 2, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '2', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('prc_req', '1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('hr_inc', '1,1', 1, 'Sorting', 26, NULL, 'Maximum', 1, 0, 1, 0, 1, '2019-02-26 15:57:51', 'All', 'One', 'Initiator', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('hr_shift', '1,1', 1, 'Sorting', 3, NULL, 'Maximum', 1, 0, 1, 0, 1, '2018-11-15 11:45:42', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('hr_tfr', '1,1', 1, 'Sorting', 26, NULL, 'Maximum', 1, 0, 1, 0, 1, '2019-02-26 15:57:51', 'All', 'One', 'Initiator', '', '');
INSERT INTO `sys_delegation_conf` VALUES ('hr_leave', '1', 1, 'Sorting', 22, NULL, 'Maximum', 1, 0, 1, 0, 1, '2019-03-07 11:57:39', 'All', 'One', 'Initiator', NULL, NULL);
INSERT INTO `sys_delegation_conf` VALUES ('pi_app', '1', 1, 'Sorting', 26, NULL, 'Maximum', 1, 0, 1, 0, 1, '2019-04-02 15:17:41', 'All', 'One', 'Initiator', NULL, NULL);

-- ----------------------------
-- Table structure for sys_delegation_historys
-- ----------------------------
DROP TABLE IF EXISTS `sys_delegation_historys`;
CREATE TABLE `sys_delegation_historys`  (
  `ref_event` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The unique code of the reference. could be purchase order id or purchase order code',
  `step_no` int(2) NULL DEFAULT NULL,
  `act_status` enum('Approved','Declined','Canceled') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delegation_person` int(10) NOT NULL COMMENT 'the person id who either Approved or Declined',
  `delegation_reliever_id` int(10) NOT NULL COMMENT 'if no releiver same user id stored',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `act_comments` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `additional_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Extra input value by auth person',
  `delegation_decline_count` int(10) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_delegation_historys
-- ----------------------------
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100001', 1, 'Approved', 3, 3, '2019-03-19 11:03:21', 'Approved by numera', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\",\"3\":\"1.00\",\"4\":\"10.00\",\"5\":\"10.00\",\"6\":\"12.00\",\"7\":\"15.00\",\"8\":\"17.00\",\"9\":\"500.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\",\"3\":\"1\",\"4\":\"10\",\"5\":\"10\",\"6\":\"12\",\"7\":\"15\",\"8\":\"17\",\"9\":\"500\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\",\"3\":\"13\",\"4\":\"18\",\"5\":\"21\",\"6\":\"22\",\"7\":\"27\",\"8\":\"28\",\"9\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\",\"3\":\"100.00\",\"4\":\"165.00\",\"5\":\"100.00\",\"6\":\"2000.00\",\"7\":\"70.00\",\"8\":\"95.00\",\"9\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100005', 1, 'Approved', 3, 3, '2019-03-19 11:07:12', 'Approved by numera', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3437\":{\"product_id\":1,\"vendor_id\":\"3437\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null},\"3437\":{\"product_id\":2,\"vendor_id\":\"3437\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}},\"5\":{\"3430\":{\"product_id\":5,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null},\"3437\":{\"product_id\":5,\"vendor_id\":\"3437\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}},\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null},\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100003', 1, 'Approved', 3, 3, '2019-03-19 11:54:01', 'approve 2', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\",\"3\":\"1.00\",\"4\":\"10.00\",\"5\":\"10.00\",\"6\":\"12.00\",\"7\":\"15.00\",\"8\":\"17.00\",\"9\":\"500.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\",\"3\":\"1\",\"4\":\"10\",\"5\":\"10\",\"6\":\"12\",\"7\":\"15\",\"8\":\"17\",\"9\":\"500\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\",\"3\":\"13\",\"4\":\"18\",\"5\":\"21\",\"6\":\"22\",\"7\":\"27\",\"8\":\"28\",\"9\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\",\"3\":\"100.00\",\"4\":\"165.00\",\"5\":\"100.00\",\"6\":\"2000.00\",\"7\":\"70.00\",\"8\":\"95.00\",\"9\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100013', 1, 'Approved', 3, 3, '2019-03-19 11:57:52', 'test by azad', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3437\":{\"product_id\":1,\"vendor_id\":\"3437\",\"approved_po_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"30\",\"receive_qty\":0,\"remaining_qty\":\"30\",\"remarks\":null},\"3437\":{\"product_id\":2,\"vendor_id\":\"3437\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100004', 1, 'Approved', 3, 3, '2019-03-19 12:22:40', 'Test', '{\"request_qty\":{\"0\":\"100.00\",\"1\":\"100.00\"},\"approve_qty\":{\"0\":\"80\",\"1\":\"70\"},\"products_id\":{\"0\":\"27\",\"1\":\"28\"},\"unit_price\":{\"0\":\"70.00\",\"1\":\"95.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100005', 1, 'Approved', 3, 3, '2019-03-19 12:26:53', 'Test', '{\"request_qty\":{\"0\":\"18.00\",\"1\":\"25.00\"},\"approve_qty\":{\"0\":\"15\",\"1\":\"20\"},\"products_id\":{\"0\":\"13\",\"1\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100029', 1, 'Approved', 3, 3, '2019-03-19 12:32:54', 'Test', '{\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"21\":{\"3437\":{\"product_id\":21,\"vendor_id\":\"3437\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100031', 1, 'Declined', 3, 3, '2019-03-19 12:36:47', 'Test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100031', 1, 'Approved', 3, 3, '2019-03-19 12:59:54', 'Test', '{\"27\":{\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"approved_po_qty\":\"70\",\"receive_qty\":0,\"remaining_qty\":\"70\",\"remarks\":null}},\"28\":{\"3435\":{\"product_id\":28,\"vendor_id\":\"3435\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 1);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100006', 1, 'Approved', 3, 3, '2019-03-19 15:43:58', 'adf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100038', 1, 'Approved', 3, 3, '2019-03-19 15:45:19', 'dasf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}},\"5\":{\"3430\":{\"product_id\":5,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100007', 1, 'Approved', 3, 3, '2019-03-19 15:49:43', 'dfghj', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"5000.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"5000\"},\"products_id\":{\"0\":\"21\",\"1\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100047', 1, 'Approved', 3, 3, '2019-03-19 15:51:18', 'item_total_price', '{\"21\":{\"3430\":{\"product_id\":21,\"vendor_id\":\"3430\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}},\"29\":{\"3438\":{\"product_id\":29,\"vendor_id\":\"3438\",\"approved_po_qty\":\"5000\",\"receive_qty\":0,\"remaining_qty\":\"5000\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100008', 1, 'Approved', 3, 3, '2019-03-19 16:12:39', 'mmm', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\",\"3\":\"1.00\",\"4\":\"10.00\",\"5\":\"10.00\",\"6\":\"12.00\",\"7\":\"15.00\",\"8\":\"17.00\",\"9\":\"500.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\",\"3\":\"1\",\"4\":\"10\",\"5\":\"10\",\"6\":\"12\",\"7\":\"15\",\"8\":\"17\",\"9\":\"500\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\",\"3\":\"13\",\"4\":\"18\",\"5\":\"21\",\"6\":\"22\",\"7\":\"27\",\"8\":\"28\",\"9\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\",\"3\":\"100.00\",\"4\":\"165.00\",\"5\":\"100.00\",\"6\":\"2000.00\",\"7\":\"70.00\",\"8\":\"95.00\",\"9\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100059', 1, 'Approved', 3, 3, '2019-03-19 16:25:21', 'sadf', '{\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100005', 1, 'Approved', 3, 3, '2019-03-19 16:31:07', 'ghf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"10.00\",\"receive_qty\":0,\"remaining_qty\":\"10.00\",\"remarks\":null},\"3437\":{\"product_id\":1,\"vendor_id\":\"3437\",\"approved_po_qty\":\"10.00\",\"receive_qty\":0,\"remaining_qty\":\"10.00\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50.00\",\"receive_qty\":0,\"remaining_qty\":\"50.00\",\"remarks\":null},\"3437\":{\"product_id\":2,\"vendor_id\":\"3437\",\"approved_po_qty\":\"50.00\",\"receive_qty\":0,\"remaining_qty\":\"50.00\",\"remarks\":null}},\"5\":{\"3430\":{\"product_id\":5,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50.00\",\"receive_qty\":0,\"remaining_qty\":\"50.00\",\"remarks\":null},\"3437\":{\"product_id\":5,\"vendor_id\":\"3437\",\"approved_po_qty\":\"50.00\",\"receive_qty\":0,\"remaining_qty\":\"50.00\",\"remarks\":null}},\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1.00\",\"receive_qty\":0,\"remaining_qty\":\"1.00\",\"remarks\":null},\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"approved_po_qty\":\"1.00\",\"receive_qty\":0,\"remaining_qty\":\"1.00\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100009', 1, 'Approved', 3, 3, '2019-03-19 16:55:31', 'asdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100010', 1, 'Approved', 3, 3, '2019-03-19 18:12:04', 'asdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100081', 1, 'Approved', 3, 3, '2019-03-19 19:16:10', 'asdf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"9\",\"receive_qty\":0,\"remaining_qty\":\"9\",\"remarks\":null},\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100011', 1, 'Approved', 3, 3, '2019-03-20 11:54:10', 'gfdh', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\",\"2\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\",\"2\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"5\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100104', 1, 'Approved', 3, 3, '2019-03-20 11:55:23', 'asdf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"2\":{\"3430\":{\"product_id\":2,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}},\"5\":{\"3430\":{\"product_id\":5,\"vendor_id\":\"3430\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100018', 1, 'Declined', 3, 3, '2019-03-21 17:18:10', 'can\'t approve 20.', '{\"request_qty\":{\"0\":\"20.00\"},\"approve_qty\":{\"0\":\"15\"},\"products_id\":{\"0\":\"41\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100019', 1, 'Approved', 3, 3, '2019-03-21 17:18:33', 'Approve 24 w/w', '{\"request_qty\":{\"0\":\"24.00\"},\"approve_qty\":{\"0\":\"24\"},\"products_id\":{\"0\":\"42\"},\"unit_price\":{\"0\":\"200.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100020', 1, 'Approved', 3, 3, '2019-03-21 17:18:47', 'Approve 30 ppm', '{\"request_qty\":{\"0\":\"30.00\"},\"approve_qty\":{\"0\":\"30\"},\"products_id\":{\"0\":\"43\"},\"unit_price\":{\"0\":\"150.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100021', 1, 'Approved', 3, 3, '2019-03-21 17:18:59', 'Approve 50 ppm', '{\"request_qty\":{\"0\":\"50.00\"},\"approve_qty\":{\"0\":\"50\"},\"products_id\":{\"0\":\"44\"},\"unit_price\":{\"0\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100022', 1, 'Approved', 3, 3, '2019-03-21 17:19:18', 'approve 24 ppm', '{\"request_qty\":{\"0\":\"24.00\"},\"approve_qty\":{\"0\":\"24\"},\"products_id\":{\"0\":\"45\"},\"unit_price\":{\"0\":\"120.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100023', 1, 'Declined', 3, 3, '2019-03-21 17:19:40', 'Not approved 24 %', '{\"request_qty\":{\"0\":\"24.00\"},\"approve_qty\":{\"0\":\"24\"},\"products_id\":{\"0\":\"46\"},\"unit_price\":{\"0\":\"120.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100018', 1, 'Approved', 3, 3, '2019-03-21 17:42:26', 'Approve', '{\"request_qty\":{\"0\":\"20.00\"},\"approve_qty\":{\"0\":\"15\"},\"products_id\":{\"0\":\"41\"},\"unit_price\":{\"0\":\"100.00\"}}', 1);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100023', 1, 'Approved', 3, 3, '2019-03-21 17:43:15', 'approve 20%', '{\"request_qty\":{\"0\":\"23.00\"},\"approve_qty\":{\"0\":\"20\"},\"products_id\":{\"0\":\"46\"},\"unit_price\":{\"0\":\"120.00\"}}', 1);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100052', 1, 'Declined', 3, 3, '2019-03-21 18:24:27', 'fsdf', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100052', 1, 'Declined', 3, 3, '2019-03-21 18:25:12', 'sdf', '{}', 1);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100028', 1, 'Approved', 3, 3, '2019-03-24 10:32:25', 'asdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100029', 1, 'Approved', 3, 3, '2019-03-24 10:43:35', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100030', 1, 'Approved', 3, 3, '2019-03-24 10:43:35', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100031', 1, 'Approved', 3, 3, '2019-03-24 11:00:47', 'sdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100338', 1, 'Approved', 3, 3, '2019-03-24 11:01:53', 'Select Rosario for NaOH', '{\"41\":{\"3439\":{\"product_id\":41,\"vendor_id\":\"3439\",\"approved_po_qty\":\"14\",\"receive_qty\":0,\"remaining_qty\":\"14\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100339', 1, 'Approved', 3, 3, '2019-03-24 11:04:27', 'Select Rosario for Na2CO3', '{\"42\":{\"3439\":{\"product_id\":42,\"vendor_id\":\"3439\",\"approved_po_qty\":\"24\",\"receive_qty\":0,\"remaining_qty\":\"24\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100340', 1, 'Approved', 3, 3, '2019-03-24 11:23:28', 'SIR enterprise selected for Fe', '{\"43\":{\"3438\":{\"product_id\":43,\"vendor_id\":\"3438\",\"approved_po_qty\":\"30\",\"receive_qty\":0,\"remaining_qty\":\"30\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100341', 1, 'Approved', 3, 3, '2019-03-24 11:45:33', 'Selected SIR for Ni', '{\"44\":{\"3438\":{\"product_id\":44,\"vendor_id\":\"3438\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100345', 1, 'Approved', 3, 3, '2019-03-24 11:46:35', 'Selected NumNaz for NaCl', '{\"46\":{\"3435\":{\"product_id\":46,\"vendor_id\":\"3435\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100351', 1, 'Approved', 3, 3, '2019-03-24 11:46:58', 'Selected Rosario for NaClO3', '{\"45\":{\"3439\":{\"product_id\":45,\"vendor_id\":\"3439\",\"approved_po_qty\":\"24\",\"receive_qty\":0,\"remaining_qty\":\"24\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100032', 1, 'Approved', 3, 3, '2019-03-24 11:58:36', 'tryt', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"8\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100033', 1, 'Approved', 3, 3, '2019-03-24 14:58:53', 'reduced amount of each items', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"24.00\",\"2\":\"30.00\",\"3\":\"50.00\",\"4\":\"24.00\",\"5\":\"24.00\"},\"approve_qty\":{\"0\":\"14\",\"1\":\"20\",\"2\":\"25\",\"3\":\"40\",\"4\":\"20\",\"5\":\"20\"},\"products_id\":{\"0\":\"41\",\"1\":\"42\",\"2\":\"43\",\"3\":\"44\",\"4\":\"45\",\"5\":\"46\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"200.00\",\"2\":\"150.00\",\"3\":\"70.00\",\"4\":\"120.00\",\"5\":\"120.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100381', 1, 'Approved', 3, 3, '2019-03-24 15:13:24', 'selected vendors are finalized to supply products', '{\"41\":{\"3439\":{\"product_id\":41,\"vendor_id\":\"3439\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3438\":{\"product_id\":41,\"vendor_id\":\"3438\",\"approved_po_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"42\":{\"3439\":{\"product_id\":42,\"vendor_id\":\"3439\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}},\"43\":{\"3437\":{\"product_id\":43,\"vendor_id\":\"3437\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null},\"3439\":{\"product_id\":43,\"vendor_id\":\"3439\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"44\":{\"3439\":{\"product_id\":44,\"vendor_id\":\"3439\",\"approved_po_qty\":\"40\",\"receive_qty\":0,\"remaining_qty\":\"40\",\"remarks\":null}},\"45\":{\"3438\":{\"product_id\":45,\"vendor_id\":\"3438\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}},\"46\":{\"3434\":{\"product_id\":46,\"vendor_id\":\"3434\",\"approved_po_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 1, 'Approved', 3, 3, '2019-03-24 15:24:33', 'approved by Numera', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100025', 1, 'Approved', 3, 3, '2019-03-24 15:25:15', 'approved by Nn', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100026', 1, 'Approved', 3, 3, '2019-03-24 15:25:29', 'approved by NN', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100027', 1, 'Approved', 3, 3, '2019-03-24 15:25:42', 'approved by NN', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100028', 1, 'Approved', 3, 3, '2019-03-24 15:25:55', 'approved by NN', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 2, 'Declined', 4, 4, '2019-03-24 15:28:25', 'Declined by Mamun', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100025', 2, 'Approved', 4, 4, '2019-03-24 15:28:31', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100026', 2, 'Approved', 4, 4, '2019-03-24 15:28:31', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100027', 2, 'Approved', 4, 4, '2019-03-24 15:28:31', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100028', 2, 'Approved', 4, 4, '2019-03-24 15:28:31', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 1, 'Declined', 3, 3, '2019-03-24 15:35:05', 'decline by NN', '{}', 1);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100025', 3, 'Approved', 2, 2, '2019-03-24 15:40:41', 'Approved by Ahsan Admin', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100026', 3, 'Approved', 2, 2, '2019-03-24 15:41:07', 'Approved by Ahsan', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100027', 3, 'Approved', 2, 2, '2019-03-24 15:41:20', 'Approved by Ahsan', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100028', 3, 'Approved', 2, 2, '2019-03-24 15:41:31', 'Approved by Ahsan', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 1, 'Approved', 3, 3, '2019-03-24 15:46:01', 'approved by Numera', '{}', 2);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 2, 'Approved', 4, 4, '2019-03-24 15:46:59', 'Approved by Mamun', '{}', 2);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100024', 3, 'Approved', 2, 2, '2019-03-24 15:47:28', 'Approved by Ahsan', '{}', 2);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100030', 1, 'Approved', 3, 3, '2019-03-24 16:19:35', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100030', 2, 'Approved', 4, 4, '2019-03-24 16:20:07', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100030', 3, 'Approved', 2, 2, '2019-03-24 16:20:39', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100032', 1, 'Approved', 3, 3, '2019-03-24 17:17:11', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100032', 2, 'Approved', 4, 4, '2019-03-24 17:18:07', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100021', 1, 'Approved', 3, 3, '2019-03-24 17:19:16', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100001', 1, 'Approved', 3, 3, '2019-03-24 17:26:48', 'approved by NN', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100001', 2, 'Approved', 4, 4, '2019-03-24 17:38:38', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100001', 3, 'Approved', 2, 2, '2019-03-24 17:39:22', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100005', 1, 'Approved', 3, 3, '2019-03-24 19:40:09', 'approved', '{\"request_qty\":{\"0\":\"15.00\",\"1\":\"25.00\"},\"approve_qty\":{\"0\":\"15\",\"1\":\"25\"},\"products_id\":{\"0\":\"43\",\"1\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100005', 2, 'Approved', 2, 2, '2019-03-24 19:42:52', 'Approved', '{\"request_qty\":{\"0\":\"15.00\",\"1\":\"25.00\"},\"approve_qty\":{\"0\":\"15\",\"1\":\"25\"},\"products_id\":{\"0\":\"43\",\"1\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100005', 3, 'Approved', 1, 1, '2019-03-24 19:43:44', 'approved', '{\"request_qty\":{\"0\":\"15.00\",\"1\":\"25.00\"},\"approve_qty\":{\"0\":\"15\",\"1\":\"25\"},\"products_id\":{\"0\":\"43\",\"1\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100003', 1, 'Approved', 3, 3, '2019-03-24 19:55:19', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100005', 1, 'Approved', 3, 3, '2019-03-24 20:00:45', 'app', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100005', 2, 'Approved', 4, 4, '2019-03-24 20:01:26', 'app', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100003', 2, 'Approved', 4, 4, '2019-03-24 20:01:34', 'app', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100005', 3, 'Approved', 2, 2, '2019-03-24 20:02:24', 'ap', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100003', 3, 'Approved', 2, 2, '2019-03-24 20:02:35', 'app', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100039', 1, 'Approved', 3, 3, '2019-03-25 10:29:23', 'Approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100039', 2, 'Approved', 4, 4, '2019-03-25 10:30:08', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100039', 3, 'Approved', 2, 2, '2019-03-25 10:30:28', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100032', 3, 'Approved', 2, 2, '2019-03-25 10:30:28', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100035', 1, 'Approved', 3, 3, '2019-03-25 10:31:24', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100035', 2, 'Approved', 4, 4, '2019-03-25 10:31:46', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100035', 3, 'Approved', 2, 2, '2019-03-25 10:32:11', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100008', 1, 'Approved', 3, 3, '2019-03-25 11:35:39', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100009', 1, 'Approved', 3, 3, '2019-03-25 11:35:39', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100008', 2, 'Approved', 2, 2, '2019-03-25 11:35:58', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100009', 2, 'Approved', 2, 2, '2019-03-25 11:35:58', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100008', 3, 'Approved', 1, 1, '2019-03-25 11:36:11', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100009', 3, 'Approved', 1, 1, '2019-03-25 11:36:11', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100011', 1, 'Approved', 3, 3, '2019-03-25 11:39:15', 'nn', '{\"request_qty\":{\"0\":\"12.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"12\",\"1\":\"15\"},\"products_id\":{\"0\":\"22\",\"1\":\"27\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100011', 2, 'Approved', 2, 2, '2019-03-25 11:39:36', 'ahn', '{\"request_qty\":{\"0\":\"12.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"12\",\"1\":\"15\"},\"products_id\":{\"0\":\"22\",\"1\":\"27\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100011', 3, 'Approved', 1, 1, '2019-03-25 11:39:56', 'sfl', '{\"request_qty\":{\"0\":\"12.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"12\",\"1\":\"15\"},\"products_id\":{\"0\":\"22\",\"1\":\"27\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100007', 1, 'Approved', 3, 3, '2019-03-25 12:03:42', 'asdf', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100007', 2, 'Approved', 4, 4, '2019-03-25 12:04:22', 'asdf', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100007', 3, 'Approved', 2, 2, '2019-03-25 12:04:45', 'asdf', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100034', 1, 'Approved', 3, 3, '2019-03-25 13:18:17', 'Approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"9\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100035', 1, 'Approved', 3, 3, '2019-03-25 13:20:42', 'Approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100398', 1, 'Approved', 3, 3, '2019-03-25 13:38:13', 'Select Rosario', '{\"1\":{\"3439\":{\"product_id\":1,\"vendor_id\":\"3439\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100043', 1, 'Approved', 3, 3, '2019-03-25 15:34:24', 'Approved by nn', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\",\"3\":\"10.00\",\"4\":\"12.00\"},\"approve_qty\":{\"0\":\"8\",\"1\":\"1\",\"2\":\"10\",\"3\":\"10\",\"4\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\",\"3\":\"21\",\"4\":\"22\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\",\"3\":\"100.00\",\"4\":\"2000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100407', 1, 'Approved', 3, 3, '2019-03-25 15:49:51', 'dvxdkgjf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null}},\"13\":{\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100043', 1, 'Approved', 3, 3, '2019-03-25 16:03:19', 'asdfgh', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100043', 2, 'Approved', 4, 4, '2019-03-25 16:19:33', 'sdfg', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100043', 3, 'Approved', 2, 2, '2019-03-25 16:20:16', 'asdfghjk', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100013', 1, 'Approved', 3, 3, '2019-03-27 16:48:53', 'Stock Requisitions', '{\"request_qty\":{\"0\":\"100.00\"},\"approve_qty\":{\"0\":\"100\"},\"products_id\":{\"0\":\"40\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100047', 1, 'Approved', 3, 3, '2019-03-31 12:30:02', 'NN', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"18\",\"1\":\"21\"},\"unit_price\":{\"0\":\"165.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100015', 1, 'Approved', 3, 3, '2019-03-31 12:32:27', 'approved by Numera Nazneen', '{\"request_qty\":{\"0\":\"210.00\",\"1\":\"217.00\",\"2\":\"210.00\"},\"approve_qty\":{\"0\":\"210\",\"1\":\"217\",\"2\":\"210\"},\"products_id\":{\"0\":\"1\",\"1\":\"28\",\"2\":\"41\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"95.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100014', 1, 'Approved', 3, 3, '2019-03-31 12:36:17', 'All qty approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"201.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"201\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"22\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"2000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100045', 1, 'Approved', 3, 3, '2019-03-31 12:36:20', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100044', 1, 'Approved', 3, 3, '2019-03-31 12:36:20', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100045', 2, 'Approved', 4, 4, '2019-03-31 12:37:05', 'MM', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100044', 2, 'Approved', 4, 4, '2019-03-31 12:37:16', 'M', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100045', 3, 'Approved', 2, 2, '2019-03-31 12:38:08', 'AH', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100044', 3, 'Approved', 2, 2, '2019-03-31 12:38:18', 'ah', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100046', 1, 'Approved', 3, 3, '2019-03-31 14:50:54', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100045', 1, 'Approved', 3, 3, '2019-03-31 14:50:54', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100425', 1, 'Approved', 3, 3, '2019-03-31 17:38:54', 'asdf', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"8\",\"receive_qty\":0,\"remaining_qty\":\"8\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100055', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100042', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100040', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100039', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100038', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100027', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100026', 1, 'Approved', 3, 3, '2019-04-02 12:28:08', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100025', 1, 'Approved', 3, 3, '2019-04-02 12:28:09', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100002', 1, 'Approved', 3, 3, '2019-04-02 12:28:09', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100032', 1, 'Approved', 26, 26, '2019-04-02 16:08:05', 'PI Bulk Approved', '', NULL);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100031', 1, 'Approved', 26, 26, '2019-04-02 16:08:05', 'PI Bulk Approved', '', NULL);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100046', 1, 'Approved', 3, 3, '2019-04-02 16:12:20', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100019', 1, 'Approved', 3, 3, '2019-04-02 16:12:20', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100046', 2, 'Approved', 4, 4, '2019-04-02 16:12:42', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100019', 2, 'Approved', 4, 4, '2019-04-02 16:12:42', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100046', 3, 'Approved', 2, 2, '2019-04-02 16:13:32', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100019', 3, 'Approved', 2, 2, '2019-04-02 16:13:32', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100033', 1, 'Approved', 26, 26, '2019-04-02 18:06:10', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100034', 1, 'Approved', 26, 26, '2019-04-02 18:06:10', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100033', 1, 'Approved', 26, 26, '2019-04-02 18:08:21', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100034', 1, 'Approved', 26, 26, '2019-04-02 18:08:21', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100056', 1, 'Approved', 3, 3, '2019-04-02 18:16:18', 'NN', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100084', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100083', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100081', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100080', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100079', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100078', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100077', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100076', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100074', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100073', 1, 'Approved', 3, 3, '2019-04-03 15:46:06', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100091', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100072', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100071', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100070', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100069', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100068', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100067', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100066', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100065', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100063', 1, 'Approved', 3, 3, '2019-04-03 15:47:02', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100062', 1, 'Approved', 3, 3, '2019-04-03 15:47:13', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100061', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100060', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100058', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100057', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100054', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100053', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100052', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100051', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100050', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100049', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100048', 1, 'Approved', 3, 3, '2019-04-03 15:47:14', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100092', 1, 'Approved', 2, 2, '2019-04-03 15:54:37', 'Test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"49\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"10000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100094', 1, 'Approved', 3, 3, '2019-04-03 16:13:55', 'asdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\",\"3\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\",\"3\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100096', 1, 'Approved', 3, 3, '2019-04-03 16:17:39', 'af', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100100', 1, 'Approved', 2, 2, '2019-04-03 18:15:01', 'Test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"49\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"10000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100101', 1, 'Approved', 3, 3, '2019-04-03 18:26:57', 'Approved', '{\"request_qty\":{\"0\":\"25.00\"},\"approve_qty\":{\"0\":\"25\"},\"products_id\":{\"0\":\"44\"},\"unit_price\":{\"0\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100099', 1, 'Approved', 3, 3, '2019-04-03 18:34:10', 'approved', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100097', 1, 'Approved', 3, 3, '2019-04-03 18:35:25', 'dfs', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100102', 1, 'Approved', 3, 3, '2019-04-03 18:39:47', 'fghf', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100647', 1, 'Approved', 3, 3, '2019-04-03 18:49:20', 'approved by nirjhar', '{\"44\":{\"3439\":{\"product_id\":44,\"vendor_id\":\"3439\",\"approved_po_qty\":\"25\",\"receive_qty\":0,\"remaining_qty\":\"25\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100103', 1, 'Approved', 3, 3, '2019-04-03 18:50:08', 'qweqweqwee', '{\"request_qty\":{\"0\":\"25.00\"},\"approve_qty\":{\"0\":\"25\"},\"products_id\":{\"0\":\"44\"},\"unit_price\":{\"0\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100015', 1, 'Approved', 3, 3, '2019-04-03 18:50:32', 'WAFESGDFHGKHJK', '{\"request_qty\":{\"0\":\"1.00\"},\"approve_qty\":{\"0\":\"1\"},\"products_id\":{\"0\":\"13\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100107', 1, 'Approved', 3, 3, '2019-04-03 18:59:42', 'QWE', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100106', 1, 'Approved', 3, 3, '2019-04-03 18:59:59', 'QWEQWE', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100105', 1, 'Approved', 3, 3, '2019-04-03 19:00:27', 'ASD', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100104', 1, 'Approved', 3, 3, '2019-04-03 19:01:02', 'GHJKL', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100111', 1, 'Approved', 3, 3, '2019-04-03 19:11:23', 'sdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\",\"3\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\",\"3\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100114', 1, 'Approved', 3, 3, '2019-04-03 19:13:54', 'EAV', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100110', 1, 'Approved', 3, 3, '2019-04-03 19:14:05', 'AVF', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"18\"},\"unit_price\":{\"0\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100115', 1, 'Approved', 3, 3, '2019-04-03 19:15:02', 'jhg', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\",\"3\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\",\"3\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100116', 1, 'Approved', 3, 3, '2019-04-03 19:16:50', 'APPROVED', '{\"request_qty\":{\"0\":\"25.00\"},\"approve_qty\":{\"0\":\"25\"},\"products_id\":{\"0\":\"44\"},\"unit_price\":{\"0\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100121', 1, 'Approved', 3, 3, '2019-04-03 19:46:54', 'asdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100703', 1, 'Approved', 3, 3, '2019-04-03 19:48:27', 'asdf', '{\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100047', 1, 'Approved', 3, 3, '2019-04-03 19:50:02', 'asdf', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100047', 2, 'Approved', 4, 4, '2019-04-03 19:50:47', 'a', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100122', 1, 'Approved', 3, 3, '2019-04-03 19:54:06', 'a', '{\"request_qty\":{\"0\":\"25.00\"},\"approve_qty\":{\"0\":\"25\"},\"products_id\":{\"0\":\"44\"},\"unit_price\":{\"0\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100706', 1, 'Approved', 3, 3, '2019-04-03 19:54:49', 'a', '{\"44\":{\"3439\":{\"product_id\":44,\"vendor_id\":\"3439\",\"approved_po_qty\":\"25\",\"receive_qty\":0,\"remaining_qty\":\"25\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100048', 1, 'Approved', 3, 3, '2019-04-03 19:55:45', 'aa', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100048', 2, 'Approved', 4, 4, '2019-04-03 19:56:04', 'a', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100048', 3, 'Approved', 2, 2, '2019-04-03 19:56:20', 'aa', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100038', 1, 'Approved', 26, 26, '2019-04-03 19:59:42', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100037', 1, 'Approved', 26, 26, '2019-04-03 19:59:42', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100016', 1, 'Approved', 3, 3, '2019-04-03 20:03:02', 'aa', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100016', 2, 'Approved', 4, 4, '2019-04-03 20:03:56', 'aa', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100016', 3, 'Approved', 2, 2, '2019-04-03 20:04:18', 'asdfghjkl', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100017', 1, 'Approved', 3, 3, '2019-04-03 20:11:20', 'a', '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100017', 2, 'Approved', 2, 2, '2019-04-03 20:11:48', 'aa', '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100017', 3, 'Approved', 1, 1, '2019-04-03 20:13:38', 'aa', '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100021', 1, 'Approved', 3, 3, '2019-04-03 20:40:06', 'aa', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100021', 2, 'Approved', 2, 2, '2019-04-03 20:40:34', 'app', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100021', 3, 'Approved', 1, 1, '2019-04-03 20:40:49', 'aa', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"44\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-04-100011', 1, 'Approved', 3, 3, '2019-04-04 17:03:16', 'This one approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100126', 1, 'Approved', 3, 3, '2019-04-06 11:33:38', 'sdfsd', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"18\"},\"unit_price\":{\"0\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100127', 1, 'Approved', 3, 3, '2019-04-06 11:38:29', 'sdgsdg', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100128', 1, 'Approved', 2, 2, '2019-04-07 12:55:04', 'Test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"49\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"10000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100739', 1, 'Approved', 3, 3, '2019-04-07 13:14:13', 'Test', '{\"1\":{\"3433\":{\"product_id\":1,\"vendor_id\":\"3433\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"49\":{\"3430\":{\"product_id\":49,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100052', 2, 'Approved', 4, 4, '2019-04-07 13:26:14', 'v', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100052', 3, 'Approved', 2, 2, '2019-04-07 13:30:55', 'b', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100131', 1, 'Approved', 3, 3, '2019-04-10 11:25:46', 'nn', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\",\"3\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"165.00\",\"3\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100132', 1, 'Approved', 3, 3, '2019-04-10 16:30:38', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100125', 1, 'Approved', 3, 3, '2019-04-10 16:30:38', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100117', 1, 'Approved', 3, 3, '2019-04-10 16:30:38', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100108', 1, 'Approved', 3, 3, '2019-04-10 16:30:38', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-10 18:21:03', 'nbnn', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"5.0\",\"receive_qty\":0,\"remaining_qty\":\"5.0\",\"remarks\":null},\"3434\":{\"product_id\":1,\"vendor_id\":\"3434\",\"approved_po_qty\":\"10.0\",\"receive_qty\":0,\"remaining_qty\":\"10.0\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":\"25.5\",\"receive_qty\":0,\"remaining_qty\":\"25.5\",\"remarks\":null}},\"21\":{\"3436\":{\"product_id\":21,\"vendor_id\":\"3436\",\"approved_po_qty\":\"10.00\",\"receive_qty\":0,\"remaining_qty\":\"10.00\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-10 18:38:54', 'nn', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":1.32085,\"receive_qty\":0,\"remaining_qty\":\"5.0\",\"remarks\":null}},\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1.00\",\"receive_qty\":0,\"remaining_qty\":\"1.00\",\"remarks\":\"0\"}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":6.736386,\"receive_qty\":0,\"remaining_qty\":\"25.5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-10 18:50:46', 'ff', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":1.32085,\"receive_qty\":0,\"remaining_qty\":\"5.0\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":6.736386,\"receive_qty\":0,\"remaining_qty\":\"25.5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-10 18:54:44', 'dd', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"18.9\",\"receive_qty\":0,\"remaining_qty\":\"5.0\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":\"96.5\",\"receive_qty\":0,\"remaining_qty\":\"25.5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-11 10:52:16', 'nn', '{\"13\":{\"3430\":{\"product_id\":13,\"vendor_id\":\"3430\",\"approved_po_qty\":\"1.00\",\"receive_qty\":0,\"remaining_qty\":\"1.00\",\"remarks\":\"0\"}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":6.736386,\"receive_qty\":0,\"remaining_qty\":6.736386,\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100029', 1, 'Approved', 3, 3, '2019-04-16 15:13:27', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100028', 1, 'Approved', 3, 3, '2019-04-16 15:13:27', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100016', 1, 'Approved', 3, 3, '2019-04-16 15:13:27', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100002', 1, 'Approved', 3, 3, '2019-04-16 15:13:27', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100001', 1, 'Approved', 3, 3, '2019-04-16 15:13:27', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100029', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100028', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100016', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100015', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100013', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100002', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100001', 2, 'Approved', 2, 2, '2019-04-16 15:15:09', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100029', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100028', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100016', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100015', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100013', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100002', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100001', 3, 'Approved', 1, 1, '2019-04-16 15:16:04', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100030', 1, 'Approved', 3, 3, '2019-04-16 16:25:56', 'test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100030', 2, 'Approved', 2, 2, '2019-04-16 16:26:18', 'test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100030', 3, 'Approved', 1, 1, '2019-04-16 16:26:43', 'test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"18\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100031', 1, 'Approved', 3, 3, '2019-04-16 17:50:29', 'nn', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"11\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100031', 2, 'Approved', 2, 2, '2019-04-16 17:51:04', 'ah', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"11\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100031', 3, 'Approved', 1, 1, '2019-04-16 17:51:43', 'ss', '{\"request_qty\":{\"0\":\"3.00\"},\"approve_qty\":{\"0\":\"3\"},\"products_id\":{\"0\":\"11\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100032', 1, 'Approved', 3, 3, '2019-04-16 18:07:51', 'this is demo comment', '{\"request_qty\":{\"0\":\"100.00\",\"1\":\"100.00\"},\"approve_qty\":{\"0\":\"100\",\"1\":\"100\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100032', 2, 'Approved', 2, 2, '2019-04-16 18:08:17', 'test', '{\"request_qty\":{\"0\":\"100.00\",\"1\":\"100.00\"},\"approve_qty\":{\"0\":\"100\",\"1\":\"100\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100032', 3, 'Approved', 1, 1, '2019-04-16 18:08:41', 'test', '{\"request_qty\":{\"0\":\"100.00\",\"1\":\"100.00\"},\"approve_qty\":{\"0\":\"100\",\"1\":\"100\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_shift', '34', 1, 'Approved', 3, 3, '2019-04-17 18:30:22', 'bulk approve', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_shift', '36', 1, 'Approved', 3, 3, '2019-04-17 18:38:30', 'bulk approve', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_shift', '35', 1, 'Approved', 3, 3, '2019-04-17 18:38:41', 'bulk approve', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_shift', '37', 1, 'Approved', 3, 3, '2019-04-17 18:39:15', 'bulk approve', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '9', 1, 'Approved', 22, 22, '2019-04-18 11:55:22', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '6', 1, 'Approved', 22, 22, '2019-04-18 11:55:22', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '16', 1, 'Approved', 22, 22, '2019-04-21 16:37:21', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '18', 1, 'Declined', 22, 22, '2019-04-21 16:41:50', 'Leave Decline', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100755', 1, 'Approved', 3, 3, '2019-04-24 12:23:05', '99', '{\"21\":{\"3436\":{\"product_id\":21,\"vendor_id\":\"3436\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":\"0\"}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100144', 1, 'Approved', 3, 3, '2019-04-24 12:44:41', 'Approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100145', 1, 'Approved', 3, 3, '2019-04-24 13:30:08', 'asdfghjkl', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"1.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"1\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100701', 1, 'Approved', 3, 3, '2019-04-24 14:01:45', 'hgfgh', '{\"1\":{\"3430\":{\"product_id\":1,\"vendor_id\":\"3430\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '2', 1, 'Approved', 22, 22, '2019-04-25 11:39:25', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '4', 1, 'Approved', 22, 22, '2019-04-25 11:39:25', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '5', 1, 'Approved', 22, 22, '2019-04-25 11:39:25', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '17', 1, 'Approved', 22, 22, '2019-04-25 13:36:50', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '22', 1, 'Approved', 22, 22, '2019-04-25 13:37:15', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_shift', '33', 1, 'Approved', 3, 3, '2019-04-27 16:48:28', 'bulk approve', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '24', 1, 'Approved', 22, 22, '2019-04-27 17:35:50', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100040', 1, 'Approved', 26, 26, '2019-05-21 11:01:25', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100039', 1, 'Approved', 26, 26, '2019-05-21 11:01:25', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_inc', '48', 1, 'Approved', 26, 26, '2019-05-26 12:39:37', 'Salary Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_inc', '107', 1, 'Approved', 26, 26, '2019-05-26 12:39:37', 'Salary Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_inc', '76', 1, 'Approved', 26, 26, '2019-05-26 12:39:37', 'Salary Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_inc', '105', 1, 'Approved', 26, 26, '2019-05-26 12:39:37', 'Salary Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_inc', '106', 1, 'Approved', 26, 26, '2019-05-26 12:39:38', 'Salary Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '32', 1, 'Declined', 22, 22, '2019-05-26 16:39:26', 'Leave Decline', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '50', 1, 'Approved', 22, 22, '2019-05-26 16:40:32', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '51', 1, 'Declined', 22, 22, '2019-05-26 16:41:10', 'Leave Decline', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_tfr', '143', 1, 'Approved', 26, 26, '2019-05-28 11:46:38', 'Transfer Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '74', 1, 'Approved', 22, 22, '2019-05-30 15:09:15', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100075', 1, 'Approved', 1, 1, '2019-05-30 15:36:09', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100075', 1, 'Approved', 1, 1, '2019-05-30 15:40:43', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100066', 1, 'Approved', 1, 1, '2019-05-30 15:54:19', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100078', 1, 'Approved', 3, 3, '2019-06-11 15:06:43', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100078', 1, 'Approved', 3, 3, '2019-06-11 15:09:07', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100078', 2, 'Approved', 5, 5, '2019-06-11 15:26:59', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100078', 2, 'Approved', 3, 3, '2019-06-11 15:29:53', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 1, 'Approved', 3, 3, '2019-06-11 15:31:49', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 2, 'Approved', 1, 1, '2019-06-11 15:32:33', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 1, 'Approved', 3, 3, '2019-06-11 15:45:26', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 2, 'Approved', 1, 1, '2019-06-11 15:45:51', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 1, 'Approved', 3, 3, '2019-06-11 15:46:22', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100079', 2, 'Approved', 1, 1, '2019-06-11 15:47:51', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100080', 1, 'Approved', 3, 3, '2019-06-12 11:35:27', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100080', 2, 'Approved', 26, 26, '2019-06-12 11:40:05', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100080', 1, 'Approved', 3, 3, '2019-06-12 14:24:44', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100082', 1, 'Approved', 3, 3, '2019-06-12 15:25:15', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 1, 'Approved', 3, 3, '2019-06-12 15:25:16', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100084', 1, 'Approved', 3, 3, '2019-06-12 15:25:16', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 2, 'Approved', 26, 26, '2019-06-12 15:28:57', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100084', 2, 'Approved', 26, 26, '2019-06-12 15:28:57', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100080', 2, 'Approved', 26, 26, '2019-06-12 15:29:19', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100082', 2, 'Approved', 26, 26, '2019-06-12 15:29:19', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100078', 2, 'Approved', 3, 3, '2019-06-12 15:33:00', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 1, 'Approved', 3, 3, '2019-06-12 15:33:01', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 2, 'Approved', 26, 26, '2019-06-12 15:33:46', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 1, 'Approved', 3, 3, '2019-06-12 15:38:38', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100081', 1, 'Approved', 3, 3, '2019-06-12 16:07:42', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100083', 2, 'Declined', 26, 26, '2019-06-12 16:19:12', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100085', 1, 'Approved', 3, 3, '2019-06-12 18:17:27', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100086', 1, 'Approved', 3, 3, '2019-06-12 18:31:28', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100085', 2, 'Declined', 26, 26, '2019-06-12 18:50:36', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100086', 2, 'Approved', 26, 26, '2019-06-12 19:19:15', 'ffff', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100176', 1, 'Approved', 3, 3, '2019-06-13 16:51:12', 'aweqw', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100679', 1, 'Declined', 3, 3, '2019-06-15 15:57:31', 'sdfsdf', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100091', 1, 'Approved', 3, 3, '2019-06-18 13:58:48', 'vvv', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100091', 2, 'Approved', 26, 26, '2019-06-18 14:01:03', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100048', 1, 'Approved', 1, 1, '2019-06-18 14:17:47', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100066', 1, 'Approved', 1, 1, '2019-06-18 14:17:47', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100087', 1, 'Approved', 1, 1, '2019-06-18 14:17:47', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100088', 1, 'Approved', 1, 1, '2019-06-18 14:17:47', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100092', 1, 'Approved', 3, 3, '2019-06-18 16:56:26', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100092', 2, 'Approved', 26, 26, '2019-06-18 17:00:18', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100151', 1, 'Approved', 3, 3, '2019-06-25 19:29:05', 'nn', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"21\",\"2\":\"22\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"2000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100180', 1, 'Approved', 3, 3, '2019-06-25 19:35:31', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100152', 1, 'Approved', 3, 3, '2019-06-25 19:35:32', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101043', 1, 'Approved', 3, 3, '2019-06-26 15:32:54', 'nn', '{\"41\":{\"1\":{\"product_id\":41,\"vendor_id\":\"1\",\"approved_po_qty\":\"15\",\"receive_qty\":0,\"remaining_qty\":\"15\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100060', 1, 'Approved', 3, 3, '2019-06-26 15:35:20', 'nn', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100060', 2, 'Approved', 4, 4, '2019-06-26 15:36:05', 'mmn', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100060', 3, 'Approved', 2, 2, '2019-06-26 15:37:09', 'ahn v', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100042', 1, 'Approved', 26, 26, '2019-06-26 15:39:17', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100035', 1, 'Approved', 26, 26, '2019-06-26 15:39:18', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101060', 1, 'Approved', 3, 3, '2019-06-27 16:38:13', 'nn', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"approved_po_qty\":\"500\",\"receive_qty\":0,\"remaining_qty\":\"500\",\"remarks\":\"###<p>rmks<\\/p>\"},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"approved_po_qty\":\"110\",\"receive_qty\":0,\"remaining_qty\":\"110\",\"remarks\":null}},\"22\":{\"1\":{\"product_id\":22,\"vendor_id\":\"1\",\"approved_po_qty\":\"96\",\"receive_qty\":0,\"remaining_qty\":\"96\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100642', 1, 'Declined', 3, 3, '2019-06-29 15:37:59', 'nn d', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100356', 1, 'Declined', 3, 3, '2019-06-29 15:46:35', 'dd', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100356', 0, 'Declined', 0, 0, '2019-06-29 16:18:57', 'dd', '', 1);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100350', 1, 'Declined', 3, 3, '2019-06-29 16:33:21', 'dd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100065', 1, 'Declined', 3, 3, '2019-06-29 16:42:44', 'ddd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100344', 1, 'Declined', 3, 3, '2019-06-29 16:45:05', 'dd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19100505', 1, 'Declined', 3, 3, '2019-06-29 16:47:48', 'dd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '80', 1, 'Approved', 22, 22, '2019-06-30 15:54:31', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100040', 1, 'Approved', 3, 3, '2019-07-01 11:02:35', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100041', 1, 'Approved', 3, 3, '2019-07-01 11:02:36', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100041', 2, 'Approved', 2, 2, '2019-07-01 11:03:13', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100040', 2, 'Approved', 2, 2, '2019-07-01 11:03:14', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100041', 3, 'Approved', 1, 1, '2019-07-01 11:04:01', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100040', 3, 'Approved', 1, 1, '2019-07-01 11:04:02', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('hr_leave', '81', 1, 'Approved', 22, 22, '2019-07-03 13:28:49', 'Leave Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100186', 1, 'Approved', 3, 3, '2019-07-08 18:10:34', '40 approved', '{\"request_qty\":{\"0\":\"50.00\"},\"approve_qty\":{\"0\":\"40\"},\"products_id\":{\"0\":\"55\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100167', 1, 'Approved', 3, 3, '2019-07-11 12:12:32', 'approved', '{\"request_qty\":{\"0\":\"6.00\",\"1\":\"5.00\",\"2\":\"2.00\",\"3\":\"500.00\"},\"approve_qty\":{\"0\":\"6\",\"1\":\"5\",\"2\":\"2\",\"3\":\"500\"},\"products_id\":{\"0\":\"13\",\"1\":\"28\",\"2\":\"41\",\"3\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"95.00\",\"2\":\"100.00\",\"3\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101151', 1, 'Approved', 3, 3, '2019-07-11 12:39:43', 'n', '{\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"approved_po_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100097', 1, 'Declined', 3, 3, '2019-07-11 16:07:57', 'ddd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100098', 1, 'Approved', 3, 3, '2019-07-11 16:14:52', NULL, '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100099', 1, 'Approved', 3, 3, '2019-07-11 16:15:45', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100100', 1, 'Approved', 3, 3, '2019-07-11 16:15:46', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100098', 2, 'Approved', 26, 26, '2019-07-11 16:19:55', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100099', 2, 'Approved', 26, 26, '2019-07-11 16:19:55', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100100', 2, 'Approved', 26, 26, '2019-07-11 16:19:56', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100101', 1, 'Approved', 3, 3, '2019-07-13 10:40:14', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100101', 2, 'Approved', 26, 26, '2019-07-13 10:40:39', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100102', 1, 'Approved', 1, 1, '2019-07-13 10:45:58', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100102', 2, 'Approved', 3, 3, '2019-07-13 10:47:06', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100101', 1, 'Approved', 3, 3, '2019-07-13 10:49:59', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100104', 1, 'Approved', 1, 1, '2019-07-13 10:56:14', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100105', 1, 'Declined', 3, 3, '2019-07-13 11:37:44', 'ddd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100187', 1, 'Approved', 3, 3, '2019-07-13 15:10:03', 'dd', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"250.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"250\"},\"products_id\":{\"0\":\"18\",\"1\":\"27\"},\"unit_price\":{\"0\":\"165.00\",\"1\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100110', 1, 'Approved', 3, 3, '2019-07-13 16:40:48', 'Description', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100110', 2, 'Approved', 26, 26, '2019-07-13 16:41:40', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100099', 1, 'Approved', 3, 3, '2019-07-13 19:16:58', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_code', 'REQ-100100', 1, 'Approved', 3, 3, '2019-07-13 19:17:15', '', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101156', 1, 'Approved', 3, 3, '2019-07-14 15:15:07', 'nn', '{\"18\":{\"3434\":{\"product_id\":18,\"vendor_id\":\"3434\",\"approved_po_qty\":\"15\",\"receive_qty\":0,\"remaining_qty\":\"15\",\"remarks\":null}},\"27\":{\"3440\":{\"product_id\":27,\"vendor_id\":\"3440\",\"approved_po_qty\":\"200\",\"receive_qty\":0,\"remaining_qty\":\"200\",\"remarks\":null},\"3437\":{\"product_id\":27,\"vendor_id\":\"3437\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101156', 1, 'Approved', 3, 3, '2019-07-14 16:26:47', 'dd', '{\"18\":{\"3434\":{\"product_id\":18,\"vendor_id\":\"3434\",\"approved_po_qty\":\"15\",\"receive_qty\":0,\"remaining_qty\":\"15\",\"remarks\":\"remarks ww###<p>approval remarks for&nbsp;<\\/p><h4 class=\\\"modal-title vendors-name\\\" style=\\\"font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(41, 56, 70); text-align: center;\\\">Puran Dhaka Chemicals Limited<\\/h4>\"},\"3433\":{\"product_id\":18,\"vendor_id\":\"3433\",\"approved_po_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":\"0###<p>approval remarks by rashed&nbsp;<\\/p><h4 class=\\\"modal-title vendors-name\\\" style=\\\"font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(41, 56, 70); text-align: center;\\\">adfasd<\\/h4>\"}},\"27\":{\"3440\":{\"product_id\":27,\"vendor_id\":\"3440\",\"approved_po_qty\":\"250\",\"receive_qty\":0,\"remaining_qty\":\"250\",\"remarks\":\"###<p>no rmks<\\/p>\"}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101207', 1, 'Approved', 3, 3, '2019-07-16 17:41:33', 'xcf', '{\"1\":{\"3435\":{\"product_id\":1,\"vendor_id\":\"3435\",\"approved_po_qty\":null,\"receive_qty\":0,\"remaining_qty\":null,\"remarks\":null},\"3439\":{\"product_id\":1,\"vendor_id\":\"3439\",\"approved_po_qty\":null,\"receive_qty\":0,\"remaining_qty\":null,\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101209', 1, 'Approved', 3, 3, '2019-07-16 17:58:00', 'dfsdf', '{\"13\":{\"3436\":{\"product_id\":13,\"vendor_id\":\"3436\",\"approved_po_qty\":\"16\",\"receive_qty\":0,\"remaining_qty\":\"16\",\"remarks\":\"###<p>this is demo text<\\/p>\"}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101213', 1, 'Approved', 3, 3, '2019-07-16 19:22:49', 'sdfg', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"approved_po_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null},\"1\":{\"product_id\":18,\"vendor_id\":\"1\",\"approved_po_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100061', 1, 'Approved', 3, 3, '2019-07-21 10:24:20', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100058', 1, 'Approved', 3, 3, '2019-07-21 10:24:41', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100042', 1, 'Approved', 3, 3, '2019-07-21 10:25:50', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100038', 1, 'Approved', 3, 3, '2019-07-21 10:26:03', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100009', 1, 'Approved', 3, 3, '2019-07-21 10:28:25', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100009', 2, 'Approved', 4, 4, '2019-07-21 10:29:21', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100109', 1, 'Approved', 2, 2, '2019-07-21 10:33:16', 'approved', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100009', 3, 'Approved', 2, 2, '2019-07-21 10:34:10', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100213', 1, 'Approved', 3, 3, '2019-07-21 12:01:29', 'test', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100214', 1, 'Approved', 3, 3, '2019-07-21 13:20:30', 'approved', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101275', 1, 'Approved', 3, 3, '2019-07-21 14:32:39', 'approved', '{\"1\":{\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3435\":{\"product_id\":1,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null},\"3446\":{\"product_id\":18,\"vendor_id\":\"3446\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null},\"3436\":{\"product_id\":18,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100215', 1, 'Approved', 3, 3, '2019-07-21 14:51:51', 'SDFSDF', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100216', 1, 'Approved', 3, 3, '2019-07-21 14:53:56', 'TEST', '{\"request_qty\":{\"0\":\"1.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"1\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"18\",\"2\":\"1\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101284', 1, 'Approved', 3, 3, '2019-07-21 14:58:01', 'TEST', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"1\":{\"product_id\":18,\"vendor_id\":\"1\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101285', 1, 'Approved', 3, 3, '2019-07-21 15:29:05', 'approved', '{\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3436\":{\"product_id\":13,\"vendor_id\":\"3436\",\"cs_approve_qty\":null,\"receive_qty\":0,\"remaining_qty\":null,\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"7\",\"receive_qty\":0,\"remaining_qty\":\"7\",\"remarks\":null},\"3435\":{\"product_id\":18,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100088', 1, 'Approved', 3, 3, '2019-07-21 17:41:14', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100088', 2, 'Approved', 4, 4, '2019-07-21 17:42:56', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100061', 2, 'Approved', 4, 4, '2019-07-21 17:43:03', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100058', 2, 'Approved', 4, 4, '2019-07-21 17:43:04', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100042', 2, 'Approved', 4, 4, '2019-07-21 17:43:04', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100042', 3, 'Approved', 2, 2, '2019-07-21 17:45:55', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100058', 3, 'Approved', 2, 2, '2019-07-21 17:45:55', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100061', 3, 'Approved', 2, 2, '2019-07-21 17:45:55', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100088', 3, 'Approved', 2, 2, '2019-07-21 17:45:56', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100043', 1, 'Approved', 26, 26, '2019-07-22 12:18:39', 'test comment', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100043', 1, 'Approved', 26, 26, '2019-07-22 12:18:39', 'test comment', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100043', 1, 'Approved', 26, 26, '2019-07-22 12:19:47', 'test', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101351', 1, 'Approved', 3, 3, '2019-07-22 18:30:58', 'Approved', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3436\":{\"product_id\":18,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101352', 1, 'Approved', 3, 3, '2019-07-22 18:37:32', 'fgdfg', '{\"1\":{\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101353', 1, 'Approved', 3, 3, '2019-07-22 18:40:11', 'sfes', '{\"7\":{\"3435\":{\"product_id\":7,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3438\":{\"product_id\":7,\"vendor_id\":\"3438\",\"cs_approve_qty\":null,\"receive_qty\":0,\"remaining_qty\":null,\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101354', 1, 'Approved', 3, 3, '2019-07-22 19:17:01', 'sdf', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101355', 1, 'Approved', 3, 3, '2019-07-23 11:58:48', '11', '{\"13\":{\"3438\":{\"product_id\":13,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101356', 1, 'Approved', 3, 3, '2019-07-23 12:46:22', 'asf', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null},\"3435\":{\"product_id\":1,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100217', 1, 'Approved', 3, 3, '2019-07-23 14:37:47', 'approved', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"20.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"20\"},\"products_id\":{\"0\":\"13\",\"1\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101360', 1, 'Approved', 3, 3, '2019-07-23 14:41:55', 'test', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"15\",\"receive_qty\":0,\"remaining_qty\":\"15\",\"remarks\":null},\"3446\":{\"product_id\":18,\"vendor_id\":\"3446\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100098', 1, 'Approved', 3, 3, '2019-07-23 18:12:51', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100099', 1, 'Approved', 3, 3, '2019-07-23 18:14:52', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100099', 2, 'Approved', 4, 4, '2019-07-23 18:16:19', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100098', 2, 'Approved', 4, 4, '2019-07-23 18:16:19', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100099', 3, 'Approved', 2, 2, '2019-07-23 18:17:27', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100098', 3, 'Approved', 2, 2, '2019-07-23 18:17:27', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101361', 1, 'Approved', 3, 3, '2019-07-23 18:40:28', 'test', '{\"13\":{\"3436\":{\"product_id\":13,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":\"###<p>this is another remarks<\\/p>\"},\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"14\",\"receive_qty\":0,\"remaining_qty\":\"14\",\"remarks\":\"###<p>this is demo remarks<\\/p>\"}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100218', 1, 'Approved', 3, 3, '2019-07-24 16:15:52', 'test', '{\"request_qty\":{\"0\":\"1.00\",\"1\":\"12.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"1\",\"1\":\"12\",\"2\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"22\",\"2\":\"1\"},\"unit_price\":{\"0\":\"1.00\",\"1\":\"2000.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101372', 1, 'Approved', 3, 3, '2019-07-24 16:24:33', 'sss', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null},\"3436\":{\"product_id\":1,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"13\":{\"3436\":{\"product_id\":13,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}},\"22\":{\"3436\":{\"product_id\":22,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3438\":{\"product_id\":22,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100101', 1, 'Approved', 3, 3, '2019-07-25 17:12:29', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100113', 1, 'Approved', 3, 3, '2019-07-25 17:12:29', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100113', 2, 'Approved', 4, 4, '2019-07-25 17:14:54', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100101', 2, 'Approved', 4, 4, '2019-07-25 17:14:54', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100113', 3, 'Approved', 2, 2, '2019-07-25 17:15:56', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100101', 3, 'Approved', 2, 2, '2019-07-25 17:15:56', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100222', 1, 'Approved', 3, 3, '2019-07-28 16:53:40', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"50.00\",\"3\":\"10.00\",\"4\":\"10.00\",\"5\":\"100.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"50\",\"3\":\"10\",\"4\":\"10\",\"5\":\"100\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"7\",\"3\":\"25\",\"4\":\"26\",\"5\":\"47\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"100.00\",\"3\":\"170.00\",\"4\":\"199.00\",\"5\":\"270.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101378', 1, 'Approved', 3, 3, '2019-07-29 13:51:39', 'test', '{\"7\":{\"3437\":{\"product_id\":7,\"vendor_id\":\"3437\",\"cs_approve_qty\":\"30\",\"receive_qty\":0,\"remaining_qty\":\"30\",\"remarks\":null},\"3435\":{\"product_id\":7,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"15\",\"receive_qty\":0,\"remaining_qty\":\"15\",\"remarks\":null},\"3438\":{\"product_id\":7,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"25\":{\"3436\":{\"product_id\":25,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3438\":{\"product_id\":25,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null},\"3435\":{\"product_id\":25,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100053', 1, 'Approved', 26, 26, '2019-07-30 12:20:59', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101379', 1, 'Approved', 3, 3, '2019-07-30 12:30:40', 'conform', '{\"26\":{\"3435\":{\"product_id\":26,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3437\":{\"product_id\":26,\"vendor_id\":\"3437\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100223', 1, 'Approved', 3, 3, '2019-07-31 11:10:10', 'Approved', '{\"request_qty\":{\"0\":\"20.00\",\"1\":\"10.00\",\"2\":\"10.00\",\"3\":\"10.00\",\"4\":\"15.00\",\"5\":\"500.00\"},\"approve_qty\":{\"0\":\"20\",\"1\":\"10\",\"2\":\"10\",\"3\":\"10\",\"4\":\"15\",\"5\":\"500\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\",\"2\":\"1\",\"3\":\"18\",\"4\":\"27\",\"5\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\",\"3\":\"165.00\",\"4\":\"70.00\",\"5\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101381', 1, 'Approved', 3, 3, '2019-07-31 11:16:17', 'approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"8\",\"receive_qty\":0,\"remaining_qty\":\"8\",\"remarks\":null},\"3435\":{\"product_id\":1,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"29\":{\"3438\":{\"product_id\":29,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"500\",\"receive_qty\":0,\"remaining_qty\":\"500\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 1, 'Approved', 3, 3, '2019-07-31 12:40:18', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 2, 'Approved', 4, 4, '2019-07-31 12:41:47', 'approved by mamun', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 3, 'Approved', 2, 2, '2019-07-31 12:46:04', 'approved by admin', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 1, 'Approved', 3, 3, '2019-07-31 13:29:16', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 1, 'Approved', 3, 3, '2019-07-31 13:38:57', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 2, 'Approved', 4, 4, '2019-07-31 13:39:47', 'app', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100117', 3, 'Approved', 2, 2, '2019-07-31 13:40:23', 'app', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100045', 1, 'Approved', 26, 26, '2019-07-31 16:45:39', 'TEST', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100055', 1, 'Approved', 26, 26, '2019-07-31 18:34:15', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101384', 1, 'Approved', 3, 3, '2019-08-01 11:25:58', 'TERST', '{\"27\":{\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"47\":{\"3439\":{\"product_id\":47,\"vendor_id\":\"3439\",\"cs_approve_qty\":\"80\",\"receive_qty\":0,\"remaining_qty\":\"80\",\"remarks\":null},\"3435\":{\"product_id\":47,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100118', 1, 'Approved', 3, 3, '2019-08-01 11:39:21', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100118', 2, 'Approved', 4, 4, '2019-08-01 11:39:56', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100118', 3, 'Approved', 2, 2, '2019-08-01 11:40:23', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101387', 1, 'Approved', 3, 3, '2019-08-01 11:50:18', 'confirm', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100059', 1, 'Approved', 26, 26, '2019-08-01 11:57:38', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101356', 1, 'Approved', 3, 3, '2019-08-01 13:19:28', 'SDFSDF', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"8\",\"receive_qty\":0,\"remaining_qty\":\"8\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101355', 1, 'Approved', 3, 3, '2019-08-01 13:20:38', 'GDXG', '{\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100224', 1, 'Approved', 3, 3, '2019-08-01 17:32:53', 'Approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"15\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"27\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101392', 1, 'Approved', 3, 3, '2019-08-01 17:35:34', 'test', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"8\",\"receive_qty\":0,\"remaining_qty\":\"8\",\"remarks\":null},\"1\":{\"product_id\":18,\"vendor_id\":\"1\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100063', 1, 'Approved', 26, 26, '2019-08-01 17:53:49', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100064', 1, 'Approved', 26, 26, '2019-08-01 18:04:43', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101394', 1, 'Approved', 3, 3, '2019-08-01 18:56:56', 'sdfsd', '{\"27\":{\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100225', 1, 'Approved', 3, 3, '2019-08-04 11:31:01', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"15\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"27\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101398', 1, 'Approved', 3, 3, '2019-08-04 11:37:16', 'test', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":18,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null},\"3444\":{\"product_id\":18,\"vendor_id\":\"3444\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"27\":{\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100226', 1, 'Approved', 3, 3, '2019-08-04 11:43:25', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\",\"2\":\"500.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\",\"2\":\"500\"},\"products_id\":{\"0\":\"18\",\"1\":\"27\",\"2\":\"29\"},\"unit_price\":{\"0\":\"165.00\",\"1\":\"70.00\",\"2\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101401', 1, 'Approved', 3, 3, '2019-08-04 12:28:47', 'sdfsd', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"27\":{\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"14\",\"receive_qty\":0,\"remaining_qty\":\"14\",\"remarks\":null}},\"29\":{\"3438\":{\"product_id\":29,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"398\",\"receive_qty\":0,\"remaining_qty\":\"398\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100227', 1, 'Approved', 3, 3, '2019-08-04 12:56:28', 'sdfsdf', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"50.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"50\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101403', 1, 'Approved', 3, 3, '2019-08-04 12:58:22', 'sdf', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"7\":{\"3438\":{\"product_id\":7,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"40\",\"receive_qty\":0,\"remaining_qty\":\"40\",\"remarks\":null},\"1\":{\"product_id\":7,\"vendor_id\":\"1\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100066', 1, 'Approved', 26, 26, '2019-08-04 14:27:26', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100065', 1, 'Approved', 26, 26, '2019-08-04 14:53:02', 'TEST', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100066', 1, 'Approved', 26, 26, '2019-08-04 15:16:05', 'APPROVED', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100130', 1, 'Approved', 3, 3, '2019-08-18 13:26:01', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100228', 1, 'Approved', 3, 3, '2019-08-18 15:53:46', 'asdf', '{\"request_qty\":{\"0\":\"10.00\"},\"approve_qty\":{\"0\":\"10\"},\"products_id\":{\"0\":\"1\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-03-100004', 1, 'Approved', 3, 3, '2019-08-20 17:56:42', 'APPROVED', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100065', 1, 'Approved', 26, 26, '2019-08-20 17:57:38', 'APPROVED', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100229', 1, 'Approved', 3, 3, '2019-08-22 14:53:45', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"15\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"27\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"70.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100230', 1, 'Approved', 3, 3, '2019-08-22 15:05:49', 'approved', '{\"request_qty\":{\"0\":\"15.00\"},\"approve_qty\":{\"0\":\"15\"},\"products_id\":{\"0\":\"43\"},\"unit_price\":{\"0\":\"150.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101409', 1, 'Approved', 3, 3, '2019-08-22 15:47:08', 'approved', '{\"1\":{\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"8\",\"receive_qty\":0,\"remaining_qty\":\"8\",\"remarks\":null},\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":18,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"27\":{\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101413', 1, 'Approved', 3, 3, '2019-08-22 15:48:03', 'Approved', '{\"43\":{\"3445\":{\"product_id\":43,\"vendor_id\":\"3445\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"1\":{\"product_id\":43,\"vendor_id\":\"1\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100128', 1, 'Approved', 3, 3, '2019-08-22 16:07:18', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100134', 1, 'Approved', 3, 3, '2019-08-22 16:09:11', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100134', 2, 'Approved', 4, 4, '2019-08-22 16:09:54', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100134', 3, 'Approved', 2, 2, '2019-08-22 16:10:23', 'app', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100067', 1, 'Approved', 26, 26, '2019-08-22 16:22:50', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100231', 1, 'Approved', 3, 3, '2019-08-22 16:26:42', 'tt', '{\"request_qty\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\",\"3\":\"500.00\"},\"approve_qty\":{\"0\":\"100\",\"1\":\"100\",\"2\":\"100\",\"3\":\"500\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"27\",\"3\":\"29\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"70.00\",\"3\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101420', 1, 'Approved', 3, 3, '2019-08-22 16:31:29', 'approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"80\",\"receive_qty\":0,\"remaining_qty\":\"80\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"20\",\"receive_qty\":0,\"remaining_qty\":\"20\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null},\"3440\":{\"product_id\":18,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null}},\"27\":{\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"70\",\"receive_qty\":0,\"remaining_qty\":\"70\",\"remarks\":null},\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"30\",\"receive_qty\":0,\"remaining_qty\":\"30\",\"remarks\":null}},\"29\":{\"3438\":{\"product_id\":29,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"450\",\"receive_qty\":0,\"remaining_qty\":\"450\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100232', 1, 'Approved', 3, 3, '2019-08-22 16:33:05', 'approved', '{\"request_qty\":{\"0\":\"50.00\",\"1\":\"500.00\",\"2\":\"500.00\"},\"approve_qty\":{\"0\":\"50\",\"1\":\"500\",\"2\":\"500\"},\"products_id\":{\"0\":\"18\",\"1\":\"27\",\"2\":\"29\"},\"unit_price\":{\"0\":\"165.00\",\"1\":\"70.00\",\"2\":\"115.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101422', 1, 'Approved', 3, 3, '2019-08-22 16:35:59', 'approved', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"40\",\"receive_qty\":0,\"remaining_qty\":\"40\",\"remarks\":null},\"3440\":{\"product_id\":18,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}},\"27\":{\"3436\":{\"product_id\":27,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"400\",\"receive_qty\":0,\"remaining_qty\":\"400\",\"remarks\":null},\"3438\":{\"product_id\":27,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"100\",\"receive_qty\":0,\"remaining_qty\":\"100\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100070', 1, 'Approved', 26, 26, '2019-08-22 16:47:57', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100069', 1, 'Approved', 26, 26, '2019-08-22 16:47:57', 'PI Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100138', 1, 'Approved', 3, 3, '2019-08-22 16:50:48', 'aa', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100050', 1, 'Approved', 3, 3, '2019-08-26 13:34:09', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"25\",\"1\":\"26\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100050', 2, 'Approved', 2, 2, '2019-08-26 13:40:05', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"25\",\"1\":\"26\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100050', 3, 'Approved', 1, 1, '2019-08-26 13:41:07', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"25\",\"1\":\"26\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100051', 1, 'Approved', 3, 3, '2019-08-26 16:47:17', NULL, '{\"request_qty\":{\"0\":\"50.00\",\"1\":\"30.00\",\"2\":\"10.00\",\"3\":\"10.00\",\"4\":\"15.00\",\"5\":\"10.00\",\"6\":\"10.00\",\"7\":\"5.00\"},\"approve_qty\":{\"0\":\"50\",\"1\":\"30\",\"2\":\"10\",\"3\":\"10\",\"4\":\"15\",\"5\":\"10\",\"6\":\"10\",\"7\":\"5\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"1\",\"3\":\"18\",\"4\":\"27\",\"5\":\"29\",\"6\":\"41\",\"7\":\"42\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100051', 2, 'Approved', 2, 2, '2019-08-26 16:48:03', NULL, '{\"request_qty\":{\"0\":\"50.00\",\"1\":\"30.00\",\"2\":\"10.00\",\"3\":\"10.00\",\"4\":\"15.00\",\"5\":\"10.00\",\"6\":\"10.00\",\"7\":\"5.00\"},\"approve_qty\":{\"0\":\"50\",\"1\":\"30\",\"2\":\"10\",\"3\":\"10\",\"4\":\"15\",\"5\":\"10\",\"6\":\"10\",\"7\":\"5\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"1\",\"3\":\"18\",\"4\":\"27\",\"5\":\"29\",\"6\":\"41\",\"7\":\"42\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100051', 3, 'Approved', 1, 1, '2019-08-26 16:48:25', NULL, '{\"request_qty\":{\"0\":\"50.00\",\"1\":\"30.00\",\"2\":\"10.00\",\"3\":\"10.00\",\"4\":\"15.00\",\"5\":\"10.00\",\"6\":\"10.00\",\"7\":\"5.00\"},\"approve_qty\":{\"0\":\"50\",\"1\":\"30\",\"2\":\"10\",\"3\":\"10\",\"4\":\"15\",\"5\":\"10\",\"6\":\"10\",\"7\":\"5\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"1\",\"3\":\"18\",\"4\":\"27\",\"5\":\"29\",\"6\":\"41\",\"7\":\"42\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100238', 1, 'Approved', 3, 3, '2019-08-27 12:04:52', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100237', 1, 'Approved', 3, 3, '2019-08-27 12:04:52', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101437', 1, 'Approved', 3, 3, '2019-08-27 12:15:23', 'approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null},\"3440\":{\"product_id\":18,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101424', 1, 'Approved', 3, 3, '2019-08-27 12:16:10', 'approved', '{\"29\":{\"3438\":{\"product_id\":29,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"300\",\"receive_qty\":0,\"remaining_qty\":\"300\",\"remarks\":null},\"3440\":{\"product_id\":29,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"100\",\"receive_qty\":0,\"remaining_qty\":\"100\",\"remarks\":null},\"3446\":{\"product_id\":29,\"vendor_id\":\"3446\",\"cs_approve_qty\":\"100\",\"receive_qty\":0,\"remaining_qty\":\"100\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100139', 1, 'Approved', 3, 3, '2019-08-27 12:21:22', NULL, '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100139', 2, 'Approved', 4, 4, '2019-08-27 12:23:02', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100138', 2, 'Approved', 4, 4, '2019-08-27 12:23:02', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100130', 2, 'Approved', 4, 4, '2019-08-27 12:23:02', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100128', 2, 'Approved', 4, 4, '2019-08-27 12:23:02', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100139', 3, 'Approved', 2, 2, '2019-08-27 12:23:43', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100138', 3, 'Approved', 2, 2, '2019-08-27 12:23:43', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100130', 3, 'Approved', 2, 2, '2019-08-27 12:23:43', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100128', 3, 'Approved', 2, 2, '2019-08-27 12:23:43', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100071', 1, 'Approved', 26, 26, '2019-08-27 13:43:43', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-08-100037', 1, 'Approved', 3, 3, '2019-08-27 14:14:25', NULL, '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-08-100037', 2, 'Approved', 4, 4, '2019-08-27 14:15:07', 'sdfsdf', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('sls_ord', 'SO-19-08-100037', 3, 'Approved', 2, 2, '2019-08-27 14:15:56', 'sdfsdf', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100252', 1, 'Approved', 2, 2, '2019-08-27 19:00:34', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"42\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"200.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101450', 1, 'Approved', 3, 3, '2019-08-28 14:25:23', 'tt', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"42\":{\"3440\":{\"product_id\":42,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3434\":{\"product_id\":42,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100072', 1, 'Approved', 26, 26, '2019-08-28 14:29:56', NULL, '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100060', 1, 'Approved', 3, 3, '2019-08-28 14:56:12', NULL, '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100060', 2, 'Approved', 2, 2, '2019-08-28 14:57:28', NULL, '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100060', 3, 'Approved', 1, 1, '2019-08-28 14:57:48', NULL, '{\"request_qty\":{\"0\":\"5.00\"},\"approve_qty\":{\"0\":\"5\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100255', 1, 'Approved', 2, 2, '2019-08-28 15:30:46', NULL, '{\"request_qty\":{\"0\":\"2.00\"},\"approve_qty\":{\"0\":\"2\"},\"products_id\":{\"0\":\"12\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101461', 1, 'Approved', 3, 3, '2019-08-28 15:34:49', 'approved', '{\"12\":{\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100073', 1, 'Approved', 26, 26, '2019-08-28 15:36:49', NULL, '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100062', 1, 'Approved', 3, 3, '2019-08-28 16:41:35', NULL, '{\"request_qty\":{\"0\":\"50.00\"},\"approve_qty\":{\"0\":\"50\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100062', 2, 'Approved', 2, 2, '2019-08-28 16:42:03', NULL, '{\"request_qty\":{\"0\":\"50.00\"},\"approve_qty\":{\"0\":\"50\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100062', 3, 'Approved', 1, 1, '2019-08-28 16:42:39', NULL, '{\"request_qty\":{\"0\":\"50.00\"},\"approve_qty\":{\"0\":\"50\"},\"products_id\":{\"0\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100064', 1, 'Approved', 3, 3, '2019-08-28 16:45:03', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100063', 1, 'Approved', 3, 3, '2019-08-28 16:45:03', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100064', 2, 'Approved', 2, 2, '2019-08-28 16:45:26', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100063', 2, 'Approved', 2, 2, '2019-08-28 16:45:26', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100064', 3, 'Approved', 1, 1, '2019-08-28 16:45:47', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100063', 3, 'Approved', 1, 1, '2019-08-28 16:45:47', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100257', 1, 'Approved', 2, 2, '2019-08-28 16:53:07', NULL, '{\"request_qty\":{\"0\":\"40.00\"},\"approve_qty\":{\"0\":\"40\"},\"products_id\":{\"0\":\"12\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100257', 1, 'Approved', 2, 2, '2019-08-28 17:16:49', NULL, '{\"request_qty\":{\"0\":\"40.00\"},\"approve_qty\":{\"0\":\"40\"},\"products_id\":{\"0\":\"12\"},\"unit_price\":{\"0\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101471', 1, 'Approved', 3, 3, '2019-08-28 17:26:28', 'etst', '{\"12\":{\"3436\":{\"product_id\":12,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"30\",\"receive_qty\":0,\"remaining_qty\":\"30\",\"remarks\":null},\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100065', 1, 'Approved', 3, 3, '2019-08-28 17:40:14', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\"},\"products_id\":{\"0\":\"12\",\"1\":\"49\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100065', 2, 'Approved', 2, 2, '2019-08-28 17:40:34', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\"},\"products_id\":{\"0\":\"12\",\"1\":\"49\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100065', 3, 'Approved', 1, 1, '2019-08-28 17:41:10', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\"},\"products_id\":{\"0\":\"12\",\"1\":\"49\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100074', 1, 'Approved', 26, 26, '2019-08-28 18:25:22', NULL, '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100067', 1, 'Approved', 3, 3, '2019-08-29 16:28:14', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100066', 1, 'Approved', 3, 3, '2019-08-29 16:28:14', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100066', 2, 'Approved', 2, 2, '2019-08-29 16:28:47', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100067', 2, 'Approved', 2, 2, '2019-08-29 16:28:47', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100066', 3, 'Approved', 1, 1, '2019-08-29 16:29:01', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100067', 3, 'Approved', 1, 1, '2019-08-29 16:29:01', 'Stock requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100071', 1, 'Approved', 3, 3, '2019-08-31 14:12:59', 'approved', '{\"request_qty\":{\"0\":\"30.00\",\"1\":\"30.00\"},\"approve_qty\":{\"0\":\"30\",\"1\":\"30\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100071', 2, 'Approved', 2, 2, '2019-08-31 14:14:18', 'approved', '{\"request_qty\":{\"0\":\"30.00\",\"1\":\"30.00\"},\"approve_qty\":{\"0\":\"30\",\"1\":\"30\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100071', 3, 'Approved', 1, 1, '2019-08-31 14:15:28', 'approved', '{\"request_qty\":{\"0\":\"30.00\",\"1\":\"30.00\"},\"approve_qty\":{\"0\":\"30\",\"1\":\"30\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100072', 1, 'Approved', 3, 3, '2019-08-31 15:29:12', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100072', 2, 'Approved', 2, 2, '2019-08-31 15:29:44', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100072', 3, 'Approved', 1, 1, '2019-08-31 15:30:02', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100073', 1, 'Approved', 3, 3, '2019-08-31 17:53:17', NULL, '{\"request_qty\":{\"0\":\"1.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"1\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100073', 2, 'Approved', 2, 2, '2019-08-31 17:53:47', NULL, '{\"request_qty\":{\"0\":\"1.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"1\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100073', 3, 'Approved', 1, 1, '2019-08-31 17:54:06', NULL, '{\"request_qty\":{\"0\":\"1.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"1\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100258', 1, 'Approved', 2, 2, '2019-08-31 18:12:23', NULL, '{\"request_qty\":{\"0\":\"6.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"6\",\"1\":\"10\"},\"products_id\":{\"0\":\"12\",\"1\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101477', 1, 'Approved', 3, 3, '2019-08-31 18:14:56', 'test', '{\"12\":{\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null}},\"21\":{\"3440\":{\"product_id\":21,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101477', 1, 'Approved', 3, 3, '2019-08-31 18:38:30', 'sdf', '{\"12\":{\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null}},\"21\":{\"3440\":{\"product_id\":21,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101477', 1, 'Approved', 3, 3, '2019-08-31 18:53:27', NULL, '{\"12\":{\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100075', 1, 'Approved', 26, 26, '2019-09-01 11:00:19', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100074', 1, 'Approved', 3, 3, '2019-09-01 12:51:46', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"21\",\"2\":\"22\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100074', 2, 'Approved', 2, 2, '2019-09-01 12:52:31', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"21\",\"2\":\"22\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100074', 3, 'Approved', 1, 1, '2019-09-01 12:52:51', NULL, '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"15.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"15\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"21\",\"2\":\"22\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100077', 1, 'Approved', 3, 3, '2019-09-01 17:14:08', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100077', 2, 'Approved', 2, 2, '2019-09-01 17:15:02', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100077', 3, 'Approved', 1, 1, '2019-09-01 17:15:26', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100260', 1, 'Approved', 2, 2, '2019-09-01 19:00:47', 'approved', '{\"request_qty\":{\"0\":\"4.00\",\"1\":\"5.00\",\"2\":\"7.00\"},\"approve_qty\":{\"0\":\"4\",\"1\":\"5\",\"2\":\"7\"},\"products_id\":{\"0\":\"11\",\"1\":\"12\",\"2\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101486', 1, 'Approved', 3, 3, '2019-09-01 19:07:41', 'approved', '{\"11\":{\"3440\":{\"product_id\":11,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null}},\"12\":{\"3440\":{\"product_id\":12,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null},\"3438\":{\"product_id\":12,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"21\":{\"3440\":{\"product_id\":21,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null},\"3438\":{\"product_id\":21,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100140', 1, 'Approved', 3, 3, '2019-09-02 10:41:25', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100140', 2, 'Approved', 4, 4, '2019-09-02 10:42:10', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100140', 3, 'Approved', 2, 2, '2019-09-02 10:43:56', NULL, '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100076', 1, 'Approved', 26, 26, '2019-09-02 10:52:17', 'test', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100141', 1, 'Approved', 3, 3, '2019-09-04 12:04:39', NULL, '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100141', 2, 'Approved', 4, 4, '2019-09-04 12:05:18', NULL, '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100141', 3, 'Approved', 2, 2, '2019-09-04 12:05:51', NULL, '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100263', 1, 'Approved', 3, 3, '2019-09-05 17:36:55', 'nn approved', '{\"request_qty\":{\"0\":\"12.00\",\"1\":\"15.00\",\"2\":\"100.00\"},\"approve_qty\":{\"0\":\"12\",\"1\":\"15\",\"2\":\"100\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"22\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"2000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101494', 1, 'Approved', 3, 3, '2019-09-05 17:44:12', NULL, '{\"22\":{\"3438\":{\"product_id\":22,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"50\",\"receive_qty\":0,\"remaining_qty\":\"50\",\"remarks\":null},\"3440\":{\"product_id\":22,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"40\",\"receive_qty\":0,\"remaining_qty\":\"40\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100077', 1, 'Approved', 26, 26, '2019-09-05 17:59:15', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100078', 1, 'Approved', 3, 3, '2019-09-05 18:14:21', 'approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100078', 2, 'Approved', 2, 2, '2019-09-05 18:15:03', NULL, '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100078', 3, 'Approved', 1, 1, '2019-09-05 18:15:38', NULL, '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100265', 1, 'Approved', 2, 2, '2019-09-05 18:58:39', 'test', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"7.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"7\"},\"products_id\":{\"0\":\"13\",\"1\":\"21\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101497', 1, 'Approved', 3, 3, '2019-09-05 19:02:54', 'test', '{\"13\":{\"3436\":{\"product_id\":13,\"vendor_id\":\"3436\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null},\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}},\"21\":{\"3440\":{\"product_id\":21,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"4\",\"receive_qty\":0,\"remaining_qty\":\"4\",\"remarks\":null},\"3435\":{\"product_id\":21,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100078', 1, 'Approved', 26, 26, '2019-09-05 19:25:54', 'dd', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100052', 1, 'Approved', 3, 3, '2019-09-12 11:39:02', 'test', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100052', 2, 'Approved', 4, 4, '2019-09-12 11:55:24', 'approved by Mamun', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100259', 1, 'Approved', 3, 3, '2019-09-12 15:55:36', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"12.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"12\"},\"products_id\":{\"0\":\"1\",\"1\":\"18\",\"2\":\"22\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\",\"2\":\"2000.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100080', 1, 'Approved', 3, 3, '2019-09-12 15:58:52', 'approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"5.00\",\"2\":\"20.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"5\",\"2\":\"20\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\",\"2\":\"13\",\"3\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100264', 1, 'Approved', 2, 2, '2019-09-12 15:59:34', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100261', 1, 'Approved', 2, 2, '2019-09-12 15:59:35', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100080', 2, 'Approved', 2, 2, '2019-09-12 16:00:36', 'approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"5.00\",\"2\":\"20.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"5\",\"2\":\"20\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\",\"2\":\"13\",\"3\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('stc_req', 'SR19100080', 3, 'Approved', 1, 1, '2019-09-12 16:01:02', 'approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"5.00\",\"2\":\"20.00\",\"3\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"5\",\"2\":\"20\",\"3\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\",\"2\":\"13\",\"3\":\"21\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101501', 1, 'Approved', 3, 3, '2019-09-15 10:38:17', 'approved', '{\"18\":{\"3438\":{\"product_id\":18,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null},\"3444\":{\"product_id\":18,\"vendor_id\":\"3444\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100079', 1, 'Approved', 26, 26, '2019-09-15 11:02:13', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101493', 1, 'Approved', 3, 3, '2019-09-15 11:12:46', 'Approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100080', 1, 'Approved', 26, 26, '2019-09-15 11:15:55', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100145', 1, 'Approved', 3, 3, '2019-09-15 12:41:06', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100145', 2, 'Approved', 4, 4, '2019-09-15 12:41:49', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100145', 3, 'Approved', 2, 2, '2019-09-15 12:42:40', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100081', 1, 'Approved', 26, 26, '2019-09-15 13:54:51', 'test', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100266', 1, 'Approved', 3, 3, '2019-09-15 14:24:06', 'approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"5.00\",\"2\":\"5.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"5\",\"2\":\"5\"},\"products_id\":{\"0\":\"1\",\"1\":\"13\",\"2\":\"23\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"135.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101535', 1, 'Approved', 3, 3, '2019-09-15 14:26:57', 'test', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}},\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"3\",\"receive_qty\":0,\"remaining_qty\":\"3\",\"remarks\":null},\"3437\":{\"product_id\":13,\"vendor_id\":\"3437\",\"cs_approve_qty\":\"2\",\"receive_qty\":0,\"remaining_qty\":\"2\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100091', 1, 'Approved', 26, 26, '2019-09-15 14:53:54', 'Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100092', 1, 'Approved', 26, 26, '2019-09-15 15:05:40', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100093', 1, 'Approved', 26, 26, '2019-09-15 15:21:04', 'test', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100094', 1, 'Approved', 26, 26, '2019-09-15 15:42:41', 'app', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100156', 1, 'Approved', 3, 3, '2019-09-15 16:11:17', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100158', 1, 'Approved', 3, 3, '2019-09-15 16:11:18', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100158', 2, 'Approved', 4, 4, '2019-09-15 16:11:49', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100156', 2, 'Approved', 4, 4, '2019-09-15 16:11:50', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100158', 3, 'Approved', 2, 2, '2019-09-15 16:12:10', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100156', 3, 'Approved', 2, 2, '2019-09-15 16:12:10', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100267', 1, 'Approved', 3, 3, '2019-09-15 17:53:13', 'Approved', '{\"request_qty\":{\"0\":\"5.00\",\"1\":\"10.00\"},\"approve_qty\":{\"0\":\"5\",\"1\":\"10\"},\"products_id\":{\"0\":\"13\",\"1\":\"18\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"165.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101540', 1, 'Approved', 3, 3, '2019-09-15 18:22:24', 'approved', '{\"23\":{\"3438\":{\"product_id\":23,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"5\",\"receive_qty\":0,\"remaining_qty\":\"5\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100159', 1, 'Approved', 3, 3, '2019-09-15 18:26:26', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100159', 2, 'Approved', 4, 4, '2019-09-15 18:27:04', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100159', 3, 'Approved', 2, 2, '2019-09-15 18:27:55', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100095', 1, 'Approved', 26, 26, '2019-09-16 11:58:08', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100053', 1, 'Approved', 3, 3, '2019-09-16 12:01:15', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100053', 2, 'Approved', 4, 4, '2019-09-16 12:02:00', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100052', 3, 'Approved', 2, 2, '2019-09-16 12:10:27', 'LC Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100053', 3, 'Approved', 2, 2, '2019-09-16 12:10:27', 'LC Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100272', 1, 'Approved', 3, 3, '2019-09-16 15:25:16', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100271', 1, 'Approved', 3, 3, '2019-09-16 15:25:17', 'Purchase requisition Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101552', 1, 'Approved', 3, 3, '2019-09-16 15:28:04', 'approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"80\",\"receive_qty\":0,\"remaining_qty\":\"80\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"40\",\"receive_qty\":0,\"remaining_qty\":\"40\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100161', 1, 'Approved', 3, 3, '2019-09-16 15:34:46', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100160', 1, 'Approved', 3, 3, '2019-09-16 15:34:46', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100161', 2, 'Approved', 4, 4, '2019-09-16 15:35:14', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100160', 2, 'Approved', 4, 4, '2019-09-16 15:35:14', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100161', 3, 'Approved', 2, 2, '2019-09-16 15:35:59', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_ord', 'PO-19-100160', 3, 'Approved', 2, 2, '2019-09-16 15:35:59', 'PO Bulk Approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('pi_app', 'PI19100096', 1, 'Approved', 26, 26, '2019-09-16 17:18:16', 'approved', '', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_lc', 'LC19100054', 1, 'Approved', 3, 3, '2019-09-16 17:24:08', 'approved', '{}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('prc_req', 'PR19100273', 1, 'Approved', 3, 3, '2019-09-18 11:15:41', 'approved', '{\"request_qty\":{\"0\":\"10.00\",\"1\":\"10.00\",\"2\":\"10.00\"},\"approve_qty\":{\"0\":\"10\",\"1\":\"10\",\"2\":\"10\"},\"products_id\":{\"0\":\"1\",\"1\":\"7\",\"2\":\"13\"},\"unit_price\":{\"0\":\"100.00\",\"1\":\"100.00\",\"2\":\"100.00\"}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101558', 1, 'Approved', 3, 3, '2019-09-18 11:20:36', 'approved', '{\"1\":{\"3438\":{\"product_id\":1,\"vendor_id\":\"3438\",\"cs_approve_qty\":\"6\",\"receive_qty\":0,\"remaining_qty\":\"6\",\"remarks\":null},\"3440\":{\"product_id\":1,\"vendor_id\":\"3440\",\"cs_approve_qty\":\"1\",\"receive_qty\":0,\"remaining_qty\":\"1\",\"remarks\":null}},\"7\":{\"3435\":{\"product_id\":7,\"vendor_id\":\"3435\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);
INSERT INTO `sys_delegation_historys` VALUES ('req_cs', 'CS19101559', 1, 'Approved', 3, 3, '2019-09-18 11:20:59', 'approved', '{\"13\":{\"3434\":{\"product_id\":13,\"vendor_id\":\"3434\",\"cs_approve_qty\":\"10\",\"receive_qty\":0,\"remaining_qty\":\"10\",\"remarks\":null}}}', 0);

-- ----------------------------
-- Table structure for sys_dropdowns
-- ----------------------------
DROP TABLE IF EXISTS `sys_dropdowns`;
CREATE TABLE `sys_dropdowns`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dropdown_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dropdown_mode` enum('dropdown','dropdown_grid') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'dropdown',
  `sys_search_panel_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sqltext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlsource` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlcondition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlgroupby` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlhaving` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlorderby` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqllimit` int(11) NULL DEFAULT NULL,
  `value_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `multiple` tinyint(1) NULL DEFAULT 0,
  `search_columns` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dropdown_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dropdownslug`(`dropdown_slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dropdowns
-- ----------------------------
INSERT INTO `sys_dropdowns` VALUES (1, 'product-dropdown-grid', 'dropdown_grid', 'product_dropdown_search', 'SELECT\r\n	products.products_id,\r\n	products.products_name,\r\n	product_categorys.product_categorys_name,\r\n	products.default_uom,\r\n	products.reorder_qty,\r\n	products.created_at create_date,\r\n(SELECT sum(current_stock_qty) from products_in_stocks WHERE products.products_id=products_in_stocks.products_id) as current_stock_qty,\r\n(select sum(approved_po_qty-pi_qty) from purchase_cs WHERE products.products_id=purchase_cs.products_id AND purchase_cs.`status`=\'Active\') under_purchase_qty\r\n', 'FROM\r\n	products\r\nLEFT JOIN product_categorys on products.product_categorys_id=product_categorys.product_categorys_id', 'WHERE products.`status`=\'Active\'', 'GROUP BY products.products_id', NULL, 'ORDER BY products.products_name', NULL, 'products.products_id', 'products.products_name', 1, 'products.products_name,product_categorys.product_categorys_name', 'product-dropdown-grid', 'Products List', NULL, '2019-02-06 15:43:34', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (2, 'designation', 'dropdown', NULL, 'SELECT\r\ndesignations.designations_id,\r\ndesignations.designations_name', 'FROM\r\ndesignations', 'WHERE\r\ndesignations.`status` = \'Active\'', NULL, NULL, NULL, NULL, 'designations_id', 'designations_name', 0, '', 'designations_id', 'List of Designation', 23, '2018-12-12 17:00:00', NULL, '2019-02-13 10:54:56', 'Active');
INSERT INTO `sys_dropdowns` VALUES (3, 'property-type', 'dropdown', NULL, 'SELECT law_property_type.law_property_type_id, law_property_type.law_property_type_name', 'FROM law_property_type', NULL, NULL, NULL, NULL, NULL, 'law_property_type_id', 'law_property_type_name', 0, NULL, 'law_property_type_id', 'Law Property Dropdown', NULL, '2019-12-23 13:38:22', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (4, 'lawyer-list', 'dropdown', NULL, 'SELECT law_lawyers_id, CONCAT(law_lawyers_name, \' (\', contacts,\')\') AS lawyer_name', 'FROM law_lawyers', NULL, NULL, NULL, NULL, NULL, 'law_lawyers_id', 'lawyer_name', 0, NULL, 'law_lawyers_id', NULL, NULL, '2019-12-23 16:13:54', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (6, 'buyer-list', 'dropdown', NULL, 'SELECT\r\nlaw_app_users.law_app_users_id,\r\nCONCAT(\r\nlaw_app_users.law_app_users_name, \' - \', law_app_users.email) AS app_user', 'FROM\r\nlaw_app_users', 'WHERE\r\nlaw_app_users.`status` = \'Active\'', NULL, NULL, NULL, NULL, 'law_app_users_id', 'app_user', 0, NULL, 'buyer_id', NULL, NULL, '2019-12-26 18:34:18', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (7, 'seller-list', 'dropdown', NULL, 'SELECT\r\nlaw_app_users.law_app_users_id,\r\nCONCAT(\r\nlaw_app_users.law_app_users_name, \' - \', law_app_users.email) AS app_user', 'FROM\r\nlaw_app_users', 'WHERE\r\nlaw_app_users.`status` = \'Active\'', NULL, NULL, NULL, NULL, 'law_app_users_id', 'app_user', 0, NULL, 'seller_id', NULL, NULL, '2019-12-26 18:34:18', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (8, 'notary-list', 'dropdown', NULL, 'SELECT\r\nlaw_notaries.law_notaries_id,\r\nCONCAT(law_notaries.law_notaries_name, \' - \', law_notaries.contacts) AS notary_name', 'FROM\r\nlaw_notaries', NULL, NULL, NULL, NULL, NULL, 'law_notaries_id', 'notary_name', 0, NULL, 'law_notaries_id', NULL, NULL, '2019-12-26 18:34:18', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (9, 'bank-list', 'dropdown', NULL, 'SELECT\r\nlaw_banks.law_banks_id,\r\nlaw_banks.law_banks_name', 'FROM\r\nlaw_banks', 'WHERE `status` = \'Active\'', NULL, NULL, NULL, NULL, 'law_banks_id', 'law_banks_name', 0, NULL, 'law_banks_id', NULL, NULL, '2019-12-26 18:34:18', NULL, NULL, 'Active');
INSERT INTO `sys_dropdowns` VALUES (10, 'property-list', 'dropdown', NULL, 'SELECT law_properties_id, CONCAT(law_properties_name, \' - \', property_description) property_options', 'FROM law_properties', NULL, NULL, NULL, NULL, NULL, 'law_properties_id', 'property_options', 0, NULL, 'law_properties_id', NULL, NULL, '2020-01-01 18:04:14', NULL, NULL, 'Active');

-- ----------------------------
-- Table structure for sys_master_entry
-- ----------------------------
DROP TABLE IF EXISTS `sys_master_entry`;
CREATE TABLE `sys_master_entry`  (
  `sys_master_entry_id` int(10) NOT NULL AUTO_INCREMENT,
  `sys_master_entry_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `master_entry_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Use lower case and no space',
  `sub_form_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_action_mode` enum('default','ajax') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'ajax',
  `form_save_mode` enum('default','instant') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default',
  `form_view_mode` enum('default','modal','tab') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default',
  `form_action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` enum('get','post') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'post',
  `form_column` tinyint(1) NULL DEFAULT 3,
  `form_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_class` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_additional_attr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `form_add_more` tinyint(1) NULL DEFAULT 0,
  `tagged_grid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'tagged grid ids will be put here with comma separator',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `created_by` int(10) NOT NULL DEFAULT 0,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_master_entry_id`) USING BTREE,
  INDEX `u_table_name`(`sys_master_entry_name`) USING BTREE,
  INDEX `u_master_entry_title`(`master_entry_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_master_entry
-- ----------------------------
INSERT INTO `sys_master_entry` VALUES (4, 'law_lawyers', 'law_lawyers', 'Law lawyers', NULL, 'ajax', 'default', 'default', NULL, 'post', 4, 'law_lawyers', 'validator', NULL, 0, NULL, NULL, NULL, 0, '2019-12-19 13:35:47', 'Active');
INSERT INTO `sys_master_entry` VALUES (5, 'law_notaries', 'law_notaries', 'Law notaries', NULL, 'ajax', 'default', 'default', NULL, 'post', 3, 'law_notaries', 'validator', NULL, 0, NULL, NULL, NULL, 0, NULL, 'Active');
INSERT INTO `sys_master_entry` VALUES (6, 'law_banks', 'law_banks', 'Law banks', NULL, 'ajax', 'default', 'default', NULL, 'post', 3, 'law_banks', 'validator', NULL, 0, NULL, NULL, NULL, 0, NULL, 'Active');
INSERT INTO `sys_master_entry` VALUES (8, 'law_real_states', 'law_real_states', 'Law real states', NULL, 'ajax', 'default', 'default', NULL, 'post', 3, 'law_real_states', 'validator', NULL, 0, NULL, NULL, NULL, 0, NULL, 'Active');
INSERT INTO `sys_master_entry` VALUES (9, 'law_property_type', 'law_property_type', 'Law property type', NULL, 'ajax', 'default', 'default', NULL, 'post', 3, 'law_property_type', 'validator', NULL, 0, NULL, NULL, NULL, 0, NULL, 'Active');
INSERT INTO `sys_master_entry` VALUES (10, 'test_jony', 'test_jony', 'Test jony', NULL, 'ajax', 'default', 'default', NULL, 'post', 3, 'test_jony', 'validator', NULL, 0, NULL, NULL, NULL, 0, NULL, 'Active');

-- ----------------------------
-- Table structure for sys_master_entry_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_master_entry_details`;
CREATE TABLE `sys_master_entry_details`  (
  `sys_master_entry_details_id` int(10) NOT NULL AUTO_INCREMENT,
  `sys_master_entry_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'form-label',
  `placeholder` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` enum('dropdown','text','textarea','email','date','datetime','checkbox','radio','button','number','submit') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'text' COMMENT 'ex. text, combo, textarea etc',
  `sorting` tinyint(3) NULL DEFAULT NULL,
  `input_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'form-control' COMMENT 'for inut class',
  `validator_function` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'put the function name which is defined in form validator helper',
  `validate_expression` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'put the regular expression for the input validation',
  `disabled` tinyint(1) NULL DEFAULT 0 COMMENT 'disabled (1) or not(0)',
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `dropdown_slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dropdown_options` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dropdown_view` enum('combo','grid','autocomplete') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'combo',
  `autocomplete_query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_master_entry_details_id`) USING BTREE,
  INDEX `master_entry`(`sys_master_entry_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_master_entry_details
-- ----------------------------
INSERT INTO `sys_master_entry_details` VALUES (13, 'law_lawyers', 'law_lawyers', 'law_lawyers_name', 'Law Lawyers Name', 'form-label', 'Enter Law Lawyers Name', 'text', 2, 'law_lawyers_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (14, 'law_lawyers', 'law_lawyers', 'contacts', 'Contacts', 'form-label', 'Enter Contacts', 'text', 3, 'contacts', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (15, 'law_lawyers', 'law_lawyers', 'address', 'Address', 'form-label', 'Enter Address', 'textarea', 4, 'address', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (16, 'law_lawyers', 'law_lawyers', 'post_code', 'Post Code', 'form-label', 'Enter Post Code', 'text', 5, 'post_code', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (17, 'law_lawyers', 'law_lawyers', 'city', 'City', 'form-label', 'Enter City', 'text', 6, 'city', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (18, 'law_lawyers', 'law_lawyers', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 7, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (19, 'law_lawyers', 'law_lawyers', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 12, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (20, 'law_lawyers', 'law_lawyers', 'law_lawyers_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (21, 'law_notaries', 'law_notaries', 'law_notaries_name', 'Law Notaries Name', 'form-label', 'Enter Law Notaries Name', 'text', 2, 'law_notaries_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (22, 'law_notaries', 'law_notaries', 'contacts', 'Contacts', 'form-label', 'Enter Contacts', 'text', 3, 'contacts', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (23, 'law_notaries', 'law_notaries', 'address', 'Address', 'form-label', 'Enter Address', 'textarea', 4, 'address', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (24, 'law_notaries', 'law_notaries', 'post_code', 'Post Code', 'form-label', 'Enter Post Code', 'text', 5, 'post_code', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (25, 'law_notaries', 'law_notaries', 'city', 'City', 'form-label', 'Enter City', 'text', 6, 'city', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (26, 'law_notaries', 'law_notaries', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 7, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (27, 'law_notaries', 'law_notaries', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 12, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (28, 'law_notaries', 'law_notaries', 'law_notaries_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (29, 'law_banks', 'law_banks', 'law_banks_name', 'Law Banks Name', 'form-label', 'Enter Law Banks Name', 'text', 2, 'law_banks_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (30, 'law_banks', 'law_banks', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 3, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (31, 'law_banks', 'law_banks', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 8, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (32, 'law_banks', 'law_banks', 'law_banks_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (37, 'law_real_states', 'law_real_states', 'law_real_states_name', 'Law Real States Name', 'form-label', 'Enter Law Real States Name', 'text', 2, 'law_real_states_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (38, 'law_real_states', 'law_real_states', 'seller_name', 'Seller', 'form-label', 'Enter Seller Name', 'text', 3, 'seller_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, '2019-12-23 17:30:52', 'Active');
INSERT INTO `sys_master_entry_details` VALUES (39, 'law_real_states', 'law_real_states', 'address', 'Address', 'form-label', 'Enter Address', 'textarea', 4, 'address', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (40, 'law_real_states', 'law_real_states', 'post_code', 'Post Code', 'form-label', 'Enter Post Code', 'text', 5, 'post_code', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (41, 'law_real_states', 'law_real_states', 'city', 'City', 'form-label', 'Enter City', 'text', 6, 'city', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (42, 'law_real_states', 'law_real_states', 'tax_number', 'Tax Number', 'form-label', 'Enter Tax Number', 'text', 7, 'tax_number', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (43, 'law_real_states', 'law_real_states', 'ami_license', 'Ami License', 'form-label', 'Enter Ami License', 'text', 8, 'ami_license', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (44, 'law_real_states', 'law_real_states', 'email', 'Email', 'form-label', 'Enter Email', 'text', 9, 'email', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (45, 'law_real_states', 'law_real_states', 'phone', 'Phone', 'form-label', 'Enter Phone', 'text', 10, 'phone', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (46, 'law_real_states', 'law_real_states', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 11, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (47, 'law_real_states', 'law_real_states', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 16, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (48, 'law_real_states', 'law_real_states', 'law_real_states_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (49, 'law_property_type', 'law_property_type', 'law_property_type_name', 'Law Property Type Name', 'form-label', 'Enter Law Property Type Name', 'text', 2, 'law_property_type_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (50, 'law_property_type', 'law_property_type', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 3, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (51, 'law_property_type', 'law_property_type', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 8, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (52, 'law_property_type', 'law_property_type', 'law_property_type_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (53, 'test_jony', 'test_jony', 'law_lawyers_id', 'Law Lawyers Id', 'form-label', 'Enter Law Lawyers Id', 'dropdown', 2, 'law_lawyers_id', 'form-control', NULL, NULL, 0, 0, 'law_lawyers', NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (54, 'test_jony', 'test_jony', 'test_jony_name', 'Test Jony Name', 'form-label', 'Enter Test Jony Name', 'text', 3, 'test_jony_name', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (55, 'test_jony', 'test_jony', 'description', 'Description', 'form-label', 'Enter Description', 'textarea', 4, 'description', 'form-control', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (56, 'test_jony', 'test_jony', 'status', 'Status', 'form-label', 'Enter Status', 'dropdown', 9, 'status', 'form-control', NULL, NULL, 0, 0, NULL, 'Active,Inactive', 'combo', NULL, 0, NULL, NULL, NULL, 'Active');
INSERT INTO `sys_master_entry_details` VALUES (57, 'test_jony', 'test_jony', 'test_jony_id', 'Submit Form', 'form-label', 'Submit Form', 'submit', 100, '', 'btn btn-primary', NULL, NULL, 0, 0, NULL, NULL, 'combo', NULL, 0, NULL, NULL, NULL, 'Active');

-- ----------------------------
-- Table structure for sys_master_grid
-- ----------------------------
DROP TABLE IF EXISTS `sys_master_grid`;
CREATE TABLE `sys_master_grid`  (
  `sys_master_grid_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'grid unique name. It\'ll be used as grid slug',
  `sys_master_grid_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sys_master_entry_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `master_entry_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grid_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grid_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'possible select query to read this table',
  `sqlsource` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlcondition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlgroupby` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlhaving` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqlorderby` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sqllimit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `action_table` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `primary_key_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the field name from the grid query, which is required to identify the record individualy',
  `search_panel_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hide_col_position` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT 'comma  separated postion number from select query',
  `search_columns` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tr_data_attr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `enable_form` tinyint(1) NULL DEFAULT 1,
  `additional_grid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Put other grid Id(s) as comma separator value',
  `export_excel` tinyint(1) NULL DEFAULT 0,
  `export_pdf` tinyint(1) NULL DEFAULT 0,
  `export_csv` tinyint(1) NULL DEFAULT 0,
  `enable_printing` tinyint(1) NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `created_by` int(10) NOT NULL DEFAULT 0,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_master_grid_id`) USING BTREE,
  INDEX `u_table_name`(`sys_master_grid_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_master_grid
-- ----------------------------
INSERT INTO `sys_master_grid` VALUES (1, 'product_brand', 'product_brand', 'product_brand', 'Product Brand List', 'SELECT product_brands.product_brands_id, product_brands.product_brands_name as product_brand, product_brands.description, product_brands.`status`	', 'FROM product_brands', NULL, NULL, NULL, NULL, NULL, 'product_brands', 'product_brands.product_brands_id', 'product_dropdown_search', '1', 'product_brands.product_brands_name,product_brands.`status`', 'product_brands.product_brands_id', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:14', 'Active');
INSERT INTO `sys_master_grid` VALUES (2, 'purchase_category', 'purchase_category', NULL, 'Purchase category', 'SELECT * ', 'FROM purchase_categorys', NULL, NULL, NULL, NULL, NULL, 'purchase_categorys', 'purchase_categorys_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:15', 'Active');
INSERT INTO `sys_master_grid` VALUES (3, 'product', NULL, 'create-product', 'Product List', 'SELECT\r\n	products.products_id,\r\n	products.products_name as `Name`,\r\n	product_categorys.product_categorys_name as Category,\r\n	products.description,\r\n	products.operational_group as `group`,\r\n	products.operational_type as `type`,\r\n	products.default_unit_price as `price`,\r\n	products.reorder_qty as `Reorder Qty`,\r\n	products.minimum_order_qty as `Min Order`,\r\n	products.default_uom AS UOM,\r\n  products.`status`', 'FROM\r\n	products\r\nLEFT JOIN product_categorys ON products.product_categorys_id = product_categorys.product_categorys_id', NULL, NULL, NULL, 'ORDER BY products.products_name ASC', NULL, 'products', 'products.products_id', 'product_dropdown_search', '1', 'products.products_name,products.operational_group,products.operational_type,product_categorys.product_categorys_name', 'Name,Category,group', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:16', 'Active');
INSERT INTO `sys_master_grid` VALUES (4, 'hr_emp_list', 'hr_emp_list', 'hr_emp_list', 'Employee List', 'SELECT\r\n	`sys_users`.`id`,\r\n	`sys_users`.`name`,\r\n	`sys_users`.`email`,\r\n	`sys_users`.`mobile`,\r\n	`sys_users`.`user_code`,\r\n	`hr_emp_categorys`.`hr_emp_category_name`,\r\n	`hr_emp_units`.`hr_emp_unit_name`,\r\n	`hr_emp_units`.`hr_emp_unit_name`,\r\n	`designations`.`designations_name`,\r\n	`departments`.`departments_name`,\r\n	`hr_emp_grades`.`hr_emp_grade_name`,\r\n	`hr_emp_sections`.`hr_emp_section_name`,\r\n	`sys_users`.`status`', 'FROM\r\n	`sys_users`\r\nLEFT JOIN `hr_emp_categorys` ON `sys_users`.`hr_emp_categorys_id` = `hr_emp_categorys`.`hr_emp_categorys_id`\r\nLEFT JOIN `hr_emp_units` ON `sys_users`.`hr_emp_units_id` = `hr_emp_units`.`hr_emp_units_id`\r\nLEFT JOIN `designations` ON `sys_users`.`designations_id` = `designations`.`designations_id`\r\nLEFT JOIN `departments` ON `sys_users`.`departments_id` = `departments`.`departments_id`\r\nLEFT JOIN `hr_emp_grades` ON `sys_users`.`hr_emp_grades_id` = `hr_emp_grades`.`hr_emp_grades_id`\r\nLEFT JOIN `hr_emp_sections` ON `sys_users`.`hr_emp_sections_id` = `hr_emp_sections`.`hr_emp_sections_id`', 'WHERE\r\n	`is_employee` = 1\r\nAND `sys_users`.`status` != \'Inactive\'', NULL, NULL, 'ORDER BY\r\n	`id` DESC', NULL, 'sys_users', 'id', 'employee_list', '1', NULL, 'user_id', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:17', 'Active');
INSERT INTO `sys_master_grid` VALUES (5, 'requisition_list', 'requisition_list', NULL, NULL, 'SELECT\r\n	`purchase_requisitions`.`purchase_requisitions_id`,\r\n	`purchase_requisitions`.`purchase_requisitions_code` AS requisitions_code,\r\n	`purchase_requisitions`.`expected_delivery_date` AS expected_delivery,\r\n	`purchase_categorys`.`purchase_categorys_name` AS requisition_type,\r\n	`a`.`name` AS `initiator`,\r\n	`purchase_requisitions`.`created_at` AS `created_date`,\r\n	`sys_delegation_conf`.`step_name` AS `delegation_step`,\r\n	`b`.`name` AS `delegation_location`,\r\n	`purchase_requisitions`.`delegation_initialized` AS send_for_approval,\r\n	`purchase_requisitions`.`delegation_final_approved` AS approved_at,\r\n	`sys_status_flows`.`status_flows_name` AS `status`,\r\n	`purchase_requisitions`.`requisition_for`,\r\n	`purchase_requisitions`.`requisition_status` AS `requisition_status`', 'FROM\r\n	`purchase_requisitions`\r\nINNER JOIN `purchase_categorys` ON `purchase_categorys`.`purchase_categorys_id` = `purchase_requisitions`.`purchase_categorys_id`\r\nINNER JOIN `sys_status_flows` ON `sys_status_flows`.`status_flows_id` = `purchase_requisitions`.`requisition_status`\r\nINNER JOIN `sys_users` AS `a` ON `a`.`id` = `purchase_requisitions`.`created_by`\r\nLEFT JOIN `sys_users` AS `b` ON `b`.`id` = `purchase_requisitions`.`delegation_person`\r\nLEFT JOIN `sys_delegation_conf` ON `purchase_requisitions`.`delegation_for` = `sys_delegation_conf`.`delegation_for`\r\nAND `purchase_requisitions`.`delegation_ref_event_id` = `sys_delegation_conf`.`ref_event_id`\r\nAND `purchase_requisitions`.`delegation_version` = `sys_delegation_conf`.`delegation_version`\r\nAND `purchase_requisitions`.`delegation_step` = `sys_delegation_conf`.`step_number`', 'WHERE\r\n	`purchase_requisitions`.`status` = \'Active\'', 'GROUP BY\r\n	`purchase_requisitions`.`purchase_requisitions_id`', NULL, 'ORDER BY\r\n	`purchase_requisitions`.`purchase_requisitions_id` DESC', NULL, 'purchase_requisitions', 'purchase_requisitions_id', 'purchase_requisition_list', '1, 10,12,13', NULL, 'requisition_status,requisitions_code', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:18', 'Active');
INSERT INTO `sys_master_grid` VALUES (6, 'vendorwise_cslist_for_po', 'vendorwise_cslist_for_po', NULL, NULL, 'SELECT\r\n	`purchase_cs`.`vendors_id`,\r\n	`vendors`.`vendors_name`,\r\n	`vendors`.`vendors_code`,\r\n	purchase_cs.purchase_cs_id,\r\n	(\r\n		SELECT\r\n			COUNT(\r\n				DISTINCT purchase_cs.purchase_cs_id\r\n			)\r\n		FROM\r\n			purchase_cs pc\r\n		WHERE\r\n			pc.vendors_id = purchase_cs.vendors_id\r\n		AND pc.purchase_cs_status = 8\r\n		AND pc.purchase_orders_code IS NULL\r\n		GROUP BY\r\n			pc.vendors_id\r\n	) AS total_cs,\r\n	(\r\n		SELECT\r\n			COUNT(\r\n				DISTINCT purchase_cs.products_id\r\n			)\r\n		FROM\r\n			purchase_cs pc\r\n		WHERE\r\n			pc.vendors_id = purchase_cs.vendors_id\r\n		AND pc.purchase_cs_status = 8\r\n		AND pc.purchase_orders_code IS NULL\r\n		GROUP BY\r\n			pc.vendors_id\r\n	) AS product_items,\r\nCONCAT(SUM(purchase_cs.cs_approve_qty ), \' \', `purchase_cs`.`uom_name`)  AS total_product', 'FROM\r\n	`purchase_cs`\r\nINNER JOIN `vendors` ON `purchase_cs`.`vendors_id` = `vendors`.`vendors_id`', 'WHERE\r\n	`purchase_cs`.`purchase_cs_status` IN (8)\r\n\r\nAND `purchase_cs`.`is_selected` = 1\r\nAND `purchase_cs`.`status` = \'Active\'\r\nAND purchase_cs.purchase_orders_code IS NULL', 'GROUP BY\r\n	`purchase_cs`.`vendors_id`', NULL, NULL, NULL, 'purchase_cs', 'purchase_cs_id', 'new_po', '1,2', NULL, 'vendors_id', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:20', 'Active');
INSERT INTO `sys_master_grid` VALUES (7, 'cswise_cslist_for_po', 'cswise_cslist_for_po', NULL, NULL, 'SELECT\r\n	`purchase_cs`.`cs_id`,\r\n	`purchase_cs`.`purchase_cs_id`,\r\n	sys_users.`name` AS creator,\r\n	CONCAT(\r\n		SUM(purchase_cs.cs_approve_qty),\r\n		\' \',\r\n		`purchase_cs`.`uom_name`\r\n	) AS total_product,\r\n	SUM(purchase_cs.proposed_price) AS total_price,\r\n	`purchase_cs`.`created_at`', 'FROM\r\n	`purchase_cs`\r\nINNER JOIN `vendors` ON `purchase_cs`.`vendors_id` = `vendors`.`vendors_id`\r\nINNER JOIN `sys_users` ON `purchase_cs`.`created_by` = `sys_users`.`id`', 'WHERE\r\n	`purchase_cs`.`purchase_cs_status` IN (8)\r\nAND `purchase_cs`.`is_selected` = 1\r\nAND `purchase_cs`.`status` = \"Active\"', 'GROUP BY\r\n	`purchase_cs`.`purchase_cs_id`', NULL, NULL, NULL, 'purchase_cs', 'cs_id', 'new_po', '1', NULL, 'purchase_cs_id', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:21', 'Active');
INSERT INTO `sys_master_grid` VALUES (8, 'purchase_order_list', NULL, NULL, 'Purchase Order List', 'SELECT\r\n	`purchase_orders`.`purchase_orders_id`,\r\n	`purchase_orders`.`purchase_orders_code` AS po_no,\r\n	`purchase_orders`.`po_case`,\r\n	`purchase_orders`.`created_at` AS po_created_date,\r\n	CASE\r\nWHEN `purchase_orders`.`po_case` = \'CS\' THEN\r\n	`purchase_orders`.`po_case_value`\r\nELSE\r\n	\'\'\r\nEND AS CS_NO,\r\n `vendors`.`vendors_name` AS vendor,\r\n `vendors`.`vendors_code` AS vendor_code,\r\n `purchase_orders`.`request_delivery_date` AS request_date,\r\n `purchase_orders`.`delivery_date`,\r\n `purchase_orders`.`purchase_type`,\r\n CONCAT(\r\n	`purchase_orders`.`purchase_value`, \r\n	\' \',\r\n	`purchase_orders`.`currency_code`\r\n) AS total_amount,\r\n `purchase_orders`.`delegation_initialized` AS sent_for_approval,\r\n `purchase_orders`.`delegation_final_approved` AS approved_at,\r\n `sys_users`.`username` AS delegation_location,\r\n `sys_status_flows`.`status_flows_name` AS `status`,\r\n\r\n `purchase_orders`.`po_case_value`,\r\n `vendors`.`vendors_id`,\r\n `purchase_orders`.`po_status`', '\r\nFROM\r\n	`purchase_orders`\r\nINNER JOIN `vendors` ON `purchase_orders`.`vendors_id` = `vendors`.`vendors_id`\r\nINNER JOIN `sys_status_flows` ON `purchase_orders`.`po_status` = `sys_status_flows`.`status_flows_id`\r\nLEFT JOIN `sys_users` ON `purchase_orders`.`delegation_reliever_id` = `sys_users`.`id`\r\nLEFT JOIN `sys_delegation_conf` ON `purchase_orders`.`delegation_for` = `sys_delegation_conf`.`delegation_for`\r\nAND `purchase_orders`.`delegation_ref_event_id` = `sys_delegation_conf`.`ref_event_id`\r\nAND `purchase_orders`.`delegation_version` = `sys_delegation_conf`.`delegation_version`\r\nAND `purchase_orders`.`delegation_step` = `sys_delegation_conf`.`step_number`', 'WHERE\r\n	`purchase_orders`.`status` = \'Active\' AND `purchase_orders`.`po_case` != \'DPI\'', 'GROUP BY\r\n	`purchase_orders`.`purchase_orders_id`,\r\n	`purchase_orders`.`purchase_orders_code`,\r\n	`sys_users`.`username`', NULL, 'ORDER BY\r\n	`purchase_orders`.`purchase_orders_id` DESC', NULL, 'purchase_orders', 'purchase_orders_id', 'po_list', '1,16,17,18', NULL, 'po_no,po_status,po_case,purchase_type,po_case_value', 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:23', 'Active');
INSERT INTO `sys_master_grid` VALUES (9, 'pi_list', NULL, NULL, NULL, 'SELECT\r\n	`purchase_pis`.`purchase_pi_id` as pi_id, \r\n	`purchase_pis`.`purchase_pis_code` as pi_no, \r\n	`purchase_pis`.`pi_case` as pi_case,\r\n	`purchase_pis`.`purchase_orders_code` as po_no, \r\n	`purchase_pis`.`purchase_cs_id` as cs_no,\r\n	`purchase_pis`.`pi_date` as pi_date, \r\n	`vendors`.`vendors_id`,\r\n	`vendors`.`vendors_name`,\r\n	`vendors`.`vendors_code`,	\r\n	`sys_delegation_conf`.`step_name`,\r\n	`sys_users`.`username`,\r\n	`sys_status_flows`.`status_flows_name`,\r\n	`currencys`.`short_name`,\r\n	`purchase_pis`.`pi_status` AS `status`', 'FROM\r\n	`purchase_pis`\r\nINNER JOIN `vendors` ON `purchase_pis`.`vendors_id` = `vendors`.`vendors_id`\r\nLEFT JOIN `sys_status_flows` ON `purchase_pis`.`pi_status` = `sys_status_flows`.`status_flows_id`\r\nLEFT JOIN `sys_users` ON `purchase_pis`.`delegation_reliever_id` = `sys_users`.`id`\r\nLEFT JOIN `currencys` ON `currencys`.`currencys_id` = `purchase_pis`.`pi_currency`\r\nLEFT JOIN `sys_delegation_conf` ON `purchase_pis`.`delegation_for` = `sys_delegation_conf`.`delegation_for`\r\nAND `purchase_pis`.`delegation_ref_event_id` = `sys_delegation_conf`.`ref_event_id`\r\nAND `purchase_pis`.`delegation_version` = `sys_delegation_conf`.`delegation_version`\r\nAND `purchase_pis`.`delegation_step` = `sys_delegation_conf`.`step_number`', 'WHERE\r\n	`purchase_pis`.`status` = \"Active\"', NULL, NULL, NULL, NULL, 'purchase_pis', 'pi_id', NULL, '1,7,9,13,14', NULL, 'pi_id,pi_no,pi_case,po_no,cs_no,status', 0, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:24', 'Active');
INSERT INTO `sys_master_grid` VALUES (10, 'stock_statement', NULL, NULL, NULL, 'SELECT	\r\n	product_stock_log.product_stock_log_id,\r\n	product_stock_log.date,\r\n	warehouses.warehouses_name as warehouse,\r\n	products.products_name,\r\n	get_opening_stock(product_stock_log.products_id, product_stock_log.date, product_stock_log.warehouses_id) as opening_stock,	\r\n	SUM(product_stock_log.stockin_qty) AS stock_in,\r\n  SUM(product_stock_log.transfer_qty) AS transfer,\r\n  SUM(product_stock_log.sold_qty) AS sold,\r\n  SUM(product_stock_log.used_qty) AS used,	\r\nSUM(\r\n		get_opening_stock(product_stock_log.products_id, product_stock_log.date, product_stock_log.warehouses_id)+product_stock_log.stockin_qty - ( product_stock_log.transfer_qty + product_stock_log.sold_qty + product_stock_log.used_qty )\r\n	) AS closing_stock', 'FROM\r\nproduct_stock_log\r\nINNER JOIN products ON product_stock_log.products_id = products.products_id\r\nINNER JOIN warehouses ON product_stock_log.warehouses_id = warehouses.warehouses_id', 'WHERE\r\nproduct_stock_log.status = \'Active\'', 'GROUP BY\r\n	product_stock_log.products_id, product_stock_log.date, product_stock_log.warehouses_id', NULL, NULL, NULL, 'product_stock_log', 'product_stock_log_id', 'stock_statement', '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:49:28', 'Active');
INSERT INTO `sys_master_grid` VALUES (142, 'law_lawyers', 'law_lawyers', 'law_lawyers', 'lawyer List', 'SELECT\r\nlaw_lawyers.law_lawyers_id,\r\nlaw_lawyers.law_lawyers_name name,\r\nlaw_lawyers.contacts,\r\nlaw_lawyers.address,\r\nlaw_lawyers.post_code,\r\nlaw_lawyers.city,\r\nlaw_lawyers.description,\r\nlaw_lawyers.`status`', 'FROM law_lawyers', NULL, NULL, NULL, NULL, NULL, 'law_lawyers', 'law_lawyers_id', NULL, '1', 'law_lawyers.law_lawyers_name', NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-24 16:27:44', 'Active');
INSERT INTO `sys_master_grid` VALUES (143, 'law_notaries', 'law_notaries', 'law_notaries', 'Notary List', 'SELECT\r\nlaw_notaries.law_notaries_id,\r\nlaw_notaries.law_notaries_name name,\r\nlaw_notaries.contacts,\r\nlaw_notaries.address,\r\nlaw_notaries.post_code,\r\nlaw_notaries.city,\r\nlaw_notaries.description,\r\nlaw_notaries.`status`', 'FROM law_notaries', NULL, NULL, NULL, NULL, NULL, 'law_notaries', 'law_notaries_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 17:21:46', 'Active');
INSERT INTO `sys_master_grid` VALUES (144, 'law_banks', 'law_banks', 'law_banks', 'Bank List', 'SELECT\r\nlaw_banks.law_banks_id,\r\nlaw_banks.law_banks_name name,\r\nlaw_banks.description,\r\nlaw_banks.`status`', 'FROM law_banks', NULL, NULL, NULL, NULL, NULL, 'law_banks', 'law_banks_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 17:23:58', 'Active');
INSERT INTO `sys_master_grid` VALUES (146, 'law_real_states', 'law_real_states', 'law_real_states', 'Real-State List', 'SELECT\r\nlaw_real_states.law_real_states_id,\r\nlaw_real_states.law_real_states_name name,\r\nlaw_real_states.email,\r\nlaw_real_states.seller_name seller,\r\nlaw_real_states.address,\r\nlaw_real_states.post_code,\r\nlaw_real_states.city,\r\nlaw_real_states.tax_number,\r\nlaw_real_states.ami_license,\r\nlaw_real_states.phone,\r\nlaw_real_states.description,\r\nlaw_real_states.`status`', 'FROM law_real_states', NULL, NULL, NULL, NULL, NULL, 'law_real_states', 'law_real_states_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 17:26:20', 'Active');
INSERT INTO `sys_master_grid` VALUES (147, 'law_property_type', 'law_property_type', 'law_property_type', 'Property Type', 'SELECT *', 'FROM law_property_type', NULL, NULL, NULL, NULL, NULL, 'law_property_type', 'law_property_type_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-23 16:50:45', 'Active');
INSERT INTO `sys_master_grid` VALUES (148, 'test_jony', 'test_jony', 'test_jony', 'Test jony', 'SELECT\r\ntest_jony.test_jony_id,\r\ntest_jony.law_lawyers_id,\r\ntest_jony.test_jony_name,\r\ntest_jony.description,\r\ntest_jony.`status`', 'FROM test_jony', NULL, NULL, NULL, NULL, NULL, 'test_jony', 'test_jony_id', NULL, '1', NULL, NULL, 1, NULL, 0, 0, 0, 0, NULL, NULL, 0, '2019-12-26 14:17:48', 'Active');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `menus_type` enum('Main','Sub') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Main',
  `parent_menus_id` int(11) NOT NULL,
  `modules_id` int(11) NOT NULL,
  `icon_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `menu_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'value after the base url only',
  `sort_number` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, 'Lawyer', NULL, 'Main', 0, 1, 'fa fa-briefcase', 'grid/law_lawyers', 1, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (2, 'Notaries', NULL, 'Main', 0, 1, 'fa fa-file-text', 'grid/law_notaries', 2, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (3, 'Banks', NULL, 'Main', 0, 1, 'fa fa-bank', 'grid/law_banks', 3, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (4, 'Real State', NULL, 'Main', 0, 1, 'fa fa-industry', 'grid/law_real_states', 4, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (5, 'Property Manager', NULL, 'Main', 0, 1, 'fa fa-home', '#', 5, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (6, 'User/Client Manager', NULL, 'Main', 0, 1, 'fa fa-users', '#', 6, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (7, 'Create Property', NULL, 'Sub', 5, 1, 'fa fa-plus', 'property', 1, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (8, 'Property List', NULL, 'Sub', 5, 1, 'fa fa-list', 'propert-list', 2, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (9, 'User/Client Entry', NULL, 'Sub', 6, 1, 'fa fa-plus', 'client', 1, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (10, 'User/Client List', NULL, 'Sub', 6, 1, 'fa fa-list', 'client-list', 2, 0, 0, NULL, NULL, 'Active');
INSERT INTO `sys_menus` VALUES (11, 'Purchase Contract', NULL, 'Main', 0, 1, 'fa fa-handshake-o', 'contract', 7, 0, 0, NULL, NULL, 'Active');

-- ----------------------------
-- Table structure for sys_modules
-- ----------------------------
DROP TABLE IF EXISTS `sys_modules`;
CREATE TABLE `sys_modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules_icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Default color #FFF',
  `module_lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `home_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'value only after base url. Should not use the full URL',
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_modules
-- ----------------------------
INSERT INTO `sys_modules` VALUES (1, 'Admin', 'fa fa-user', 'effect-1 sub-a', 'admin', 'na', '/', 'Active');
INSERT INTO `sys_modules` VALUES (2, 'Lawyer', 'fa fa-anchor', 'effect-1 sub-b', 'lawyer', 'na', '/', 'Active');

-- ----------------------------
-- Table structure for sys_notifys
-- ----------------------------
DROP TABLE IF EXISTS `sys_notifys`;
CREATE TABLE `sys_notifys`  (
  `sys_notifys_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `generated_from` enum('System','Person') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'System',
  `generated_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Could be the person id who send this notification or could be the slug of event ref',
  `notify_to` int(10) NOT NULL COMMENT 'person id whom will notify',
  `event_for` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'event slug',
  `event_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'event slug value (id)',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url_ref` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'to specify the url location for the user for quick navigate to the particular job',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `priority` enum('5','4','3','2','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '3' COMMENT '5 = less, 4 = ok, 3 = regular, 2 = urgent, 1 = most urgent',
  `seen_status` enum('Unseen','Seen') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Unseen',
  `seen_at` datetime(0) NULL DEFAULT NULL COMMENT 'when the person seen this notification',
  `mailed` tinyint(1) NULL DEFAULT 0 COMMENT '0=not sent as mail yet',
  PRIMARY KEY (`sys_notifys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notifys
-- ----------------------------
INSERT INTO `sys_notifys` VALUES (1, 'Person', '25', 3, 'prc_req', '[\"PR19100099\"]', 'Somebody Approved a requisition and now is for you.', 'requisition-approve-list', '2019-04-03 00:00:00', '3', 'Seen', '2019-04-03 18:00:24', 0);

-- ----------------------------
-- Table structure for sys_privilege_event
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_event`;
CREATE TABLE `sys_privilege_event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A Name to identify the event. Must be meaningful. Could be duplicate. But all those duplicate for the same action. That means if multiple record found for any particular action all must be consider for access control. ',
  `event_ref` enum('sys_dropdowns','sys_master_grid') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'sys_dropdowns' COMMENT 'dropdown or grid',
  `event_key` enum('Department','Designation','Division','Branch','Unit','Section','Level') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'user_level or department or something which is stored in Session.\r\nCould be logical input. such as : \r\nDepartment OR Designation\r\nDepartment And Designation\r\n',
  `event_query` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` enum('Active','Inactive') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_event
-- ----------------------------
INSERT INTO `sys_privilege_event` VALUES (1, 'Requisition List', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (2, 'Requisition Edit', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (3, 'Purchase List', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (4, 'product_uoms', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (5, 'product_uoms', 'sys_dropdowns', 'Designation', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (7, 'Requisition List', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (8, 'products_list_details', 'sys_dropdowns', 'Branch', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (9, 'products_list_details', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (10, 'purchase_category', 'sys_dropdowns', 'Designation', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (11, 'purchase_category', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (12, 'warehouses', 'sys_dropdowns', 'Department', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (13, 'warehouses', 'sys_dropdowns', 'Branch', NULL, 'Active');
INSERT INTO `sys_privilege_event` VALUES (16, 'warehouse', 'sys_master_grid', 'Level', NULL, 'Active');

-- ----------------------------
-- Table structure for sys_privilege_items
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_items`;
CREATE TABLE `sys_privilege_items`  (
  `event_id` int(11) NOT NULL,
  `reference_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sql_where_clause` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `event_slug_key` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'the name of the field for which the value will check',
  `permission` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'for which this permission has settings',
  `no_permission` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_items
-- ----------------------------
INSERT INTO `sys_privilege_items` VALUES (4, '1,2,3', NULL, 'product_uoms_id', '1,2,3,4,5,10', NULL);
INSERT INTO `sys_privilege_items` VALUES (4, '4,55,6', NULL, 'product_uoms_id', '10', NULL);
INSERT INTO `sys_privilege_items` VALUES (4, '7,8', NULL, 'product_uoms_id', '1,5,6', NULL);
INSERT INTO `sys_privilege_items` VALUES (4, '9,10', NULL, 'product_uoms_id', 'NoAccess', '1');
INSERT INTO `sys_privilege_items` VALUES (4, '11,12,21', NULL, 'product_uoms_id', 'All', '1,5,6');
INSERT INTO `sys_privilege_items` VALUES (8, '1,2,3', NULL, 'products.operational_group', 'OPEX', NULL);
INSERT INTO `sys_privilege_items` VALUES (8, '1,2,3', NULL, 'products_in_stocks.warehouses_id', '1,3,5', NULL);
INSERT INTO `sys_privilege_items` VALUES (9, '1,2,3', NULL, 'operational_type', 'Goods', NULL);
INSERT INTO `sys_privilege_items` VALUES (8, '2', 'AND is_rawmaterial=1', 'is_rawmatarial', '', NULL);
INSERT INTO `sys_privilege_items` VALUES (11, '2', NULL, 'purchase_categorys_id', '1,2,5', NULL);
INSERT INTO `sys_privilege_items` VALUES (10, '1', NULL, 'purchase_categorys_id', 'NoAccess', '1,3,5');

-- ----------------------------
-- Table structure for sys_privilege_items_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_items_users`;
CREATE TABLE `sys_privilege_items_users`  (
  `reference_userid` int(10) NOT NULL COMMENT 'Must be a single valid userid from sys_users table',
  `event_ref` enum('sys_dropdowns','sys_master_grid') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'sys_dropdowns' COMMENT 'dropdown or grid',
  `event_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_slug_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'the name of the field for which the value will check',
  `permission` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'All = No Need to specify, forcely all privilege, NoAccess = Forcely No Access, Comma Separated ID for specific Access.',
  `no_permission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sql_where_clause` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  UNIQUE INDEX `u_user_access`(`reference_userid`, `event_slug`, `event_slug_key`, `event_ref`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_items_users
-- ----------------------------
INSERT INTO `sys_privilege_items_users` VALUES (3, 'sys_dropdowns', 'product_uoms', 'product_uoms_id', '2,4,8', NULL, NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_dropdowns', 'products_list_details', 'products.operational_group', 'OPEX,CAPEX', NULL, NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_dropdowns', 'products_list_details', 'products.products_id', 'All', '45,58', NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_dropdowns', 'product_uoms', 'product_uoms_id', 'All', '5,8,55', NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_master_grid', 'products_list', 'products.operational_type', 'Goods,Services', NULL, NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_dropdowns', 'products_uoms', 'products.operational_type', 'Goods,Services', NULL, NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_dropdowns', 'warehouses', 'warehouses_id', '1,3,7', NULL, NULL);
INSERT INTO `sys_privilege_items_users` VALUES (26, 'sys_master_grid', 'warehouse', 'warehouses_id', '3', NULL, NULL);

-- ----------------------------
-- Table structure for sys_privilege_levels
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_levels`;
CREATE TABLE `sys_privilege_levels`  (
  `users_id` int(11) NULL DEFAULT NULL,
  `user_levels_id` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `privilege_levels_user_id_user_level_id_unique`(`users_id`, `user_levels_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_levels
-- ----------------------------
INSERT INTO `sys_privilege_levels` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_privilege_menu_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_menu_users`;
CREATE TABLE `sys_privilege_menu_users`  (
  `user_id` int(11) UNSIGNED NOT NULL,
  `access_menu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `exclude_menu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_privilege_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_menus`;
CREATE TABLE `sys_privilege_menus`  (
  `menus_id` int(10) UNSIGNED NOT NULL,
  `user_levels_id` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `privilege_menus_menu_id_user_level_id_unique`(`menus_id`, `user_levels_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_menus
-- ----------------------------
INSERT INTO `sys_privilege_menus` VALUES (1, 1);
INSERT INTO `sys_privilege_menus` VALUES (2, 1);
INSERT INTO `sys_privilege_menus` VALUES (3, 1);
INSERT INTO `sys_privilege_menus` VALUES (4, 1);
INSERT INTO `sys_privilege_menus` VALUES (5, 1);
INSERT INTO `sys_privilege_menus` VALUES (6, 1);
INSERT INTO `sys_privilege_menus` VALUES (7, 1);
INSERT INTO `sys_privilege_menus` VALUES (8, 1);
INSERT INTO `sys_privilege_menus` VALUES (9, 1);
INSERT INTO `sys_privilege_menus` VALUES (10, 1);
INSERT INTO `sys_privilege_menus` VALUES (11, 1);
INSERT INTO `sys_privilege_menus` VALUES (12, 1);
INSERT INTO `sys_privilege_menus` VALUES (13, 1);
INSERT INTO `sys_privilege_menus` VALUES (14, 1);
INSERT INTO `sys_privilege_menus` VALUES (15, 1);

-- ----------------------------
-- Table structure for sys_privilege_modules
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_modules`;
CREATE TABLE `sys_privilege_modules`  (
  `modules_id` int(11) NOT NULL,
  `user_levels_id` int(11) NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privilege_modules
-- ----------------------------
INSERT INTO `sys_privilege_modules` VALUES (1, 1, 0);
INSERT INTO `sys_privilege_modules` VALUES (1, 2, 0);
INSERT INTO `sys_privilege_modules` VALUES (1, 3, 0);
INSERT INTO `sys_privilege_modules` VALUES (1, 4, 0);
INSERT INTO `sys_privilege_modules` VALUES (1, 5, 0);
INSERT INTO `sys_privilege_modules` VALUES (1, 6, 0);

-- ----------------------------
-- Table structure for sys_search_panel
-- ----------------------------
DROP TABLE IF EXISTS `sys_search_panel`;
CREATE TABLE `sys_search_panel`  (
  `search_panel_id` int(10) NOT NULL AUTO_INCREMENT,
  `search_panel_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `search_panel_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `default_search_by` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`search_panel_id`) USING BTREE,
  UNIQUE INDEX `SearchPanel`(`search_panel_slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_search_panel
-- ----------------------------
INSERT INTO `sys_search_panel` VALUES (1, 'Search Product List for choosing', 'product_dropdown_search', '1,2,3', 'werwer', 1, '2017-10-08 13:10:31', 1, '2019-06-25 15:33:14', 'Active');

-- ----------------------------
-- Table structure for sys_search_panel_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_search_panel_details`;
CREATE TABLE `sys_search_panel_details`  (
  `sys_search_panel_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `search_panel_slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column_space` tinyint(2) NULL DEFAULT 3,
  `input_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'form-control' COMMENT 'for input class',
  `label_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placeholder` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'form-label',
  `input_type` enum('dropdown','text','autocomplete','textarea','email','date','datetime','checkbox','radio','button','number','submit','date_range','number_range','text_range') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'text' COMMENT 'ex. text, combo, textarea etc',
  `operation_type` enum('WHERE EQUAL','WHERE IN','WHERE LIKE','WHERE DATERANGE','WHERE RANGE','WHERE DATETIME','HAVING EQUAL','HAVING LIKE','HAVING DATERANGE','HAVING IN','HAVING RANGE','HAVING DATETIME') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'WHERE LIKE',
  `default_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `single_compare` tinyint(1) NULL DEFAULT 0 COMMENT ' 0 for (start, condition, end) || 1 for (start, condition)',
  `sorting` tinyint(3) NULL DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `dropdown_slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dropdown_options` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `multiple` tinyint(1) NULL DEFAULT 0,
  `dropdown_view` enum('combo','grid') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'combo',
  `dropdown_grid_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autocomplete_query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`sys_search_panel_details_id`) USING BTREE,
  INDEX `master_entry`(`search_panel_slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_search_panel_details
-- ----------------------------
INSERT INTO `sys_search_panel_details` VALUES (1, 'product_dropdown_search', 4, 'products.operational_group', 'operational_group', 'form-control multi', 'Operational Group', 'Operational Group', 'form-label', 'dropdown', 'WHERE IN', NULL, 0, 2, 0, NULL, 'OPEX,CAPEX', 1, 'combo', NULL, NULL, 0, NULL, NULL, '2019-08-31 14:10:17', 'Active');
INSERT INTO `sys_search_panel_details` VALUES (2, 'product_dropdown_search', 3, 'products.products_name', 'products_id', 'form-control', 'Product Name', 'Product Name', 'form-label', 'autocomplete', 'WHERE LIKE', NULL, 0, 1, 0, NULL, NULL, 0, 'combo', NULL, 'SELECT products_name AS data_value, products_name AS data_option FROM products WHERE products_name LIKE \'%SEARCH_KEY%\'', 0, NULL, NULL, '2019-07-24 13:07:40', 'Active');
INSERT INTO `sys_search_panel_details` VALUES (3, 'product_dropdown_search', 3, 'products.operational_type', 'operational_type', 'form-control', 'Operational Type', 'Product Cost', 'form-label', 'date', 'WHERE EQUAL', NULL, 1, 3, 0, NULL, NULL, 0, 'combo', NULL, NULL, 0, NULL, NULL, '2019-08-31 14:10:33', 'Active');
INSERT INTO `sys_search_panel_details` VALUES (4, 'product_dropdown_search', 3, 'products.reorder_qty', 'reorder_qty', 'form-control', 'Reorder Qty', 'Stock Start', 'form-label', 'number_range', 'WHERE IN', NULL, 0, 1, 0, NULL, NULL, 0, 'combo', NULL, NULL, 0, NULL, NULL, '2019-08-31 14:10:38', 'Active');

-- ----------------------------
-- Table structure for sys_sms_outbox
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_outbox`;
CREATE TABLE `sys_sms_outbox`  (
  `receiver_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Mobile Number of the receiver.',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'without any content there should not any record here.',
  `created_at` datetime(0) NOT NULL,
  `created_by` enum('System Generated','Broadcasting') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'System Generated',
  `updated_at` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` enum('Forcely Send','Auto Send') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` enum('Pending','Processing','Success','Fail to Send') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pending',
  `priority` enum('5','4','3','2','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '3' COMMENT '5 = less, 4 = ok, 3 = regular, 2 = urgent, 1 = most urgent'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_status_flows
-- ----------------------------
DROP TABLE IF EXISTS `sys_status_flows`;
CREATE TABLE `sys_status_flows`  (
  `status_flows_id` int(10) NOT NULL AUTO_INCREMENT,
  `status_flows_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Must be within 40 char.',
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `parent_status_id` int(10) NULL DEFAULT NULL COMMENT 'if Null That will be the parent status',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NULL DEFAULT NULL,
  `status` enum('Inactive','Active') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`status_flows_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_system_settings
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_settings`;
CREATE TABLE `sys_system_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_group` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `option_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_system_settings
-- ----------------------------
INSERT INTO `sys_system_settings` VALUES (1, 'N/A', 'super_user_id', NULL, '1', 'Active');
INSERT INTO `sys_system_settings` VALUES (2, NULL, 'default_currency', NULL, 'BDT', 'Active');
INSERT INTO `sys_system_settings` VALUES (3, 'geo_location', 'geo_location_1', NULL, 'Zone', 'Active');
INSERT INTO `sys_system_settings` VALUES (4, 'geo_location', 'geo_location_2', NULL, 'Region', 'Active');
INSERT INTO `sys_system_settings` VALUES (5, 'geo_location', 'geo_location_3', NULL, 'Area', 'Active');
INSERT INTO `sys_system_settings` VALUES (6, 'geo_location', 'geo_location_4', NULL, 'Territory', 'Active');
INSERT INTO `sys_system_settings` VALUES (7, 'geo_location', 'geo_location_5', NULL, 'House', 'Active');
INSERT INTO `sys_system_settings` VALUES (8, 'geo_location', 'geo_location_6', NULL, 'Section', 'Active');
INSERT INTO `sys_system_settings` VALUES (9, 'geo_location', 'geo_location_7', NULL, 'Route', 'Active');
INSERT INTO `sys_system_settings` VALUES (10, 'acc_config_token', 'acc_config_token', NULL, '1', 'Active');
INSERT INTO `sys_system_settings` VALUES (11, 'draft_limit', 'purchase_requisitions', NULL, '3', 'Active');
INSERT INTO `sys_system_settings` VALUES (12, 'draft_limit', 'purchase_cs', NULL, '4', 'Active');
INSERT INTO `sys_system_settings` VALUES (14, 'dddddddd', 'dddddddd', NULL, 'd7744', 'Active');
INSERT INTO `sys_system_settings` VALUES (15, NULL, 'company_name', NULL, 'SR Chemical Industries Ltd', 'Active');
INSERT INTO `sys_system_settings` VALUES (17, NULL, 'ceo_user_code', NULL, '1001', 'Active');

-- ----------------------------
-- Table structure for sys_unique_id_logic
-- ----------------------------
DROP TABLE IF EXISTS `sys_unique_id_logic`;
CREATE TABLE `sys_unique_id_logic`  (
  `id_for` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A unique name why system need id?',
  `slug` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pre_fix` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Max 3 Char',
  `year_enable` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'if enable 2Digit YY will add in the id.',
  `month_enable` tinyint(1) NOT NULL DEFAULT 0,
  `reserve_digit` int(2) NOT NULL DEFAULT 0 COMMENT 'if reserve digit > 0 there must be a logic for that',
  `reserve_logic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'could be a query or any user define 3 digit character',
  `id_length` int(10) NOT NULL DEFAULT 6 COMMENT 'default 6 digit ID',
  `key_separator` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'could be hyphen or slash',
  `delegation_trigger` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'SQL' COMMENT 'any thing define by the user. could be department or designation or location',
  `session_variable` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'must be a session variable name',
  `trigger_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delegation_version` int(2) NOT NULL DEFAULT 1 COMMENT 'current version should update every time while new process flow define',
  `operation_function` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the name of function (placed in delegationHelper) where the status change occure additional operation during the final approval or status change',
  `after_approve_status` int(10) NULL DEFAULT NULL COMMENT 'an id from sys_status_flow table',
  `initiate_approve_status` int(10) NULL DEFAULT NULL COMMENT 'an id from sys_status_flow table',
  `after_decline_status` int(10) NULL DEFAULT NULL COMMENT 'an id from sys_status_flow table if it is declined',
  `ref_db_table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'database table name where the delegation information has to update',
  `ref_id_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'could be primary key field name or the unique key field name of the referance db table',
  `ref_status_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'referance db table status field',
  `sql_calc_amount` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'a sql from where system cosider the value in case of limit wise approval and its anonymus field name must be amount and dynamic variable must be @generated_id(thats means purchase requisition cod or something) ',
  PRIMARY KEY (`id_for`) USING BTREE,
  UNIQUE INDEX `u_slug`(`slug`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'any thing define by the user. could be department or designation or location' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_unique_id_logic
-- ----------------------------
INSERT INTO `sys_unique_id_logic` VALUES ('Asset Code', 'asset_code', 'AS', 0, 0, 0, '', 6, '-', '', '', '', 1, '', 76, 75, 77, 'fam_maint_requests', 'fam_requests_no', 'maint_req_statuses_id', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Asset Requisition  Code', 'req_code', 'REQ', 0, 0, 0, '', 6, '-', '', '', '', 1, '', 76, 75, 77, 'fam_maint_requests', 'fam_requests_no', 'maint_req_statuses_id', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Bonus Code', 'hr_bonus', 'BNS', 1, 0, 0, NULL, 6, '-', 'Location', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'hr_emp_bonus', 'emp_bonus_code', NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Challan Code', 'ch_code', 'CH', 1, 1, 0, NULL, 6, '-', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Cheque Management', 'chq_code', 'CHQ', 1, 0, 0, NULL, 6, '', 'SQL', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Comparative Statement', 'req_cs', 'CS', 1, 0, 0, '', 6, '', 'Location', 'branch_id,department_id', NULL, 1, NULL, 8, 7, 6, 'purchase_cs', 'purchase_cs_id', 'purchase_cs_status', 'SELECT sum(purchase_cs.proposed_price) AS amount FROM purchase_cs WHERE purchase_cs.purchase_cs_id = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('Employee Code', 'emp_code', 'SR', 0, 0, 0, NULL, 6, '-', NULL, 'branch_id,department_id', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Gate Pass', 'g_pass', 'GP', 1, 1, 0, NULL, 6, '-', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('HR Increment', 'hr_inc', 'HR', 1, 0, 0, NULL, 6, '', 'Location', 'branch_id,department_id', NULL, 1, NULL, 50, 49, 48, 'hr_employee_record_logs', 'hr_employee_record_logs_id', 'hr_log_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('HR Leave', 'hr_leave', 'HRL', 1, 0, 0, NULL, 6, '', 'Location', 'branch_id', NULL, 1, NULL, 64, 63, 62, 'hr_leave_records', 'hr_leave_records_id', 'leave_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('HR Transfer', 'hr_tfr', 'HRT', 1, 0, 0, '', 6, '', 'Location', 'branch_id,department_id', NULL, 1, NULL, 60, 59, 58, 'hr_employee_record_logs', 'hr_employee_record_logs_id', 'hr_transfer_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Invoice', 'invoice', 'INV', 1, 1, 0, '', 5, '-', '', '', '', 1, NULL, NULL, NULL, NULL, '', '', '', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Item Code', 'item_code', 'IC', 1, 0, 0, NULL, 6, '-', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('LC', 'prc_lc', 'LC', 1, 0, 0, '', 6, '', 'Location', 'branch_id,department_id', NULL, 1, NULL, 18, 17, 16, 'purchase_lcs', 'purchase_lcs_code', 'lc_status', 'SELECT purchase_lcs.lc_value FROM purchase_lcs WHERE purchase_lcs.purchase_lcs_code = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('PI Approval', 'pi_app', 'PIA', 1, 0, 0, NULL, 6, '', 'Location', 'branch_id', NULL, 1, NULL, 70, 69, 68, 'purchase_pis', 'purchase_pis_code', 'pi_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('PI Number', 'pi_no', 'PI', 1, 0, 0, NULL, 6, '', NULL, 'branch_id,department_id', NULL, 1, NULL, NULL, NULL, NULL, 'purchase_pis', 'purchase_pis_id', NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Price List', 'price_list', 'PL', 1, 1, 0, NULL, 6, '-', 'Location', 'branch_id,department_id', NULL, 1, NULL, 43, 44, 42, 'price_list', 'price_list_code', 'price_list_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Purchase Order', 'prc_ord', 'PO', 1, 0, 0, NULL, 6, '-', 'Location', 'branch_id,department_id', NULL, 1, NULL, 12, 11, 10, 'purchase_orders', 'purchase_orders_code', 'po_status', 'SELECT purchase_orders.purchase_value as amount FROM purchase_orders WHERE purchase_orders.purchase_orders_code = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('Purchase Requisition', 'prc_req', 'PR', 1, 0, 0, NULL, 6, '', 'SQL', 'branch_id,department_id', 'SELECT purchase_categorys_id as job_value from purchase_requisitions WHERE purchase_requisitions_code=@job_code', 1, NULL, 4, 3, 2, 'purchase_requisitions', 'purchase_requisitions_code', 'requisition_status', 'SELECT Sum(purchase_requisition_details.item_total_price) AS amount FROM purchase_requisitions LEFT JOIN purchase_requisition_details ON purchase_requisition_details.purchase_requisitions_id = purchase_requisitions.purchase_requisitions_id WHERE purchase_requisitions.purchase_requisitions_code = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('Sales Order', 'sls_ord', 'SO', 1, 1, 3, 'user_type_id', 6, '-', 'Location', 'branch_id,department_id', NULL, 1, NULL, 32, 31, 30, 'sales_order', 'sales_code', 'sales_order_status', 'SELECT\r\n	Sum(\r\n		sales_order.order_value\r\n	) AS amount\r\nFROM\r\n	sales_order\r\nWHERE\r\n	sales_order.sales_code = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('Sales Order Pi', 'sls_ord_pi', 'SOP', 1, 1, 3, 'user_type_id', 6, '-', 'Location', 'branch_id,department_id', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Sales Requisition', 'sls_req', 'SRQ', 1, 1, 0, NULL, 6, '/', 'Location', 'branch_id,department_id', NULL, 1, NULL, 4, 3, 2, 'purchase_requisitions', 'purchase_requisitions_code', 'requisition_status', NULL);
INSERT INTO `sys_unique_id_logic` VALUES ('Stock Received', 'stk_rec', 'ST', 1, 1, 0, '', 5, '-', '', '', NULL, 1, NULL, NULL, NULL, NULL, '', '', '', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Stock Requisition', 'stc_req', 'SR', 1, 0, 0, '', 6, '', 'Location', 'branch_id,department_id', NULL, 1, NULL, 28, 27, 26, 'stock_requisition', 'stock_requisitions_code', 'requisition_status', 'SELECT Sum(stock_requisition_details.item_total_price) AS amount FROM stock_requisitions LEFT JOIN stock_requisition_details ON stock_requisition_details.stock_requisitions_id = stock_requisitions.stock_requisitions_id WHERE stock_requisitions.stock_requisitions_code = @generated_id');
INSERT INTO `sys_unique_id_logic` VALUES ('Vendor Code', 'vnd_code', 'VC', 1, 1, 0, '', 5, '-', '', '', NULL, 1, NULL, NULL, NULL, NULL, '', '', '', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Voucher', 'vr_code', 'VR', 1, 1, 0, '', 6, '-', '', '', NULL, 1, NULL, NULL, NULL, NULL, '', '', '', '');
INSERT INTO `sys_unique_id_logic` VALUES ('Working Shift', 'hr_shift', 'HWS', 1, 0, 0, NULL, 6, '', 'Location', 'branch_id,department_id', NULL, 1, 'shiftChangeApply', 56, 55, 55, 'hr_emp_vs_shift_log', 'hr_emp_vs_shift_log_id', 'shift_status', NULL);

-- ----------------------------
-- Table structure for sys_user_levels
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_levels`;
CREATE TABLE `sys_user_levels`  (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_level_id` int(4) NULL DEFAULT NULL COMMENT 'To manage sub level',
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `created_at` date NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` int(10) NOT NULL DEFAULT 1 COMMENT 'usually admin will create this record',
  `updated_by` int(10) NULL DEFAULT NULL,
  `min_username_length` int(2) NOT NULL DEFAULT 8 COMMENT 'default 8 char username ',
  `max_username_length` int(2) NOT NULL DEFAULT 25 COMMENT 'maximum allowed char in the username',
  `multi_login_allow` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'default not allow',
  `max_wrong_login_attemp` int(1) NOT NULL DEFAULT 3 COMMENT 'action perform after 3 time wrong password. 0 for unlimited try',
  `wrong_login_attemp` enum('No Restriction','Blocked','Block for a Period') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'No Restriction',
  `block_period` int(4) NULL DEFAULT 30 COMMENT 'minute number for login block if wrong login attempt is \"blocked for a period\"',
  `session_time_out` int(3) NOT NULL DEFAULT 30 COMMENT '30 min is the default time. input must be in minuite. For unlimited session please input 0',
  `password_regEx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_regEx_error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_expiry_notify` int(3) NOT NULL DEFAULT 15 COMMENT 'How many days earlier notify will activated.',
  `password_expiry_duration` int(3) NOT NULL DEFAULT 90 COMMENT '90 days is the default. input must be in day. Use 0 for unlimited validity',
  `password_expiry_action` enum('Notify','Force') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Notify',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_levels_user_level_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_levels
-- ----------------------------
INSERT INTO `sys_user_levels` VALUES (1, 'Admin', NULL, NULL, 'Active', NULL, NULL, 0, NULL, 8, 25, 1, 3, 'Blocked', 1, 30, '^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$', 'Minimum eight characters, at least one letter and one number.', 15, 999, 'Notify');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Employee ID',
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_employee` tinyint(1) NULL DEFAULT 0 COMMENT '0 for system user  ; 1 for employee (also can use system)',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-','') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` enum('Female','Male') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Male',
  `marital_status` enum('Married','Unmarried','Devorced','Widow','Single') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `father_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mother_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NID or Birth certificate id will store in this same field',
  `tin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passport` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '/img/users/Avatar.png',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Present Address',
  `last_login` datetime(0) NULL DEFAULT NULL,
  `date_of_join` date NULL DEFAULT NULL,
  `default_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default_module_id` int(3) NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_changed_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `wrong_attempts_count` int(10) NULL DEFAULT 0,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT 0,
  `status` enum('Active','Inactive','Resignation','Termination','Absconding','Separated','Retirement') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `uk_sys_users_user_code`(`user_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'All user could be an employee but all employee not be an user. So all information in this table consider as employee information.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, '1001', 'nirjhar', 'nirjhar@gmail.com', '$2y$10$Mdpv8wuH7XyOR7OsA.0fQ.Qo6X5zwiitDLxe4LycvegQYRT5IxdVS', '', 0, 'Nirjhar Mandal', NULL, '+8801855149196', '1993-01-04', '', 'Male', 'Married', '', '', '', '', '', '', '/img/users/1.jpg', 'Nikunjo, Uttra, Dhaka', NULL, '2019-01-07', '', 1, 'cT7pdcsvcFMDxA8bc0Pj1Csxl4J8ysCjoSvO8vydYtPs67j5gfjyxi1IGIaT', '2020-01-01 03:50:27', 0, NULL, '2019-05-05 11:15:53', '2020-01-01 15:51:13', 1, 'Active');

-- ----------------------------
-- Table structure for test_jony
-- ----------------------------
DROP TABLE IF EXISTS `test_jony`;
CREATE TABLE `test_jony`  (
  `test_jony_id` int(10) NOT NULL AUTO_INCREMENT,
  `law_lawyers_id` int(10) NULL DEFAULT NULL,
  `test_jony_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` int(10) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(10) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` enum('Active','Inactive') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Active',
  PRIMARY KEY (`test_jony_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_jony
-- ----------------------------
INSERT INTO `test_jony` VALUES (1, 1, 'Masum', NULL, 1, '2019-12-26 00:00:00', NULL, '2019-12-26 14:15:26', 'Active');

SET FOREIGN_KEY_CHECKS = 1;
