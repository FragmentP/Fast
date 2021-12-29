/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL80
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : tour_db

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 09/06/2021 19:21:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');
INSERT INTO `admin` VALUES ('root', 'root');

-- ----------------------------
-- Table structure for t_dzline
-- ----------------------------
DROP TABLE IF EXISTS `t_dzline`;
CREATE TABLE `t_dzline`  (
  `lineId` int(11) NOT NULL AUTO_INCREMENT COMMENT '线路id',
  `lineName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路名称',
  `linePhoto` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路图片',
  `startPlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出发地',
  `zhuti` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品主题',
  `linePrice` float NOT NULL COMMENT '线路价格',
  `lineDesc` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '线路描述',
  `tuijianFlag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否推荐',
  `hitNum` int(11) NOT NULL COMMENT '点击率',
  `addTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`lineId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dzline
-- ----------------------------
INSERT INTO `t_dzline` VALUES (1, '【踏春赏樱】韩国江原道5日定制游', 'upload/1598d309-0421-489f-aee6-5e26c6012f34.jpg', '北京', '情侣蜜月 亲密自然', 6980, '<ul class=\" list-paddingleft-2\"><li><p>酒店：</p></li><li><p>精选当地特色豪华酒店，带给您舒适旅程。</p></li><li><p>车导：</p></li><li><p>专业的司机兼导游，带您深度体验韩国。</p></li><li><p>航班：</p></li><li><p>国航直飞航班，免去您转机的烦恼。</p></li><li><p>亮点：</p></li><li><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 23px;\">【樱花庆典】三月里，可以看到镜浦台的樱花庆典漫步在4.3公里长的樱花丛中，旁边是湛蓝的韩国东海，沐浴在温馨浪漫的庆典氛围里；&nbsp;<br/>【文礼古都】江陵是江原道东海岸最大的城市，保存有江原道丰富的文化遗产和传统文化；&nbsp;<br/>【镜浦台】镜浦台包括镜浦湖及东海海岸一带，在这里可欣赏到日出和海上明月等景观。海边绵延6公里的白沙滩，是天然的海水浴场，夏季的避暑胜地；&nbsp;<br/>【韩剧取景地】《宫》、《公主的男人》、《漏沙》等韩剧的在江陵取景，最近大火的《孤单又灿烂的神-鬼怪》也有在江原道取景；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 23px;\"><br/></p></li></ul><p>导游信息</p><p>导游身份：当地土著<br/>导游经验：3年以上<br/>导游类型：司机兼导游（双语+导游证）<br/>擅长领域：韩国<br/>语言能力：中文</p><p><br/></p>', '是', 29, '2021-04-08 17:57:16');
INSERT INTO `t_dzline` VALUES (2, '【古寺樱雨】东京+大阪+京都8天定制游', 'upload/6eb226ee-3dfd-4007-bfc4-1ee6d9c1327c.jpg', '北京', '情侣蜜月 探秘文化', 18888, '<ul class=\" list-paddingleft-2\"><li><p>酒店：</p></li><li><p>全程星级精品酒店</p></li><li><p>用车：</p></li><li><p>专业司机，安全保障；</p></li><li><p>亮点：</p></li><li><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 23px;\">【樱花百选】特别前往“樱花百选”名胜地-新宿御苑、千鸟渊、清水寺，换360个姿势赏樱花；&nbsp;<br/>【灿烂童话】走进童心满满的迪士尼，重返十七岁的快乐与无邪；&nbsp;<br/>【动感东京】银座、新宿、六本木，游走东京最繁华时尚的街头；&nbsp;<br/>【千年古都】在充满历史感的古刹中，感受日式茶道的悠远、宁静，体验身着和服的优雅意韵；&nbsp;<br/>【都市美宿】国际连锁四、五星，优享极致服务，城市美景，尽收眼底；&nbsp;<br/>【饕餮盛宴】打开舌尖的幸福开关，地道日式料理、关西小吃、米其林星级料理……一网打尽。</p></li></ul><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;MicroSoft YaHei&quot;, arail, sans-sarif; font-size: 14px; background-color: rgb(255, 255, 255);\">行程：</span></p><p>【新宿御苑】东京樱花品种最多之处，在这里才能看到最多的其他种类樱花。</p><p>【东京塔】在东京铁塔第一次眺望，红白相间的塔身在樱花的映衬下更加的可爱动人，登上铁塔，讲东京尽收眼底。</p><p>【千鸟渊绿道】皇居的护城河边有一条约700米长的游漫步道，沿道种植约260株樱花树，晚上还会进行夜晚灯光照明。如果不介意排队，可以乘坐护城河上的手划游船，感受“樱吹雪”的美丽意境。</p><p>晚餐推荐：【银座寿司荣】寿司职人将一生的热情都倾注在指尖的握捏中，带来绽放味蕾的美食。</p><p><br/></p>', '是', 22, '2021-04-09 09:31:48');

-- ----------------------------
-- Table structure for t_leaveword
-- ----------------------------
DROP TABLE IF EXISTS `t_leaveword`;
CREATE TABLE `t_leaveword`  (
  `leaveWordId` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `leaveTitle` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言标题',
  `leaveContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `userObj` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言人',
  `leaveTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言时间',
  `replyContent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理回复',
  `replyTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`leaveWordId`) USING BTREE,
  INDEX `userObj`(`userObj`) USING BTREE,
  CONSTRAINT `t_leaveword_ibfk_1` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_leaveword
-- ----------------------------
INSERT INTO `t_leaveword` VALUES (3, '留言测试', '这是一条留言测试', 'fragment', '2021-04-24 23:09:39', '测试成功', '2021-04-24 23:11:38');
INSERT INTO `t_leaveword` VALUES (4, '这是一条新的留言测试标题', '这是一条新的留言测试内容', 'fragment', '2021-05-02 13:34:39', '--', '--');
INSERT INTO `t_leaveword` VALUES (5, '建议增加更多景点', '景点太少了，希望增加更多的景点', 'fragment', '2021-06-02 14:35:22', '--', '--');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `publishDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`noticeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, '捷行公告标题测试', '<p>公告内容测试</p>', '2021-04-08 17:51:34');
INSERT INTO `t_notice` VALUES (2, '欢迎来到行捷旅游景点票务系统', '欢迎光临', '2021-05-10 17:10:34');

-- ----------------------------
-- Table structure for t_tour
-- ----------------------------
DROP TABLE IF EXISTS `t_tour`;
CREATE TABLE `t_tour`  (
  `tourId` int(11) NOT NULL AUTO_INCREMENT COMMENT '旅游id',
  `tourName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '旅游景点名称',
  `tourPhoto` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '旅游图片',
  `startPlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出发地',
  `endPlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目的地',
  `tourPrice` float NOT NULL COMMENT '旅游价格',
  `tourDesc` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '旅游景点介绍',
  `tuijianFlag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否推荐',
  `hitNum` int(11) NOT NULL COMMENT '浏览次数',
  `addTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`tourId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tour
-- ----------------------------
INSERT INTO `t_tour` VALUES (1, '北海道札幌', 'upload/49dc6e72-e34c-4b89-8709-a6213ca5088a.jpg', '南京', '北海道', 1799, '<p>费用说明</p><h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">费用包含</h3><p>1. 机票：南京直飞札幌往返含税机票<br/>2.&nbsp;行李额：2件行李托运，每件23kg</p><h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">费用不包含</h3><ol class=\" list-paddingleft-2\" style=\"list-style-type: decimal;\"><li><p>酒店住宿费用；<br/>2. 单次个人旅游签证；<br/>3. 接送机：当地机场至酒店往返费用；<br/>4. 旅游人身意外保险。建议购买旅游人身意外保险；<br/>5. 因交通延阻、战争、政变、罢工、大风、大雾、飞机故障、航班取消或更改时间等不可抗力原因所引致的额外费用；<br/>6. 一切个人消费以及“费用包含”中未提及的任何费用。</p></li></ol><p><br/></p><p><span class=\"part_xz\" style=\"display: inline-block; float: left; margin-right: 10px; margin-top: 3px; background: url(&quot;/images-2.1/travel/detailicon.png&quot;) -96px -245px no-repeat; width: 50px; height: 40px;\"></span>预订须知</p><h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">预订条款</h3><p>2018年5月航班换季<br/>HO1367 南京-札幌 1030-1600<br/>HO1368 札幌-南京 1700-2100</p><h3 class=\"mt20\" style=\"margin: 20px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">退改政策</h3><p>特价产品，用户支付成功后不得做任何变更，也不予退款，敬请您阅知并认清相关标签</p><p><br/></p>', '是', 38, '2021-04-08 17:49:20');
INSERT INTO `t_tour` VALUES (2, '日本冲绳', 'upload/b488b6ab-2e08-4f6c-b047-d64389042a3c.jpg', '杭州', '冲绳', 1850, '<h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">费用包含</h3><p>杭州-冲绳往返机票（含税）</p><h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">费用不包含</h3><p>1、护照、签证费用<br/>2、当地住宿<br/>3、以上“费用包含”中未注明的各项费用&nbsp;</p><p>4、其它个人消费</p><p><span class=\"part_xz\" style=\"display: inline-block; float: left; margin-right: 10px; margin-top: 3px; background: url(&quot;/images-2.1/travel/detailicon.png&quot;) -96px -245px no-repeat; width: 50px; height: 40px;\"></span>预订须知</p><h3 style=\"margin: 0px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">预订条款</h3><p>1、签证需自备<br/>2、一人即可出票，保证成行<br/>3、直飞航班，标明航班时刻均为当地时间，如有变动以航空公司公布时刻为准<br/>4、不得更改、签转、退票<br/>5、我社保留因航空公司机位调整、燃油税上涨及不可抗力等因素或调整价格及出发日期的权利</p><h3 class=\"mt20\" style=\"margin: 20px 0px 10px; padding: 0px; font-size: 14px; border-bottom: none; color: rgb(51, 51, 51);\">退改政策</h3><p>特价产品，用户支付成功后不得做任何变更，也不予退款，敬请您阅知并认清相关标签</p><p><br/></p>', '是', 31, '2021-04-09 09:26:09');
INSERT INTO `t_tour` VALUES (3, '浪漫哈尔滨', 'upload/fdda3f2c-a2a5-483c-bd5d-5b6b50d9769f.jpg', '哈尔滨', '哈尔滨', 1499, '<p>费用包含：</p><p>1、住宿：哈尔滨君逸酒店3晚连住（酒店房型安排双床房，如有入住特殊需求&lt;例：大床房/三人间等&gt;，请提前联系客服确认，尽量安排！）；</p><p>2、餐食：包含酒店早餐；</p><p>3、儿童费用说明：年龄2-12周岁（不含），不占床、不含早餐；</p><p>4、机票：含往返机票（已含机建、燃油税）；</p><p>5、服务：24小时专车接送机服务。</p><p>&nbsp;费用不含：</p><p>1、餐食：不含中餐晚餐（仅作推荐，丰俭由人）</p><p>2、行程中所列推荐景点门票、娱乐项目</p><p>3、用车：如有当地用车需求，预定时可在“下一步-选择附加产品”选择；</p><p>4、服务：全程无司机、导游服务；</p><p>5、费用包含以外的所有其他个人费用。</p>', '是', 9, '2021-04-29 18:42:49');
INSERT INTO `t_tour` VALUES (4, '上海迪士尼度假区', 'upload/61387a5f-86b3-4475-b393-79674fbb7a03.jpg', '上海', '上海', 699, '<p>景点介绍</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">上海迪士尼度假区位于上海浦东新区，是中国大陆第一个迪士尼度假区，你可以在此亲历许多全球迪士尼乐园中的“第一”，包括较大的迪士尼城堡、以海盗为主题的园区、较长的迪士尼花车巡游路线等，身临其境地感受神奇王国。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">迪士尼乐园</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">上海迪士尼乐园分为七个各具特色的主题园区，包括“米奇大街”、“奇想花园”、“梦幻世界”、“迪士尼·皮克斯玩具总动员”、“探险岛”、“宝藏湾”和“明日世界”。无论男女老少都能在这里找到快乐的天地。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#米奇大街#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">一进入迪士尼乐园门口，便步入了“米奇大街”。米妮、唐老鸭、黛丝、高飞以及布鲁托等一众伙伴将在这里欢聚，你可以在这里与喜爱的迪士尼朋友热情拥抱、合影留念。在大街上五花八门的商铺中，“M大街购物廊”将提供乐园内丰富的礼品和纪念品选择。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#奇想花园#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">奇想花园由7片不同风格的神奇小花园组成，你可以驾着“幻想曲旋转木马”回旋在欢乐中，或是乘坐“小飞象”翱翔天空，还有城堡舞台秀和“奇梦之光幻影秀”等多项标志性迪士尼娱乐演出可供观赏。游客还能在这里从不同角度欣赏全球路线较长的迪士尼主题花车巡游——“米奇童话专列”。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#梦幻世界#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">梦幻世界是乐园中较大的园区，也是宏伟壮丽的“奇幻童话城堡”所在地。在这个如童话般的仙境中，动画控们可以伴着小熊维尼探索百亩森林，和爱丽丝一起在梦游仙境迷宫中穿行，与七个小矮人一同乘坐矿山车探险，登上“小飞侠天空奇遇”飞船横越伦敦的天空，或是跟着“晶彩奇航”蜿蜒漂流过一个个熟悉的迪士尼故事。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#迪士尼·皮克斯玩具总动员#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">在这里，你可以坐上“弹簧狗”的螺旋形弹簧，欢快地围着一个盛满了玩具骨头的大狗盘绕圈，“抱抱龙”将邀请大家坐上遥控冲天赛车，在长长的“U”型轨道上开启一段刺激的冒险旅程，除此之外，你还可以在“艾尔玩具店”，购买你喜欢的游戏、玩具、服饰、徽章等。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#探险岛#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">来到探险岛，仿佛置身于新发现的远古部落中。巍峨的雷鸣山将为你的探险岛之旅指出明确的方向。你可以在“古迹探索营”中走出自己的探险之路，或是在“翱翔•飞越地平线”里横跨世界和时空，坐上“雷鸣山漂流”的筏艇深入探险岛腹地，探索一只庞大神秘巨兽所在的黑暗领域。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#宝藏湾#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">“宝藏湾”是全球迪士尼乐园中第一个以海盗为主题的园区。“加勒比海盗——沉落宝藏之战”将水载乘坐项目变为惊险刺激的大冒险，富有探险精神的游客们还可以划着“探险家独木舟”畅美丽海湾，踏上海盗船的甲板，在“巴波萨烧烤”大快朵颐。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">#明日世界#</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">“明日世界”充满了无尽可能并展现出未来光明的愿景。星际探险项目“巴斯光年星际营救”带领游客们勇往直前、超越无限；“喷气背包飞行器”让人们突破重力束缚；“创极速光轮”包裹在巨大的半透明穹顶建筑下，幻化着不同光彩，吸引游客跨上两轮光轮摩托队列，挑战全球迪士尼乐园中较为紧张刺激的过山车项目之一。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">迪士尼小镇</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">迪士尼小镇是上海迪士尼度假区的大型购物餐饮娱乐区，毗邻上海迪士尼乐园，并将向公众免费开放。国际化的迷人街区令人流连忘返，游客可以在享用美食的同时观赏到上海迪士尼乐园的迷人景色。而位于“迪士尼小镇”的“华特迪士尼大剧院”，上演经典百老汇音乐剧，看剧单独售票。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">园区餐饮</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">迪士尼乐园中有巴波萨烧烤、皇室宴会厅、皮诺丘乡村厨房、部落丰盛堂、米奇好伙伴美味集市、星露台餐厅、小米大厨烘培坊、漫月轩、老藤树食栈等多家主题餐厅，散布在各个主题园区内，东西方菜系的丰富美食、特色点心和诱人甜品一应俱全，让你的神奇之旅回味无穷。</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\"><span style=\"box-sizing: border-box;font-weight: bolder\">主题酒店</span></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 10px;padding: 0px;line-height: 18px\"><span style=\"font-family:Source Sans Pro\">“上海迪士尼乐园酒店”和“上海玩具总动员酒店”紧邻上海迪士尼乐园，优越的地理位置将迪士尼神奇之旅从白天延续到夜晚。两家酒店结合了迪士尼故事讲述的主题设计，并将为宾客提供温馨周到的服务、丰富多样的娱乐活动、美食飨宴、购物体验及各种休闲选择，带来蕴含中国魅力的迪士尼体验。如果在乐园中购买了商品，可以免费递送至其下榻的酒店中，另外度假区内还设有免费穿梭巴士和轮渡，往返于两座酒店和迪士尼乐园之间，交通十分方便。</span></p><p><br/></p>', '是', 11, '2021-04-29 19:19:24');
INSERT INTO `t_tour` VALUES (6, '漠河北极村', 'upload/240d1789-b8e2-436a-b6b5-288bdbbacb19.jpg', '哈尔滨', '漠河', 198, '<p>景点介绍</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">北极村坐落于大兴安岭北麓，隔着中俄界河黑龙江与俄罗斯相望，是我国地理位置上较为靠北的村子，纬度高达53°33′30″。现在的北极村已开发成一个大型景区，来这里特有意思的就是各种“找北”。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">北极村的冬季非常冷，通常低于-40℃，穿戴羽绒服、棉帽、雪地靴、棉手套、口罩等必不可少。但皑皑的白雪，和精美绝伦的雪雕和冰雕，冒着袅袅炊烟“木刻楞”民居，还是吸引了不少特地来体验这寒极之地游客。由于纬度非常高，北极村的夏季是一个很好的避暑胜地，夏季大约只有半个月。而每年夏至的前后几天，这里每天将会有近20小时可以看到太阳，这就是极昼现象。如果天气好到北极与漠河之间没有云层阻隔时，就有可能看到绚丽壮观的北极光。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">北极村有“神州北极石”、“北陲哨所”、“北极沙洲”等多个景点，全与“北”有关，你还能在这里的“邮局”寄一张盖着各种纪念戳的明信片给亲友或者自己，纪念你的“找北”足迹。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">村上离北极点、北极哨所等景点距离较远，可以乘坐景区电瓶车前往。在村里还可以租辆自行车到处看看，或是坐游船游览界江、欣赏中俄边境风光。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">交通方面，一般可先坐火车或飞机到漠河县城，然后坐班车或者包车去北极村。班车车次不多，但比较适合散客；包车更为方便，还可以顺带着玩周边的几个景点，例如“九曲十八弯”、北红村等。漠河县城到北极村需将近两个小时车程，一般在北极村玩两天一晚。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">北极村目前的住宿主要以农家旅馆为主，也有几十块钱的火炕通铺，但旅游旺季时这些至少会翻个倍。北极村里的用餐价格不算便宜，如果住在村里的农家院，可以在主人家解决餐食。现在的北极村整体上已趋向商业化，所以这里的住宿及餐饮条件都要比想象中的好些。</p><p><span class=\"showMoreBtn\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; background-image: linear-gradient(90deg, transparent, rgb(255, 255, 255) 25%); color: rgb(38, 129, 255); height: 24px; line-height: 24px; padding-left: 20px; cursor: pointer;\"><span class=\"hover-underline\" style=\"box-sizing: border-box;\">全文</span><span class=\"common-iconfont\" style=\"box-sizing: border-box; font-size: 16px; -webkit-font-smoothing: antialiased; -webkit-text-stroke-width: 0.2px; vertical-align: middle; font-family: gs-poi-online !important;\"></span></span></p><p>开放时间</p><p>全天开放</p><p>优待政策</p><p>补充说明：1、A.免费政策：儿童身高1.2米以下免票，70岁以上免票，现役军人，残疾，记者持相关证件免票。2、B.优惠政策：60-69岁之间老人半票。3、C.以上信息仅供参考，具体请以景区当天披露为准。</p><p>必看贴士</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">1. 如果是自驾车等外来车辆，是不能驶入景区的，需停放在村外停车场。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">2. 冬季时村里有马拉爬犁可以坐，时间一般为1小时。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">3. 在邮局里可以盖各种纪念章，但需收费。</p>', '是', 5, '2021-06-02 18:55:00');
INSERT INTO `t_tour` VALUES (7, '南京夫子庙', 'upload/66e8fd79-149f-4933-b116-8bb8f67edb48.jpg', '哈尔滨', '南京', 79, '<p>景点介绍</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">夫子庙始建于宋代，位于秦淮河北岸的贡院街旁，原是祀奉孔子的地方，后多次遭毁并重建。它与北京孔庙、曲阜孔庙、吉林文庙并称为中国四大文庙，也是夫子庙秦淮河风光带主要的景点。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">民间艺术大观园<br/></span>夫子庙里有一个民间艺术大观园，你可以观看现场制作灯彩、剪纸、微雕等工艺品，听地方戏曲和南京白局。进夫子庙时可以留意一下演出时间表，演出时长约10分钟。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">春节灯会<br/></span>每年春节至元宵节期间夫子庙都会举行春节灯会（又称秦淮灯会、金陵灯会），尤其元宵节时万灯齐明，游人如海。此外，夫子庙也不时地举办“雨花石展”、“古代礼仪文化展”、“古代雅乐表演”等展演活动，十分热闹。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">夫子庙建筑布局<br/></span>整个夫子庙建筑群前面是文庙，后面为学宫，布局左右对称，自南向北构成一个儒学文化中轴线。迈过棂星门和大成门，就是中心庙院。石砌甬道直通大成殿，殿前立着一尊4米多高的孔子青铜像，甬道两旁有十二贤人的汉白玉塑像。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">大成殿<br/></span>大成殿是夫子庙的主殿，里面悬挂着一幅6米多高的孔子画像，被称为中国孔庙一大杰作。大殿四壁上是38幅彩石镶嵌壁画《孔子圣迹图》，反映了孔子的生平事迹。</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">民间艺术大观园<br/></span>从大成殿后门走出就到了学宫，包括明德堂、尊经阁（即民间艺术大观园）等。大门上有清末状元秦大士题写的“东南第一学”门匾。学宫南侧矗立着四块石碑，其中《孔子问礼图碑》最为著名，记载了孔子从家乡去周王城洛阳考察典章制度的经历，可谓“镇庙之宝”。&nbsp;</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">秦淮河小吃<br/></span>参观夫子庙之余，自然还要体验一把秦淮河小吃，这一带餐饮店很多，蟹壳黄烧饼、开洋干丝、牛肉锅贴、鸡丝浇面、鸭血粉丝汤等一定要试试。另外，这里的商铺也鳞次栉比，你可以挑选一些价钱实惠又具有秦淮特色的纪念品。&nbsp;</p><p class=\"inset-p\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><p><span class=\"showMoreBtn\" style=\"box-sizing: border-box; position: absolute; right: 0px; bottom: 0px; background-image: linear-gradient(90deg, transparent, rgb(255, 255, 255) 25%); color: rgb(38, 129, 255); height: 24px; line-height: 24px; padding-left: 20px; cursor: pointer;\"><span class=\"hover-underline\" style=\"box-sizing: border-box;\">全文</span><span class=\"common-iconfont\" style=\"box-sizing: border-box; font-size: 16px; -webkit-font-smoothing: antialiased; -webkit-text-stroke-width: 0.2px; vertical-align: middle; font-family: gs-poi-online !important;\"></span></span></p><p>开放时间</p><p>2月19日-12月31日 09:00-20:00</p><p>优待政策</p><p>儿童：1.4米(含)以下，免费</p><p>老人：70周岁(含)以上凭有效证件或者身份证，免费；60周岁(含)-70周岁(不含)凭有效证件或者身份证，优惠</p><p>军人：现役军人凭军官证，免费</p><p>残疾人：凭残疾证，免费</p><p>学生：凭学生证，优惠</p><p>补充说明：游船无任何优惠政策，以上信息仅供参考，具体以景区当天披露为准</p><p>服务设施</p><p><span style=\"box-sizing: border-box; font-weight: bolder;\">停车场</span>：【来燕商城停车场】参考价格：¥8/小时；地址：来燕路与乌衣巷交汇处；库位：61</p><p><span style=\"box-sizing: border-box; font-weight: bolder;\">WIFI</span>：账号：i-NanJing-Free；密码：验证登录；范围：景区内</p><p><span style=\"box-sizing: border-box; font-weight: bolder;\">卫生间</span>：景区内设有卫生间，分别在得月台、太平天国博物馆、中华门 等设施附近，并标有醒目的指示牌。</p><p><span style=\"box-sizing: border-box; font-weight: bolder;\">便利店</span>：景区有多个便利店，位于景区主干道附近，可以支持微信支付宝支付</p><p>交通攻略</p><p>乘坐地铁3号线到夫子庙站下</p><p>必看贴士</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">1. 夫子庙里有卖香火的地方，也有游客会在学宫院内的钟鼓楼敲钟，祈盼子女学业有成，需格外收费。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">2. 到了夜晚，选择秦淮画舫夜游也是欣赏夫子庙夜景不错的选择。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">3. 夫子庙及周围景点游客众多，请注意个人财产安全。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px;\">4.&nbsp;官方微信号：qinhuai_2014 （南京秦淮旅行） 官方微博：秦淮旅游官方微博</p><p><br/></p>', '是', 2, '2021-06-02 19:42:21');

-- ----------------------------
-- Table structure for t_tourorder
-- ----------------------------
DROP TABLE IF EXISTS `t_tourorder`;
CREATE TABLE `t_tourorder`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `tourObj` int(11) NOT NULL COMMENT '旅游景点',
  `startDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发日期',
  `totalPersonNum` int(11) NOT NULL COMMENT '出行人数',
  `totalPrice` float NOT NULL COMMENT '总价格',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `orderMemo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `userObj` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单用户',
  `orderTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下单时间',
  `shzt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核状态',
  `shhf` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核回复',
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `tourObj`(`tourObj`) USING BTREE,
  INDEX `userObj`(`userObj`) USING BTREE,
  CONSTRAINT `t_tourorder_ibfk_1` FOREIGN KEY (`tourObj`) REFERENCES `t_tour` (`tourId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_tourorder_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tourorder
-- ----------------------------
INSERT INTO `t_tourorder` VALUES (1, 1, '2018-04-08', 2, 3598, '13908309834', '我要去玩', 'user1', '2018-04-08 17:50:07', '待审核', '--');
INSERT INTO `t_tourorder` VALUES (2, 2, '2018-04-30', 2, 3700, '13980983424', '这我留2个位置，我和我女朋友来！', 'user1', '2018-04-19 17:37:46', '已审核', '可以来一起去玩');
INSERT INTO `t_tourorder` VALUES (3, 1, '2021-04-14', 2, 3598, '13300000000', '', 'user1', '2021-04-13 20:04:31', '已审核', '--');
INSERT INTO `t_tourorder` VALUES (4, 6, '2021-06-02', 1, 198, '13300000000', '', 'fragment', '2021-06-02 19:45:57', '待审核', '--');
INSERT INTO `t_tourorder` VALUES (5, 4, '2021-06-03', 2, 1398, '13300000000', '', 'fragment', '2021-06-03 11:04:10', '已审核', '--');
INSERT INTO `t_tourorder` VALUES (6, 1, '2021-06-03', 2, 0, '13300000000', '', 'feather', '2021-06-03 11:24:36', '通过', '好的');
INSERT INTO `t_tourorder` VALUES (7, 7, '2021-06-03', 4, 0, '13300000000', '', 'feather', '2021-06-03 11:32:52', '通过', '111');
INSERT INTO `t_tourorder` VALUES (8, 1, '2021-06-03', 4, 3598, '13300000000', '', 'feather', '2021-06-03 11:58:05', '通过', '1111');
INSERT INTO `t_tourorder` VALUES (9, 1, '2021-06-03', 4, 0, '13300000000', '', 'feather', '2021-06-03 12:49:26', '通过', '000');

-- ----------------------------
-- Table structure for t_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo`  (
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'user_name',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `birthDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `userPhoto` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户照片',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭地址',
  `regTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('feather', '000000', '小菊花', '女', '1999-09-20', 'upload/88dde131-6f7c-426b-9c99-990379a9acf4.JPG', '13100000000', '777@qq.com', '黑龙江省哈尔滨市', '2021-05-02 14:53:58');
INSERT INTO `t_userinfo` VALUES ('fragment', '123456', 'IU', '女', '1999-09-20', 'upload/2f1dd38a-e72b-429c-a69b-11d740ccc283.jpg', '13300000000', '100@qq.com', '黑龙江省哈尔滨市哈尔滨商业大学', '2021-04-13 21:05:40');
INSERT INTO `t_userinfo` VALUES ('user1', '123', '源源子', '男', '2000-04-03', 'upload/10c1e3cb-0135-431a-a6fb-d15e101468c1.jpg', '13100000000', 'yuanice@163.com', '江苏省南京市雨花台区', '2021-04-08 17:49:04');
INSERT INTO `t_userinfo` VALUES ('user2', '123', 'feather', '女', '1999-09-20', 'upload/ce98e71e-7f12-4f57-ada3-7eb4cc216fe1.jpg', '13508300834', 'xiaorong@163.com', '', '2021-04-08 17:42:49');

SET FOREIGN_KEY_CHECKS = 1;
