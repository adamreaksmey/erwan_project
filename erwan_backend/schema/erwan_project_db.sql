/*
 Navicat Premium Data Transfer

 Source Server         : adamreaksmey
 Source Server Type    : MySQL
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : erwan_project_db

 Target Server Type    : MySQL
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 15/04/2023 06:07:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for excelconfig
-- ----------------------------
DROP TABLE IF EXISTS `excelconfig`;
CREATE TABLE `excelconfig`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nights_stayed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `unit_price_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount_price_row_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of excelconfig
-- ----------------------------
INSERT INTO `excelconfig` VALUES (1, 'A21', 'B15', 'B17', 'B21', 'C21', 'D21', 'E21', 'D34', 'E34', '2023-04-14 11:38:19', '2023-04-14 16:00:10', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for importedfile
-- ----------------------------
DROP TABLE IF EXISTS `importedfile`;
CREATE TABLE `importedfile`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `number_nights_stayed` bigint NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `total_revenue` float NULL DEFAULT NULL,
  `reservation_number` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8943 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of importedfile
-- ----------------------------
INSERT INTO `importedfile` VALUES (8764, 'HubbyWifey_testing2', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001685);
INSERT INTO `importedfile` VALUES (8765, 'Ravi patel', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001686);
INSERT INTO `importedfile` VALUES (8766, 'Sotheara Suk', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001687);
INSERT INTO `importedfile` VALUES (8767, 'phok samphos', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.71, 20220001688);
INSERT INTO `importedfile` VALUES (8768, 'Jiwen Zhang', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.71, 20220001689);
INSERT INTO `importedfile` VALUES (8769, 'Khojiakbar Botiraliev', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001690);
INSERT INTO `importedfile` VALUES (8770, 'Yoshihisa Saegusa', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.71, 20220001691);
INSERT INTO `importedfile` VALUES (8771, 'Vannak', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001692);
INSERT INTO `importedfile` VALUES (8772, 'Yao Coitinho', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001693);
INSERT INTO `importedfile` VALUES (8773, 'harvey o\'hagan', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001694);
INSERT INTO `importedfile` VALUES (8774, 'david e', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.42, 20220001695);
INSERT INTO `importedfile` VALUES (8775, 'Boxerman', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001696);
INSERT INTO `importedfile` VALUES (8776, 'Alicia Bassa', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.71, 20220001697);
INSERT INTO `importedfile` VALUES (8777, 'Maryam Maghnouj', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001698);
INSERT INTO `importedfile` VALUES (8778, 'Srey Rat', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 30, 20220001699);
INSERT INTO `importedfile` VALUES (8779, 'Watson', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11, 20220001700);
INSERT INTO `importedfile` VALUES (8780, 'ClÃ©ment Edde', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.7, 20220001701);
INSERT INTO `importedfile` VALUES (8781, 'Amadeus', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.64, 20220001702);
INSERT INTO `importedfile` VALUES (8782, 'roman gabriel', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001703);
INSERT INTO `importedfile` VALUES (8783, 'Serey Rosa', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 30.44, 20220001704);
INSERT INTO `importedfile` VALUES (8784, 'Prasert Ngoenthai', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24.64, 20220001705);
INSERT INTO `importedfile` VALUES (8785, 'Fukuda Joji', 5, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 67.34, 20220001706);
INSERT INTO `importedfile` VALUES (8786, 'Jivon', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24, 20220001707);
INSERT INTO `importedfile` VALUES (8787, 'Sudarikov Nicholai', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.94, 20220001708);
INSERT INTO `importedfile` VALUES (8788, 'Anastasiia Chizhova', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.94, 20220001709);
INSERT INTO `importedfile` VALUES (8789, 'Put', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001710);
INSERT INTO `importedfile` VALUES (8790, 'Sochyvonn Nora', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 37.17, 20220001711);
INSERT INTO `importedfile` VALUES (8791, 'young moo kim', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.56, 20220001712);
INSERT INTO `importedfile` VALUES (8792, 'Leroy Kington', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 23.42, 20220001713);
INSERT INTO `importedfile` VALUES (8793, 'Sarah Mannel-Gogler', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 54.69, 20220001714);
INSERT INTO `importedfile` VALUES (8794, 'Kry Horn', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001715);
INSERT INTO `importedfile` VALUES (8795, 'Kry Horn', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001716);
INSERT INTO `importedfile` VALUES (8796, 'Pankratov Anrey', 9, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 100, 20220001717);
INSERT INTO `importedfile` VALUES (8797, 'valentina cortinez', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 40.5, 20220001718);
INSERT INTO `importedfile` VALUES (8798, 'Amandine Robert', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 47.4, 20220001719);
INSERT INTO `importedfile` VALUES (8799, 'Manoj Mathew', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.25, 20220001720);
INSERT INTO `importedfile` VALUES (8800, 'Fialon paquerette', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 36.46, 20220001721);
INSERT INTO `importedfile` VALUES (8801, 'Chamtal Radier', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001722);
INSERT INTO `importedfile` VALUES (8802, 'Taner', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001723);
INSERT INTO `importedfile` VALUES (8803, 'Wade Gargan', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001724);
INSERT INTO `importedfile` VALUES (8804, 'Kuch Ravuth', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11, 20220001725);
INSERT INTO `importedfile` VALUES (8805, 'Marie Astrid Le Horgne', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001726);
INSERT INTO `importedfile` VALUES (8806, 'Firth', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001727);
INSERT INTO `importedfile` VALUES (8807, 'Philipp Metzner', 7, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 70, 20220001728);
INSERT INTO `importedfile` VALUES (8808, 'Myron perrigan', 8, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 145.84, 20220001729);
INSERT INTO `importedfile` VALUES (8809, 'Taner', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001730);
INSERT INTO `importedfile` VALUES (8810, 'Florian Lambert', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001731);
INSERT INTO `importedfile` VALUES (8811, 'Andrea Andrea -', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 52.34, 20220001732);
INSERT INTO `importedfile` VALUES (8812, 'Nathan Thomson', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24.78, 20220001733);
INSERT INTO `importedfile` VALUES (8813, 'Tobias Wilson', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 23.12, 20220001734);
INSERT INTO `importedfile` VALUES (8814, 'Chamtal Radier', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24, 20220001735);
INSERT INTO `importedfile` VALUES (8815, 'Anke Fries', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.02, 20220001736);
INSERT INTO `importedfile` VALUES (8816, 'Seoung Ho Park', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001737);
INSERT INTO `importedfile` VALUES (8817, 'Florian Lambert', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 28.88, 20220001738);
INSERT INTO `importedfile` VALUES (8818, 'Dominika BÅ‚ochowiak', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 35.1, 20220001739);
INSERT INTO `importedfile` VALUES (8819, 'Philipp Metzner', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.29, 20220001740);
INSERT INTO `importedfile` VALUES (8820, 'Goktug Taner', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.68, 20220001741);
INSERT INTO `importedfile` VALUES (8821, 'Emily Hailey', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 49.2, 20220001742);
INSERT INTO `importedfile` VALUES (8822, 'Stewart Firth', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 35.13, 20220001743);
INSERT INTO `importedfile` VALUES (8823, 'Rachana', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001744);
INSERT INTO `importedfile` VALUES (8824, 'Sor', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 15, 20220001745);
INSERT INTO `importedfile` VALUES (8825, 'Julie Robbins', 12, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 156, 20220001746);
INSERT INTO `importedfile` VALUES (8826, 'Jenny Lee Jenny Lee', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 17, 20220001747);
INSERT INTO `importedfile` VALUES (8827, 'Jenny Lee Jenny Lee', 7, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 133.84, 20220001748);
INSERT INTO `importedfile` VALUES (8828, 'Phaly', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 18, 20220001749);
INSERT INTO `importedfile` VALUES (8829, 'CÃ©cile Le Morvan', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 46.77, 20220001750);
INSERT INTO `importedfile` VALUES (8830, 'Gogoi Jugal', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 40.03, 20220001751);
INSERT INTO `importedfile` VALUES (8831, 'StÃ©phanie ADAINE JEAN-PIERRE', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 67.5, 20220001752);
INSERT INTO `importedfile` VALUES (8832, 'Panha Sam', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.25, 20220001753);
INSERT INTO `importedfile` VALUES (8833, 'Khmer call', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 16, 20220001754);
INSERT INTO `importedfile` VALUES (8834, 'Kazushi Owari', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.25, 20220001755);
INSERT INTO `importedfile` VALUES (8835, 'Song Ly', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 32, 20220001756);
INSERT INTO `importedfile` VALUES (8836, 'Sopheaktra', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 32, 20220001757);
INSERT INTO `importedfile` VALUES (8837, 'Bunthorng', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001758);
INSERT INTO `importedfile` VALUES (8838, 'Ellen van Caspel', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001759);
INSERT INTO `importedfile` VALUES (8839, 'Lorenz', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001760);
INSERT INTO `importedfile` VALUES (8840, 'Lise Ellen van Caspel', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 85, 20220001761);
INSERT INTO `importedfile` VALUES (8841, 'Florian VÃ©gleur', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 18, 20220001762);
INSERT INTO `importedfile` VALUES (8842, 'chihiro kobayashi', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10.32, 20220001763);
INSERT INTO `importedfile` VALUES (8843, 'Christopher Hicks', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24.3, 20220001764);
INSERT INTO `importedfile` VALUES (8844, 'Khiev Sovanara', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.15, 20220001765);
INSERT INTO `importedfile` VALUES (8845, 'Shoichiro yamada', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 8.99, 20220001766);
INSERT INTO `importedfile` VALUES (8846, 'LICHI KONG', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.15, 20220001767);
INSERT INTO `importedfile` VALUES (8847, 'Lukas Lorenz', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.64, 20220001768);
INSERT INTO `importedfile` VALUES (8848, 'Monyputhy Ly', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 40.5, 20220001769);
INSERT INTO `importedfile` VALUES (8849, 'Pascal', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001770);
INSERT INTO `importedfile` VALUES (8850, 'Korn Chanthorn', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60.75, 20220001771);
INSERT INTO `importedfile` VALUES (8851, 'Elliott Eve', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.71, 20220001772);
INSERT INTO `importedfile` VALUES (8852, 'cÃ©line Mertens', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 41.06, 20220001773);
INSERT INTO `importedfile` VALUES (8853, 'Tamas', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 58, 20220001774);
INSERT INTO `importedfile` VALUES (8854, 'Yuchhay Sam', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 11.15, 20220001775);
INSERT INTO `importedfile` VALUES (8855, 'Keisuke Takagi', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.42, 20220001776);
INSERT INTO `importedfile` VALUES (8856, 'Cato RognsÃ¸', 6, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 115.02, 20220001777);
INSERT INTO `importedfile` VALUES (8857, 'Alice Schicks', 6, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 86.02, 20220001778);
INSERT INTO `importedfile` VALUES (8858, 'Simon Normanton', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60.94, 20220001779);
INSERT INTO `importedfile` VALUES (8859, 'stephen james smith', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 50, 20220001780);
INSERT INTO `importedfile` VALUES (8860, 'Beatrix Sudar', 9, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 153.81, 20220001781);
INSERT INTO `importedfile` VALUES (8861, 'Thomas Gaubin', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 58.74, 20220001782);
INSERT INTO `importedfile` VALUES (8862, 'BOSS', 300, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001783);
INSERT INTO `importedfile` VALUES (8863, 'Sros', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001784);
INSERT INTO `importedfile` VALUES (8864, 'Khojiakbar Botiraliev', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001785);
INSERT INTO `importedfile` VALUES (8865, 'Khojiakbar Botiraliev', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.02, 20220001786);
INSERT INTO `importedfile` VALUES (8866, 'Ravi Patel', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12.39, 20220001787);
INSERT INTO `importedfile` VALUES (8867, 'Ewarn friend', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001788);
INSERT INTO `importedfile` VALUES (8868, 'Panha Nhe', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 24, 20220001789);
INSERT INTO `importedfile` VALUES (8869, 'Claudia Galera', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 41.31, 20220001790);
INSERT INTO `importedfile` VALUES (8870, 'Phat', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001791);
INSERT INTO `importedfile` VALUES (8871, 'dennis hartling', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001792);
INSERT INTO `importedfile` VALUES (8872, 'Sheffer', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 30, 20220001793);
INSERT INTO `importedfile` VALUES (8873, 'Dara', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001794);
INSERT INTO `importedfile` VALUES (8874, 'Alicia Bassa', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001795);
INSERT INTO `importedfile` VALUES (8875, 'young moo kim', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001796);
INSERT INTO `importedfile` VALUES (8876, 'young moo kim', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001797);
INSERT INTO `importedfile` VALUES (8877, 'Sithon Sithon', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 54.85, 20220001798);
INSERT INTO `importedfile` VALUES (8878, 'Kry Horn', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001799);
INSERT INTO `importedfile` VALUES (8879, 'Phat', 5, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 50, 20220001800);
INSERT INTO `importedfile` VALUES (8880, 'Kiny', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001801);
INSERT INTO `importedfile` VALUES (8881, 'Claudia Sheffer', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 38.26, 20220001802);
INSERT INTO `importedfile` VALUES (8882, 'santolini', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 15, 20220001803);
INSERT INTO `importedfile` VALUES (8883, 'Nathan Schenique', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 45, 20220001804);
INSERT INTO `importedfile` VALUES (8884, 'tito', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001805);
INSERT INTO `importedfile` VALUES (8885, 'LOEUHM LANH', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001806);
INSERT INTO `importedfile` VALUES (8886, 'KIET', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 56, 20220001807);
INSERT INTO `importedfile` VALUES (8887, 'Nathan Schenique', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 40.5, 20220001808);
INSERT INTO `importedfile` VALUES (8888, 'KUCH RAVUTH', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001809);
INSERT INTO `importedfile` VALUES (8889, 'Weerapat Muadthip', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001810);
INSERT INTO `importedfile` VALUES (8890, 'Pankratov Anrey', 6, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60, 20220001811);
INSERT INTO `importedfile` VALUES (8891, 'Choeurt Rasmey', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001812);
INSERT INTO `importedfile` VALUES (8892, 'Erwan guest', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 10, 20220001813);
INSERT INTO `importedfile` VALUES (8893, 'Chen Enyi', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 21.06, 20220001814);
INSERT INTO `importedfile` VALUES (8894, 'ISAMU SAITO', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 23.12, 20220001815);
INSERT INTO `importedfile` VALUES (8895, 'Ivar Johanns', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.25, 20220001816);
INSERT INTO `importedfile` VALUES (8896, 'Yanghoon Ko', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 40.5, 20220001817);
INSERT INTO `importedfile` VALUES (8897, 'Rainer Amberg', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60.75, 20220001818);
INSERT INTO `importedfile` VALUES (8898, 'Bernd RÃ¤uschel', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 50.25, 20220001819);
INSERT INTO `importedfile` VALUES (8899, 'Pascal', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001820);
INSERT INTO `importedfile` VALUES (8900, 'Chanthana Sengthong', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.25, 20220001821);
INSERT INTO `importedfile` VALUES (8901, 'Julia Healey', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 50.25, 20220001822);
INSERT INTO `importedfile` VALUES (8902, 'Bunthorng', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 20220001823);
INSERT INTO `importedfile` VALUES (8903, 'Gary Eng', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 51, 20220001824);
INSERT INTO `importedfile` VALUES (8904, 'Marius Laza', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 8.99, 20220001825);
INSERT INTO `importedfile` VALUES (8905, 'Sot Chanthany', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 16, 20220001826);
INSERT INTO `importedfile` VALUES (8906, 'GÃ©rard LAURENT', 5, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60, 20220001827);
INSERT INTO `importedfile` VALUES (8907, 'GÃ©rard LAURENT', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 13.77, 20220001828);
INSERT INTO `importedfile` VALUES (8908, 'Vann Khauey', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20, 20220001829);
INSERT INTO `importedfile` VALUES (8909, 'Lida Deung', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 36, 20220001830);
INSERT INTO `importedfile` VALUES (8910, 'MASAKO OKAWA', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 81, 20220001831);
INSERT INTO `importedfile` VALUES (8911, 'Suk Sunlang', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 18, 20220001832);
INSERT INTO `importedfile` VALUES (8912, 'mizuki okada', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 28.35, 20220001833);
INSERT INTO `importedfile` VALUES (8913, 'Amaia Daguerressar', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 53.46, 20220001834);
INSERT INTO `importedfile` VALUES (8914, 'Khmer Call', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 36, 20220001835);
INSERT INTO `importedfile` VALUES (8915, 'Song Song Ly', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 52, 20220001836);
INSERT INTO `importedfile` VALUES (8916, 'Pascall', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 125, 20220001837);
INSERT INTO `importedfile` VALUES (8917, 'Hana Kauerova', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 23.8, 20220001838);
INSERT INTO `importedfile` VALUES (8918, 'Kim Sochankakneka', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 28.35, 20220001839);
INSERT INTO `importedfile` VALUES (8919, 'Bettina', 6, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 300, 20220001840);
INSERT INTO `importedfile` VALUES (8920, 'Khojiakbar Botiraliev', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 15, 20220001841);
INSERT INTO `importedfile` VALUES (8921, 'Veasna', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 12, 20220001842);
INSERT INTO `importedfile` VALUES (8922, 'Nick Kii', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 16.2, 20220001843);
INSERT INTO `importedfile` VALUES (8923, 'Victoria Therese Berglund Hanssen', 3, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 63, 20220001844);
INSERT INTO `importedfile` VALUES (8924, 'Art Ourn', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 25, 20220001845);
INSERT INTO `importedfile` VALUES (8925, 'Youngkyu Joseph Ju', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 20.4, 20220001846);
INSERT INTO `importedfile` VALUES (8926, 'Kuch Ravuth', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 30, 20220001847);
INSERT INTO `importedfile` VALUES (8927, 'SENG SAKPHURIM', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 46, 20220001848);
INSERT INTO `importedfile` VALUES (8928, 'Roth Chhum', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 54, 20220001849);
INSERT INTO `importedfile` VALUES (8929, 'Ringo', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 60, 20220001850);
INSERT INTO `importedfile` VALUES (8930, 'Vary', 4, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 120, 20220001851);
INSERT INTO `importedfile` VALUES (8931, 'Rithy Chey', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 76.96, 20220001852);
INSERT INTO `importedfile` VALUES (8932, 'Vibol', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 30, 20220001853);
INSERT INTO `importedfile` VALUES (8933, 'Karen Lesley Taylor Burge Karen Lesley Taylor Burge', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34.42, 20220001854);
INSERT INTO `importedfile` VALUES (8934, 'Nophealey Sarom', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 36.46, 20220001855);
INSERT INTO `importedfile` VALUES (8935, 'Karen Lesley Taylor Burge Karen Lesley Taylor Burge', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 68.84, 20220001856);
INSERT INTO `importedfile` VALUES (8936, 'SINATH NOU', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 121.5, 20220001857);
INSERT INTO `importedfile` VALUES (8937, 'Sreypich Hong', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 27.54, 20220001858);
INSERT INTO `importedfile` VALUES (8938, 'Korean', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 28, 20220001859);
INSERT INTO `importedfile` VALUES (8939, 'Sot Chanthany', 2, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 64, 20220001860);
INSERT INTO `importedfile` VALUES (8940, 'Bonjour Laetitia', 5, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 110, 20220001861);
INSERT INTO `importedfile` VALUES (8941, 'Vann Vann', 1, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 34, 20220001862);
INSERT INTO `importedfile` VALUES (8942, NULL, NULL, '2023-04-14 16:00:17', '2023-04-14 16:00:17', 0, 0);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_file` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'erwan', 'letigre@gmail.com', '2023-04-20 11:53:18', '123456', NULL, NULL, '2023-04-14 16:00:10', 'ZJvXvbvARJ2fORDKtEHL.xls');

SET FOREIGN_KEY_CHECKS = 1;
