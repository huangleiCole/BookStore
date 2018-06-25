DROP TABLE IF EXISTS `bs_user`;

DROP TABLE IF EXISTS `bs_address`;

DROP TABLE IF EXISTS `bs_book`;

DROP TABLE IF EXISTS `bs_category`;

DROP TABLE IF EXISTS `bs_order`;

DROP TABLE IF EXISTS `bs_orderitem`;


-- ----------------------------
-- Table structure for bs_user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_user` (
  `USERID` int(7) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `COMPANY` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;



-- ----------------------------
-- Table structure for bs_address
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_address` (
  `ADDRESSID` int(7) NOT NULL AUTO_INCREMENT,
  `AREA` varchar(40) DEFAULT NULL,
  `DETAILADDRESS` varchar(30) DEFAULT NULL,
  `EMAILCODE` varchar(30) DEFAULT NULL,
  `RECIVER` varchar(30) DEFAULT NULL,
  `TEL` varchar(30) DEFAULT NULL,
  `ISDEFAULT` char(1) DEFAULT NULL,
  `AUSER_ID` int(7) DEFAULT NULL,
  PRIMARY KEY (`ADDRESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;



-- ----------------------------
-- Table structure for bs_category
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_category` (
  `CATEID` int(7) NOT NULL AUTO_INCREMENT,
  `CATENAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `bs_category` VALUES ('1', '精选图书');
INSERT INTO `bs_category` VALUES ('2', '推荐图书');
INSERT INTO `bs_category` VALUES ('3', '特价图书');
SET FOREIGN_KEY_CHECKS=1;



-- ----------------------------
-- Table structure for bs_book
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_book` (
  `BOOKID` int(7) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `PUBLISHHOUSE` varchar(30) NOT NULL,
  `PUBLISHDATE` date DEFAULT NULL,
  `OLDPRICE` decimal(5,2) DEFAULT NULL,
  `NEWPRICE` decimal(5,2) DEFAULT NULL,
  `AUTHORLOC` varchar(30) DEFAULT NULL,
  `INFO` varchar(255) DEFAULT NULL,
  `IMAGEURL` varchar(100) DEFAULT NULL,
  `SUIT` varchar(20) DEFAULT NULL,
  `CATEGORY_ID` int(7) DEFAULT NULL,
  PRIMARY KEY (`BOOKID`),
  KEY `CATEGORY_ID` (`CATEGORY_ID`),
  CONSTRAINT `bs_book_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `bs_category` (`CATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `bs_book` VALUES ('1', '9787533946418', '北纬78°', '陈丹燕', '浙江文艺出版社', '2016-12-01', '39.00', '19.50', '中国', '一个作家，一本书，激起你行走的渴望，改变你旅行的意义。陈丹燕旅行文学。', 'beiwei78.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('2', '9787513911139', '100の大人味发现°', '吴东龙', '民主与建设出版社', '2016-11-01', '50.00', '34.50', '中国', '超文艺、超时尚、很全面的东京旅游指南！台湾销售超火！从文化和设计角度深度解读东京，并提供完美的游览、住宿和美食攻略！', '100dongjindarenweifaxian.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('3', '9787535477101', '别走，万一好笑呢°', '银教授', '长江文艺出版社', '2016-12-01', '35.00', '26.30', '中国', '微博人气博主@银教授个人作品集 银教授本人含泪自荐，希望你排着队拿着笑的号码牌，按顺序笑', 'biezouwanyihaoxiaone.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('4', '9787550019775', '此刻花开°', '徐静', '百花洲文艺出版社', '2016-12-01', '68.00', '34.30', '中国', '一场轻松自由的创作体验！风靡全球的纸雕艺术，比《秘密花园》更给力的减压新玩法。虽然我们不断被这个世界雕刻着，但我们亦可以雕刻出一个世界！', 'cikehuakai.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('5', '9787516413999', '洞见°', '项保华', '企业管理出版社', '2017-01-01', '48.00', '34.60', '中国', '通过揭示体现在决策初心、判断、选择、落实背后的人性特征与事物规律，为提升个体及组织的决策管理水平与能力提供实用的操作指导。', 'dongjian.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('6', '9787308164207', '腾讯传°', '吴晓波', '浙江大学出版社', '2017-01-01', '58.00', '40.10', '中国', '全景式记录腾讯成长轨迹，回望一代人的互联网情怀，解读中国互联网企业领先全球的真正秘密。', 'tenxunchuan.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('7', '9787550293151', '拉普拉斯的魔女°', '东野圭吾', '北京联合出版公司', '2017-01-01', '39.80', '28.70', '日本', '东野圭吾：“我想摧毁自己以前写的小说，于是，这部作品就此诞生。” ', 'lapulasidemonv.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('8', '9787540478612', '愿你的青春不负梦想', '俞敏洪', '湖南文艺出版社', '2017-01-01', '36.00', '21.60', '中国', '50年心路历程×25年创业思考×80场演讲精华，与不甘平庸的你，谈谈如何度过不悔的青春，实现你心中的梦想。', 'yuannideqingchunbufumengxiang.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('9', '9787540478612', '情商高，就是说话让人舒服', '朱凌,常清', '延边大学出版社', '2016-10-01', '38.00', '19.00', '中国', '教你洞悉人性、说话动听！所谓情商高，就是会说话。不拆台不揭短，不生硬不伤人，让你的每一句话都说得得体又令人舒服，到哪都受欢迎！', 'qingshanggaojiushishuohuarangrenshufu.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('10', '9787507838992', '销售心理战', '霍金斯', '中国国际广播出版社', '2016-12-01', '36.80', '18.40', '英国', '销售就是察言、观色、攻心，销售就是要搞定人，各界的销售大师们强烈推崇的销售心理学！', 'xiaoshouxinlizhan.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('11', '9787535448569', '小道理：分寸之间', '冯仑', '长江文艺出版社', '2017-01-01', '42.00', '33.10', '中国', '商界精英的时代沉思录，地产导师的人生理想国。', 'xiaodaolifencunzhijian.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('12', '9787508667836', '名创优品没有秘密', '杜博奇', '中信出版社', '2016-12-01', '36.00', '27.00', '中国', '经济寒冬中的一匹黑马，关店浪潮下的逆势崛起！全面解读名创优品的商业模式，还原一个真实的零售世界！', 'NO SECRETS.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('13', '9787538890433', '写给年轻人的创业课', '彭帅兴', '黑龙江科学技术出版社', '2016-12-01', '39.80', '19.90', '中国', '每一个怀揣梦想的创业者都应该细读的暖心之作“拿来即用”的实战经验，“一针见血”的创业指导！', 'xiegeinianqinrende1.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('14', '9787201111728', '运营笔记', '类延昊', '天津人民出版社', '2016-12-01', '39.80', '19.90', '中国', '猫扑网辉煌时代缔造者之一类类告诉你：如何在互联网运营下半场到来之前，快速成长，实现运营人生的弯道超车。 ', 'yunyinbiji.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('15', '9787221135506', '太空', '亚历山德拉·米热林斯卡', '贵州人民出版社', '2016-11-01', '38.00', '45.50', '波兰', '浩瀚宇宙万千奇观，《太空》带你探索发现！本书献给喜欢仰望星空的少年科学家和梦想家！ ', 'taikong.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('16', '9787113215491', '欧洲', '《亲历者》编辑部', '中国铁道出版社', '2016-05-01', '38.00', '29.30', '波兰', '旅行达人实地感受，29项欧洲体验式旅行；全方位文化解读，你的欧洲之旅*精彩。', 'ouzhou.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('17', '9787519219420', '西藏', '梅里', '世界图书出版公司', '2017-01-01', '39.80', '19.90', '中国', '西藏，一个可以改变人生的地方骑行，一种可以征服世界的方式不出门，你不知道你能走多远；不流泪，你不知道你有多坚强。', 'xizang.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('18', '9787201111735', '我与世界只差一个你', '张皓宸', '天津人民出版社', '2016-12-01', '49.00', '38.70', '中国', '12个温馨治愈的情感故事，给年轻人爱的正能量和信心，让你在面对爱时无惧，怀疑爱时坚定。', 'woyushijiezhichayigeni.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('19', '9787515818122', '卖产品就是卖自己', '梁汉桥', '中华工商联合出版社', '2016-11-01', '35.00', '17.50', '中国', '销售就是要玩转情商，销售就是要有效化解客户问题，销售就是要搞定人', 'maichanpinjiushimaiziji.jpg', '不是套装', '3');
INSERT INTO `bs_book` VALUES ('20', '9787555106920', '男孩的冒险书', '康恩·伊古尔登', '广西科学技术出版社', '2016-11-01', '198.00', '99.00', '英国', '有史以来给男孩的完美手册升级！英国作者献给小男子汉的重磅手绘大作！原版连续12周《纽约时报》排行榜冠军，《时代周刊》鼎力推荐！', 'nanhaidemaoxianshu.jpg', '不是套装', '1');
INSERT INTO `bs_book` VALUES ('21', '9787507544824', '美联储主席', '斯凯恩', '华文出版社', '2017-03-01', '58.00', '29.00', '美国', '美联储主席又称“影子总统”，他们的权力美国第二，但全球NO.1。美元加不加息，他们说了算！他们讲话时，全球都得竖起耳朵听！', 'meilianchuzhuxi.jpg', '不是套装', '2');
INSERT INTO `bs_book` VALUES ('22', '9787550295179', '我只想一个人住在你心里', '孟瑞', '北京联合出版公司', '2017-01-01', '45.00', '32.00', '中国', '孟瑞首部青春成长暖伤图文故事集，记录那些走过的青春，爱的人，追的梦，未走完的路和苍茫人世寻觅心安抚慰的你我！', 'wozhixiangyigerenzainixinli.jpg', '不是套装', '3');
SET FOREIGN_KEY_CHECKS=1;



-- ----------------------------
-- Table structure for bs_order
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_order` (
  `ORDERID` int(7) NOT NULL AUTO_INCREMENT,
  `ORDERNUM` varchar(40) DEFAULT NULL,
  `CREATEDATE` date DEFAULT NULL,
  `ORDERSTATUS` varchar(20) DEFAULT NULL,
  `OUSER_ID` int(7) DEFAULT NULL,
  `ADDRESS_ID` int(7) DEFAULT NULL,
  `TOTAL` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`ORDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;



-- ----------------------------
-- Table structure for bs_orderitem
-- ----------------------------
SET FOREIGN_KEY_CHECKS=0;
CREATE TABLE `bs_orderitem` (
  `ITEMID` int(7) NOT NULL AUTO_INCREMENT,
  `BOOK_ISBN` varchar(30) DEFAULT NULL,
  `BOOK_NAME` varchar(30) DEFAULT NULL,
  `BOOK_AUTHOR` varchar(30) DEFAULT NULL,
  `UNIT_PRICE` decimal(7,2) DEFAULT NULL,
  `BOOK_URL` varchar(100) DEFAULT NULL,
  `COUNT` int(7) DEFAULT NULL,
  `ALLPRICE` decimal(7,2) DEFAULT NULL,
  `ORDER_ID` int(7) DEFAULT NULL,
  PRIMARY KEY (`ITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;