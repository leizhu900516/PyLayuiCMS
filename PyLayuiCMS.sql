/*
 Navicat Premium Data Transfer

 Source Server         : mac-localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : PyLayuiCMS

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 25/12/2018 21:58:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for plc_about_us
-- ----------------------------
DROP TABLE IF EXISTS `plc_about_us`;
CREATE TABLE `plc_about_us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `flag` tinyint(1) DEFAULT NULL COMMENT '1公司简介2招聘3发展历程',
  `show_image` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plc_about_us
-- ----------------------------
BEGIN;
INSERT INTO `plc_about_us` VALUES (1, '身处在前端社区的繁荣之下，我们都在有意或无意地追逐。而 layui 偏偏回望当初，奔赴在返璞归真的漫漫征途，自信并勇敢着，追寻于原生态的书写指令，试图以最简单的方式诠释高效。', 1, '/static/res/static/img/us_img1.jpg', NULL);
INSERT INTO `plc_about_us` VALUES (2, '如果眼下还是一团零星之火，那运筹帷幄之后，迎面东风，就是一场烈焰燎原吧，那必定会是一番尽情的燃烧。待，秋风萧瑟时，散作满天星辰，你看那四季轮回，正是Layui不灭的执念。', 1, '/static/res/static/img/us_img2.jpg', NULL);
INSERT INTO `plc_about_us` VALUES (3, '拥有双面的不仅是人生，还有Layui。一面极简，一面丰盈。极简是视觉所见的外在，是开发所念的简易。丰盈是倾情雕琢的内在，是信手拈来的承诺。一切本应如此，简而全，双重体验。', 1, '/static/res/static/img/us_img3.jpg', NULL);
INSERT INTO `plc_about_us` VALUES (4, '1、前端开发及维护工作；\n2、有良好的技术基础，熟悉 Web 标准，熟练掌握多种 Web 前端技术；\n3、掌握行业内流行的类库，Vue.js， React 等主流框架；\n4、参与公司前端工程的设计、研发；\n5、了解不同浏览器之间的差异，移动设备之间的差异。', 2, NULL, '前端开发工程师');
INSERT INTO `plc_about_us` VALUES (5, '2017 年 6 月\n\n我们成立了，来到了杭州西湖这个美丽的地方。', 3, '/static/res/static/img/us_img4.png', NULL);
INSERT INTO `plc_about_us` VALUES (6, '2017 年 6 月\n\n我们成立了，来到了杭州西湖这个美丽的地方。', 4, '/static/res/static/img/us_img5.png', NULL);
INSERT INTO `plc_about_us` VALUES (7, '2017 年 6 月\n\n我们成立了，来到了杭州西湖这个美丽的地方。', 4, '/static/res/static/img/us_img6.png', NULL);
INSERT INTO `plc_about_us` VALUES (8, '2017 年 6 月\n\n我们成立了，来到了杭州西湖这个美丽的地方。', 4, '/static/res/static/img/us_img7.png', NULL);
INSERT INTO `plc_about_us` VALUES (9, '2017 年 6 月\n\n我们成立了，来到了杭州西湖这个美丽的地方。', 4, '/static/res/static/img/us_img8.png', NULL);
COMMIT;

-- ----------------------------
-- Table structure for plc_case
-- ----------------------------
DROP TABLE IF EXISTS `plc_case`;
CREATE TABLE `plc_case` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `show_image` varchar(100) DEFAULT NULL COMMENT '展示图片',
  `abstract` varchar(255) DEFAULT NULL COMMENT '简介',
  `addtime` int(10) DEFAULT NULL,
  `content` text COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1正常0无效',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='案例表';

-- ----------------------------
-- Records of plc_case
-- ----------------------------
BEGIN;
INSERT INTO `plc_case` VALUES (1, '名牌工厂店', '/static/res/static/img/case1.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (34, '名牌工厂店', '/static/res/static/img/case2.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (35, '名牌工厂店', '/static/res/static/img/case3.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (36, '名牌工厂店', '/static/res/static/img/case4.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (37, '名牌工厂店', '/static/res/static/img/case5.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (38, '名牌工厂店', '/static/res/static/img/case6.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (39, '名牌工厂店', '/static/res/static/img/case7.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (40, '名牌工厂店', '/static/res/static/img/case8.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (41, '名牌工厂店', '/static/res/static/img/case9.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (42, '名牌工厂店', '/static/res/static/img/case1.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (43, '名牌工厂店', '/static/res/static/img/case2.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (44, '名牌工厂店', '/static/res/static/img/case3.jpg', '一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。', 1545528866, NULL, 1, NULL, NULL);
INSERT INTO `plc_case` VALUES (45, '标题', 'None', '简介', 1545720925, '这是内容', 1, 'None', '关键词');
COMMIT;

-- ----------------------------
-- Table structure for plc_cookies
-- ----------------------------
DROP TABLE IF EXISTS `plc_cookies`;
CREATE TABLE `plc_cookies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cookiename` varchar(50) DEFAULT NULL,
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='登陆认证表，cookies表';

-- ----------------------------
-- Records of plc_cookies
-- ----------------------------
BEGIN;
INSERT INTO `plc_cookies` VALUES (2, 'ea15f5a2-080b-11e9-8a8d-4c32758a2537', 1545804687);
INSERT INTO `plc_cookies` VALUES (3, 'd692de86-0848-11e9-97b3-4c32758a2537', 1545830854);
COMMIT;

-- ----------------------------
-- Table structure for plc_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `plc_friend_link`;
CREATE TABLE `plc_friend_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plc_friend_link
-- ----------------------------
BEGIN;
INSERT INTO `plc_friend_link` VALUES (1, '百度', 'www.baidu.com', 1545448244);
INSERT INTO `plc_friend_link` VALUES (2, '网易', 'www.sina.com', 1545448349);
INSERT INTO `plc_friend_link` VALUES (3, '谷歌', 'www.google.com', 1545449020);
COMMIT;

-- ----------------------------
-- Table structure for plc_images
-- ----------------------------
DROP TABLE IF EXISTS `plc_images`;
CREATE TABLE `plc_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_location` varchar(50) NOT NULL DEFAULT '',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `iindex` tinyint(1) DEFAULT NULL,
  `addtimes` int(10) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plc_images
-- ----------------------------
BEGIN;
INSERT INTO `plc_images` VALUES (1, 'home.slide', '/static/res/static/img/banner1.jpg', 1, NULL, '主页滑动图片1');
INSERT INTO `plc_images` VALUES (2, 'home.slide', '/static/res/static/img/banner2.jpg', 2, NULL, '主页滑动图片2');
INSERT INTO `plc_images` VALUES (3, '', '/static/res/static/img/erweima.jpg', NULL, NULL, '底部二维码');
INSERT INTO `plc_images` VALUES (4, '', '/static/res/static/img/logo.png', NULL, NULL, '网站logo');
COMMIT;

-- ----------------------------
-- Table structure for plc_news
-- ----------------------------
DROP TABLE IF EXISTS `plc_news`;
CREATE TABLE `plc_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `show_image` varchar(100) DEFAULT NULL COMMENT '展示图片',
  `abstract` varchar(255) DEFAULT NULL COMMENT '简介',
  `addtime` int(10) DEFAULT NULL,
  `content` text COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1正常0无效',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of plc_news
-- ----------------------------
BEGIN;
INSERT INTO `plc_news` VALUES (1, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (2, '写经验交流材料的技巧全在这了！', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (3, '经验分享：我是如何做好每日计划的', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (4, '女人过了三十岁，一定要明白的12个道理', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (5, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (9, '脾气不好的妈妈好好读读这篇文章，真', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (11, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (12, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (13, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (14, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (15, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (16, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (17, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (18, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (19, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (20, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (21, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (22, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (23, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (24, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (25, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (26, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (27, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (28, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (29, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (30, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (31, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (32, '一直在你身边对你好，你却没有发现', '/static/res/static/img/news_img1.jpg', '找老婆要找爱发脾气的女人。永远不会发脾气的女人就如同一杯白开水，解渴，却无味。而发脾气的女人正如烈酒般，刺激而令人无法忘怀', NULL, '\nTA家的珍珠是用黑糖熬制的，要熬整整四个小时才行，每熬一锅黑糖只能做出40杯奶茶，好味，是值得等待的。\n\n新闻详情图\n北极光的制作，需要300g葡萄来完成，要选用最新鲜的葡萄，才能做出最灿烂的北极光。满满一瓶葡萄，看着就让人倍感满足。喝之前，要先摇9下，才能喝出最好的果味。晨曦的寓意是，清晨的阳光。要用到一整颗百香果的晨曦，喝起来酸酸甜甜，果味浓郁。晨曦喝起来果味极浓，不仅仅有百香果，还有芒果、橙汁...的味道，十分清新，彷佛夏日的一抹凉风！', 1, NULL, NULL);
INSERT INTO `plc_news` VALUES (34, '标题', '/static/res/static/img/news_img1.jpg', '简介', 1545720981, '内容', 1, 'None', '关键词');
COMMIT;

-- ----------------------------
-- Table structure for plc_products
-- ----------------------------
DROP TABLE IF EXISTS `plc_products`;
CREATE TABLE `plc_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `show_image` varchar(100) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  `content` text,
  `status` tinyint(2) DEFAULT '1',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='网站产品表';

-- ----------------------------
-- Records of plc_products
-- ----------------------------
BEGIN;
INSERT INTO `plc_products` VALUES (1, 'JS基础库', '/static/res/static/img/Product_img1.jpg', '从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。', 1545361144, NULL, 1, '/static/res/static/img/Big_icon1.png', NULL);
INSERT INTO `plc_products` VALUES (2, 'CSS处理', '/static/res/static/img/Product_img2.jpg', '从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。', 1545361144, NULL, 1, '/static/res/static/img/Big_icon2.png', NULL);
INSERT INTO `plc_products` VALUES (3, '兼容性', '/static/res/static/img/Product_img3.jpg', '从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。', 1545361144, NULL, 1, '/static/res/static/img/Big_icon3.png', NULL);
INSERT INTO `plc_products` VALUES (4, '响应式', '/static/res/static/img/Product_img4.jpg', '从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。', 1545361144, NULL, 1, '/static/res/static/img/Big_icon4.png', NULL);
COMMIT;

-- ----------------------------
-- Table structure for plc_service
-- ----------------------------
DROP TABLE IF EXISTS `plc_service`;
CREATE TABLE `plc_service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `show_image` varchar(100) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  `content` text,
  `status` tinyint(2) DEFAULT '1',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='网站服务表';

-- ----------------------------
-- Records of plc_service
-- ----------------------------
BEGIN;
INSERT INTO `plc_service` VALUES (1, '1 对 1 前端指导a', '/static/res/static/img/home_img1.jpg', '更有多个包含不同主题的Web组件a，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。', 1545361144, NULL, 1, NULL, NULL);
INSERT INTO `plc_service` VALUES (2, '1 对 1 前端指导', '/static/res/static/img/home_img2.jpg', '更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。', 1545361144, NULL, 1, NULL, NULL);
INSERT INTO `plc_service` VALUES (3, '1 对 1 前端指导', '/static/res/static/img/home_img3.jpg', '更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。', 1545361144, NULL, 1, NULL, NULL);
INSERT INTO `plc_service` VALUES (4, '1 对 1 前端指导', '/static/res/static/img/home_img4.jpg', '更有多个包含不同主题的Web组件，可快速构建界面出色、体验优秀的跨屏页面，大幅提升开发效率。', 1545361144, NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for plc_slogan
-- ----------------------------
DROP TABLE IF EXISTS `plc_slogan`;
CREATE TABLE `plc_slogan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `iindex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '位置索引',
  `addtimes` int(10) DEFAULT NULL COMMENT '添加时间',
  `desc` varchar(100) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='网站标题表';

-- ----------------------------
-- Records of plc_slogan
-- ----------------------------
BEGIN;
INSERT INTO `plc_slogan` VALUES (1, '完美网络', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (2, '完美前端体验', 0, 1545385664, NULL);
INSERT INTO `plc_slogan` VALUES (3, '专为前端而研制的', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (4, '为客户打造完美的', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (6, 'Copyright © 2016-2018  ICP 备888888号', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (7, '400-8888888   (9:00-18:00)', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (8, '88888888@163.com', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (9, '浙江杭州阿里巴巴西溪园区', 0, 1545297575, NULL);
INSERT INTO `plc_slogan` VALUES (10, 'title', 0, 1545297575, '公共部分SEO的title');
INSERT INTO `plc_slogan` VALUES (11, 'keyword', 0, 1545297575, '公共部分SEO的keyword');
INSERT INTO `plc_slogan` VALUES (12, 'description', 0, 1545297575, '公共部分SEO的description');
INSERT INTO `plc_slogan` VALUES (13, '首页', 0, NULL, '导航栏分类-首页');
INSERT INTO `plc_slogan` VALUES (14, '产品', 0, NULL, '导航栏分类-产品');
INSERT INTO `plc_slogan` VALUES (15, '动态', 0, NULL, '导航栏分类-动态');
INSERT INTO `plc_slogan` VALUES (16, '案例', 0, NULL, '导航栏分类-案例');
INSERT INTO `plc_slogan` VALUES (17, '关于', 0, NULL, '导航栏分类-关于');
INSERT INTO `plc_slogan` VALUES (18, '产品展示', 0, NULL, NULL);
INSERT INTO `plc_slogan` VALUES (19, '实时新闻', 0, NULL, NULL);
INSERT INTO `plc_slogan` VALUES (20, '成功案例', 0, NULL, NULL);
INSERT INTO `plc_slogan` VALUES (21, '关于我们', 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for plc_statistics
-- ----------------------------
DROP TABLE IF EXISTS `plc_statistics`;
CREATE TABLE `plc_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pv` int(11) DEFAULT NULL,
  `addtime` char(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plc_statistics
-- ----------------------------
BEGIN;
INSERT INTO `plc_statistics` VALUES (2, 80, '20181223');
INSERT INTO `plc_statistics` VALUES (3, 91, '20181224');
INSERT INTO `plc_statistics` VALUES (4, 59, '20181225');
COMMIT;

-- ----------------------------
-- Table structure for plc_user
-- ----------------------------
DROP TABLE IF EXISTS `plc_user`;
CREATE TABLE `plc_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plc_user
-- ----------------------------
BEGIN;
INSERT INTO `plc_user` VALUES (1, 'admin', '909ec2368a147a99f73baef873a93707', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
