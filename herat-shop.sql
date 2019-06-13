/*
 Navicat MySQL Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : herat-shop

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 13/06/2019 10:54:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner_1
-- ----------------------------
DROP TABLE IF EXISTS `banner_1`;
CREATE TABLE `banner_1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banner_2
-- ----------------------------
DROP TABLE IF EXISTS `banner_2`;
CREATE TABLE `banner_2`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` smallint(5) UNSIGNED NOT NULL,
  `page_key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'if value is zero, it will be hide else visible',
  `is_home` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = home, else = other page',
  `position` smallint(5) UNSIGNED NULL DEFAULT NULL COMMENT 'this is the order of our menu',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'index', 'herat shop', 'Home', 'herat-shop', ' <p>\r\n      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore\r\n      magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n    </p>\r\n\r\n    <p>\r\n      Sed ut dignissim ex, viverra sollicitudin nunc. Vivamus magna elit, sagittis eget condimentum ac, ullamcorper at\r\n      odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pretium non odio a pretium. Vivamus in dictum\r\n      arcu. Integer vel ligula sed orci mollis semper. Cras lobortis lacus laoreet malesuada aliquam. Suspendisse et\r\n      aliquet eros, nec sodales mi. Cras et sapien euismod, congue dolor vitae, posuere enim. Pellentesque at augue quis\r\n      est convallis pharetra sed vitae purus. Praesent sed sapien eu ex aliquam tempus nec vel lectus. Donec aliquet\r\n      enim justo, nec tincidunt libero elementum sed. Nulla vehicula neque et justo pellentesque, non blandit nisl\r\n      lacinia. Nulla consequat, ex a sagittis mattis, urna eros gravida libero, sed ultrices dolor orci quis ipsum.\r\n    </p>', 1, 1, 1);
INSERT INTO `pages` VALUES (2, 'branches', 'bran', 'Branches', 'bran', '<main class=\"main-content\">\r\n\r\n  <!-- BANNER -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/shops.jpg\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <div class=\"main-content\" id=\"main-content-2\">\r\n      <h1 id=\"header-all\">Herat shop is the first Afghan shop in Switzerland</h1>\r\n\r\n      <div class=\"second-row\">\r\n\r\n        <div class=\"bern padding\">\r\n          <h2>Address in Bern</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n            Voluptatum cum voluptate at dolorum quia voluptas,\r\n            temporibus perspiciatis quas! Quibusdam eveniet dolorum\r\n            dolor at officia itaque aliquid quis autem dicta? Ratione.</p>\r\n        </div>\r\n\r\n        <div class=\"basel padding\">\r\n          <h2>Address in Basel</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, fugit corporis maxime cum similique\r\n            nemo consequatur iste voluptatem minus voluptatum, eius, doloribus quae. Assumenda eligendi explicabo\r\n            nisi tempore blanditiis amet?</p>\r\n        </div>\r\n\r\n        <div class=\"zurich padding\">\r\n          <h2>Address in Zurich</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum eaque asperiores vitae! Deleniti ab\r\n            ratione praesentium, veniam distinctio similique quis et, nihil culpa dolore dignissimos incidunt saepe\r\n            aliquid quisquam nostrum.</p>\r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n\r\n  </section>\r\n\r\n</main>', 1, 0, 2);
INSERT INTO `pages` VALUES (3, 'about us', 'info', 'About us', 'info', '<!-- MAIN CONTENT -->\r\n<main class=\"main-content\">\r\n\r\n  <!-- BANNER-1 -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/About-Us-banner.png\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <div id=\"text-about\" class=\"main-content\" id=\"main-content-2\" id=\"text-about\">\r\n      <h1 id=\"header-all\">Herat shop is the first Afghan shop in Switzerland</h1>\r\n      <br>\r\n\r\n      <p>هرات شاپ یک فروشگاه مواد غذایی و کالای اساسی در کشور سوئیس است که با افتخار بهترین محصولات افغانستانی و ایرانی\r\n        را در سه شعبه فعال در شهرهای برن ، سیون و ویپس را به همشهریان عزیز ارائه می نماید .!</p>\r\n      <br>\r\n\r\n    </div>\r\n\r\n  </section>\r\n\r\n</main>', 1, 0, 3);
INSERT INTO `pages` VALUES (4, 'contact', 'cont', 'Contact', 'cont', '<main class=\"main-content\">\r\n\r\n  <!-- BANNER -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/contact-us-banner.jpg\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <section class=\"box\">\r\n\r\n      <div class=\"container\">\r\n        <form action=\"action_page.php\">\r\n          <h1>Please contact us if you have any thing in your mind!</h1>\r\n          <p>We will be very happy to make our things better and your idea for sure make us improve.No question is\r\n            stupid\r\n          </p>\r\n          <label for=\"fname\">Name</label>\r\n          <input type=\"text\" name=\"name\" placeholder=\"Your name..\">\r\n\r\n          <label for=\"eaddress\">Email address</label>\r\n          <input type=\"text\" name=\"email address\" placeholder=\"Your email address..\">\r\n\r\n          <label for=\"lname\">Subject</label>\r\n          <input type=\"text\" name=\"subject\" placeholder=\"About what..\">\r\n\r\n          <label for=\"subject\">Comment</label>\r\n          <textarea id=\"comment\" name=\"comment\" placeholder=\"Write something..\" style=\"height:200px\"></textarea>\r\n          <input type=\"submit\" value=\"Submit\">\r\n          <br>\r\n\r\n        </form>\r\n      </div>\r\n    </section>\r\n  </section>\r\n\r\n</main>', 1, 0, 4);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `new_price` decimal(10, 2) NOT NULL,
  `old_price` decimal(10, 2) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', './asset/image/1.jpg', 2.00, 3.00, 'Apple', '1');
INSERT INTO `products` VALUES (2, NULL, './asset/image/2.jpg', 3.00, 4.00, 'Orange', '1');
INSERT INTO `products` VALUES (3, '', './asset/image/3.jpg', 2.00, 3.00, 'Apple', '1');
INSERT INTO `products` VALUES (4, NULL, './asset/image/4.jpg', 3.00, 4.00, 'Orange', '1');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mini-site global information key',
  `settings_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `settings_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'global_title', 'Herat Shop');
INSERT INTO `settings` VALUES (2, 'description', 'The first Afghan shop in switzerland');
INSERT INTO `settings` VALUES (3, 'keywauthorords', 'afghan shop, herat shop, asian shop');
INSERT INTO `settings` VALUES (4, 'author', 'Ali Janan');
INSERT INTO `settings` VALUES (5, 'last_update', '27.05.2050');

-- ----------------------------
-- Table structure for side_nav
-- ----------------------------
DROP TABLE IF EXISTS `side_nav`;
CREATE TABLE `side_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'ali', 'ali@jenan.com', '$2y$10$RwRd.2PElBPoD5/IuKrfzePZ9iK5S2UcyzVTxBuAPoHI4asrC3JEW');
INSERT INTO `users` VALUES (2, 'awalom', 'awalom@awalom.com', '$2y$10$20MIsHAJ/npG3cZze6zoL.GSt2ImvP9zdcKCmL1mlAFMrenQ7cMF2');

SET FOREIGN_KEY_CHECKS = 1;
