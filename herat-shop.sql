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

 Date: 13/06/2019 23:53:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asian
-- ----------------------------
DROP TABLE IF EXISTS `asian`;
CREATE TABLE `asian`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'first_banner', './asset/image/meat55.jpg');
INSERT INTO `banners` VALUES (2, 'second_banner', './asset/image/banner-2.jpg');
INSERT INTO `banners` VALUES (3, 'first_image', './asset/image/spices3-.jpg');
INSERT INTO `banners` VALUES (4, 'second_image', './asset/image/sdf.jpg');
INSERT INTO `banners` VALUES (5, 'third_image', './asset/image/spices2.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '', 'Meat & Fish', 'point-up');
INSERT INTO `category` VALUES (2, '', 'Fruits', 'leaf');
INSERT INTO `category` VALUES (3, '', 'Vegetabels', 'pacman');
INSERT INTO `category` VALUES (4, '', 'Breads', 'leaf');
INSERT INTO `category` VALUES (5, '', 'Candies', 'leaf');
INSERT INTO `category` VALUES (6, '', 'Drinks', 'leaf');
INSERT INTO `category` VALUES (7, NULL, 'Sweets', 'pacman');
INSERT INTO `category` VALUES (8, NULL, 'Household', 'point-up');
INSERT INTO `category` VALUES (9, NULL, 'Shisha', 'pacman');
INSERT INTO `category` VALUES (10, NULL, 'Rice', 'leaf');
INSERT INTO `category` VALUES (11, NULL, 'Dry Fruits', 'pacman');
INSERT INTO `category` VALUES (12, NULL, 'Dishes', 'leaf');
INSERT INTO `category` VALUES (13, NULL, 'Kitchen', 'spoon-knife');
INSERT INTO `category` VALUES (14, NULL, 'Frozen Food', 'leaf');
INSERT INTO `category` VALUES (15, NULL, 'Drinks', 'leaf');
INSERT INTO `category` VALUES (16, NULL, 'Beverage', 'leaf');

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
  `visible` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'if value is zero, it will be hide else visible',
  `is_home` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = home, else = other page',
  `position` smallint(5) UNSIGNED NULL DEFAULT NULL COMMENT 'this is the order of our menu',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'index', 'Home', 'Home', 'Home', '', 1, 1, 1);
INSERT INTO `pages` VALUES (2, 'branches', 'branches of herat shop', 'Branches', 'branches-of-herat-shop', '<main class=\"main-content\">\r\n\r\n  <!-- BANNER -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/shops.jpg\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <div class=\"main-content\" id=\"main-content-2\">\r\n      <h1 id=\"header-all\">Herat shop is the first Afghan shop in Switzerland</h1>\r\n\r\n      <div class=\"second-row\">\r\n\r\n        <div class=\"bern padding\">\r\n          <h2>Address in Bern</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n            Voluptatum cum voluptate at dolorum quia voluptas,\r\n            temporibus perspiciatis quas! Quibusdam eveniet dolorum\r\n            dolor at officia itaque aliquid quis autem dicta? Ratione.</p>\r\n        </div>\r\n\r\n        <div class=\"basel padding\">\r\n          <h2>Address in Basel</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, fugit corporis maxime cum similique\r\n            nemo consequatur iste voluptatem minus voluptatum, eius, doloribus quae. Assumenda eligendi explicabo\r\n            nisi tempore blanditiis amet?</p>\r\n        </div>\r\n\r\n        <div class=\"zurich padding\">\r\n          <h2>Address in Zurich</h2>\r\n          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum eaque asperiores vitae! Deleniti ab\r\n            ratione praesentium, veniam distinctio similique quis et, nihil culpa dolore dignissimos incidunt saepe\r\n            aliquid quisquam nostrum.</p>\r\n        </div>\r\n\r\n\r\n      </div>\r\n    </div>\r\n\r\n  </section>\r\n\r\n</main>', 1, 0, 2);
INSERT INTO `pages` VALUES (3, 'about us', 'about', 'About us', 'about-our-shop', '<!-- MAIN CONTENT -->\r\n<main class=\"main-content\">\r\n\r\n  <!-- BANNER-1 -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/About-Us-banner.png\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <div id=\"text-about\" class=\"main-content\" id=\"main-content-2\" id=\"text-about\">\r\n      <h1 id=\"header-all\">Herat shop is the first Afghan shop in Switzerland</h1>\r\n      <br>\r\n\r\n      <p>هرات شاپ یک فروشگاه مواد غذایی و کالای اساسی در کشور سوئیس است که با افتخار بهترین محصولات افغانستانی و ایرانی\r\n        را در سه شعبه فعال در شهرهای برن ، سیون و ویپس را به همشهریان عزیز ارائه می نماید .!</p>\r\n      <br>\r\n\r\n    </div>\r\n\r\n  </section>\r\n\r\n</main>', 1, 0, 3);
INSERT INTO `pages` VALUES (4, 'contact', 'contact', 'Contact', 'contact-us', '<main class=\"main-content\">\r\n\r\n  <!-- BANNER -->\r\n  <section class=\"meat\">\r\n    <div class=\"padding\">\r\n      <figure><img class=\"meat-banner\" src=\"./asset/image/contact-us-banner.jpg\" alt=\"\"></figure>\r\n    </div>\r\n  </section>\r\n\r\n  <!-- PRODUCTS -->\r\n  <section class=\"products\">\r\n\r\n    <section class=\"box\">\r\n\r\n      <div class=\"container\">\r\n        <form action=\"action_page.php\">\r\n          <h1>Please contact us if you have any thing in your mind!</h1>\r\n          <p>We will be very happy to make our things better and your idea for sure make us improve.No question is\r\n            stupid\r\n          </p>\r\n          <label for=\"fname\">Name</label>\r\n          <input type=\"text\" name=\"name\" placeholder=\"Your name..\">\r\n\r\n          <label for=\"eaddress\">Email address</label>\r\n          <input type=\"text\" name=\"email address\" placeholder=\"Your email address..\">\r\n\r\n          <label for=\"lname\">Subject</label>\r\n          <input type=\"text\" name=\"subject\" placeholder=\"About what..\">\r\n\r\n          <label for=\"subject\">Comment</label>\r\n          <textarea id=\"comment\" name=\"comment\" placeholder=\"Write something..\" style=\"height:200px\"></textarea>\r\n          <input type=\"submit\" value=\"Submit\">\r\n          <br>\r\n\r\n        </form>\r\n      </div>\r\n    </section>\r\n  </section>\r\n\r\n</main>', 1, 0, 4);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `products_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `new_price` decimal(10, 2) NOT NULL,
  `old_price` decimal(10, 2) NOT NULL,
  `product_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`products_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '', './asset/image/1.jpg', 2.00, 3.00, 'Apple', '1 piece');
INSERT INTO `products` VALUES (2, NULL, './asset/image/2.jpg', 3.00, 4.00, 'Pear', '1 piece');
INSERT INTO `products` VALUES (3, '', './asset/image/3.jpg', 2.00, 3.00, 'Orange', '1 piece');
INSERT INTO `products` VALUES (4, NULL, './asset/image/4.jpg', 3.00, 4.00, 'pear Yellow', '1 piece');
INSERT INTO `products` VALUES (5, NULL, './asset/image/5.jpg', 1.00, 2.00, 'Apple Yellow', '1 piece');
INSERT INTO `products` VALUES (6, NULL, './asset/image/6.jpg', 4.00, 6.00, 'Pamigranet', '1 piece');
INSERT INTO `products` VALUES (7, NULL, './asset/image/7.jpg', 2.00, 3.00, 'Red Apple', '1 piece');
INSERT INTO `products` VALUES (8, NULL, './asset/image/8.jpg', 3.00, 5.00, 'Kirsche', '1 kg');
INSERT INTO `products` VALUES (9, NULL, './asset/image/9.jpg', 5.00, 7.00, 'Italian Kirsche', '1 kr');
INSERT INTO `products` VALUES (10, NULL, './asset/image/10.jpg', 8.00, 9.00, 'peach', '100 gr');
INSERT INTO `products` VALUES (11, NULL, './asset/image/11.jpg', 2.00, 5.00, 'Graps', '1 kg');
INSERT INTO `products` VALUES (12, NULL, './asset/image/12.jpg', 4.00, 7.00, 'Banana', '1 kg');
INSERT INTO `products` VALUES (13, NULL, './asset/image/13.jpg', 12.00, 17.00, 'Erd-bere', '1 kg');
INSERT INTO `products` VALUES (14, NULL, './asset/image/14.jpg', 4.00, 7.00, 'Swiss Apple', '100 gr');
INSERT INTO `products` VALUES (15, NULL, './asset/image/15.jpg', 1.00, 3.00, 'Swiis Graps', '100 gr');
INSERT INTO `products` VALUES (16, NULL, './asset/image/16.jpg', 14.00, 19.00, 'Afg Graps', '1 kg');
INSERT INTO `products` VALUES (17, NULL, './asset/image/17.jpg', 1.00, 2.00, 'Redbull', '1 ');
INSERT INTO `products` VALUES (18, NULL, './asset/image/18.jpg', 2.00, 4.00, 'Carabao', '1');
INSERT INTO `products` VALUES (19, NULL, './asset/image/19.jpg', 2.00, 3.00, 'Monster', '1');
INSERT INTO `products` VALUES (20, NULL, './asset/image/20.jpg', 0.45, 0.85, 'M-Budget Energy', '1');

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
