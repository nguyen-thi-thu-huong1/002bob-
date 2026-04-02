/*
Navicat MySQL Data Transfer

Source Server         : www
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : 002bob

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2025-11-19 22:40:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '活动类型',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `entitle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动内容',
  `encontent` longtext COLLATE utf8mb4_unicode_ci,
  `memo` longtext COLLATE utf8mb4_unicode_ci COMMENT '活动',
  `enmemo` longtext COLLATE utf8mb4_unicode_ci,
  `apply_count` int(11) NOT NULL DEFAULT '0' COMMENT '申请次数',
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动图片',
  `can_apply` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1可申请 0不可申请',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常 0禁用',
  `app_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1正常0禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('5', '2', '全勤奖 18888元月月回馈', null, '<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">我们很荣幸与您见证了这一路走来的点点滴滴，正是因为您的信赖与认可，我们才一直努力要求自己做得更好，我们将继续秉承&ldquo;惟有最好&rdquo;的品牌理念，以永不停息的创新精神，引领娱乐发展方向。只因您一如既往的支持与信赖，给了我们莫大的动力源泉，现金福利回馈给每一位支持TG的朋友！</span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 273px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">月有效投注</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">月存款天数</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">回馈彩金</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1万-10万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">58（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1万-10万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">88（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10万-100万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">188（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10万-100万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">288（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100万-500万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1188（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100万-500万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1388（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500万-1000万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2188（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500万-1000万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"color: #333333; font-size: 15px; text-align: center; background-color: #ffffff;\">3188（元</span>）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000万-3000万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5188（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000万-3000万</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">7188（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3000万以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10~20（天）</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8888（元）</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3000万以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">21（天）以上</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18888（元）</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、TG新老会员每月所有的有效投注额满1万元，皆可享受：最高18888元现金免费回馈。</span></p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、会员所得的现金回馈，只需达到一倍流水即可申请提款。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、回馈计算方式如：当月游戏的有效投注为688万元且共存款了18天，则可申请2188元现金回馈。</span></p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、活动根据美东时间每月1号12:00开始计算直至次月1号中午11:59<span style=\"color: #e03e2d;\">。</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">5、符合本活动当月要求的会员请于次月15号前进行申请，逾期将视为会员自动放弃此次优惠申请资格。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '2', 'images/ce5a8f96529ecb508c5011f7d5a30860.png', '1', '1', '1', '2021-10-23 23:13:22', '2022-06-26 15:11:07', 'images/f19dbf73c83e6b231bc00c58e340bcae.jpg');
INSERT INTO `activities` VALUES ('6', '5', '棋牌亏损转运金', null, '<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">山外有山，人外有人，今日棋逢对手亏损了？没关系，在棋牌中亏损300元起可申请转运金，让您越战越勇！凡是TG的新老会员只要投注棋牌游戏，以会员在当日的棋牌游戏中所产生的总亏损，并且扣除当日产生的返水和优惠做为回馈计算，赠送彩金一倍流水即可出款！</span></p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 126px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">亏损金额</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">棋牌转运金</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">300元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">亏损金额的2%</span></td>\r\n<td style=\"width: 33.3333%; height: 105px; text-align: center;\" rowspan=\"5\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">&nbsp;1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">亏损金额的3%</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">亏损金额的4%</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">亏损金额的5%</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">50000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">亏损金额的6%</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"at-detail\" style=\"box-sizing: border-box; margin: 10px 30px; padding: 0px; line-height: 26px; color: #333333; font-size: 15px; font-family: Arial, \'Microsoft JhengHei\', sans-serif; background-color: #ffffff;\">\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red;\">&nbsp;</p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red;\"><span style=\"font-family: arial, helvetica, sans-serif;\">TG会员即可参加，彩金最高可得18888元。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"font-family: arial, helvetica, sans-serif;\">亏损金额：按照当天的棋牌投注记录中的派彩为依据进行派发，会员可在电脑版会员中心查看投注记录。</span></p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red;\"><span style=\"font-family: arial, helvetica, sans-serif;\">符合条件申请的会员请在北京时间次日下午返水时间16:00之后的20小时内提交申请。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><span style=\"font-family: arial, helvetica, sans-serif;\">例：美东时间1号转运金，需要在美东时间2号4：00-美东时间2号23:59:59前申请（北京时间2号16:00-北京时间3号11:59:59）。</span></p>\r\n</div>\r\n<div class=\"at-mlu\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; height: 43px; color: #fff29b; font-size: 17px; line-height: 43px; width: 170px; text-align: center; background: url(\'img/xpj_prospirit.png\') 0px 0px / auto 43px no-repeat #ffffff; font-family: Arial, \'Microsoft JhengHei\', sans-serif;\">&nbsp;</div>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '0', 'images/682bb70f066d6a9ee4207513804dff6b.png', '1', '1', '1', '2021-10-23 23:23:07', '2021-10-24 00:16:02', 'images/c14f2c7ccfa2f8168511e1bb17554515.jpg');
INSERT INTO `activities` VALUES ('7', '6', '电子打码彩金 最高6666', null, '<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">即日起所有进行电子游艺投注的会员，不计输贏，只要每天达到1000元的有效投注，即可获得TG派送的得意彩金，最高36666元，电子激情天天乐，您还在等什么呢！</span></p>\r\n<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp; &nbsp;</span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 210px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">当日有效投注</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">得意彩金</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">6元</span></td>\r\n<td style=\"width: 33.3333%; height: 189px; text-align: center;\" rowspan=\"9\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">&nbsp;1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">16元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">36元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">30000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">86元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">80000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">166元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">300000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">566元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">800000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1066元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3000000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">6666元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10000000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">36666元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、例如：当日在电子游艺中有效投注30000元，则次日可申请获得得意彩金为86元。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、所有因任何因素被取消之注单，或中奖后彩金加码游戏所产生之单号，均不在计算范围之内。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '0', 'images/596db25bff85f9ea5267ab664ce94d3a.png', '1', '1', '1', '2021-10-23 23:32:07', '2021-10-24 00:21:40', 'images/05541d7a511468f4cf7aede906f39ea5.jpg');
INSERT INTO `activities` VALUES ('8', '6', '电子3888亏损金 祝您一臂之力', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">即日起，会员于电子游艺当周亏损金额扣除返水金额后，计算周实际负盈利可得翻本保险金最高3888元。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">按美东时间计算，星期一至星期曰为一个周期。活动期间，会员自行统计于电子游艺周结区间所产生之总亏损金额，翻本保险金表如下：</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 189px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">亏损金额</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">额外加奖</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">200元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2元</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\" rowspan=\"8\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">&nbsp;1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">28元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">58元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">288元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">588元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">50000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1888元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100000元+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3888元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">A、 会员于电子游艺当周输了5万，且当周返水金额为1.2万，计算周实际负盈利为5万-1.2=3.8万， 则会员可得翻本保险金588元。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">B、 会员于电子游艺当周输了 15万，且当周返水金额为8.4万，计算周实际负盈利为15万-8.4万=6.6万， 则会员可得翻本保险金1888元。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '0', 'images/28f1b7b44b234da7d0a6a1ae0e040c02.png', '1', '1', '1', '2021-10-23 23:36:40', '2021-10-24 00:17:02', 'images/3781b07b98a3a0e3bd72a8e9b7155ffa.jpg');
INSERT INTO `activities` VALUES ('9', '6', '电子周周领 不论输赢', null, '<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">即日起所有进行电子游艺投注的会员，不计输贏，一周内保持5天存款金额大于1000，次周即可获得TG加赠的现金大礼包，走过路过不要错过！</span></p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 42px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">天数条件</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">每日存款</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">礼包彩金</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5天以上</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">38元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">一倍流水</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '1', 'images/86ed721c3300e82b7342aa2a3f43cdec.png', '1', '1', '1', '2021-10-23 23:42:03', '2022-04-22 01:16:47', 'images/940419c9e729e21a4d4709ef50347af1.jpg');
INSERT INTO `activities` VALUES ('10', '7', '彩票娱乐 码上豪礼', '1', '<table style=\"border-collapse: collapse; width: 100%; height: 160px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">彩票有效投注</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">加赠彩金</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18元</span></td>\r\n<td style=\"width: 33.3333%; height: 139px; text-align: center;\" rowspan=\"7\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1万+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">28元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5万+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">58元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">20万+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">108元</span></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 33.3333%; height: 13px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">50万+</span></td>\r\n<td style=\"width: 33.3333%; height: 13px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">288元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">200万+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">588元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500万+</span></td>\r\n<td style=\"width: 33.3333%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">888元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"> </p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、每个会员每日只能申请一次，请在当日提交申请，逾期视为放弃。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、例如：会员当天彩票有效投注为5万，在达到5000元的时候可申请18元的彩金，则会员达到50000元有效投注时不可再申请！</span></p>', '<p>1</p>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', '<p>1</p>', '1', 'images/4cd2c01b9f2185e6beea0b347158c460.jpg', '1', '1', '1', '2021-10-23 23:46:06', '2022-07-02 00:32:33', 'images/d92a2dc5f53c854fd44ada1245393ce6.jpg');
INSERT INTO `activities` VALUES ('11', '8', '视讯亏损转运金 越玩越幸运', null, '<p><span style=\"color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;<span style=\"font-family: arial, helvetica, sans-serif;\">会员于TG真人视讯，亏损达到500以上即可参与亏损转运金活动，越玩越幸运！！</span></span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 105px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">活动项目</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">当日亏损</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">可获彩金</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">真人视讯</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8元</span></td>\r\n<td style=\"width: 25%; height: 84px; text-align: center;\" rowspan=\"4\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">真人视讯</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">68元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">真人视讯</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">30000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">188元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">真人视讯</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">588元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、打码量需达到存款3倍以上，才视为符合活动要求。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位TG会员，每天仅限申请一次，请自行计算可获彩金。</span></p>\r\n<p class=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、亏损彩金计算为美东时间，达到申请条件后请于次日提交申请。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '0', 'images/3d2b8e89ba2cbcbc2bed2d0d665723c8.png', '1', '1', '1', '2021-10-23 23:49:51', '2021-10-24 00:18:48', 'images/854400aa43075f373d41e2c562465117.png');
INSERT INTO `activities` VALUES ('12', '8', 'TG视讯 激情天天乐', null, '<p><span style=\"color: #ff0000; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">新老会员每日在【TG视讯】有效投注达到以下条件次日即可获得88888元！</span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 199px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">游戏项目</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">有效投注</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">欢乐礼金</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 178px; text-align: center;\" rowspan=\"9\"><span style=\"font-family: arial, helvetica, sans-serif;\">TG真人视讯</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3元</span></td>\r\n<td style=\"width: 25%; height: 178px; text-align: center;\" rowspan=\"9\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">50000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">38元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">58元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">188元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">288元</span></td>\r\n</tr>\r\n<tr style=\"height: 10px;\">\r\n<td style=\"width: 25%; height: 10px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2000000元+</span></td>\r\n<td style=\"width: 25%; height: 10px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">588元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5000000元+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">888元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">例:会员：tg888当日在TG真人视讯中的有效投注达到10000元，次日即可获得18彩金！</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '0', 'images/d7bfbe4ea2e7c88eaa8a527495c8be78.png', '1', '1', '1', '2021-10-23 23:58:06', '2022-04-22 01:16:11', 'images/3781b07b98a3a0e3bd72a8e9b7155ffa.jpg');
INSERT INTO `activities` VALUES ('13', '8', '视讯冲关 最高108130元', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">谁才是真正的冲关英雄！在TG进行真人视讯1000000元有效投注额即可领取视讯冲关奖金1278元！</span></p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">注：所有平台真人视讯专享，计算当月的有效投注金额，提款要求一倍流水</span></p>\r\n<p class=\"at-font-red\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: red; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"> </p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 231px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">关卡</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">当月有效投注</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">可获彩金</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">累计可获彩金</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第一关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5千+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第二关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">26元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第三关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">5万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">58元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">84元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第四关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">118元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">202元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第五关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">30万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">288元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">490元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第六关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">100万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">788元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1278元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第七关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">300万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">2188元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3466元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第八关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1000万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">6888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10354元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">第九关</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">3000万+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">29242元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">第十关<span style=\"color: #333333; font-size: 15px; text-align: center; background-color: #ffffff;\"><br /></span></span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1亿+</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">78888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">108130元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"> </p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、每关奖金只可申请一次，通关可获十关全部奖金！累计奖金<span class=\"at-font-red\" style=\"box-sizing: border-box; color: red;\">108130</span>元。会员可一次性申请多个关卡奖金，如：申请（第一关至第五关）冲关奖金。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、例如：会员当月截止到7号已累积有效投注达到5万（第三关），可申请第一关到第三关奖金：<span class=\"at-font-red\" style=\"box-sizing: border-box; color: red;\">8+18+58=84元</span> ；当月截止到15号达到100万（第六关）即可再申请第四个到第六关奖金：<span class=\"at-font-red\" style=\"box-sizing: border-box; color: red;\">118+288+788=1194元</span>！当月累计获取：84+1194=1278元，以此类推。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、每期计算方法：每月的第一天开始计算到每月最后一天。 当月申请，逾期视为放弃此项优惠。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、达到更高关卡可再次申请，最高可获十关奖金，抱得<span class=\"at-font-red\" style=\"box-sizing: border-box; color: red;\">108130</span>元大奖，当月结束将重新累计有效投注。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '1', 'images/0ab178b83ec784fdbdd21b121779ddfc.png', '1', '1', '1', '2021-10-24 00:08:04', '2022-05-24 15:41:23', 'images/940419c9e729e21a4d4709ef50347af1.jpg');
INSERT INTO `activities` VALUES ('14', '8', '视讯专享 连赢有豪礼', null, '<p><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; background-color: #ffffff;\">会员在投注真人视讯游戏，单注100元以上，连续8局以上（包含8局）连赢，即可额外获得最高88888奖金！</span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 126px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">连赢局数</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">可获彩金</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">最低投注额</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\">提款要求</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">10局</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">88元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">200元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\" rowspan=\"5\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">1倍流水</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">15局</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">188元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">300元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">20局</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">400元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">25局</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">8888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">500元</span></td>\r\n</tr>\r\n<tr style=\"height: 21px;\">\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">30局</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">18888元</span></td>\r\n<td style=\"width: 25%; height: 21px; text-align: center;\"><span style=\"color: #333333; font-family: arial, helvetica, sans-serif; font-size: 15px; text-align: center; background-color: #ffffff;\">600元</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、每位会员每天只能申请一次，计算周期按美东时间计算。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、会员连赢局数不需要连续的局牌号码，但需要会员由第一手投注起记24小时内的连赢投注。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、如参加活动过程中有退回本金或登出情况，连赢局数将重新计算。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、任何单局的投注获胜均计算在内，退还本金的投注不计算在内，投注不允许同一账号同一牌局同时做多项投注。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">5、符合申请条件的会员必须在连赢到该局且终止投注，在线提交申请，否则视为自动放弃该局红利，若申请彩金视为终止连赢局数，连赢局数清零（注：红利不累计）。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">6、当日产生的有效注单，仅限当日申请，当日投注所得注单不可作为申请次日彩金的条件。</span></p>', null, '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">1、所有优惠以人民币（CNY）为结算金额，以美东时间（EDT）为计时区间。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2、每位玩家、住址、电话、邮箱、相同支付卡/信用卡号、及共享电脑环境（例如网吧、其他公用电脑等）只能拥有一个会员享受优惠红利，如发现同一会员注册多账号行为，将收回全部优惠红利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">3、所有的活动优惠特为玩家而设，如发现任何团体或个人，以不诚实的方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人账户及账户结余的权利。</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #333333; font-family: Arial, \'Microsoft JhengHei\', sans-serif; font-size: 15px; background-color: #ffffff;\"><span style=\"font-family: arial, helvetica, sans-serif;\">4、TG保留所有解释权，在任何时候都可以更改、停止、取消优惠活动。</span></p>', null, '3', 'images/ebb025ef3eebad6bdf169e57500090f6.jpg', '1', '1', '1', '2021-10-24 00:12:49', '2022-07-05 01:35:22', 'images/d92a2dc5f53c854fd44ada1245393ce6.jpg');

-- ----------------------------
-- Table structure for activity_apply
-- ----------------------------
DROP TABLE IF EXISTS `activity_apply`;
CREATE TABLE `activity_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待审核 2通过 3拒绝',
  `check_time` datetime DEFAULT NULL COMMENT '审核时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of activity_apply
-- ----------------------------

-- ----------------------------
-- Table structure for activity_types
-- ----------------------------
DROP TABLE IF EXISTS `activity_types`;
CREATE TABLE `activity_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1可用 0禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of activity_types
-- ----------------------------
INSERT INTO `activity_types` VALUES ('2', '现金回馈', '1', '2021-04-19 00:05:45', '2021-10-23 22:52:28');
INSERT INTO `activity_types` VALUES ('5', '棋牌活动', '1', '2021-10-23 23:15:56', '2021-10-23 23:15:56');
INSERT INTO `activity_types` VALUES ('6', '电子活动', '1', '2021-10-23 23:26:52', '2021-10-23 23:26:52');
INSERT INTO `activity_types` VALUES ('7', '彩票活动', '1', '2021-10-23 23:42:37', '2021-10-23 23:42:37');
INSERT INTO `activity_types` VALUES ('8', '视讯活动', '1', '2021-10-23 23:46:38', '2021-10-23 23:46:38');
INSERT INTO `activity_types` VALUES ('9', '热门优惠', '1', '2021-10-25 10:56:11', '2021-10-25 10:56:11');
INSERT INTO `activity_types` VALUES ('10', '体育活动', '1', '2022-11-22 16:14:28', '2022-11-22 16:14:28');
INSERT INTO `activity_types` VALUES ('11', '捕鱼活动', '1', '2022-11-22 16:15:14', '2022-11-22 16:15:14');
INSERT INTO `activity_types` VALUES ('12', '电竞活动', '1', '2022-11-22 17:11:01', '2022-11-22 17:11:01');

-- ----------------------------
-- Table structure for admin_extensions
-- ----------------------------
DROP TABLE IF EXISTS `admin_extensions`;
CREATE TABLE `admin_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_extensions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_extensions
-- ----------------------------
INSERT INTO `admin_extensions` VALUES ('1', 'guanguans.dcat-login-captcha', '1.0.14', '1', null, '2022-07-30 10:24:48', '2022-07-30 10:24:56');

-- ----------------------------
-- Table structure for admin_extension_histories
-- ----------------------------
DROP TABLE IF EXISTS `admin_extension_histories`;
CREATE TABLE `admin_extension_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_extension_histories_name_index` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_extension_histories
-- ----------------------------
INSERT INTO `admin_extension_histories` VALUES ('1', 'guanguans.dcat-login-captcha', '1', '1.0.0', 'Initial release.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('2', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Add default config file.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('3', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Add annotation for facades.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('4', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Optimize `login_captcha_check` function.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('5', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Optimize captcha generate.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('6', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Optimize get setting config.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('7', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Rename `dcat_login_captcha_check`->`login_captcha_check`.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('8', 'guanguans.dcat-login-captcha', '1', '1.0.1', 'Rename `dcat_login_captcha_url`->`login_captcha_url`.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('9', 'guanguans.dcat-login-captcha', '1', '1.0.2', 'Add login_captcha_get function.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('10', 'guanguans.dcat-login-captcha', '1', '1.0.2', 'Update lang files.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('11', 'guanguans.dcat-login-captcha', '1', '1.0.2', 'Update extension alias and description.', '2022-07-30 10:24:48', '2022-07-30 10:24:48');
INSERT INTO `admin_extension_histories` VALUES ('12', 'guanguans.dcat-login-captcha', '1', '1.0.2', 'Optimize LoginCaptchaServiceProvider.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('13', 'guanguans.dcat-login-captcha', '1', '1.0.2', 'Optimize setting form.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('14', 'guanguans.dcat-login-captcha', '1', '1.0.3', 'Add CleanObContents Middleware.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('15', 'guanguans.dcat-login-captcha', '1', '1.0.4', 'Add SetResponseContentType Middleware.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('16', 'guanguans.dcat-login-captcha', '1', '1.0.4', 'Add content type setting config.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('17', 'guanguans.dcat-login-captcha', '1', '1.0.5', 'Add BootingHandler.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('18', 'guanguans.dcat-login-captcha', '1', '1.0.6', 'Rename src/BootingAdmin.php -> src/BootingHandler.php.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('19', 'guanguans.dcat-login-captcha', '1', '1.0.6', 'Remove src/Http/Controllers/CaptchaController.php`.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('20', 'guanguans.dcat-login-captcha', '1', '1.0.7', 'Optimize `buildCaptchaJsScript`.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('21', 'guanguans.dcat-login-captcha', '1', '1.0.8', 'Fix cant match routing path(#8).', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('22', 'guanguans.dcat-login-captcha', '1', '1.0.9', 'Add parameters to the `SetResponseContentType` middleware.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('23', 'guanguans.dcat-login-captcha', '1', '1.0.9', 'Update github config files.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('24', 'guanguans.dcat-login-captcha', '1', '1.0.9', 'Update phpunit/phpunit requirement from ^7.0 || ^8.0 to ^7.0 || ^8.0 || ^9.0.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('25', 'guanguans.dcat-login-captcha', '1', '1.0.9', 'Optimize booting `BootingHandler`.', '2022-07-30 10:24:49', '2022-07-30 10:24:49');
INSERT INTO `admin_extension_histories` VALUES ('26', 'guanguans.dcat-login-captcha', '1', '1.0.9', 'Optimize setting form .', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('27', 'guanguans.dcat-login-captcha', '1', '1.0.10', 'Compatible callback type.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('28', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Rename `phrase_session_key` -> `captcha_phrase_session_key`.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('29', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Generate captcha random url.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('30', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Replace `Closure routing` -> `CaptchaController`.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('31', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Bump actions/cache from 2 to 3.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('32', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Bump actions/checkout from 2 to 3.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('33', 'guanguans.dcat-login-captcha', '1', '1.0.11', 'Update overtrue/phplint requirement from ^2.3 || ^3.0 to ^2.3 || ^3.0 || ^4.0.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('34', 'guanguans.dcat-login-captcha', '1', '1.0.12', 'Bump codecov/codecov-action from 2.1.0 to 3.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('35', 'guanguans.dcat-login-captcha', '1', '1.0.12', 'Update author info.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('36', 'guanguans.dcat-login-captcha', '1', '1.0.13', 'Update JS.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('37', 'guanguans.dcat-login-captcha', '1', '1.0.14', 'Rename login_captcha_get -> login_captcha_content.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');
INSERT INTO `admin_extension_histories` VALUES ('38', 'guanguans.dcat-login-captcha', '1', '1.0.14', 'Update github config files.', '2022-07-30 10:24:50', '2022-07-30 10:24:50');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `show` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-home', '/', '', '1', '2020-11-19 00:54:08', '2021-05-19 21:45:27');
INSERT INTO `admin_menu` VALUES ('2', '0', '44', '管理设置', 'fa-address-card', null, '', '1', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('3', '2', '45', '管理员', 'fa-group', 'auth/users', '', '1', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('4', '2', '46', '角色管理', null, 'auth/roles', '', '1', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('5', '2', '47', '权限设置', null, 'auth/permissions', '', '1', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('6', '2', '48', '菜单管理', 'fa-align-justify', 'auth/menu', '', '1', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('7', '2', '49', '扩展', null, 'auth/extensions', '', '0', '2020-11-19 00:54:08', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('8', '0', '7', '会员管理', 'fa-user-o', null, '', '1', '2020-11-19 06:23:13', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('9', '8', '8', '会员列表', 'fa-user', 'users', '', '1', '2020-11-19 06:24:01', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('10', '8', '10', '会员等级', 'fa-address-book-o', 'user-vips', '', '1', '2020-11-19 16:18:54', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('11', '0', '36', '站内信', 'fa-envelope-o', 'messages', '', '1', '2020-12-16 16:04:34', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('12', '0', '13', '财务管理', 'fa-database', null, '', '1', '2020-12-17 09:32:41', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('13', '12', '14', '充值管理', null, 'recharge', '', '1', '2020-12-17 09:40:45', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('14', '12', '15', '提款审核', null, 'withdraws', '', '1', '2020-12-17 14:09:51', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('15', '0', '18', '支付设置', 'fa-bookmark-o', null, '', '1', '2020-12-17 15:47:02', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('16', '15', '21', '收款银行卡管理', null, 'pay-settings', '', '1', '2020-12-17 15:47:22', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('17', '15', '22', '银行类型', null, 'banks', '', '1', '2020-12-17 15:47:44', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('18', '15', '20', 'USDT钱包设置', null, 'pay-config', '', '0', '2020-12-18 14:45:32', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('19', '0', '28', '活动管理', 'fa-yelp', null, '', '1', '2020-12-20 12:22:39', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('20', '19', '29', '活动列表', null, 'activities', '', '1', '2020-12-20 12:23:42', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('21', '19', '30', '活动申请', null, 'activity-apply', '', '1', '2020-12-20 21:05:44', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('22', '19', '31', '活动类型', null, 'activity-types', '', '1', '2020-12-23 17:00:30', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('23', '12', '16', '额度转换记录', null, 'transfer-logs', '', '1', '2020-12-23 17:22:41', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('24', '12', '17', '财务报表', null, 'finance-report', '', '1', '2020-12-25 16:21:56', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('25', '0', '35', '下注管理', 'fa-align-right', null, '', '0', '2020-12-27 10:26:59', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('26', '8', '12', '下注记录', 'fa-align-right', 'game-records', '', '1', '2020-12-27 10:27:19', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('27', '0', '41', '接口管理', null, null, '', '0', '2020-12-28 10:28:20', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('28', '27', '42', '接口管理', null, 'apis', '', '1', '2020-12-28 10:28:30', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('29', '27', '43', '游戏列表', null, 'game-lists', '', '1', '2020-12-28 11:02:09', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('30', '0', '2', '系统设置', 'fa-cogs', null, '', '1', '2020-12-30 20:13:57', '2021-08-23 21:45:18');
INSERT INTO `admin_menu` VALUES ('31', '30', '3', '系统设置', 'fa-gear', 'system-setting', '', '1', '2020-12-30 20:14:06', '2022-04-26 10:34:06');
INSERT INTO `admin_menu` VALUES ('34', '0', '23', '代理管理', 'fa-address-book-o', null, '', '1', '2021-01-07 19:32:07', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('35', '34', '24', '代理列表', null, 'agents', '', '1', '2021-01-07 19:32:22', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('36', '34', '25', '代理申请管理', null, 'agent-applys', '', '1', '2021-02-03 14:04:35', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('37', '34', '26', '代理佣金报表', null, 'agent-commission', '', '1', '2021-02-03 14:48:21', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('38', '34', '27', '代理结算方案', null, 'agent-settlements', '', '1', '2021-02-03 15:49:46', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('43', '15', '19', '收款方式管理', null, 'code-pay', '', '1', '2021-03-31 11:08:50', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('44', '0', '32', '红包管理', 'fa-window-restore', null, '', '1', '2021-03-31 17:00:33', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('45', '44', '34', '红包管理', 'fa-file-photo-o', '/red-envelopes', '', '1', '2021-03-31 17:01:21', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('46', '30', '4', '日志管理', 'fa-file-text-o', 'user-operate-logs', '', '1', null, '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('47', '44', '33', '会员红包领取', null, 'userredpacket', '', '1', null, '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('48', '8', '11', '会员返水', 'fa fa-list', 'fanshui', '', '1', null, '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('49', '8', '9', '银行卡/USDT绑定', 'fa-credit-card', 'usercard', '', '1', null, '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('50', '0', '37', '内容管理', 'fa-clone', '/admin/activities', '', '1', '2021-05-19 21:54:03', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('54', '50', '38', '文章分类', 'fa-500px', 'articlescate', '', '1', '2021-06-23 15:23:39', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('55', '50', '39', '文章管理', 'fa-align-justify', 'articles', '', '1', '2021-06-23 15:24:10', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('56', '0', '50', '日志管理', 'fa-align-justify', null, '', '0', '2021-09-05 15:40:42', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('57', '56', '51', '会员操作日志', 'fa-circle-o', 'user-operate-logs', '', '0', '2021-09-05 15:41:37', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('58', '30', '5', 'Banner管理', 'fa-picture-o', 'banners', '', '1', '2021-09-09 11:58:58', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('59', '0', '52', '运营工具', 'fa-briefcase', null, '', '0', '2021-09-10 10:46:54', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('60', '30', '6', '数据清理', 'fa-scissors', 'clear', '', '1', '2021-09-10 10:48:28', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('61', '0', '40', '接口管理', 'fa-anchor', '', '', '1', '2022-06-12 11:55:42', '2022-06-12 11:56:11');
INSERT INTO `admin_menu` VALUES ('62', '61', '53', '接口开关', 'fa-anchor', '/apis', '', '1', '2022-10-02 11:00:23', '2022-10-02 11:00:23');
INSERT INTO `admin_menu` VALUES ('63', '61', '54', '游戏管理', 'fa-gamepad', 'game-lists', '', '1', '2022-12-03 16:14:48', '2022-12-03 16:14:50');
INSERT INTO `admin_menu` VALUES ('64', '61', '55', 'APP热门游戏', 'fa-gamepad', 'game-lists-app', '', '1', '2022-12-03 16:22:23', '2022-12-03 16:22:24');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '管理设置', '管理设置', '', '', '1', '0', '2020-12-31 19:16:09', '2021-05-19 21:47:40');
INSERT INTO `admin_permissions` VALUES ('2', '会员管理', 'users', '', '/auth/users*', '2', '1', '2020-12-31 19:16:09', '2021-05-19 21:47:02');
INSERT INTO `admin_permissions` VALUES ('3', '角色', 'roles', '', '/auth/roles*', '3', '1', '2020-12-31 19:16:09', '2021-05-19 21:46:07');
INSERT INTO `admin_permissions` VALUES ('4', '权限', 'permissions', '', '/auth/permissions*', '4', '1', '2020-12-31 19:16:09', '2021-05-19 21:46:17');
INSERT INTO `admin_permissions` VALUES ('5', '菜单', 'menu', '', '/auth/menu*', '5', '1', '2020-12-31 19:16:09', '2021-05-19 21:46:28');
INSERT INTO `admin_permissions` VALUES ('6', '扩展', 'extension', '', '/auth/extensions*', '6', '1', '2020-12-31 19:16:09', '2021-05-19 21:46:35');

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
INSERT INTO `admin_permission_menu` VALUES ('2', '50', null, null);
INSERT INTO `admin_permission_menu` VALUES ('2', '51', null, null);
INSERT INTO `admin_permission_menu` VALUES ('2', '52', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '50', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '51', null, null);
INSERT INTO `admin_permission_menu` VALUES ('3', '52', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '50', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '51', null, null);
INSERT INTO `admin_permission_menu` VALUES ('4', '52', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '50', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '51', null, null);
INSERT INTO `admin_permission_menu` VALUES ('5', '52', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '50', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '51', null, null);
INSERT INTO `admin_permission_menu` VALUES ('6', '52', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-12-31 19:16:09', '2020-12-31 19:16:09');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '50', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '51', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '52', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '54', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '55', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '61', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '5', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '6', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_settings
-- ----------------------------
DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE `admin_settings` (
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`slug`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_settings
-- ----------------------------
INSERT INTO `admin_settings` VALUES ('guanguans:dcat-login-captcha', '{\"length\":4,\"charset\":\"abcdefghijklmnpqrstuvwxyz23456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\",\"width\":150,\"height\":43,\"type\":\"png\",\"font\":null,\"fingerprint\":null,\"captcha_phrase_session_key\":\"login_captcha_phrase\"}', '2022-07-30 10:24:56', '2022-07-30 10:24:56');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$FfMto0oPwdZLy/PhfucvXexmt8sWhzr4zexOCoRNn3bvcwwruyMXy', 'Administrator', null, 'Y5TpGdtvyGdcW7NjdzVTwRHZuPQJm2a7PQO2iEV7xrANalgyJVXjpouYD7A7', '2020-12-31 19:16:09', '2022-09-30 02:17:11');

-- ----------------------------
-- Table structure for agent_apply
-- ----------------------------
DROP TABLE IF EXISTS `agent_apply`;
CREATE TABLE `agent_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_info` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待审核 2通过 3拒绝',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of agent_apply
-- ----------------------------

-- ----------------------------
-- Table structure for agent_settlements
-- ----------------------------
DROP TABLE IF EXISTS `agent_settlements`;
CREATE TABLE `agent_settlements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '方案名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '结算类型 1返点 2返佣',
  `realperson` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '真人',
  `electron` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '电子',
  `joker` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '棋牌',
  `sport` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '体育',
  `fish` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '捕鱼',
  `lottery` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '彩票',
  `e_sport` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '电竞',
  `member_fs` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '会员返水',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of agent_settlements
-- ----------------------------
INSERT INTO `agent_settlements` VALUES ('3', '默认代理方案', '2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '30.00', '1', '2021-04-30 22:46:17', '2022-06-06 23:18:58');

-- ----------------------------
-- Table structure for apis
-- ----------------------------
DROP TABLE IF EXISTS `apis`;
CREATE TABLE `apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `api_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'api代码',
  `api_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'api名称',
  `api_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'api余额',
  `game_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏类型',
  `plat_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台类型',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `app_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'app状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL COMMENT '排序',
  `app_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apis
-- ----------------------------
INSERT INTO `apis` VALUES ('1', 'CURRENCY', '通用额度', '0.00', '', '', '0', '0', '2022-09-21 15:52:50', '2022-09-24 15:01:30', '456', 'my');
INSERT INTO `apis` VALUES ('2', 'FS', 'FS电子', '0.00', '', '', '1', '1', '2022-12-10 19:25:00', '2025-11-15 00:38:07', '456', 'fs/apilogo/fs.webp');
INSERT INTO `apis` VALUES ('3', 'FSC', 'FS彩票', '0.00', '', '', '1', '1', '2022-12-10 19:25:00', '2022-12-10 19:25:00', '456', 'fs/apilogo/fsc.webp');
INSERT INTO `apis` VALUES ('4', 'TY', '天游棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:25:00', '2022-12-10 19:25:00', '456', 'fs/apilogo/ty.webp');
INSERT INTO `apis` VALUES ('5', 'PG2', 'PG电子', '0.00', '', '', '1', '1', '2022-12-10 20:08:00', '2022-12-10 20:08:00', '456', 'fs/apilogo/pg2.webp');
INSERT INTO `apis` VALUES ('6', 'EVOS', 'EVO视讯', '0.00', '', '', '1', '1', '2022-12-10 20:08:00', '2022-12-10 20:08:00', '456', 'fs/apilogo/evos.webp');
INSERT INTO `apis` VALUES ('7', 'JILI', 'JILI电子', '0.00', '', '', '1', '1', '2022-12-10 20:08:00', '2022-12-10 20:08:00', '456', 'fs/apilogo/jili.webp');
INSERT INTO `apis` VALUES ('8', 'KYL', '开元棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:25:00', '2022-12-10 19:25:00', '456', 'fs/apilogo/kyl.webp');
INSERT INTO `apis` VALUES ('9', 'PA', 'PA视讯', '0.00', '', '', '1', '1', '2022-12-10 19:26:00', '2022-12-10 19:26:00', '456', 'fs/apilogo/pa.webp');
INSERT INTO `apis` VALUES ('10', 'AB', '欧博视讯', '0.00', '', '', '1', '1', '2022-12-10 20:09:00', '2022-12-10 20:09:00', '456', 'fs/apilogo/ab.webp');
INSERT INTO `apis` VALUES ('11', 'HN', 'HN弹珠彩', '0.00', '', '', '1', '1', '2022-12-10 20:09:00', '2022-12-10 20:09:00', '456', 'fs/apilogo/hn.webp');
INSERT INTO `apis` VALUES ('12', 'AI', 'AI视讯', '0.00', '', '', '1', '1', '2022-12-10 19:26:00', '2022-12-10 19:26:00', '456', 'fs/apilogo/ai.webp');
INSERT INTO `apis` VALUES ('13', 'AOG', 'AOG斗鸡', '0.00', '', '', '1', '1', '2022-12-10 20:09:00', '2022-12-10 20:09:00', '456', 'fs/apilogo/aog.webp');
INSERT INTO `apis` VALUES ('14', 'AR', 'AR视讯', '0.00', '', '', '1', '1', '2022-12-10 19:26:00', '2022-12-10 19:26:00', '456', 'fs/apilogo/ar.webp');
INSERT INTO `apis` VALUES ('15', 'AS', '亚星视讯', '0.00', '', '', '1', '1', '2022-12-10 19:26:00', '2022-12-10 19:26:00', '456', 'fs/apilogo/as.webp');
INSERT INTO `apis` VALUES ('16', 'BBIN', '宝盈集团', '0.00', '', '', '1', '1', '2022-12-10 19:27:00', '2022-12-10 19:27:00', '456', 'fs/apilogo/bbin.webp');
INSERT INTO `apis` VALUES ('17', 'BG', '大游视讯', '0.00', '', '', '1', '1', '2022-12-10 19:27:00', '2022-12-10 19:27:00', '456', 'fs/apilogo/bg.webp');
INSERT INTO `apis` VALUES ('18', 'BL', '伯乐棋牌', '0.00', '', '', '1', '1', '2022-12-10 20:09:00', '2022-12-10 20:09:00', '456', 'fs/apilogo/bl.webp');
INSERT INTO `apis` VALUES ('19', 'BOYA', '博雅棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:27:00', '2022-12-10 19:27:00', '456', 'fs/apilogo/boya.webp');
INSERT INTO `apis` VALUES ('20', 'BP', 'BP电子', '0.00', '', '', '1', '1', '2022-12-10 19:27:00', '2022-12-10 19:27:00', '456', 'fs/apilogo/bp.webp');
INSERT INTO `apis` VALUES ('21', 'BSP', '百盛棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:28:00', '2022-12-10 19:28:00', '456', 'fs/apilogo/bsp.webp');
INSERT INTO `apis` VALUES ('22', 'BTG', 'BTG电子', '0.00', '', '', '1', '1', '2022-12-10 19:29:00', '2022-12-10 19:29:00', '456', 'fs/apilogo/btg.webp');
INSERT INTO `apis` VALUES ('23', 'CQ9', 'CQ9电子', '0.00', '', '', '1', '1', '2022-12-10 20:09:00', '2022-12-10 20:09:00', '456', 'fs/apilogo/cq9.webp');
INSERT INTO `apis` VALUES ('24', 'DBC', 'DB棋牌', '0.00', '', '', '1', '1', '2022-12-10 20:10:00', '2022-12-10 20:10:00', '456', 'fs/apilogo/dbc.webp');
INSERT INTO `apis` VALUES ('25', 'DBE', 'DB电竞', '0.00', '', '', '1', '1', '2022-12-10 19:30:00', '2022-12-10 19:30:00', '456', 'fs/apilogo/dbe.webp');
INSERT INTO `apis` VALUES ('26', 'DBF', 'DB捕鱼', '0.00', '', '', '1', '1', '2022-12-10 19:30:00', '2022-12-10 19:30:00', '456', 'fs/apilogo/dbf.webp');
INSERT INTO `apis` VALUES ('27', 'DBG', 'DB电子', '0.00', '', '', '1', '1', '2022-12-10 19:30:00', '2022-12-10 19:30:00', '456', 'fs/apilogo/dbg.webp');
INSERT INTO `apis` VALUES ('28', 'DBL', 'DB彩', '0.00', '', '', '1', '1', '2022-12-10 20:10:00', '2022-12-10 20:10:00', '456', 'fs/apilogo/dbl.webp');
INSERT INTO `apis` VALUES ('29', 'DBR', 'DB视讯', '0.00', '', '', '1', '1', '2022-12-10 20:11:00', '2022-12-10 20:11:00', '456', 'fs/apilogo/dbr.webp');
INSERT INTO `apis` VALUES ('30', 'DBS', '熊猫体育', '0.00', '', '', '1', '1', '2022-12-10 20:11:00', '2022-12-10 20:11:00', '456', 'fs/apilogo/dbs.webp');
INSERT INTO `apis` VALUES ('31', 'DP', 'DP体育', '0.00', '', '', '1', '1', '2022-12-10 20:11:00', '2022-12-10 20:11:00', '456', 'fs/apilogo/dp.webp');
INSERT INTO `apis` VALUES ('32', 'DPD', 'DP电竞', '0.00', '', '', '1', '1', '2022-12-10 19:31:00', '2022-12-10 19:31:00', '456', 'fs/apilogo/dpd.webp');
INSERT INTO `apis` VALUES ('33', 'DS', 'DS电子', '0.00', '', '', '1', '1', '2022-12-10 19:31:00', '2022-12-10 19:31:00', '456', 'fs/apilogo/ds.webp');
INSERT INTO `apis` VALUES ('34', 'DT', '大唐棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:31:00', '2022-12-10 19:31:00', '456', 'fs/apilogo/dt.webp');
INSERT INTO `apis` VALUES ('35', 'EG', '简单电子', '0.00', '', '', '1', '1', '2022-12-10 19:32:00', '2022-12-10 19:32:00', '456', 'fs/apilogo/eg.webp');
INSERT INTO `apis` VALUES ('36', 'ESB', '牛电竞', '0.00', '', '', '1', '1', '2022-12-10 19:32:00', '2022-12-10 19:32:00', '456', 'fs/apilogo/esb.webp');
INSERT INTO `apis` VALUES ('37', 'EVO', 'EVO赛马', '0.00', '', '', '1', '1', '2022-12-10 19:32:00', '2022-12-10 19:32:00', '456', 'fs/apilogo/evo.webp');
INSERT INTO `apis` VALUES ('38', 'EVOL', 'EVO视讯', '0.00', '', '', '1', '1', '2022-12-10 20:11:00', '2022-12-10 20:11:00', '456', 'fs/apilogo/evol.webp');
INSERT INTO `apis` VALUES ('39', 'FB', 'FB体育', '0.00', '', '', '1', '1', '2022-12-10 19:32:00', '2022-12-10 19:32:00', '456', 'fs/apilogo/fb.webp');
INSERT INTO `apis` VALUES ('40', 'FC', '发财电子', '0.00', '', '', '1', '1', '2022-12-10 19:33:00', '2022-12-10 19:33:00', '456', 'fs/apilogo/fc.webp');
INSERT INTO `apis` VALUES ('41', 'FG', '乐游电子', '0.00', '', '', '1', '1', '2022-12-10 20:12:00', '2022-12-10 20:12:00', '456', 'fs/apilogo/fg.webp');
INSERT INTO `apis` VALUES ('42', 'FT', '天风电子', '0.00', '', '', '1', '1', '2022-12-10 20:12:00', '2022-12-10 20:12:00', '456', 'fs/apilogo/ft.webp');
INSERT INTO `apis` VALUES ('43', 'G5', '5G电子', '0.00', '', '', '1', '1', '2022-12-10 19:33:00', '2022-12-10 19:33:00', '456', 'fs/apilogo/g5.webp');
INSERT INTO `apis` VALUES ('44', 'G568', '568win电子', '0.00', '', '', '1', '1', '2022-12-10 19:33:00', '2022-12-10 19:33:00', '456', 'fs/apilogo/g568.webp');
INSERT INTO `apis` VALUES ('45', 'GD', '高登棋牌', '0.00', '', '', '1', '1', '2022-12-10 19:33:00', '2022-12-10 19:33:00', '456', 'fs/apilogo/gd.webp');
INSERT INTO `apis` VALUES ('46', 'GMW', 'GMW电子', '0.00', '', '', '1', '1', '2022-12-10 19:34:00', '2022-12-10 19:34:00', '456', 'fs/apilogo/gmw.webp');
INSERT INTO `apis` VALUES ('47', 'HB', 'HB电子', '0.00', '', '', '1', '1', '2022-12-10 19:34:00', '2022-12-10 19:34:00', '456', 'fs/apilogo/hb.webp');
INSERT INTO `apis` VALUES ('48', 'IA', '小艾电竞', '0.00', '', '', '1', '1', '2022-12-10 19:34:00', '2022-12-10 19:34:00', '456', 'fs/apilogo/ia.webp');
INSERT INTO `apis` VALUES ('49', 'IBC', '沙巴', '0.00', '', '', '1', '1', '2022-12-10 19:34:00', '2022-12-10 19:34:00', '456', 'fs/apilogo/ibc.webp');
INSERT INTO `apis` VALUES ('50', 'IM', 'IM体育', '0.00', '', '', '1', '1', '2022-12-10 20:12:00', '2022-12-10 20:12:00', '456', 'fs/apilogo/im.webp');
INSERT INTO `apis` VALUES ('51', 'IMQP', '双赢棋牌', '0.00', '', '', '1', '1', '2022-12-10 20:13:00', '2022-12-10 20:13:00', '456', 'fs/apilogo/imqp.webp');
INSERT INTO `apis` VALUES ('52', 'JDB', 'JDB电子', '0.00', '', '', '1', '1', '2022-12-10 20:13:00', '2022-12-10 20:13:00', '456', 'fs/apilogo/jdb.webp');
INSERT INTO `apis` VALUES ('53', 'KA', 'KA电子', '0.00', '', '', '1', '1', '2022-12-10 20:13:00', '2022-12-10 20:13:00', '456', 'fs/apilogo/ka.webp');
INSERT INTO `apis` VALUES ('54', 'KM', 'KM电子', '0.00', '', '', '1', '1', '2022-12-10 20:13:00', '2022-12-10 20:13:00', '456', 'fs/apilogo/km.webp');
INSERT INTO `apis` VALUES ('55', 'KX', '凯旋棋牌', '0.00', '', '', '1', '1', '2022-12-10 20:13:00', '2022-12-10 20:13:00', '456', 'fs/apilogo/kx.webp');
INSERT INTO `apis` VALUES ('56', 'KY', '开元棋牌', '0.00', '', '', '1', '1', '2022-12-10 20:14:00', '2022-12-10 20:14:00', '456', 'fs/apilogo/ky.webp');
INSERT INTO `apis` VALUES ('57', 'KYG', '开元电子', '0.00', '', '', '0', '1', '2022-12-10 19:39:00', '2022-12-10 19:39:00', '456', 'fs/apilogo/kyg.webp');
INSERT INTO `apis` VALUES ('58', 'KYX', '开元虚拟', '0.00', '', '', '1', '1', '2022-12-10 20:14:00', '2022-12-10 20:14:00', '456', 'fs/apilogo/kyx.webp');
INSERT INTO `apis` VALUES ('59', 'L22', 'Live22电子', '0.00', '', '', '1', '1', '2022-12-10 20:14:00', '2022-12-10 20:14:00', '456', 'fs/apilogo/l22.webp');
INSERT INTO `apis` VALUES ('60', 'L568', '利记视讯', '0.00', '', '', '1', '1', '2022-12-10 19:39:00', '2022-12-10 19:39:00', '456', 'fs/apilogo/l568.webp');
INSERT INTO `apis` VALUES ('61', 'LEG', '乐游棋牌', '0.00', '', '', '0', '1', '2022-12-11 20:13:00', '2022-12-11 20:13:00', '456', 'fs/apilogo/leg.webp');
INSERT INTO `apis` VALUES ('62', 'LE', 'LEG波胆', '0.00', '', '', '1', '1', '2022-12-11 20:14:00', '2022-12-11 20:14:00', '456', 'fs/apilogo/le.webp');
INSERT INTO `apis` VALUES ('63', 'LH', 'TF雷火电竞', '0.00', '', '', '1', '1', '2022-12-11 19:39:00', '2022-12-11 19:39:00', '456', 'fs/apilogo/lh.webp');
INSERT INTO `apis` VALUES ('64', 'LK', '幸运棋牌', '0.00', '', '', '1', '1', '2022-12-11 20:14:00', '2022-12-11 20:14:00', '456', 'fs/apilogo/lk.webp');
INSERT INTO `apis` VALUES ('65', 'MG', 'MG电子', '0.00', '', '', '1', '1', '2022-12-11 20:14:00', '2022-12-11 20:14:00', '456', 'fs/apilogo/mg.webp');
INSERT INTO `apis` VALUES ('66', 'MIKI', '米奇世界', '0.00', '', '', '1', '1', '2022-12-11 19:39:00', '2022-12-11 19:39:00', '456', 'fs/apilogo/miki.webp');
INSERT INTO `apis` VALUES ('67', 'MS', 'MICRO', '0.00', '', '', '1', '1', '2022-12-12 20:13:00', '2022-12-12 20:13:00', '456', 'fs/apilogo/ms.webp');
INSERT INTO `apis` VALUES ('68', 'MT', '美天棋牌', '0.00', '', '', '1', '1', '2022-12-12 20:14:00', '2022-12-12 20:14:00', '456', 'fs/apilogo/mt.webp');
INSERT INTO `apis` VALUES ('69', 'MTLive', 'MT视讯', '0.00', '', '', '1', '1', '2022-12-12 19:39:00', '2022-12-12 19:39:00', '456', 'fs/apilogo/mtlive.webp');
INSERT INTO `apis` VALUES ('70', 'MW', '大满贯棋牌', '0.00', '', '', '1', '1', '2022-12-12 20:14:00', '2022-12-12 20:14:00', '456', 'fs/apilogo/mw.webp');
INSERT INTO `apis` VALUES ('71', 'NC', 'NC电子', '0.00', '', '', '1', '1', '2022-12-12 20:14:00', '2022-12-12 20:14:00', '456', 'fs/apilogo/nc.webp');
INSERT INTO `apis` VALUES ('72', 'NET', 'NETNT电子', '0.00', '', '', '1', '1', '2022-12-12 19:39:00', '2022-12-12 19:39:00', '456', 'fs/apilogo/net.webp');
INSERT INTO `apis` VALUES ('73', 'OG', '东方视讯', '0.00', '', '', '1', '1', '2022-12-13 20:13:00', '2022-12-13 20:13:00', '456', 'fs/apilogo/og.webp');
INSERT INTO `apis` VALUES ('74', 'PG', 'PG电子', '0.00', '', '', '1', '1', '2022-12-13 20:14:00', '2022-12-13 20:14:00', '456', 'fs/apilogo/pg.webp');
INSERT INTO `apis` VALUES ('75', 'PP', 'PP视讯', '0.00', '', '', '1', '1', '2022-12-13 19:39:00', '2022-12-13 19:39:00', '456', 'fs/apilogo/pp.webp');
INSERT INTO `apis` VALUES ('76', 'PS', 'PS电子', '0.00', '', '', '1', '1', '2022-12-13 20:14:00', '2022-12-13 20:14:00', '456', 'fs/apilogo/ps.webp');
INSERT INTO `apis` VALUES ('77', 'PT', 'PT电子', '0.00', '', '', '1', '1', '2022-12-13 20:14:00', '2022-12-13 20:14:00', '456', 'fs/apilogo/pt.webp');
INSERT INTO `apis` VALUES ('78', 'R88', 'R88电子', '0.00', '', '', '1', '1', '2022-12-13 19:39:00', '2022-12-13 19:39:00', '456', 'fs/apilogo/r88.webp');
INSERT INTO `apis` VALUES ('79', 'RT', '红虎电子', '0.00', '', '', '1', '1', '2022-12-14 20:13:00', '2022-12-14 20:13:00', '456', 'fs/apilogo/rt.webp');
INSERT INTO `apis` VALUES ('80', 'SBO', '利记体育', '0.00', '', '', '1', '1', '2022-12-14 20:14:00', '2022-12-14 20:14:00', '456', 'fs/apilogo/sbo.webp');
INSERT INTO `apis` VALUES ('81', 'SBOG', 'SBO电子', '0.00', '', '', '1', '1', '2022-12-14 19:39:00', '2022-12-14 19:39:00', '456', 'fs/apilogo/sbog.webp');
INSERT INTO `apis` VALUES ('82', 'SBOR', 'SBO-RNG电子', '0.00', '', '', '1', '1', '2022-12-14 20:14:00', '2022-12-14 20:14:00', '456', 'fs/apilogo/sbor.webp');
INSERT INTO `apis` VALUES ('83', 'SBOX', '利记虚拟体育', '0.00', '', '', '1', '1', '2022-12-14 20:14:00', '2022-12-14 20:14:00', '456', 'fs/apilogo/sbox.webp');
INSERT INTO `apis` VALUES ('84', 'Sexy', 'Sexy电子', '0.00', '', '', '1', '1', '2022-12-14 19:39:00', '2022-12-14 19:39:00', '456', 'fs/apilogo/sexy.webp');
INSERT INTO `apis` VALUES ('85', 'SG', 'SG电子', '0.00', '', '', '1', '1', '2022-12-15 20:13:00', '2022-12-15 20:13:00', '456', 'fs/apilogo/sg.webp');
INSERT INTO `apis` VALUES ('86', 'SS', '三昇', '0.00', '', '', '1', '1', '2022-12-15 20:14:00', '2022-12-15 20:14:00', '456', 'fs/apilogo/ss.webp');
INSERT INTO `apis` VALUES ('87', 'SWC', '双赢彩票', '0.00', '', '', '1', '1', '2022-12-15 19:39:00', '2022-12-15 19:39:00', '456', 'fs/apilogo/swc.webp');
INSERT INTO `apis` VALUES ('88', 'SY', '性感视讯', '0.00', '', '', '1', '1', '2022-12-15 20:14:00', '2022-12-15 20:14:00', '456', 'fs/apilogo/sy.webp');
INSERT INTO `apis` VALUES ('89', 'TP', 'TP视讯', '0.00', '', '', '1', '1', '2022-12-15 20:14:00', '2022-12-15 20:14:00', '456', 'fs/apilogo/tp.webp');
INSERT INTO `apis` VALUES ('90', 'UU', 'UU电子', '0.00', '', '', '1', '1', '2022-12-15 19:39:00', '2022-12-15 19:39:00', '456', 'fs/apilogo/uu.webp');
INSERT INTO `apis` VALUES ('91', 'VA', 'VA电子', '0.00', '', '', '1', '1', '2022-12-16 20:13:00', '2022-12-16 20:13:00', '456', 'fs/apilogo/va.webp');
INSERT INTO `apis` VALUES ('92', 'VG', '财神棋牌', '0.00', '', '', '1', '1', '2022-12-16 20:14:00', '2022-12-16 20:14:00', '456', 'fs/apilogo/vg.webp');
INSERT INTO `apis` VALUES ('93', 'VIA', 'VIA视讯', '0.00', '', '', '1', '1', '2022-12-16 19:39:00', '2022-12-16 19:39:00', '456', 'fs/apilogo/via.webp');
INSERT INTO `apis` VALUES ('94', 'VR', 'VR彩', '0.00', '', '', '1', '1', '2022-12-16 20:14:00', '2022-12-16 20:14:00', '456', 'fs/apilogo/vr.webp');
INSERT INTO `apis` VALUES ('95', 'WE', 'WE集团', '0.00', '', '', '1', '1', '2022-12-16 20:14:00', '2022-12-16 20:14:00', '456', 'fs/apilogo/we.webp');
INSERT INTO `apis` VALUES ('96', 'WG', 'WG电子', '0.00', '', '', '1', '1', '2022-12-16 19:39:00', '2022-12-16 19:39:00', '456', 'fs/apilogo/wg.webp');
INSERT INTO `apis` VALUES ('97', 'WL', '瓦力游戏', '0.00', '', '', '1', '1', '2022-12-17 20:13:00', '2022-12-17 20:13:00', '456', 'fs/apilogo/wl.webp');
INSERT INTO `apis` VALUES ('98', 'WLT', '瓦力体育', '0.00', '', '', '1', '1', '2022-12-17 20:14:00', '2022-12-17 20:14:00', '456', 'fs/apilogo/wlt.webp');
INSERT INTO `apis` VALUES ('99', 'WM', '完美视讯', '0.00', '', '', '1', '1', '2022-12-17 19:39:00', '2022-12-17 19:39:00', '456', 'fs/apilogo/wm.webp');
INSERT INTO `apis` VALUES ('100', 'WOW', 'WOW电子', '0.00', '', '', '1', '1', '2022-12-17 20:14:00', '2022-12-17 20:14:00', '456', 'fs/apilogo/wow.webp');
INSERT INTO `apis` VALUES ('101', 'WS', '万昇', '0.00', '', '', '1', '1', '2022-12-17 20:14:00', '2022-12-17 20:14:00', '456', 'fs/apilogo/ws.webp');
INSERT INTO `apis` VALUES ('102', 'WT', 'WT视讯', '0.00', '', '', '1', '1', '2022-12-17 19:39:00', '2022-12-17 19:39:00', '456', 'fs/apilogo/wt.webp');
INSERT INTO `apis` VALUES ('103', 'WTC', 'WT彩票', '0.00', '', '', '1', '1', '2022-12-18 20:13:00', '2022-12-18 20:13:00', '456', 'fs/apilogo/wtc.webp');
INSERT INTO `apis` VALUES ('104', 'WW', 'WONWON电子', '0.00', '', '', '1', '1', '2022-12-18 20:14:00', '2022-12-18 20:14:00', '456', 'fs/apilogo/ww.webp');
INSERT INTO `apis` VALUES ('105', 'XJ', '小金体育', '0.00', '', '', '1', '1', '2022-12-18 19:39:00', '2022-12-18 19:39:00', '456', 'fs/apilogo/xj.webp');
INSERT INTO `apis` VALUES ('106', 'XJC', '小金彩票', '0.00', '', '', '1', '1', '2022-12-18 20:14:00', '2022-12-18 20:14:00', '456', 'fs/apilogo/xjc.webp');
INSERT INTO `apis` VALUES ('107', 'XPG', 'XPG视讯', '0.00', '', '', '1', '1', '2022-12-18 20:14:00', '2022-12-18 20:14:00', '456', 'fs/apilogo/xpg.webp');
INSERT INTO `apis` VALUES ('108', 'Yeebet', '易博视讯', '0.00', '', '', '1', '1', '2022-12-18 19:39:00', '2022-12-18 19:39:00', '456', 'fs/apilogo/yeebet.webp');
INSERT INTO `apis` VALUES ('109', 'YOO', '云游棋牌', '0.00', '', '', '0', '1', '2022-12-19 19:39:00', '2022-12-19 19:39:00', '456', 'fs/apilogo/yoo.webp');
INSERT INTO `apis` VALUES ('110', 'FST', 'FS体育', '0.00', '', '', '0', '1', '2022-12-20 19:39:00', '2022-12-20 19:39:00', '456', 'fs/apilogo/fst.webp');
INSERT INTO `apis` VALUES ('111', 'FSQP', 'FS棋牌', '0.00', '', '', '0', '1', '2022-12-19 20:13:00', '2022-12-19 20:13:00', '456', 'fs/apilogo/fsqp.webp');
INSERT INTO `apis` VALUES ('112', 'NW', '新世界', '0.00', '', '', '0', '1', '2022-12-19 20:14:00', '2022-12-19 20:14:00', '456', 'fs/apilogo/nw.webp');
INSERT INTO `apis` VALUES ('113', 'AFB', 'AFB体育', '0.00', '', '', '0', '1', '2022-12-19 19:39:00', '2022-12-19 19:39:00', '456', 'fs/apilogo/afb.webp');
INSERT INTO `apis` VALUES ('114', 'AFBG', 'AFB电子', '0.00', '', '', '0', '1', '2022-12-19 20:14:00', '2022-12-19 20:14:00', '456', 'fs/apilogo/afbg.webp');
INSERT INTO `apis` VALUES ('115', 'AFBL', 'AFB视讯', '0.00', '', '', '0', '1', '2022-12-19 20:14:00', '2022-12-19 20:14:00', '456', 'fs/apilogo/afbl.webp');
INSERT INTO `apis` VALUES ('116', 'EEAI', 'AI视讯', '0.00', '', '', '0', '1', '2022-12-19 19:39:00', '2022-12-19 19:39:00', '456', 'fs/apilogo/eeai.webp');
INSERT INTO `apis` VALUES ('117', 'FBLive', 'FB视讯', '0.00', '', '', '0', '1', '2022-12-20 20:13:00', '2022-12-20 20:13:00', '456', 'fs/apilogo/fblive.webp');
INSERT INTO `apis` VALUES ('118', 'FTG', 'FTG', '0.00', '', '', '0', '1', '2022-12-20 20:14:00', '2022-12-20 20:14:00', '456', 'fs/apilogo/ftg.webp');
INSERT INTO `apis` VALUES ('119', 'G168', '168电子', '0.00', '', '', '0', '1', '2022-12-20 19:39:00', '2022-12-20 19:39:00', '456', 'fs/apilogo/g168.webp');
INSERT INTO `apis` VALUES ('120', 'KYS', '开元棋牌', '0.00', '', '', '0', '1', '2022-12-20 20:14:00', '2022-12-20 20:14:00', '456', 'fs/apilogo/kys.webp');
INSERT INTO `apis` VALUES ('121', 'Splus', 'S+电子', '0.00', '', '', '0', '1', '2022-12-20 20:14:00', '2022-12-20 20:14:00', '456', 'fs/apilogo/splus.webp');
INSERT INTO `apis` VALUES ('122', 'RSG', 'RSG电子', '0.00', '', '', '0', '1', '2022-12-20 19:39:00', '2022-12-20 19:39:00', '456', 'fs/apilogo/rsg.webp');
INSERT INTO `apis` VALUES ('123', 'Joker', '小丑电子', '0.00', '', '', '0', '1', '2022-12-21 20:13:00', '2022-12-21 20:13:00', '456', 'fs/apilogo/joker.webp');
INSERT INTO `apis` VALUES ('124', 'GP', 'DP电子', '0.00', '', '', '0', '1', '2022-12-21 20:14:00', '2022-12-21 20:14:00', '456', 'fs/apilogo/gp.webp');
INSERT INTO `apis` VALUES ('125', 'CW', 'CW电子', '0.00', '', '', '0', '1', '2022-12-21 19:39:00', '2022-12-21 19:39:00', '456', 'fs/apilogo/cw.webp');
INSERT INTO `apis` VALUES ('126', 'MGP', 'MGplus', '0.00', '', '', '0', '1', '2022-12-21 20:14:00', '2022-12-21 20:14:00', '456', 'fs/apilogo/mgp.webp');
INSERT INTO `apis` VALUES ('127', 'GG', '高登电子', '0.00', '', '', '0', '1', '2022-12-21 20:14:00', '2022-12-21 20:14:00', '456', 'fs/apilogo/gg.webp');
INSERT INTO `apis` VALUES ('128', 'MINI', 'MINI', '0.00', '', '', '0', '1', '2022-12-21 19:39:00', '2022-12-21 19:39:00', '456', 'fs/apilogo/mini.webp');
INSERT INTO `apis` VALUES ('129', 'PO', 'POPOK电子', '0.00', '', '', '0', '1', '2022-12-22 20:13:00', '2022-12-22 20:13:00', '456', 'fs/apilogo/po.webp');
INSERT INTO `apis` VALUES ('130', 'CR', '真人', '0.00', '', '', '0', '1', '2022-12-22 20:14:00', '2022-12-22 20:14:00', '456', 'fs/apilogo/cr.webp');
INSERT INTO `apis` VALUES ('131', 'YGG', 'YGG电子', '0.00', '', '', '0', '1', '2022-12-22 19:39:00', '2022-12-22 19:39:00', '456', 'fs/apilogo/ygg.webp');
INSERT INTO `apis` VALUES ('132', 'PR', 'PR视讯', '0.00', '', '', '0', '1', '2022-12-22 20:14:00', '2022-12-22 20:14:00', '456', 'fs/apilogo/pr.webp');
INSERT INTO `apis` VALUES ('133', 'DIG', 'DIT体育', '0.00', '', '', '0', '1', '2022-12-22 20:14:00', '2022-12-22 20:14:00', '456', 'fs/apilogo/dig.webp');
INSERT INTO `apis` VALUES ('134', 'DS88', 'DS88斗鸡', '0.00', '', '', '0', '1', '2022-12-22 19:39:00', '2022-12-22 19:39:00', '456', 'fs/apilogo/ds88.webp');
INSERT INTO `apis` VALUES ('135', 'JS', 'JOLLY体育', '0.00', '', '', '0', '1', '2022-12-23 20:13:00', '2022-12-23 20:13:00', '456', 'fs/apilogo/js.webp');
INSERT INTO `apis` VALUES ('136', 'PIN', '平博', '0.00', '', '', '0', '1', '2022-12-23 20:14:00', '2022-12-23 20:14:00', '456', 'fs/apilogo/pin.webp');
INSERT INTO `apis` VALUES ('137', 'POLY', '保利体育', '0.00', '', '', '0', '1', '2022-12-23 19:39:00', '2022-12-23 19:39:00', '456', 'fs/apilogo/poly.webp');
INSERT INTO `apis` VALUES ('138', 'W9', '9W体育', '0.00', '', '', '0', '1', '2022-12-23 20:14:00', '2022-12-23 20:14:00', '456', 'fs/apilogo/w9.webp');
INSERT INTO `apis` VALUES ('139', 'SP', 'SPRIBE', '0.00', '', '', '0', '1', '2022-12-23 20:14:00', '2022-12-23 20:14:00', '456', 'fs/apilogo/sp.webp');
INSERT INTO `apis` VALUES ('140', 'KP', 'KP棋牌', '0.00', '', '', '0', '1', '2022-12-23 19:39:00', '2022-12-23 19:39:00', '456', 'fs/apilogo/kp.webp');
INSERT INTO `apis` VALUES ('141', 'TOO', 'TOO电子', '0.00', '', '', '0', '1', '2022-12-24 20:13:00', '2022-12-24 20:13:00', '456', 'fs/apilogo/too.webp');
INSERT INTO `apis` VALUES ('142', 'MP', 'MP棋牌', '0.00', '', '', '0', '1', '2022-12-24 20:14:00', '2022-12-24 20:14:00', '456', 'fs/apilogo/mp.webp');
INSERT INTO `apis` VALUES ('143', 'MI', 'MINI电子', '0.00', '', '', '0', '1', '2022-12-24 19:39:00', '2022-12-24 19:39:00', '456', 'fs/apilogo/mi.webp');
INSERT INTO `apis` VALUES ('144', 'BT', 'BT电子', '0.00', '', '', '0', '1', '2022-12-24 20:14:00', '2022-12-24 20:14:00', '456', 'fs/apilogo/bt.webp');
INSERT INTO `apis` VALUES ('145', 'HP', 'HP彩票', '0.00', '', '', '0', '1', '2022-12-24 20:14:00', '2022-12-24 20:14:00', '456', 'fs/apilogo/hp.webp');
INSERT INTO `apis` VALUES ('146', 'i21', 'i21视讯', '0.00', '', '', '0', '1', '2022-12-24 19:39:00', '2022-12-24 19:39:00', '456', 'fs/apilogo/i21.webp');
INSERT INTO `apis` VALUES ('147', 'IG', 'IG彩票', '0.00', '', '', '0', '1', '2022-12-25 20:13:00', '2022-12-25 20:13:00', '456', 'fs/apilogo/ig.webp');
INSERT INTO `apis` VALUES ('148', 'BET', 'betby', '0.00', '', '', '0', '1', '2022-12-25 20:14:00', '2022-12-25 20:14:00', '456', 'fs/apilogo/bet.webp');
INSERT INTO `apis` VALUES ('149', 'BNG', 'BNG电子', '0.00', '', '', '0', '1', '2022-12-25 19:39:00', '2022-12-25 19:39:00', '456', 'fs/apilogo/bng.webp');
INSERT INTO `apis` VALUES ('150', 'RG', 'RG游戏', '0.00', '', '', '0', '1', '2022-12-25 20:14:00', '2022-12-25 20:14:00', '456', 'fs/apilogo/rg.webp');
INSERT INTO `apis` VALUES ('151', 'RC', 'RC富博', '0.00', '', '', '0', '1', '2022-12-25 20:14:00', '2022-12-25 20:14:00', '456', 'fs/apilogo/rc.webp');
INSERT INTO `apis` VALUES ('152', 'NEWBB', '新BB体育', '0.00', '', '', '0', '1', '2022-12-25 19:39:00', '2022-12-25 19:39:00', '456', 'fs/apilogo/newbb.webp');
INSERT INTO `apis` VALUES ('153', 'XJ2', '皇冠体育', '0.00', '', '', '0', '1', '2022-12-26 20:13:00', '2022-12-26 20:13:00', '456', 'fs/apilogo/xj2.webp');
INSERT INTO `apis` VALUES ('154', 'AG', 'AG', '0.00', '', '', '0', '1', '2022-12-26 20:14:00', '2022-12-26 20:14:00', '456', 'fs/apilogo/ag.webp');
INSERT INTO `apis` VALUES ('155', 'CT', 'CT视讯', '0.00', '', '', '0', '1', '2022-12-26 19:39:00', '2022-12-26 19:39:00', '456', 'fs/apilogo/ct.webp');
INSERT INTO `apis` VALUES ('156', 'DG', 'DG视讯', '0.00', '', '', '0', '1', '2022-12-26 20:14:00', '2022-12-26 20:14:00', '456', 'fs/apilogo/dg.webp');
INSERT INTO `apis` VALUES ('157', 'EZ', 'EZ视讯', '0.00', '', '', '0', '1', '2022-12-26 20:14:00', '2022-12-26 20:14:00', '456', 'fs/apilogo/ez.webp');
INSERT INTO `apis` VALUES ('158', 'HG', 'HG视讯', '0.00', '', '', '0', '1', '2022-12-26 19:39:00', '2022-12-26 19:39:00', '456', 'fs/apilogo/hg.webp');
INSERT INTO `apis` VALUES ('159', 'LS', 'LS视讯', '0.00', '', '', '0', '1', '2022-12-27 20:13:00', '2022-12-27 20:13:00', '456', 'fs/apilogo/ls.webp');
INSERT INTO `apis` VALUES ('160', 'MINI', 'MINI视讯', '0.00', '', '', '0', '1', '2022-12-27 20:14:00', '2022-12-27 20:14:00', '456', 'fs/apilogo/mini.webp');
INSERT INTO `apis` VALUES ('161', 'SA', 'SA视讯', '0.00', '', '', '0', '1', '2022-12-27 19:39:00', '2022-12-27 19:39:00', '456', 'fs/apilogo/sa.webp');
INSERT INTO `apis` VALUES ('162', 'SSG', 'SSG视讯', '0.00', '', '', '0', '1', '2022-12-27 20:14:00', '2022-12-27 20:14:00', '456', 'fs/apilogo/ssg.webp');
INSERT INTO `apis` VALUES ('163', 'T9', 'T9视讯', '0.00', '', '', '0', '1', '2022-12-27 20:14:00', '2022-12-27 20:14:00', '456', 'fs/apilogo/t9.webp');
INSERT INTO `apis` VALUES ('164', 'VIVO', 'Vivo视讯', '0.00', '', '', '0', '1', '2022-12-27 19:39:00', '2022-12-27 19:39:00', '456', 'fs/apilogo/vivo.webp');
INSERT INTO `apis` VALUES ('165', 'WC', 'WC视讯', '0.00', '', '', '0', '1', '2022-12-28 20:13:00', '2022-12-28 20:13:00', '456', 'fs/apilogo/wc.webp');
INSERT INTO `apis` VALUES ('166', 'WI', 'WI视讯', '0.00', '', '', '0', '1', '2022-12-28 20:14:00', '2022-12-28 20:14:00', '456', 'fs/apilogo/wi.webp');
INSERT INTO `apis` VALUES ('167', 'XGD', 'GD视讯', '0.00', '', '', '0', '1', '2022-12-28 19:39:00', '2022-12-28 19:39:00', '456', 'fs/apilogo/xgd.webp');
INSERT INTO `apis` VALUES ('168', 'V8', 'V8棋牌', '0.00', '', '', '0', '1', '2022-12-28 20:14:00', '2022-12-28 20:14:00', '456', 'fs/apilogo/v8.webp');
INSERT INTO `apis` VALUES ('169', 'AE', ' 阿米巴 电子', '0.00', '', '', '0', '1', '2022-12-28 20:14:00', '2022-12-28 20:14:00', '456', 'fs/apilogo/ae.webp');
INSERT INTO `apis` VALUES ('170', 'AIG', 'AIG电子', '0.00', '', '', '0', '1', '2022-12-28 19:39:00', '2022-12-28 19:39:00', '456', 'fs/apilogo/aig.webp');
INSERT INTO `apis` VALUES ('171', 'AL', 'AL电子', '0.00', '', '', '0', '1', '2022-12-29 20:13:00', '2022-12-29 20:13:00', '456', 'fs/apilogo/al.webp');
INSERT INTO `apis` VALUES ('172', 'AMB', 'AMB电子', '0.00', '', '', '0', '1', '2022-12-29 20:14:00', '2022-12-29 20:14:00', '456', 'fs/apilogo/amb.webp');
INSERT INTO `apis` VALUES ('173', 'AMI', 'AMI电子', '0.00', '', '', '0', '1', '2022-12-29 19:39:00', '2022-12-29 19:39:00', '456', 'fs/apilogo/ami.webp');
INSERT INTO `apis` VALUES ('174', 'AP', 'AP电子', '0.00', '', '', '0', '1', '2022-12-29 20:14:00', '2022-12-29 20:14:00', '456', 'fs/apilogo/ap.webp');
INSERT INTO `apis` VALUES ('175', 'APG', 'APG电子', '0.00', '', '', '0', '1', '2022-12-29 20:14:00', '2022-12-29 20:14:00', '456', 'fs/apilogo/apg.webp');
INSERT INTO `apis` VALUES ('176', 'ATG', 'ATG电子', '0.00', '', '', '0', '1', '2022-12-29 19:39:00', '2022-12-29 19:39:00', '456', 'fs/apilogo/atg.webp');
INSERT INTO `apis` VALUES ('177', 'BET1', '1bet电子', '0.00', '', '', '0', '1', '2022-12-30 20:13:00', '2022-12-30 20:13:00', '456', 'fs/apilogo/bet1.webp');
INSERT INTO `apis` VALUES ('178', 'BGA', 'BGA电子', '0.00', '', '', '0', '1', '2022-12-30 20:14:00', '2022-12-30 20:14:00', '456', 'fs/apilogo/bga.webp');
INSERT INTO `apis` VALUES ('179', 'BLUE', 'blue电子', '0.00', '', '', '0', '1', '2022-12-30 19:39:00', '2022-12-30 19:39:00', '456', 'fs/apilogo/blue.webp');
INSERT INTO `apis` VALUES ('180', 'BS', 'BS电子', '0.00', '', '', '0', '1', '2022-12-30 20:14:00', '2022-12-30 20:14:00', '456', 'fs/apilogo/bs.webp');
INSERT INTO `apis` VALUES ('181', 'BTI', 'BTI电子', '0.00', '', '', '0', '1', '2022-12-30 20:14:00', '2022-12-30 20:14:00', '456', 'fs/apilogo/bti.webp');
INSERT INTO `apis` VALUES ('182', 'CG', 'CG电子', '0.00', '', '', '0', '1', '2022-12-30 19:39:00', '2022-12-30 19:39:00', '456', 'fs/apilogo/cg.webp');
INSERT INTO `apis` VALUES ('183', 'CW', 'CW电子', '0.00', '', '', '0', '1', '2022-12-31 20:13:00', '2022-12-31 20:13:00', '456', 'fs/apilogo/cw.webp');
INSERT INTO `apis` VALUES ('184', 'DGS', 'DG电子', '0.00', '', '', '0', '1', '2022-12-31 20:14:00', '2022-12-31 20:14:00', '456', 'fs/apilogo/dgs.webp');
INSERT INTO `apis` VALUES ('185', 'EP', 'EVO电子', '0.00', '', '', '0', '1', '2022-12-31 19:39:00', '2022-12-31 19:39:00', '456', 'fs/apilogo/ep.webp');
INSERT INTO `apis` VALUES ('186', 'EPIC', 'EPIC电子', '0.00', '', '', '0', '1', '2022-12-31 20:14:00', '2022-12-31 20:14:00', '456', 'fs/apilogo/epic.webp');
INSERT INTO `apis` VALUES ('187', 'FK', 'FunKY电子', '0.00', '', '', '0', '1', '2022-12-31 20:14:00', '2022-12-31 20:14:00', '456', 'fs/apilogo/fk.webp');
INSERT INTO `apis` VALUES ('188', 'G759', '759电子', '0.00', '', '', '0', '1', '2022-12-31 19:39:00', '2022-12-31 19:39:00', '456', 'fs/apilogo/g759.webp');
INSERT INTO `apis` VALUES ('189', 'GA', 'GA电子', '0.00', '', '', '0', '1', '2023-01-01 20:13:00', '2023-01-01 20:13:00', '456', 'fs/apilogo/ga.webp');
INSERT INTO `apis` VALUES ('190', 'GEN', 'GEN电子', '0.00', '', '', '0', '1', '2023-01-01 20:14:00', '2023-01-01 20:14:00', '456', 'fs/apilogo/gen.webp');
INSERT INTO `apis` VALUES ('191', 'GFG', 'GFG电子', '0.00', '', '', '0', '1', '2023-01-01 19:39:00', '2023-01-01 19:39:00', '456', 'fs/apilogo/gfg.webp');
INSERT INTO `apis` VALUES ('192', 'GPI', 'GPI电子', '0.00', '', '', '0', '1', '2023-01-01 20:14:00', '2023-01-01 20:14:00', '456', 'fs/apilogo/gpi.webp');
INSERT INTO `apis` VALUES ('193', 'imn', 'imn迷你电子', '0.00', '', '', '0', '1', '2023-01-01 20:14:00', '2023-01-01 20:14:00', '456', 'fs/apilogo/imn.webp');
INSERT INTO `apis` VALUES ('194', 'ISB', 'ISB电子', '0.00', '', '', '0', '1', '2023-01-01 19:39:00', '2023-01-01 19:39:00', '456', 'fs/apilogo/isb.webp');
INSERT INTO `apis` VALUES ('195', 'J2', '2J电子', '0.00', '', '', '0', '1', '2023-01-02 20:13:00', '2023-01-02 20:13:00', '456', 'fs/apilogo/j2.webp');
INSERT INTO `apis` VALUES ('196', 'Joker', 'Joker电子', '0.00', '', '', '0', '1', '2023-01-02 20:14:00', '2023-01-02 20:14:00', '456', 'fs/apilogo/joker.webp');
INSERT INTO `apis` VALUES ('197', 'KISS', 'KISS电子', '0.00', '', '', '0', '1', '2023-01-02 19:39:00', '2023-01-02 19:39:00', '456', 'fs/apilogo/kiss.webp');
INSERT INTO `apis` VALUES ('198', 'LGD', 'LGD电子', '0.00', '', '', '0', '1', '2023-01-02 20:14:00', '2023-01-02 20:14:00', '456', 'fs/apilogo/lgd.webp');
INSERT INTO `apis` VALUES ('199', 'LKG', 'LKG电子', '0.00', '', '', '0', '1', '2023-01-02 20:14:00', '2023-01-02 20:14:00', '456', 'fs/apilogo/lkg.webp');
INSERT INTO `apis` VALUES ('200', 'MC', 'mc电子', '0.00', '', '', '0', '1', '2023-01-02 19:39:00', '2023-01-02 19:39:00', '456', 'fs/apilogo/mc.webp');
INSERT INTO `apis` VALUES ('201', 'MEGA', 'MEGA电子', '0.00', '', '', '0', '1', '2023-01-03 20:13:00', '2023-01-03 20:13:00', '456', 'fs/apilogo/mega.webp');
INSERT INTO `apis` VALUES ('202', 'MRS', 'MRS电子', '0.00', '', '', '0', '1', '2023-01-03 20:14:00', '2023-01-03 20:14:00', '456', 'fs/apilogo/mrs.webp');
INSERT INTO `apis` VALUES ('203', 'NAGA', 'NAGA电子', '0.00', '', '', '0', '1', '2023-01-03 19:39:00', '2023-01-03 19:39:00', '456', 'fs/apilogo/naga.webp');
INSERT INTO `apis` VALUES ('204', 'ON', 'NO', '0.00', '', '', '0', '1', '2023-01-03 20:14:00', '2023-01-03 20:14:00', '456', 'fs/apilogo/on.webp');
INSERT INTO `apis` VALUES ('205', 'PE', 'PE电子', '0.00', '', '', '0', '1', '2023-01-03 20:14:00', '2023-01-03 20:14:00', '456', 'fs/apilogo/pe.webp');
INSERT INTO `apis` VALUES ('206', 'PNG', 'PNG电子', '0.00', '', '', '0', '1', '2023-01-03 19:39:00', '2023-01-03 19:39:00', '456', 'fs/apilogo/png.webp');
INSERT INTO `apis` VALUES ('207', 'QS', 'QS电子', '0.00', '', '', '0', '1', '2023-01-04 20:13:00', '2023-01-04 20:13:00', '456', 'fs/apilogo/qs.webp');
INSERT INTO `apis` VALUES ('208', 'RSG', 'RSG电子', '0.00', '', '', '0', '1', '2023-01-04 20:14:00', '2023-01-04 20:14:00', '456', 'fs/apilogo/rsg.webp');
INSERT INTO `apis` VALUES ('209', 'RTG', 'RTG电子', '0.00', '', '', '0', '1', '2023-01-04 19:39:00', '2023-01-04 19:39:00', '456', 'fs/apilogo/rtg.webp');
INSERT INTO `apis` VALUES ('210', 'SIM', 'SIM电子', '0.00', '', '', '0', '1', '2023-01-04 20:14:00', '2023-01-04 20:14:00', '456', 'fs/apilogo/sim.webp');
INSERT INTO `apis` VALUES ('211', 'SPIN', 'SPIN电子', '0.00', '', '', '0', '1', '2023-01-04 20:14:00', '2023-01-04 20:14:00', '456', 'fs/apilogo/spin.webp');
INSERT INTO `apis` VALUES ('212', 'T1', 'T1区块链', '0.00', '', '', '0', '1', '2023-01-04 19:39:00', '2023-01-04 19:39:00', '456', 'fs/apilogo/t1.webp');
INSERT INTO `apis` VALUES ('213', 'TADA', 'TADA电子', '0.00', '', '', '0', '1', '2023-01-05 20:13:00', '2023-01-05 20:13:00', '456', 'fs/apilogo/tada.webp');
INSERT INTO `apis` VALUES ('214', 'TTG', 'TTG电子', '0.00', '', '', '0', '1', '2023-01-05 20:14:00', '2023-01-05 20:14:00', '456', 'fs/apilogo/ttg.webp');
INSERT INTO `apis` VALUES ('215', 'VP', 'VP电子', '0.00', '', '', '0', '1', '2023-01-05 19:39:00', '2023-01-05 19:39:00', '456', 'fs/apilogo/vp.webp');
INSERT INTO `apis` VALUES ('216', 'WLG', 'WLG电子', '0.00', '', '', '0', '1', '2023-01-05 20:14:00', '2023-01-05 20:14:00', '456', 'fs/apilogo/wlg.webp');
INSERT INTO `apis` VALUES ('217', 'WMS', 'WMS电子', '0.00', '', '', '0', '1', '2023-01-05 20:14:00', '2023-01-05 20:14:00', '456', 'fs/apilogo/wms.webp');
INSERT INTO `apis` VALUES ('218', 'YGR', 'ygr电子', '0.00', '', '', '0', '1', '2023-01-05 19:39:00', '2023-01-05 19:39:00', '456', 'fs/apilogo/ygr.webp');
INSERT INTO `apis` VALUES ('219', 'ZP', 'ZP电子', '0.00', '', '', '0', '1', '2023-01-06 20:13:00', '2023-01-06 20:13:00', '456', 'fs/apilogo/zp.webp');
INSERT INTO `apis` VALUES ('220', 'CMD', 'CMD体育', '0.00', '', '', '0', '1', '2023-01-06 20:14:00', '2023-01-06 20:14:00', '456', 'fs/apilogo/cmd.webp');
INSERT INTO `apis` VALUES ('221', 'UG', 'UG体育', '0.00', '', '', '0', '1', '2023-01-06 19:39:00', '2023-01-06 19:39:00', '456', 'fs/apilogo/ug.webp');
INSERT INTO `apis` VALUES ('222', 'GR', 'GR棋牌', '0.00', '', '', '0', '1', '2023-01-06 20:14:00', '2023-01-06 20:14:00', '456', 'fs/apilogo/gr.webp');
INSERT INTO `apis` VALUES ('223', 'HLQP', '欢乐棋牌', '0.00', '', '', '0', '1', '2023-01-06 20:14:00', '2023-01-06 20:14:00', '456', 'fs/apilogo/hlqp.webp');
INSERT INTO `apis` VALUES ('224', 'TC', 'TC彩票', '0.00', '', '', '0', '1', '2023-01-06 19:39:00', '2023-01-06 19:39:00', '456', 'fs/apilogo/tc.webp');
INSERT INTO `apis` VALUES ('225', 'SC', '世彩彩票', '0.00', null, null, '0', '1', '2023-01-06 19:39:00', '2023-01-06 19:39:00', '456', 'fs/apilogo/sc.webp');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enname` varchar(255) DEFAULT NULL,
  `cateid` int(10) DEFAULT NULL,
  `content` longtext,
  `encontent` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stor` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('6', '★★★尊敬的客户：我司亚博体育场馆比分系统于2020年7月7日（星期二）11:00-13:35进行滚球比分系统维护，维护期间将无法查看比分，可以正常游戏，给您带来不便敬请谅解，谢谢。', null, '6', '<p>尊敬的客户：我司亚博体育场馆比分系统于2020年7月7日（星期二）11:00-13:35进行滚球比分系统维护，维护期间将无法查看比分，可以正常游戏，给您带来不便敬请谅解，谢谢。</p>', '1', '2021-06-26 08:53:15', '2022-08-31 22:10:47', '3');
INSERT INTO `articles` VALUES ('7', '尊敬的客户：第107期保险投注【7月5日 勒沃库森 VS 拜仁慕尼黑】彩金已经发放完毕，活动详情请至优惠活动页面了解。', null, '6', '<p><a style=\"color: #676767; margin-right: 150px;\">尊敬的会员：小金体育场馆预计将于2021年11月13日23:59起进行永久维护。我司将同步关闭场馆入口，届时您将无法进行游戏、转账、结算注单以及查看注单等操作。建议您提前选择欧宝体育和IM体育场馆游戏。给您带来的不便，敬请谅解，感谢您对欧宝娱乐一如既往的支持！</a></p>', '<p>尊敬的客户：第107期保险投注【7月5日 勒沃库森 VS 拜仁慕尼黑】彩金已经发放完毕，活动详情请至优惠活动页面了解。</p>', '2021-06-26 08:53:37', '2022-04-15 11:11:26', '2');
INSERT INTO `articles` VALUES ('8', '关于我们', null, '7', '<p>关于我们</p>\r\n<p>&nbsp;　　TG集团线上娱乐成立于2007年，我们拥有着一支来自世界的博彩界精英服务团队，并与亚洲最大博彩软件提供商合作，是亚洲领先的在线博彩网站，我们提供体育投注，网上真人赌城，在线扑克和在线电子游艺。我们从2007年进入中国和亚洲市场，已经取得了菲律宾First Cagayan 的充分授权及监管。严格按照这些管理机构发布的规则进行所有运营。</p>\r\n<p>&nbsp;</p>\r\n<p>　　安全和私密博彩环境以及产品的完整性为您提供的在线博彩体验。我们拥有目前世界上最先进的安全措施和游戏结果审计流程，从而确保我们的会员有一个安全公平的游戏环境。在我们的隐私保密范围之内，我们将为您的所有信息保密，决不分享或出售给第三方。</p>\r\n<p>&nbsp;</p>\r\n<p>　　我们为您提供全世界最多种类的体育赛事、不同的体育投注玩法以及最佳赔率。在我们的在线娱乐场，我们为您提供各种各样的现场游戏和老虎机游戏。我们的真人荷官及现场娱乐也是无可挑剔的，设有 7&times;24小时在线监测，确保每一局游戏结果均为现场真实的游戏结果。在TG集团我们保证您可以享受到世界上最顶级的在线博彩娱乐。</p>\r\n<p>&nbsp;</p>\r\n<p>　　我们提供训练有素和亲切的客户服务，全天候24小时的在线为客户们服务。我们保证以快速、礼貌和有效的方式为玩家们处理问题。</p>\r\n<p>&nbsp;</p>\r\n<p>　　我们向您提供安全方便的各种支付方式。我们坚持以&ldquo;了解你的客户&rdquo;和&ldquo;反洗钱&rdquo;为一贯宗旨，并配合第三方金融监管机构，以确保遵守最高标准。</p>\r\n<p>&nbsp;</p>\r\n<p>　　我们的使命是为每一位会员提供最精彩的游戏体验，请随时通过电话或电子邮件向我们提出您的意见或建议。</p>\r\n<p>&nbsp;</p>', null, '2021-09-29 23:10:38', '2021-10-12 23:40:57', null);
INSERT INTO `articles` VALUES ('9', '常见问题', null, '1', '<p>常见问题</p>\r\n<p>1.Ley集团线上娱乐实力怎样？</p>\r\n<p>您好，请参阅主页&ldquo;关于我们&rdquo;。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>2.在贵公司进行游戏是否安全？</p>\r\n<p>您好，本公司系统绝对安全。我们决不泄漏客户的个人资料给任何商业机构。此外，我们亦要求有交易往来的银行，信用卡中转代理等严格保密客户的资料。所有的存款将视为贸易户口，并不会交给其它的人士进行。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>3.网上博彩是否合法？</p>\r\n<p>您好，我们是合法注册于菲律宾之博彩公司,一切博彩操作皆遵从菲律宾政府条约,不受其他地区管辖，请根据您自身的风险承受能力及当地法律决定是否投注。本公司不能亦不会接受任何人士违犯当地法律所引致之任何责任。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>4.在Ley集团线上娱乐进行投注是否有年龄限制？</p>\r\n<p>您好，是的，投注合法年龄必须年满18岁。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>5.开户是否要填写真实姓名？</p>\r\n<p>您好，基于安全理由，提款时财务部会按照注册姓名进行审核，银行卡户名必须与注册姓名一致方可提款，所以请您在开户时填写的真实姓名必须与您提款的银行卡户名一致。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>6.忘记密码怎么办？</p>\r\n<p>您好，请您联系7*24小时在线客服核对身份后申请更改密码。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p>1</p>', '2021-09-29 23:11:26', '2022-11-19 14:29:59', null);
INSERT INTO `articles` VALUES ('10', '隐私政策', null, '2', '<p>隐私政策</p>\r\n<p>1、TG集团十分尊重及重视会员的隐私权，我们将竭力保证您的信息与数据安全，让客户无后顾之忧，这是我们一直遵循的隐私权政策宗旨。</p>\r\n<p>&nbsp;</p>\r\n<p>2、TG集团绝不会透露任何能识别个人身份的资料给任何第三方，除非收到法庭传票或应可行法律的要求及判决。我们有权通过网站向有关付款平台服务提供商以及金融保险机构提供必要的个人信息以完成付款要求。</p>\r\n<p>&nbsp;</p>\r\n<p>3、会员提供的所有个人信息，其传送均通过128位SSL加密的安全端口，并存放在普通公众无法进入的保密环境之中。所有数据的内部出入将受到严格限制和严密监控。</p>\r\n<p>&nbsp;</p>\r\n<p>下列是关于客户个人信息隐私权保护规则的内容：</p>\r\n<p>&nbsp;</p>\r\n<p>网站服务由TG集团提供。为了让客户在这能享受到安全愉悦的服务体验，对待客户的个人隐私，本公司本着严谨的态度。</p>\r\n<p>为了让客户享受进一步服务，有时我们可能需要客户提供个人信息。本政策将会涵盖相关客户个人信息的使用事项，同时也涉及相关信息的记录程序。有时，客户接受进一步服务前，可能需要客户提供个人信息（如：姓名，通信地址，邮箱地址，会员编号，电话或手机号码，出生日期或支付信息），任何情况下，我们都将对照此政策来处理您的个人信息。在使用您的个人信息时我们将适用现行的法律条款，并竭力采取最佳最稳妥的方式处理。同时，我们也将监控您在本网站的活动内容，可能包括您的访问量，访问页面，网络服务的原始域名等，这将有助于我们建立客户个人文件数据。其中部分资料将被聚合统计，意旨我们将不能对其单独进行检验。</p>\r\n<p>&nbsp;</p>\r\n<p>数据机密性</p>\r\n<p>TG集团将尽全力保护客户提供给我们的个人资料，不会蓄意将该数据泄漏给外人，除非此政策条款里有明文规定。所有TG集团员工都被要求遵循该政策条款。员工有义务严密的保守客户的个人信息，即使员工离开TG集团后仍须坚守此义务。您本人也须保护好您的个人信息，严守您的帐户密码，不应将此透露给其他人。</p>\r\n<p>&nbsp;</p>\r\n<p>服务声明</p>\r\n<p>出于服务质保，防止诈骗和法规遵循方面的原因，我们将对客户的通信记录进行保存和监控（如：电话和邮件记录）。客户有权要求我们勿将其个人信息直接用于市场推销。如果您想行使此权利，客户应准备以下；书面提交申请提供可以证明您身份的信息（如：账号，用户名，注册信息）写明个人信息哪里不正确及需修正的内容。隐私权保护规则的认同一旦客户在TG集团注册开户就代表您认同此隐私权保护规则条款。我们将定期更新此政策条款，因此我们建议客户您也定期进行查阅。如果我们对该政策有所更改，我们将在相关网页上发布消息。政策更改后，客户持续使用TG集团网站将被视为客户认同该政策的更改。如果用户不接受此政策的更改，您可以选择停用我们的网站服务。如果该政策条款与其它局部特殊条款产生分歧，将适用局部特殊条款。</p>', null, '2021-09-29 23:11:56', '2021-10-12 23:41:13', null);
INSERT INTO `articles` VALUES ('11', '免责说明', null, '3', '<p>免责说明</p>\r\n<p>1、每日取款上限1000000.00元人民币，完成全额有效投注，手续费全免；</p>\r\n<p>&nbsp;</p>\r\n<p>2、取款到账时间一般3-5分钟，如遇到银行系统维护或财务清算等不可抗拒因素，到账将有所延迟或暂停出款；</p>\r\n<p>&nbsp;</p>\r\n<p>3、所有线上博彩在未申请优惠情况下需完成存款一倍有效流水才可申请提款，申请优惠请参照相关优惠流水要求；</p>\r\n<p>&nbsp;</p>\r\n<p>4、公司保留权利审核会员帐号；</p>\r\n<p>&nbsp;</p>\r\n<p>5、各类游戏和局/未接受/取消注单，不纳入有效投注计算。 运动博弈游戏项目，大赔率玩法计算有效投注金额，小赔率玩法计算输赢金额为有效投注（大赔率产品包括：过关、波胆、总入球、半全场、双胜彩、冠军赛等）；</p>\r\n<p>&nbsp;</p>\r\n<p>如有任何疑问，请咨询24小时在线客服。</p>\r\n<p>&nbsp;</p>', null, '2021-09-29 23:12:28', '2021-10-12 23:40:30', null);
INSERT INTO `articles` VALUES ('12', '联系我们', null, '4', '<p>联系我们</p>\r\n<p>一、合营计划联系方式</p>\r\n<p>&nbsp;</p>\r\n<p>合营部Skype&nbsp;</p>\r\n<p>live:.cid.abd79c917c885961</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>二、客服邮箱</p>\r\n<p>&nbsp;</p>\r\n<p>service@tgames.vip</p>\r\n<p>&nbsp;</p>\r\n<p>三、在线客服</p>\r\n<p>&nbsp;</p>\r\n<p>我们的客服人员持续秉持着尽心尽责的服务态度，在线客服全天24小时为您提供咨询和帮助</p>', null, '2021-09-29 23:12:47', '2021-10-12 00:55:10', null);
INSERT INTO `articles` VALUES ('13', '代理加盟', null, '5', '<p>代理加盟</p>\r\n<p>加盟TG自己当老板真正0投资0风险稳赚佣金</p>\r\n<p>全新代理模式双重返佣无上限</p>\r\n<p> </p>\r\n<p>辉煌人生 由此触动</p>\r\n<p>TG集团成立于2007年，作为国际最具代表性地位的知名博彩公司，拥有实体赌场与线上博彩双执照，提供最广范围并最具竞争力的真人百家乐，龙虎斗，体育博彩，赌场老虎机，虚拟游戏，和扑克游戏等，多年来稳健的经营，成功地将用户扩展至全球各地，我们真诚为您打造最高档次的合作平台，最好的代理加盟方案！</p>\r\n<p> </p>\r\n<p>什么是代理</p>\r\n<p>代理就等于自己开公司当老板一样，自己坐庄。TG集团重金扶持您当老板，手把手教您创业致富，真正0投资0风险稳收益，让您睡觉都在赚钱。</p>\r\n<p> </p>\r\n<p>最好的代理加盟方案，八大加盟优势让您无法抗拒！</p>\r\n<p>1.首创全新代理模式，最高的返佣模式；</p>\r\n<p>2.零成本，零风险，高回报，佣金结算快速到账；</p>\r\n<p>3.双重收益，无论线下客户输赢，您都有稳定的高收入；</p>\r\n<p>4.提款快速金额不封顶，实力雄厚；</p>\r\n<p>5.营运多年，用户庞大，深受玩家爱戴；</p>\r\n<p>6.拥有实体赌场与线上博彩执照，信誉保证；</p>\r\n<p>7.多年大力推广，品牌享誉国际，代理可坐享广告名牌效应；</p>\r\n<p>8.数据信息详尽，可查阅下线存款及投注记录。</p>\r\n<p> </p>\r\n<p>TG集团给予合作伙伴最高的盈利回报只要您成为我们的代理，只要您拥有人脉或用心推广，积极发展下线，无需任何费用，亏损统一由我们承担，让您实实在在坐等高收益，睡觉都在赚钱。</p>\r\n<p> </p>\r\n<p>加盟TG集团，您的财富选择，安全，可靠。</p>\r\n<p>携手TG月赚百万，邀您加入!</p>', null, '2021-09-29 23:13:22', '2021-10-12 23:41:30', null);
INSERT INTO `articles` VALUES ('14', '博彩责任', null, '8', '<p>博彩责任</p>\r\n<p>一、竞猜责任</p>\r\n<p>TG集团是一个专业在线网上娱乐城。然则我们强烈建议所有玩家都保持一个娱乐的心态来面对所有游戏。将会通过极致的用户体验、颠覆性娱乐产品、超本土化的个性服务来为所有玩家提供一个舒适健康的娱乐环境。 我们希望所有玩家在游戏的同时能及时调整好自己的心态， 切勿由于过度沉迷游戏而造成个人经济、事业、家庭等各个方面受到影响。 对此，我们强烈建议阁下重新审视自己的行为，明确和调整自己的娱乐心态， 重新投入正常的生活和工作中来。</p>\r\n<p>&nbsp;</p>\r\n<p>二、超过18岁</p>\r\n<p>阁下必须超过18岁（或在阁下居住的管辖范围内不被视为未成年人）才可进入此网站。 任何未满18岁的人不得在我们网站开户和投注，我们将以严谨的态度看待和处理此问题。</p>\r\n<p>&nbsp;</p>\r\n<p>三、赌博问题防护</p>\r\n<p>我们强烈建议阁下定期审视您的竞猜行为，检验自己是否投入过度。</p>\r\n<p>&nbsp;</p>\r\n<p>1.有否曾因赌博而耽误工作时间?</p>\r\n<p>2.赌博有否影响您的声望?</p>\r\n<p>3.赌博之后，您是否感到自责?阁下有否曾经用赌博所赢得的钱来还债，或者解决财政因难?</p>\r\n<p>4.赌博有否导致您的抱负及效率减低?</p>\r\n<p>5.输钱后，你是否感觉您一定要尽快回来赚回您所失去的?</p>\r\n<p>6.赢钱后，您是否有一种强烈的欲望，回来赢得更多?</p>\r\n<p>7.您是否时常赌博至分文都用尽?</p>\r\n<p>8.你是否借钱，作赌博之用?</p>\r\n<p>9.你是否出卖任何物件，作赌博之用?</p>\r\n<p>10.你是否不愿意用 \"赌本\" 来付正常的开支?</p>\r\n<p>11.赌博是否令您疏忽您自己及您家人的健康快乐?</p>\r\n<p>12.您是否花比预计更多的时间在赌博上?</p>\r\n<p>13.您是否以赌博来逃避忧虑及困难?您是否犯罪或考虑犯罪，为赌博筹备资金?</p>\r\n<p>14.赌博有否令您有睡眠的困难?</p>\r\n<p>15.围绕您的争执、失望或挫败有否造成赌博的推动力?</p>\r\n<p>16.您是否为数小时的赌博而有冲动去庆祝好运?</p>\r\n<p>17.您是否因赌博的结果而自毁或自杀?</p>\r\n<p>&nbsp;</p>', null, '2021-09-29 23:13:50', '2021-10-12 00:55:59', null);
INSERT INTO `articles` VALUES ('19', '最新', null, '6', '<p>jhdsfjkbjkcv</p>', '<p>hjksahjksd</p>', '2022-06-21 10:39:52', '2022-06-21 10:42:20', '1');

-- ----------------------------
-- Table structure for articlescate
-- ----------------------------
DROP TABLE IF EXISTS `articlescate`;
CREATE TABLE `articlescate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articlescate
-- ----------------------------
INSERT INTO `articlescate` VALUES ('1', '新手帮助', null, null);
INSERT INTO `articlescate` VALUES ('2', '隐私保护', null, null);
INSERT INTO `articlescate` VALUES ('3', '规则条款', null, null);
INSERT INTO `articlescate` VALUES ('4', '联系我们', null, null);
INSERT INTO `articlescate` VALUES ('5', '代理加盟', null, null);
INSERT INTO `articlescate` VALUES ('6', '网站公告', null, null);
INSERT INTO `articlescate` VALUES ('7', '关于我们', null, null);
INSERT INTO `articlescate` VALUES ('8', '联络我们', null, null);

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行代码',
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '银行名称',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `max_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '最大限额',
  `bank_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('1', 'nyyh', '中国农业银行', '1', '20000.00', 'Abc', '1', '2021-01-07 19:27:45', '2021-01-07 19:27:45');
INSERT INTO `banks` VALUES ('2', 'ZGYH', '中国银行', '2', '0.00', 'Boc', '1', '2021-04-16 16:14:41', '2021-04-16 16:19:14');
INSERT INTO `banks` VALUES ('6', 'JTYH', '交通银行', '0', '0.00', 'Bocom', '1', '2021-05-14 13:50:54', '2021-05-14 13:50:54');
INSERT INTO `banks` VALUES ('7', 'TYPE', '工商银行', '1', '1111.00', null, '1', '2021-05-15 13:47:55', '2022-04-30 18:54:37');
INSERT INTO `banks` VALUES ('8', 'JSYH', '建设银行', '0', '500000.00', null, '1', '2022-05-01 17:09:17', '2022-05-01 17:09:17');
INSERT INTO `banks` VALUES ('9', 'ZXYH', '中信银行', '0', '500000.00', null, '1', '2022-05-01 17:09:54', '2022-05-01 17:10:15');
INSERT INTO `banks` VALUES ('10', 'xyyh', '兴业银行', '0', '500000.00', null, '1', '2022-05-01 17:10:41', '2022-05-01 17:10:41');
INSERT INTO `banks` VALUES ('11', 'GDYH', '光大银行', '0', '0.00', null, '1', '2022-05-01 17:11:12', '2022-05-01 17:11:12');
INSERT INTO `banks` VALUES ('12', 'MSYH', '民生银行', '0', '500000.00', null, '1', '2022-05-01 19:43:15', '2022-05-01 19:43:15');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1pc banner 2移动端',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `jump_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1显示 0禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('2', '1', '体育投注', 'images/781cba08e4241d1aeac53a0b5843d808.jpg', '/sport', '1', '1', '2021-10-20 11:03:50', '2022-04-13 09:56:49');
INSERT INTO `banners` VALUES ('3', '1', '大立彩票', 'images/8ce76b6b1c5f2c8d1204cef7d17a0a16.jpg', '/member/game?plat_name=dl&game_type=2', '2', '1', '2021-10-20 11:07:36', '2022-04-13 09:57:16');
INSERT INTO `banners` VALUES ('4', '1', '开元棋牌', 'images/7dc9570ad0c20e98edfdcafd1f7b34ac.jpg', '/member/game?plat_name=leg&game_type=7', '3', '1', '2021-10-20 11:09:23', '2022-04-13 09:57:43');
INSERT INTO `banners` VALUES ('5', '1', 'BG大游', 'images/0bd1d53d6d146186b319a1fcde6ac2c2.jpg', '/member/game?plat_name=bg&game_type=1', '4', '1', '2021-10-20 14:13:01', '2022-04-13 09:58:59');
INSERT INTO `banners` VALUES ('6', '1', '皇朝', 'images/6ffddb0185650fb324bd79828dedd0e9.jpg', '/member/game?plat_name=hc&game_type=2', '5', '1', '2021-10-20 14:14:55', '2022-04-13 09:58:33');
INSERT INTO `banners` VALUES ('7', '1', '6', 'images/86f4c907baaa4837bdcb397bd67c2e06.jpg', '/sport', '0', '1', '2022-04-13 10:11:37', '2022-04-13 10:11:56');
INSERT INTO `banners` VALUES ('8', '2', '1', 'images/2c683308f91d617ea86e34d36a0af0c6.jpg', '/pages/discount/index', '1', '1', '2022-04-26 10:36:19', '2022-05-03 10:28:31');
INSERT INTO `banners` VALUES ('9', '2', '2', 'images/57e31e7b4c287b687a4622e9b994ceff.jpg', '/pages/discount/index', '2', '1', '2022-04-26 10:36:39', '2022-05-03 10:28:46');
INSERT INTO `banners` VALUES ('10', '2', '3', 'images/768d5e602cdbfcdeb10019306f37d99a.jpg', '/pages/discount/index', '3', '1', '2022-04-26 10:37:00', '2022-05-03 10:27:21');
INSERT INTO `banners` VALUES ('11', '2', '4', 'images/7e87a8aabb6fa9d8d697dd08d0b261c4.jpg', '/pages/discount/index', '4', '1', '2022-04-26 10:37:21', '2022-05-03 10:27:30');
INSERT INTO `banners` VALUES ('12', '2', '5', 'images/911090c17ad2261769ececd2751b8a81.jpg', '/pages/discount/index', '5', '1', '2022-04-26 10:37:42', '2022-12-06 15:49:20');

-- ----------------------------
-- Table structure for code_pay
-- ----------------------------
DROP TABLE IF EXISTS `code_pay`;
CREATE TABLE `code_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mch_id` varchar(255) DEFAULT NULL COMMENT '商户号',
  `key` varchar(255) DEFAULT NULL COMMENT 'key',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `status` int(1) DEFAULT '1' COMMENT '0禁用1启用',
  `payimg` varchar(255) DEFAULT NULL,
  `min_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `max_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_pay
-- ----------------------------
INSERT INTO `code_pay` VALUES ('3', 'weixin', null, '微信收款码', '1', 'images/02e88a2a1131259edb6885547945f3a1.png', '100.00', '10000000.00', '2022-04-23 15:24:30', '2022-11-26 10:42:35');
INSERT INTO `code_pay` VALUES ('4', '12312345678@qq.com', null, '支付宝二维码', '1', 'images/27beb1828ddbbc82e1ac788e97055c22.png', '100.00', '1000000.00', '2021-05-08 21:38:41', '2022-11-26 10:42:55');
INSERT INTO `code_pay` VALUES ('5', 'TJiWzissAdyiHbE1uUvamo1URpZbUeBLDv', null, 'USDT-TRC20', '1', 'images/aiwap.png', '100.00', '1000000.00', '2022-04-08 14:01:02', '2022-09-26 22:01:53');
INSERT INTO `code_pay` VALUES ('7', '0xf31be571e5d8b1610bcd8cda2682a646e15a9459', null, 'USDT-ERC20', '1', 'images/avia.png', '100.00', '1000000.00', '2022-04-26 12:14:58', '2022-09-26 22:02:08');
INSERT INTO `code_pay` VALUES ('50', '123456789', null, 'CGPay转账', '1', 'images/atwap.png', '100.00', '5000000.00', '2022-12-02 22:17:13', '2022-12-02 22:17:16');
INSERT INTO `code_pay` VALUES ('51', '', null, 'CGPay在线', '1', null, '10.00', '500000.00', '2022-12-02 22:19:47', '2022-12-02 22:19:49');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for gamereport
-- ----------------------------
DROP TABLE IF EXISTS `gamereport`;
CREATE TABLE `gamereport` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT '0',
  `addtime` int(10) DEFAULT '0',
  `pid` int(10) DEFAULT '0',
  `recnum` int(10) DEFAULT '0',
  `rechangenum` int(10) DEFAULT '0',
  `totalrechange` decimal(10,2) DEFAULT '0.00',
  `withdrawnum` int(10) DEFAULT '0',
  `totalwithdraw` decimal(10,2) DEFAULT '0.00',
  `betnum` int(10) DEFAULT NULL COMMENT '下注次数',
  `totalbet` decimal(10,2) DEFAULT '0.00',
  `totalvalidamount` decimal(10,2) DEFAULT NULL COMMENT '有效下注',
  `totalwinloss` decimal(10,2) DEFAULT '0.00',
  `redpackectnum` int(10) DEFAULT '0',
  `totalredpackect` decimal(10,2) DEFAULT '0.00',
  `releasewater` decimal(10,2) DEFAULT NULL COMMENT '返水',
  `rakeback` decimal(10,2) DEFAULT NULL COMMENT '返佣金',
  `rakebacknum` int(10) DEFAULT NULL COMMENT '返佣金次数',
  `releasewaternum` int(10) DEFAULT NULL COMMENT '返水次数',
  `isagent` int(1) DEFAULT '0',
  `updated_at` varchar(20) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gamereport
-- ----------------------------

-- ----------------------------
-- Table structure for game_lists
-- ----------------------------
DROP TABLE IF EXISTS `game_lists`;
CREATE TABLE `game_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台名称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏名称',
  `name_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏英文名称',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词',
  `game_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_title_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类id',
  `order_by` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` int(11) NOT NULL DEFAULT '0' COMMENT '1热门游戏 0不是',
  `is_new` int(11) NOT NULL DEFAULT '0' COMMENT '1最新游戏 0不是',
  `is_recommend` int(11) NOT NULL DEFAULT '0' COMMENT '1推荐游戏 0不是',
  `is_pc` int(11) NOT NULL DEFAULT '1' COMMENT '1pc显示 0不是',
  `is_mobile` int(11) NOT NULL DEFAULT '1' COMMENT '1手机展示 0不是',
  `site_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '网站状态',
  `app_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'app状态',
  `is_top` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是顶级分类',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `check_yes_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_no_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_logo_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of game_lists
-- ----------------------------
INSERT INTO `game_lists` VALUES ('1', 'FS', 'FS电子', '', '', 'MyGameLobby', '', '', 'concise', '998', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:04:46', '2025-11-08 15:41:58', '', null, 'fs/game/web/fs.webp', 'fs/game/wap/fs.webp', 'fs/game/wap/fs.webp', '', 'fs/game/header/fs.webp');
INSERT INTO `game_lists` VALUES ('2', 'FSC', 'FS彩票', '', '', '', '', '', 'lottery', '1000', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:16:41', '2022-12-14 18:37:50', '', null, 'fs/lottery/web/fsc.webp', 'fs/lottery/wap/fsc.webp', 'fs/lottery/wap/fsc.webp', '', 'fs/lottery/header/fsc.webp');
INSERT INTO `game_lists` VALUES ('3', 'TY', '天游棋牌', '', '', '', '', '', 'joker', '1001', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:45:00', '2022-12-14 18:38:03', '', null, 'fs/joker/web/ty.webp', 'fs/joker/wap/ty.webp', 'fs/joker/wap/ty.webp', '', 'fs/joker/header/ty.webp');
INSERT INTO `game_lists` VALUES ('4', 'PG2', 'PG电子', '', '', 'MyGameLobby', '', '', 'concise', '1002', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:46:11', '2022-12-14 18:38:17', '', null, 'fs/game/web/pg2.webp', 'fs/game/wap/pg2.webp', 'fs/game/wap/pg2.webp', '', 'fs/game/header/pg2.webp');
INSERT INTO `game_lists` VALUES ('5', 'JILI', 'JILI电子', '', '', 'MyGameLobby', '', '', 'concise', '1003', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:52:31', '2022-12-14 18:38:33', '', null, 'fs/game/web/jili.webp', 'fs/game/wap/jili.webp', 'fs/game/wap/jili.webp', '', 'fs/game/header/jili.webp');
INSERT INTO `game_lists` VALUES ('6', 'HN', 'HN弹珠彩', '', '', '', '', '', 'lottery', '1004', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:56:17', '2022-12-14 18:38:49', '', null, 'fs/lottery/web/hn.webp', 'fs/lottery/wap/hn.webp', 'fs/lottery/wap/hn.webp', '', 'fs/lottery/header/hn.webp');
INSERT INTO `game_lists` VALUES ('7', 'KYL', '开元棋牌', '', '', '', '', '', 'joker', '1005', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 15:58:26', '2022-12-14 18:39:03', '', null, 'fs/joker/web/kyl.webp', 'fs/joker/wap/kyl.webp', 'fs/joker/wap/kyl.webp', '', 'fs/joker/header/kyl.webp');
INSERT INTO `game_lists` VALUES ('8', 'EVOS', 'EVO视讯', '', '', '', '', '', 'realbet', '1006', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:14:54', '2022-12-14 18:39:19', '', null, 'fs/live/web/evos.webp', 'fs/live/wap/evos.webp', 'fs/live/wap/evos.webp', '', 'fs/live/header/evos.webp');
INSERT INTO `game_lists` VALUES ('9', 'PA', 'PA电子', '', '', 'MyGameLobby', '', '', 'concise', '1007', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:16:02', '2022-12-14 18:39:38', '', null, 'fs/game/web/pa.webp', 'fs/game/wap/pa.webp', 'fs/game/wap/pa.webp', '', 'fs/game/header/pa.webp');
INSERT INTO `game_lists` VALUES ('10', 'PA', 'PA视讯', '', '', '1', '', '', 'realbet', '1008', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:20:45', '2022-12-14 18:39:56', '', null, 'fs/live/web/pa.webp', 'fs/live/wap/pa.webp', 'fs/live/wap/pa.webp', '', 'fs/live/header/pa.webp');
INSERT INTO `game_lists` VALUES ('11', 'AB', '欧博视讯', '', '', '', '', '', 'realbet', '1009', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:31:53', '2022-12-14 18:40:13', '', null, 'fs/live/web/ab.webp', 'fs/live/wap/ab.webp', 'fs/live/wap/ab.webp', '', 'fs/live/header/ab.webp');
INSERT INTO `game_lists` VALUES ('12', 'AI', 'AI视讯', '', '', '', '', '', 'realbet', '1010', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:33:48', '2022-12-14 18:40:32', '', null, 'fs/live/web/ai.webp', 'fs/live/wap/ai.webp', 'fs/live/wap/ai.webp', '', 'fs/live/header/ai.webp');
INSERT INTO `game_lists` VALUES ('13', 'AOG', 'AOG斗鸡', '', '', '', '', '', 'sport', '1011', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:35:05', '2022-12-14 18:40:52', '', null, 'fs/sport/web/aog.webp', 'fs/sport/wap/aog.webp', 'fs/sport/wap/aog.webp', '', 'fs/sport/header/aog.webp');
INSERT INTO `game_lists` VALUES ('14', 'AR', 'AR视讯', '', '', '', '', '', 'realbet', '1012', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:53:36', '2022-12-14 17:11:57', '', null, 'fs/live/web/ar.webp', 'fs/live/wap/ar.webp', 'fs/live/wap/ar.webp', '', 'fs/live/header/ar.webp');
INSERT INTO `game_lists` VALUES ('15', 'AS', '亚星视讯', '', '', '', '', '', 'realbet', '1013', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:56:51', '2022-12-14 17:26:47', '', null, 'fs/live/web/as.webp', 'fs/live/wap/as.webp', 'fs/live/wap/as.webp', '', 'fs/live/header/as.webp');
INSERT INTO `game_lists` VALUES ('16', 'BBIN', 'BBIN棋牌', '', '', 'cards', '', '', 'joker', '1014', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:59:02', '2022-12-14 17:27:02', '', null, 'fs/joker/web/bbin.webp', 'fs/joker/wap/bbin.webp', 'fs/joker/wap/bbin.webp', '', 'fs/joker/header/bbin.webp');
INSERT INTO `game_lists` VALUES ('17', 'BBIN', 'BBIN彩票', '', '', 'Ltlottery', '', '', 'lottery', '1015', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 16:59:56', '2022-12-14 17:27:42', '', null, 'fs/lottery/web/bbin.webp', 'fs/lottery/wap/bbin.webp', 'fs/lottery/wap/bbin.webp', '', 'fs/lottery/header/bbin.webp');
INSERT INTO `game_lists` VALUES ('18', 'BBIN', 'BBIN电子', '', '', 'game', '', '', 'concise', '1016', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:00:59', '2022-12-14 17:28:34', '', null, 'fs/game/web/bbin.webp', 'fs/game/wap/bbin.webp', 'fs/game/wap/bbin.webp', '', 'fs/game/header/bbin.webp');
INSERT INTO `game_lists` VALUES ('19', 'BBIN', 'BBIN视讯', '', '', 'live', '', '', 'realbet', '1017', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:02:29', '2022-12-14 17:28:46', '', null, 'fs/live/web/bbin.webp', 'fs/live/wap/bbin.webp', 'fs/live/wap/bbin.webp', '', 'fs/live/header/bbin.webp');
INSERT INTO `game_lists` VALUES ('20', 'BG', 'BG棋牌', '', '', '443', '', '', 'joker', '1018', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:03:44', '2022-12-14 17:29:00', '', null, 'fs/joker/web/bg.webp', 'fs/joker/wap/bg.webp', 'fs/joker/wap/bg.webp', '', 'fs/joker/header/bg.webp');
INSERT INTO `game_lists` VALUES ('21', 'BG', 'BG电子', '', '', 'game', '', '', 'concise', '1019', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:04:58', '2022-12-14 17:29:10', '', null, 'fs/game/web/bg.webp', 'fs/game/wap/bg.webp', 'fs/game/wap/bg.webp', '', 'fs/game/header/bg.webp');
INSERT INTO `game_lists` VALUES ('22', 'BG', 'BG视讯', '', '', 'live', '', '', 'realbet', '1020', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:07:05', '2022-12-14 17:29:25', '', null, 'fs/live/web/bg.webp', 'fs/live/wap/bg.webp', 'fs/live/wap/bg.webp', '', 'fs/live/header/bg.webp');
INSERT INTO `game_lists` VALUES ('23', 'BL', '伯乐棋牌', '', '', '', '', '', 'joker', '1021', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:08:48', '2022-12-14 17:29:42', '', null, 'fs/joker/web/bl.webp', 'fs/joker/wap/bl.webp', 'fs/joker/wap/bl.webp', '', 'fs/joker/header/bl.webp');
INSERT INTO `game_lists` VALUES ('24', 'BOYA', '博雅棋牌', '', '', '', '', '', 'joker', '1022', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:11:14', '2022-12-14 17:29:53', '', null, 'fs/joker/web/boya.webp', 'fs/joker/wap/boya.webp', 'fs/joker/wap/boya.webp', '', 'fs/joker/header/boya.webp');
INSERT INTO `game_lists` VALUES ('25', 'BP', 'BP电子', '', '', 'MyGameLobby', '', '', 'concise', '1023', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:13:49', '2022-12-14 18:33:14', '2022-12-13/1694da30de5bfe933e4aa61c057345a1.png', null, 'fs/game/web/bp.webp', 'fs/game/wap/bp.webp', 'fs/game/wap/bp.webp', '', 'fs/game/header/bp.webp');
INSERT INTO `game_lists` VALUES ('26', 'BSP', '百盛棋牌', '', '', '', '', '', 'joker', '1024', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:23:20', '2022-12-14 18:33:26', '2022-12-13/b9ad5ddb248a69d2feb99dc854e874b9.png', null, 'fs/joker/web/bsp.webp', 'fs/joker/wap/bsp.webp', 'fs/joker/wap/bsp.webp', '', 'fs/joker/header/bsp.webp');
INSERT INTO `game_lists` VALUES ('27', 'BTG', 'BTG电子', '', '', 'MyGameLobby', '', '', 'concise', '1025', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:24:54', '2022-12-14 18:33:36', '2022-12-13/74430fd8529323ccb7138b71fdbcdbb9.png', null, 'fs/game/web/btg.webp', 'fs/game/wap/btg.webp', 'fs/game/wap/btg.webp', '', 'fs/game/header/btg.webp');
INSERT INTO `game_lists` VALUES ('28', 'CQ9', 'CQ9电子', '', '', 'MyGameLobby', '', '', 'concise', '1026', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:46:07', '2022-12-14 18:33:49', '2022-12-13/cee8556363a4af24bf7d0f5da388f99a.png', null, 'fs/game/web/cq9.webp', 'fs/game/wap/cq9.webp', 'fs/game/wap/cq9.webp', '', 'fs/game/header/cq9.webp');
INSERT INTO `game_lists` VALUES ('29', 'DBC', 'DB棋牌', '', '', '', '', '', 'joker', '1027', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:47:25', '2022-12-14 18:34:01', '2022-12-13/2db19952bd8e8d2b7d5f4d088a0f1394.png', null, 'fs/joker/web/dbc.webp', 'fs/joker/wap/dbc.webp', 'fs/joker/wap/dbc.webp', '', 'fs/joker/header/dbc.webp');
INSERT INTO `game_lists` VALUES ('30', 'DBE', 'DB电竞', '', '', '', '', '', 'gaming', '1028', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 17:55:28', '2022-12-14 18:52:20', '', null, 'fs/dianjing/web/dbe.webp', 'fs/dianjing/wap/dbe.webp', 'fs/dianjing/wap/dbe.webp', '', 'fs/dianjing/header/dbe.webp');
INSERT INTO `game_lists` VALUES ('31', 'DBG', 'DB电子', '', '', 'MyGameLobby', '', '', 'concise', '1029', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:23:48', '2022-12-14 18:52:34', '', null, 'fs/game/web/dbg.webp', 'fs/game/wap/dbg.webp', 'fs/game/wap/dbg.webp', '', 'fs/game/header/dbg.webp');
INSERT INTO `game_lists` VALUES ('32', 'DBL', 'DB彩', '', '', '', '', '', 'lottery', '1030', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:25:33', '2022-12-14 18:52:46', '', null, 'fs/lottery/web/dbl.webp', 'fs/lottery/wap/dbl.webp', 'fs/lottery/wap/dbl.webp', '', 'fs/lottery/header/dbl.webp');
INSERT INTO `game_lists` VALUES ('33', 'DBR', 'DB视讯', '', '', '', '', '', 'realbet', '1031', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:27:46', '2022-12-14 18:52:58', '', null, 'fs/live/web/dbr.webp', 'fs/live/wap/dbr.webp', 'fs/live/wap/dbr.webp', '', 'fs/live/header/dbr.webp');
INSERT INTO `game_lists` VALUES ('34', 'DBS', '熊猫体育', '', '', '', '', '', 'sport', '1032', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:29:24', '2022-12-14 18:53:13', '', null, 'fs/sport/web/dbs.webp', 'fs/sport/wap/dbs.webp', 'fs/sport/wap/dbs.webp', '', 'fs/sport/header/dbs.webp');
INSERT INTO `game_lists` VALUES ('35', 'DP', 'DP体育', '', '', '', '', '', 'sport', '1033', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:31:03', '2022-12-14 18:53:25', '', null, 'fs/sport/web/dp.webp', 'fs/sport/wap/dp.webp', 'fs/sport/wap/dp.webp', '', 'fs/sport/header/dp.webp');
INSERT INTO `game_lists` VALUES ('36', 'DPD', 'DP电竞', '', '', '', '', '', 'gaming', '1034', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:32:15', '2022-12-14 18:53:41', '', null, 'fs/dianjing/web/dpd.webp', 'fs/dianjing/wap/dpd.webp', 'fs/dianjing/wap/dpd.webp', '', 'fs/dianjing/header/dpd.webp');
INSERT INTO `game_lists` VALUES ('37', 'DS', 'DS电子', '', '', 'MyGameLobby', '', '', 'concise', '1035', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:32:59', '2022-12-14 18:53:56', '', null, 'fs/game/web/ds.webp', 'fs/game/wap/ds.webp', 'fs/game/wap/ds.webp', '', 'fs/game/header/ds.webp');
INSERT INTO `game_lists` VALUES ('38', 'DT', '大唐棋牌', '', '', '', '', '', 'joker', '1036', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:34:27', '2022-12-14 18:54:09', '', null, 'fs/joker/web/dt.webp', 'fs/joker/wap/dt.webp', 'fs/joker/wap/dt.webp', '', 'fs/joker/header/dt.webp');
INSERT INTO `game_lists` VALUES ('39', 'EG', '简单电子', '', '', 'MyGameLobby', '', '', 'concise', '1037', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:35:59', '2022-12-14 18:54:22', '', null, 'fs/game/web/eg.webp', 'fs/game/wap/eg.webp', 'fs/game/wap/eg.webp', '', 'fs/game/header/eg.webp');
INSERT INTO `game_lists` VALUES ('40', 'ESB', '牛电竞', '', '', '', '', '', 'gaming', '1038', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 18:41:08', '2022-12-14 18:54:37', '', null, 'fs/dianjing/web/esb.webp', 'fs/dianjing/wap/esb.webp', 'fs/dianjing/wap/esb.webp', '', 'fs/dianjing/header/esb.webp');
INSERT INTO `game_lists` VALUES ('41', 'EVO', 'EVO赛马', '', '', '', '', '', 'sport', '1039', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 19:52:36', '2022-12-14 18:54:58', '', null, 'fs/sport/web/evo.webp', 'fs/sport/wap/evo.webp', 'fs/sport/wap/evo.webp', '', 'fs/sport/header/evo.webp');
INSERT INTO `game_lists` VALUES ('42', 'EVOL', 'EVO视讯', '', '', '', '', '', 'realbet', '1040', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 19:59:51', '2022-12-14 18:43:33', '', null, 'fs/live/web/evol.webp', 'fs/live/wap/evol.webp', 'fs/live/wap/evol.webp', '', 'fs/live/header/evol.webp');
INSERT INTO `game_lists` VALUES ('43', 'FB', 'FB体育', '', '', '', '', '', 'sport', '1041', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:01:50', '2022-12-14 18:43:44', '', null, 'fs/sport/web/fb.webp', 'fs/sport/wap/fb.webp', 'fs/sport/wap/fb.webp', '', 'fs/sport/header/fb.webp');
INSERT INTO `game_lists` VALUES ('44', 'FC', '发财电子', '', '', 'MyGameLobby', '', '', 'concise', '1042', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:04:20', '2022-12-14 18:43:57', '', null, 'fs/game/web/fc.webp', 'fs/game/wap/fc.webp', 'fs/game/wap/fc.webp', '', 'fs/game/header/fc.webp');
INSERT INTO `game_lists` VALUES ('45', 'FG', '乐游电子', '', '', 'MyGameLobby', '', '', 'concise', '1043', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:06:40', '2022-12-14 18:44:13', '', null, 'fs/game/web/fg.webp', 'fs/game/wap/fg.webp', 'fs/game/wap/fg.webp', '', 'fs/game/header/fg.webp');
INSERT INTO `game_lists` VALUES ('46', 'FT', '天风电子', '', '', 'MyGameLobby', '', '', 'concise', '1044', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:13:36', '2022-12-14 18:44:38', '', null, 'fs/game/web/ft.webp', 'fs/game/wap/ft.webp', 'fs/game/wap/ft.webp', '', 'fs/game/header/ft.webp');
INSERT INTO `game_lists` VALUES ('47', 'G5', '5G电子', '', '', 'MyGameLobby', '', '', 'concise', '1045', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:14:45', '2022-12-14 18:45:02', '', null, 'fs/game/web/g5.webp', 'fs/game/wap/g5.webp', 'fs/game/wap/g5.webp', '', 'fs/game/header/g5.webp');
INSERT INTO `game_lists` VALUES ('48', 'G568', '568win电子', '', '', 'MyGameLobby', '', '', 'concise', '1046', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:15:48', '2022-12-14 18:45:28', '', null, 'fs/game/web/g568.webp', 'fs/game/wap/g568.webp', 'fs/game/wap/g568.webp', '', 'fs/game/header/g568.webp');
INSERT INTO `game_lists` VALUES ('49', 'GD', '高登棋牌', '', '', '', '', '', 'joker', '1047', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 20:18:10', '2022-12-14 18:45:56', '', null, 'fs/joker/web/gd.webp', 'fs/joker/wap/gd.webp', 'fs/joker/wap/gd.webp', '', 'fs/joker/header/gd.webp');
INSERT INTO `game_lists` VALUES ('50', 'GMW', 'GMW电子', '', '', 'MyGameLobby', '', '', 'concise', '1048', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:10:53', '2022-12-14 18:46:26', '', null, 'fs/game/web/gmw.webp', 'fs/game/wap/gmw.webp', 'fs/game/wap/gmw.webp', '', 'fs/game/header/gmw.webp');
INSERT INTO `game_lists` VALUES ('51', 'HB', 'HB电子', '', '', 'MyGameLobby', '', '', 'concise', '1049', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:38:26', '2022-12-14 10:17:27', '', null, 'fs/game/web/hb.webp', 'fs/game/wap/hb.webp', 'fs/game/wap/hb.webp', '', 'fs/game/header/hb.webp');
INSERT INTO `game_lists` VALUES ('52', 'IA', '小艾电竞', '', '', '', '', '', 'gaming', '1050', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:40:32', '2022-12-14 10:09:49', '', null, 'fs/dianjing/web/ia.webp', 'fs/dianjing/wap/ia.webp', 'fs/dianjing/wap/ia.webp', '', 'fs/dianjing/header/ia.webp');
INSERT INTO `game_lists` VALUES ('53', 'IBC', '沙巴', '', '', '', '', '', 'sport', '1051', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:41:37', '2022-12-14 10:10:29', '', null, 'fs/sport/web/ibc.webp', 'fs/sport/wap/ibc.webp', 'fs/sport/wap/ibc.webp', '', 'fs/sport/header/ibc.webp');
INSERT INTO `game_lists` VALUES ('54', 'IM', 'IM体育', '', '', '', '', '', 'sport', '1052', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:53:07', '2022-12-14 10:18:40', '', null, 'fs/sport/web/im.webp', 'fs/sport/wap/im.webp', 'fs/sport/wap/im.webp', '', 'fs/sport/header/im.webp');
INSERT INTO `game_lists` VALUES ('55', 'IMQP', '双赢棋牌', '', '', '', '', '', 'joker', '1053', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:55:34', '2022-12-14 10:10:50', '', null, 'fs/joker/web/imqp.webp', 'fs/joker/wap/imqp.webp', 'fs/joker/wap/imqp.webp', '', 'fs/joker/header/imqp.webp');
INSERT INTO `game_lists` VALUES ('56', 'JDB', 'JDB电子', '', '', 'MyGameLobby', '', '', 'concise', '1054', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:55:55', '2022-12-14 10:19:45', '', null, 'fs/game/web/jdb.webp', 'fs/game/wap/jdb.webp', 'fs/game/wap/jdb.webp', '', 'fs/game/header/jdb.webp');
INSERT INTO `game_lists` VALUES ('57', 'KA', 'KA电子', '', '', 'MyGameLobby', '', '', 'concise', '1055', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:57:30', '2022-12-14 10:11:06', '', null, 'fs/game/web/ka.webp', 'fs/game/wap/ka.webp', 'fs/game/wap/ka.webp', '', 'fs/game/header/ka.webp');
INSERT INTO `game_lists` VALUES ('58', 'KM', 'KM电子', '', '', 'MyGameLobby', '', '', 'concise', '1056', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:58:46', '2022-12-14 10:11:21', '', null, 'fs/game/web/km.webp', 'fs/game/wap/km.webp', 'fs/game/wap/km.webp', '', 'fs/game/header/km.webp');
INSERT INTO `game_lists` VALUES ('59', 'KX', '凯旋棋牌', '', '', '', '', '', 'joker', '1057', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 21:59:44', '2022-12-14 10:20:45', '', null, 'fs/joker/web/kx.webp', 'fs/joker/wap/kx.webp', 'fs/joker/wap/kx.webp', '', 'fs/joker/header/kx.webp');
INSERT INTO `game_lists` VALUES ('60', 'KY', '开元体育', '', '', '7470', '', '', 'sport', '1058', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:00:51', '2022-12-14 10:21:41', '', null, 'fs/sport/web/ky.webp', 'fs/sport/wap/ky.webp', 'fs/sport/wap/ky.webp', '', 'fs/sport/header/ky.webp');
INSERT INTO `game_lists` VALUES ('61', 'KY', '开元棋牌', '', '', '', '', '', 'joker', '1059', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:01:11', '2022-12-14 10:11:39', '', null, 'fs/joker/web/ky.webp', 'fs/joker/wap/ky.webp', 'fs/joker/wap/ky.webp', '', 'fs/joker/header/ky.webp');
INSERT INTO `game_lists` VALUES ('62', 'KYG', '开元电子', '', '', 'MyGameLobby', '', '', 'concise', '1060', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:04:18', '2022-12-14 10:11:56', '', null, 'fs/game/web/kyg.webp', 'fs/game/wap/kyg.webp', 'fs/game/wap/kyg.webp', '', 'fs/game/header/kyg.webp');
INSERT INTO `game_lists` VALUES ('63', 'KYX', '开元虚拟体育', '', '', '', '', '', 'sport', '1061', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:04:58', '2022-12-14 10:25:00', '', null, 'fs/sport/web/kyx.webp', 'fs/sport/wap/kyx.webp', 'fs/sport/wap/kyx.webp', '', 'fs/sport/header/kyx.webp');
INSERT INTO `game_lists` VALUES ('64', 'L22', 'Live22电子', '', '', 'MyGameLobby', '', '', 'concise', '1062', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:06:29', '2022-12-14 10:26:09', '', null, 'fs/game/web/l22.webp', 'fs/game/wap/l22.webp', 'fs/game/wap/l22.webp', '', 'fs/game/header/l22.webp');
INSERT INTO `game_lists` VALUES ('65', 'L568', '利记视讯', '', '', '', '', '', 'realbet', '1063', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:06:48', '2022-12-14 10:27:02', '', null, 'fs/live/web/l568.webp', 'fs/live/wap/l568.webp', 'fs/live/wap/l568.webp', '', 'fs/live/header/l568.webp');
INSERT INTO `game_lists` VALUES ('66', 'LEG', '乐游棋牌', '', '', '', '', '', 'joker', '1064', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:12:34', '2022-12-14 10:29:10', '', null, 'fs/joker/web/leg.webp', 'fs/joker/wap/leg.webp', 'fs/joker/wap/leg.webp', '', 'fs/joker/header/leg.webp');
INSERT INTO `game_lists` VALUES ('67', 'LE', 'LEG波胆', '', '', '', '', '', 'sport', '1065', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:12:54', '2022-12-14 10:12:16', '', null, 'fs/sport/web/le.webp', 'fs/sport/wap/le.webp', 'fs/sport/wap/le.webp', '', 'fs/sport/header/le.webp');
INSERT INTO `game_lists` VALUES ('68', 'LH', 'TF雷火电竞', '', '', '', '', '', 'gaming', '1066', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 22:13:15', '2022-12-14 10:29:30', '', null, 'fs/dianjing/web/lh.webp', 'fs/dianjing/wap/lh.webp', 'fs/dianjing/wap/lh.webp', '', 'fs/dianjing/header/lh.webp');
INSERT INTO `game_lists` VALUES ('69', 'LK', '幸运棋牌', '', '', '', '', '', 'joker', '1067', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 23:14:28', '2022-12-14 10:29:45', '', null, 'fs/joker/web/lk.webp', 'fs/joker/wap/lk.webp', 'fs/joker/wap/lk.webp', '', 'fs/joker/header/lk.webp');
INSERT INTO `game_lists` VALUES ('70', 'MG', 'MG视讯', '', '', '', '', '', 'realbet', '1068', '1', '1', '0', '1', '1', '1', '1', '1', '2022-09-24 23:38:08', '2022-12-14 17:30:06', '', null, 'fs/live/web/mg.webp', 'fs/live/wap/mg.webp', 'fs/live/wap/mg.webp', '', 'fs/live/header/mg.webp');
INSERT INTO `game_lists` VALUES ('71', 'MG', 'MG电子', '', '', 'MyGameLobby', '', '', 'concise', '1069', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 15:52:17', '2022-12-12 22:48:57', '', null, 'fs/game/web/mg.webp', 'fs/game/wap/mg.webp', 'fs/game/wap/mg.webp', '', 'fs/game/header/mg.webp');
INSERT INTO `game_lists` VALUES ('72', 'MIKI', '米奇世界', '', '', '', '', '', 'realbet', '1070', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 15:53:27', '2022-12-12 22:49:29', '', null, 'fs/live/web/miki.webp', 'fs/live/wap/miki.webp', 'fs/live/wap/miki.webp', '', 'fs/live/header/miki.webp');
INSERT INTO `game_lists` VALUES ('73', 'MS', 'MICRO', '', '', 'MyGameLobby', '', '', 'concise', '1071', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 15:54:02', '2022-12-12 22:49:46', '', null, 'fs/game/web/ms.webp', 'fs/game/wap/ms.webp', 'fs/game/wap/ms.webp', '', 'fs/game/header/ms.webp');
INSERT INTO `game_lists` VALUES ('74', 'MT', '美天棋牌', '', '', '', '', '', 'joker', '1072', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:21:10', '2022-12-12 22:50:24', '', null, 'fs/joker/web/mt.webp', 'fs/joker/wap/mt.webp', 'fs/joker/wap/mt.webp', '', 'fs/joker/header/mt.webp');
INSERT INTO `game_lists` VALUES ('75', 'MTLive', 'MT视讯', '', '', '', '', '', 'realbet', '1073', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:23:34', '2022-12-12 22:50:40', '', null, 'fs/live/web/mtlive.webp', 'fs/live/wap/mtlive.webp', 'fs/live/wap/mtlive.webp', '', 'fs/live/header/mtlive.webp');
INSERT INTO `game_lists` VALUES ('76', 'MW', '大满贯棋牌', '', '', '', '', '', 'joker', '1074', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:24:52', '2022-12-12 22:51:18', '', null, 'fs/joker/web/mw.webp', 'fs/joker/wap/mw.webp', 'fs/joker/wap/mw.webp', '', 'fs/joker/header/mw.webp');
INSERT INTO `game_lists` VALUES ('77', 'NC', 'NC电子', '', '', 'MyGameLobby', '', '', 'concise', '1075', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:54:33', '2022-12-12 22:51:46', '', null, 'fs/game/web/nc.webp', 'fs/game/wap/nc.webp', 'fs/game/wap/nc.webp', '', 'fs/game/header/nc.webp');
INSERT INTO `game_lists` VALUES ('78', 'NET', 'NETNT电子', '', '', 'MyGameLobby', '', '', 'concise', '1076', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:56:12', '2022-12-12 22:52:13', '', null, 'fs/game/web/net.webp', 'fs/game/wap/net.webp', 'fs/game/wap/net.webp', '', 'fs/game/header/net.webp');
INSERT INTO `game_lists` VALUES ('79', 'OG', 'OG电子', '', '', 'MyGameLobby', '', '', 'concise', '1077', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:56:42', '2022-12-12 22:52:39', '', null, 'fs/game/web/og.webp', 'fs/game/wap/og.webp', 'fs/game/wap/og.webp', '', 'fs/game/header/og.webp');
INSERT INTO `game_lists` VALUES ('80', 'OG', 'OG视讯', '', '', '', '', '', 'realbet', '1078', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:57:13', '2022-12-12 22:53:15', '', null, 'fs/live/web/og.webp', 'fs/live/wap/og.webp', 'fs/live/wap/og.webp', '', 'fs/live/header/og.webp');
INSERT INTO `game_lists` VALUES ('81', 'PG', 'PG电子', '', '', 'MyGameLobby', '', '', 'concise', '1079', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:57:58', '2022-12-12 22:53:27', '', null, 'fs/game/web/pg.webp', 'fs/game/wap/pg.webp', 'fs/game/wap/pg.webp', '', 'fs/game/header/pg.webp');
INSERT INTO `game_lists` VALUES ('82', 'PP', 'PP视讯', '', '', '', '', '', 'realbet', '1080', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:58:40', '2022-12-12 22:53:56', '', null, 'fs/live/web/pp.webp', 'fs/live/wap/pp.webp', 'fs/live/wap/pp.webp', '', 'fs/live/header/pp.webp');
INSERT INTO `game_lists` VALUES ('83', 'PP', 'PP电子', '', '', 'slotsLobby', '', '', 'concise', '1081', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:59:04', '2022-12-12 22:54:24', '', null, 'fs/game/web/pp.webp', 'fs/game/wap/pp.webp', 'fs/game/wap/pp.webp', '', 'fs/game/header/pp.webp');
INSERT INTO `game_lists` VALUES ('84', 'PS', 'PS电子', '', '', 'MyGameLobby', '', '', 'concise', '1082', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:59:30', '2022-12-12 22:54:55', '', null, 'fs/game/web/ps.webp', 'fs/game/wap/ps.webp', 'fs/game/wap/ps.webp', '', 'fs/game/header/ps.webp');
INSERT INTO `game_lists` VALUES ('85', 'PT', 'PT视讯', '', '', '', '', '', 'realbet', '1083', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 16:59:58', '2022-12-12 22:55:26', '', null, 'fs/live/web/pt.webp', 'fs/live/wap/pt.webp', 'fs/live/wap/pt.webp', '', 'fs/live/header/pt.webp');
INSERT INTO `game_lists` VALUES ('86', 'PT', 'PT电子', '', '', 'MyGameLobby', '', '', 'concise', '1084', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 17:00:53', '2022-12-12 22:56:04', '', null, 'fs/game/web/pt.webp', 'fs/game/wap/pt.webp', 'fs/game/wap/pt.webp', '', 'fs/game/header/pt.webp');
INSERT INTO `game_lists` VALUES ('87', 'R88', 'R88电子', '', '', 'MyGameLobby', '', '', 'concise', '1085', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 17:01:26', '2022-12-12 22:56:46', '', null, 'fs/game/web/r88.webp', 'fs/game/wap/r88.webp', 'fs/game/wap/r88.webp', '', 'fs/game/header/r88.webp');
INSERT INTO `game_lists` VALUES ('88', 'RT', '红虎电子', '', '', 'MyGameLobby', '', '', 'concise', '1086', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-07 17:02:06', '2022-12-07 19:16:50', '', null, 'fs/game/web/rt.webp', 'fs/game/wap/rt.webp', 'fs/game/wap/rt.webp', '', 'fs/game/header/rt.webp');
INSERT INTO `game_lists` VALUES ('89', 'SBO', '利记体育', '', '', '', '', '', 'sport', '1087', '1', '1', '0', '1', '1', '0', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/sbo.webp', 'fs/sport/wap/sbo.webp', 'fs/sport/wap/sbo.webp', '', 'fs/sport/header/sbo.webp');
INSERT INTO `game_lists` VALUES ('90', 'SBOG', 'SBO电子', '', '', 'MyGameLobby', '', '', 'concise', '1088', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/sbog.webp', 'fs/game/wap/sbog.webp', 'fs/game/wap/sbog.webp', '', 'fs/game/header/sbog.webp');
INSERT INTO `game_lists` VALUES ('91', 'SBOR', 'SBO-RNG电子', '', '', 'MyGameLobby', '', '', 'concise', '1089', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/sbor.webp', 'fs/game/wap/sbor.webp', 'fs/game/wap/sbor.webp', '', 'fs/game/header/sbor.webp');
INSERT INTO `game_lists` VALUES ('92', 'SBOX', '利记虚拟体育', '', '', '', '', '', 'sport', '1090', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/sbox.webp', 'fs/sport/wap/sbox.webp', 'fs/sport/wap/sbox.webp', '', 'fs/sport/header/sbox.webp');
INSERT INTO `game_lists` VALUES ('93', 'Sexy', 'Sexy电子', '', '', 'MyGameLobby', '', '', 'concise', '1091', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/sexy.webp', 'fs/game/wap/sexy.webp', 'fs/game/wap/sexy.webp', '', 'fs/game/header/sexy.webp');
INSERT INTO `game_lists` VALUES ('94', 'SG', 'SG电子', '', '', 'MyGameLobby', '', '', 'concise', '1092', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/sg.webp', 'fs/game/wap/sg.webp', 'fs/game/wap/sg.webp', '', 'fs/game/header/sg.webp');
INSERT INTO `game_lists` VALUES ('95', 'SS', '三昇', '', '', '', '', '', 'sport', '1093', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/ss.webp', 'fs/sport/wap/ss.webp', 'fs/sport/wap/ss.webp', '', 'fs/sport/header/ss.webp');
INSERT INTO `game_lists` VALUES ('96', 'SWC', '双赢彩票', '', '', '', '', '', 'lottery', '1094', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/lottery/web/swc.webp', 'fs/lottery/wap/swc.webp', 'fs/lottery/wap/swc.webp', '', 'fs/lottery/header/swc.webp');
INSERT INTO `game_lists` VALUES ('97', 'SY', '性感视讯', '', '', '', '', '', 'realbet', '1095', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/sy.webp', 'fs/live/wap/sy.webp', 'fs/live/wap/sy.webp', '', 'fs/live/header/sy.webp');
INSERT INTO `game_lists` VALUES ('98', 'TP', 'TP彩票', '', '', 'rg_1000', '', '', 'lottery', '1096', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/lottery/web/tp.webp', 'fs/lottery/wap/tp.webp', 'fs/lottery/wap/tp.webp', '', 'fs/lottery/header/tp.webp');
INSERT INTO `game_lists` VALUES ('99', 'TP', 'TP棋牌', '', '', 'MyGameLobby', '', '', 'joker', '1097', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/joker/web/tp.webp', 'fs/joker/wap/tp.webp', 'fs/joker/wap/tp.webp', '', 'fs/joker/header/tp.webp');
INSERT INTO `game_lists` VALUES ('100', 'TP', 'TP电子', '', '', 'MyGameLobby', '', '', 'concise', '1098', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/tp.webp', 'fs/game/wap/tp.webp', 'fs/game/wap/tp.webp', '', 'fs/game/header/tp.webp');
INSERT INTO `game_lists` VALUES ('101', 'TP', 'TP视讯', '', '', '', '', '', 'realbet', '1099', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/tp.webp', 'fs/live/wap/tp.webp', 'fs/live/wap/tp.webp', '', 'fs/live/header/tp.webp');
INSERT INTO `game_lists` VALUES ('102', 'UU', 'UU电子', '', '', 'MyGameLobby', '', '', 'concise', '1100', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/uu.webp', 'fs/game/wap/uu.webp', 'fs/game/wap/uu.webp', '', 'fs/game/header/uu.webp');
INSERT INTO `game_lists` VALUES ('103', 'VA', 'VA电子', '', '', 'MyGameLobby', '', '', 'concise', '1101', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/va.webp', 'fs/game/wap/va.webp', 'fs/game/wap/va.webp', '', 'fs/game/header/va.webp');
INSERT INTO `game_lists` VALUES ('104', 'VG', '财神棋牌', '', '', 'Sportbook', '', '', 'joker', '1102', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/joker/web/vg.webp', 'fs/joker/wap/vg.webp', 'fs/joker/wap/vg.webp', '', 'fs/joker/header/vg.webp');
INSERT INTO `game_lists` VALUES ('105', 'VIA', 'VIA视讯', '', '', 'Slot', '', '', 'realbet', '1103', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/via.webp', 'fs/live/wap/via.webp', 'fs/live/wap/via.webp', '', 'fs/live/header/via.webp');
INSERT INTO `game_lists` VALUES ('106', 'VR', 'VR彩', '', '', 'Live', '', '', 'lottery', '1104', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/lottery/web/vr.webp', 'fs/lottery/wap/vr.webp', 'fs/lottery/wap/vr.webp', '', 'fs/lottery/header/vr.webp');
INSERT INTO `game_lists` VALUES ('107', 'WE', 'WE体育', '', '', 'Sportbook', '', '', 'sport', '1105', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/we.webp', 'fs/sport/wap/we.webp', 'fs/sport/wap/we.webp', '', 'fs/sport/header/we.webp');
INSERT INTO `game_lists` VALUES ('108', 'WE', 'WE电子', '', '', 'Slot', '', '', 'concise', '1106', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/we.webp', 'fs/game/wap/we.webp', 'fs/game/wap/we.webp', '', 'fs/game/header/we.webp');
INSERT INTO `game_lists` VALUES ('109', 'WE', 'WE视讯', '', '', '0', '', '', 'realbet', '1107', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/we.webp', 'fs/live/wap/we.webp', 'fs/live/wap/we.webp', '', 'fs/live/header/we.webp');
INSERT INTO `game_lists` VALUES ('110', 'WG', 'WG电子', '', '', '80', '', '', 'concise', '1108', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/wg.webp', 'fs/game/wap/wg.webp', 'fs/game/wap/wg.webp', '', 'fs/game/header/wg.webp');
INSERT INTO `game_lists` VALUES ('111', 'WL', '瓦力电子', '', '', 'MyGameLobby', '', '', 'concise', '1109', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/wl.webp', 'fs/game/wap/wl.webp', 'fs/game/wap/wl.webp', '', 'fs/game/header/wl.webp');
INSERT INTO `game_lists` VALUES ('112', 'WL', '瓦力棋牌', '', '', '0', '', '', 'joker', '1110', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/joker/web/wl.webp', 'fs/joker/wap/wl.webp', 'fs/joker/wap/wl.webp', '', 'fs/joker/header/wl.webp');
INSERT INTO `game_lists` VALUES ('113', 'WL', '瓦力视讯', '', '', '', '', '', 'realbet', '1111', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/wl.webp', 'fs/live/wap/wl.webp', 'fs/live/wap/wl.webp', '', 'fs/live/header/wl.webp');
INSERT INTO `game_lists` VALUES ('114', 'WLT', '瓦力体育', '', '', '', '', '', 'sport', '1112', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/wlt.webp', 'fs/sport/wap/wlt.webp', 'fs/sport/wap/wlt.webp', '', 'fs/sport/header/wlt.webp');
INSERT INTO `game_lists` VALUES ('115', 'WM', '完美视讯', '', '', '', '', '', 'realbet', '1113', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/wm.webp', 'fs/live/wap/wm.webp', 'fs/live/wap/wm.webp', '', 'fs/live/header/wm.webp');
INSERT INTO `game_lists` VALUES ('116', 'WOW', 'WOW电子', '', '', 'MyGameLobby', '', '', 'concise', '1114', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/wow.webp', 'fs/game/wap/wow.webp', 'fs/game/wap/wow.webp', '', 'fs/game/header/wow.webp');
INSERT INTO `game_lists` VALUES ('117', 'WS', '万昇', '', '', '', '', '', 'sport', '1115', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/ws.webp', 'fs/sport/wap/ws.webp', 'fs/sport/wap/ws.webp', '', 'fs/sport/header/ws.webp');
INSERT INTO `game_lists` VALUES ('118', 'WT', 'WT视讯', '', '', '', '', '', 'realbet', '1116', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/wt.webp', 'fs/live/wap/wt.webp', 'fs/live/wap/wt.webp', '', 'fs/live/header/wt.webp');
INSERT INTO `game_lists` VALUES ('119', 'WTC', 'WT彩票', '', '', '', '', '', 'lottery', '1117', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/lottery/web/wtc.webp', 'fs/lottery/wap/wtc.webp', 'fs/lottery/wap/wtc.webp', '', 'fs/lottery/header/wtc.webp');
INSERT INTO `game_lists` VALUES ('120', 'WW', 'WT电子', '', '', 'MyGameLobby', '', '', 'concise', '1118', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/game/web/ww.webp', 'fs/game/wap/ww.webp', 'fs/game/wap/ww.webp', '', 'fs/game/header/ww.webp');
INSERT INTO `game_lists` VALUES ('121', 'XJ', '小金体育', '', '', '', '', '', 'sport', '1119', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/sport/web/xj.webp', 'fs/sport/wap/xj.webp', 'fs/sport/wap/xj.webp', '', 'fs/sport/header/xj.webp');
INSERT INTO `game_lists` VALUES ('122', 'XJC', '小金彩票', '', '', '', '', '', 'lottery', '1120', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/lottery/web/xjc.webp', 'fs/lottery/wap/xjc.webp', 'fs/lottery/wap/xjc.webp', '', 'fs/lottery/header/xjc.webp');
INSERT INTO `game_lists` VALUES ('123', 'concise', 'XPG视讯', '', '', '', '', '', 'realbet', '1121', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/concise.webp', 'fs/live/wap/concise.webp', 'fs/live/wap/concise.webp', '', 'fs/live/header/concise.webp');
INSERT INTO `game_lists` VALUES ('124', 'Yeebet', '易博视讯', '', '', '', '', '', 'realbet', '1122', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/live/web/yeebet.webp', 'fs/live/wap/yeebet.webp', 'fs/live/wap/yeebet.webp', '', 'fs/live/header/yeebet.webp');
INSERT INTO `game_lists` VALUES ('125', 'YOO', '云游棋牌', '', '', '', '', '', 'joker', '1123', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-17 16:59:58', '2022-12-22 22:55:26', '', null, 'fs/joker/web/yoo.webp', 'fs/joker/wap/yoo.webp', 'fs/joker/wap/yoo.webp', '', 'fs/joker/header/yoo.webp');
INSERT INTO `game_lists` VALUES ('126', 'BBIN', 'BBIN捕鱼大师', '', '', '38001', '', '', 'fishing', '1124', '1', '1', '0', '1', '1', '1', '1', '1', '2022-12-17 17:00:53', '2022-12-22 22:56:04', '', null, 'fs/fish/web/38001.webp', 'fs/fish/wap/38001.webp', 'fs/fish/wap/38001.webp', '', 'fs/fish/header/38001.webp');
INSERT INTO `game_lists` VALUES ('127', 'BBIN', 'BBIN富贵渔场', '', '', '38002', '', '', 'fishing', '1125', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/38002.webp', 'fs/fish/wap/38002.webp', 'fs/fish/wap/38002.webp', '', 'fs/fish/header/38002.webp');
INSERT INTO `game_lists` VALUES ('128', 'BG', 'BG捕鱼达人', '', '', '38003', '', '', 'fishing', '1126', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/38003.webp', 'fs/fish/wap/38003.webp', 'fs/fish/wap/38003.webp', '', 'fs/fish/header/38003.webp');
INSERT INTO `game_lists` VALUES ('129', 'DBF', 'DBFDB多寶捕鱼', '', '', '200', '', '', 'fishing', '1127', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/200.webp', 'fs/fish/wap/200.webp', 'fs/fish/wap/200.webp', '', 'fs/fish/header/200.webp');
INSERT INTO `game_lists` VALUES ('130', 'WE', 'WE李逵劈鱼', '', '', 'FISHING-WEE_FISHING-190000', '', '', 'fishing', '1128', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-190000.webp', 'fs/fish/wap/fishing-wee_fishing-190000.webp', 'fs/fish/wap/fishing-wee_fishing-190000.webp', '', 'fs/fish/header/fishing-wee_fishing-190000.webp');
INSERT INTO `game_lists` VALUES ('131', 'WE', 'WE宝可梦传说', '', '', 'FISHING-WEE_FISHING-210907', '', '', 'fishing', '1129', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-210907.webp', 'fs/fish/wap/fishing-wee_fishing-210907.webp', 'fs/fish/wap/fishing-wee_fishing-210907.webp', '', 'fs/fish/header/fishing-wee_fishing-210907.webp');
INSERT INTO `game_lists` VALUES ('132', 'WE', 'WE王炸捕鱼', '', '', 'FISHING-WEE_FISHING-220702', '', '', 'fishing', '1130', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-220702.webp', 'fs/fish/wap/fishing-wee_fishing-220702.webp', 'fs/fish/wap/fishing-wee_fishing-220702.webp', '', 'fs/fish/header/fishing-wee_fishing-220702.webp');
INSERT INTO `game_lists` VALUES ('133', 'WE', 'WE世界杯狂热', '', '', 'FISHING-WEE_FISHING-220501', '', '', 'fishing', '1131', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-220501.webp', 'fs/fish/wap/fishing-wee_fishing-220501.webp', 'fs/fish/wap/fishing-wee_fishing-220501.webp', '', 'fs/fish/header/fishing-wee_fishing-220501.webp');
INSERT INTO `game_lists` VALUES ('134', 'WE', 'WE宝可梦探险', '', '', 'FISHING-WEE_FISHING-210401', '', '', 'fishing', '1132', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-210401.webp', 'fs/fish/wap/fishing-wee_fishing-210401.webp', 'fs/fish/wap/fishing-wee_fishing-210401.webp', '', 'fs/fish/header/fishing-wee_fishing-210401.webp');
INSERT INTO `game_lists` VALUES ('135', 'WE', 'WE泰式捕鱼', '', '', 'FISHING-WEE_FISHING-210208', '', '', 'fishing', '1133', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-210208.webp', 'fs/fish/wap/fishing-wee_fishing-210208.webp', 'fs/fish/wap/fishing-wee_fishing-210208.webp', '', 'fs/fish/header/fishing-wee_fishing-210208.webp');
INSERT INTO `game_lists` VALUES ('136', 'WE', 'WE多福福娃', '', '', 'FISHING-WEE_FISHING-190620', '', '', 'fishing', '1134', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-190620.webp', 'fs/fish/wap/fishing-wee_fishing-190620.webp', 'fs/fish/wap/fishing-wee_fishing-190620.webp', '', 'fs/fish/header/fishing-wee_fishing-190620.webp');
INSERT INTO `game_lists` VALUES ('137', 'WE', 'WE还剑湖捕鱼', '', '', 'FISHING-WEE_FISHING-200107', '', '', 'fishing', '1135', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishing-wee_fishing-200107.webp', 'fs/fish/wap/fishing-wee_fishing-200107.webp', 'fs/fish/wap/fishing-wee_fishing-200107.webp', '', 'fs/fish/header/fishing-wee_fishing-200107.webp');
INSERT INTO `game_lists` VALUES ('138', 'JDB', 'JDB邪龙传奇', '', '', '7010', '', '', 'fishing', '1136', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7010.webp', 'fs/fish/wap/7010.webp', 'fs/fish/wap/7010.webp', '', 'fs/fish/header/7010.webp');
INSERT INTO `game_lists` VALUES ('139', 'JDB', 'JDB海皇争霸', '', '', '7009', '', '', 'fishing', '1137', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7009.webp', 'fs/fish/wap/7009.webp', 'fs/fish/wap/7009.webp', '', 'fs/fish/header/7009.webp');
INSERT INTO `game_lists` VALUES ('140', 'JDB', 'JDB捕鱼炸机', '', '', '7008', '', '', 'fishing', '1138', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7008.webp', 'fs/fish/wap/7008.webp', 'fs/fish/wap/7008.webp', '', 'fs/fish/header/7008.webp');
INSERT INTO `game_lists` VALUES ('141', 'JDB', 'JDB捕鱼迪斯可', '', '', '7007', '', '', 'fishing', '1139', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7007.webp', 'fs/fish/wap/7007.webp', 'fs/fish/wap/7007.webp', '', 'fs/fish/header/7007.webp');
INSERT INTO `game_lists` VALUES ('142', 'JDB', 'JDB猎龙高手', '', '', '7006', '', '', 'fishing', '1140', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7006.webp', 'fs/fish/wap/7006.webp', 'fs/fish/wap/7006.webp', '', 'fs/fish/header/7006.webp');
INSERT INTO `game_lists` VALUES ('143', 'JDB', 'JDB捕鱼一路发', '', '', '7005', '', '', 'fishing', '1141', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7005.webp', 'fs/fish/wap/7005.webp', 'fs/fish/wap/7005.webp', '', 'fs/fish/header/7005.webp');
INSERT INTO `game_lists` VALUES ('144', 'JDB', 'JDB五龙捕鱼', '', '', '7004', '', '', 'fishing', '1142', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7004.webp', 'fs/fish/wap/7004.webp', 'fs/fish/wap/7004.webp', '', 'fs/fish/header/7004.webp');
INSERT INTO `game_lists` VALUES ('145', 'JDB', 'JDB财神捕鱼', '', '', '7003', '', '', 'fishing', '1143', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7003.webp', 'fs/fish/wap/7003.webp', 'fs/fish/wap/7003.webp', '', 'fs/fish/header/7003.webp');
INSERT INTO `game_lists` VALUES ('146', 'JDB', 'JDB龙王捕鱼2', '', '', '7002', '', '', 'fishing', '1144', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7002.webp', 'fs/fish/wap/7002.webp', 'fs/fish/wap/7002.webp', '', 'fs/fish/header/7002.webp');
INSERT INTO `game_lists` VALUES ('147', 'JDB', 'JDB龙王捕鱼', '', '', '7001', '', '', 'fishing', '1145', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/7001.webp', 'fs/fish/wap/7001.webp', 'fs/fish/wap/7001.webp', '', 'fs/fish/header/7001.webp');
INSERT INTO `game_lists` VALUES ('148', 'CQ9', 'CQ9皇金渔场2', '', '', 'GO06', '', '', 'fishing', '1146', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/go06.webp', 'fs/fish/wap/go06.webp', 'fs/fish/wap/go06.webp', '', 'fs/fish/header/go06.webp');
INSERT INTO `game_lists` VALUES ('149', 'CQ9', 'CQ9一炮捕鱼', '', '', 'AT01', '', '', 'fishing', '1147', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/at01.webp', 'fs/fish/wap/at01.webp', 'fs/fish/wap/at01.webp', '', 'fs/fish/header/at01.webp');
INSERT INTO `game_lists` VALUES ('150', 'CQ9', 'CQ9皇金渔场', '', '', 'AB3', '', '', 'fishing', '1148', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/ab3.webp', 'fs/fish/wap/ab3.webp', 'fs/fish/wap/ab3.webp', '', 'fs/fish/header/ab3.webp');
INSERT INTO `game_lists` VALUES ('151', 'CQ9', 'CQ9欢乐捕鱼', '', '', 'AT05', '', '', 'fishing', '1149', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/at05.webp', 'fs/fish/wap/at05.webp', 'fs/fish/wap/at05.webp', '', 'fs/fish/header/at05.webp');
INSERT INTO `game_lists` VALUES ('152', 'CQ9', 'CQ9英雄捕鱼', '', '', 'GO02', '', '', 'fishing', '1150', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/go02.webp', 'fs/fish/wap/go02.webp', 'fs/fish/wap/go02.webp', '', 'fs/fish/header/go02.webp');
INSERT INTO `game_lists` VALUES ('153', 'CQ9', 'CQ9一棒捕鱼', '', '', 'GO05', '', '', 'fishing', '1151', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/go05.webp', 'fs/fish/wap/go05.webp', 'fs/fish/wap/go05.webp', '', 'fs/fish/header/go05.webp');
INSERT INTO `game_lists` VALUES ('154', 'BL', 'BL欢乐捕鱼', '', '', 'fish', '', '', 'fishing', '1152', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fish.webp', 'fs/fish/wap/fish.webp', 'fs/fish/wap/fish.webp', '', 'fs/fish/header/fish.webp');
INSERT INTO `game_lists` VALUES ('155', 'BL', 'BL捕鱼大满贯', '', '', 'fishjk', '', '', 'fishing', '1153', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishjk.webp', 'fs/fish/wap/fishjk.webp', 'fs/fish/wap/fishjk.webp', '', 'fs/fish/header/fishjk.webp');
INSERT INTO `game_lists` VALUES ('156', 'BL', 'BL千炮大满贯', '', '', 'fishjackpot', '', '', 'fishing', '1154', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishjackpot.webp', 'fs/fish/wap/fishjackpot.webp', 'fs/fish/wap/fishjackpot.webp', '', 'fs/fish/header/fishjackpot.webp');
INSERT INTO `game_lists` VALUES ('157', 'FC', 'FC星际捕鱼', '', '', '21008', '', '', 'fishing', '1155', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21008.webp', 'fs/fish/wap/21008.webp', 'fs/fish/wap/21008.webp', '', 'fs/fish/header/21008.webp');
INSERT INTO `game_lists` VALUES ('158', 'FC', 'FC众神发发发', '', '', '21009', '', '', 'fishing', '1156', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21009.webp', 'fs/fish/wap/21009.webp', 'fs/fish/wap/21009.webp', '', 'fs/fish/header/21009.webp');
INSERT INTO `game_lists` VALUES ('159', 'FC', 'FC大圣捕鱼', '', '', '21003', '', '', 'fishing', '1157', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21003.webp', 'fs/fish/wap/21003.webp', 'fs/fish/wap/21003.webp', '', 'fs/fish/header/21003.webp');
INSERT INTO `game_lists` VALUES ('160', 'FC', 'FC激斗捕鱼', '', '', '21006', '', '', 'fishing', '1158', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21006.webp', 'fs/fish/wap/21006.webp', 'fs/fish/wap/21006.webp', '', 'fs/fish/header/21006.webp');
INSERT INTO `game_lists` VALUES ('161', 'FC', 'FC宝船捕鱼', '', '', '21004', '', '', 'fishing', '1159', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21004.webp', 'fs/fish/wap/21004.webp', 'fs/fish/wap/21004.webp', '', 'fs/fish/header/21004.webp');
INSERT INTO `game_lists` VALUES ('162', 'FC', 'FC发财捕鱼', '', '', '21007', '', '', 'fishing', '1160', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/21007.webp', 'fs/fish/wap/21007.webp', 'fs/fish/wap/21007.webp', '', 'fs/fish/header/21007.webp');
INSERT INTO `game_lists` VALUES ('163', 'FT', 'FT財神大海', '', '', 'imgame32023', '', '', 'fishing', '1161', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32023.webp', 'fs/fish/wap/imgame32023.webp', 'fs/fish/wap/imgame32023.webp', '', 'fs/fish/header/imgame32023.webp');
INSERT INTO `game_lists` VALUES ('164', 'FT', 'FT好运农场', '', '', 'imgame32058', '', '', 'fishing', '1162', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32058.webp', 'fs/fish/wap/imgame32058.webp', 'fs/fish/wap/imgame32058.webp', '', 'fs/fish/header/imgame32058.webp');
INSERT INTO `game_lists` VALUES ('165', 'FT', 'FT好运农场奖池', '', '', 'imgame32059', '', '', 'fishing', '1163', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32059.webp', 'fs/fish/wap/imgame32059.webp', 'fs/fish/wap/imgame32059.webp', '', 'fs/fish/header/imgame32059.webp');
INSERT INTO `game_lists` VALUES ('166', 'FT', 'FT捕鱼多福', '', '', 'imgame32060', '', '', 'fishing', '1164', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32060.webp', 'fs/fish/wap/imgame32060.webp', 'fs/fish/wap/imgame32060.webp', '', 'fs/fish/header/imgame32060.webp');
INSERT INTO `game_lists` VALUES ('167', 'FT', 'FT捕鱼多福奖池', '', '', 'imgame32061', '', '', 'fishing', '1165', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32061.webp', 'fs/fish/wap/imgame32061.webp', 'fs/fish/wap/imgame32061.webp', '', 'fs/fish/header/imgame32061.webp');
INSERT INTO `game_lists` VALUES ('168', 'FT', 'FT福气水果', '', '', 'imgame32062', '', '', 'fishing', '1166', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32062.webp', 'fs/fish/wap/imgame32062.webp', 'fs/fish/wap/imgame32062.webp', '', 'fs/fish/header/imgame32062.webp');
INSERT INTO `game_lists` VALUES ('169', 'FT', 'FT福气水果奖池', '', '', 'imgame32063', '', '', 'fishing', '1167', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32063.webp', 'fs/fish/wap/imgame32063.webp', 'fs/fish/wap/imgame32063.webp', '', 'fs/fish/header/imgame32063.webp');
INSERT INTO `game_lists` VALUES ('170', 'FT', 'FT深海大战', '', '', 'imgame32120', '', '', 'fishing', '1168', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/imgame32120.webp', 'fs/fish/wap/imgame32120.webp', 'fs/fish/wap/imgame32120.webp', '', 'fs/fish/header/imgame32120.webp');
INSERT INTO `game_lists` VALUES ('171', 'FG', 'FG龙王捕鱼', '', '', '5012', '', '', 'fishing', '1169', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5012.webp', 'fs/fish/wap/5012.webp', 'fs/fish/wap/5012.webp', '', 'fs/fish/header/5012.webp');
INSERT INTO `game_lists` VALUES ('172', 'FG', 'FG全民捕鱼', '', '', '5011', '', '', 'fishing', '1170', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5011.webp', 'fs/fish/wap/5011.webp', 'fs/fish/wap/5011.webp', '', 'fs/fish/header/5011.webp');
INSERT INTO `game_lists` VALUES ('173', 'FG', 'FG美人鱼传说', '', '', '5009', '', '', 'fishing', '1171', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5009.webp', 'fs/fish/wap/5009.webp', 'fs/fish/wap/5009.webp', '', 'fs/fish/header/5009.webp');
INSERT INTO `game_lists` VALUES ('174', 'FG', 'FG猎鼠达人3D', '', '', '5008', '', '', 'fishing', '1172', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5008.webp', 'fs/fish/wap/5008.webp', 'fs/fish/wap/5008.webp', '', 'fs/fish/header/5008.webp');
INSERT INTO `game_lists` VALUES ('175', 'FG', 'FG魔法王者', '', '', '5007', '', '', 'fishing', '1173', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5007.webp', 'fs/fish/wap/5007.webp', 'fs/fish/wap/5007.webp', '', 'fs/fish/header/5007.webp');
INSERT INTO `game_lists` VALUES ('176', 'FG', 'FG捕鱼来了3D', '', '', '5006', '', '', 'fishing', '1174', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5006.webp', 'fs/fish/wap/5006.webp', 'fs/fish/wap/5006.webp', '', 'fs/fish/header/5006.webp');
INSERT INTO `game_lists` VALUES ('177', 'FG', 'FG天天捕鱼', '', '', '5005', '', '', 'fishing', '1175', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5005.webp', 'fs/fish/wap/5005.webp', 'fs/fish/wap/5005.webp', '', 'fs/fish/header/5005.webp');
INSERT INTO `game_lists` VALUES ('178', 'FG', 'FG欢乐捕鱼', '', '', '5004', '', '', 'fishing', '1176', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5004.webp', 'fs/fish/wap/5004.webp', 'fs/fish/wap/5004.webp', '', 'fs/fish/header/5004.webp');
INSERT INTO `game_lists` VALUES ('179', 'FG', 'FG捕鸟达人', '', '', '5003', '', '', 'fishing', '1177', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5003.webp', 'fs/fish/wap/5003.webp', 'fs/fish/wap/5003.webp', '', 'fs/fish/header/5003.webp');
INSERT INTO `game_lists` VALUES ('180', 'FG', 'FG雷霆战警', '', '', '5002', '', '', 'fishing', '1178', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5002.webp', 'fs/fish/wap/5002.webp', 'fs/fish/wap/5002.webp', '', 'fs/fish/header/5002.webp');
INSERT INTO `game_lists` VALUES ('181', 'FG', 'FG美人捕鱼', '', '', '5001', '', '', 'fishing', '1179', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/5001.webp', 'fs/fish/wap/5001.webp', 'fs/fish/wap/5001.webp', '', 'fs/fish/header/5001.webp');
INSERT INTO `game_lists` VALUES ('182', 'KA', 'KA章鱼王', '', '', 'KingOctopus', '', '', 'fishing', '1180', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/kingoctopus.webp', 'fs/fish/wap/kingoctopus.webp', 'fs/fish/wap/kingoctopus.webp', '', 'fs/fish/header/kingoctopus.webp');
INSERT INTO `game_lists` VALUES ('183', 'KA', 'KA金龙捕鱼', '', '', 'GoldenDragon', '', '', 'fishing', '1181', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/goldendragon.webp', 'fs/fish/wap/goldendragon.webp', 'fs/fish/wap/goldendragon.webp', '', 'fs/fish/header/goldendragon.webp');
INSERT INTO `game_lists` VALUES ('184', 'KA', 'KA海王秘宝', '', '', 'PoseidonSecret', '', '', 'fishing', '1182', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/poseidonsecret.webp', 'fs/fish/wap/poseidonsecret.webp', 'fs/fish/wap/poseidonsecret.webp', '', 'fs/fish/header/poseidonsecret.webp');
INSERT INTO `game_lists` VALUES ('185', 'KA', 'KA爽爽捕鱼', '', '', 'KAFishHunter', '', '', 'fishing', '1183', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/kafishhunter.webp', 'fs/fish/wap/kafishhunter.webp', 'fs/fish/wap/kafishhunter.webp', '', 'fs/fish/header/kafishhunter.webp');
INSERT INTO `game_lists` VALUES ('186', 'KA', 'KA天天战三国', '', '', 'ThreeKingdoms', '', '', 'fishing', '1184', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/threekingdoms.webp', 'fs/fish/wap/threekingdoms.webp', 'fs/fish/wap/threekingdoms.webp', '', 'fs/fish/header/threekingdoms.webp');
INSERT INTO `game_lists` VALUES ('187', 'KA', 'KA浣熊钓鱼', '', '', 'AnimalFishing', '', '', 'fishing', '1185', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/animalfishing.webp', 'fs/fish/wap/animalfishing.webp', 'fs/fish/wap/animalfishing.webp', '', 'fs/fish/header/animalfishing.webp');
INSERT INTO `game_lists` VALUES ('188', 'KA', 'KA光头强钓鱼', '', '', 'FishingExpedition', '', '', 'fishing', '1186', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fishingexpedition.webp', 'fs/fish/wap/fishingexpedition.webp', 'fs/fish/wap/fishingexpedition.webp', '', 'fs/fish/header/fishingexpedition.webp');
INSERT INTO `game_lists` VALUES ('189', 'KA', 'KA炮打美人鱼', '', '', 'MermaidHunter', '', '', 'fishing', '1187', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/mermaidhunter.webp', 'fs/fish/wap/mermaidhunter.webp', 'fs/fish/wap/mermaidhunter.webp', '', 'fs/fish/header/mermaidhunter.webp');
INSERT INTO `game_lists` VALUES ('190', 'KA', 'KA降龙传说', '', '', 'ForceOfDragon', '', '', 'fishing', '1188', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/forceofdragon.webp', 'fs/fish/wap/forceofdragon.webp', 'fs/fish/wap/forceofdragon.webp', '', 'fs/fish/header/forceofdragon.webp');
INSERT INTO `game_lists` VALUES ('191', 'KA', 'KA大战异世界', '', '', 'AlterWorld', '', '', 'fishing', '1189', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/alterworld.webp', 'fs/fish/wap/alterworld.webp', 'fs/fish/wap/alterworld.webp', '', 'fs/fish/header/alterworld.webp');
INSERT INTO `game_lists` VALUES ('192', 'KA', 'KA深海巨鳄', '', '', 'TheDeepMonster', '', '', 'fishing', '1190', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/thedeepmonster.webp', 'fs/fish/wap/thedeepmonster.webp', 'fs/fish/wap/thedeepmonster.webp', '', 'fs/fish/header/thedeepmonster.webp');
INSERT INTO `game_lists` VALUES ('193', 'KA', 'KA财神到', '', '', 'CaiShenDao', '', '', 'fishing', '1191', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/caishendao.webp', 'fs/fish/wap/caishendao.webp', 'fs/fish/wap/caishendao.webp', '', 'fs/fish/header/caishendao.webp');
INSERT INTO `game_lists` VALUES ('194', 'KA', 'KA星际牛仔', '', '', 'SpaceCowboy', '', '', 'fishing', '1192', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/spacecowboy.webp', 'fs/fish/wap/spacecowboy.webp', 'fs/fish/wap/spacecowboy.webp', '', 'fs/fish/header/spacecowboy.webp');
INSERT INTO `game_lists` VALUES ('195', 'KA', 'KA四海游龙', '', '', 'FourDragonKings', '', '', 'fishing', '1193', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/fourdragonkings.webp', 'fs/fish/wap/fourdragonkings.webp', 'fs/fish/wap/fourdragonkings.webp', '', 'fs/fish/header/fourdragonkings.webp');
INSERT INTO `game_lists` VALUES ('196', 'KA', 'KA炮打二郎神', '', '', 'LegendOfErlang', '', '', 'fishing', '1194', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/legendoferlang.webp', 'fs/fish/wap/legendoferlang.webp', 'fs/fish/wap/legendoferlang.webp', '', 'fs/fish/header/legendoferlang.webp');
INSERT INTO `game_lists` VALUES ('197', 'KA', 'KA魔斗汪星人', '', '', 'GoGoMagicDog', '', '', 'fishing', '1195', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/gogomagicdog.webp', 'fs/fish/wap/gogomagicdog.webp', 'fs/fish/wap/gogomagicdog.webp', '', 'fs/fish/header/gogomagicdog.webp');
INSERT INTO `game_lists` VALUES ('198', 'KA', 'KA海底大作战', '', '', 'UnderseaBattle', '', '', 'fishing', '1196', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/underseabattle.webp', 'fs/fish/wap/underseabattle.webp', 'fs/fish/wap/underseabattle.webp', '', 'fs/fish/header/underseabattle.webp');
INSERT INTO `game_lists` VALUES ('199', 'KA', 'KA魔斗喵星人', '', '', 'GoGoMagicCat', '', '', 'fishing', '1197', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/gogomagiccat.webp', 'fs/fish/wap/gogomagiccat.webp', 'fs/fish/wap/gogomagiccat.webp', '', 'fs/fish/header/gogomagiccat.webp');
INSERT INTO `game_lists` VALUES ('200', 'KA', 'KA大海怪', '', '', 'GiantFishHunter', '', '', 'fishing', '1198', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/giantfishhunter.webp', 'fs/fish/wap/giantfishhunter.webp', 'fs/fish/wap/giantfishhunter.webp', '', 'fs/fish/header/giantfishhunter.webp');
INSERT INTO `game_lists` VALUES ('201', 'KA', 'KA炮打铁公鸡', '', '', 'IronChickenHunter', '', '', 'fishing', '1199', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/ironchickenhunter.webp', 'fs/fish/wap/ironchickenhunter.webp', 'fs/fish/wap/ironchickenhunter.webp', '', 'fs/fish/header/ironchickenhunter.webp');
INSERT INTO `game_lists` VALUES ('202', 'KA', 'KA黄金三头龙', '', '', 'ThreeHeadedDragon', '', '', 'fishing', '1200', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/threeheadeddragon.webp', 'fs/fish/wap/threeheadeddragon.webp', 'fs/fish/wap/threeheadeddragon.webp', '', 'fs/fish/header/threeheadeddragon.webp');
INSERT INTO `game_lists` VALUES ('203', 'KA', 'KA爆打僵尸鸡', '', '', 'ZombieChicken', '', '', 'fishing', '1201', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/zombiechicken.webp', 'fs/fish/wap/zombiechicken.webp', 'fs/fish/wap/zombiechicken.webp', '', 'fs/fish/header/zombiechicken.webp');
INSERT INTO `game_lists` VALUES ('204', 'KA', 'KA魔物岛', '', '', 'MonsterIsland', '', '', 'fishing', '1202', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/monsterisland.webp', 'fs/fish/wap/monsterisland.webp', 'fs/fish/wap/monsterisland.webp', '', 'fs/fish/header/monsterisland.webp');
INSERT INTO `game_lists` VALUES ('205', 'KA', 'KA人鱼传说', '', '', 'MermaidWorld', '', '', 'fishing', '1203', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/mermaidworld.webp', 'fs/fish/wap/mermaidworld.webp', 'fs/fish/wap/mermaidworld.webp', '', 'fs/fish/header/mermaidworld.webp');
INSERT INTO `game_lists` VALUES ('206', 'KA', 'KA海霸姬', '', '', 'OceanPrincess', '', '', 'fishing', '1204', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/oceanprincess.webp', 'fs/fish/wap/oceanprincess.webp', 'fs/fish/wap/oceanprincess.webp', '', 'fs/fish/header/oceanprincess.webp');
INSERT INTO `game_lists` VALUES ('207', 'KA', 'KA海底捞', '', '', 'HappyFoodHunter', '', '', 'fishing', '1205', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/happyfoodhunter.webp', 'fs/fish/wap/happyfoodhunter.webp', 'fs/fish/wap/happyfoodhunter.webp', '', 'fs/fish/header/happyfoodhunter.webp');
INSERT INTO `game_lists` VALUES ('208', 'KA', 'KA机器人大战', '', '', 'RobotWars', '', '', 'fishing', '1206', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/robotwars.webp', 'fs/fish/wap/robotwars.webp', 'fs/fish/wap/robotwars.webp', '', 'fs/fish/header/robotwars.webp');
INSERT INTO `game_lists` VALUES ('209', 'KA', 'KA神兽捕鱼', '', '', 'MythicalBeast', '', '', 'fishing', '1207', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/mythicalbeast.webp', 'fs/fish/wap/mythicalbeast.webp', 'fs/fish/wap/mythicalbeast.webp', '', 'fs/fish/header/mythicalbeast.webp');
INSERT INTO `game_lists` VALUES ('210', 'KA', 'KA特战部队', '', '', 'SpecialOPS', '', '', 'fishing', '1208', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/specialops.webp', 'fs/fish/wap/specialops.webp', 'fs/fish/wap/specialops.webp', '', 'fs/fish/header/specialops.webp');
INSERT INTO `game_lists` VALUES ('211', 'KA', 'KA饥饿鲨', '', '', 'HungryShark', '', '', 'fishing', '1209', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/hungryshark.webp', 'fs/fish/wap/hungryshark.webp', 'fs/fish/wap/hungryshark.webp', '', 'fs/fish/header/hungryshark.webp');
INSERT INTO `game_lists` VALUES ('212', 'KA', 'KA魔鬼克星', '', '', 'DevilBuster', '', '', 'fishing', '1210', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/devilbuster.webp', 'fs/fish/wap/devilbuster.webp', 'fs/fish/wap/devilbuster.webp', '', 'fs/fish/header/devilbuster.webp');
INSERT INTO `game_lists` VALUES ('213', 'KA', 'KA魔法女巫', '', '', 'MagicWitches', '', '', 'fishing', '1211', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/magicwitches.webp', 'fs/fish/wap/magicwitches.webp', 'fs/fish/wap/magicwitches.webp', '', 'fs/fish/header/magicwitches.webp');
INSERT INTO `game_lists` VALUES ('214', 'KA', 'KA大胃王', '', '', 'FoodComa', '', '', 'fishing', '1212', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/foodcoma.webp', 'fs/fish/wap/foodcoma.webp', 'fs/fish/wap/foodcoma.webp', '', 'fs/fish/header/foodcoma.webp');
INSERT INTO `game_lists` VALUES ('215', 'KA', 'KA海底宝藏', '', '', 'UnderseaTreasure', '', '', 'fishing', '1213', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/underseatreasure.webp', 'fs/fish/wap/underseatreasure.webp', 'fs/fish/wap/underseatreasure.webp', '', 'fs/fish/header/underseatreasure.webp');
INSERT INTO `game_lists` VALUES ('216', 'KA', 'KA海洋之星大作战', '', '', 'OceanStarHunting', '', '', 'fishing', '1214', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/oceanstarhunting.webp', 'fs/fish/wap/oceanstarhunting.webp', 'fs/fish/wap/oceanstarhunting.webp', '', 'fs/fish/header/oceanstarhunting.webp');
INSERT INTO `game_lists` VALUES ('217', 'KA', 'KA魔域精灵王', '', '', 'WorldOfLordElfKing', '', '', 'fishing', '1215', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/worldoflordelfking.webp', 'fs/fish/wap/worldoflordelfking.webp', 'fs/fish/wap/worldoflordelfking.webp', '', 'fs/fish/header/worldoflordelfking.webp');
INSERT INTO `game_lists` VALUES ('218', 'KA', 'KA捣蛋女巫', '', '', 'NaughtyWitches', '', '', 'fishing', '1216', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/naughtywitches.webp', 'fs/fish/wap/naughtywitches.webp', 'fs/fish/wap/naughtywitches.webp', '', 'fs/fish/header/naughtywitches.webp');
INSERT INTO `game_lists` VALUES ('219', 'KA', 'KA金兔满膛', '', '', 'RabbitParty', '', '', 'fishing', '1217', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/rabbitparty.webp', 'fs/fish/wap/rabbitparty.webp', 'fs/fish/wap/rabbitparty.webp', '', 'fs/fish/header/rabbitparty.webp');
INSERT INTO `game_lists` VALUES ('220', 'KA', 'KA饥饿鲨邪神', '', '', 'HungrySharkCthulhu', '', '', 'fishing', '1218', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/hungrysharkcthulhu.webp', 'fs/fish/wap/hungrysharkcthulhu.webp', 'fs/fish/wap/hungrysharkcthulhu.webp', '', 'fs/fish/header/hungrysharkcthulhu.webp');
INSERT INTO `game_lists` VALUES ('221', 'KA', 'KA追渔物语', '', '', 'MermaidLegend', '', '', 'fishing', '1219', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/mermaidlegend.webp', 'fs/fish/wap/mermaidlegend.webp', 'fs/fish/wap/mermaidlegend.webp', '', 'fs/fish/header/mermaidlegend.webp');
INSERT INTO `game_lists` VALUES ('222', 'KA', 'KA千金捕鱼', '', '', 'GoldenFishHunter', '', '', 'fishing', '1220', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/goldenfishhunter.webp', 'fs/fish/wap/goldenfishhunter.webp', 'fs/fish/wap/goldenfishhunter.webp', '', 'fs/fish/header/goldenfishhunter.webp');
INSERT INTO `game_lists` VALUES ('223', 'KA', 'KA魔域巫王', '', '', 'WorldOfLordWitchKing', '', '', 'fishing', '1221', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/worldoflordwitchking.webp', 'fs/fish/wap/worldoflordwitchking.webp', 'fs/fish/wap/worldoflordwitchking.webp', '', 'fs/fish/header/worldoflordwitchking.webp');
INSERT INTO `game_lists` VALUES ('224', 'KA', 'KA禁飞区', '', '', 'NoFlyZone', '', '', 'fishing', '1222', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/noflyzone.webp', 'fs/fish/wap/noflyzone.webp', 'fs/fish/wap/noflyzone.webp', '', 'fs/fish/header/noflyzone.webp');
INSERT INTO `game_lists` VALUES ('225', 'KA', 'KA天天捕鱼', '', '', 'KAFishParty', '', '', 'fishing', '1223', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/kafishparty.webp', 'fs/fish/wap/kafishparty.webp', 'fs/fish/wap/kafishparty.webp', '', 'fs/fish/header/kafishparty.webp');
INSERT INTO `game_lists` VALUES ('226', 'KA', 'KA快乐宠物农场', '', '', 'HappyAnimalFarm', '', '', 'fishing', '1224', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/happyanimalfarm.webp', 'fs/fish/wap/happyanimalfarm.webp', 'fs/fish/wap/happyanimalfarm.webp', '', 'fs/fish/header/happyanimalfarm.webp');
INSERT INTO `game_lists` VALUES ('227', 'KA', 'KA怪物收藏家', '', '', 'MonsterCollector', '', '', 'fishing', '1225', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/monstercollector.webp', 'fs/fish/wap/monstercollector.webp', 'fs/fish/wap/monstercollector.webp', '', 'fs/fish/header/monstercollector.webp');
INSERT INTO `game_lists` VALUES ('228', 'KA', 'KA荒野仙踪', '', '', 'WizardOfWild', '', '', 'fishing', '1226', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/wizardofwild.webp', 'fs/fish/wap/wizardofwild.webp', 'fs/fish/wap/wizardofwild.webp', '', 'fs/fish/header/wizardofwild.webp');
INSERT INTO `game_lists` VALUES ('229', 'KA', 'KA卡路里杀手', '', '', 'CalorieKiller', '', '', 'fishing', '1227', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/caloriekiller.webp', 'fs/fish/wap/caloriekiller.webp', 'fs/fish/wap/caloriekiller.webp', '', 'fs/fish/header/caloriekiller.webp');
INSERT INTO `game_lists` VALUES ('230', 'KA', 'KA海王争霸', '', '', 'PoseidonBattle', '', '', 'fishing', '1228', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/poseidonbattle.webp', 'fs/fish/wap/poseidonbattle.webp', 'fs/fish/wap/poseidonbattle.webp', '', 'fs/fish/header/poseidonbattle.webp');
INSERT INTO `game_lists` VALUES ('231', 'KA', 'KA阴阳师', '', '', 'Onmyoji', '', '', 'fishing', '1229', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/onmyoji.webp', 'fs/fish/wap/onmyoji.webp', 'fs/fish/wap/onmyoji.webp', '', 'fs/fish/header/onmyoji.webp');
INSERT INTO `game_lists` VALUES ('232', 'KA', 'KA金鲨对银鲨', '', '', 'SharkFight', '', '', 'fishing', '1230', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/sharkfight.webp', 'fs/fish/wap/sharkfight.webp', 'fs/fish/wap/sharkfight.webp', '', 'fs/fish/header/sharkfight.webp');
INSERT INTO `game_lists` VALUES ('233', 'KA', 'KA神龙捕鱼', '', '', 'ShenronHunter', '', '', 'fishing', '1231', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/shenronhunter.webp', 'fs/fish/wap/shenronhunter.webp', 'fs/fish/wap/shenronhunter.webp', '', 'fs/fish/header/shenronhunter.webp');
INSERT INTO `game_lists` VALUES ('234', 'KA', 'KA猎杀十二生肖', '', '', 'ZodiacHunting', '', '', 'fishing', '1232', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/zodiachunting.webp', 'fs/fish/wap/zodiachunting.webp', 'fs/fish/wap/zodiachunting.webp', '', 'fs/fish/header/zodiachunting.webp');
INSERT INTO `game_lists` VALUES ('235', 'KA', 'KA轰炸海妖', '', '', 'BombingKraken', '', '', 'fishing', '1233', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/bombingkraken.webp', 'fs/fish/wap/bombingkraken.webp', 'fs/fish/wap/bombingkraken.webp', '', 'fs/fish/header/bombingkraken.webp');
INSERT INTO `game_lists` VALUES ('236', 'KA', 'KA粉碎海盗船', '', '', 'CrushPirateShip', '', '', 'fishing', '1234', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/crushpirateship.webp', 'fs/fish/wap/crushpirateship.webp', 'fs/fish/wap/crushpirateship.webp', '', 'fs/fish/header/crushpirateship.webp');
INSERT INTO `game_lists` VALUES ('237', 'KA', 'KA龙海天下', '', '', 'DragonCity', '', '', 'fishing', '1235', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/dragoncity.webp', 'fs/fish/wap/dragoncity.webp', 'fs/fish/wap/dragoncity.webp', '', 'fs/fish/header/dragoncity.webp');
INSERT INTO `game_lists` VALUES ('238', 'KA', 'KA钢铁联盟', '', '', 'IronHero', '', '', 'fishing', '1236', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/ironhero.webp', 'fs/fish/wap/ironhero.webp', 'fs/fish/wap/ironhero.webp', '', 'fs/fish/header/ironhero.webp');
INSERT INTO `game_lists` VALUES ('239', 'KA', 'KA炮声龙龙', '', '', 'DragonBoom', '', '', 'fishing', '1237', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/dragonboom.webp', 'fs/fish/wap/dragonboom.webp', 'fs/fish/wap/dragonboom.webp', '', 'fs/fish/header/dragonboom.webp');
INSERT INTO `game_lists` VALUES ('240', 'KA', 'KA泡泡神射手', '', '', 'BubbleShooter', '', '', 'fishing', '1238', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/bubbleshooter.webp', 'fs/fish/wap/bubbleshooter.webp', 'fs/fish/wap/bubbleshooter.webp', '', 'fs/fish/header/bubbleshooter.webp');
INSERT INTO `game_lists` VALUES ('241', 'KA', 'KA海钓传说', '', '', 'OctopusLegend', '', '', 'fishing', '1239', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/octopuslegend.webp', 'fs/fish/wap/octopuslegend.webp', 'fs/fish/wap/octopuslegend.webp', '', 'fs/fish/header/octopuslegend.webp');
INSERT INTO `game_lists` VALUES ('242', 'KA', 'KA深海幻兽', '', '', 'DeepBeast', '', '', 'fishing', '1240', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/deepbeast.webp', 'fs/fish/wap/deepbeast.webp', 'fs/fish/wap/deepbeast.webp', '', 'fs/fish/header/deepbeast.webp');
INSERT INTO `game_lists` VALUES ('243', 'KA', 'KA深海鳄霸', '', '', 'DeepOverlord', '', '', 'fishing', '1241', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/deepoverlord.webp', 'fs/fish/wap/deepoverlord.webp', 'fs/fish/wap/deepoverlord.webp', '', 'fs/fish/header/deepoverlord.webp');
INSERT INTO `game_lists` VALUES ('244', 'KA', 'KA金蟹捕鱼', '', '', 'GoldenCrab', '', '', 'fishing', '1242', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/goldencrab.webp', 'fs/fish/wap/goldencrab.webp', 'fs/fish/wap/goldencrab.webp', '', 'fs/fish/header/goldencrab.webp');
INSERT INTO `game_lists` VALUES ('245', 'KA', 'KA深海捕鱼', '', '', 'DeepFishing', '', '', 'fishing', '1243', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/deepfishing.webp', 'fs/fish/wap/deepfishing.webp', 'fs/fish/wap/deepfishing.webp', '', 'fs/fish/header/deepfishing.webp');
INSERT INTO `game_lists` VALUES ('246', 'KA', 'KA进击的螃蟹', '', '', 'AttackOnCrabs', '', '', 'fishing', '1244', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/attackoncrabs.webp', 'fs/fish/wap/attackoncrabs.webp', 'fs/fish/wap/attackoncrabs.webp', '', 'fs/fish/header/attackoncrabs.webp');
INSERT INTO `game_lists` VALUES ('247', 'KA', 'KA欢乐捕鱼', '', '', 'GoGoFishing', '', '', 'fishing', '1245', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/gogofishing.webp', 'fs/fish/wap/gogofishing.webp', 'fs/fish/wap/gogofishing.webp', '', 'fs/fish/header/gogofishing.webp');
INSERT INTO `game_lists` VALUES ('248', 'KA', 'KA精灵与动物伙伴', '', '', 'LeprechaunAndAnimals', '', '', 'fishing', '1246', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/leprechaunandanimals.webp', 'fs/fish/wap/leprechaunandanimals.webp', 'fs/fish/wap/leprechaunandanimals.webp', '', 'fs/fish/header/leprechaunandanimals.webp');
INSERT INTO `game_lists` VALUES ('249', 'KA', 'KA怪兽毁灭者', '', '', 'MonsterDestroyer', '', '', 'fishing', '1247', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/monsterdestroyer.webp', 'fs/fish/wap/monsterdestroyer.webp', 'fs/fish/wap/monsterdestroyer.webp', '', 'fs/fish/header/monsterdestroyer.webp');
INSERT INTO `game_lists` VALUES ('250', 'KA', 'KA银河赏金猎人', '', '', 'GalacticBountyHunter', '', '', 'fishing', '1248', '1', '1', '0', '1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', null, 'fs/fish/web/galacticbountyhunter.webp', 'fs/fish/wap/galacticbountyhunter.webp', 'fs/fish/wap/galacticbountyhunter.webp', '', 'fs/fish/header/galacticbountyhunter.webp');
INSERT INTO `game_lists` VALUES ('251', 'KA', 'KA海王秘宝', '', '', 'PoseidonSecret2', '', '', 'fishing', '1249', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-17 17:02:06', '2023-01-17 19:16:50', '', null, 'fs/fish/web/poseidonsecret2.webp', 'fs/fish/wap/poseidonsecret2.webp', 'fs/fish/wap/poseidonsecret2.webp', '', 'fs/fish/header/poseidonsecret2.webp');
INSERT INTO `game_lists` VALUES ('252', 'KA', 'KA魔域海洋', '', '', 'CursedSeas', '', '', 'fishing', '1250', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-18 16:59:58', '2023-01-23 22:55:26', '', null, 'fs/fish/web/cursedseas.webp', 'fs/fish/wap/cursedseas.webp', 'fs/fish/wap/cursedseas.webp', '', 'fs/fish/header/cursedseas.webp');
INSERT INTO `game_lists` VALUES ('253', 'KA', 'KA神奇海洋', '', '', 'MagicalOcean', '', '', 'fishing', '1251', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-18 17:00:53', '2023-01-23 22:56:04', '', null, 'fs/fish/web/magicalocean.webp', 'fs/fish/wap/magicalocean.webp', 'fs/fish/wap/magicalocean.webp', '', 'fs/fish/header/magicalocean.webp');
INSERT INTO `game_lists` VALUES ('254', 'KA', 'KA战龟', '', '', 'WarTurtle', '', '', 'fishing', '1252', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-18 17:02:06', '2023-01-18 19:16:50', '', null, 'fs/fish/web/warturtle.webp', 'fs/fish/wap/warturtle.webp', 'fs/fish/wap/warturtle.webp', '', 'fs/fish/header/warturtle.webp');
INSERT INTO `game_lists` VALUES ('255', 'KA', 'KA龙族秘宝', '', '', 'DragonTreasure', '', '', 'fishing', '1253', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-19 16:59:58', '2023-01-24 22:55:26', '', null, 'fs/fish/web/dragontreasure.webp', 'fs/fish/wap/dragontreasure.webp', 'fs/fish/wap/dragontreasure.webp', '', 'fs/fish/header/dragontreasure.webp');
INSERT INTO `game_lists` VALUES ('256', 'KA', 'KA深海禁区', '', '', 'DangerZone', '', '', 'fishing', '1254', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-19 17:00:53', '2023-01-24 22:56:04', '', null, 'fs/fish/web/dangerzone.webp', 'fs/fish/wap/dangerzone.webp', 'fs/fish/wap/dangerzone.webp', '', 'fs/fish/header/dangerzone.webp');
INSERT INTO `game_lists` VALUES ('257', 'KA', 'KA海盗寻宝', '', '', 'PirateTreasureHunt', '', '', 'fishing', '1255', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-19 17:02:06', '2023-01-19 19:16:50', '', null, 'fs/fish/web/piratetreasurehunt.webp', 'fs/fish/wap/piratetreasurehunt.webp', 'fs/fish/wap/piratetreasurehunt.webp', '', 'fs/fish/header/piratetreasurehunt.webp');
INSERT INTO `game_lists` VALUES ('258', 'KA', 'KA午夜惊魂', '', '', 'MidnightTerror', '', '', 'fishing', '1256', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-20 16:59:58', '2023-01-25 22:55:26', '', null, 'fs/fish/web/midnightterror.webp', 'fs/fish/wap/midnightterror.webp', 'fs/fish/wap/midnightterror.webp', '', 'fs/fish/header/midnightterror.webp');
INSERT INTO `game_lists` VALUES ('259', 'KA', 'KA精灵', '', '', 'Genie', '', '', 'fishing', '1257', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-20 17:00:53', '2023-01-25 22:56:04', '', null, 'fs/fish/web/genie.webp', 'fs/fish/wap/genie.webp', 'fs/fish/wap/genie.webp', '', 'fs/fish/header/genie.webp');
INSERT INTO `game_lists` VALUES ('260', 'KA', 'KA海盗战纪', '', '', 'PiratesWar', '', '', 'fishing', '1258', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-20 17:02:06', '2023-01-20 19:16:50', '', null, 'fs/fish/web/pirateswar.webp', 'fs/fish/wap/pirateswar.webp', 'fs/fish/wap/pirateswar.webp', '', 'fs/fish/header/pirateswar.webp');
INSERT INTO `game_lists` VALUES ('261', 'KA', 'KA克苏鲁', '', '', 'Cthulhu', '', '', 'fishing', '1259', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-21 16:59:58', '2023-01-26 22:55:26', '', null, 'fs/fish/web/cthulhu.webp', 'fs/fish/wap/cthulhu.webp', 'fs/fish/wap/cthulhu.webp', '', 'fs/fish/header/cthulhu.webp');
INSERT INTO `game_lists` VALUES ('262', 'KA', 'KA公路猎杀', '', '', 'RoadHunting', '', '', 'fishing', '1260', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-21 17:00:53', '2023-01-26 22:56:04', '', null, 'fs/fish/web/roadhunting.webp', 'fs/fish/wap/roadhunting.webp', 'fs/fish/wap/roadhunting.webp', '', 'fs/fish/header/roadhunting.webp');
INSERT INTO `game_lists` VALUES ('263', 'KA', 'KA怪物射击', '', '', 'MonsterShooter', '', '', 'fishing', '1261', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-21 17:02:06', '2023-01-21 19:16:50', '', null, 'fs/fish/web/monstershooter.webp', 'fs/fish/wap/monstershooter.webp', 'fs/fish/wap/monstershooter.webp', '', 'fs/fish/header/monstershooter.webp');
INSERT INTO `game_lists` VALUES ('264', 'KA', 'KA海底杀手', '', '', 'UnderseaKiller', '', '', 'fishing', '1262', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-22 16:59:58', '2023-01-27 22:55:26', '', null, 'fs/fish/web/underseakiller.webp', 'fs/fish/wap/underseakiller.webp', 'fs/fish/wap/underseakiller.webp', '', 'fs/fish/header/underseakiller.webp');
INSERT INTO `game_lists` VALUES ('265', 'KA', 'KA海洋假期', '', '', 'OceanVacation', '', '', 'fishing', '1263', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-22 17:00:53', '2023-01-27 22:56:04', '', null, 'fs/fish/web/oceanvacation.webp', 'fs/fish/wap/oceanvacation.webp', 'fs/fish/wap/oceanvacation.webp', '', 'fs/fish/header/oceanvacation.webp');
INSERT INTO `game_lists` VALUES ('266', 'KA', 'KA龙宫探险', '', '', 'DragonPalaceAdventure', '', '', 'fishing', '1264', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-22 17:02:06', '2023-01-22 19:16:50', '', null, 'fs/fish/web/dragonpalaceadventure.webp', 'fs/fish/wap/dragonpalaceadventure.webp', 'fs/fish/wap/dragonpalaceadventure.webp', '', 'fs/fish/header/dragonpalaceadventure.webp');
INSERT INTO `game_lists` VALUES ('267', 'KA', 'KA神猴传奇', '', '', 'LegendOfMonkey', '', '', 'fishing', '1265', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-23 16:59:58', '2023-01-28 22:55:26', '', null, 'fs/fish/web/legendofmonkey.webp', 'fs/fish/wap/legendofmonkey.webp', 'fs/fish/wap/legendofmonkey.webp', '', 'fs/fish/header/legendofmonkey.webp');
INSERT INTO `game_lists` VALUES ('268', 'KA', 'KA黑帮霸主', '', '', 'GangsterOverlord', '', '', 'fishing', '1266', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-23 17:00:53', '2023-01-28 22:56:04', '', null, 'fs/fish/web/gangsteroverlord.webp', 'fs/fish/wap/gangsteroverlord.webp', 'fs/fish/wap/gangsteroverlord.webp', '', 'fs/fish/header/gangsteroverlord.webp');
INSERT INTO `game_lists` VALUES ('269', 'KA', 'KA疯狂派对', '', '', 'CrazyParty', '', '', 'fishing', '1267', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-23 17:02:06', '2023-01-23 19:16:50', '', null, 'fs/fish/web/crazyparty.webp', 'fs/fish/wap/crazyparty.webp', 'fs/fish/wap/crazyparty.webp', '', 'fs/fish/header/crazyparty.webp');
INSERT INTO `game_lists` VALUES ('270', 'KA', 'KA海神之怒', '', '', 'PoseidonWrath', '', '', 'fishing', '1268', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-24 16:59:58', '2023-01-29 22:55:26', '', null, 'fs/fish/web/poseidonwrath.webp', 'fs/fish/wap/poseidonwrath.webp', 'fs/fish/wap/poseidonwrath.webp', '', 'fs/fish/header/poseidonwrath.webp');
INSERT INTO `game_lists` VALUES ('271', 'KA', 'KA幸运鱼', '', '', 'LuckyFish', '', '', 'fishing', '1269', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-24 17:00:53', '2023-01-29 22:56:04', '', null, 'fs/fish/web/luckyfish.webp', 'fs/fish/wap/luckyfish.webp', 'fs/fish/wap/luckyfish.webp', '', 'fs/fish/header/luckyfish.webp');
INSERT INTO `game_lists` VALUES ('272', 'KA', 'KA异变深渊', '', '', 'MutantAbyss', '', '', 'fishing', '1270', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-24 17:02:06', '2023-01-24 19:16:50', '', null, 'fs/fish/web/mutantabyss.webp', 'fs/fish/wap/mutantabyss.webp', 'fs/fish/wap/mutantabyss.webp', '', 'fs/fish/header/mutantabyss.webp');
INSERT INTO `game_lists` VALUES ('273', 'KA', 'KA猎杀马戏团', '', '', 'CircusHunting', '', '', 'fishing', '1271', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-25 16:59:58', '2023-01-30 22:55:26', '', null, 'fs/fish/web/circushunting.webp', 'fs/fish/wap/circushunting.webp', 'fs/fish/wap/circushunting.webp', '', 'fs/fish/header/circushunting.webp');
INSERT INTO `game_lists` VALUES ('274', 'KA', 'KA潜艇海战', '', '', 'SubmarineBattle', '', '', 'fishing', '1272', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-25 17:00:53', '2023-01-30 22:56:04', '', null, 'fs/fish/web/submarinebattle.webp', 'fs/fish/wap/submarinebattle.webp', 'fs/fish/wap/submarinebattle.webp', '', 'fs/fish/header/submarinebattle.webp');
INSERT INTO `game_lists` VALUES ('275', 'KA', 'KA深海夜光', '', '', 'DeepseaLuminous', '', '', 'fishing', '1273', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-25 17:02:06', '2023-01-25 19:16:50', '', null, 'fs/fish/web/deepsealuminous.webp', 'fs/fish/wap/deepsealuminous.webp', 'fs/fish/wap/deepsealuminous.webp', '', 'fs/fish/header/deepsealuminous.webp');
INSERT INTO `game_lists` VALUES ('276', 'KA', 'KA神话冒险', '', '', 'MythicalAdventure', '', '', 'fishing', '1274', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-26 16:59:58', '2023-01-31 22:55:26', '', null, 'fs/fish/web/mythicaladventure.webp', 'fs/fish/wap/mythicaladventure.webp', 'fs/fish/wap/mythicaladventure.webp', '', 'fs/fish/header/mythicaladventure.webp');
INSERT INTO `game_lists` VALUES ('277', 'KA', 'KA福运之战', '', '', 'BattleOfLuck', '', '', 'fishing', '1275', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-26 17:00:53', '2023-01-31 22:56:04', '', null, 'fs/fish/web/battleofluck.webp', 'fs/fish/wap/battleofluck.webp', 'fs/fish/wap/battleofluck.webp', '', 'fs/fish/header/battleofluck.webp');
INSERT INTO `game_lists` VALUES ('278', 'SG', 'SG猎鱼传说', '', '', 'F-FL01', '', '', 'fishing', '1276', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-26 17:02:06', '2023-01-26 19:16:50', '', null, 'fs/fish/web/f-fl01.webp', 'fs/fish/wap/f-fl01.webp', 'fs/fish/wap/f-fl01.webp', '', 'fs/fish/header/f-fl01.webp');
INSERT INTO `game_lists` VALUES ('279', 'SG', 'SG玩翻丧尸', '', '', 'F-ZP01', '', '', 'fishing', '1277', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-27 16:59:58', '2023-02-01 22:55:26', '', null, 'fs/fish/web/f-zp01.webp', 'fs/fish/wap/f-zp01.webp', 'fs/fish/wap/f-zp01.webp', '', 'fs/fish/header/f-zp01.webp');
INSERT INTO `game_lists` VALUES ('280', 'SG', 'SG异形猎人', '', '', 'F-AH01', '', '', 'fishing', '1278', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-27 17:00:53', '2023-02-01 22:56:04', '', null, 'fs/fish/web/f-ah01.webp', 'fs/fish/wap/f-ah01.webp', 'fs/fish/wap/f-ah01.webp', '', 'fs/fish/header/f-ah01.webp');
INSERT INTO `game_lists` VALUES ('281', 'SG', 'SG捕鱼天王', '', '', 'F-SF01', '', '', 'fishing', '1279', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-27 17:02:06', '2023-01-27 19:16:50', '', null, 'fs/fish/web/f-sf01.webp', 'fs/fish/wap/f-sf01.webp', 'fs/fish/wap/f-sf01.webp', '', 'fs/fish/header/f-sf01.webp');
INSERT INTO `game_lists` VALUES ('282', 'SG', 'SG捕鱼大战', '', '', 'F-SF02', '', '', 'fishing', '1280', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-28 16:59:58', '2023-02-02 22:55:26', '', null, 'fs/fish/web/f-sf02.webp', 'fs/fish/wap/f-sf02.webp', 'fs/fish/wap/f-sf02.webp', '', 'fs/fish/header/f-sf02.webp');
INSERT INTO `game_lists` VALUES ('283', 'YOO', 'YOO金蟾捕鱼', '', '', 'jinchanbuyu', '', '', 'fishing', '1281', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-28 17:00:53', '2023-02-02 22:56:04', '', null, 'fs/fish/web/jinchanbuyu.webp', 'fs/fish/wap/jinchanbuyu.webp', 'fs/fish/wap/jinchanbuyu.webp', '', 'fs/fish/header/jinchanbuyu.webp');
INSERT INTO `game_lists` VALUES ('284', 'YOO', 'YOO李逵劈鱼', '', '', 'buyulkpy', '', '', 'fishing', '1282', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-28 17:02:06', '2023-01-28 19:16:50', '', null, 'fs/fish/web/buyulkpy.webp', 'fs/fish/wap/buyulkpy.webp', 'fs/fish/wap/buyulkpy.webp', '', 'fs/fish/header/buyulkpy.webp');
INSERT INTO `game_lists` VALUES ('285', 'YOO', 'YOO大闹天宫', '', '', 'buyudntg', '', '', 'fishing', '1283', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-29 16:59:58', '2023-02-03 22:55:26', '', null, 'fs/fish/web/buyudntg.webp', 'fs/fish/wap/buyudntg.webp', 'fs/fish/wap/buyudntg.webp', '', 'fs/fish/header/buyudntg.webp');
INSERT INTO `game_lists` VALUES ('286', 'YOO', 'YOO疯狂捕鱼', '', '', 'buyufk', '', '', 'fishing', '1284', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-29 17:00:53', '2023-02-03 22:56:04', '', null, 'fs/fish/web/buyufk.webp', 'fs/fish/wap/buyufk.webp', 'fs/fish/wap/buyufk.webp', '', 'fs/fish/header/buyufk.webp');
INSERT INTO `game_lists` VALUES ('287', 'G568', 'G568土豪隊長', '', '', '377', '', '', 'fishing', '1285', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-29 17:02:06', '2023-01-29 19:16:50', '', null, 'fs/fish/web/377.webp', 'fs/fish/wap/377.webp', 'fs/fish/wap/377.webp', '', 'fs/fish/header/377.webp');
INSERT INTO `game_lists` VALUES ('288', 'G568', 'G568煉獄海洋', '', '', '376', '', '', 'fishing', '1286', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-30 16:59:58', '2023-02-04 22:55:26', '', null, 'fs/fish/web/376.webp', 'fs/fish/wap/376.webp', 'fs/fish/wap/376.webp', '', 'fs/fish/header/376.webp');
INSERT INTO `game_lists` VALUES ('289', 'DS', 'DS三仙捕鱼', '', '', '1003', '', '', 'fishing', '1287', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-30 17:00:53', '2023-02-04 22:56:04', '', null, 'fs/fish/web/1003.webp', 'fs/fish/wap/1003.webp', 'fs/fish/wap/1003.webp', '', 'fs/fish/header/1003.webp');
INSERT INTO `game_lists` VALUES ('290', 'DS', 'DS三仙劈鱼', '', '', '1009', '', '', 'fishing', '1288', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-30 17:02:06', '2023-01-30 19:16:50', '', null, 'fs/fish/web/1009.webp', 'fs/fish/wap/1009.webp', 'fs/fish/wap/1009.webp', '', 'fs/fish/header/1009.webp');
INSERT INTO `game_lists` VALUES ('291', 'DS', 'DS海霸王', '', '', '1001', '', '', 'fishing', '1289', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-31 16:59:58', '2023-02-05 22:55:26', '', null, 'fs/fish/web/1001.webp', 'fs/fish/wap/1001.webp', 'fs/fish/wap/1001.webp', '', 'fs/fish/header/1001.webp');
INSERT INTO `game_lists` VALUES ('292', 'DS', 'DS猎龙霸主', '', '', '1004', '', '', 'fishing', '1290', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-31 17:00:53', '2023-02-05 22:56:04', '', null, 'fs/fish/web/1004.webp', 'fs/fish/wap/1004.webp', 'fs/fish/wap/1004.webp', '', 'fs/fish/header/1004.webp');
INSERT INTO `game_lists` VALUES ('293', 'DS', 'DS吃我一炮', '', '', '1002', '', '', 'fishing', '1291', '1', '1', '0', '1', '1', '1', '1', '1', '2023-01-31 17:02:06', '2023-01-31 19:16:50', '', null, 'fs/fish/web/1002.webp', 'fs/fish/wap/1002.webp', 'fs/fish/wap/1002.webp', '', 'fs/fish/header/1002.webp');
INSERT INTO `game_lists` VALUES ('294', 'DS', 'DS植物大战恐龙', '', '', '1007', '', '', 'fishing', '1292', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-01 16:59:58', '2023-02-06 22:55:26', '', null, 'fs/fish/web/1007.webp', 'fs/fish/wap/1007.webp', 'fs/fish/wap/1007.webp', '', 'fs/fish/header/1007.webp');
INSERT INTO `game_lists` VALUES ('295', 'DS', 'DS西游降魔', '', '', '1008', '', '', 'fishing', '1293', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-01 17:00:53', '2023-02-06 22:56:04', '', null, 'fs/fish/web/1008.webp', 'fs/fish/wap/1008.webp', 'fs/fish/wap/1008.webp', '', 'fs/fish/header/1008.webp');
INSERT INTO `game_lists` VALUES ('296', 'DS', 'DS一槌爆富', '', '', '1006', '', '', 'fishing', '1294', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-01 17:02:06', '2023-02-01 19:16:50', '', null, 'fs/fish/web/1006.webp', 'fs/fish/wap/1006.webp', 'fs/fish/wap/1006.webp', '', 'fs/fish/header/1006.webp');
INSERT INTO `game_lists` VALUES ('297', 'DS', 'DS忍者劈鱼', '', '', '1012', '', '', 'fishing', '1295', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-02 16:59:58', '2023-02-07 22:55:26', '', null, 'fs/fish/web/1012.webp', 'fs/fish/wap/1012.webp', 'fs/fish/wap/1012.webp', '', 'fs/fish/header/1012.webp');
INSERT INTO `game_lists` VALUES ('298', 'DS', 'DS宾果捕鱼', '', '', '1010', '', '', 'fishing', '1296', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-02 17:00:53', '2023-02-07 22:56:04', '', null, 'fs/fish/web/1010.webp', 'fs/fish/wap/1010.webp', 'fs/fish/wap/1010.webp', '', 'fs/fish/header/1010.webp');
INSERT INTO `game_lists` VALUES ('299', 'DS', 'DS招财猫钓鱼', '', '', '1011', '', '', 'fishing', '1297', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-02 17:02:06', '2023-02-02 19:16:50', '', null, 'fs/fish/web/1011.webp', 'fs/fish/wap/1011.webp', 'fs/fish/wap/1011.webp', '', 'fs/fish/header/1011.webp');
INSERT INTO `game_lists` VALUES ('300', 'DS', 'DS开心养鱼', '', '', '1005', '', '', 'fishing', '1298', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-03 16:59:58', '2023-02-08 22:55:26', '', null, 'fs/fish/web/1005.webp', 'fs/fish/wap/1005.webp', 'fs/fish/wap/1005.webp', '', 'fs/fish/header/1005.webp');
INSERT INTO `game_lists` VALUES ('301', 'Splus', 'Splus富贵捕鱼', '', '', '61', '', '', 'fishing', '1299', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-03 17:00:53', '2023-02-08 22:56:04', '', null, 'fs/fish/web/61.webp', 'fs/fish/wap/61.webp', 'fs/fish/wap/61.webp', '', 'fs/fish/header/61.webp');
INSERT INTO `game_lists` VALUES ('302', 'WL', 'WL捕鱼', '', '', '1', '', '', 'fishing', '1300', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-03 17:02:06', '2023-02-03 19:16:50', '', null, 'fs/fish/web/1.webp', 'fs/fish/wap/1.webp', 'fs/fish/wap/1.webp', '', 'fs/fish/header/1.webp');
INSERT INTO `game_lists` VALUES ('303', 'NW', 'NW途游捕鱼', '', '', '510', '', '', 'fishing', '1301', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-04 16:59:58', '2023-02-09 22:55:26', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('304', 'KYS', 'KYS红包捕鱼', '', '', '510', '', '', 'fishing', '1302', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-04 17:00:53', '2023-02-09 22:56:04', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('305', 'KYL', 'KYL红包捕鱼', '', '', '510', '', '', 'fishing', '1303', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-04 17:02:06', '2023-02-04 19:16:50', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('306', 'KY', 'KY红包捕鱼', '', '', '510', '', '', 'fishing', '1304', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-05 16:59:58', '2023-02-10 22:55:26', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('307', 'KY', 'KY李逵捕鱼', '', '', '520', '', '', 'fishing', '1305', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-05 17:00:53', '2023-02-10 22:56:04', '', null, 'fs/fish/web/520.webp', 'fs/fish/wap/520.webp', 'fs/fish/wap/520.webp', '', 'fs/fish/header/520.webp');
INSERT INTO `game_lists` VALUES ('308', 'KY', 'KY金元捕鱼', '', '', '530', '', '', 'fishing', '1306', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-05 17:02:06', '2023-02-05 19:16:50', '', null, 'fs/fish/web/530.webp', 'fs/fish/wap/530.webp', 'fs/fish/wap/530.webp', '', 'fs/fish/header/530.webp');
INSERT INTO `game_lists` VALUES ('309', 'KY', 'KY捕鱼传说', '', '', '540', '', '', 'fishing', '1307', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-06 16:59:58', '2023-02-11 22:55:26', '', null, 'fs/fish/web/540.webp', 'fs/fish/wap/540.webp', 'fs/fish/wap/540.webp', '', 'fs/fish/header/540.webp');
INSERT INTO `game_lists` VALUES ('310', 'KY', 'KY富贵金龙', '', '', '550', '', '', 'fishing', '1308', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-06 17:00:53', '2023-02-11 22:56:04', '', null, 'fs/fish/web/550.webp', 'fs/fish/wap/550.webp', 'fs/fish/wap/550.webp', '', 'fs/fish/header/550.webp');
INSERT INTO `game_lists` VALUES ('311', 'WG', 'WG财神捕鱼', '', '', '4001', '', '', 'fishing', '1309', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-06 17:02:06', '2023-02-06 19:16:50', '', null, 'fs/fish/web/4001.webp', 'fs/fish/wap/4001.webp', 'fs/fish/wap/4001.webp', '', 'fs/fish/header/4001.webp');
INSERT INTO `game_lists` VALUES ('312', 'WG', 'WG捕鱼达人', '', '', '4004', '', '', 'fishing', '1310', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-07 16:59:58', '2023-02-12 22:55:26', '', null, 'fs/fish/web/4004.webp', 'fs/fish/wap/4004.webp', 'fs/fish/wap/4004.webp', '', 'fs/fish/header/4004.webp');
INSERT INTO `game_lists` VALUES ('313', 'WG', 'WG神龙捕鱼', '', '', '4002', '', '', 'fishing', '1311', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-07 17:00:53', '2023-02-12 22:56:04', '', null, 'fs/fish/web/4002.webp', 'fs/fish/wap/4002.webp', 'fs/fish/wap/4002.webp', '', 'fs/fish/header/4002.webp');
INSERT INTO `game_lists` VALUES ('314', 'TY', 'TY红包扫雷', '', '', '2018', '', '', 'fishing', '1312', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-07 17:02:06', '2023-02-07 19:16:50', '', null, 'fs/fish/web/2018.webp', 'fs/fish/wap/2018.webp', 'fs/fish/wap/2018.webp', '', 'fs/fish/header/2018.webp');
INSERT INTO `game_lists` VALUES ('315', 'BSP', 'BSP3D千炮捕鱼王', '', '', '1001', '', '', 'fishing', '1313', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-08 16:59:58', '2023-02-13 22:55:26', '', null, 'fs/fish/web/1001.webp', 'fs/fish/wap/1001.webp', 'fs/fish/wap/1001.webp', '', 'fs/fish/header/1001.webp');
INSERT INTO `game_lists` VALUES ('316', 'BSP', 'BSP捕鸟达人', '', '', '1050', '', '', 'fishing', '1314', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-08 17:00:53', '2023-02-13 22:56:04', '', null, 'fs/fish/web/1050.webp', 'fs/fish/wap/1050.webp', 'fs/fish/wap/1050.webp', '', 'fs/fish/header/1050.webp');
INSERT INTO `game_lists` VALUES ('317', 'BSP', 'BSP金蟾捕鱼', '', '', '1051', '', '', 'fishing', '1315', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-08 17:02:06', '2023-02-08 19:16:50', '', null, 'fs/fish/web/1051.webp', 'fs/fish/wap/1051.webp', 'fs/fish/wap/1051.webp', '', 'fs/fish/header/1051.webp');
INSERT INTO `game_lists` VALUES ('318', 'BSP', 'BSP捕鱼王中王', '', '', '1018', '', '', 'fishing', '1316', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-09 16:59:58', '2023-02-14 22:55:26', '', null, 'fs/fish/web/1018.webp', 'fs/fish/wap/1018.webp', 'fs/fish/wap/1018.webp', '', 'fs/fish/header/1018.webp');
INSERT INTO `game_lists` VALUES ('319', 'BSP', 'BSP李逵劈鱼', '', '', '1048', '', '', 'fishing', '1317', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-09 17:00:53', '2023-02-14 22:56:04', '', null, 'fs/fish/web/1048.webp', 'fs/fish/wap/1048.webp', 'fs/fish/wap/1048.webp', '', 'fs/fish/header/1048.webp');
INSERT INTO `game_lists` VALUES ('320', 'BSP', 'BSP大闹天宫', '', '', '1049', '', '', 'fishing', '1318', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-09 17:02:06', '2023-02-09 19:16:50', '', null, 'fs/fish/web/1049.webp', 'fs/fish/wap/1049.webp', 'fs/fish/wap/1049.webp', '', 'fs/fish/header/1049.webp');
INSERT INTO `game_lists` VALUES ('321', 'BSP', 'BSP3D美人渔', '', '', '1047', '', '', 'fishing', '1319', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-10 16:59:58', '2023-02-15 22:55:26', '', null, 'fs/fish/web/1047.webp', 'fs/fish/wap/1047.webp', 'fs/fish/wap/1047.webp', '', 'fs/fish/header/1047.webp');
INSERT INTO `game_lists` VALUES ('322', 'BSP', 'BSP3D海盗来了', '', '', '1046', '', '', 'fishing', '1320', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-10 17:00:53', '2023-02-15 22:56:04', '', null, 'fs/fish/web/1046.webp', 'fs/fish/wap/1046.webp', 'fs/fish/wap/1046.webp', '', 'fs/fish/header/1046.webp');
INSERT INTO `game_lists` VALUES ('323', 'LEG', 'LEG捕鱼大作战', '', '', '510', '', '', 'fishing', '1321', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-10 17:02:06', '2023-02-10 19:16:50', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('324', 'LEG', 'LEG百鬼夜行', '', '', '8790', '', '', 'fishing', '1322', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-11 16:59:58', '2023-02-16 22:55:26', '', null, 'fs/fish/web/8790.webp', 'fs/fish/wap/8790.webp', 'fs/fish/wap/8790.webp', '', 'fs/fish/header/8790.webp');
INSERT INTO `game_lists` VALUES ('325', 'LEG', 'LEG牛牛捕鱼', '', '', '8770', '', '', 'fishing', '1323', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-11 17:00:53', '2023-02-16 22:56:04', '', null, 'fs/fish/web/8770.webp', 'fs/fish/wap/8770.webp', 'fs/fish/wap/8770.webp', '', 'fs/fish/header/8770.webp');
INSERT INTO `game_lists` VALUES ('326', 'LEG', 'LEG珍珠美人鱼', '', '', '8890', '', '', 'fishing', '1324', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-11 17:02:06', '2023-02-11 19:16:50', '', null, 'fs/fish/web/8890.webp', 'fs/fish/wap/8890.webp', 'fs/fish/wap/8890.webp', '', 'fs/fish/header/8890.webp');
INSERT INTO `game_lists` VALUES ('327', 'MT', 'MT3D捕鱼', '', '', 'PTG0056', '', '', 'fishing', '1325', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-12 16:59:58', '2023-02-17 22:55:26', '', null, 'fs/fish/web/ptg0056.webp', 'fs/fish/wap/ptg0056.webp', 'fs/fish/wap/ptg0056.webp', '', 'fs/fish/header/ptg0056.webp');
INSERT INTO `game_lists` VALUES ('328', 'MT', 'MT李逵劈鱼', '', '', 'PTG0011', '', '', 'fishing', '1326', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-12 17:00:53', '2023-02-17 22:56:04', '', null, 'fs/fish/web/ptg0011.webp', 'fs/fish/wap/ptg0011.webp', 'fs/fish/wap/ptg0011.webp', '', 'fs/fish/header/ptg0011.webp');
INSERT INTO `game_lists` VALUES ('329', 'MT', 'MT金蟾捕鱼', '', '', 'PTG0045', '', '', 'fishing', '1327', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-12 17:02:06', '2023-02-12 19:16:50', '', null, 'fs/fish/web/ptg0045.webp', 'fs/fish/wap/ptg0045.webp', 'fs/fish/wap/ptg0045.webp', '', 'fs/fish/header/ptg0045.webp');
INSERT INTO `game_lists` VALUES ('330', 'MT', 'MT海王2', '', '', 'PTG0100', '', '', 'fishing', '1328', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-13 16:59:58', '2023-02-18 22:55:26', '', null, 'fs/fish/web/ptg0100.webp', 'fs/fish/wap/ptg0100.webp', 'fs/fish/wap/ptg0100.webp', '', 'fs/fish/header/ptg0100.webp');
INSERT INTO `game_lists` VALUES ('331', 'MT', 'MT疯狂捕鱼', '', '', 'PTG0094', '', '', 'fishing', '1329', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-13 17:00:53', '2023-02-18 22:56:04', '', null, 'fs/fish/web/ptg0094.webp', 'fs/fish/wap/ptg0094.webp', 'fs/fish/wap/ptg0094.webp', '', 'fs/fish/header/ptg0094.webp');
INSERT INTO `game_lists` VALUES ('332', 'MT', 'MT捕鱼来了', '', '', 'PTG0004', '', '', 'fishing', '1330', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-13 17:02:06', '2023-02-13 19:16:50', '', null, 'fs/fish/web/ptg0004.webp', 'fs/fish/wap/ptg0004.webp', 'fs/fish/wap/ptg0004.webp', '', 'fs/fish/header/ptg0004.webp');
INSERT INTO `game_lists` VALUES ('333', 'MT', 'MT疯狂魔鬼城', '', '', 'PTG0104', '', '', 'fishing', '1331', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-14 16:59:58', '2023-02-19 22:55:26', '', null, 'fs/fish/web/ptg0104.webp', 'fs/fish/wap/ptg0104.webp', 'fs/fish/wap/ptg0104.webp', '', 'fs/fish/header/ptg0104.webp');
INSERT INTO `game_lists` VALUES ('334', 'MT', 'MT水果炸翻天', '', '', 'PTG0125', '', '', 'fishing', '1332', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-14 17:00:53', '2023-02-19 22:56:04', '', null, 'fs/fish/web/ptg0125.webp', 'fs/fish/wap/ptg0125.webp', 'fs/fish/wap/ptg0125.webp', '', 'fs/fish/header/ptg0125.webp');
INSERT INTO `game_lists` VALUES ('335', 'DT', 'DT捕鱼合集', '', '', '1', '', '', 'fishing', '1333', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-14 17:02:06', '2023-02-14 19:16:50', '', null, 'fs/fish/web/1.webp', 'fs/fish/wap/1.webp', 'fs/fish/wap/1.webp', '', 'fs/fish/header/1.webp');
INSERT INTO `game_lists` VALUES ('336', 'DT', 'DT金蝉捕鱼', '', '', '500', '', '', 'fishing', '1334', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-15 16:59:58', '2023-02-20 22:55:26', '', null, 'fs/fish/web/500.webp', 'fs/fish/wap/500.webp', 'fs/fish/wap/500.webp', '', 'fs/fish/header/500.webp');
INSERT INTO `game_lists` VALUES ('337', 'DT', 'DT李逵劈鱼', '', '', '510', '', '', 'fishing', '1335', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-15 17:00:53', '2023-02-20 22:56:04', '', null, 'fs/fish/web/510.webp', 'fs/fish/wap/510.webp', 'fs/fish/wap/510.webp', '', 'fs/fish/header/510.webp');
INSERT INTO `game_lists` VALUES ('338', 'DT', 'DT人鱼传说', '', '', '520', '', '', 'fishing', '1336', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-15 17:02:06', '2023-02-15 19:16:50', '', null, 'fs/fish/web/520.webp', 'fs/fish/wap/520.webp', 'fs/fish/wap/520.webp', '', 'fs/fish/header/520.webp');
INSERT INTO `game_lists` VALUES ('339', 'DT', 'DT大闹天宫', '', '', '530', '', '', 'fishing', '1337', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-16 16:59:58', '2023-02-21 22:55:26', '', null, 'fs/fish/web/530.webp', 'fs/fish/wap/530.webp', 'fs/fish/wap/530.webp', '', 'fs/fish/header/530.webp');
INSERT INTO `game_lists` VALUES ('340', 'VG', 'VG龙王捕鱼', '', '', '5', '', '', 'fishing', '1338', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-16 17:00:53', '2023-02-21 22:56:04', '', null, 'fs/fish/web/5.webp', 'fs/fish/wap/5.webp', 'fs/fish/wap/5.webp', '', 'fs/fish/header/5.webp');
INSERT INTO `game_lists` VALUES ('341', 'VG', 'VG3D捕鱼', '', '', '17', '', '', 'fishing', '1339', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-16 17:02:06', '2023-02-16 19:16:50', '', null, 'fs/fish/web/17.webp', 'fs/fish/wap/17.webp', 'fs/fish/wap/17.webp', '', 'fs/fish/header/17.webp');
INSERT INTO `game_lists` VALUES ('342', 'VG', 'VG海盗捕鱼', '', '', '63', '', '', 'fishing', '1340', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-17 16:59:58', '2023-02-22 22:55:26', '', null, 'fs/fish/web/63.webp', 'fs/fish/wap/63.webp', 'fs/fish/wap/63.webp', '', 'fs/fish/header/63.webp');
INSERT INTO `game_lists` VALUES ('343', 'VG', 'VG波塞冬捕鱼', '', '', '64', '', '', 'fishing', '1341', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-17 17:00:53', '2023-02-22 22:56:04', '', null, 'fs/fish/web/64.webp', 'fs/fish/wap/64.webp', 'fs/fish/wap/64.webp', '', 'fs/fish/header/64.webp');
INSERT INTO `game_lists` VALUES ('344', 'VG', 'VG神龙宝藏', '', '', '65', '', '', 'fishing', '1342', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-17 17:02:06', '2023-02-17 19:16:50', '', null, 'fs/fish/web/65.webp', 'fs/fish/wap/65.webp', 'fs/fish/wap/65.webp', '', 'fs/fish/header/65.webp');
INSERT INTO `game_lists` VALUES ('345', 'VG', 'VG创世捕鱼', '', '', '66', '', '', 'fishing', '1343', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-18 16:59:58', '2023-02-23 22:55:26', '', null, 'fs/fish/web/66.webp', 'fs/fish/wap/66.webp', 'fs/fish/wap/66.webp', '', 'fs/fish/header/66.webp');
INSERT INTO `game_lists` VALUES ('346', 'VG', 'VG街机捕鱼', '', '', '67', '', '', 'fishing', '1344', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-18 17:00:53', '2023-02-23 22:56:04', '', null, 'fs/fish/web/67.webp', 'fs/fish/wap/67.webp', 'fs/fish/wap/67.webp', '', 'fs/fish/header/67.webp');
INSERT INTO `game_lists` VALUES ('347', 'VG', 'VG复古捕鱼', '', '', '68', '', '', 'fishing', '1345', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-18 17:02:06', '2023-02-18 19:16:50', '', null, 'fs/fish/web/68.webp', 'fs/fish/wap/68.webp', 'fs/fish/wap/68.webp', '', 'fs/fish/header/68.webp');
INSERT INTO `game_lists` VALUES ('348', 'VG', 'VG李逵劈鱼', '', '', '69', '', '', 'fishing', '1346', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-19 16:59:58', '2023-02-24 22:55:26', '', null, 'fs/fish/web/69.webp', 'fs/fish/wap/69.webp', 'fs/fish/wap/69.webp', '', 'fs/fish/header/69.webp');
INSERT INTO `game_lists` VALUES ('349', 'VG', 'VG摇钱树捕鱼', '', '', '70', '', '', 'fishing', '1347', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-19 17:00:53', '2023-02-24 22:56:04', '', null, 'fs/fish/web/70.webp', 'fs/fish/wap/70.webp', 'fs/fish/wap/70.webp', '', 'fs/fish/header/70.webp');
INSERT INTO `game_lists` VALUES ('350', 'VG', 'VG福神捕鱼', '', '', '71', '', '', 'fishing', '1348', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-19 17:02:06', '2023-02-19 19:16:50', '', null, 'fs/fish/web/71.webp', 'fs/fish/wap/71.webp', 'fs/fish/wap/71.webp', '', 'fs/fish/header/71.webp');
INSERT INTO `game_lists` VALUES ('351', 'TP', 'TP连爆捕鱼', '', '', 'at2_102', '', '', 'fishing', '1349', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-20 16:59:58', '2023-02-25 22:55:26', '', null, 'fs/fish/web/at2_102.webp', 'fs/fish/wap/at2_102.webp', 'fs/fish/wap/at2_102.webp', '', 'fs/fish/header/at2_102.webp');
INSERT INTO `game_lists` VALUES ('352', 'TP', 'TP一路发捕鱼', '', '', 'at2_070', '', '', 'fishing', '1350', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-20 17:00:53', '2023-02-25 22:56:04', '', null, 'fs/fish/web/at2_070.webp', 'fs/fish/wap/at2_070.webp', 'fs/fish/wap/at2_070.webp', '', 'fs/fish/header/at2_070.webp');
INSERT INTO `game_lists` VALUES ('353', 'TP', 'TP极速财神捕鱼', '', '', 'at2_068', '', '', 'fishing', '1351', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-20 17:02:06', '2023-02-20 19:16:50', '', null, 'fs/fish/web/at2_068.webp', 'fs/fish/wap/at2_068.webp', 'fs/fish/wap/at2_068.webp', '', 'fs/fish/header/at2_068.webp');
INSERT INTO `game_lists` VALUES ('354', 'TP', 'TP海盗捕鱼', '', '', 'at2_012', '', '', 'fishing', '1352', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-21 16:59:58', '2023-02-26 22:55:26', '', null, 'fs/fish/web/at2_012.webp', 'fs/fish/wap/at2_012.webp', 'fs/fish/wap/at2_012.webp', '', 'fs/fish/header/at2_012.webp');
INSERT INTO `game_lists` VALUES ('355', 'TP', 'TP捕虫达人', '', '', 'at2_017', '', '', 'fishing', '1353', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-21 17:00:53', '2023-02-26 22:56:04', '', null, 'fs/fish/web/at2_017.webp', 'fs/fish/wap/at2_017.webp', 'fs/fish/wap/at2_017.webp', '', 'fs/fish/header/at2_017.webp');
INSERT INTO `game_lists` VALUES ('356', 'TP', 'TP祖玛龙', '', '', 'at2_018', '', '', 'fishing', '1354', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-21 17:02:06', '2023-02-21 19:16:50', '', null, 'fs/fish/web/at2_018.webp', 'fs/fish/wap/at2_018.webp', 'fs/fish/wap/at2_018.webp', '', 'fs/fish/header/at2_018.webp');
INSERT INTO `game_lists` VALUES ('357', 'TP', 'TP祖玛荣耀', '', '', 'at2_020', '', '', 'fishing', '1355', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-22 16:59:58', '2023-02-27 22:55:26', '', null, 'fs/fish/web/at2_020.webp', 'fs/fish/wap/at2_020.webp', 'fs/fish/wap/at2_020.webp', '', 'fs/fish/header/at2_020.webp');
INSERT INTO `game_lists` VALUES ('358', 'TP', 'TP轻松捕鱼', '', '', 'at2_030', '', '', 'fishing', '1356', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-22 17:00:53', '2023-02-27 22:56:04', '', null, 'fs/fish/web/at2_030.webp', 'fs/fish/wap/at2_030.webp', 'fs/fish/wap/at2_030.webp', '', 'fs/fish/header/at2_030.webp');
INSERT INTO `game_lists` VALUES ('359', 'TP', 'TP龙爷放鱼', '', '', 'at2_052', '', '', 'fishing', '1357', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-22 17:02:06', '2023-02-22 19:16:50', '', null, 'fs/fish/web/at2_052.webp', 'fs/fish/wap/at2_052.webp', 'fs/fish/wap/at2_052.webp', '', 'fs/fish/header/at2_052.webp');
INSERT INTO `game_lists` VALUES ('360', 'TP', 'TP海盗抢鱼', '', '', 'at2_060', '', '', 'fishing', '1358', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-23 16:59:58', '2023-02-28 22:55:26', '', null, 'fs/fish/web/at2_060.webp', 'fs/fish/wap/at2_060.webp', 'fs/fish/wap/at2_060.webp', '', 'fs/fish/header/at2_060.webp');
INSERT INTO `game_lists` VALUES ('361', 'TP', 'TP大咖捕鱼', '', '', 'va_801', '', '', 'fishing', '1359', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-23 17:00:53', '2023-02-28 22:56:04', '', null, 'fs/fish/web/va_801.webp', 'fs/fish/wap/va_801.webp', 'fs/fish/wap/va_801.webp', '', 'fs/fish/header/va_801.webp');
INSERT INTO `game_lists` VALUES ('362', 'TP', 'TP开心养鱼', '', '', 'ds_1005', '', '', 'fishing', '1360', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-23 17:02:06', '2023-02-23 19:16:50', '', null, 'fs/fish/web/ds_1005.webp', 'fs/fish/wap/ds_1005.webp', 'fs/fish/wap/ds_1005.webp', '', 'fs/fish/header/ds_1005.webp');
INSERT INTO `game_lists` VALUES ('363', 'TP', 'TP一槌爆富', '', '', 'ds_1006', '', '', 'fishing', '1361', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-24 16:59:58', '2023-03-01 22:55:26', '', null, 'fs/fish/web/ds_1006.webp', 'fs/fish/wap/ds_1006.webp', 'fs/fish/wap/ds_1006.webp', '', 'fs/fish/header/ds_1006.webp');
INSERT INTO `game_lists` VALUES ('364', 'TP', 'TP忍者劈鱼', '', '', 'ds_1012', '', '', 'fishing', '1362', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-24 17:00:53', '2023-03-01 22:56:04', '', null, 'fs/fish/web/ds_1012.webp', 'fs/fish/wap/ds_1012.webp', 'fs/fish/wap/ds_1012.webp', '', 'fs/fish/header/ds_1012.webp');
INSERT INTO `game_lists` VALUES ('365', 'TP', 'TP海霸王', '', '', 'ds_1001', '', '', 'fishing', '1363', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-24 17:02:06', '2023-02-24 19:16:50', '', null, 'fs/fish/web/ds_1001.webp', 'fs/fish/wap/ds_1001.webp', 'fs/fish/wap/ds_1001.webp', '', 'fs/fish/header/ds_1001.webp');
INSERT INTO `game_lists` VALUES ('366', 'TP', 'TP吃我一炮', '', '', 'ds_1002', '', '', 'fishing', '1364', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-25 16:59:58', '2023-03-02 22:55:26', '', null, 'fs/fish/web/ds_1002.webp', 'fs/fish/wap/ds_1002.webp', 'fs/fish/wap/ds_1002.webp', '', 'fs/fish/header/ds_1002.webp');
INSERT INTO `game_lists` VALUES ('367', 'TP', 'TP三仙捕鱼', '', '', 'ds_1003', '', '', 'fishing', '1365', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-25 17:00:53', '2023-03-02 22:56:04', '', null, 'fs/fish/web/ds_1003.webp', 'fs/fish/wap/ds_1003.webp', 'fs/fish/wap/ds_1003.webp', '', 'fs/fish/header/ds_1003.webp');
INSERT INTO `game_lists` VALUES ('368', 'TP', 'TP猎龙霸主', '', '', 'ds_1004', '', '', 'fishing', '1366', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-25 17:02:06', '2023-02-25 19:16:50', '', null, 'fs/fish/web/ds_1004.webp', 'fs/fish/wap/ds_1004.webp', 'fs/fish/wap/ds_1004.webp', '', 'fs/fish/header/ds_1004.webp');
INSERT INTO `game_lists` VALUES ('369', 'TP', 'TP植物大战恐龙', '', '', 'ds_1007', '', '', 'fishing', '1367', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 16:59:58', '2023-03-03 22:55:26', '', null, 'fs/fish/web/ds_1007.webp', 'fs/fish/wap/ds_1007.webp', 'fs/fish/wap/ds_1007.webp', '', 'fs/fish/header/ds_1007.webp');
INSERT INTO `game_lists` VALUES ('370', 'TP', 'TP西游降魔', '', '', 'ds_1008', '', '', 'fishing', '1368', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 17:00:53', '2023-03-03 22:56:04', '', null, 'fs/fish/web/ds_1008.webp', 'fs/fish/wap/ds_1008.webp', 'fs/fish/wap/ds_1008.webp', '', 'fs/fish/header/ds_1008.webp');
INSERT INTO `game_lists` VALUES ('371', 'TP', 'TP三仙劈鱼', '', '', 'ds_1009', '', '', 'fishing', '1369', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 17:02:06', '2023-02-26 19:16:50', '', null, 'fs/fish/web/ds_1009.webp', 'fs/fish/wap/ds_1009.webp', 'fs/fish/wap/ds_1009.webp', '', 'fs/fish/header/ds_1009.webp');
INSERT INTO `game_lists` VALUES ('372', 'TP', 'TP宾果捕鱼', '', '', 'ds_1010', '', '', 'fishing', '1370', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 16:59:58', '2023-03-04 22:55:26', '', null, 'fs/fish/web/ds_1010.webp', 'fs/fish/wap/ds_1010.webp', 'fs/fish/wap/ds_1010.webp', '', 'fs/fish/header/ds_1010.webp');
INSERT INTO `game_lists` VALUES ('373', 'TP', 'TP招财猫钓鱼', '', '', 'ds_1011', '', '', 'fishing', '1371', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 17:00:53', '2023-03-04 22:56:04', '', null, 'fs/fish/web/ds_1011.webp', 'fs/fish/wap/ds_1011.webp', 'fs/fish/wap/ds_1011.webp', '', 'fs/fish/header/ds_1011.webp');
INSERT INTO `game_lists` VALUES ('374', 'TP', 'TP捕鱼大富翁', '', '', 'dp_fish3d_1', '', '', 'fishing', '1372', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 16:59:58', '2023-03-03 22:55:26', '', null, 'fs/fish/web/dp_fish3d_1.webp', 'fs/fish/wap/dp_fish3d_1.webp', 'fs/fish/wap/dp_fish3d_1.webp', '', 'fs/fish/header/dp_fish3d_1.webp');
INSERT INTO `game_lists` VALUES ('375', 'TP', 'TP劈鱼来了', '', '', 'dp_cutfish_1', '', '', 'fishing', '1373', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 17:00:53', '2023-03-03 22:56:04', '', null, 'fs/fish/web/dp_cutfish_1.webp', 'fs/fish/wap/dp_cutfish_1.webp', 'fs/fish/wap/dp_cutfish_1.webp', '', 'fs/fish/header/dp_cutfish_1.webp');
INSERT INTO `game_lists` VALUES ('376', 'TP', 'TP王者捕鱼', '', '', 'dp_fishking_1', '', '', 'fishing', '1374', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-26 17:02:06', '2023-02-26 19:16:50', '', null, 'fs/fish/web/dp_fishking_1.webp', 'fs/fish/wap/dp_fishking_1.webp', 'fs/fish/wap/dp_fishking_1.webp', '', 'fs/fish/header/dp_fishking_1.webp');
INSERT INTO `game_lists` VALUES ('377', 'TP', 'TP捕鱼大亨', '', '', 'dp_fishing_1', '', '', 'fishing', '1375', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 16:59:58', '2023-03-04 22:55:26', '', null, 'fs/fish/web/dp_fishing_1.webp', 'fs/fish/wap/dp_fishing_1.webp', 'fs/fish/wap/dp_fishing_1.webp', '', 'fs/fish/header/dp_fishing_1.webp');
INSERT INTO `game_lists` VALUES ('378', 'TP', 'TP二爷捕鱼', '', '', 'dp_twoyeah_1', '', '', 'fishing', '1376', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 17:00:53', '2023-03-04 22:56:04', '', null, 'fs/fish/web/dp_twoyeah_1.webp', 'fs/fish/wap/dp_twoyeah_1.webp', 'fs/fish/wap/dp_twoyeah_1.webp', '', 'fs/fish/header/dp_twoyeah_1.webp');
INSERT INTO `game_lists` VALUES ('379', 'TP', 'TP二爷彩金捕鱼', '', '', 'rg_101', '', '', 'fishing', '1377', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 17:02:06', '2023-02-27 19:16:50', '', null, 'fs/fish/web/rg_101.webp', 'fs/fish/wap/rg_101.webp', 'fs/fish/wap/rg_101.webp', '', 'fs/fish/header/rg_101.webp');
INSERT INTO `game_lists` VALUES ('380', 'LK', 'LK雅典娜捕魚', '', '', '100037', '', '', 'fishing', '1378', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 16:59:58', '2023-03-05 22:55:26', '', null, 'fs/fish/web/100037.webp', 'fs/fish/wap/100037.webp', 'fs/fish/wap/100037.webp', '', 'fs/fish/header/100037.webp');
INSERT INTO `game_lists` VALUES ('381', 'AS', 'AS龙王捕鱼', '', '', '100005', '', '', 'fishing', '1379', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 17:00:53', '2023-03-05 22:56:04', '', null, 'fs/fish/web/100005.webp', 'fs/fish/wap/100005.webp', 'fs/fish/wap/100005.webp', '', 'fs/fish/header/100005.webp');
INSERT INTO `game_lists` VALUES ('382', 'AS', 'AS3D捕鱼', '', '', '100017', '', '', 'fishing', '1380', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 16:59:58', '2023-03-04 22:55:26', '', null, 'fs/fish/web/100017.webp', 'fs/fish/wap/100017.webp', 'fs/fish/wap/100017.webp', '', 'fs/fish/header/100017.webp');
INSERT INTO `game_lists` VALUES ('383', 'AS', 'AS海盗捕鱼', '', '', '100063', '', '', 'fishing', '1381', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 17:00:53', '2023-03-04 22:56:04', '', null, 'fs/fish/web/100063.webp', 'fs/fish/wap/100063.webp', 'fs/fish/wap/100063.webp', '', 'fs/fish/header/100063.webp');
INSERT INTO `game_lists` VALUES ('384', 'AS', 'AS波塞冬捕鱼', '', '', '100064', '', '', 'fishing', '1382', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-27 17:02:06', '2023-02-27 19:16:50', '', null, 'fs/fish/web/100064.webp', 'fs/fish/wap/100064.webp', 'fs/fish/wap/100064.webp', '', 'fs/fish/header/100064.webp');
INSERT INTO `game_lists` VALUES ('385', 'AS', 'AS神龙宝藏', '', '', '100065', '', '', 'fishing', '1383', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 16:59:58', '2023-03-05 22:55:26', '', null, 'fs/fish/web/100065.webp', 'fs/fish/wap/100065.webp', 'fs/fish/wap/100065.webp', '', 'fs/fish/header/100065.webp');
INSERT INTO `game_lists` VALUES ('386', 'AS', 'AS创世捕鱼', '', '', '100066', '', '', 'fishing', '1384', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 17:00:53', '2023-03-05 22:56:04', '', null, 'fs/fish/web/100066.webp', 'fs/fish/wap/100066.webp', 'fs/fish/wap/100066.webp', '', 'fs/fish/header/100066.webp');
INSERT INTO `game_lists` VALUES ('387', 'AS', 'AS街机捕鱼', '', '', '100067', '', '', 'fishing', '1385', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 17:02:06', '2023-02-28 19:16:50', '', null, 'fs/fish/web/100067.webp', 'fs/fish/wap/100067.webp', 'fs/fish/wap/100067.webp', '', 'fs/fish/header/100067.webp');
INSERT INTO `game_lists` VALUES ('388', 'AS', 'AS复古捕鱼', '', '', '100068', '', '', 'fishing', '1386', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 16:59:58', '2023-03-06 22:55:26', '', null, 'fs/fish/web/100068.webp', 'fs/fish/wap/100068.webp', 'fs/fish/wap/100068.webp', '', 'fs/fish/header/100068.webp');
INSERT INTO `game_lists` VALUES ('389', 'AS', 'AS李逵劈鱼', '', '', '100069', '', '', 'fishing', '1387', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 17:00:53', '2023-03-06 22:56:04', '', null, 'fs/fish/web/100069.webp', 'fs/fish/wap/100069.webp', 'fs/fish/wap/100069.webp', '', 'fs/fish/header/100069.webp');
INSERT INTO `game_lists` VALUES ('390', 'AS', 'AS摇钱树捕鱼', '', '', '100070', '', '', 'fishing', '1388', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 16:59:58', '2023-03-05 22:55:26', '', null, 'fs/fish/web/100070.webp', 'fs/fish/wap/100070.webp', 'fs/fish/wap/100070.webp', '', 'fs/fish/header/100070.webp');
INSERT INTO `game_lists` VALUES ('391', 'AS', 'AS福神捕鱼', '', '', '100071', '', '', 'fishing', '1389', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 17:00:53', '2023-03-05 22:56:04', '', null, 'fs/fish/web/100071.webp', 'fs/fish/wap/100071.webp', 'fs/fish/wap/100071.webp', '', 'fs/fish/header/100071.webp');
INSERT INTO `game_lists` VALUES ('392', 'FTG', 'FTG龙宫宝藏', '', '', '248', '', '', 'fishing', '1390', '1', '1', '0', '1', '1', '1', '1', '1', '2023-02-28 17:02:06', '2023-02-28 19:16:50', '', null, 'fs/fish/web/248.webp', 'fs/fish/wap/248.webp', 'fs/fish/wap/248.webp', '', 'fs/fish/header/248.webp');
INSERT INTO `game_lists` VALUES ('393', 'FTG', 'FTG星海征战', '', '', '293', '', '', 'fishing', '1391', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 16:59:58', '2023-03-06 22:55:26', '', null, 'fs/fish/web/293.webp', 'fs/fish/wap/293.webp', 'fs/fish/wap/293.webp', '', 'fs/fish/header/293.webp');
INSERT INTO `game_lists` VALUES ('394', 'PA', 'PA捕鱼王2D', '', '', 'HM2D', '', '', 'fishing', '1392', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 17:00:53', '2023-03-06 22:56:04', '', null, 'fs/fish/web/hm2d.webp', 'fs/fish/wap/hm2d.webp', 'fs/fish/wap/hm2d.webp', '', 'fs/fish/header/hm2d.webp');
INSERT INTO `game_lists` VALUES ('395', 'PA', 'PA捕鱼王3D', '', '', 'HM3D', '', '', 'fishing', '1393', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 17:02:06', '2023-03-01 19:16:50', '', null, 'fs/fish/web/hm3d.webp', 'fs/fish/wap/hm3d.webp', 'fs/fish/wap/hm3d.webp', '', 'fs/fish/header/hm3d.webp');
INSERT INTO `game_lists` VALUES ('396', 'PA', 'PA捕鱼乐园', '', '', 'HMFP', '', '', 'fishing', '1394', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 16:59:58', '2023-03-07 22:55:26', '', null, 'fs/fish/web/hmfp.webp', 'fs/fish/wap/hmfp.webp', 'fs/fish/wap/hmfp.webp', '', 'fs/fish/header/hmfp.webp');
INSERT INTO `game_lists` VALUES ('397', 'PA', 'PA天际猎人', '', '', 'HMSH', '', '', 'fishing', '1395', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 17:00:53', '2023-03-07 22:56:04', '', null, 'fs/fish/web/hmsh.webp', 'fs/fish/wap/hmsh.webp', 'fs/fish/wap/hmsh.webp', '', 'fs/fish/header/hmsh.webp');
INSERT INTO `game_lists` VALUES ('398', 'PA', 'PA梦幻捕鱼', '', '', 'HMLD', '', '', 'fishing', '1396', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 16:59:58', '2023-03-06 22:55:26', '', null, 'fs/fish/web/hmld.webp', 'fs/fish/wap/hmld.webp', 'fs/fish/wap/hmld.webp', '', 'fs/fish/header/hmld.webp');
INSERT INTO `game_lists` VALUES ('399', 'PA', 'PA捕鱼大师', '', '', 'UH01', '', '', 'fishing', '1397', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 17:00:53', '2023-03-06 22:56:04', '', null, 'fs/fish/web/uh01.webp', 'fs/fish/wap/uh01.webp', 'fs/fish/wap/uh01.webp', '', 'fs/fish/header/uh01.webp');
INSERT INTO `game_lists` VALUES ('400', 'PP', 'PP极速糖果', '', '', 'vs20sugarrush', '', '', 'fishing', '1398', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-01 17:02:06', '2023-03-01 19:16:50', '', null, 'fs/fish/web/vs20sugarrush.webp', 'fs/fish/wap/vs20sugarrush.webp', 'fs/fish/wap/vs20sugarrush.webp', '', 'fs/fish/header/vs20sugarrush.webp');
INSERT INTO `game_lists` VALUES ('401', 'FST', 'FS体育', '', '', '', '', '', 'sport', '1399', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 16:59:58', '2023-03-07 22:55:26', '', null, 'fs/sport/web/fst.webp', 'fs/sport/wap/fst.webp', 'fs/sport/wap/fst.webp', '', 'fs/sport/header/fst.webp');
INSERT INTO `game_lists` VALUES ('402', 'FSQP', 'FS棋牌', '', '', '', '', '', 'joker', '1400', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 17:00:53', '2023-03-07 22:56:04', '', null, 'fs/joker/web/fsqp.webp', 'fs/joker/wap/fsqp.webp', 'fs/joker/wap/fsqp.webp', '', 'fs/joker/header/fsqp.webp');
INSERT INTO `game_lists` VALUES ('403', 'NW', '新世界', '', '', '', '', '', 'joker', '1401', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 17:02:06', '2023-03-02 19:16:50', '', null, 'fs/joker/web/nw.webp', 'fs/joker/wap/nw.webp', 'fs/joker/wap/nw.webp', '', 'fs/joker/header/nw.webp');
INSERT INTO `game_lists` VALUES ('404', 'AFB', 'AFB体育', '', '', '', '', '', 'sport', '1402', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 16:59:58', '2023-03-08 22:55:26', '', null, 'fs/sport/web/afb.webp', 'fs/sport/wap/afb.webp', 'fs/sport/wap/afb.webp', '', 'fs/sport/header/afb.webp');
INSERT INTO `game_lists` VALUES ('405', 'AFBG', 'AFB电子', '', '', 'MyGameLobby', '', '', 'concise', '1403', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 17:00:53', '2023-03-08 22:56:04', '', null, 'fs/game/web/afbg.webp', 'fs/game/wap/afbg.webp', 'fs/game/wap/afbg.webp', '', 'fs/game/header/afbg.webp');
INSERT INTO `game_lists` VALUES ('406', 'AFBL', 'AFB视讯', '', '', '', '', '', 'realbet', '1404', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 16:59:58', '2023-03-07 22:55:26', '', null, 'fs/live/web/afbl.webp', 'fs/live/wap/afbl.webp', 'fs/live/wap/afbl.webp', '', 'fs/live/header/afbl.webp');
INSERT INTO `game_lists` VALUES ('407', 'EEAI', 'AI视讯', '', '', '', '', '', 'realbet', '1405', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 17:00:53', '2023-03-07 22:56:04', '', null, 'fs/live/web/eeai.webp', 'fs/live/wap/eeai.webp', 'fs/live/wap/eeai.webp', '', 'fs/live/header/eeai.webp');
INSERT INTO `game_lists` VALUES ('408', 'FBLive', 'FB视讯', '', '', '', '', '', 'realbet', '1406', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-02 17:02:06', '2023-03-02 19:16:50', '', null, 'fs/live/web/fblive.webp', 'fs/live/wap/fblive.webp', 'fs/live/wap/fblive.webp', '', 'fs/live/header/fblive.webp');
INSERT INTO `game_lists` VALUES ('409', 'FTG', 'FTG', '', '', 'MyGameLobby', '', '', 'concise', '1407', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 16:59:58', '2023-03-08 22:55:26', '', null, 'fs/game/web/ftg.webp', 'fs/game/wap/ftg.webp', 'fs/game/wap/ftg.webp', '', 'fs/game/header/ftg.webp');
INSERT INTO `game_lists` VALUES ('410', 'G168', '168电子', '', '', 'MyGameLobby', '', '', 'concise', '1408', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 17:00:53', '2023-03-08 22:56:04', '', null, 'fs/game/web/g168.webp', 'fs/game/wap/g168.webp', 'fs/game/wap/g168.webp', '', 'fs/game/header/g168.webp');
INSERT INTO `game_lists` VALUES ('411', 'KYS', '开元棋牌', '', '', '', '', '', 'joker', '1409', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 17:02:06', '2023-03-03 19:16:50', '', null, 'fs/joker/web/kys.webp', 'fs/joker/wap/kys.webp', 'fs/joker/wap/kys.webp', '', 'fs/joker/header/kys.webp');
INSERT INTO `game_lists` VALUES ('412', 'Splus', 'S+电子', '', '', 'MyGameLobby', '', '', 'concise', '1410', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 16:59:58', '2023-03-09 22:55:26', '', null, 'fs/game/web/splus.webp', 'fs/game/wap/splus.webp', 'fs/game/wap/splus.webp', '', 'fs/game/header/splus.webp');
INSERT INTO `game_lists` VALUES ('413', 'RSG', 'RSG电子', '', '', 'MyGameLobby', '', '', 'concise', '1411', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 17:00:53', '2023-03-09 22:56:04', '', null, 'fs/game/web/rsg.webp', 'fs/game/wap/rsg.webp', 'fs/game/wap/rsg.webp', '', 'fs/game/header/rsg.webp');
INSERT INTO `game_lists` VALUES ('414', 'Joker', '小丑电子', '', '', 'MyGameLobby', '', '', 'concise', '1412', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 16:59:58', '2023-03-08 22:55:26', '', null, 'fs/game/web/joker.webp', 'fs/game/wap/joker.webp', 'fs/game/wap/joker.webp', '', 'fs/game/header/joker.webp');
INSERT INTO `game_lists` VALUES ('415', 'GP', 'DP电子', '', '', 'MyGameLobby', '', '', 'concise', '1413', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 17:00:53', '2023-03-08 22:56:04', '', null, 'fs/game/web/gp.webp', 'fs/game/wap/gp.webp', 'fs/game/wap/gp.webp', '', 'fs/game/header/gp.webp');
INSERT INTO `game_lists` VALUES ('416', 'CW', 'CW电子', '', '', 'MyGameLobby', '', '', 'concise', '1414', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-03 17:02:06', '2023-03-03 19:16:50', '', null, 'fs/game/web/cw.webp', 'fs/game/wap/cw.webp', 'fs/game/wap/cw.webp', '', 'fs/game/header/cw.webp');
INSERT INTO `game_lists` VALUES ('417', 'MGP', 'MGplus', '', '', 'MyGameLobby', '', '', 'concise', '1415', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 16:59:58', '2023-03-09 22:55:26', '', null, 'fs/game/web/mgp.webp', 'fs/game/wap/mgp.webp', 'fs/game/wap/mgp.webp', '', 'fs/game/header/mgp.webp');
INSERT INTO `game_lists` VALUES ('418', 'GG', '高登电子', '', '', 'MyGameLobby', '', '', 'concise', '1416', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 17:00:53', '2023-03-09 22:56:04', '', null, 'fs/game/web/gg.webp', 'fs/game/wap/gg.webp', 'fs/game/wap/gg.webp', '', 'fs/game/header/gg.webp');
INSERT INTO `game_lists` VALUES ('419', 'MINI', 'MINI', '', '', '', '', '', 'realbet', '1417', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 17:02:06', '2023-03-04 19:16:50', '', null, 'fs/live/web/mini.webp', 'fs/live/wap/mini.webp', 'fs/live/wap/mini.webp', '', 'fs/live/header/mini.webp');
INSERT INTO `game_lists` VALUES ('420', 'MINI', 'MINI', '', '', 'MyGameLobby', '', '', 'concise', '1418', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 16:59:58', '2023-03-10 22:55:26', '', null, 'fs/game/web/mini.webp', 'fs/game/wap/mini.webp', 'fs/game/wap/mini.webp', '', 'fs/game/header/mini.webp');
INSERT INTO `game_lists` VALUES ('421', 'PO', 'POPOK视讯', '', '', '', '', '', 'realbet', '1419', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 17:00:53', '2023-03-10 22:56:04', '', null, 'fs/live/web/po.webp', 'fs/live/wap/po.webp', 'fs/live/wap/po.webp', '', 'fs/live/header/po.webp');
INSERT INTO `game_lists` VALUES ('422', 'PO', 'POPOK电子', '', '', 'MyGameLobby', '', '', 'concise', '1420', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 16:59:58', '2023-03-09 22:55:26', '', null, 'fs/game/web/po.webp', 'fs/game/wap/po.webp', 'fs/game/wap/po.webp', '', 'fs/game/header/po.webp');
INSERT INTO `game_lists` VALUES ('423', 'CR', '真人', '', '', '', '', '', 'realbet', '1421', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 17:00:53', '2023-03-09 22:56:04', '', null, 'fs/live/web/cr.webp', 'fs/live/wap/cr.webp', 'fs/live/wap/cr.webp', '', 'fs/live/header/cr.webp');
INSERT INTO `game_lists` VALUES ('424', 'YGG', 'YGG电子', '', '', 'MyGameLobby', '', '', 'concise', '1422', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-04 17:02:06', '2023-03-04 19:16:50', '', null, 'fs/game/web/ygg.webp', 'fs/game/wap/ygg.webp', 'fs/game/wap/ygg.webp', '', 'fs/game/header/ygg.webp');
INSERT INTO `game_lists` VALUES ('425', 'PR', 'PR视讯', '', '', '', '', '', 'realbet', '1423', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 16:59:58', '2023-03-10 22:55:26', '', null, 'fs/live/web/pr.webp', 'fs/live/wap/pr.webp', 'fs/live/wap/pr.webp', '', 'fs/live/header/pr.webp');
INSERT INTO `game_lists` VALUES ('426', 'DIG', 'DIT体育', '', '', '', '', '', 'sport', '1424', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 17:00:53', '2023-03-10 22:56:04', '', null, 'fs/sport/web/dig.webp', 'fs/sport/wap/dig.webp', 'fs/sport/wap/dig.webp', '', 'fs/sport/header/dig.webp');
INSERT INTO `game_lists` VALUES ('427', 'DS88', 'DS88斗鸡', '', '', '', '', '', 'sport', '1425', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 17:02:06', '2023-03-05 19:16:50', '', null, 'fs/sport/web/ds88.webp', 'fs/sport/wap/ds88.webp', 'fs/sport/wap/ds88.webp', '', 'fs/sport/header/ds88.webp');
INSERT INTO `game_lists` VALUES ('428', 'JS', 'JOLLY体育', '', '', '', '', '', 'sport', '1426', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 16:59:58', '2023-03-11 22:55:26', '', null, 'fs/sport/web/js.webp', 'fs/sport/wap/js.webp', 'fs/sport/wap/js.webp', '', 'fs/sport/header/js.webp');
INSERT INTO `game_lists` VALUES ('429', 'PIN', '平博', '', '', '', '', '', 'sport', '1427', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 17:00:53', '2023-03-11 22:56:04', '', null, 'fs/sport/web/pin.webp', 'fs/sport/wap/pin.webp', 'fs/sport/wap/pin.webp', '', 'fs/sport/header/pin.webp');
INSERT INTO `game_lists` VALUES ('430', 'POLY', '保利体育', '', '', '', '', '', 'sport', '1428', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 16:59:58', '2023-03-10 22:55:26', '', null, 'fs/sport/web/poly.webp', 'fs/sport/wap/poly.webp', 'fs/sport/wap/poly.webp', '', 'fs/sport/header/poly.webp');
INSERT INTO `game_lists` VALUES ('431', 'W9', '9W体育', '', '', '', '', '', 'sport', '1429', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 17:00:53', '2023-03-10 22:56:04', '', null, 'fs/sport/web/w9.webp', 'fs/sport/wap/w9.webp', 'fs/sport/wap/w9.webp', '', 'fs/sport/header/w9.webp');
INSERT INTO `game_lists` VALUES ('432', 'SP', 'SPRIBE', '', '', 'MyGameLobby', '', '', 'concise', '1430', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-05 17:02:06', '2023-03-05 19:16:50', '', null, 'fs/game/web/sp.webp', 'fs/game/wap/sp.webp', 'fs/game/wap/sp.webp', '', 'fs/game/header/sp.webp');
INSERT INTO `game_lists` VALUES ('433', 'KP', 'KP棋牌', '', '', '', '', '', 'joker', '1431', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 16:59:58', '2023-03-11 22:55:26', '', null, 'fs/joker/web/kp.webp', 'fs/joker/wap/kp.webp', 'fs/joker/wap/kp.webp', '', 'fs/joker/header/kp.webp');
INSERT INTO `game_lists` VALUES ('434', 'TOO', 'TOO电子', '', '', 'MyGameLobby', '', '', 'concise', '1432', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 17:00:53', '2023-03-11 22:56:04', '', null, 'fs/game/web/too.webp', 'fs/game/wap/too.webp', 'fs/game/wap/too.webp', '', 'fs/game/header/too.webp');
INSERT INTO `game_lists` VALUES ('435', 'MP', 'MP棋牌', '', '', '', '', '', 'joker', '1433', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 17:02:06', '2023-03-06 19:16:50', '', null, 'fs/joker/web/mp.webp', 'fs/joker/wap/mp.webp', 'fs/joker/wap/mp.webp', '', 'fs/joker/header/mp.webp');
INSERT INTO `game_lists` VALUES ('436', 'MI', 'MINI电子', '', '', 'MyGameLobby', '', '', 'concise', '1434', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 16:59:58', '2023-03-12 22:55:26', '', null, 'fs/game/web/mi.webp', 'fs/game/wap/mi.webp', 'fs/game/wap/mi.webp', '', 'fs/game/header/mi.webp');
INSERT INTO `game_lists` VALUES ('437', 'BT', 'BT电子', '', '', 'MyGameLobby', '', '', 'concise', '1435', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 17:00:53', '2023-03-12 22:56:04', '', null, 'fs/game/web/bt.webp', 'fs/game/wap/bt.webp', 'fs/game/wap/bt.webp', '', 'fs/game/header/bt.webp');
INSERT INTO `game_lists` VALUES ('438', 'HP', 'HP彩票', '', '', '', '', '', 'lottery', '1436', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 16:59:58', '2023-03-11 22:55:26', '', null, 'fs/lottery/web/hp.webp', 'fs/lottery/wap/hp.webp', 'fs/lottery/wap/hp.webp', '', 'fs/lottery/header/hp.webp');
INSERT INTO `game_lists` VALUES ('439', 'i21', 'i21电子', '', '', 'MyGameLobby', '', '', 'concise', '1437', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 17:00:53', '2023-03-11 22:56:04', '', null, 'fs/game/web/i21.webp', 'fs/game/wap/i21.webp', 'fs/game/wap/i21.webp', '', 'fs/game/header/i21.webp');
INSERT INTO `game_lists` VALUES ('440', 'i21', 'i21视讯', '', '', '', '', '', 'realbet', '1438', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-06 17:02:06', '2023-03-06 19:16:50', '', null, 'fs/live/web/i21.webp', 'fs/live/wap/i21.webp', 'fs/live/wap/i21.webp', '', 'fs/live/header/i21.webp');
INSERT INTO `game_lists` VALUES ('441', 'IG', 'IG彩票', '', '', '', '', '', 'lottery', '1439', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 16:59:58', '2023-03-12 22:55:26', '', null, 'fs/lottery/web/ig.webp', 'fs/lottery/wap/ig.webp', 'fs/lottery/wap/ig.webp', '', 'fs/lottery/header/ig.webp');
INSERT INTO `game_lists` VALUES ('442', 'BET', 'betby', '', '', '', '', '', 'sport', '1440', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 17:00:53', '2023-03-12 22:56:04', '', null, 'fs/sport/web/bet.webp', 'fs/sport/wap/bet.webp', 'fs/sport/wap/bet.webp', '', 'fs/sport/header/bet.webp');
INSERT INTO `game_lists` VALUES ('443', 'BNG', 'BNG电子', '', '', 'MyGameLobby', '', '', 'concise', '1441', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 17:02:06', '2023-03-07 19:16:50', '', null, 'fs/game/web/bng.webp', 'fs/game/wap/bng.webp', 'fs/game/wap/bng.webp', '', 'fs/game/header/bng.webp');
INSERT INTO `game_lists` VALUES ('444', 'RG', 'RG彩票', '', '', '', '', '', 'lottery', '1442', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 16:59:58', '2023-03-13 22:55:26', '', null, 'fs/lottery/web/rg.webp', 'fs/lottery/wap/rg.webp', 'fs/lottery/wap/rg.webp', '', 'fs/lottery/header/rg.webp');
INSERT INTO `game_lists` VALUES ('445', 'RG', 'RG游戏', '', '', 'MyGameLobby', '', '', 'concise', '1443', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 17:00:53', '2023-03-13 22:56:04', '', null, 'fs/game/web/rg.webp', 'fs/game/wap/rg.webp', 'fs/game/wap/rg.webp', '', 'fs/game/header/rg.webp');
INSERT INTO `game_lists` VALUES ('446', 'RC', 'RC富博', '', '', '', '', '', 'realbet', '1444', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 16:59:58', '2023-03-12 22:55:26', '', null, 'fs/live/web/rc.webp', 'fs/live/wap/rc.webp', 'fs/live/wap/rc.webp', '', 'fs/live/header/rc.webp');
INSERT INTO `game_lists` VALUES ('447', 'NEWBB', '新BB体育', '', '', '', '', '', 'sport', '1445', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 17:00:53', '2023-03-12 22:56:04', '', null, 'fs/sport/web/newbb.webp', 'fs/sport/wap/newbb.webp', 'fs/sport/wap/newbb.webp', '', 'fs/sport/header/newbb.webp');
INSERT INTO `game_lists` VALUES ('448', 'XJ2', '皇冠体育', '', '', '', '', '', 'sport', '1446', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-07 17:02:06', '2023-03-07 19:16:50', '', null, 'fs/sport/web/xj2.webp', 'fs/sport/wap/xj2.webp', 'fs/sport/wap/xj2.webp', '', 'fs/sport/header/xj2.webp');
INSERT INTO `game_lists` VALUES ('449', 'AG', 'AG', '', '', '', '', '', 'realbet', '1447', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 16:59:58', '2023-03-13 22:55:26', '', null, 'fs/live/web/ag.webp', 'fs/live/wap/ag.webp', 'fs/live/wap/ag.webp', '', 'fs/live/header/ag.webp');
INSERT INTO `game_lists` VALUES ('450', 'AG', 'AG', '', '', 'MyGameLobby', '', '', 'concise', '1448', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 17:00:53', '2023-03-13 22:56:04', '', null, 'fs/game/web/ag.webp', 'fs/game/wap/ag.webp', 'fs/game/wap/ag.webp', '', 'fs/game/header/ag.webp');
INSERT INTO `game_lists` VALUES ('451', 'CT', 'CT视讯', '', '', '', '', '', 'realbet', '1449', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 17:02:06', '2023-03-08 19:16:50', '', null, 'fs/live/web/ct.webp', 'fs/live/wap/ct.webp', 'fs/live/wap/ct.webp', '', 'fs/live/header/ct.webp');
INSERT INTO `game_lists` VALUES ('452', 'DG', 'DG视讯', '', '', '', '', '', 'realbet', '1450', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 16:59:58', '2023-03-14 22:55:26', '', null, 'fs/live/web/dg.webp', 'fs/live/wap/dg.webp', 'fs/live/wap/dg.webp', '', 'fs/live/header/dg.webp');
INSERT INTO `game_lists` VALUES ('453', 'EZ', 'EZ视讯', '', '', '', '', '', 'realbet', '1451', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 17:00:53', '2023-03-14 22:56:04', '', null, 'fs/live/web/ez.webp', 'fs/live/wap/ez.webp', 'fs/live/wap/ez.webp', '', 'fs/live/header/ez.webp');
INSERT INTO `game_lists` VALUES ('454', 'HG', 'HG视讯', '', '', '', '', '', 'realbet', '1452', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 16:59:58', '2023-03-13 22:55:26', '', null, 'fs/live/web/hg.webp', 'fs/live/wap/hg.webp', 'fs/live/wap/hg.webp', '', 'fs/live/header/hg.webp');
INSERT INTO `game_lists` VALUES ('455', 'LS', 'LS视讯', '', '', '', '', '', 'realbet', '1453', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 17:00:53', '2023-03-13 22:56:04', '', null, 'fs/live/web/ls.webp', 'fs/live/wap/ls.webp', 'fs/live/wap/ls.webp', '', 'fs/live/header/ls.webp');
INSERT INTO `game_lists` VALUES ('456', 'MINI', 'MINI视讯', '', '', '', '', '', 'realbet', '1454', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-08 17:02:06', '2023-03-08 19:16:50', '', null, 'fs/live/web/mini.webp', 'fs/live/wap/mini.webp', 'fs/live/wap/mini.webp', '', 'fs/live/header/mini.webp');
INSERT INTO `game_lists` VALUES ('457', 'SA', 'SA电子', '', '', 'MyGameLobby', '', '', 'concise', '1455', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 16:59:58', '2023-03-14 22:55:26', '', null, 'fs/game/web/sa.webp', 'fs/game/wap/sa.webp', 'fs/game/wap/sa.webp', '', 'fs/game/header/sa.webp');
INSERT INTO `game_lists` VALUES ('458', 'SA', 'SA视讯', '', '', '', '', '', 'realbet', '1456', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 17:00:53', '2023-03-14 22:56:04', '', null, 'fs/live/web/sa.webp', 'fs/live/wap/sa.webp', 'fs/live/wap/sa.webp', '', 'fs/live/header/sa.webp');
INSERT INTO `game_lists` VALUES ('459', 'SSG', 'SSG视讯', '', '', '', '', '', 'realbet', '1457', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 17:02:06', '2023-03-09 19:16:50', '', null, 'fs/live/web/ssg.webp', 'fs/live/wap/ssg.webp', 'fs/live/wap/ssg.webp', '', 'fs/live/header/ssg.webp');
INSERT INTO `game_lists` VALUES ('460', 'T9', 'T9视讯', '', '', '', '', '', 'realbet', '1458', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 16:59:58', '2023-03-15 22:55:26', '', null, 'fs/live/web/t9.webp', 'fs/live/wap/t9.webp', 'fs/live/wap/t9.webp', '', 'fs/live/header/t9.webp');
INSERT INTO `game_lists` VALUES ('461', 'VIVO', 'Vivo视讯', '', '', '', '', '', 'realbet', '1459', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 17:00:53', '2023-03-15 22:56:04', '', null, 'fs/live/web/vivo.webp', 'fs/live/wap/vivo.webp', 'fs/live/wap/vivo.webp', '', 'fs/live/header/vivo.webp');
INSERT INTO `game_lists` VALUES ('462', 'WC', 'WC视讯', '', '', '', '', '', 'realbet', '1460', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 16:59:58', '2023-03-14 22:55:26', '', null, 'fs/live/web/wc.webp', 'fs/live/wap/wc.webp', 'fs/live/wap/wc.webp', '', 'fs/live/header/wc.webp');
INSERT INTO `game_lists` VALUES ('463', 'WI', 'WI视讯', '', '', '', '', '', 'realbet', '1461', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 17:00:53', '2023-03-14 22:56:04', '', null, 'fs/live/web/wi.webp', 'fs/live/wap/wi.webp', 'fs/live/wap/wi.webp', '', 'fs/live/header/wi.webp');
INSERT INTO `game_lists` VALUES ('464', 'XGD', 'GD视讯', '', '', '', '', '', 'realbet', '1462', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-09 17:02:06', '2023-03-09 19:16:50', '', null, 'fs/live/web/xgd.webp', 'fs/live/wap/xgd.webp', 'fs/live/wap/xgd.webp', '', 'fs/live/header/xgd.webp');
INSERT INTO `game_lists` VALUES ('465', 'V8', 'V8棋牌', '', '', '', '', '', 'joker', '1463', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 16:59:58', '2023-03-15 22:55:26', '', null, 'fs/joker/web/v8.webp', 'fs/joker/wap/v8.webp', 'fs/joker/wap/v8.webp', '', 'fs/joker/header/v8.webp');
INSERT INTO `game_lists` VALUES ('466', 'AE', ' 阿米巴 电子', '', '', 'MyGameLobby', '', '', 'concise', '1464', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 17:00:53', '2023-03-15 22:56:04', '', null, 'fs/game/web/ae.webp', 'fs/game/wap/ae.webp', 'fs/game/wap/ae.webp', '', 'fs/game/header/ae.webp');
INSERT INTO `game_lists` VALUES ('467', 'AIG', 'AIG电子', '', '', 'MyGameLobby', '', '', 'concise', '1465', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 17:02:06', '2023-03-10 19:16:50', '', null, 'fs/game/web/aig.webp', 'fs/game/wap/aig.webp', 'fs/game/wap/aig.webp', '', 'fs/game/header/aig.webp');
INSERT INTO `game_lists` VALUES ('468', 'AL', 'AL电子', '', '', 'MyGameLobby', '', '', 'concise', '1466', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 16:59:58', '2023-03-16 22:55:26', '', null, 'fs/game/web/al.webp', 'fs/game/wap/al.webp', 'fs/game/wap/al.webp', '', 'fs/game/header/al.webp');
INSERT INTO `game_lists` VALUES ('469', 'AMB', 'AMB电子', '', '', 'MyGameLobby', '', '', 'concise', '1467', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 17:00:53', '2023-03-16 22:56:04', '', null, 'fs/game/web/amb.webp', 'fs/game/wap/amb.webp', 'fs/game/wap/amb.webp', '', 'fs/game/header/amb.webp');
INSERT INTO `game_lists` VALUES ('470', 'AMI', 'AMI电子', '', '', 'MyGameLobby', '', '', 'concise', '1468', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 16:59:58', '2023-03-15 22:55:26', '', null, 'fs/game/web/ami.webp', 'fs/game/wap/ami.webp', 'fs/game/wap/ami.webp', '', 'fs/game/header/ami.webp');
INSERT INTO `game_lists` VALUES ('471', 'AP', 'AP电子', '', '', '', '', '', 'sport', '1469', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 17:00:53', '2023-03-15 22:56:04', '', null, 'fs/sport/web/ap.webp', 'fs/sport/wap/ap.webp', 'fs/sport/wap/ap.webp', '', 'fs/sport/header/ap.webp');
INSERT INTO `game_lists` VALUES ('472', 'AP', 'AP电子', '', '', 'MyGameLobby', '', '', 'concise', '1470', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-10 17:02:06', '2023-03-10 19:16:50', '', null, 'fs/game/web/ap.webp', 'fs/game/wap/ap.webp', 'fs/game/wap/ap.webp', '', 'fs/game/header/ap.webp');
INSERT INTO `game_lists` VALUES ('473', 'APG', 'APG电子', '', '', 'MyGameLobby', '', '', 'concise', '1471', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 16:59:58', '2023-03-16 22:55:26', '', null, 'fs/game/web/apg.webp', 'fs/game/wap/apg.webp', 'fs/game/wap/apg.webp', '', 'fs/game/header/apg.webp');
INSERT INTO `game_lists` VALUES ('474', 'ATG', 'ATG电子', '', '', 'MyGameLobby', '', '', 'concise', '1472', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 17:00:53', '2023-03-16 22:56:04', '', null, 'fs/game/web/atg.webp', 'fs/game/wap/atg.webp', 'fs/game/wap/atg.webp', '', 'fs/game/header/atg.webp');
INSERT INTO `game_lists` VALUES ('475', 'BET1', '1bet电子', '', '', 'MyGameLobby', '', '', 'concise', '1473', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 17:02:06', '2023-03-11 19:16:50', '', null, 'fs/game/web/bet1.webp', 'fs/game/wap/bet1.webp', 'fs/game/wap/bet1.webp', '', 'fs/game/header/bet1.webp');
INSERT INTO `game_lists` VALUES ('476', 'BGA', 'BGA电子', '', '', 'MyGameLobby', '', '', 'concise', '1474', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 16:59:58', '2023-03-17 22:55:26', '', null, 'fs/game/web/bga.webp', 'fs/game/wap/bga.webp', 'fs/game/wap/bga.webp', '', 'fs/game/header/bga.webp');
INSERT INTO `game_lists` VALUES ('477', 'BLUE', 'blue电子', '', '', 'MyGameLobby', '', '', 'concise', '1475', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 17:00:53', '2023-03-17 22:56:04', '', null, 'fs/game/web/blue.webp', 'fs/game/wap/blue.webp', 'fs/game/wap/blue.webp', '', 'fs/game/header/blue.webp');
INSERT INTO `game_lists` VALUES ('478', 'BS', 'BS电子', '', '', 'MyGameLobby', '', '', 'concise', '1476', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 16:59:58', '2023-03-16 22:55:26', '', null, 'fs/game/web/bs.webp', 'fs/game/wap/bs.webp', 'fs/game/wap/bs.webp', '', 'fs/game/header/bs.webp');
INSERT INTO `game_lists` VALUES ('479', 'BTI', 'BTI体育', '', '', '', '', '', 'sport', '1477', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 17:00:53', '2023-03-16 22:56:04', '', null, 'fs/sport/web/bti.webp', 'fs/sport/wap/bti.webp', 'fs/sport/wap/bti.webp', '', 'fs/sport/header/bti.webp');
INSERT INTO `game_lists` VALUES ('480', 'BTI', 'BTI电子', '', '', 'MyGameLobby', '', '', 'concise', '1478', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-11 17:02:06', '2023-03-11 19:16:50', '', null, 'fs/game/web/bti.webp', 'fs/game/wap/bti.webp', 'fs/game/wap/bti.webp', '', 'fs/game/header/bti.webp');
INSERT INTO `game_lists` VALUES ('481', 'CG', 'CG电子', '', '', 'MyGameLobby', '', '', 'concise', '1479', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 16:59:58', '2023-03-17 22:55:26', '', null, 'fs/game/web/cg.webp', 'fs/game/wap/cg.webp', 'fs/game/wap/cg.webp', '', 'fs/game/header/cg.webp');
INSERT INTO `game_lists` VALUES ('482', 'CW', 'CW电子', '', '', 'MyGameLobby', '', '', 'concise', '1480', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 17:00:53', '2023-03-17 22:56:04', '', null, 'fs/game/web/cw.webp', 'fs/game/wap/cw.webp', 'fs/game/wap/cw.webp', '', 'fs/game/header/cw.webp');
INSERT INTO `game_lists` VALUES ('483', 'DGS', 'DG电子', '', '', 'MyGameLobby', '', '', 'concise', '1481', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 17:02:06', '2023-03-12 19:16:50', '', null, 'fs/game/web/dgs.webp', 'fs/game/wap/dgs.webp', 'fs/game/wap/dgs.webp', '', 'fs/game/header/dgs.webp');
INSERT INTO `game_lists` VALUES ('484', 'EP', 'EVO电子', '', '', 'MyGameLobby', '', '', 'concise', '1482', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 16:59:58', '2023-03-18 22:55:26', '', null, 'fs/game/web/ep.webp', 'fs/game/wap/ep.webp', 'fs/game/wap/ep.webp', '', 'fs/game/header/ep.webp');
INSERT INTO `game_lists` VALUES ('485', 'EPIC', 'EPIC电子', '', '', 'MyGameLobby', '', '', 'concise', '1483', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 17:00:53', '2023-03-18 22:56:04', '', null, 'fs/game/web/epic.webp', 'fs/game/wap/epic.webp', 'fs/game/wap/epic.webp', '', 'fs/game/header/epic.webp');
INSERT INTO `game_lists` VALUES ('486', 'FK', 'FunKY电子', '', '', 'MyGameLobby', '', '', 'concise', '1484', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 16:59:58', '2023-03-17 22:55:26', '', null, 'fs/game/web/fk.webp', 'fs/game/wap/fk.webp', 'fs/game/wap/fk.webp', '', 'fs/game/header/fk.webp');
INSERT INTO `game_lists` VALUES ('487', 'G759', '759电子', '', '', 'MyGameLobby', '', '', 'concise', '1485', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 17:00:53', '2023-03-17 22:56:04', '', null, 'fs/game/web/g759.webp', 'fs/game/wap/g759.webp', 'fs/game/wap/g759.webp', '', 'fs/game/header/g759.webp');
INSERT INTO `game_lists` VALUES ('488', 'GA', 'GA电子', '', '', 'MyGameLobby', '', '', 'concise', '1486', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-12 17:02:06', '2023-03-12 19:16:50', '', null, 'fs/game/web/ga.webp', 'fs/game/wap/ga.webp', 'fs/game/wap/ga.webp', '', 'fs/game/header/ga.webp');
INSERT INTO `game_lists` VALUES ('489', 'GEN', 'GEN电子', '', '', 'MyGameLobby', '', '', 'concise', '1487', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 16:59:58', '2023-03-18 22:55:26', '', null, 'fs/game/web/gen.webp', 'fs/game/wap/gen.webp', 'fs/game/wap/gen.webp', '', 'fs/game/header/gen.webp');
INSERT INTO `game_lists` VALUES ('490', 'GFG', 'GFG电子', '', '', 'MyGameLobby', '', '', 'concise', '1488', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 17:00:53', '2023-03-18 22:56:04', '', null, 'fs/game/web/gfg.webp', 'fs/game/wap/gfg.webp', 'fs/game/wap/gfg.webp', '', 'fs/game/header/gfg.webp');
INSERT INTO `game_lists` VALUES ('491', 'GPI', 'GPI电子', '', '', 'MyGameLobby', '', '', 'concise', '1489', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 17:02:06', '2023-03-13 19:16:50', '', null, 'fs/game/web/gpi.webp', 'fs/game/wap/gpi.webp', 'fs/game/wap/gpi.webp', '', 'fs/game/header/gpi.webp');
INSERT INTO `game_lists` VALUES ('492', 'IMN', 'imn迷你电子', '', '', 'MyGameLobby', '', '', 'concise', '1490', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 16:59:58', '2023-03-19 22:55:26', '', null, 'fs/game/web/imn.webp', 'fs/game/wap/imn.webp', 'fs/game/wap/imn.webp', '', 'fs/game/header/imn.webp');
INSERT INTO `game_lists` VALUES ('493', 'ISB', 'ISB电子', '', '', 'MyGameLobby', '', '', 'concise', '1491', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 17:00:53', '2023-03-19 22:56:04', '', null, 'fs/game/web/isb.webp', 'fs/game/wap/isb.webp', 'fs/game/wap/isb.webp', '', 'fs/game/header/isb.webp');
INSERT INTO `game_lists` VALUES ('494', 'J2', '2J电子', '', '', 'MyGameLobby', '', '', 'concise', '1492', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 16:59:58', '2023-03-18 22:55:26', '', null, 'fs/game/web/j2.webp', 'fs/game/wap/j2.webp', 'fs/game/wap/j2.webp', '', 'fs/game/header/j2.webp');
INSERT INTO `game_lists` VALUES ('495', 'Joker', 'Joker电子', '', '', 'MyGameLobby', '', '', 'concise', '1493', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 17:00:53', '2023-03-18 22:56:04', '', null, 'fs/game/web/joker.webp', 'fs/game/wap/joker.webp', 'fs/game/wap/joker.webp', '', 'fs/game/header/joker.webp');
INSERT INTO `game_lists` VALUES ('496', 'KISS', 'KISS电子', '', '', 'MyGameLobby', '', '', 'concise', '1494', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-13 17:02:06', '2023-03-13 19:16:50', '', null, 'fs/game/web/kiss.webp', 'fs/game/wap/kiss.webp', 'fs/game/wap/kiss.webp', '', 'fs/game/header/kiss.webp');
INSERT INTO `game_lists` VALUES ('497', 'LGD', 'LGD电子', '', '', 'MyGameLobby', '', '', 'concise', '1495', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 16:59:58', '2023-03-19 22:55:26', '', null, 'fs/game/web/lgd.webp', 'fs/game/wap/lgd.webp', 'fs/game/wap/lgd.webp', '', 'fs/game/header/lgd.webp');
INSERT INTO `game_lists` VALUES ('498', 'LKG', 'LKG电子', '', '', 'MyGameLobby', '', '', 'concise', '1496', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 17:00:53', '2023-03-19 22:56:04', '', null, 'fs/game/web/lkg.webp', 'fs/game/wap/lkg.webp', 'fs/game/wap/lkg.webp', '', 'fs/game/header/lkg.webp');
INSERT INTO `game_lists` VALUES ('499', 'MC', 'mc电子', '', '', 'MyGameLobby', '', '', 'concise', '1497', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 17:02:06', '2023-03-14 19:16:50', '', null, 'fs/game/web/mc.webp', 'fs/game/wap/mc.webp', 'fs/game/wap/mc.webp', '', 'fs/game/header/mc.webp');
INSERT INTO `game_lists` VALUES ('500', 'MEGA', 'MEGA电子', '', '', 'MyGameLobby', '', '', 'concise', '1498', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 16:59:58', '2023-03-20 22:55:26', '', null, 'fs/game/web/mega.webp', 'fs/game/wap/mega.webp', 'fs/game/wap/mega.webp', '', 'fs/game/header/mega.webp');
INSERT INTO `game_lists` VALUES ('501', 'MRS', 'MRS电子', '', '', 'MyGameLobby', '', '', 'concise', '1499', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 17:00:53', '2023-03-20 22:56:04', '', null, 'fs/game/web/mrs.webp', 'fs/game/wap/mrs.webp', 'fs/game/wap/mrs.webp', '', 'fs/game/header/mrs.webp');
INSERT INTO `game_lists` VALUES ('502', 'NAGA', 'NAGA电子', '', '', 'MyGameLobby', '', '', 'concise', '1500', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 16:59:58', '2023-03-19 22:55:26', '', null, 'fs/game/web/naga.webp', 'fs/game/wap/naga.webp', 'fs/game/wap/naga.webp', '', 'fs/game/header/naga.webp');
INSERT INTO `game_lists` VALUES ('503', 'ON', 'NO电子', '', '', 'MyGameLobby', '', '', 'concise', '1501', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 17:00:53', '2023-03-19 22:56:04', '', null, 'fs/game/web/on.webp', 'fs/game/wap/on.webp', 'fs/game/wap/on.webp', '', 'fs/game/header/on.webp');
INSERT INTO `game_lists` VALUES ('504', 'ON', 'NO体育', '', '', '', '', '', 'sport', '1502', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-14 17:02:06', '2023-03-14 19:16:50', '', null, 'fs/sport/web/on.webp', 'fs/sport/wap/on.webp', 'fs/sport/wap/on.webp', '', 'fs/sport/header/on.webp');
INSERT INTO `game_lists` VALUES ('505', 'ON', 'NO视讯', '', '', '', '', '', 'realbet', '1503', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 16:59:58', '2023-03-20 22:55:26', '', null, 'fs/live/web/on.webp', 'fs/live/wap/on.webp', 'fs/live/wap/on.webp', '', 'fs/live/header/on.webp');
INSERT INTO `game_lists` VALUES ('506', 'PE', 'PE电子', '', '', 'MyGameLobby', '', '', 'concise', '1504', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 17:00:53', '2023-03-20 22:56:04', '', null, 'fs/game/web/pe.webp', 'fs/game/wap/pe.webp', 'fs/game/wap/pe.webp', '', 'fs/game/header/pe.webp');
INSERT INTO `game_lists` VALUES ('507', 'PNG', 'PNG电子', '', '', 'MyGameLobby', '', '', 'concise', '1505', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 17:02:06', '2023-03-15 19:16:50', '', null, 'fs/game/web/png.webp', 'fs/game/wap/png.webp', 'fs/game/wap/png.webp', '', 'fs/game/header/png.webp');
INSERT INTO `game_lists` VALUES ('508', 'QS', 'QS电子', '', '', 'MyGameLobby', '', '', 'concise', '1506', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 16:59:58', '2023-03-21 22:55:26', '', null, 'fs/game/web/qs.webp', 'fs/game/wap/qs.webp', 'fs/game/wap/qs.webp', '', 'fs/game/header/qs.webp');
INSERT INTO `game_lists` VALUES ('509', 'RSG', 'RSG电子', '', '', 'MyGameLobby', '', '', 'concise', '1507', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 17:00:53', '2023-03-21 22:56:04', '', null, 'fs/game/web/rsg.webp', 'fs/game/wap/rsg.webp', 'fs/game/wap/rsg.webp', '', 'fs/game/header/rsg.webp');
INSERT INTO `game_lists` VALUES ('510', 'RTG', 'RTG电子', '', '', 'MyGameLobby', '', '', 'concise', '1508', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 16:59:58', '2023-03-20 22:55:26', '', null, 'fs/game/web/rtg.webp', 'fs/game/wap/rtg.webp', 'fs/game/wap/rtg.webp', '', 'fs/game/header/rtg.webp');
INSERT INTO `game_lists` VALUES ('511', 'SIM', 'SIM电子', '', '', 'MyGameLobby', '', '', 'concise', '1509', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 17:00:53', '2023-03-20 22:56:04', '', null, 'fs/game/web/sim.webp', 'fs/game/wap/sim.webp', 'fs/game/wap/sim.webp', '', 'fs/game/header/sim.webp');
INSERT INTO `game_lists` VALUES ('512', 'SPIN', 'SPIN电子', '', '', 'MyGameLobby', '', '', 'concise', '1510', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-15 17:02:06', '2023-03-15 19:16:50', '', null, 'fs/game/web/spin.webp', 'fs/game/wap/spin.webp', 'fs/game/wap/spin.webp', '', 'fs/game/header/spin.webp');
INSERT INTO `game_lists` VALUES ('513', 'T1', 'T1区块链', '', '', 'MyGameLobby', '', '', 'concise', '1511', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 16:59:58', '2023-03-21 22:55:26', '', null, 'fs/game/web/t1.webp', 'fs/game/wap/t1.webp', 'fs/game/wap/t1.webp', '', 'fs/game/header/t1.webp');
INSERT INTO `game_lists` VALUES ('514', 'TADA', 'TADA电子', '', '', 'MyGameLobby', '', '', 'concise', '1512', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 17:00:53', '2023-03-21 22:56:04', '', null, 'fs/game/web/tada.webp', 'fs/game/wap/tada.webp', 'fs/game/wap/tada.webp', '', 'fs/game/header/tada.webp');
INSERT INTO `game_lists` VALUES ('515', 'TTG', 'TTG电子', '', '', 'MyGameLobby', '', '', 'concise', '1513', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 17:02:06', '2023-03-16 19:16:50', '', null, 'fs/game/web/ttg.webp', 'fs/game/wap/ttg.webp', 'fs/game/wap/ttg.webp', '', 'fs/game/header/ttg.webp');
INSERT INTO `game_lists` VALUES ('516', 'VP', 'VP电子', '', '', 'MyGameLobby', '', '', 'concise', '1514', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-17 16:59:58', '2023-03-22 22:55:26', '', null, 'fs/game/web/vp.webp', 'fs/game/wap/vp.webp', 'fs/game/wap/vp.webp', '', 'fs/game/header/vp.webp');
INSERT INTO `game_lists` VALUES ('517', 'WLG', 'WLG电子', '', '', 'MyGameLobby', '', '', 'concise', '1515', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-17 17:00:53', '2023-03-22 22:56:04', '', null, 'fs/game/web/wlg.webp', 'fs/game/wap/wlg.webp', 'fs/game/wap/wlg.webp', '', 'fs/game/header/wlg.webp');
INSERT INTO `game_lists` VALUES ('518', 'WMS', 'WMS电子', '', '', 'MyGameLobby', '', '', 'concise', '1516', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 16:59:58', '2023-03-21 22:55:26', '', null, 'fs/game/web/wms.webp', 'fs/game/wap/wms.webp', 'fs/game/wap/wms.webp', '', 'fs/game/header/wms.webp');
INSERT INTO `game_lists` VALUES ('519', 'YGR', 'ygr电子', '', '', 'MyGameLobby', '', '', 'concise', '1517', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 17:00:53', '2023-03-21 22:56:04', '', null, 'fs/game/web/ygr.webp', 'fs/game/wap/ygr.webp', 'fs/game/wap/ygr.webp', '', 'fs/game/header/ygr.webp');
INSERT INTO `game_lists` VALUES ('520', 'ZP', 'ZP电子', '', '', 'MyGameLobby', '', '', 'concise', '1518', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-16 17:02:06', '2023-03-16 19:16:50', '', null, 'fs/game/web/zp.webp', 'fs/game/wap/zp.webp', 'fs/game/wap/zp.webp', '', 'fs/game/header/zp.webp');
INSERT INTO `game_lists` VALUES ('521', 'CMD', 'CMD体育', '', '', null, '', '', 'sport', '1519', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-17 16:59:58', '2023-03-22 22:55:26', '', null, 'fs/sport/web/cmd.webp', 'fs/sport/wap/cmd.webp', 'fs/sport/wap/cmd.webp', '', 'fs/sport/header/cmd.webp');
INSERT INTO `game_lists` VALUES ('522', 'UG', 'UG体育', '', '', null, '', '', 'sport', '1520', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-17 17:00:53', '2023-03-22 22:56:04', '', null, 'fs/sport/web/ug.webp', 'fs/sport/wap/ug.webp', 'fs/sport/wap/ug.webp', '', 'fs/sport/header/ug.webp');
INSERT INTO `game_lists` VALUES ('523', 'GR', 'GR棋牌', '', '', null, '', '', 'joker', '1521', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-17 17:02:06', '2023-03-17 19:16:50', '', null, 'fs/joker/web/gr.webp', 'fs/joker/wap/gr.webp', 'fs/joker/wap/gr.webp', '', 'fs/joker/header/gr.webp');
INSERT INTO `game_lists` VALUES ('524', 'HLQP', '欢乐棋牌', '', '', null, '', '', 'joker', '1522', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-18 16:59:58', '2023-03-23 22:55:26', '', null, 'fs/joker/web/hlqp.webp', 'fs/joker/wap/hlqp.webp', 'fs/joker/wap/hlqp.webp', '', 'fs/joker/header/hlqp.webp');
INSERT INTO `game_lists` VALUES ('525', 'TC', 'TC彩票', '', '', null, '', '', 'lottery', '1523', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-18 17:00:53', '2023-03-23 22:56:04', '', null, 'fs/lottery/web/tc.webp', 'fs/lottery/wap/tc.webp', 'fs/lottery/wap/tc.webp', '', 'fs/lottery/header/tc.webp');
INSERT INTO `game_lists` VALUES ('526', 'SC', '世彩彩票', null, null, null, null, null, 'lottery', '1524', '1', '1', '0', '1', '1', '1', '1', '1', '2023-03-18 17:00:53', '2023-03-23 22:56:04', null, null, 'fs/lottery/web/sc.webp', 'fs/lottery/wap/sc.webp', 'fs/lottery/wap/sc.webp', null, 'fs/lottery/header/sc.webp');

-- ----------------------------
-- Table structure for game_lists_app
-- ----------------------------
DROP TABLE IF EXISTS `game_lists_app`;
CREATE TABLE `game_lists_app` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台名称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏名称',
  `name_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戏英文名称',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词',
  `game_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_title_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类id',
  `order_by` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` int(11) NOT NULL DEFAULT '0' COMMENT '1热门游戏 0不是',
  `app_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'app状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of game_lists_app
-- ----------------------------
INSERT INTO `game_lists_app` VALUES ('707', 'LEG', '德州扑克', null, null, '620', null, null, 'joker', '99', '0', '1', '2022-12-06 22:14:05', '2022-12-07 00:04:03', 'images/686166e2358841cfacbb9c5c35985684.png', null);
INSERT INTO `game_lists_app` VALUES ('708', 'LEG', '二八杠', null, null, '720', null, null, 'joker', '99', '0', '1', '2022-12-06 22:14:47', '2022-12-06 22:14:47', 'images/39d4b3ed82355a3a16e9b36fcc32655b.png', null);
INSERT INTO `game_lists_app` VALUES ('709', 'LEG', '抢庄牛牛', null, null, '830', null, null, 'joker', '99', '0', '1', '2022-12-06 22:15:25', '2022-12-06 22:15:25', 'images/bbfedc6322982997574a0b119f56d171.png', null);
INSERT INTO `game_lists_app` VALUES ('710', 'LEG', '扎金花', null, null, '220', null, null, 'joker', '99', '0', '1', '2022-12-06 22:16:07', '2022-12-06 22:16:07', 'images/af768ffc81d504c18b69322264735cdd.png', null);
INSERT INTO `game_lists_app` VALUES ('711', 'LEG', '三公', null, null, '860', null, null, 'joker', '99', '0', '1', '2022-12-06 22:16:32', '2022-12-06 22:16:32', 'images/d3b3518d80efead4f713c7564396cece.png', null);
INSERT INTO `game_lists_app` VALUES ('712', 'LEG', '21点', null, null, '600', null, null, 'joker', '99', '0', '1', '2022-12-06 22:20:35', '2022-12-06 22:20:35', 'images/ab732996baf7d8b8cc2cf5065ffd85d3.png', null);
INSERT INTO `game_lists_app` VALUES ('713', 'LEG', '极速扎金花', null, null, '230', null, null, 'joker', '99', '0', '1', '2022-12-06 22:49:07', '2022-12-06 22:49:07', 'images/61eb363013fc55a6f64530bfffa16c79.png', null);
INSERT INTO `game_lists_app` VALUES ('714', 'LEG', '通比牛牛', null, null, '870', null, null, 'joker', '99', '0', '1', '2022-12-06 22:49:28', '2022-12-06 22:49:28', 'images/7a8e91a7a9e5d8020ee06b8ff6524536.png', null);
INSERT INTO `game_lists_app` VALUES ('715', 'LEG', '抢庄牌九', null, null, '730', null, null, 'joker', '99', '0', '1', '2022-12-06 22:49:52', '2022-12-06 22:49:52', 'images/2a7a297666aa38ee7b78beae78f78337.png', null);
INSERT INTO `game_lists_app` VALUES ('716', 'KY', '极速百家乐', null, null, '3001', null, null, 'joker', '99', '0', '1', '2022-12-06 22:52:31', '2022-12-06 22:52:31', 'images/fe8897989862e75b8004580d5d7723ad.png', null);
INSERT INTO `game_lists_app` VALUES ('717', 'KY', '文房四宝', null, null, '90010', null, null, 'joker', '99', '0', '1', '2022-12-06 22:52:57', '2022-12-06 22:52:57', 'images/ab243ade593acca1280f9e83003698f4.png', null);
INSERT INTO `game_lists_app` VALUES ('718', 'KY', '看牌抢庄三公', null, null, '2890', null, null, 'joker', '99', '0', '1', '2022-12-06 22:53:38', '2022-12-06 22:53:38', 'images/25a5524c0d091b2cd6e913dba386ca77.png', null);
INSERT INTO `game_lists_app` VALUES ('719', 'KY', '二人斗地主', null, null, '1640', null, null, 'joker', '99', '0', '1', '2022-12-06 22:54:12', '2022-12-07 00:05:05', 'images/7669dc10ad1d0d27c50229b3968eb1ea.png', null);
INSERT INTO `game_lists_app` VALUES ('730', 'KY', '红黑大战', null, null, '950', null, null, 'joker', '99', '0', '1', '2022-12-07 00:06:37', '2022-12-07 00:11:04', 'images/fd63a1b49de2f0f6296bf6d8c27a7d30.png', null);
INSERT INTO `game_lists_app` VALUES ('731', 'KY', '李逵捕鱼', null, null, '520', null, null, 'fishing', '99', '0', '1', '2022-12-07 00:07:22', '2022-12-07 00:07:22', 'images/da3b2e0c17d3f5cd8ce3b970017ec409.png', null);
INSERT INTO `game_lists_app` VALUES ('732', 'KY', '水果机', null, null, '1890', null, null, 'joker', '99', '0', '1', '2022-12-07 00:07:52', '2022-12-07 00:07:52', 'images/39480c3c32cdb607434599f284c42c91.png', null);
INSERT INTO `game_lists_app` VALUES ('733', 'KY', '鱼虾蟹', null, null, '1930', null, null, 'joker', '99', '0', '1', '2022-12-07 00:08:20', '2022-12-07 00:08:20', 'images/84b2de7cd3bd32c5b5f0ec295a102138.png', null);
INSERT INTO `game_lists_app` VALUES ('734', 'KY', '跑得快', null, null, '8130', null, null, 'joker', '99', '0', '1', '2022-12-07 00:08:52', '2022-12-07 00:08:52', 'images/21972bbbb600d49501bbef84e6f6b9fa.png', null);
INSERT INTO `game_lists_app` VALUES ('735', 'KY', '五星宏辉', null, null, '1970', null, null, 'joker', '0', '0', '1', '2022-12-07 00:09:24', '2022-12-07 00:09:24', 'images/a75d0a214a8983c66e8c5d01572c3c8e.png', null);
INSERT INTO `game_lists_app` VALUES ('736', 'KY', '血战到底', null, null, '1660', null, null, 'joker', '99', '0', '1', '2022-12-07 00:10:01', '2022-12-07 00:10:01', 'images/1c483512009b3aeee4472ab2d8c3badf.png', null);

-- ----------------------------
-- Table structure for game_records
-- ----------------------------
DROP TABLE IF EXISTS `game_records`;
CREATE TABLE `game_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `bet_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '注单id',
  `bet_time` datetime NOT NULL COMMENT '下注时间',
  `platform_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `game_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏类型',
  `game_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bet_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下注金额',
  `valid_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '有效投注金额',
  `win_loss` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '输赢金额',
  `is_back` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1已反水 0未反水',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 1已结算 2未结算 0无效注单',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bet_id` (`bet_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `platform_type` (`platform_type`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of game_records
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '给某个会员发消息',
  `vip_id` int(11) DEFAULT NULL COMMENT 'vip等级id',
  `isagent` int(1) DEFAULT '0' COMMENT '1针对代理 2vip黑名单',
  `type` int(11) NOT NULL COMMENT '1通知 2活动 3公告',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('8', '0', '1', '2', '3', '遵守', '<p>请自觉遵守本站秩序</p>', '2021-10-12 15:09:06', '2021-10-12 15:09:06');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_09_07_090635_create_admin_settings_table', '1');
INSERT INTO `migrations` VALUES ('5', '2020_09_22_015815_create_admin_extensions_table', '1');
INSERT INTO `migrations` VALUES ('6', '2020_11_01_083237_update_admin_menu_table', '1');
INSERT INTO `migrations` VALUES ('7', '2020_11_24_111402_create_users_table', '1');
INSERT INTO `migrations` VALUES ('8', '2020_11_25_102449_create_recharge_table', '1');
INSERT INTO `migrations` VALUES ('9', '2020_11_25_183755_create_user_cards_table', '1');
INSERT INTO `migrations` VALUES ('10', '2020_11_29_211446_create_withdraws_table', '1');
INSERT INTO `migrations` VALUES ('11', '2020_11_29_212718_create_suggestions_table', '1');
INSERT INTO `migrations` VALUES ('12', '2020_12_01_202428_create_messages_table', '1');
INSERT INTO `migrations` VALUES ('13', '2020_12_01_204154_create_user_messages_table', '1');
INSERT INTO `migrations` VALUES ('14', '2020_12_16_151534_create_user_vip_table', '1');
INSERT INTO `migrations` VALUES ('15', '2020_12_17_144810_create_pay_setting_table', '1');
INSERT INTO `migrations` VALUES ('16', '2020_12_17_153644_create_banks_table', '1');
INSERT INTO `migrations` VALUES ('17', '2020_12_18_142828_create_system_config_table', '1');
INSERT INTO `migrations` VALUES ('18', '2020_12_19_101712_create_activity_apply_table', '2');
INSERT INTO `migrations` VALUES ('19', '2020_12_19_103413_create_activities_table', '2');
INSERT INTO `migrations` VALUES ('20', '2020_12_21_151323_create_tranfer_logs_table', '3');
INSERT INTO `migrations` VALUES ('21', '2020_12_23_164453_create_activity_types_table', '3');
INSERT INTO `migrations` VALUES ('22', '2020_12_25_170051_create_game_records_table', '3');
INSERT INTO `migrations` VALUES ('23', '2020_12_27_110141_create_apis_table', '3');
INSERT INTO `migrations` VALUES ('24', '2020_12_28_102854_create_game_lists_table', '3');
INSERT INTO `migrations` VALUES ('25', '2021_01_01_201738_add_is_agent_to_users_table', '4');
INSERT INTO `migrations` VALUES ('26', '2021_01_04_202011_create_templates_table', '5');
INSERT INTO `migrations` VALUES ('27', '2021_01_07_203644_create_agent_apply_table', '6');
INSERT INTO `migrations` VALUES ('28', '2021_01_23_095121_add_api_token_to_users_table', '7');
INSERT INTO `migrations` VALUES ('29', '2021_02_01_152419_edit_api_type_to_transfer_logs_table', '8');
INSERT INTO `migrations` VALUES ('30', '2021_02_03_145311_create_agent_settlements_table', '9');
INSERT INTO `migrations` VALUES ('31', '2021_02_03_161027_add_settlement_id_to_users_table', '9');
INSERT INTO `migrations` VALUES ('32', '2021_09_05_101619_create_user_operate_logs_table', '10');
INSERT INTO `migrations` VALUES ('33', '2021_09_06_101015_add_reg_ip_to_users_table', '11');
INSERT INTO `migrations` VALUES ('34', '2021_09_09_102636_create_banners_table', '12');
INSERT INTO `migrations` VALUES ('35', '2021_10_13_145446_change_banner_to_activities_table', '13');
INSERT INTO `migrations` VALUES ('36', '2021_10_20_144657_edit_pic_to_banners_table', '14');
INSERT INTO `migrations` VALUES ('37', '2022_04_28_170305_create_sessions_table', '15');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pay_setting
-- ----------------------------
DROP TABLE IF EXISTS `pay_setting`;
CREATE TABLE `pay_setting` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) NOT NULL,
  `bank_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡号',
  `bank_owner` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '持卡人姓名',
  `bank_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支行信息',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1可用 0禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pay_setting
-- ----------------------------

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '系统订单号',
  `out_trade_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户订单号',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `amount` decimal(10,2) NOT NULL COMMENT '金额',
  `cash_fee` decimal(8,2) NOT NULL COMMENT '手续费',
  `real_money` decimal(10,2) NOT NULL COMMENT '实到金额',
  `pay_way` tinyint(4) NOT NULL COMMENT '1银行卡转账 2zgpay',
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `bank_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡号',
  `bank_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `bank_owner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '持卡人姓名',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `usdt_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待审核/支付 2支付成功/审核通过 3支付失败/审核拒绝',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of recharge
-- ----------------------------

-- ----------------------------
-- Table structure for red_envelopes
-- ----------------------------
DROP TABLE IF EXISTS `red_envelopes`;
CREATE TABLE `red_envelopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_flow` decimal(10,2) DEFAULT NULL COMMENT '当天流水',
  `recharge` decimal(10,2) DEFAULT NULL COMMENT '充值金额',
  `flow_money` decimal(10,2) DEFAULT NULL COMMENT '流水金额',
  `money` decimal(10,2) DEFAULT NULL COMMENT '领取红包金额',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '红包领取开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '红包领取结束时间',
  `status` int(1) DEFAULT '1' COMMENT '0禁用1启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of red_envelopes
-- ----------------------------
INSERT INTO `red_envelopes` VALUES ('1', '100.00', '1.00', '10000.00', '2.00', '2022-07-01 10:59:04', '2022-07-31 11:00:04', '1', '2021-04-23 10:53:46', '2022-07-05 01:32:48');
INSERT INTO `red_envelopes` VALUES ('2', '1000.00', '5.00', '10000.00', '2.00', '2022-07-01 10:56:48', '2022-07-31 10:57:48', '1', '2022-07-15 10:56:40', '2022-07-16 20:55:18');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('bJUX21lepTfclzyoYL0gHcyj9GHyngjriwDZlW0j', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaWJRc2h4djZxYVlaWndaTzlCTDh2MTNYM24zd3FucktsN1BSM0ltVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4yLjMvcHVsbD9zdGFydF9hdD04NjQwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiYWRtaW4iO2E6MTp7czo0OiJwcmV2IjthOjA6e319czoyMDoibG9naW5fY2FwdGNoYV9waHJhc2UiO3M6NDoiNnlXWCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', '1763273865');
INSERT INTO `sessions` VALUES ('kTAoEnS4EPfCsHwtewIgIemoZGiBFsn61JIlAW9I', null, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFhTTTJOMFI5VkhvM0w1ZEowRjloZnM2OTNlSXkxQ0lEN082M083RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4yLjMvcHVsbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1763294790');

-- ----------------------------
-- Table structure for suggestions
-- ----------------------------
DROP TABLE IF EXISTS `suggestions`;
CREATE TABLE `suggestions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '问题类型',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of suggestions
-- ----------------------------

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '10',
  `type` int(2) NOT NULL DEFAULT '0',
  `memo` varchar(255) DEFAULT NULL,
  `addtime` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syslog
-- ----------------------------

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('accountday', '30');
INSERT INTO `system_config` VALUES ('activity_apply_audio', 'files/fe18e0d5c1a539218b57f4953f6640ee.mp3');
INSERT INTO `system_config` VALUES ('agen_applyt_audio', '');
INSERT INTO `system_config` VALUES ('agent_apply_audio', 'files/417f06fe2b11e9f2410fe4bd58866032.mp3');
INSERT INTO `system_config` VALUES ('agentday', '60');
INSERT INTO `system_config` VALUES ('android_download_qrcode', '');
INSERT INTO `system_config` VALUES ('android_download_url', '');
INSERT INTO `system_config` VALUES ('android_version', '');
INSERT INTO `system_config` VALUES ('api_secret', '97534178');
INSERT INTO `system_config` VALUES ('applyday', '30');
INSERT INTO `system_config` VALUES ('auto_refresh', '0');
INSERT INTO `system_config` VALUES ('auto_refresh_interval', '10');
INSERT INTO `system_config` VALUES ('companypay_des', '');
INSERT INTO `system_config` VALUES ('companypay_title', '');
INSERT INTO `system_config` VALUES ('content', '');
INSERT INTO `system_config` VALUES ('daily_withdraw_times', '10');
INSERT INTO `system_config` VALUES ('damaliang', '0');
INSERT INTO `system_config` VALUES ('fanshui', '1');
INSERT INTO `system_config` VALUES ('game_api', 'https://msapi.fsgameapi.com/');
INSERT INTO `system_config` VALUES ('gameorder', '30');
INSERT INTO `system_config` VALUES ('ios_download_qrcode', '');
INSERT INTO `system_config` VALUES ('ios_download_url', 'http://mb2.tg-demo.cc:86/');
INSERT INTO `system_config` VALUES ('ios_version', '');
INSERT INTO `system_config` VALUES ('isclose', '1');
INSERT INTO `system_config` VALUES ('kf_url', 'https://kf.kf1688.one/index/index/home?business_id=2&groupid=0&special=2&theme=7571f9');
INSERT INTO `system_config` VALUES ('max_price', '100000');
INSERT INTO `system_config` VALUES ('max_recharge_money', '50000000');
INSERT INTO `system_config` VALUES ('max_withdraw_money', '100000');
INSERT INTO `system_config` VALUES ('merchant_account', 'ea977b1207264eeb8e67324e9e18999f');
INSERT INTO `system_config` VALUES ('merchant_id', '16577927782473');
INSERT INTO `system_config` VALUES ('min_fanshui_money', '0');
INSERT INTO `system_config` VALUES ('min_price', '10');
INSERT INTO `system_config` VALUES ('min_recharge_money', '100');
INSERT INTO `system_config` VALUES ('min_withdraw_money', '100');
INSERT INTO `system_config` VALUES ('notice_set', '1');
INSERT INTO `system_config` VALUES ('onlinepay_des', '');
INSERT INTO `system_config` VALUES ('onlinepay_title', '');
INSERT INTO `system_config` VALUES ('recharge_apply_audio', 'files/030a3c2bbaa0603ef8608ddd463fc54b.mp3');
INSERT INTO `system_config` VALUES ('recharge_fee', '1');
INSERT INTO `system_config` VALUES ('redpacket', '1');
INSERT INTO `system_config` VALUES ('repair_tips', '网站正在升级维护，维护时间预计两小时，请耐心等待！!');
INSERT INTO `system_config` VALUES ('safe_domain', '');
INSERT INTO `system_config` VALUES ('settlement', '1');
INSERT INTO `system_config` VALUES ('settlementlevel', '1');
INSERT INTO `system_config` VALUES ('settlementtypes', '0');
INSERT INTO `system_config` VALUES ('site_keyword', 'FS演示站');
INSERT INTO `system_config` VALUES ('site_logo', '');
INSERT INTO `system_config` VALUES ('site_name', 'FS演示站');
INSERT INTO `system_config` VALUES ('site_state', '1');
INSERT INTO `system_config` VALUES ('site_title', 'FS演示站');
INSERT INTO `system_config` VALUES ('syslogday', '30');
INSERT INTO `system_config` VALUES ('usdt_rate', '6.42');
INSERT INTO `system_config` VALUES ('webcontent', '<p style=\"text-align: center;\">FS娱乐（Fs Gaming）</p>\r\n<p>&nbsp;</p>');
INSERT INTO `system_config` VALUES ('withdraw_apply_audio', 'files/fa9df15e2687e0cb60f9dc2b1115066c.mp3');
INSERT INTO `system_config` VALUES ('withdraw_begin_time', '00:00:00');
INSERT INTO `system_config` VALUES ('withdraw_cash_fee', '1');
INSERT INTO `system_config` VALUES ('withdraw_end', '5');
INSERT INTO `system_config` VALUES ('withdraw_end_time', '23:59:59');
INSERT INTO `system_config` VALUES ('withdraw_fee', '1');
INSERT INTO `system_config` VALUES ('withdraw_fee_usdt_erc', '10');
INSERT INTO `system_config` VALUES ('withdraw_fee_usdt_trc', '3');
INSERT INTO `system_config` VALUES ('withdraw_start', '1');
INSERT INTO `system_config` VALUES ('withdraw_usdt_rate', '6.56');
INSERT INTO `system_config` VALUES ('zgp_sccret', 'b80afb62a8eb37546504b2022d44e71c');
INSERT INTO `system_config` VALUES ('zgp_secret', '5fd7e5264341d8b6bc7a49cfb13fd651');

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '缩略图',
  `client_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1pc 2wap 3app',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `template_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板标识',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1可用 0禁用 2正在使用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES ('8', 'mb1', 'images/e679b0ff69fbed8d5e96ddf160e2eef2.png', '2', '0', 'mb1', '2', '2021-02-24 19:33:15', '2022-02-20 23:15:59');
INSERT INTO `templates` VALUES ('21', 'mb12', 'images/7712c0db4a5b04d4dd80fcc1868fd517.png', '1', '0', 'mb12', '2', '2021-10-11 23:12:06', '2022-01-23 18:35:23');

-- ----------------------------
-- Table structure for transfer_logs
-- ----------------------------
DROP TABLE IF EXISTS `transfer_logs`;
CREATE TABLE `transfer_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `api_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'api账户类型',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `transfer_type` tinyint(4) NOT NULL COMMENT '0 转入游戏 1转出游戏',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转换金额',
  `cash_fee` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实到金额',
  `before_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转换前余额',
  `after_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转换后金额',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1成功 0失败 2 待结算',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `platform_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '游戲平臺',
  `addtime` int(10) DEFAULT '0',
  `settlementsday` int(2) DEFAULT '0' COMMENT '结算天数',
  `betid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '結算單號',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_no` (`order_no`) USING BTREE,
  KEY `api_type` (`api_type`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `transfer_type` (`transfer_type`) USING BTREE,
  KEY `platform_type` (`platform_type`) USING BTREE,
  KEY `betid` (`betid`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of transfer_logs
-- ----------------------------

-- ----------------------------
-- Table structure for userredpacket
-- ----------------------------
DROP TABLE IF EXISTS `userredpacket`;
CREATE TABLE `userredpacket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `redpacketid` int(10) NOT NULL,
  `redpacketfee` decimal(10,2) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `redpacketmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` int(1) NOT NULL DEFAULT '0',
  `usetime` varchar(30) DEFAULT NULL,
  `isuse` int(1) DEFAULT '0',
  `created_at` varchar(30) NOT NULL,
  `updated_at` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userredpacket
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '上级账号',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员账号',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '真实姓名',
  `vip` int(11) NOT NULL DEFAULT '1' COMMENT 'VIP级别',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `exp` int(11) NOT NULL DEFAULT '0' COMMENT '经验值',
  `paypwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付密码',
  `isonline` int(11) NOT NULL DEFAULT '0' COMMENT '是否在线',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowagent` int(11) NOT NULL DEFAULT '0' COMMENT '是否允许发展下级代理',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `mbalance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '码量余额',
  `totalgame` decimal(10,2) NOT NULL DEFAULT '0.00',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `paysum` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计充值',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `isdel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `isblack` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否在黑名单',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后登录IP',
  `last_login_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上次登录地址',
  `logintime` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `sourceurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来源',
  `loginsum` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isagent` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1代理 0会员',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `settlement_id` int(11) NOT NULL DEFAULT '0' COMMENT '结算方案id',
  `fanshuifee` decimal(5,2) DEFAULT NULL COMMENT '返水',
  `settlementday` int(10) DEFAULT '0' COMMENT '最后一次结算时间',
  `reg_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '注册ip',
  `transferstatus` int(1) DEFAULT '0' COMMENT '0 转账 1免转',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_api_token_unique` (`api_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', '0', 'bob001', '$2y$10$/Dr75sX/.kNHUvooYpYWKuihXE6/uyHszQl8uPu2/Xb67sCYWHwpu', 'zTyUFAFF77uVxsMzzRmaFxmkDssveGiybVSNX4QurAEvWewCgwxFSu3GRosP', '导出', '1', '0', '0', '$2y$10$jvk/6hDHJrgK82dlFM3WFe1usXjEzdoUqNJCFC.NkMFa91.LuhK6G', '0', null, '0', '0.00', '0.00', '0.00', null, null, '0.00', '1', '0', '0', null, null, null, null, '0', null, null, '2025-11-16 14:30:07', '2025-11-16 14:30:07', '0', '0', '0', null, '0', null, '0');

-- ----------------------------
-- Table structure for usersmoney
-- ----------------------------
DROP TABLE IF EXISTS `usersmoney`;
CREATE TABLE `usersmoney` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `ag_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `allbet_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bbin_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bg_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `og_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pt_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gd_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dg_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `qt_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ky_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ig_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `jdb_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fg_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `avia_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `leg_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bng_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dt_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gg_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT NULL,
  `vrbet_money` decimal(10,2) DEFAULT '0.00',
  `hlgame_money` decimal(10,2) DEFAULT '0.00',
  `hbb_money` decimal(10,2) DEFAULT '0.00',
  `qg_money` decimal(10,2) DEFAULT '0.00',
  `hc_money` decimal(10,2) DEFAULT '0.00',
  `play99_money` decimal(10,2) DEFAULT '0.00',
  `yb_money` decimal(10,2) DEFAULT '0.00',
  `ly_money` decimal(10,2) DEFAULT '0.00',
  `kx_money` decimal(10,2) DEFAULT '0.00',
  `dfw_money` decimal(10,2) DEFAULT '0.00',
  `xsj_money` decimal(10,2) DEFAULT '0.00',
  `ld_money` decimal(10,2) DEFAULT '0.00',
  `ae_money` decimal(10,2) DEFAULT '0.00',
  `oap_money` decimal(10,2) DEFAULT '0.00',
  `ia_money` decimal(10,2) DEFAULT '0.00',
  `sy_money` decimal(10,2) DEFAULT '0.00',
  `xsbo_money` decimal(10,2) DEFAULT '0.00',
  `ps_money` decimal(10,2) DEFAULT '0.00',
  `habaner_money` decimal(10,2) DEFAULT '0.00',
  `jz_money` decimal(10,2) DEFAULT '0.00',
  `cmd_money` decimal(10,2) DEFAULT '0.00',
  `sbtest_money` decimal(10,2) DEFAULT '0.00',
  `wm_money` decimal(10,2) DEFAULT '0.00',
  `zeus_money` decimal(10,2) DEFAULT '0.00',
  `cg_money` decimal(10,2) DEFAULT '0.00',
  `icg_money` decimal(10,2) DEFAULT '0.00',
  `pp_money` decimal(10,2) DEFAULT '0.00',
  `pg_money` decimal(10,2) DEFAULT '0.00',
  `sg_money` decimal(10,2) DEFAULT '0.00',
  `vg_money` decimal(10,2) DEFAULT '0.00',
  `tc_money` decimal(10,2) DEFAULT '0.00',
  `datqp_money` decimal(10,2) DEFAULT '0.00',
  `tm_money` decimal(10,2) DEFAULT '0.00',
  `ap_money` decimal(10,2) DEFAULT '0.00',
  `kx2_money` decimal(10,2) DEFAULT '0.00',
  `imone_money` decimal(10,2) DEFAULT '0.00',
  `obgzr_money` decimal(10,2) DEFAULT '0.00',
  `obgqp_money` decimal(10,2) DEFAULT '0.00',
  `saba_money` decimal(10,2) DEFAULT '0.00',
  `obgcp_money` decimal(10,2) DEFAULT '0.00',
  `obgdj_money` decimal(10,2) DEFAULT '0.00',
  `obgty_money` decimal(10,2) DEFAULT '0.00',
  `obgdy_money` decimal(10,2) DEFAULT '0.00',
  `dl_money` decimal(10,2) DEFAULT '0.00',
  `obgpy_money` decimal(10,2) DEFAULT '0.00',
  `xjty_money` decimal(10,2) DEFAULT '0.00',
  `hgty_money` decimal(10,2) DEFAULT '0.00',
  `cqty_money` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usersmoney
-- ----------------------------

-- ----------------------------
-- Table structure for user_api
-- ----------------------------
DROP TABLE IF EXISTS `user_api`;
CREATE TABLE `user_api` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `api_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息id',
  `api_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_api
-- ----------------------------
INSERT INTO `user_api` VALUES ('33', '2', 'bob001', '123456', 'FS', '0.00', '2025-11-16 14:31:00', '2025-11-16 14:31:00');

-- ----------------------------
-- Table structure for user_cards
-- ----------------------------
DROP TABLE IF EXISTS `user_cards`;
CREATE TABLE `user_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `bank_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡号',
  `bank_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `bank_owner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '持卡人姓名',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_cards
-- ----------------------------

-- ----------------------------
-- Table structure for user_messages
-- ----------------------------
DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE `user_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `message_id` int(11) NOT NULL COMMENT '消息id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_messages
-- ----------------------------

-- ----------------------------
-- Table structure for user_operate_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_operate_logs`;
CREATE TABLE `user_operate_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '操作类型 1登录 2登出 3会员操作 4代理后台登入 5代理后台登出 6会员转入接口异常',
  `login_ua` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录请求头',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录ip',
  `ip_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_operate_logs
-- ----------------------------
INSERT INTO `user_operate_logs` VALUES ('1', '1', '7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '127.0.0.1', '', '管理员调整【demo789】账户余额，调整金额数50，调整前金额50，调整后金额50', '', '2025-11-15 14:50:39', '2025-11-15 14:50:39');

-- ----------------------------
-- Table structure for user_vip
-- ----------------------------
DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vipname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级名称',
  `viptype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '反水类型',
  `recharge` decimal(12,2) DEFAULT NULL COMMENT '升级条件：充值金额',
  `flow` decimal(12,2) DEFAULT NULL COMMENT '升级条件：流水',
  `realperson` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '真人',
  `electron` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '电子',
  `joker` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '棋牌',
  `sport` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '体育',
  `fish` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '捕鱼',
  `lottery` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '彩票',
  `e_sport` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '电竞',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  `exp` int(11) NOT NULL DEFAULT '0' COMMENT '经验',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vrberfee` decimal(6,2) DEFAULT NULL,
  `ldfee` decimal(6,2) DEFAULT NULL,
  `vippic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_vip
-- ----------------------------
INSERT INTO `user_vip` VALUES ('1', 'VIP1', '1', '0.00', '0.00', '4.00', '3.00', '5.00', '6.00', '7.00', '8.00', '9.00', '1', '0', '1', '2021-04-18 23:44:39', '2022-05-17 21:15:53', null, null, 'vip-1');
INSERT INTO `user_vip` VALUES ('3', 'VIP2', '1', '1000.00', '0.00', '0.50', '5.00', '7.00', '8.00', '9.00', '9.00', '10.00', '1', '0', '1', '2021-04-18 23:44:39', '2022-06-23 17:00:03', null, null, 'vip-2');
INSERT INTO `user_vip` VALUES ('4', 'VIP3', '1', '3000.00', '10000.00', '6.00', '6.00', '6.00', '6.00', '0.58', '6.00', '6.00', '1', '0', '1', '2021-04-18 23:45:14', '2022-05-22 10:42:19', null, null, 'vip-3');
INSERT INTO `user_vip` VALUES ('6', 'VIP4', '1', '10000.00', '50000.00', '7.00', '7.00', '7.00', '7.00', '0.58', '7.00', '7.00', '1', '0', '0', '2022-05-10 00:36:46', '2022-05-22 10:48:11', null, null, 'vip-4');
INSERT INTO `user_vip` VALUES ('7', 'VIP5', '1', '50000.00', '100000.00', '8.00', '8.00', '8.00', '8.00', '0.00', '8.00', '8.00', '1', '0', '0', '2022-05-22 10:40:49', '2022-05-22 11:02:43', null, null, 'vip-5');
INSERT INTO `user_vip` VALUES ('8', 'VIP6', '1', '100000.00', '200000.00', '9.00', '9.00', '9.00', '9.00', '0.00', '9.00', '9.00', '1', '0', '0', '2022-05-22 10:41:22', '2022-05-22 11:02:58', null, null, 'vip-6');
INSERT INTO `user_vip` VALUES ('9', 'VIP7', '1', '200000.00', '500000.00', '10.00', '10.00', '10.00', '10.00', '0.00', '10.00', '10.00', '1', '0', '0', '2022-05-22 11:19:05', '2022-05-22 11:19:05', null, null, 'vip-7');
INSERT INTO `user_vip` VALUES ('10', 'VIP8', '1', '500000.00', '1000000.00', '11.00', '11.00', '11.00', '11.00', '0.00', '11.00', '11.00', '1', '0', '0', '2022-05-22 11:19:35', '2022-05-22 11:19:35', null, null, 'vip-8');
INSERT INTO `user_vip` VALUES ('11', 'VIP9', '1', '1000000.00', '5000000.00', '12.00', '12.00', '12.00', '12.00', '0.00', '12.00', '12.00', '1', '0', '0', '2022-05-22 11:20:12', '2022-05-22 11:20:12', null, null, 'vip-9');
INSERT INTO `user_vip` VALUES ('12', 'VIP10', '1', '5000000.00', '10000000.00', '13.00', '13.00', '13.00', '13.00', '0.00', '13.00', '13.00', '1', '0', '0', '2022-05-22 11:21:53', '2022-05-22 11:21:53', null, null, 'vip-10');

-- ----------------------------
-- Table structure for withdraws
-- ----------------------------
DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE `withdraws` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '类型1银行卡 2usdt',
  `card_id` int(11) NOT NULL COMMENT '银行卡id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `cash_fee` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实到金额',
  `usdt_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1待审核 2通过 3拒绝',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of withdraws
-- ----------------------------
