/*
Navicat MySQL Data Transfer

Source Server         : H51812
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : h51812

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2019-03-27 22:24:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contents
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `dateline` int(10) unsigned DEFAULT '0',
  `support` int(11) unsigned DEFAULT '0',
  `oppose` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `oppose` (`oppose`),
  KEY `uid` (`uid`),
  KEY `support` (`support`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES ('58', '10', '???????,?????,?????????,???????!', '1551873933', '0', '0');
INSERT INTO `contents` VALUES ('60', '11', '??????,??????,??????,????,??????.', '1551874023', '0', '0');
INSERT INTO `contents` VALUES ('61', '10', '???,?????,???,?????,????,????.', '1551874303', '2', '0');
INSERT INTO `contents` VALUES ('104', '12', '?????????,?????,????,????,????,?????!', '1551879913', '0', '0');
INSERT INTO `contents` VALUES ('105', '12', '??,????????,????????,????,?????????????,??????????,????????,?????????????????,??????????,????????,??????????????????!', '1551880341', '0', '0');

-- ----------------------------
-- Table structure for csv
-- ----------------------------
DROP TABLE IF EXISTS `csv`;
CREATE TABLE `csv` (
  `gid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `telephonenumber` varchar(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of csv
-- ----------------------------
INSERT INTO `csv` VALUES ('1', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('2', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('3', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('4', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('5', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('6', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('7', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('8', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('9', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('10', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('11', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('12', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('13', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('14', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('15', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('16', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('17', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('18', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('19', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('20', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('21', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('22', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('23', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('24', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('25', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('26', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('27', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('28', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('29', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('30', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('31', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('32', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('33', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('34', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('35', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('36', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('37', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('38', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('39', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('40', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('41', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('42', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('43', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('44', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('45', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('46', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('47', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('48', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('49', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('50', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('51', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('52', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('53', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('54', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('55', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('56', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('57', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('58', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('59', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('60', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('61', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('62', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('63', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('64', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('65', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('66', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('67', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('68', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('69', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('70', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('71', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('72', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('73', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('74', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('75', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('76', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('77', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('78', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('79', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('80', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('81', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('82', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('83', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('84', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('85', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('86', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('87', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('88', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('89', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('90', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('91', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('92', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('93', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('94', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('95', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('96', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('97', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('98', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('99', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('100', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('101', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('102', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('103', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('104', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('105', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('106', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('107', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('108', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('109', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('110', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('111', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('112', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('113', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('114', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('115', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('116', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('117', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('118', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('119', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('120', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('121', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('122', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('123', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('124', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('125', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('126', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('127', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('128', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('129', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('130', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('131', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('132', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('133', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('134', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('135', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('136', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('137', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('138', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('139', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('140', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('141', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('142', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('143', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('144', '黄梓晴', '女', '努力学习打代码', '13566541154');
INSERT INTO `csv` VALUES ('145', '琳姐', '女', '怒盘代码', '13485454454');
INSERT INTO `csv` VALUES ('146', '袁沛森', '男', '篮球/睡觉', '13922952296');
INSERT INTO `csv` VALUES ('147', '杨海文', '男', '爱好女/篮球', '13202781571');
INSERT INTO `csv` VALUES ('148', '苏玉婷', '女', '吃鸡/购物', '13345678910');
INSERT INTO `csv` VALUES ('149', '林衍秋', '男', '健身/开车', '13478654874');
INSERT INTO `csv` VALUES ('150', '何青龙', '男', '爱好女/打代码', '13578795785');
INSERT INTO `csv` VALUES ('151', '周雨彤', '女', '尤克里里/看帅哥', '13649745475');
INSERT INTO `csv` VALUES ('152', '周伟强', '男', '诅咒留级', '15486121545');
INSERT INTO `csv` VALUES ('153', '刘林灿', '男', '爱好林泽宇', '13457845151');
INSERT INTO `csv` VALUES ('154', '林泽宇', '男', '爱好刘林灿', '13485127481');
INSERT INTO `csv` VALUES ('155', '张风裕', '男', '拍摄/研究女性', '13557894548');
INSERT INTO `csv` VALUES ('156', '梁海江', '男', '秀你一脸/偷偷打代码', '13484548574');
INSERT INTO `csv` VALUES ('157', '王杏', '女', '努力学习打代码', '13454875455');
INSERT INTO `csv` VALUES ('158', '许继匀', '女', '努力学习打代码', '13854511458');
INSERT INTO `csv` VALUES ('159', '黄晓菲', '女', '努力学习打代码', '13974154584');
INSERT INTO `csv` VALUES ('160', '黄梓晴', '女', '努力学习打代码', '13566541154');

-- ----------------------------
-- Table structure for kad
-- ----------------------------
DROP TABLE IF EXISTS `kad`;
CREATE TABLE `kad` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL,
  `bigimg` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(40) DEFAULT NULL,
  `oldPrice` varchar(40) DEFAULT NULL,
  `inventory` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kad
-- ----------------------------
INSERT INTO `kad` VALUES ('1', '../images/CgAgEVWKRJiAB6OaAAIkDB9TWtw759.jpg', null, '贺甘定 拉米夫定片 0.1g*7片*2板?【暖春行狂欢，特享抄底价】低至49元起！满26盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '49', '119.00', '现在有货');
INSERT INTO `kad` VALUES ('2', '../images/CgAgFVwt0xaAcdDWAAEkfG-3v_o489.jpg', null, '维力青 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至70元！满40盒送黑枸杞养生大礼..? ', '72', '198.00', '现在有货');
INSERT INTO `kad` VALUES ('3', '../images/CgAgEVg2WESAPk_UAAFzx2mFdrM160.JPG', null, '恩甘定 恩替卡韦胶囊 0.5mg*7粒 【暖春行狂欢，特享抄底价】→加31.8元可换原品，折算低至46.8元！满40盒送黑枸杞养生.. ', '48', '112.00', '现在有货');
INSERT INTO `kad` VALUES ('4', '../images/CgAgFFwE7kSAbKCpAAGIH4WUwTw510.jpg', null, '片仔癀牌 片仔癀 3g*1粒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满30盒送黑枸杞养生大礼包；满20盒送百花..? ', '530.00', '630.00', '现在有货');
INSERT INTO `kad` VALUES ('5', '../images/CgAgEFbWZ1qAblFJAAG6HEIdEnA177.jpg', null, '健甘灵 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至56元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '56', '88.00', '现在有货');
INSERT INTO `kad` VALUES ('6', '../images/CgAgEFepReSAZmY4AAG7ZKHyFu4614.jpg', null, '阿甘定 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至43.5元！满18盒送黑枸杞养生大..? ', '45', '148.50', '现在有货');
INSERT INTO `kad` VALUES ('7', '../images/CgAgEVepRd2ALnLFAAG8AS_KJG0863.jpg_180x180.jpg', 'CgAgFVv87dGADn4YAAFeJ96g6l4331.jpg', '阿甘定 阿德福韦酯片 10mg*10片?【暖春行狂欢，特享抄底价】→加23元可换原品，折算低至32.5元！满18盒送黑枸杞养生大..? ', '42', '125.00', '现在有货');
INSERT INTO `kad` VALUES ('8', '../images/CgAgEVhH0LyAAtozAAGgwz1eows065.jpg', null, '欣复诺 阿德福韦酯胶囊 10mg*10粒?【暖春行狂欢，特享抄底价】→加19元可换原品，折算低至27元！满18盒送黑枸杞养生大礼..? ', '29', '110.00', '现在有货');
INSERT INTO `kad` VALUES ('9', '../images/CgAgEVag5YGAdZgSAAAgAOlDD_Y64.jpeg', null, '森隆药业 安络化纤丸 6g*6袋?【暖春行狂欢，特享抄底价】低至46元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '46', ' 69.80', '现在有货');
INSERT INTO `kad` VALUES ('10', '../images/CgAgEFc0NrmAQNEdAAKwg2jO2j8054.jpg_180x180.jpg', null, '雷易得 恩替卡韦分散片 0.5mg*14片?【暖春行狂欢，特享抄底价】低至135元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '135', ' 320.00', '现在有货');
INSERT INTO `kad` VALUES ('11', '../images/CgAgEFfrb5yARBFFAAHEnCh86TI394.jpg_180x180.jpg', null, '喜美欣 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至155元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '155', ' 224.40', '现在有货');
INSERT INTO `kad` VALUES ('12', '../images/CgAgFFuHwzqAZFBEAAE6K0sA2bM758.jpg_180x180.jpg', null, '甘泽 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】低至55元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '55', ' 165.00', '现在有货');
INSERT INTO `kad` VALUES ('13', '../images/CgAgEFi81UWAQA2NAAG2ZIqwRFQ338.jpg_180x180.jpg', null, '步长 胆石利通片 0.45g*54片?【暖春行狂欢，特享抄底价】低至26.8元起！满20盒送黑枸杞养生大礼包；满10盒送百花蜂..? ', '26.8', ' 38.00', '现在有货');
INSERT INTO `kad` VALUES ('14', '../images/CgAgEFkRGlqAWMkzAAGdV-ye0CA034.jpg_180x180.jpg', null, '和恩 恩替卡韦分散片 0.5mg*7片*2板/盒?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至75.5元！满26盒送黑枸杞养生大..? ', '78', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('15', '../images/CgAgEFlMhQGAaxOiAAHeoFDxVk8005.jpg_180x180.jpg', null, '片仔癀 片仔癀胶囊 0.3g*6粒*2板/盒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满20盒送黑枸杞养生大礼包；满15盒送百花..? ', '600.00', ' 699.00', '现在有货');
INSERT INTO `kad` VALUES ('16', '../images/CgAgFVwXViGAIX4jAAFK8bIUSwU202.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*10片?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至92.5元！满27盒送黑枸杞养生大..? ', '96', ' 216.00', '现在有货');
INSERT INTO `kad` VALUES ('17', '../images/CgAgEFag6VGASgRVAAAgAL4_VM463.jpeg', null, '和恩 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至47.5元！满40盒送黑枸杞养生大..? ', '49', ' 98.00', '现在有货');
INSERT INTO `kad` VALUES ('18', '../images/CgAgEVgAUM2AANHgAAHSla4RQLs361.jpg_180x180.jpg', null, '百赛诺 双环醇片 25mg*18片?【暖春行狂欢，特享抄底价】低至65元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '65', ' 105.00', '现在有货');
INSERT INTO `kad` VALUES ('19', '../images/CgAgEFag53qAFfRDAAAgALZnBqU51.jpeg', null, '粤宝 阿德福韦酯片 10mg*28片?【暖春行狂欢，特享抄底价】低至78元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜；..? ', '78', ' 159.00', '现在有货');
INSERT INTO `kad` VALUES ('20', '../images/CgAgEVag7BqAKf-HAAAgADt-jTk56.jpeg', null, '世博金都 六味五灵片 0.5g*60片?【暖春行狂欢，特享抄底价】低至105元起！满20盒送黑枸杞养生大礼包；满15盒送百花蜂蜜..? ', '105', ' 173.00', '现在有货');
INSERT INTO `kad` VALUES ('21', '../images/CgAgEFag6zSAK-x2AAAgAGw8aOc29.jpeg', null, '艾普丁 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】低至66元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '66', ' 150.00', '现在有货');
INSERT INTO `kad` VALUES ('22', '../images/CgAgEFag6Y2AJJEjAAAOUNDsoJY81.jpeg', null, '达尔玛 多廿烷醇片 10mg*7片?【暖春行狂欢，特享抄底价】低至132元起！满20盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '132', ' 235.00', '现在有货');
INSERT INTO `kad` VALUES ('23', '../images/CgAgFVv86gSABESWAAF1UpZqCRE147.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片*4板/盒?【暖春行狂欢，特享抄底价】低至156元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜..? ', '156', ' 450.00', '现在有货');
INSERT INTO `kad` VALUES ('24', '../images/CgAgEVez2K6AWlv6AAGaYG306xo415.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至39.5元！满40盒送黑枸杞养生大..? ', '40', ' 170.00', '现在有货');
INSERT INTO `kad` VALUES ('25', '../images/CgAgEVi42rmAP4J1AAHPmQIRtmA605.jpg_180x180.jpg', null, '代丁 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至108元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '108', ' 180.00', '现在有货');
INSERT INTO `kad` VALUES ('26', '../images/CgAgEFcXVjGALiApAAGr_y4Vjkc845.jpg_180x180.jpg', null, '丁贺 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至48元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '48', ' 95.00', '现在有货');
INSERT INTO `kad` VALUES ('27', '../images/CgAgFVuiB_GABh4DAAGSfroYmss999.jpg_180x180.jpg', null, '贺普丁 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至148元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '148', ' 244.00', '现在有货');
INSERT INTO `kad` VALUES ('28', '../images/CgAgEVag422AdYaMAAAgAC5PJwU10.jpeg', null, '999 茵栀黄口服液 10ml*10支?【暖春行狂欢，特享抄底价】低至36元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '36', ' 42.00', '现在有货');
INSERT INTO `kad` VALUES ('29', '../images/CgAgFFwXTgqASu6XAAGy4JXU_Aw900.jpg_180x180.jpg', null, '维力青 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至66元！满40盒送黑枸杞养生大礼..? ', '68', ' 149.00', '现在有货');
INSERT INTO `kad` VALUES ('30', '../images/CgAgEVZC10CASvbwAAAgANjY2pQ33.jpeg', null, '贺维力 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至214元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '214', ' 312.00', '现在有货');
INSERT INTO `kad` VALUES ('31', '../images/CgAgEVlMY-2AP_VuAAGDlHh9ckI246.jpg_180x180.jpg', null, '思美泰 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至180元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '180', ' 267.00', '现在有货');
INSERT INTO `kad` VALUES ('32', '../images/CgAgEFdWis6AQfNTAAGoSKVzkPY856.jpg_180x180.jpg', null, '回乐 复方鳖甲软肝片 0.5g*48片?【暖春行狂欢，特享抄底价】低至70元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '70', ' 120.00', '现在有货');
INSERT INTO `kad` VALUES ('33', '../images/CgAgEFdWis6AQfNTAAGoSKVzkPY856.jpg_180x180.jpg', null, '回乐 复方鳖甲软肝片 0.5g*48片?【暖春行狂欢，特享抄底价】低至70元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '70', ' 120.00', '现在有货');
INSERT INTO `kad` VALUES ('34', '../images/CgAgEVlMY-2AP_VuAAGDlHh9ckI246.jpg_180x180.jpg', null, '思美泰 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至180元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '180', ' 267.00', '现在有货');
INSERT INTO `kad` VALUES ('35', '../images/CgAgEVZC10CASvbwAAAgANjY2pQ33.jpeg', null, '贺维力 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至214元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '214', ' 312.00', '现在有货');
INSERT INTO `kad` VALUES ('36', '../images/CgAgFFwXTgqASu6XAAGy4JXU_Aw900.jpg_180x180.jpg', null, '维力青 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至66元！满40盒送黑枸杞养生大礼..? ', '68', ' 149.00', '现在有货');
INSERT INTO `kad` VALUES ('37', '../images/CgAgEVag422AdYaMAAAgAC5PJwU10.jpeg', null, '999 茵栀黄口服液 10ml*10支?【暖春行狂欢，特享抄底价】低至36元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '36', ' 42.00', '现在有货');
INSERT INTO `kad` VALUES ('38', '../images/CgAgFVuiB_GABh4DAAGSfroYmss999.jpg_180x180.jpg', null, '贺普丁 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至148元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '148', ' 244.00', '现在有货');
INSERT INTO `kad` VALUES ('39', '../images/CgAgEFcXVjGALiApAAGr_y4Vjkc845.jpg_180x180.jpg', null, '丁贺 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至48元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '48', ' 95.00', '现在有货');
INSERT INTO `kad` VALUES ('40', '../images/CgAgEVi42rmAP4J1AAHPmQIRtmA605.jpg_180x180.jpg', null, '代丁 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至108元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '108', ' 180.00', '现在有货');
INSERT INTO `kad` VALUES ('41', '../images/CgAgEVez2K6AWlv6AAGaYG306xo415.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至39.5元！满40盒送黑枸杞养生大..? ', '40', ' 170.00', '现在有货');
INSERT INTO `kad` VALUES ('42', '../images/CgAgFVv86gSABESWAAF1UpZqCRE147.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片*4板/盒?【暖春行狂欢，特享抄底价】低至156元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜..? ', '156', ' 450.00', '现在有货');
INSERT INTO `kad` VALUES ('43', '../images/CgAgEFag6Y2AJJEjAAAOUNDsoJY81.jpeg', null, '达尔玛 多廿烷醇片 10mg*7片?【暖春行狂欢，特享抄底价】低至132元起！满20盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '132', ' 235.00', '现在有货');
INSERT INTO `kad` VALUES ('44', '../images/CgAgEFag6zSAK-x2AAAgAGw8aOc29.jpeg', null, '艾普丁 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】低至66元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '66', ' 150.00', '现在有货');
INSERT INTO `kad` VALUES ('45', '../images/CgAgEVag7BqAKf-HAAAgADt-jTk56.jpeg', null, '世博金都 六味五灵片 0.5g*60片?【暖春行狂欢，特享抄底价】低至105元起！满20盒送黑枸杞养生大礼包；满15盒送百花蜂蜜..? ', '105', ' 173.00', '现在有货');
INSERT INTO `kad` VALUES ('46', '../images/CgAgEFag53qAFfRDAAAgALZnBqU51.jpeg', null, '粤宝 阿德福韦酯片 10mg*28片?【暖春行狂欢，特享抄底价】低至78元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜；..? ', '78', ' 159.00', '现在有货');
INSERT INTO `kad` VALUES ('47', '../images/CgAgEVgAUM2AANHgAAHSla4RQLs361.jpg_180x180.jpg', null, '百赛诺 双环醇片 25mg*18片?【暖春行狂欢，特享抄底价】低至65元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '65', ' 105.00', '现在有货');
INSERT INTO `kad` VALUES ('48', '../images/CgAgEFag6VGASgRVAAAgAL4_VM463.jpeg', null, '和恩 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至47.5元！满40盒送黑枸杞养生大..? ', '49', ' 98.00', '现在有货');
INSERT INTO `kad` VALUES ('49', '../images/CgAgFVwXViGAIX4jAAFK8bIUSwU202.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*10片?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至92.5元！满27盒送黑枸杞养生大..? ', '96', ' 216.00', '现在有货');
INSERT INTO `kad` VALUES ('50', '../images/CgAgEFlMhQGAaxOiAAHeoFDxVk8005.jpg_180x180.jpg', null, '片仔癀 片仔癀胶囊 0.3g*6粒*2板/盒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满20盒送黑枸杞养生大礼包；满15盒送百花..? ', '600.00', ' 699.00', '现在有货');
INSERT INTO `kad` VALUES ('51', '../images/CgAgEFkRGlqAWMkzAAGdV-ye0CA034.jpg_180x180.jpg', null, '和恩 恩替卡韦分散片 0.5mg*7片*2板/盒?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至75.5元！满26盒送黑枸杞养生大..? ', '78', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('52', '../images/CgAgEFi81UWAQA2NAAG2ZIqwRFQ338.jpg_180x180.jpg', null, '步长 胆石利通片 0.45g*54片?【暖春行狂欢，特享抄底价】低至26.8元起！满20盒送黑枸杞养生大礼包；满10盒送百花蜂..? ', '26.8', ' 38.00', '现在有货');
INSERT INTO `kad` VALUES ('53', '../images/CgAgFFuHwzqAZFBEAAE6K0sA2bM758.jpg_180x180.jpg', null, '甘泽 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】低至55元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '55', ' 165.00', '现在有货');
INSERT INTO `kad` VALUES ('54', '../images/CgAgEFfrb5yARBFFAAHEnCh86TI394.jpg_180x180.jpg', null, '喜美欣 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至155元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '155', ' 224.40', '现在有货');
INSERT INTO `kad` VALUES ('55', '../images/CgAgEFc0NrmAQNEdAAKwg2jO2j8054.jpg_180x180.jpg', null, '雷易得 恩替卡韦分散片 0.5mg*14片?【暖春行狂欢，特享抄底价】低至135元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '135', ' 320.00', '现在有货');
INSERT INTO `kad` VALUES ('56', '../images/CgAgEVag5YGAdZgSAAAgAOlDD_Y64.jpeg', null, '森隆药业 安络化纤丸 6g*6袋?【暖春行狂欢，特享抄底价】低至46元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '46', ' 69.80', '现在有货');
INSERT INTO `kad` VALUES ('57', '../images/CgAgEVhH0LGAQ82TAAG1tMFAMz0147.jpg_180x180.jpg', null, '欣复诺 阿德福韦酯胶囊 10mg*10粒?【暖春行狂欢，特享抄底价】→加19元可换原品，折算低至27元！满18盒送黑枸杞养生大礼..? ', '29', ' 110.00', '现在有货');
INSERT INTO `kad` VALUES ('58', '../images/CgAgEVepRd2ALnLFAAG8AS_KJG0863.jpg_180x180.jpg', null, '阿甘定 阿德福韦酯片 10mg*10片?【暖春行狂欢，特享抄底价】→加23元可换原品，折算低至32.5元！满18盒送黑枸杞养生大..? ', '34', ' 125.00', '现在有货');
INSERT INTO `kad` VALUES ('59', '../images/CgAgFFv87cGARoIaAAF-1aH3cyM212.jpg_180x180.jpg', null, '阿甘定 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至43.5元！满18盒送黑枸杞养生大..? ', '45', ' 148.50', '现在有货');
INSERT INTO `kad` VALUES ('60', '../images/CgAgEFbWZ1WAA4wZAAG8KK7YiUg023.jpg_180x180.jpg', null, '健甘灵 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至56元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '56', ' 88.00', '现在有货');
INSERT INTO `kad` VALUES ('61', '../images/CgAgFFwE7kSAbKCpAAGIH4WUwTw510.jpg_180x180.jpg', null, '片仔癀牌 片仔癀 3g*1粒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满30盒送黑枸杞养生大礼包；满20盒送百花..? ', '530.00', ' 630.00', '现在有货');
INSERT INTO `kad` VALUES ('62', '../images/CgAgEFg2VbOAcoW4AAHStvy26JE622.jpg_180x180.jpg', null, '恩甘定 恩替卡韦胶囊 0.5mg*7粒 【暖春行狂欢，特享抄底价】→加31.8元可换原品，折算低至46.8元！满40盒送黑枸杞养生.. ', '48', ' 112.00', '现在有货');
INSERT INTO `kad` VALUES ('63', '../images/CgAgFFwt0weASX4sAAF3eUchIn4151.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至70元！满40盒送黑枸杞养生大礼..? ', '72', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('64', '../images/CgAgEVag6uSAG7TeAAAgAIgECJ440.jpeg', null, '贺甘定 拉米夫定片 0.1g*7片*2板?【暖春行狂欢，特享抄底价】低至49元起！满26盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '49', ' 119.00', '现在有货');
INSERT INTO `kad` VALUES ('65', '../images/CgAgEFdWis6AQfNTAAGoSKVzkPY856.jpg_180x180.jpg', null, '回乐 复方鳖甲软肝片 0.5g*48片?【暖春行狂欢，特享抄底价】低至70元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '70', ' 120.00', '现在有货');
INSERT INTO `kad` VALUES ('66', '../images/CgAgEVlMY-2AP_VuAAGDlHh9ckI246.jpg_180x180.jpg', null, '思美泰 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至180元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '180', ' 267.00', '现在有货');
INSERT INTO `kad` VALUES ('67', '../images/CgAgEVZC10CASvbwAAAgANjY2pQ33.jpeg', null, '贺维力 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至214元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '214', ' 312.00', '现在有货');
INSERT INTO `kad` VALUES ('68', '../images/CgAgFFwXTgqASu6XAAGy4JXU_Aw900.jpg_180x180.jpg', null, '维力青 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至66元！满40盒送黑枸杞养生大礼..? ', '68', ' 149.00', '现在有货');
INSERT INTO `kad` VALUES ('69', '../images/CgAgEVag422AdYaMAAAgAC5PJwU10.jpeg', null, '999 茵栀黄口服液 10ml*10支?【暖春行狂欢，特享抄底价】低至36元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '36', ' 42.00', '现在有货');
INSERT INTO `kad` VALUES ('70', '../images/CgAgFVuiB_GABh4DAAGSfroYmss999.jpg_180x180.jpg', null, '贺普丁 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至148元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '148', ' 244.00', '现在有货');
INSERT INTO `kad` VALUES ('71', '../images/CgAgEFcXVjGALiApAAGr_y4Vjkc845.jpg_180x180.jpg', null, '丁贺 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至48元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '48', ' 95.00', '现在有货');
INSERT INTO `kad` VALUES ('72', '../images/CgAgEVi42rmAP4J1AAHPmQIRtmA605.jpg_180x180.jpg', null, '代丁 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至108元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '108', ' 180.00', '现在有货');
INSERT INTO `kad` VALUES ('73', '../images/CgAgEVez2K6AWlv6AAGaYG306xo415.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至39.5元！满40盒送黑枸杞养生大..? ', '40', ' 170.00', '现在有货');
INSERT INTO `kad` VALUES ('74', '../images/CgAgFVv86gSABESWAAF1UpZqCRE147.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片*4板/盒?【暖春行狂欢，特享抄底价】低至156元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜..? ', '156', ' 450.00', '现在有货');
INSERT INTO `kad` VALUES ('75', '../images/CgAgEFag6Y2AJJEjAAAOUNDsoJY81.jpeg', null, '达尔玛 多廿烷醇片 10mg*7片?【暖春行狂欢，特享抄底价】低至132元起！满20盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '132', ' 235.00', '现在有货');
INSERT INTO `kad` VALUES ('76', '../images/CgAgEFag6zSAK-x2AAAgAGw8aOc29.jpeg', null, '艾普丁 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】低至66元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '66', ' 150.00', '现在有货');
INSERT INTO `kad` VALUES ('77', '../images/CgAgEVag7BqAKf-HAAAgADt-jTk56.jpeg', null, '世博金都 六味五灵片 0.5g*60片?【暖春行狂欢，特享抄底价】低至105元起！满20盒送黑枸杞养生大礼包；满15盒送百花蜂蜜..? ', '105', ' 173.00', '现在有货');
INSERT INTO `kad` VALUES ('78', '../images/CgAgEFag53qAFfRDAAAgALZnBqU51.jpeg', null, '粤宝 阿德福韦酯片 10mg*28片?【暖春行狂欢，特享抄底价】低至78元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜；..? ', '78', ' 159.00', '现在有货');
INSERT INTO `kad` VALUES ('79', '../images/CgAgEVgAUM2AANHgAAHSla4RQLs361.jpg_180x180.jpg', null, '百赛诺 双环醇片 25mg*18片?【暖春行狂欢，特享抄底价】低至65元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '65', ' 105.00', '现在有货');
INSERT INTO `kad` VALUES ('80', '../images/CgAgEFag6VGASgRVAAAgAL4_VM463.jpeg', null, '和恩 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至47.5元！满40盒送黑枸杞养生大..? ', '49', ' 98.00', '现在有货');
INSERT INTO `kad` VALUES ('81', '../images/CgAgFVwXViGAIX4jAAFK8bIUSwU202.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*10片?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至92.5元！满27盒送黑枸杞养生大..? ', '96', ' 216.00', '现在有货');
INSERT INTO `kad` VALUES ('82', '../images/CgAgEFlMhQGAaxOiAAHeoFDxVk8005.jpg_180x180.jpg', null, '片仔癀 片仔癀胶囊 0.3g*6粒*2板/盒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满20盒送黑枸杞养生大礼包；满15盒送百花..? ', '600.00', ' 699.00', '现在有货');
INSERT INTO `kad` VALUES ('83', '../images/CgAgEFkRGlqAWMkzAAGdV-ye0CA034.jpg_180x180.jpg', null, '和恩 恩替卡韦分散片 0.5mg*7片*2板/盒?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至75.5元！满26盒送黑枸杞养生大..? ', '78', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('84', '../images/CgAgEFi81UWAQA2NAAG2ZIqwRFQ338.jpg_180x180.jpg', null, '步长 胆石利通片 0.45g*54片?【暖春行狂欢，特享抄底价】低至26.8元起！满20盒送黑枸杞养生大礼包；满10盒送百花蜂..? ', '26.8', ' 38.00', '现在有货');
INSERT INTO `kad` VALUES ('85', '../images/CgAgFFuHwzqAZFBEAAE6K0sA2bM758.jpg_180x180.jpg', null, '甘泽 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】低至55元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '55', ' 165.00', '现在有货');
INSERT INTO `kad` VALUES ('86', '../images/CgAgEFfrb5yARBFFAAHEnCh86TI394.jpg_180x180.jpg', null, '喜美欣 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至155元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '155', ' 224.40', '现在有货');
INSERT INTO `kad` VALUES ('87', '../images/CgAgEFc0NrmAQNEdAAKwg2jO2j8054.jpg_180x180.jpg', null, '雷易得 恩替卡韦分散片 0.5mg*14片?【暖春行狂欢，特享抄底价】低至135元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '135', ' 320.00', '现在有货');
INSERT INTO `kad` VALUES ('88', '../images/CgAgEVag5YGAdZgSAAAgAOlDD_Y64.jpeg', null, '森隆药业 安络化纤丸 6g*6袋?【暖春行狂欢，特享抄底价】低至46元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '46', ' 69.80', '现在有货');
INSERT INTO `kad` VALUES ('89', '../images/CgAgEVhH0LGAQ82TAAG1tMFAMz0147.jpg_180x180.jpg', null, '欣复诺 阿德福韦酯胶囊 10mg*10粒?【暖春行狂欢，特享抄底价】→加19元可换原品，折算低至27元！满18盒送黑枸杞养生大礼..? ', '29', ' 110.00', '现在有货');
INSERT INTO `kad` VALUES ('90', '../images/CgAgEVepRd2ALnLFAAG8AS_KJG0863.jpg_180x180.jpg', null, '阿甘定 阿德福韦酯片 10mg*10片?【暖春行狂欢，特享抄底价】→加23元可换原品，折算低至32.5元！满18盒送黑枸杞养生大..? ', '34', ' 125.00', '现在有货');
INSERT INTO `kad` VALUES ('91', '../images/CgAgFFv87cGARoIaAAF-1aH3cyM212.jpg_180x180.jpg', null, '阿甘定 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至43.5元！满18盒送黑枸杞养生大..? ', '45', ' 148.50', '现在有货');
INSERT INTO `kad` VALUES ('92', '../images/CgAgEFbWZ1WAA4wZAAG8KK7YiUg023.jpg_180x180.jpg', null, '健甘灵 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至56元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '56', ' 88.00', '现在有货');
INSERT INTO `kad` VALUES ('93', '../images/CgAgFFwE7kSAbKCpAAGIH4WUwTw510.jpg_180x180.jpg', null, '片仔癀牌 片仔癀 3g*1粒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满30盒送黑枸杞养生大礼包；满20盒送百花..? ', '530.00', ' 630.00', '现在有货');
INSERT INTO `kad` VALUES ('94', '../images/CgAgEFg2VbOAcoW4AAHStvy26JE622.jpg_180x180.jpg', null, '恩甘定 恩替卡韦胶囊 0.5mg*7粒 【暖春行狂欢，特享抄底价】→加31.8元可换原品，折算低至46.8元！满40盒送黑枸杞养生.. ', '48', ' 112.00', '现在有货');
INSERT INTO `kad` VALUES ('95', '../images/CgAgFFwt0weASX4sAAF3eUchIn4151.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至70元！满40盒送黑枸杞养生大礼..? ', '72', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('96', '../images/CgAgEVag6uSAG7TeAAAgAIgECJ440.jpeg', null, '贺甘定 拉米夫定片 0.1g*7片*2板?【暖春行狂欢，特享抄底价】低至49元起！满26盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '49', ' 119.00', '现在有货');
INSERT INTO `kad` VALUES ('97', '../images/CgAgEVWKRJiAB6OaAAIkDB9TWtw759.jpg', null, '贺甘定 拉米夫定片 0.1g*7片*2板?【暖春行狂欢，特享抄底价】低至49元起！满26盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '49', '119.00', '现在有货');
INSERT INTO `kad` VALUES ('98', '../images/CgAgFVwt0xaAcdDWAAEkfG-3v_o489.jpg', null, '维力青 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至70元！满40盒送黑枸杞养生大礼..? ', '72', '198.00', '现在有货');
INSERT INTO `kad` VALUES ('99', '../images/CgAgEVg2WESAPk_UAAFzx2mFdrM160.JPG', null, '恩甘定 恩替卡韦胶囊 0.5mg*7粒 【暖春行狂欢，特享抄底价】→加31.8元可换原品，折算低至46.8元！满40盒送黑枸杞养生.. ', '48', '112.00', '现在有货');
INSERT INTO `kad` VALUES ('100', '../images/CgAgFFwE7kSAbKCpAAGIH4WUwTw510.jpg', null, '片仔癀牌 片仔癀 3g*1粒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满30盒送黑枸杞养生大礼包；满20盒送百花..? ', '530.00', '630.00', '现在有货');
INSERT INTO `kad` VALUES ('101', '../images/CgAgEFbWZ1qAblFJAAG6HEIdEnA177.jpg', null, '健甘灵 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至56元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '56', '88.00', '现在有货');
INSERT INTO `kad` VALUES ('102', '../images/CgAgEFepReSAZmY4AAG7ZKHyFu4614.jpg', null, '阿甘定 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至43.5元！满18盒送黑枸杞养生大..? ', '45', '148.50', '现在有货');
INSERT INTO `kad` VALUES ('103', '../images/CgAgEVepRd2ALnLFAAG8AS_KJG0863.jpg_180x180.jpg', 'CgAgFVv87dGADn4YAAFeJ96g6l4331.jpg', '阿甘定 阿德福韦酯片 10mg*10片?【暖春行狂欢，特享抄底价】→加23元可换原品，折算低至32.5元！满18盒送黑枸杞养生大..? ', '42', '125.00', '现在有货');
INSERT INTO `kad` VALUES ('104', '../images/CgAgEVhH0LyAAtozAAGgwz1eows065.jpg', null, '欣复诺 阿德福韦酯胶囊 10mg*10粒?【暖春行狂欢，特享抄底价】→加19元可换原品，折算低至27元！满18盒送黑枸杞养生大礼..? ', '29', '110.00', '现在有货');
INSERT INTO `kad` VALUES ('105', '../images/CgAgEVag5YGAdZgSAAAgAOlDD_Y64.jpeg', null, '森隆药业 安络化纤丸 6g*6袋?【暖春行狂欢，特享抄底价】低至46元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '46', ' 69.80', '现在有货');
INSERT INTO `kad` VALUES ('106', '../images/CgAgEFc0NrmAQNEdAAKwg2jO2j8054.jpg_180x180.jpg', null, '雷易得 恩替卡韦分散片 0.5mg*14片?【暖春行狂欢，特享抄底价】低至135元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '135', ' 320.00', '现在有货');
INSERT INTO `kad` VALUES ('107', '../images/CgAgEFfrb5yARBFFAAHEnCh86TI394.jpg_180x180.jpg', null, '喜美欣 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至155元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '155', ' 224.40', '现在有货');
INSERT INTO `kad` VALUES ('108', '../images/CgAgFFuHwzqAZFBEAAE6K0sA2bM758.jpg_180x180.jpg', null, '甘泽 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】低至55元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '55', ' 165.00', '现在有货');
INSERT INTO `kad` VALUES ('109', '../images/CgAgEFi81UWAQA2NAAG2ZIqwRFQ338.jpg_180x180.jpg', null, '步长 胆石利通片 0.45g*54片?【暖春行狂欢，特享抄底价】低至26.8元起！满20盒送黑枸杞养生大礼包；满10盒送百花蜂..? ', '26.8', ' 38.00', '现在有货');
INSERT INTO `kad` VALUES ('110', '../images/CgAgEFkRGlqAWMkzAAGdV-ye0CA034.jpg_180x180.jpg', null, '和恩 恩替卡韦分散片 0.5mg*7片*2板/盒?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至75.5元！满26盒送黑枸杞养生大..? ', '78', ' 198.00', '现在有货');
INSERT INTO `kad` VALUES ('111', '../images/CgAgEFlMhQGAaxOiAAHeoFDxVk8005.jpg_180x180.jpg', null, '片仔癀 片仔癀胶囊 0.3g*6粒*2板/盒?【暖春行狂欢，特享抄底价】咨询药师更优惠！满20盒送黑枸杞养生大礼包；满15盒送百花..? ', '600.00', ' 699.00', '现在有货');
INSERT INTO `kad` VALUES ('112', '../images/CgAgFVwXViGAIX4jAAFK8bIUSwU202.jpg_180x180.jpg', null, '维力青 恩替卡韦分散片 0.5mg*10片?【暖春行狂欢，特享抄底价】→加59元可换原品，折算低至92.5元！满27盒送黑枸杞养生大..? ', '96', ' 216.00', '现在有货');
INSERT INTO `kad` VALUES ('113', '../images/CgAgEFag6VGASgRVAAAgAL4_VM463.jpeg', null, '和恩 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至47.5元！满40盒送黑枸杞养生大..? ', '49', ' 98.00', '现在有货');
INSERT INTO `kad` VALUES ('114', '../images/CgAgEVgAUM2AANHgAAHSla4RQLs361.jpg_180x180.jpg', null, '百赛诺 双环醇片 25mg*18片?【暖春行狂欢，特享抄底价】低至65元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '65', ' 105.00', '现在有货');
INSERT INTO `kad` VALUES ('115', '../images/CgAgEFag53qAFfRDAAAgALZnBqU51.jpeg', null, '粤宝 阿德福韦酯片 10mg*28片?【暖春行狂欢，特享抄底价】低至78元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜；..? ', '78', ' 159.00', '现在有货');
INSERT INTO `kad` VALUES ('116', '../images/CgAgEVag7BqAKf-HAAAgADt-jTk56.jpeg', null, '世博金都 六味五灵片 0.5g*60片?【暖春行狂欢，特享抄底价】低至105元起！满20盒送黑枸杞养生大礼包；满15盒送百花蜂蜜..? ', '105', ' 173.00', '现在有货');
INSERT INTO `kad` VALUES ('117', '../images/CgAgEFag6zSAK-x2AAAgAGw8aOc29.jpeg', null, '艾普丁 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】低至66元起！满40盒送黑枸杞养生大礼包；满26盒送百花蜂蜜..? ', '66', ' 150.00', '现在有货');
INSERT INTO `kad` VALUES ('118', '../images/CgAgEFag6Y2AJJEjAAAOUNDsoJY81.jpeg', null, '达尔玛 多廿烷醇片 10mg*7片?【暖春行狂欢，特享抄底价】低至132元起！满20盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '132', ' 235.00', '现在有货');
INSERT INTO `kad` VALUES ('119', '../images/CgAgFVv86gSABESWAAF1UpZqCRE147.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片*4板/盒?【暖春行狂欢，特享抄底价】低至156元起！满10盒送黑枸杞养生大礼包；满6盒送百花蜂蜜..? ', '156', ' 450.00', '现在有货');
INSERT INTO `kad` VALUES ('120', '../images/CgAgEVez2K6AWlv6AAGaYG306xo415.jpg_180x180.jpg', null, '贝双定 恩替卡韦分散片 0.5mg*7片?【暖春行狂欢，特享抄底价】→加29元可换原品，折算低至39.5元！满40盒送黑枸杞养生大..? ', '40', ' 170.00', '现在有货');
INSERT INTO `kad` VALUES ('121', '../images/CgAgEVi42rmAP4J1AAHPmQIRtmA605.jpg_180x180.jpg', null, '代丁 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至108元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '108', ' 180.00', '现在有货');
INSERT INTO `kad` VALUES ('122', '../images/CgAgEFcXVjGALiApAAGr_y4Vjkc845.jpg_180x180.jpg', null, '丁贺 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至48元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '48', ' 95.00', '现在有货');
INSERT INTO `kad` VALUES ('123', '../images/CgAgFVuiB_GABh4DAAGSfroYmss999.jpg_180x180.jpg', null, '贺普丁 拉米夫定片 0.1g*14片?【暖春行狂欢，特享抄底价】低至148元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '148', ' 244.00', '现在有货');
INSERT INTO `kad` VALUES ('124', '../images/CgAgEVag422AdYaMAAAgAC5PJwU10.jpeg', null, '999 茵栀黄口服液 10ml*10支?【暖春行狂欢，特享抄底价】低至36元起！满30盒送黑枸杞养生大礼包；满20盒送百花蜂蜜..? ', '36', ' 42.00', '现在有货');
INSERT INTO `kad` VALUES ('125', '../images/CgAgFFwXTgqASu6XAAGy4JXU_Aw900.jpg_180x180.jpg', null, '维力青 恩替卡韦胶囊 0.5mg*7粒?【暖春行狂欢，特享抄底价】→加39元可换原品，折算低至66元！满40盒送黑枸杞养生大礼..? ', '68', ' 149.00', '现在有货');
INSERT INTO `kad` VALUES ('126', '../images/CgAgEVZC10CASvbwAAAgANjY2pQ33.jpeg', null, '贺维力 阿德福韦酯片 10mg*14片?【暖春行狂欢，特享抄底价】低至214元起！满18盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '214', ' 312.00', '现在有货');
INSERT INTO `kad` VALUES ('127', '../images/CgAgEVlMY-2AP_VuAAGDlHh9ckI246.jpg_180x180.jpg', null, '思美泰 丁二磺酸腺苷蛋氨酸肠溶片 0.5g*10片?【暖春行狂欢，特享抄底价】低至180元起！满18盒送黑枸杞养生大礼包；满12盒送百花蜂蜜..? ', '180', ' 267.00', '现在有货');
INSERT INTO `kad` VALUES ('128', '../images/CgAgEFdWis6AQfNTAAGoSKVzkPY856.jpg_180x180.jpg', null, '回乐 复方鳖甲软肝片 0.5g*48片?【暖春行狂欢，特享抄底价】低至70元起！满45盒送黑枸杞养生大礼包；满30盒送百花蜂蜜..? ', '70', ' 120.00', '现在有货');

-- ----------------------------
-- Table structure for kad_cart
-- ----------------------------
DROP TABLE IF EXISTS `kad_cart`;
CREATE TABLE `kad_cart` (
  `uid` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `oldPrice` float(40,0) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `discounts` float(40,0) DEFAULT NULL,
  `danjia` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kad_cart
-- ----------------------------
INSERT INTO `kad_cart` VALUES ('1', '../images/CgAgEVWKRJiAB6OaAAIkDB9TWtw759.jpg', '贺甘定 拉米夫定片 0.1g*7片*2板?【暖春行狂欢，特享抄底价】低至49元起！满26盒送黑枸杞养生大礼包；满13盒送百花蜂蜜..? ', '119', '1', '70', '49');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(16) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `avatar` tinyint(1) unsigned DEFAULT '1',
  `login_key` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('11', 'laolin', '25d687e2c7e715b2f1c9bc30a47b0863', '1', null);
INSERT INTO `users` VALUES ('10', 'longge', 'e10adc3949ba59abbe56e057f20f883e', '1', null);
INSERT INTO `users` VALUES ('9', 'qwe123', 'e10adc3949ba59abbe56e057f20f883e', '1', null);
INSERT INTO `users` VALUES ('12', 'xiaofei', '6cf82ee1020caef069e753c67a97a70d', '1', null);

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `uid` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL,
  `psw` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', 'peisen', '123456');
INSERT INTO `user_inf` VALUES ('3', 'haiwen', '789123');
INSERT INTO `user_inf` VALUES ('4', 'longge', '654321');
INSERT INTO `user_inf` VALUES ('21', 'laolin', '147258369');
INSERT INTO `user_inf` VALUES ('22', 'laoxie', '123456789');
INSERT INTO `user_inf` VALUES ('23', 's13922952296', '13922952296');
INSERT INTO `user_inf` VALUES ('24', 'lingeo', '123456789');
INSERT INTO `user_inf` VALUES ('26', '13922952296', 's123456');
INSERT INTO `user_inf` VALUES ('45', '13712201911', 'asd123456');
INSERT INTO `user_inf` VALUES ('46', '13794909970', 's123456');
INSERT INTO `user_inf` VALUES ('47', '13168437963', 'longge123');
INSERT INTO `user_inf` VALUES ('48', '18888888888', 's123456');
INSERT INTO `user_inf` VALUES ('49', '13794909971', 's123456');

-- ----------------------------
-- Table structure for xm
-- ----------------------------
DROP TABLE IF EXISTS `xm`;
CREATE TABLE `xm` (
  `gid` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tongk` varchar(255) NOT NULL,
  `xiangs` varchar(255) NOT NULL,
  `rmb` varchar(255) NOT NULL,
  `jiaq` varchar(255) NOT NULL,
  `zhifu` varchar(255) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  `dianp` varchar(255) NOT NULL,
  `chengs` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xm
-- ----------------------------
INSERT INTO `xm` VALUES ('1', 'images/img_left.webp', '找同款', '找相似', '￥', '599', '1287人付款', '赫本风2018冬季新宽松小个子中长款双面呢大衣女零羊绒', '超慕旗舰店', '浙江 嘉兴');
INSERT INTO `xm` VALUES ('2', 'images/img_center1.webp', '找同款', '找相似', '￥', '2657', '940人付款', 'YINER音儿2018冬新款纯色水貂毛领短款羊剪毛外套女', '超慕旗舰店', '浙江 杭州');
INSERT INTO `xm` VALUES ('3', 'images/img_center2.webp', '找同款', '找相似', '￥', '1499', '1805人付款', '韩版阿尔巴卡羊绒呢大衣2018秋冬新款过膝长款羊毛双面呢子', '依焚希娜旗舰店', '浙江 嘉兴');
INSERT INTO `xm` VALUES ('4', 'images/img_right.webp', '找同款', '找相似', '￥', '458', '1290人付款', '新款双面呢大衣女中长款过膝100%25羊毛高端呢子 赫本风零羊绒', '以美红杉旗舰店', '山东 济南');
SET FOREIGN_KEY_CHECKS=1;
