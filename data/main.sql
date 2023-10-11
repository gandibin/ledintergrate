/*
 Navicat Premium Data Transfer

 Source Server         : xindatabase687
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 11/10/2023 14:35:22
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for ay_area
-- ----------------------------
DROP TABLE IF EXISTS "ay_area";
CREATE TABLE "ay_area" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "pcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "domain" TEXT(100) NOT NULL,
  "is_default" TEXT(1) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_area
-- ----------------------------
INSERT INTO "ay_area" VALUES (1, 'cn', '0', '中文', '', '0', 'admin', 'admin', '2017-11-30 13:55:37', ' 2023-09-12 20:56:02');
INSERT INTO "ay_area" VALUES (11, 'en', '0', '英文', '', '1', 'admin', 'admin', '2021-11-20 15:58:04', ' 2023-09-12 21:33:16');

-- ----------------------------
-- Table structure for ay_company
-- ----------------------------
DROP TABLE IF EXISTS "ay_company";
CREATE TABLE "ay_company" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "name" TEXT(50) NOT NULL,
  "address" TEXT(100) NOT NULL,
  "postcode" TEXT(6) NOT NULL,
  "contact" TEXT(10) NOT NULL,
  "mobile" TEXT(50) NOT NULL,
  "phone" TEXT(50) NOT NULL,
  "fax" TEXT(50) NOT NULL,
  "email" TEXT(30) NOT NULL,
  "qq" TEXT(50) NOT NULL,
  "weixin" TEXT(100) NOT NULL,
  "blicense" TEXT(20) NOT NULL,
  "other" TEXT(200) NOT NULL
);

-- ----------------------------
-- Records of ay_company
-- ----------------------------
INSERT INTO "ay_company" VALUES (1, 'cn', '深圳市星为光电科技有限公司', '深圳市宝安区兴业一路258号凤凰创谷B栋', '518103', '李先生', '13437890525', '400-680-9268', '400-680-9268', 'sales@xingwei-tech.com', '', '/static/upload/image/20220517/1652754675665847.png', '', '');
INSERT INTO "ay_company" VALUES (2, 'en', 'Shenzhen Xingwei Tech', 'Software Science Park, China University of mining and technology', '518103', 'Jack Lee', '+86-18588263984', '400-680-9268', '+86-134-88263984', 'sales@xingwei-tech.com', '', '/static/upload/image/20220517/1652754859677676.png', '', '');
INSERT INTO "ay_company" VALUES (3, 'vn', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "ay_company" VALUES (4, 'nl', 'De Chinese Wanyun Chemical Co., Ltd', 'County, Hebei province, Volksrepubliek China cangzhou. Verwering en CAO &#039;s.', '', 'Mr. Sun', '+86-15632701000', '+86-17333789888', '', '574729889@qq.com', '574729889', '', '', '8617333789888');
INSERT INTO "ay_company" VALUES (5, 'jp', '中国九玺環境科学技術会社', '中国山東省徳州市武城県甲馬営工業園区', '', '宗先生', '', '+86-15864173567', '', '2796680645@qq.com', '2796680645', '', '', '');
INSERT INTO "ay_company" VALUES (6, 'de', 'China Meisili Furniture Co., Ltd.', '1138 Shibantan Town, Bezirk Xindu, Chengdu City, Provinz Sichuan, China', '', '', '', '+86-18116570065', '', '572068875@qq.com', '572068875', '/static/upload/image/20190715/1563177089507743.jpg', '', '');
INSERT INTO "ay_company" VALUES (7, 'ar', '', 'No. 148 Yihe Road, Zhongyuan District, Zhengzhou City, Henan Province, China', '', '', '', '+86-18954829861', '', 'shenhong215@163.com', '289398387', '/static/upload/image/20190807/1565168197512236.jpg', '', '');
INSERT INTO "ay_company" VALUES (8, 'ru', 'China Yangcheng County Huayang Materials Co., Ltd.', 'No. 86, Nancheng Road, Yangcheng County, Jincheng City, Shanxi Province, China', '', '', '', '+86-13934065103', '', 'huayang@hy-fastener.cn', '', '', '', '');

-- ----------------------------
-- Table structure for ay_config
-- ----------------------------
DROP TABLE IF EXISTS "ay_config";
CREATE TABLE "ay_config" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT(30) NOT NULL,
  "value" TEXT(200) NOT NULL,
  "type" TEXT(1) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "description" TEXT(30) NOT NULL
);

-- ----------------------------
-- Records of ay_config
-- ----------------------------
INSERT INTO "ay_config" VALUES (1, 'open_wap', '0', '1', 255, '手机版');
INSERT INTO "ay_config" VALUES (2, 'message_check_code', '1', '1', 255, '留言验证码');
INSERT INTO "ay_config" VALUES (3, 'smtp_server', 'smtp.163.com', '2', 255, '邮件SMTP服务器');
INSERT INTO "ay_config" VALUES (4, 'smtp_port', '465', '2', 255, '邮件SMTP端口');
INSERT INTO "ay_config" VALUES (5, 'smtp_ssl', '1', '1', 255, '邮件是否安全连接');
INSERT INTO "ay_config" VALUES (6, 'smtp_username', '', '2', 255, '邮件发送账号');
INSERT INTO "ay_config" VALUES (7, 'smtp_password', '', '2', 255, '邮件发送密码');
INSERT INTO "ay_config" VALUES (8, 'admin_check_code', '1', '1', 255, '后台验证码');
INSERT INTO "ay_config" VALUES (9, 'weixin_appid', '', '2', 255, '微信APPID');
INSERT INTO "ay_config" VALUES (10, 'weixin_secret', '', '2', 255, '微信SECRET');
INSERT INTO "ay_config" VALUES (11, 'message_send_mail', '1', '1', 255, '留言发送邮件开关');
INSERT INTO "ay_config" VALUES (12, 'message_send_to', '', '1', 255, '留言发送到邮箱');
INSERT INTO "ay_config" VALUES (13, 'api_open', '1', '2', 255, 'API开关');
INSERT INTO "ay_config" VALUES (14, 'api_auth', '1', '2', 255, 'API强制认证');
INSERT INTO "ay_config" VALUES (15, 'api_appid', '', '2', 255, 'API认证用户');
INSERT INTO "ay_config" VALUES (16, 'api_secret', '', '2', 255, 'API认证密钥');
INSERT INTO "ay_config" VALUES (17, 'baidu_zz_token', '', '2', 255, '百度站长密钥');
INSERT INTO "ay_config" VALUES (18, 'baidu_xzh_appid', '', '2', 255, '熊掌号appid');
INSERT INTO "ay_config" VALUES (19, 'baidu_xzh_token', '', '2', 255, '熊掌号token');
INSERT INTO "ay_config" VALUES (20, 'wap_domain', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (21, 'gzip', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (22, 'smtp_username_test', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (23, 'content_tags_replace_num', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (24, 'upgrade_branch', '3.X', '2', 255, '');
INSERT INTO "ay_config" VALUES (25, 'upgrade_force', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (26, 'url_rule_type', '2', '2', 255, '');
INSERT INTO "ay_config" VALUES (27, 'url_rule_sort_suffix', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (28, 'form_send_mail', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (29, 'message_status', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (30, 'message_verify', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (31, 'message_rqlogin', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (32, 'form_status', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (33, 'form_check_code', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (34, 'tpl_html_dir', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (35, 'ip_deny', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (36, 'ip_allow', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (37, 'lock_count', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (38, 'lock_time', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (39, 'close_site', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (40, 'close_site_note', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (41, 'lgautosw', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (42, 'spiderlog', '1', '2', 255, '');
INSERT INTO "ay_config" VALUES (43, 'to_https', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (44, 'to_main_domain', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (45, 'main_domain', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (46, 'content_keyword_replace', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (47, 'watermark_open', '0', '2', 255, '');
INSERT INTO "ay_config" VALUES (48, 'watermark_text', 'www.ofym.com', '2', 255, '');
INSERT INTO "ay_config" VALUES (49, 'watermark_text_font', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (50, 'watermark_text_size', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (51, 'watermark_text_color', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (52, 'watermark_pic', '', '2', 255, '');
INSERT INTO "ay_config" VALUES (53, 'url_rule_content_path', '0', '2', 255, '');

-- ----------------------------
-- Table structure for ay_content
-- ----------------------------
DROP TABLE IF EXISTS "ay_content";
CREATE TABLE "ay_content" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "scode" TEXT(20) NOT NULL,
  "subscode" TEXT(20) NOT NULL,
  "title" TEXT(50) NOT NULL,
  "titlecolor" TEXT(7) NOT NULL,
  "subtitle" TEXT(100) NOT NULL,
  "filename" TEXT(50) NOT NULL,
  "author" TEXT(30) NOT NULL,
  "source" TEXT(30) NOT NULL,
  "outlink" TEXT(100) NOT NULL,
  "date" TEXT NOT NULL,
  "ico" TEXT(100) NOT NULL,
  "pics" TEXT(1000) NOT NULL,
  "content" TEXT(10000) NOT NULL,
  "tags" TEXT(500) NOT NULL,
  "enclosure" TEXT(100) NOT NULL,
  "keywords" TEXT(200) NOT NULL,
  "description" TEXT(500) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "istop" TEXT(1) NOT NULL,
  "isrecommend" TEXT(1) NOT NULL,
  "isheadline" TEXT(1) NOT NULL,
  "visits" INTEGER(10) NOT NULL,
  "likes" INTEGER(10) NOT NULL,
  "oppose" INTEGER(10) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(20) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL,
  "gtype" TEXT(1) NOT NULL DEFAULT '4',
  "gid" TEXT(20) NOT NULL DEFAULT '',
  "gnote" TEXT(100) NOT NULL DEFAULT '',
  "picstitle" TEXT(1000) NOT NULL DEFAULT ''
);

-- ----------------------------
-- Records of ay_content
-- ----------------------------
INSERT INTO "ay_content" VALUES (0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (1, 'cn', '1', '', '公司简介', '#333333', '', '', 'admin', '本站', '', '2018-04-11 17:26:11', '', '', '&lt;p&gt;机械这个词源自于希腊语之Mechine及拉丁文Machina，最早的“机械”定义为古罗马建筑师维特鲁威（Vitruvii）在其著作《建筑十书》，主要对于搬运重物发挥效力的机械和工具作了区别：“机械（machane）和工具（organon）之间似乎有着以下的区别。即机械是以多数人工和很大的力量而发生效果的，如重弩炮和葡萄压榨机。而工具则是一名操纵人员慎重地处理来达到目的的，如蝎形轻弩炮或不等圆的螺旋装置。因此工具和机械都是利用上不可缺少的东西。古希腊时期已有圆柱齿轮。亚历山大利亚·希罗（Heron of Alexandria）在1世纪最早讨论了机械的基本要素，他认为机械的要素有五类：轮与轴，杠杆，滑车，尖劈，螺旋。希罗的论述反映了古典机械的特征。中国古代在香炉中应用了能永保水平位置的十字转架等机件。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;英国机械学家威利斯（R.Willis）在其《机构学原理》（The Principle of Mechanism，1841年）所给的定义是：“任何机械（machine）都是由用各种不同方式连接起来的一组构件组成，使其一个构件运动，其余构件将发生一定的运动，这些构件与最初运动之构件的相对运动关系取决于它们之间连接的性质。”德国机械学家勒洛（F.Reuleaux）在其《理论运动学》（Theoretische Kinematik，Grundzüge einer Theorie des Maschienenwesens，1875年）中的定义为：“机械是多个具有抵抗力之物体的组合体，其配置方式使得能够借助它们强迫自然界的机械力做功，同时伴随着一定的确定运动。”&lt;/p&gt;', '', '', '', '{page:bar}', 255, '1', '0', '0', '0', 1466, 0, 0, 'admin', 'admin', '2018-04-11 17:26:11', ' 2021-11-20 16:40:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2, 'cn', '10', '', '在线留言', '#333333', '', '', 'admin', '本站', '', '2018-04-11 17:30:36', '', '', '', '', '', '', '欧方源码网专注于模板、源码、软件、小程序资源, 官网：www.ofym.com QQ: 11696561', 255, '1', '0', '0', '0', 513, 0, 0, 'admin', 'admin', '2018-04-11 17:30:36', ' 2022-05-17 10:32:42', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3, 'cn', '11', '', '联系我们', '#333333', '', '', 'admin', '本站', '', '2018-04-11 17:31:29', '', '', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;北京某某科技有限公司&lt;/span&gt;&lt;/strong&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;联系人：欧方&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;手机：1388888888&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;QQ：11696561&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;邮箱：admin@admin.com&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;地址：中国矿大软件科技园C座&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '欧方源码网专注于模板、源码、软件、小程序资源, 官网：www.ofym.com QQ: 11696561', 255, '1', '0', '0', '0', 574, 0, 0, 'admin', 'admin', '2018-04-11 17:31:29', ' 2022-05-17 10:32:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (18, 'en', '12', '', 'About', '#333333', '', '', 'admin', '本站', '', '2019-01-03 11:36:55', '', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;Found in 2009, ELSKY is specially engaged in the R &amp;amp; D, manufacturing, sales and system integration of industrial&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;motherboard for OPS-PC, Mini PC and Industrial PC, All-in-one PC, Digital Signage, Advertising LCD, Network, POS, Tele Communication and other industries. Meanwhile, We offer OEM/ODM service for global customers.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;&amp;nbsp; &amp;nbsp; At present, ELSKY has become one of the industrial manufacturers for motherboard and Industrial PC in China. ELSKY have more than 100 Skilled workers and advanced equipment , to complete Products Design and on time delivery.ELSKY Market Share Rapidly Expands in global market.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;&amp;nbsp; &amp;nbsp;With more than 9 year growth, ELSKY sticks to focusing on motherboard and Industrial PC; we stick to enhancing technological innovation; We do our best for making ELSKY to be a Industrial brand!&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;&amp;nbsp; &amp;nbsp; In 2010, ELSKY started to explore overseas market. Today, ELSKY is ready to share its embedded and industrial computing solutions as well as its sophisticated and reliable products with more partners in the international arena, and grow with customers on the basis of mutual-benefits and win-win.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; text-indent: 28px; text-wrap: wrap;&quot;&gt;&amp;nbsp; &amp;nbsp;ELSKY products, as an embodiment of innovation in the industry, have provided worldwide users Such as China, Southeast Asia，America, Europe and Africa. Sincerely, Welcome friends from worldwide to cooperate with ELSKY .Supply stable Motherboard and industrial PC, ELSKY is Professional!&lt;/span&gt;&lt;/p&gt;', '', '', '', '欧方源码网专注于模板、源码、软件、小程序资源, 官网：www.ofym.com QQ: 11696561', 255, '1', '0', '0', '0', 1114, 0, 0, 'admin', 'admin', '2019-01-03 11:36:55', ' 2023-09-14 23:22:07', '4', '', '', '');
INSERT INTO "ay_content" VALUES (19, 'en', '16', '', 'Leave word', '#333333', '', '', 'admin', '本站', '', '2019-01-03 11:38:08', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 295, 0, 0, 'admin', 'admin', '2019-01-03 11:38:08', ' 2019-06-20 16:21:22', '4', '', '', '');
INSERT INTO "ay_content" VALUES (20, 'en', '17', '', 'Contact', '#333333', '', '', 'admin', '本站', '', '2019-01-03 11:38:16', '', '', '', '', '', '', '欧方源码网专注于模板、源码、软件、小程序资源, 官网：www.ofym.com QQ: 11696561', 255, '1', '0', '0', '0', 527, 0, 0, 'admin', 'admin', '2019-01-03 11:38:16', ' 2022-05-17 10:34:44', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2132, 'nl', '61', '', 'Over ons', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:17:10', '/static/upload/image/20190701/1561967667559994.jpg', '', '&lt;p&gt;&amp;nbsp; De Chinese Wanyun Chemical Co., Ltd, gevestigd in China Hebei cangzhou. Dat is een verzameling van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride, de fabrikanten van producten van hoge kwaliteit.Installaties voor de productie van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride verkopen op de markt.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Onze producten in de hogere positie van het bedrijf en de detailhandelaars en distributeurs om op lange termijn een stabiele samenwerking.Ik bedrijf voor de productie van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride - variëteit, een redelijke prijs.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4 miljoen naar Chemical Co., Ltd, kracht, krediet, het contract, de kwaliteit van het product te garanderen, de operationele kenmerken van vele rassen en het beginsel van een kleine winst, het vertrouwen van onze klanten.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Mijn bedrijf heeft een goed rendement in het voordeel van de productie van 100000 ton per jaar kan worden, en door het gebruik van geavanceerde apparatuur voor de zuivering, het product meer voordeel, waardoor het optreden van een witte, minder verontreiniging, en op grote schaal wordt gebruikt voor de behandeling van afvalwater, de raffinage van aardolie, leder, verven, ijzer - en staalindustrie, de productie van industriële goederen, heeft de meerderheid van de klanten; en als gevolg van de invoering van geavanceerde wetenschap.De details van de productie van de producten, zodat ik de fabriek in de kosten van de controle is beter, en om de prijzen meer voordelen en de kwaliteit van de producten veiliger zijn.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; De fysische eigenschappen van het product, de chemische stabiliteit, met redelijke levensduur.De integriteit van de dienstverlening op het vlak van het geweten, efficiënt, redelijke prijzen, van harte voor de verschillende landen de oude en de nieuwe klanten te voorzien van kwalitatief hoogwaardige producten.&lt;/p&gt;', '', '', '', 'De Chinese Wanyun Chemical Co., Ltd, gevestigd in China Hebei cangzhou. Dat is een verzameling van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride, de fabrikanten van producten van hoge kwaliteit.Installaties voor de productie va', 255, '1', '0', '0', '0', 40, 0, 0, 'admin', 'admin', '2019-06-26 09:17:10', ' 2019-07-01 15:54:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2133, 'nl', '65', '', 'Feedback', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:20:17', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-06-26 09:20:17', '2019-06-26 09:20:17', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2134, 'nl', '66', '', 'Contacteer ons', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:20:53', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 4, 0, 0, 'admin', 'admin', '2019-06-26 09:20:53', '2019-06-26 09:20:53', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2135, 'nl', '67', '', 'Merk', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:23:25', '', '', '&lt;p&gt;&amp;nbsp; De Chinese Wanyun Chemical Co., Ltd, gevestigd in China Hebei cangzhou. Dat is een verzameling van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride, de fabrikanten van producten van hoge kwaliteit.Installaties voor de productie van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride verkopen op de markt.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Onze producten in de hogere positie van het bedrijf en de detailhandelaars en distributeurs om op lange termijn een stabiele samenwerking.Ik bedrijf voor de productie van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride - variëteit, een redelijke prijs.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4 miljoen naar Chemical Co., Ltd, kracht, krediet, het contract, de kwaliteit van het product te garanderen, de operationele kenmerken van vele rassen en het beginsel van een kleine winst, het vertrouwen van onze klanten.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Mijn bedrijf heeft een goed rendement in het voordeel van de productie van 100000 ton per jaar kan worden, en door het gebruik van geavanceerde apparatuur voor de zuivering, het product meer voordeel, waardoor het optreden van een witte, minder verontreiniging, en op grote schaal wordt gebruikt voor de behandeling van afvalwater, de raffinage van aardolie, leder, verven, ijzer - en staalindustrie, de productie van industriële goederen, heeft de meerderheid van de klanten; en als gevolg van de invoering van geavanceerde wetenschap.De details van de productie van de producten, zodat ik de fabriek in de kosten van de controle is beter, en om de prijzen meer voordelen en de kwaliteit van de producten veiliger zijn.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; De fysische eigenschappen van het product, de chemische stabiliteit, met redelijke levensduur.De integriteit van de dienstverlening op het vlak van het geweten, efficiënt, redelijke prijzen, van harte voor de verschillende landen de oude en de nieuwe klanten te voorzien van kwalitatief hoogwaardige producten.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'De Chinese Wanyun Chemical Co., Ltd, gevestigd in China Hebei cangzhou. Dat is een verzameling van natriumhydroxide, natriumhydroxide, natriumhydroxide, natriumhydroxide, vaste -, graan en soda, natriumchloride, de fabrikanten van producten van hoge kwaliteit.Installaties voor de productie va', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-06-26 09:23:25', ' 2019-07-01 15:51:08', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2136, 'nl', '68', '', 'Cultuur', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:23:49', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-06-26 09:23:49', '2019-06-26 09:23:49', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2137, 'vn', '72', '', 'Trang nhất', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:26:28', '', '', '&lt;p&gt;&amp;nbsp; China Hebei Lianyi Machinery Manufacturing Co., Ltd. &amp;nbsp;là nhà sản xuất chuyên nghiệp máy móc chế biến gỗ, máy cắt và cắt CNC, máy cắt không trục CNC, máy cắt quay không cần thẻ, máy làm tròn gỗ, máy cho ăn gỗ, v.v ... Hệ thống quản lý chất lượng khoa học, đây là một trong những nhà sản xuất máy cắt gỗ quy mô lớn nhất tại Trung Quốc.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;Sản phẩm chính: máy cắt quay, máy cắt quay CNC, máy cắt không trục CNC, máy cắt quay không cần thẻ, trong đó đường kính cắt của máy cắt quay sê-ri LXQ là lớn nhất ở Trung Quốc (đường kính gia công 2,2 mét), tấm trung bình máy cắt quay có độ dày dày nhất (lên đến độ dày khoảng 6 mm).&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;Theo thống kê, việc sử dụng gỗ hiện nay là rất lớn và thiếu tài nguyên gỗ, độ chính xác cao và hiệu quả cao của gỗ đã trở thành một vấn đề quan trọng trong ngành chế biến gỗ. Để đối phó với tình huống này, Lianyi Máy móc đã phát triển cho những người dùng khác nhau. Sản phẩm máy cắt quay CNC, theo sản xuất hiện nay của máy cắt quay không cần thẻ ở Trung Quốc, chất lượng vẫn còn nhiều khiếm khuyết về kỹ thuật, sự phát triển của dòng SKQ của máy cắt quay không trục vít tự động CNC mới Tháp pháo được dẫn dắt bởi dây dẫn vít, hướng dẫn trượt của công cụ máy trượt được kết hợp với hệ thống chạy điều khiển số máy tính tiên tiến, giúp cải thiện độ chính xác gia công và hiệu quả sản xuất và đáp ứng nhu cầu thị trường.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;Nhà máy này là &amp;quot;quản lý chặt chẽ, chất lượng với thế giới, sản xuất tỉ mỉ, đổi mới và lãnh đạo, và phấn đấu để làm hài lòng khách hàng&amp;quot; với mục đích cung cấp cho khách hàng của chúng tôi các dịch vụ chất lượng. Trân trọng chào đón mọi người từ mọi tầng lớp và khách hàng mới và cũ đến thăm chúng tôi! Chúng tôi sẽ tạo ra một ngày mai tốt hơn với tất cả người dùng với các sản phẩm chất lượng tốt hơn và dịch vụ hậu mãi hoàn hảo! Chất lượng sản phẩm đã được công nhận bởi ngành công nghiệp. Chào mừng bạn bè từ mọi tầng lớp đến thăm, hướng dẫn và đàm phán kinh doanh.&lt;/p&gt;', '', '', '', 'China Hebei Lianyi Machinery Manufacturing Co., Ltd. là nhà sản xuất chuyên nghiệp máy móc chế biến gỗ, máy cắt và cắt CNC, máy cắt không trục CNC, máy cắt quay không cần thẻ, máy làm tròn gỗ, máy cho ăn gỗ, v.v ... Hệ thống quản lý chất lượng khoa', 255, '1', '0', '0', '0', 27, 0, 0, 'admin', 'admin', '2019-06-26 09:26:28', ' 2019-11-06 11:28:21', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2138, 'vn', '76', '', 'Để lại lời', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:28:20', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 11, 0, 0, 'admin', 'admin', '2019-06-26 09:28:20', '2019-06-26 09:28:20', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2139, 'vn', '77', '', 'Liên lạc', '#333333', '', '', 'admin', '本站', '', '2019-06-26 09:28:37', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 9, 0, 0, 'admin', 'admin', '2019-06-26 09:28:37', '2019-06-26 09:28:37', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2166, 'nl', '70', '', 'Use of caustic soda', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:08:19', '', '', '&lt;p&gt;1. Used in the production of papermaking and cellulose pulp;&lt;/p&gt;&lt;p&gt;2. Used in the production of soap, synthetic detergent, synthetic fatty acid and the refining of animal and vegetable oils.&lt;/p&gt;&lt;p&gt;3. Textile printing and dyeing industry is used as desizing agent, cooking agent and mercerizing agent for cotton cloth.&lt;/p&gt;&lt;p&gt;4. Chemical industry is used to produce borax, sodium cyanide, oxalic acid, phenol and so on.&lt;/p&gt;&lt;p&gt;5. The petroleum industry is used to refine petroleum products and to drill mud in oil fields. It is also used for surface treatment of alumina, zinc and copper, glass, enamel, leather, medicine, dyes and pesticides.&lt;/p&gt;&lt;p&gt;6. Food-grade products are used as acid neutralizers in food industry, peeling agents for citrus and peach, detergents for empty bottles and cans, decolorizers and deodorants.&lt;/p&gt;&lt;p&gt;7. It can also be used as an alkaline desiccant. Caustic soda is widely used in the national economy, and many industrial departments need it. The most frequently used sectors of caustic soda are chemical manufacturing, followed by paper, aluminium, tungsten, rayon, rayon and soap manufacturing. In addition, in the production of dyes, plastics, pharmaceuticals and organic intermediates, the regeneration of old rubber, the electrolysis of metal sodium and water, and the production of inorganic salts, borax, chromium salts, manganate, phosphate and so on, a large amount of caustic soda should also be used.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '1. Used in the production of papermaking and cellulose pulp;2. Used in the production of soap, synthetic detergent, synthetic fatty acid and the refining of animal and vegetable oils.3. Textile printing and dyeing industry is used as desizing agent, cooking agent and mercerizing agent for cotton clo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:09:47', ' 2019-07-01 15:47:12', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2167, 'nl', '70', '', 'What is caustic sodium?', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:09:49', '', '', '&lt;p&gt;Natriumhydroxide, chemische formule NaOH, beter bekend als de bijtende soda, natriumhydroxide, voor een sterk corrosieve base, in het algemeen, vlokken of blok vormen, oplosbaar in water (oplosbaar in water als warmte) en de vorming van de alkalische oplossing onderzocht te leren, anders van de waterdamp in de lucht (les) en de uitstoot van kooldioxide (wijziging), zoutzuur getest of wijziging.&lt;/p&gt;&lt;p&gt;Het chemische Lab NaOH is een van de essentiële chemische stoffen voor chemische stoffen, ook een gemeenschappelijk.Puur product is een heldere en KLEURLOZE KRISTALLEN.De dichtheid van 2.130g/cm3.Smeltpunt 318.4 graden.Kookpunt 1390).Industriële producten bevat een kleine hoeveelheid natriumchloride en natrium - carbonaat, ondoorzichtige, witte kristallen.Er zijn enorme, vlokken, korrels en Rod.- de hoeveelheid 39.997.&lt;/p&gt;&lt;p&gt;Natriumhydroxide in de behandeling van water kan worden beschouwd als een alkalische reinigingsmiddelen, oplossing in ethanol en glycerol; onoplosbaar in alcohol, ether.En chloride, bromide, jodium, enz. Met zich onevenredige reactie.Een neutralisatie met zuren en de productie van zout en water.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Caustic sodium is sodium hydroxide.Sodium hydroxide, commonly known as NaOH, caustic soda, caustic soda, is a strong caustic alkali with strong corrosiveness. It is generally flaky or massive, soluble in water (exothermic when dissolved in water) and forms an alkaline solution. It is also deliquesce', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:10:07', ' 2019-07-01 15:47:51', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2168, 'nl', '70', '', 'Beschermende maatregelen nodig om te weten dat', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:10:09', '', '', '&lt;p&gt;Bescherming van de ademhalingswegen: dragen maskers nodig.&lt;/p&gt;&lt;p&gt;Bescherming van de ogen: het dragen van beschermende chemische veiligheid bril.Beschermende kleding dragen werkkleding (corrosiewerend materiaal).Voorzichtig, voorzichtig heeft op kleding, mond en neus.&lt;/p&gt;&lt;p&gt;Bescherming van de handen: draagt rubberen handschoenen.&lt;/p&gt;&lt;p&gt;Andere: na het werk, neem een douche.Aandacht voor persoonlijke hygiëne.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Respiratory protection: Wear a gas mask if necessary.Eye protection: Wear chemical safety glasses. Protective clothing: wear work clothes (made of anticorrosive materials). Use it carefully and splash it carefully into clothes, mouth and nose.Hand protection: wear rubber gloves.Others: After work, s', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:10:34', ' 2019-07-01 15:48:15', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2169, 'nl', '70', '', 'Natriumhydroxide, opslag en vervoer,', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:10:36', '', '', '&lt;p&gt;De wijze van opslag&lt;/p&gt;&lt;p&gt;Vaste natriumhydroxide in 0,5 mm dik stalen vat in het sluiten van niet meer dan 100 kg nettogewicht; de tweede laag plastic zakken of bruine papieren zak buiten alle openingen of in open.; met een glazen fles van ijzer - en dekking, glas, plastic flessen of vaten (buiten de gewone kist tank); draad en glas, kunststof flessen of vaten (kan) vertind blik en een doos vol verdieping, vezelplaat doos of lijmTriplex doos; vertind blik vaten (kan), metalen vaten (kan), plastic en metalen buis gegolfd karton.De verpakking moet de integriteit, de sluiting, met een duidelijke &amp;quot;bijtende stof &amp;#39;.&lt;/p&gt;&lt;p&gt;Natriumhydroxide voor glas met een lichte corrosie, zullen die van natrium -, zodat het glas in de zuiger vast op de instrumenten en hulpmiddelen.Dus met natriumhydroxide - oplossing kan worden gebruikt wanneer de kurk in de fles, anders kan de dop niet open.&lt;/p&gt;&lt;p&gt;Als de glazen flacon met hete natriumhydroxide - oplossing voor een lange tijd, maar ook tot de glazen flacon beschadigd.&lt;/p&gt;&lt;p&gt;(glas bevat:SiO?：2NaOH+SiO?=Na?SiO?+H?O)&lt;/p&gt;&lt;p&gt;De wijze van vervoer&lt;/p&gt;&lt;p&gt;Het vervoer per spoor, vervoer van de beschikbare auto &amp;#39;s stalen vat verpakking.Vertrek verpakking moet worden afgerond, en de lading veilig moeten zijn.Tijdens het vervoer, om ervoor te zorgen dat de tank niet lekken, niet instorten, niet vallen, geen schade berokkenen, vochtig en regen.Indien blijkt dat de verpakking van roest, scheuren en gaten, smelt de druppels water, enzovoort, moet onmiddellijk verandering van de verpakking of het begin van de beschadigde verpakkingen van het gebruik van beschikbare, te herstellen.Verboden en brandbare of brandbaar, zuren, chemicaliën, enz. Gemengde gemengd vervoer.De voertuigen moeten worden uitgerust met apparatuur voor de behandeling van het lek.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Storage methodSolid sodium hydroxide is packed in steel drums 0.5 mm thick and sealed tightly with a net weight of no more than 100 kg per barrel; steel drums with full or medium openings outside plastic bags or kraft paper bags; ordinary wooden boxes outside threaded glass bottles, iron-capped glas', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:11:02', ' 2019-07-01 15:49:00', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2170, 'nl', '70', '', 'Natriumhydroxide misverstand', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:11:04', '', '', '&lt;p&gt;Fout: 1 ijzer niet reageren met natriumhydroxide&lt;/p&gt;&lt;p&gt;De feiten: watervrij natriumhydroxide bij hoge temperaturen onder de voorwaarden van de ijzeren reactie kan en het genereren van natrium of kalium).&lt;/p&gt;&lt;p&gt;(GLB · Lussac, enz.), respectievelijk met kaliumhydroxide (KOH heeft ijzer) en natriumhydroxide (NaOH) gemengd en in een afgesloten buigen in een glazen buis verwarming.De resultaten, smelt bij hoge temperatuur een hete ijzer met een chemische reactie van kalium en natrium metaal.Deze methode is eenvoudig en economie, maar ook voor de grote hoeveelheden kalium en natrium.[20]&lt;/p&gt;&lt;p&gt;Het laboratorium moet worden gebruikt wanneer het smelten van natriumhydroxide van nikkel en ijzer niet gebruik kunnen maken van containers containers.&lt;/p&gt;&lt;p&gt;Fout 2: natriumhydroxide is sterk, maar het is niet de rol van sterilisatie&lt;/p&gt;&lt;p&gt;De feiten: natriumhydroxide kunnen zijn voor bepaalde plaatsen of ontsmetting [21], en het land aanbevolen de vernietiging van prionen ontsmettingsmiddel.&lt;/p&gt;&lt;p&gt;Noot: bij patiënten met geïnfecteerde prion of vermoede infectie bij patiënten met hoog risico het prion de weefsels (hersenen, de dura, de hypofyse, ogen en ruggenmerg) verontreiniging van matig en zeer gevaarlijke stoffen, kan een van de volgende methoden voor ontsmetting en sterilisatie van de strengheid van de geleidelijk toenemende:&lt;/p&gt;&lt;p&gt;A) het gebruik van de goederen zal na onderdompeling in 1 mol / l in de rol van natriumhydroxide - oplossing in 60 minuten, en dan in het WS310.2 voor reiniging, ontsmetting en sterilisatie, een autoclaaf worden vastgesteld op 134 - 138 - 132, 18 minuten, of gedurende 30 minuten, of 121, 60 minuten;&lt;/p&gt;&lt;p&gt;B) het gebruik van de goederen zal na de reiniging en de ontsmetting van de machine (dient gebruik te worden gemaakt van een prion activiteit doden reinigingsmiddel) of van andere voor de veiligheid van de methoden voor het verwijderen van de zichtbare verontreinigende stoffen, en dan 1 mol / L NaOH - oplossing ondergedompeld in binnen 60 minuten op de rol en de autoclaaf 121, 30 minuten, dan wassen, en volgens de gebruikelijke procedure, sterilisatie [22]&lt;/p&gt;&lt;p&gt;Zone 3: geen reactie van natrium en natriumhydroxide&lt;/p&gt;&lt;p&gt;De feiten: natriumhydroxide en natrium metaal kunnen reageren, is een methode voor de voorbereiding van natriumhydroxide.[23]&lt;/p&gt;&lt;p&gt;Als volgt:&lt;/p&gt;&lt;p&gt;Met natriumhydroxide en natrium - verwarming van het mengsel voor te bereiden.&lt;/p&gt;&lt;p&gt;Een beetje teveel natrium verwijderd te worden, is een beetje water natriumhydroxide bevat.&lt;/p&gt;&lt;p&gt;Zal de NaOH en kleine stukjes metaal mengen in de smeltkroes van natrium, van nikkel.NI de Crucible geplaatst in een afgesloten op de bodem van de glazen buizen in de harde buizen en pompen, en een lange pijp Manometer.Mengsel van 300 - 320 begon in de reactie van de waterstof is een pomp.Vacuüm houden in 399.96 - 533.288Pa (30 - 40 mmHg kolom), natrium wordt geraakt en residuen.Die stof is een wit poeder, waarvan slechts 2% NaOH Na2O met 96%, anders, 2% na2co3 onzuiverheden.&lt;/p&gt;&lt;p&gt;4: natriumhydroxide oplossing in kokend water over om water te koken&lt;/p&gt;&lt;p&gt;De feiten: natriumhydroxide - oplossing in water zal de hitte, maar niet om de redenen van kokend water.&lt;/p&gt;&lt;p&gt;Als volgt:&lt;/p&gt;&lt;p&gt;Drie tubes, respectievelijk in 5 ml gedestilleerd water aan de reageerbuis, eerst in de vlam van de lamp voorverwarming, centrale verwarming, tot de in vitro maken in water; verwijderd, net de kokend - water aan zijn toegevoegd in een natrium chloride, nitraat, ammonium scherven zijn waargenomen, in het water koken.&lt;/p&gt;&lt;p&gt;De weken en de scherven niet oplosbaar is in water, natriumchloride oplossing in water, de temperatuur van de oplossing niet aanzienlijk veranderd, in water oplosbare vaste ammoniumnitraat absorbeert warmte, de temperatuur van de oplossing moet worden verlaagd, maar deze drie stoffen zijn toegevoegd net gekookt water, water te koken op waargenomen.Natuurlijk, &amp;quot;water koken is opnieuw door de vaste natriumhydroxide - oplossing in water, veroorzaakt door de hitte&amp;quot; ontbreekt.&lt;/p&gt;&lt;p&gt;Voor de verwarming van vloeistoffen van gedistilleerd water, als gevolg van gebrek aan de vorming van luchtbelletjes in de kern, kan leiden tot de vorming van een oververhitte vloeistof, een oververhitte vloeistof is de stabiele toestand.Wanneer aan de oververhitte vloeistof met vaste, in die bubbel, vergassing centrum, dus zal het water te zien koken.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Myth 1: Iron cannot react with sodium hydroxideFact: Sodium hydroxide can react with iron powder at high temperature and produce sodium metal (or potassium) under anhydrous conditions.(Guy Lusak et al.) The iron chips were mixed with caustic potassium (KOH) and caustic sodium (NaOH), respectively, a', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:11:32', ' 2019-07-01 15:49:29', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2171, 'nl', '70', '', 'De bescherming van de toxiciteit van natriumhydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:11:34', '/static/upload/image/20190701/1561961603996776.jpg', '', '&lt;p&gt;Zeer sterk corrosieve stof, de oplossing op de huid of met, in het bijzonder op slijmvliezen, die zachte eelt, en kan infiltreren in het diepe weefsel.Verbrand het litteken.... in de ogen, niet alleen schade aan de Cornea, maar ook om de ogen van diep weefsel schade.Zoals uit de. De huid onmiddellijk spoelen met 10 minuten; zoals het was in de ogen, moet onmiddellijk met water of fysiologische zoutoplossing in 15 minuten, en dan 2% novocaine.In ernstige gevallen snel naar het ziekenhuis voor behandeling.Maximaal toelaatbare concentratie van de stof in de lucht als we hoofdzakelijk natriumhydroxide.De exploitanten moeten dragen werkkleding en masker, bril en rubberen handschoenen en rubberen schort, laarzen en andere produkten.De neutrale en waterafstotend zalf moet worden toegepast op de huid.De werkplaats moet goed worden geventileerd.&lt;/p&gt;&lt;p&gt;Verpakking, opslag en vervoer&lt;/p&gt;&lt;p&gt;Met drie lagen 25 kg flake een plastic zak, een binnenste en buitenste in plastic zakken, in het midden van een laag plastic omhulsel, zak.Natriumhydroxide worden de gebruikte classificatie en etikettering van gevaarlijke chemische stoffen (GB13690-92) &amp;quot;bestemd voor de in punt 8.2 van alkalische corrosieve stoffen, een acht op de gevaarlijke goederen, de IMDG code: 1823.Dienen te worden opgeslagen in de ventilatie, droge opslag of goederen binnen.De verpakking moet de integriteit en de sluiting.Niet met ontvlambare stoffen en zuren in totaal een gemengd vervoer.Tijdens het vervoer moeten tegen vocht, regen.Wanneer er brand is, kan het gebruik van water en zand en de brandblusser, maar de brandweer moet aandacht worden besteed aan water in de corrosie van natronloog na.&lt;/p&gt;&lt;p&gt;De fysisch - chemische eigenschappen voor een transparante kristal zuivere 130, Relatieve dichtheid.Smeltpunt 318.4 graden.Kookpunt 1390).De verkoop op de markt van een vaste en vloeibare natriumhydroxide twee: zuiver vaste prik is Wit, een blok, plaat, Rod, korrels, knapperig, pure vloeibare natriumhydroxide voor de heldere en KLEURLOZE VLOEISTOF.Vaste bijtende sterk hygroscopisch.Oplosbaar in water opgeloste exotherme, waterige alkalische, romig, oplossing in ethanol en glycerol; oplosbaar in aceton en ether.Uiterst corrosief voor de huid, de glas - en keramische vezels, zoals een corrosief effect hebben.En metaal, aluminium en silicium van zink, borium en de reactie van niet - metalen tot waterstof; en chloride, bromide, jodium, enz. Met zich en een onevenredige reactie; neutralisatie van zuren en de productie van zout en water.&lt;/p&gt;&lt;p&gt;Het behoud van vaste natriumhydroxide, aandacht moet worden besteed aan de verzegeling, om te voorkomen dat de absorptie van vocht in de lucht voor een blootstelling van water of met kooldioxide.In glazen flessen die vlokken of andere vormen van natriumhydroxide, glazen stop niet beschikbaar is, moet worden vervangen door de rubber stop, zal als gevolg van natriumhydroxide in het glas en de reactie van de siliciumdioxide natrium - leiden tot een kurk en de fles te openen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'It is extremely corrosive. When its solution or dust splashes on the skin, especially on the mucosa, it can produce scab and penetrate deep tissue. There are scars after burns. Splashing into the eye not only damages the cornea, but also damages the deep tissue of the eye. If accidentally splashed o', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:13:24', ' 2019-07-01 15:50:11', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2172, 'nl', '88', '', 'NaOH', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:28:20', '/static/upload/image/20190701/1561962523792723.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:28:53', ' 2019-07-01 16:16:33', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2173, 'nl', '88', '', 'NaOH', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:28:54', '/static/upload/image/20190701/1561962548235524.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:29:15', ' 2019-07-01 16:16:38', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2174, 'nl', '87', '', 'Caustic Soda Flakes', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:29:16', '/static/upload/image/20190701/1561962566626350.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:29:43', ' 2019-07-01 16:16:41', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2175, 'nl', '87', '', 'Caustic Soda Flakes', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:29:44', '/static/upload/image/20190701/1561962592215573.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:29:54', ' 2019-07-01 16:16:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2176, 'nl', '87', '', 'Caustic Soda Flakes', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:29:55', '/static/upload/image/20190701/1561962603395439.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:30:06', ' 2019-07-01 16:16:52', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2177, 'nl', '87', '', 'Caustic Soda Flakes', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:30:18', '/static/upload/image/20190701/1561962626388180.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:30:37', ' 2019-07-01 16:16:58', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2178, 'nl', '86', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:30:38', '/static/upload/image/20190701/1561962644226017.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:30:57', ' 2019-07-01 16:17:02', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2179, 'nl', '86', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:30:58', '/static/upload/image/20190701/1561962668753868.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:31:09', ' 2019-07-01 16:17:07', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2180, 'nl', '86', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:31:11', '/static/upload/image/20190701/1561962677173935.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:31:18', ' 2019-07-01 16:17:11', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2181, 'nl', '85', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:31:19', '/static/upload/image/20190701/1561962685461650.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:31:26', ' 2019-07-01 16:17:16', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2182, 'nl', '85', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:31:27', '/static/upload/image/20190701/1561962692160310.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:31:33', ' 2019-07-01 16:17:20', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2183, 'nl', '85', '', 'Sodium Hydroxide', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:31:34', '/static/upload/image/20190701/1561962700330833.jpg', '', '&lt;p&gt;NaOH:99%&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;netto:25.0KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GROSS:25.1KGS&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;GEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plons op de ogen en de huid, het getroffen deel wassen met een groot volume van 2% azijnzuur en onmiddellijk naar hostital sturen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'NaOH:99%netto:25.0KGSGROSS:25.1KGSGEBRUIK:Gebruikt in textiel - en andere lichte industrie, papierindustrie, aardolie, zuivering van afvalwater, chemische industrie enz.OPMERKING: De goederen moeten worden opgeslagen op een droge en geventileerde plaats, voorkomen van regenval, als bijtende sode plo', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:31:42', ' 2019-07-01 16:17:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2184, 'nl', '64', '', 'Wanyun Warehouse', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:35:20', '/static/upload/image/20190701/1561962952970558.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:35:54', '2019-07-01 14:35:54', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2185, 'nl', '64', '', 'Wanyun Warehouse', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:35:55', '/static/upload/image/20190701/1561962962714543.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:36:04', '2019-07-01 14:36:04', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2186, 'nl', '64', '', 'Wanyun Warehouse', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:36:05', '/static/upload/image/20190701/1561962970406262.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:36:11', '2019-07-01 14:36:11', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2187, 'nl', '64', '', 'Wanyun Warehouse', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:36:12', '/static/upload/image/20190701/1561962978865563.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:36:19', '2019-07-01 14:36:19', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2188, 'nl', '64', '', 'Wanyun Warehouse', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:36:20', '/static/upload/image/20190701/1561962985434659.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-01 14:36:26', '2019-07-01 14:36:26', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2189, 'nl', '69', '', 'A large supply of caustic soda from China', '#333333', '', '', 'admin', '本站', '', '2019-07-01 14:50:44', '', '', '&lt;p&gt;&amp;nbsp; China Cangzhou WANYUN Chemical Co., Ltd. is located in Cangzhou City, Hebei Province, China. It is a high-quality manufacturer of aggregate tablets of alkali, sodium hydroxide, caustic soda, caustic soda, solid alkali, granular alkali, soda, sodium chloride and other products. The tablets of alkali, sodium hydroxide, caustic soda, caustic soda, solid alkali, granular alkali, soda ash and sodium chloride produced by our factory sell well in the consumer market.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;http://localhost/static/upload/image/20190701/1561963903543930.jpg&quot; title=&quot;1561963903543930.jpg&quot; alt=&quot;QQ图片20190629160525.jpg&quot; style=&quot;text-align: center; white-space: normal;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Our products enjoy a high position among consumers, and our company has established long-term and stable cooperative relations with many retailers and agents. Our company produces tablets of alkali, sodium hydroxide, pyroalkali, caustic soda, solid alkali, granular alkali, soda ash, sodium chloride with complete varieties and reasonable prices.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Cangzhou Wanyun Chemical Co., Ltd. has strong strength. It pays attention to credit, abides by contract, guarantees product quality, and wins the trust of customers with the principle of multi-variety management characteristics and small profits and multi-sales.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Our company has good production advantages, annual output can be 100,000 tons, and the use of advanced purification equipment, so that the products produced have more advantages, make the appearance more white, less impurities, and widely used in sewage treatment, refining oil, leather, printing and dyeing, steel-making, production of industrial products, etc., won the unanimous praise of customers in various countries, and due to the introduction of advanced science; Production details, so that our factory&amp;#39;s products in cost has been better controlled, and make the price more advantageous, product quality more secure.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; The product has good physical properties, high chemical stability, good grade coordination and long service life. Good faith and conscience of the service level, fast mode of supply, reasonable prices, dedicated to providing new and old customers in all countries with high-quality products.&lt;/p&gt;', '', '', '', 'China Cangzhou Wanyun Chemical Co., Ltd. is located in Cangzhou City, Hebei Province, China. It is a high-quality manufacturer of aggregate alkali, sodium hydroxide, caustic soda, caustic soda, solid alkali, granular alkali, soda ash, sodium chloride and other products. The tablets of alkali,', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-07-01 14:51:46', ' 2019-07-01 15:46:19', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2297, 'jp', '100', '', '企業情報', '#333333', '', '', 'admin', '本站', '', '2019-07-09 11:44:15', '/static/upload/image/20190710/1562720142784942.jpg', '', '&lt;p style=&quot;line-height: 3em;&quot;&gt;　　中国九玺環境科学技術会社は専門的な研究開発、生産、販売を一体化したクリエイティブテクノロジー型生産企業です。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　科学技術で先進的な製品を創造し、製品で美しい生活を営む企業精神を受け継ぎます。科学技術の製品と生産における応用を重視し、市場のニーズに合わせて、プラスチック射出機の対外加工を含めて、工場団地の不動産、学校、市政、公園などの道路清掃に適した各種の環境保護設備と重設備を開発して生産しています。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　会社は山東省徳州市武城県甲馬営工業園区にあります。敷地面積は3万平方メートル以上で、固定資産は800万元です。従業員は150人で、技術者は58人です。済南大学、山東交通学院などの科学研究機関と長期的に全面的な生産、学、研究協力関係を創立しました。&lt;/p&gt;', '', '', '', '　　中国徳州九璽環境科学技術有展公司は専門的な研究開発、生産、販売を一体化したクリエイティブテクノロジー型生産企業です。　　科学技術で先進的な製品を創造し、製品で美しい生活を営む企業精神を受け継ぎます。科学技術の製品と生産における応用を重視し、市場のニーズに合わせて、プラスチック射出機の対外加工を含', 255, '1', '0', '0', '0', 16, 0, 0, 'admin', 'admin', '2019-07-09 11:44:15', ' 2019-07-10 08:58:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2298, 'jp', '104', '', 'アクセス', '#333333', '', '', 'admin', '本站', '', '2019-07-09 11:46:15', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 61, 0, 0, 'admin', 'admin', '2019-07-09 11:46:15', '2019-07-09 11:46:15', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2316, 'jp', '101', '', '壁式空気清浄機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 16:57:31', '/static/upload/image/20190709/1562662769204076.jpg', '', '', '', '', '', '', 8, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 16:59:31', ' 2019-07-10 09:08:31', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2317, 'jp', '101', '', '無動力プッシュ掃除機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 16:59:32', '/static/upload/image/20190709/1562662777342551.jpg', '', '', '', '', '', '', 5, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 16:59:39', ' 2019-07-10 09:08:57', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2318, 'jp', '101', '', '空気清浄機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 16:59:40', '/static/upload/image/20190709/1562662787967455.jpg', '', '', '', '', '', '', 1, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 16:59:48', ' 2019-07-10 09:09:30', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2319, 'jp', '101', '', 'スマートヘイズマスク', '#333333', '', '', 'admin', '本站', '', '2019-07-09 16:59:49', '/static/upload/image/20190709/1562662795535327.jpg', '', '', '', '', '', '', 7, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-07-09 16:59:57', ' 2019-07-10 09:08:40', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2320, 'jp', '101', '', 'シートマウント電気掃除機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 16:59:58', '/static/upload/image/20190709/1562662803895376.jpg', '', '', '', '', '', '', 4, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:00:05', ' 2019-07-10 09:09:05', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2321, 'jp', '101', '', '電気プッシュ掃除機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:00:06', '/static/upload/image/20190709/1562662813587083.jpg', '', '', '', '', '', '', 6, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:00:15', ' 2019-07-10 09:08:49', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2322, 'jp', '101', '', '電気ハンド', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:00:16', '/static/upload/image/20190709/1562662822681075.jpg', '', '', '', '', '', '', 3, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:00:26', ' 2019-07-10 09:09:14', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2323, 'jp', '101', '', '電気式床洗濯機', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:00:27', '/static/upload/image/20190709/1562662832929406.jpg', '', '', '', '', '', '', 2, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-07-09 17:00:33', ' 2019-07-10 09:09:22', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2324, 'jp', '103', '', '会議室', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:10:08', '/static/upload/image/20190709/1562663426471333.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:10:28', ' 2019-07-10 09:09:41', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2325, 'jp', '103', '', '寮', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:10:29', '/static/upload/image/20190709/1562663435710183.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:10:37', ' 2019-07-10 09:10:06', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2326, 'jp', '103', '', 'オフィス', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:10:38', '/static/upload/image/20190709/1562663443776285.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:10:45', ' 2019-07-10 09:10:15', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2327, 'jp', '103', '', 'レストラン', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:10:46', '/static/upload/image/20190709/1562663451303951.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:10:53', ' 2019-07-10 09:10:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2328, 'jp', '103', '', 'ワークショップドア', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:10:54', '/static/upload/image/20190709/1562663459532555.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:11:02', ' 2019-07-10 09:10:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2329, 'jp', '103', '', 'ワークショップ', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:11:03', '/static/upload/image/20190709/1562663468597376.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-09 17:11:10', ' 2019-07-10 09:10:43', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2330, 'jp', '102', '', '自動車搭載電気器具は新しい消費者の好みになる', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:11:31', '/static/upload/image/20190709/1562663763196886.jpg', '', '&lt;p style=&quot;line-height: 3em;&quot;&gt;　　上海で開かれた2010年の中国電気・電気サービスフェスティバルは、生活サービス活動をシミュレートすることによって、消費者が自動車電気製品の機能を理解し、習得することを可能にします。中国家庭電器電気設備協会による調査によると、オンボード電化製品を持つ消費者の間で、GPSは61.3 %を占め、DVDは51.1 %を占め、掃除機は32.1 %を占め、テレビは21.9 %を占め、コンピュータは12.4 %を占めており、消費者は12.4 %を占めていない。ボードの電気器具は19.7 %を占めている。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　中国は世界の主要自動車消費者になった。中国ホームアプライアンスサービスメンテナンス協会の幹部副社長兼事務総長によると、中国の自動車市場は今年、170万台を超えると予想されている。自動車は、過去の車両から今日のエンターテイメントツールまで徐々に発展しました、そして、自動車の電気器具は新しい消費者好みになります。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　中国家庭電器サービス保守協会の粗い統計によると，各種機能を搭載した車載電気機器の種類が多い。多くの種類のコンピュータ、テレビ、ナビゲータなどがあります。しかし、消費者はオンボードの電気機器についてほとんど知りません、そして、不適切な使用が消費者に回復不可能な影響をもたらすので、彼らは使用技術について十分に知りません。損失はオンボード電化製品の低使用の理由の一つである。&lt;/p&gt;', '', '', '', '　　上海で開かれた2010年の中国電気・電気サービスフェスティバルは、生活サービス活動をシミュレートすることによって、消費者が自動車電気製品の機能を理解し、習得することを可能にします。中国家庭電器電気設備協会による調査によると、オンボード電化製品を持つ消費者の間で、GPSは61.3 %を占め、DVDは51.1 %を占め、掃除機は32.1 %を占め、テレビは21.9 %を占め、コンピュータは12.4 %を占めており、消費者は12.4 %を占めていない。ボードの電気器具は19.7 %を占めている。', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-07-09 17:12:28', ' 2019-07-10 09:07:42', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2331, 'jp', '102', '', '家電機器のメンテナンスのヒント-教えてあげます', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:16:09', '/static/upload/image/20190709/1562664047236708.jpg', '', '&lt;p style=&quot;line-height: 3em;&quot;&gt;　　天気が寒いとき、我々は服を加え始めます、冬の服は徐々に上半身を開始します、そして、夏の薄いシャツは徐々に置かれます、人々は寒さと暖かさを知っています、実際には、家庭用器具は同じです。すべての夏に働いているエアコンやファンは、最終的に“冬の休暇”を指導しているので、彼らに休暇を与える前に、彼らはまた維持し、クリーンアップされる必要がありますので、良い状態と来年の戦いを維持するために。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　冬によく使われる加湿器と電気ヒーターも、「任務」で働き始めて、彼らの前に彼らの「健康」ステータスをチェックしなければなりません。彼らがすでに「再利用に不適当である」ならば、彼らはできるだけ早く「才能をリクルートして、新しいものを募集しなければなりません」。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　もちろん、冷蔵庫、テレビ、洗濯機、水ディスペンサーなどの家庭用品は定期的に維持されなければならない。これは私たちの通常の使用を確保するだけでなく、できるだけ多くのサービス寿命を延長することができます。最も重要なことは、ユーザーの健康を守ることです。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　これらの家庭用電化製品は、我々の長期的な使用プロセスで塵と汚れを貯蔵するのが簡単です。たとえば、エアコンが洗浄されていない場合は、簡単に上部気道感染を引き起こす；洗濯機が洗浄されていない場合、それはダニや細菌を繁殖させる。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　そして、平日の家電製品のクリーニングは、単に表面を掃除するとみなされることができます。そこで，参考に便利な家庭用品の保守方法をまとめた。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　空調機&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　エアコンは、現在、ほとんどすべての家族が夏を過ごす必要性になりました。夏の使用は、シェルの表面を洗浄する目的を達成するために簡単に拭くことができるシェルには、常にダストの層があり、空調のメンテナンスは主にその内部のフィルタです。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　空調用フィルターはほこりが溜まる場所であるので、しばしば我々は上部気道感染を防ぐためにそれらをきれいにしなければなりません。フィルターを掃除するときは、まず電源を切り、フィルターを取り外して、掃除機を使って、ほこりを吸収したり、水で洗い流したりしてください。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　また、我々は単にきれいにすることができます場所は、また、ほこりに付着しやすい場所である熱交換器のフィンですが、また、細菌を繁殖しやすいが、また、私たちの健康に影響を与える。この時、我々はプロのツールを使用する必要があります-エアコンの洗浄剤は、深い放射線の内部に行くことができます汚れを分解し、洗浄の目的を達成する。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　熱交換器の洗浄フィンは空気清浄機を必要とする&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　方法は非常に使いやすい、すなわち、フィンに直接スプレーする。あまり使いすぎないでください。スプレー後、約10分間立ちます。この時、乾燥したフィルターメッシュを戻し、カバープレートをリストアしてよく固定できます。その後、エアコンの冷凍モードをオンにし、温度、大きな空気量を低くし、約30分実行します。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　冷凍モードをオンにして、塵は水で流れ出す&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　このように、エアコンの空気質をより良くすることができるだけでなく、フィルタおよびラジエータ上の重い塵を減らすことができ、主エアコンの負荷を軽減し、エアコンの寿命を延ばすことができる。しかし、特定の期間以上を使用した後、徹底的に内部をきれいにする専門家を見つけることは良いです。空気調和機の内部はより複雑であるので、容易に分解しない方がよい。それはあなたが2年ごとにそれをきれいにお勧めします。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　北では、冬の暖房のために、エアコンは基本的に離れられることができます。掃除の後、それをカバーするために、ほこりカバーを見つけなければなりません。可能であれば、屋外のマシンもラップアップする必要があります。また、エアコンの電源を抜いて、リモートコントローラのバッテリーを取り出す必要があります。南ではエアコンを使用し続けることがありますが、清掃やメンテナンスの作業を残すことはできません。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　扇風機&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　使用の夏の後、中期にファンが掃除されなかったならば、ファンが黒いちりの層を蓄積したと推定されます。ファンブレードを掃除することは少し面倒ですが、それは非常に困難ではありません。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　最初に電源を切った後、ファンの保護ネットを開くので、ファンの葉を取り外すことができるように掃除することができるように、あなたは直接ファンをファンの葉を洗剤や洗剤と混合してきれいにすることができます永遠に拭く。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　さらに、ファン保護ネット&lt;/p&gt;', '', '', '', '　　天気が寒いとき、我々は服を加え始めます、冬の服は徐々に上半身を開始します、そして、夏の薄いシャツは徐々に置かれます、人々は寒さと暖かさを知っています、実際には、家庭用器具は同じです。すべての夏に働いているエアコンやファンは、最終的に“冬の休暇”を指導しているので、彼らに休暇を与える前に、彼らはまた維持し、クリーンアップされる必要がありますので、良い状態と来年の戦いを維持するために。', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-07-09 17:20:49', ' 2019-07-10 09:07:55', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2332, 'jp', '102', '', 'あなたは夏に空気清浄機をオンにする必要がありますか？', '#333333', '', '', 'admin', '本站', '', '2019-07-09 17:20:50', '/static/upload/image/20190709/1562664209789444.jpg', '', '&lt;p style=&quot;line-height: 3em;&quot;&gt;　　夏の天候は暑く、室内のエアコンは少ないことはできません。しかし、ドアや窓を閉めて空調を開始するのに人々が使用されるため、室内ホルムアルデヒドはこの時に蓄積しやすくなり、二次的な煙、細菌、食用油ヒュームなどによる室内空気汚染が起こりやすい。長い間このような空気環境にいることは、人々の健康に資するものではありません。したがって、いつでも家庭で空気清浄機をオンにする必要があります。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　あなたは夏の浄化器をオンにする必要がありますか？&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　夏には多くの人が装飾に慣れている。ホルムアルデヒド及びラドンの高濃度を防止するためには，ホルムアルデヒド除去のためのいくつかの土壌方法が採用されるが，これらの処方におけるホルムアルデヒド除去率は期待通りではない。空気清浄機は、屋内のホルムアルデヒドと他の汚染物質を浄化するためにも必要です。装飾におけるホルムアルデヒド汚染の防止に加えて，夏の開空気清浄機には以下の機能がある。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　1 .細菌感染の防止&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　夏はバクテリアが増殖する季節です。直接我々の体に入ることに加えて、これらの病原体は、直径の5マイクロメートル未満の粒子とちりに付随することによって我々の体に入ることもできます。我々の演説、咳、くしゃみや他の行動を通じて、口、喉、臓器や肺の病原微生物は簡単に空気を介して送信することができます。他の人には、いくつかの流行病のように、病原体の普及によって引き起こされる。空気清浄機の殺菌機能は非常によくこの問題を解決することができますので、家族の誰かが風邪や咳を持っている場合は、空気清浄機を開く方が良いです。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　2 .空調病害の予防&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　夏は気温が高く、一日中エアコンをつけられた部屋に泊まりたい人が多い。ブローエアコンは涼しいですが、一日中ドアや窓を閉めることは大きな湿度を引き起こすだけでなく、室内空気を循環させないようにします。そして、屋内の空気汚染を引き起こします。エアコンをオンにすると、空気清浄機をオンにすることをお勧めします。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　3 .室内ホルムアルデヒドの浄化&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　室内の汚染物質の揮発は気温の上昇に伴って増加する。保健省の統計によると、家具によって放出されるホルムアルデヒドとベンゼンの濃度は湿度の増加とともに0.15〜0.37倍増加する。そして、家の汚染物質は、短い時間できれいにリリースされることができません。それは完全にそれらを解放するために15年かかります。屋内で売られる多くのホルムアルデヒド除去空気清浄機は、我々がホルムアルデヒドと他の有害な物質を除去するのを援助することができます。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　4 .二次煙の危険性の防止&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　多くの人々は、彼らの家族のために中古煙の隠れた危険を埋めます。中古煙の危険性はよく知られている。ホルムアルデヒド、ベンゼン、塩化ビニル、ヒ素、アンモニア、およびシアン化水素を含む既知の有毒または発癌性物質の何百も含まれています。喫煙者自身が吸入した煙と比較して，副煙中の多くの発癌性物質や毒性化学物質の濃度が高い。空気清浄機の浄化機能は、これらの有害物質を除去し、家族のための健康的な屋内生活環境を提供することができます。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　2 .浄化器の効率を改善する方法&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　1 .中央に置く&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　空気清浄機は空気を浄化するために気流の動きを使用するので、空気の出口をシールドし、浄化効率を減らす壁に空気清浄機を置かないでください。美的な状況に影響を及ぼさずに、部屋の真ん中に清浄機を入れてみてください。効果は最高になります。なぜなら、それはすべての丸く、妨げられない方法で働くことができるからです。浄水器は移動可能であるため、コーナー内の強い風で操作することができ、室内空気質を迅速に向上させることができ、その後、風の浄化の途中に置くことができます。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　2 .フィルタを定期的にきれいにする&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　空気清浄機は、マシン内の空気中の不純物や塵を吸収することができますので、一度マシン内の塵を含むダストプレートがいっぱいである、その作業効率が大幅に減少するので、我々は、清浄器のサービス寿命を延ばすために定期的に塵板をきれいにすることを忘れないようにする必要があります。&lt;/p&gt;&lt;p style=&quot;line-height: 3em;&quot;&gt;　　通常、月に半月は、テイヤー、フィルタダストを拭くオフにする必要があります場合は、清浄機の開口部は、別の匂いを嗅ぐことができる場合も、フィルタ材料は基本的に飽和していることを示し、我々はクリーンアップまたは交換する必要があります、通常の年に半年ECTは、また、状況の特定の使用に応じて。決める。&lt;/p&gt;', '', '', '', '　　夏の天候は暑く、室内のエアコンは少ないことはできません。しかし、ドアや窓を閉めて空調を開始するのに人々が使用されるため、室内ホルムアルデヒドはこの時に蓄積しやすくなり、二次的な煙、細菌、食用油ヒュームなどによる室内空気汚染が起こりやすい。長い間このような空気環境にいることは、人々の健康に資するものではありません。したがって、いつでも家庭で空気清浄機をオンにする必要があります。', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-07-09 17:23:31', ' 2019-07-10 09:08:01', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2900, 'de', '105', '', 'Über uns', '#333333', '', '', 'admin', '本站', '', '2019-07-15 09:29:09', '', '/static/upload/image/20190712/1562895919627609.jpg,/static/upload/image/20190715/1563158932958778.jpg,/static/upload/image/20190715/1563158935234220.jpg,/static/upload/image/20190715/1563158937759329.jpg', '&lt;p&gt;&amp;nbsp; Das Unternehmen ist ein professioneller Ganzhausauftrag, Massivholzschranktüren, Schränke, Weinschränke und Massivholzzubehör Produktionslieferanten.Basierend auf den modernen orientalischen Zollprüfstandards, mit dem Gestaltungskonzept &amp;quot;Gesundheit, Umweltschutz, Natur, Harmonie und Adel&amp;quot;, die sich an das &amp;quot;Goldprodukte&amp;quot; Produktionskonzept der Exzellenz halten, die Befürwortung der Kernkultur von &amp;quot;Ehrgeiz ist hoch, gut wie Wasser, schwern rewards diligence &amp;quot;, ist der Fokus der Branche geworden.Und verfügt über ein komplettes Qualitätsmanagementsystem, die gleichen Produkte strikt die Rohstoffe der zusammengesetzten nationalen Norm annehmen, jeder Index vollständig die nationale Norm, ist das echte grüne Umweltschutzmittel.Das Unternehmen hat eine gute Zusammenarbeit in mehr als tausend inländischen Unternehmen aufgrund des guten Unternehmensbildes und der hervorragenden Fähigkeiten, der hohen Qualität der Produkte und des Gold -After -Sales -Service, mit den unermüdlichen Bemühungen der Mitarbeiter und Betreiber, kollektive Planung, BrainstoFörderung und positive Innovation, mit gutem Unternehmensimage und hervorragenden Fähigkeiten, hochwertigen Produkten und Gold Medaille After -Sales -Service, gleichzeitig aktiv die Öffnung des internationalen Marktes und die Erweiterung des Geschäftsfeldes.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Wir halten uns an die &amp;quot;beste Qualität Produkte für Kunden, um den maximalen Gewinn&amp;quot; Unternehmensphilosophie zu gewinnen, und in Taiwan, um unternehmerische, ehrliche und innovative Entwicklung Prozess weiter zu wachsen.Wir heißen Freunde aus aller Welt herzlich willkommen, um gemeinsam Brillanz zu schaffen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Das Unternehmen ist ein professioneller Ganzhausauftrag, Massivholzschranktüren, Schränke, Weinschränke und Massivholzzubehör Produktionslieferanten.Basierend auf den modernen orientalischen Zollprüfstandards, mit dem Gestaltungskonzept &amp;quot;Gesundheit, Umweltschutz, Natur, Harmonie und', 255, '1', '0', '0', '0', 6, 0, 0, 'admin', 'admin', '2019-07-15 09:29:09', ' 2019-07-15 15:52:56', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2901, 'de', '110', '', 'Kontakt', '#333333', '', '', 'admin', '本站', '', '2019-07-15 09:30:30', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-07-15 09:30:30', '2019-07-15 09:30:30', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2998, 'de', '123', '', 'Teile_1', '#333333', '', '', 'admin', '本站', '', '2019-07-15 14:38:06', '/static/upload/image/20190715/111/parts_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (2999, 'de', '123', '', 'Teile_2', '#333334', '', '', 'admin', '本站', '', '2019-07-15 14:38:07', '/static/upload/image/20190715/111/parts_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3000, 'de', '123', '', 'Teile_3', '#333335', '', '', 'admin', '本站', '', '2019-07-15 14:38:08', '/static/upload/image/20190715/111/parts_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3001, 'de', '123', '', 'Teile_4', '#333336', '', '', 'admin', '本站', '', '2019-07-15 14:38:09', '/static/upload/image/20190715/111/parts_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3002, 'de', '123', '', 'Teile_5', '#333337', '', '', 'admin', '本站', '', '2019-07-15 14:38:10', '/static/upload/image/20190715/111/parts_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3003, 'de', '123', '', 'Teile_6', '#333338', '', '', 'admin', '本站', '', '2019-07-15 14:38:11', '/static/upload/image/20190715/111/parts_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3004, 'de', '123', '', 'Teile_7', '#333339', '', '', 'admin', '本站', '', '2019-07-15 14:38:12', '/static/upload/image/20190715/111/parts_7.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3005, 'de', '123', '', 'Teile_8', '#333340', '', '', 'admin', '本站', '', '2019-07-15 14:38:13', '/static/upload/image/20190715/111/parts_8.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3006, 'de', '123', '', 'Teile_9', '#333341', '', '', 'admin', '本站', '', '2019-07-15 14:38:14', '/static/upload/image/20190715/111/parts_9.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3007, 'de', '123', '', 'Teile_10', '#333342', '', '', 'admin', '本站', '', '2019-07-15 14:38:15', '/static/upload/image/20190715/111/parts_10.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3008, 'de', '123', '', 'Teile_11', '#333343', '', '', 'admin', '本站', '', '2019-07-15 14:38:16', '/static/upload/image/20190715/111/parts_11.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3009, 'de', '123', '', 'Teile_12', '#333344', '', '', 'admin', '本站', '', '2019-07-15 14:38:17', '/static/upload/image/20190715/111/parts_12.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3010, 'de', '123', '', 'Teile_13', '#333345', '', '', 'admin', '本站', '', '2019-07-15 14:38:18', '/static/upload/image/20190715/111/parts_13.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3011, 'de', '123', '', 'Teile_14', '#333346', '', '', 'admin', '本站', '', '2019-07-15 14:38:19', '/static/upload/image/20190715/111/parts_14.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3012, 'de', '122', '', 'Weatherboarding_1', '#333347', '', '', 'admin', '本站', '', '2019-07-15 14:38:20', '/static/upload/image/20190715/98/Weatherboarding_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3013, 'de', '122', '', 'Weatherboarding_2', '#333348', '', '', 'admin', '本站', '', '2019-07-15 14:38:21', '/static/upload/image/20190715/98/Weatherboarding_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3014, 'de', '122', '', 'Weatherboarding_3', '#333349', '', '', 'admin', '本站', '', '2019-07-15 14:38:22', '/static/upload/image/20190715/98/Weatherboarding_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3015, 'de', '122', '', 'Weatherboarding_4', '#333350', '', '', 'admin', '本站', '', '2019-07-15 14:38:23', '/static/upload/image/20190715/98/Weatherboarding_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3016, 'de', '122', '', 'Weatherboarding_5', '#333351', '', '', 'admin', '本站', '', '2019-07-15 14:38:24', '/static/upload/image/20190715/98/Weatherboarding_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3017, 'de', '122', '', 'Weatherboarding_6', '#333352', '', '', 'admin', '本站', '', '2019-07-15 14:38:25', '/static/upload/image/20190715/98/Weatherboarding_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3018, 'de', '122', '', 'Weatherboarding_7', '#333353', '', '', 'admin', '本站', '', '2019-07-15 14:38:26', '/static/upload/image/20190715/98/Weatherboarding_7.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3019, 'de', '122', '', 'Weatherboarding_8', '#333354', '', '', 'admin', '本站', '', '2019-07-15 14:38:27', '/static/upload/image/20190715/98/Weatherboarding_8.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3020, 'de', '122', '', 'Weatherboarding_9', '#333355', '', '', 'admin', '本站', '', '2019-07-15 14:38:28', '/static/upload/image/20190715/98/Weatherboarding_9.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3021, 'de', '121', '', 'Der Weinkeller_1', '#333356', '', '', 'admin', '本站', '', '2019-07-15 14:38:29', '/static/upload/image/20190715/97/Winecellar_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3022, 'de', '121', '', 'Der Weinkeller_2', '#333357', '', '', 'admin', '本站', '', '2019-07-15 14:38:30', '/static/upload/image/20190715/97/Winecellar_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3023, 'de', '121', '', 'Der Weinkeller_3', '#333358', '', '', 'admin', '本站', '', '2019-07-15 14:38:31', '/static/upload/image/20190715/97/Winecellar_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3024, 'de', '121', '', 'Der Weinkeller_4', '#333359', '', '', 'admin', '本站', '', '2019-07-15 14:38:32', '/static/upload/image/20190715/97/Winecellar_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3025, 'de', '121', '', 'Der Weinkeller_5', '#333360', '', '', 'admin', '本站', '', '2019-07-15 14:38:33', '/static/upload/image/20190715/97/Winecellar_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3026, 'de', '121', '', 'Der Weinkeller_6', '#333361', '', '', 'admin', '本站', '', '2019-07-15 14:38:34', '/static/upload/image/20190715/97/Winecellar_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3027, 'de', '120', '', 'Badezimmer Schrank_1', '#333362', '', '', 'admin', '本站', '', '2019-07-15 14:38:35', '/static/upload/image/20190715/84/Bathroom_cabinet1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3028, 'de', '120', '', 'Badezimmer Schrank_2', '#333363', '', '', 'admin', '本站', '', '2019-07-15 14:38:36', '/static/upload/image/20190715/84/Bathroom_cabinet2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3029, 'de', '120', '', 'Badezimmer Schrank_3', '#333364', '', '', 'admin', '本站', '', '2019-07-15 14:38:37', '/static/upload/image/20190715/84/Bathroom_cabinet3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3030, 'de', '120', '', 'Badezimmer Schrank_4', '#333365', '', '', 'admin', '本站', '', '2019-07-15 14:38:38', '/static/upload/image/20190715/84/Bathroom_cabinet4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3031, 'de', '120', '', 'Badezimmer Schrank_5', '#333366', '', '', 'admin', '本站', '', '2019-07-15 14:38:39', '/static/upload/image/20190715/84/Bathroom_cabinet5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3032, 'de', '120', '', 'Badezimmer Schrank_6', '#333367', '', '', 'admin', '本站', '', '2019-07-15 14:38:40', '/static/upload/image/20190715/84/Bathroom_cabinet6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3033, 'de', '120', '', 'Badezimmer Schrank_7', '#333368', '', '', 'admin', '本站', '', '2019-07-15 14:38:41', '/static/upload/image/20190715/84/Bathroom_cabinet7.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3034, 'de', '120', '', 'Badezimmer Schrank_8', '#333369', '', '', 'admin', '本站', '', '2019-07-15 14:38:42', '/static/upload/image/20190715/84/Bathroom_cabinet8.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3035, 'de', '120', '', 'Badezimmer Schrank_9', '#333370', '', '', 'admin', '本站', '', '2019-07-15 14:38:43', '/static/upload/image/20190715/84/Bathroom_cabinet9.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3036, 'de', '120', '', 'Badezimmer Schrank_10', '#333371', '', '', 'admin', '本站', '', '2019-07-15 14:38:44', '/static/upload/image/20190715/84/Bathroom_cabinet10.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3037, 'de', '120', '', 'Badezimmer Schrank_11', '#333372', '', '', 'admin', '本站', '', '2019-07-15 14:38:45', '/static/upload/image/20190715/84/Bathroom_cabinet11.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3038, 'de', '120', '', 'Badezimmer Schrank_12', '#333373', '', '', 'admin', '本站', '', '2019-07-15 14:38:46', '/static/upload/image/20190715/84/Bathroom_cabinet12.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3039, 'de', '120', '', 'Badezimmer Schrank_13', '#333374', '', '', 'admin', '本站', '', '2019-07-15 14:38:47', '/static/upload/image/20190715/84/Bathroom_cabinet13.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3040, 'de', '120', '', 'Badezimmer Schrank_14', '#333375', '', '', 'admin', '本站', '', '2019-07-15 14:38:48', '/static/upload/image/20190715/84/Bathroom_cabinet14.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3041, 'de', '120', '', 'Badezimmer Schrank_15', '#333376', '', '', 'admin', '本站', '', '2019-07-15 14:38:49', '/static/upload/image/20190715/84/Bathroom_cabinet15.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3042, 'de', '120', '', 'Badezimmer Schrank_16', '#333377', '', '', 'admin', '本站', '', '2019-07-15 14:38:50', '/static/upload/image/20190715/84/Bathroom_cabinet16.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3043, 'de', '120', '', 'Badezimmer Schrank_17', '#333378', '', '', 'admin', '本站', '', '2019-07-15 14:38:51', '/static/upload/image/20190715/84/Bathroom_cabinet17.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3044, 'de', '120', '', 'Badezimmer Schrank_18', '#333379', '', '', 'admin', '本站', '', '2019-07-15 14:38:52', '/static/upload/image/20190715/84/Bathroom_cabinet18.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3045, 'de', '120', '', 'Badezimmer Schrank_19', '#333380', '', '', 'admin', '本站', '', '2019-07-15 14:38:53', '/static/upload/image/20190715/84/Bathroom_cabinet19.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3046, 'de', '120', '', 'Badezimmer Schrank_20', '#333381', '', '', 'admin', '本站', '', '2019-07-15 14:38:54', '/static/upload/image/20190715/84/Bathroom_cabinet20.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3047, 'de', '120', '', 'Badezimmer Schrank_21', '#333382', '', '', 'admin', '本站', '', '2019-07-15 14:38:55', '/static/upload/image/20190715/84/Bathroom_cabinet21.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3048, 'de', '120', '', 'Badezimmer Schrank_22', '#333383', '', '', 'admin', '本站', '', '2019-07-15 14:38:56', '/static/upload/image/20190715/84/Bathroom_cabinet22.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3049, 'de', '120', '', 'Badezimmer Schrank_23', '#333384', '', '', 'admin', '本站', '', '2019-07-15 14:38:57', '/static/upload/image/20190715/84/Bathroom_cabinet23.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3050, 'de', '120', '', 'Badezimmer Schrank_24', '#333385', '', '', 'admin', '本站', '', '2019-07-15 14:38:58', '/static/upload/image/20190715/84/Bathroom_cabinet24.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3051, 'de', '120', '', 'Badezimmer Schrank_25', '#333386', '', '', 'admin', '本站', '', '2019-07-15 14:38:59', '/static/upload/image/20190715/84/Bathroom_cabinet25.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3052, 'de', '120', '', 'Badezimmer Schrank_26', '#333387', '', '', 'admin', '本站', '', '2019-07-15 14:38:60', '/static/upload/image/20190715/84/Bathroom_cabinet26.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3053, 'de', '120', '', 'Badezimmer Schrank_27', '#333388', '', '', 'admin', '本站', '', '2019-07-15 14:38:61', '/static/upload/image/20190715/84/Bathroom_cabinet27.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3054, 'de', '120', '', 'Badezimmer Schrank_28', '#333389', '', '', 'admin', '本站', '', '2019-07-15 14:38:62', '/static/upload/image/20190715/84/Bathroom_cabinet28.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3055, 'de', '120', '', 'Badezimmer Schrank_29', '#333390', '', '', 'admin', '本站', '', '2019-07-15 14:38:63', '/static/upload/image/20190715/84/Bathroom_cabinet29.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3056, 'de', '120', '', 'Badezimmer Schrank_30', '#333391', '', '', 'admin', '本站', '', '2019-07-15 14:38:64', '/static/upload/image/20190715/84/Bathroom_cabinet30.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3057, 'de', '120', '', 'Badezimmer Schrank_31', '#333392', '', '', 'admin', '本站', '', '2019-07-15 14:38:65', '/static/upload/image/20190715/84/Bathroom_cabinet31.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3058, 'de', '120', '', 'Badezimmer Schrank_32', '#333393', '', '', 'admin', '本站', '', '2019-07-15 14:38:66', '/static/upload/image/20190715/84/Bathroom_cabinet32.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3059, 'de', '120', '', 'Badezimmer Schrank_33', '#333394', '', '', 'admin', '本站', '', '2019-07-15 14:38:67', '/static/upload/image/20190715/84/Bathroom_cabinet33.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3060, 'de', '120', '', 'Badezimmer Schrank_34', '#333395', '', '', 'admin', '本站', '', '2019-07-15 14:38:68', '/static/upload/image/20190715/84/Bathroom_cabinet34.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3061, 'de', '119', '', 'Wardrobe_1', '#333396', '', '', 'admin', '本站', '', '2019-07-15 14:38:69', '/static/upload/image/20190715/58/Wardrobe_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3062, 'de', '119', '', 'Wardrobe_2', '#333397', '', '', 'admin', '本站', '', '2019-07-15 14:38:70', '/static/upload/image/20190715/58/Wardrobe_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3063, 'de', '119', '', 'Wardrobe_3', '#333398', '', '', 'admin', '本站', '', '2019-07-15 14:38:71', '/static/upload/image/20190715/58/Wardrobe_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3064, 'de', '119', '', 'Wardrobe_4', '#333399', '', '', 'admin', '本站', '', '2019-07-15 14:38:72', '/static/upload/image/20190715/58/Wardrobe_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3065, 'de', '119', '', 'Wardrobe_5', '#333400', '', '', 'admin', '本站', '', '2019-07-15 14:38:73', '/static/upload/image/20190715/58/Wardrobe_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3066, 'de', '119', '', 'Wardrobe_6', '#333401', '', '', 'admin', '本站', '', '2019-07-15 14:38:74', '/static/upload/image/20190715/58/Wardrobe_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3067, 'de', '118', '', 'Garderobe_1', '#333402', '', '', 'admin', '本站', '', '2019-07-15 14:38:75', '/static/upload/image/20190715/55/Cupboard_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3068, 'de', '118', '', 'Garderobe_2', '#333403', '', '', 'admin', '本站', '', '2019-07-15 14:38:76', '/static/upload/image/20190715/55/Cupboard_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3069, 'de', '118', '', 'Garderobe_3', '#333404', '', '', 'admin', '本站', '', '2019-07-15 14:38:77', '/static/upload/image/20190715/55/Cupboard_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3070, 'de', '118', '', 'Garderobe_4', '#333405', '', '', 'admin', '本站', '', '2019-07-15 14:38:78', '/static/upload/image/20190715/55/Cupboard_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3071, 'de', '118', '', 'Garderobe_5', '#333406', '', '', 'admin', '本站', '', '2019-07-15 14:38:79', '/static/upload/image/20190715/55/Cupboard_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3072, 'de', '118', '', 'Garderobe_6', '#333407', '', '', 'admin', '本站', '', '2019-07-15 14:38:80', '/static/upload/image/20190715/55/Cupboard_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3073, 'de', '118', '', 'Garderobe_7', '#333408', '', '', 'admin', '本站', '', '2019-07-15 14:38:81', '/static/upload/image/20190715/55/Cupboard_7.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3074, 'de', '118', '', 'Garderobe_8', '#333409', '', '', 'admin', '本站', '', '2019-07-15 14:38:82', '/static/upload/image/20190715/55/Cupboard_8.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3075, 'de', '117', '', 'Die Tür_1', '#333410', '', '', 'admin', '本站', '', '2019-07-15 14:38:83', '/static/upload/image/20190715/54/Cupboard door_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3076, 'de', '117', '', 'Die Tür_2', '#333411', '', '', 'admin', '本站', '', '2019-07-15 14:38:84', '/static/upload/image/20190715/54/Cupboard door_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3077, 'de', '117', '', 'Die Tür_3', '#333412', '', '', 'admin', '本站', '', '2019-07-15 14:38:85', '/static/upload/image/20190715/54/Cupboard door_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3078, 'de', '117', '', 'Tür aus Massivholzr_1', '#333413', '', '', 'admin', '本站', '', '2019-07-15 14:38:86', '/static/upload/image/20190715/54/Solid Wood Suite Door_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3079, 'de', '117', '', 'Tür aus Massivholzr_2', '#333414', '', '', 'admin', '本站', '', '2019-07-15 14:38:87', '/static/upload/image/20190715/54/Solid Wood Suite Door_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3080, 'de', '117', '', 'Tür aus Massivholzr_3', '#333415', '', '', 'admin', '本站', '', '2019-07-15 14:38:88', '/static/upload/image/20190715/54/Solid Wood Suite Door_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3081, 'de', '117', '', 'Tür aus Massivholzr_4', '#333416', '', '', 'admin', '本站', '', '2019-07-15 14:38:89', '/static/upload/image/20190715/54/Solid Wood Suite Door_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3082, 'de', '117', '', 'Tür aus Massivholzr_5', '#333417', '', '', 'admin', '本站', '', '2019-07-15 14:38:90', '/static/upload/image/20190715/54/Solid Wood Suite Door_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3083, 'de', '117', '', 'Tür aus Massivholzr_6', '#333418', '', '', 'admin', '本站', '', '2019-07-15 14:38:91', '/static/upload/image/20190715/54/Solid Wood Suite Door_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3084, 'de', '117', '', 'Garderobe Tür', '#333419', '', '', 'admin', '本站', '', '2019-07-15 14:38:92', '/static/upload/image/20190715/54/Wardrobe door.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3111, 'de', '128', '', 'Cloakroom_1', '#333419', '', '', 'admin', '本站', '', '2019-07-15 14:38:92', '/static/upload/image/20190715/a/Cloakroom_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3112, 'de', '128', '', 'Cloakroom_2', '#333420', '', '', 'admin', '本站', '', '2019-07-15 14:38:93', '/static/upload/image/20190715/a/Cloakroom_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3113, 'de', '128', '', 'Cloakroom_3', '#333421', '', '', 'admin', '本站', '', '2019-07-15 14:38:94', '/static/upload/image/20190715/a/Cloakroom_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3114, 'de', '128', '', 'Cloakroom_4', '#333422', '', '', 'admin', '本站', '', '2019-07-15 14:38:95', '/static/upload/image/20190715/a/Cloakroom_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3115, 'de', '128', '', 'Cloakroom_5', '#333423', '', '', 'admin', '本站', '', '2019-07-15 14:38:96', '/static/upload/image/20190715/a/Cloakroom_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3116, 'de', '128', '', 'Cloakroom_6', '#333424', '', '', 'admin', '本站', '', '2019-07-15 14:38:97', '/static/upload/image/20190715/a/Cloakroom_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3117, 'de', '128', '', 'Cloakroom_7', '#333425', '', '', 'admin', '本站', '', '2019-07-15 14:38:98', '/static/upload/image/20190715/a/Cloakroom_7.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3118, 'de', '128', '', 'Cloakroom_8', '#333426', '', '', 'admin', '本站', '', '2019-07-15 14:38:99', '/static/upload/image/20190715/a/Cloakroom_8.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3119, 'de', '127', '', 'Schlafzimmer_1', '#333427', '', '', 'admin', '本站', '', '2019-07-15 14:38:100', '/static/upload/image/20190715/a/Bedroom_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3120, 'de', '127', '', 'Schlafzimmer_2', '#333428', '', '', 'admin', '本站', '', '2019-07-15 14:38:101', '/static/upload/image/20190715/a/Bedroom_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3121, 'de', '127', '', 'Schlafzimmer_3', '#333429', '', '', 'admin', '本站', '', '2019-07-15 14:38:102', '/static/upload/image/20190715/a/Bedroom_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3122, 'de', '127', '', 'Schlafzimmer_4', '#333430', '', '', 'admin', '本站', '', '2019-07-15 14:38:103', '/static/upload/image/20190715/a/Bedroom_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3123, 'de', '127', '', 'Schlafzimmer_5', '#333431', '', '', 'admin', '本站', '', '2019-07-15 14:38:104', '/static/upload/image/20190715/a/Bedroom_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3124, 'de', '126', '', 'Studie_1', '#333432', '', '', 'admin', '本站', '', '2019-07-15 14:38:105', '/static/upload/image/20190715/a/Study_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3125, 'de', '126', '', 'Studie_2', '#333433', '', '', 'admin', '本站', '', '2019-07-15 14:38:106', '/static/upload/image/20190715/a/Study_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3126, 'de', '126', '', 'Studie_3', '#333434', '', '', 'admin', '本站', '', '2019-07-15 14:38:107', '/static/upload/image/20190715/a/Study_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3127, 'de', '126', '', 'Studie_4', '#333435', '', '', 'admin', '本站', '', '2019-07-15 14:38:108', '/static/upload/image/20190715/a/Study_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3128, 'de', '126', '', 'Studie_5', '#333436', '', '', 'admin', '本站', '', '2019-07-15 14:38:109', '/static/upload/image/20190715/a/Study_5.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3129, 'de', '126', '', 'Studie_6', '#333437', '', '', 'admin', '本站', '', '2019-07-15 14:38:110', '/static/upload/image/20190715/a/Study_6.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3130, 'de', '125', '', 'Treppen_1', '#333438', '', '', 'admin', '本站', '', '2019-07-15 14:38:111', '/static/upload/image/20190715/a/Stairs_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3131, 'de', '125', '', 'Treppen_2', '#333439', '', '', 'admin', '本站', '', '2019-07-15 14:38:112', '/static/upload/image/20190715/a/Stairs_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3132, 'de', '125', '', 'Treppen_3', '#333440', '', '', 'admin', '本站', '', '2019-07-15 14:38:113', '/static/upload/image/20190715/a/Stairs_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3133, 'de', '125', '', 'Treppen_4', '#333441', '', '', 'admin', '本站', '', '2019-07-15 14:38:114', '/static/upload/image/20190715/a/Stairs_4.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3134, 'de', '124', '', 'Das Wohnzimmer_1', '#333442', '', '', 'admin', '本站', '', '2019-07-15 14:38:115', '/static/upload/image/20190715/a/Living room_1.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3135, 'de', '124', '', 'Das Wohnzimmer_2', '#333443', '', '', 'admin', '本站', '', '2019-07-15 14:38:116', '/static/upload/image/20190715/a/Living room_2.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3136, 'de', '124', '', 'Das Wohnzimmer_3', '#333444', '', '', 'admin', '本站', '', '2019-07-15 14:38:117', '/static/upload/image/20190715/a/Living room_3.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 14:42:48', '2019-07-15 14:42:48', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3137, 'de', '109', '', 'Automatische Kantenabdichtung', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:12:19', '/static/upload/image/20190715/1563160434170608.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 19, 0, 0, 'admin', 'admin', '2019-07-15 11:13:55', ' 2019-07-15 15:45:54', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3138, 'de', '109', '', 'Bohranlage CNC', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:13:56', '/static/upload/image/20190715/1563160613762181.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 8, 0, 0, 'admin', 'admin', '2019-07-15 11:16:09', ' 2019-07-15 15:46:27', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3139, 'de', '109', '', 'CNC Graviermaschine', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:16:56', '/static/upload/image/20190715/1563160762308309.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 6, 0, 0, 'admin', 'admin', '2019-07-15 11:19:23', ' 2019-07-15 15:46:45', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3140, 'de', '109', '', 'Pulsschleimhalle für Möbel aus Massivholz', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:19:24', '/static/upload/image/20190715/1563160772184107.jpg', '', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/static/upload/image/20190715/1563160781176288.jpg&quot; title=&quot;1563160781176288.jpg&quot; alt=&quot;微信图片_20190711090949.jpg&quot;/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 8, 0, 0, 'admin', 'admin', '2019-07-15 11:19:45', '2019-07-15 11:19:45', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3141, 'de', '109', '', 'Fotos des Shops', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:27:38', '/static/upload/image/20190715/1563161284186577.jpg', '', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/static/upload/image/20190715/1563161287141653.jpg&quot; title=&quot;1563161287141653.jpg&quot; alt=&quot;微信图片_201907110909481.jpg&quot;/&gt;&lt;img src=&quot;/static/upload/image/20190715/1563161289168605.jpg&quot; title=&quot;1563161289168605.jpg&quot; alt=&quot;微信图片_201907110909482.jpg&quot;/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-07-15 11:28:19', '2019-07-15 11:28:19', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3142, 'de', '109', '', 'Workshop Massivholzhalbfertige Produkte', '#333333', '', '', 'admin', '本站', '', '2019-07-15 11:28:21', '/static/upload/image/20190715/1563161311584432.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20190715/1563161321604613.jpg&quot; style=&quot;&quot; title=&quot;1563161321604613.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20190715/1563161322148162.jpg&quot; style=&quot;&quot; title=&quot;1563161322148162.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20190715/1563161322769395.jpg&quot; style=&quot;&quot; title=&quot;1563161322769395.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-07-15 11:28:45', '2019-07-15 11:28:45', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3143, 'de', '108', '', 'Wartungsmethode des Home Garderobens', '#333333', '', '', 'admin', '本站', '', '2019-07-15 15:54:17', '/static/upload/image/20190715/1563177308936214.jpg', '', '&lt;p&gt;&amp;nbsp; Erstens, regelmäßige Reinigung und Wartung.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Während des täglichen Gebrauchs sollten Staub oder Flecken regelmäßig abgewischt werden, um den Kleiderschrank sauber zu halten.Beim Reinigen versuchen Sie, weiches Baumwolltuch zu verwenden, das nicht leicht zu entweichen ist, wie z.B. mit zu hartem, rauem Lappen oder mit fremdem Baumwolltuch zu wischen, es wird die Lackoberfläche reiben und verlieren Glanz.Den Schrank nicht mit heißem Wasser, alkalischem Wasser oder Desinfektionswasser spülen, was die Farbe auf der Garderobe beschädigt.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Zweitens, machen Sie eine gute Arbeit mit langfristigen Garderobenschutz.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Legen Sie Camphor und Tabakblätter in den Schrank, um Langer und Kakerlaken zu verhindern, und setzen Sie etwas Pfeffer, um Mäuse zu verhindern.&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3.Bewahren Sie eine belüftete und trockene Innenumgebung.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Die regelmäßige Belüftung in Innenräumen kann nicht nur feuchte Luft mit Außenluft austauschen, sondern auch chemische Stoffe in Holzschränken möglichst in den Außenbereich verflüchtigen.Der übliche Weg ist, Fenster oder Türen zur Konvektion zu öffnen oder Klimaanlagen und Belüftungssystem zu verwenden.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Viertens sollte der Kleiderschrank reibungslos platziert werden, um die Funktion des Kleiderschranks zu gewährleisten und Schäden an der Struktur des Kleiderschranks zu verhindern.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Wenn der Schrank nach der Platzierung oft wackelig und instabil ist, löst er den Verschluss mit der Zeit, löst den Tenon oder Verbinder des Gelenkteils und knackt das Klebeteil, was die Lebensdauer des Kleiderschranks beeinflusst.Wenn der Boden uneben ist, müssen wir die Beine des Kleiderschranks fest paddeln, besonders wenn wir Stühle benutzen, müssen wir die Beine der Garderobe stabil machen, sonst wird es nicht nur den Komfort des Stuhls beeinträchtigen, sondern auch den Stuhl beschädigen.&lt;/p&gt;', '', '', '', 'Erstens, regelmäßige Reinigung und Wartung. Während des täglichen Gebrauchs sollten Staub oder Flecken regelmäßig abgewischt werden, um den Kleiderschrank sauber zu halten.Beim Reinigen versuchen Sie, weiches Baumwolltuch zu verwenden, das nicht leicht zu entweichen ist, wie z.B.', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 15:55:09', '2019-07-15 15:55:09', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3144, 'de', '108', '', 'Allgemeines Wissen über die Wartung von Home Lamp', '#333333', '', '', 'admin', '本站', '', '2019-07-15 15:55:11', '/static/upload/image/20190715/1563177333829106.jpg', '', '&lt;p&gt;&amp;nbsp; Im täglichen Haushaltsleben müssen wir einen gesunden Menschenverstand kennen, der die Lebensdauer von Möbeln verlängern kann.Heute möchten die Redakteure mit Ihnen über die Lampenwartung gesunden Menschenverstand teilen, wie man Lampen pflegt?&lt;/p&gt;&lt;p&gt;&amp;nbsp; Wissen Sie, dass der Lampenschirm der Lampe durch den Staub gedimmt wird?Wenn sie nicht rechtzeitig verarbeitet wird, verringert sie die Helligkeit um etwa 30% in einem durchschnittlichen Jahr, was die Beleuchtung des Raumes beeinflussen wird.Der folgende Redakteur hat fünf gesunde Sinn für Lampenwartung herausgearbeitet, schauen wir uns das gemeinsam an.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Erstens sollten die Lampen nach dem Rückkauf nicht mit der Installation beschäftigt sein, die Zeichen der Lampen sorgfältig prüfen und die Einbauanleitungen lesen und die Lampen gemäß den Bestimmungen der Anweisungen installieren und verwenden, andernfalls kann eine Gefahr bestehen;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Zweitens, ersetzen Sie das gereifte Lampenrohr entsprechend den Lichtquellenparametern, die das Schild rechtzeitig liefert.Wenn das Lampenrohr an beiden Enden rot ist, schwarz oder dunkel, und das Lampenrohr nicht springen kann, sollte das Lampenrohr rechtzeitig ausgetauscht werden, um zu verhindern, dass das unsichere Phänomen des Vorschaltgeräts brennt.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Drittens sollten wir bei der Reinigung und Wartung darauf achten, dass wir weder die Struktur der Lampen und Laternen verändern noch die Teile von Lampen und Laternen beiläufig verändern.Nach der Reinigung und Wartung sollten wir die Lampen und Laternen so reparieren, wie sie sind, und nicht verpassen oder passen die Teile und Komponenten von Lampen und Laternen.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Viertens, um die Lebensdauer von Lampen und Laternen zu verlängern, ist es notwendig, die Wartung im Gebrauch zu verstärken.Das Lampenrohr im Raum sollte häufig mit trockenem Tuch abgewischt werden, und es sollte darauf geachtet werden, eine Feuchtigkeitsinvasion zu verhindern, um das Phänomen der Korrosion oder Leckage Kurzschluss für eine lange Zeit zu vermeiden; die Lampe in Toilette und Bad sollte mit einem feuchtigkeitssicheren Lampenschatten ausgestattet seinandernfalls wird die Lebensdauer stark verkürzt; die Lampe in der Küche sollte besonderes Augenmerk auf die Ölrauchprävention richten, da die Ansammlung von Ölverschmutzung die Lampe beeinflussen wird.Helligkeit; Lichtfarbige Lampenschirme haben eine gute Durchlässigkeit, aber sie sind leicht zu staub, so dass sie bei der Reinigung fleißig sein sollten, um das Eindringen von Licht zu vermeiden; sind Lampen nicht metallisch, können sie mit nassem Tuch abgewischt werden, um Staubansammlung zu vermeiden und die Lichteffekte zu verhindern;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Fünftens, bei der Verwendung von Lampen versuchen Sie, nicht häufig zu schalten, da der Strom durch den Leuchtkörper größer ist als der Strom im Normalbetrieb zum Zeitpunkt der häufigen Inbetriebnahme, wodurch die Temperatur des Leuchtkörpers stark ansteigt und die Sublimation beschleunigt und dadurch seine Lebensdauer stark verringert, so es ist notwendig, den Schalter der Lampen zu minimieren.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Die oben genannten fünf Punkte sind praktisch gesunder Sinn für Lampenwartung, wenn Sie nicht klar sind, dann schnell lernen Sie es, sehr nützlich oh, Haushalt gesunden Menschenverstand für jedes Familienmitglied, sind hilfreich, für den Umgang mit den Details des Lebens im Haushalt wird sehr hilfreich sein, wissen, wie man zu pflegen, verstehen das Leben.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Im täglichen Haushaltsleben müssen wir einen gesunden Menschenverstand kennen, der die Lebensdauer von Möbeln verlängern kann.Heute möchten die Redakteure mit Ihnen über die Lampenwartung gesunden Menschenverstand teilen, wie man Lampen pflegt? Wissen Sie, dass der Lampenschirm de', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 15:55:34', '2019-07-15 15:55:34', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3145, 'de', '108', '', 'Drei Tipps zur Türwartung', '#333333', '', '', 'admin', '本站', '', '2019-07-15 15:55:36', '/static/upload/image/20190715/1563177364684161.jpg', '', '&lt;p&gt;&amp;nbsp; 1.Selbstgefertigter elastischer Türblock: Die Tür des Hauses muss oft ein - und ausgeschaltet werden.Wenn die Tür geöffnet wird, kollidiert sie oft direkt mit der Wand.Lange Zeit sind die Schließbox und der Griff an der Tür leicht auf die Markierungen an der Wand zu stoßen, die Wand und Tür zu beschädigen und die Schönheit zu beeinflussen.Sie können einen Gummiblock etwa fünf Zentimeter dick finden oder einen dicken Gummi auf einem kleinen Stück Holz nageln, ihn in der unteren Ecke der Seite der Tür gegen die Seite des Scharniers nageln, so dass Tür und Fenster nicht beschädigt werden.&lt;/p&gt;&lt;p&gt;&amp;nbsp; 2.Halten Sie die Tür vom Wind geblasen werden: Wenn die Tür im Haus leicht gesprengt oder nicht durch den Wind geöffnet wird, ist es unbequem und unsicher, einen starken Magneten von geeigneter Größe zu finden, die flach auf der Oberseite des Türrahmens etwa ein Viertel der Höhe der Tür begraben ist, und dann naiIch ein Stück Eisen an der Stelle, wo die Tür und der Türrahmen zusammenfallen, und machen es saugen einander nach Schließen der Tür.Es kann verhindern, dass die Tür vom Wind aufgeblasen wird.Diese Methode kann auch in Schränken, Schränken, Fenstern und anderen Orten verwendet werden.&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3.Antiadstringenz: KugelTür Schloss für eine lange Zeit, oft trockene Ausfall, nicht leicht zu öffnen und zu schließen.In diesem Fall können Sie Öl auf beiden Seiten des beweglichen Schlosses fallen lassen oder es ein paar Mal mit Seife abwischen.Das Türschloss ist flexibel und leicht zu öffnen und zu schließen.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '1.Selbstgefertigter elastischer Türblock: Die Tür des Hauses muss oft ein - und ausgeschaltet werden.Wenn die Tür geöffnet wird, kollidiert sie oft direkt mit der Wand.Lange Zeit sind die Schließbox und der Griff an der Tür leicht auf die Markierungen an der Wand zu stoßen, die Wand un', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-07-15 15:55:57', ' 2019-07-15 15:56:05', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3172, 'fr', '138', '', 'Marque', '#333333', '', '', 'admin', '本站', '', '2019-08-07 15:36:50', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-08-07 15:36:50', '2019-08-07 15:36:50', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3173, 'fr', '142', '', 'Laisser des mots', '#333333', '', '', 'admin', '本站', '', '2019-08-07 15:38:15', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 15:38:15', '2019-08-07 15:38:15', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3174, 'fr', '143', '', 'Contact', '#333333', '', '', 'admin', '本站', '', '2019-08-07 15:39:19', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-08-07 15:39:19', '2019-08-07 15:39:19', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3175, 'ar', '144', '', 'علامة تجارية', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:01:26', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 21, 0, 0, 'admin', 'admin', '2019-08-07 16:01:26', '2019-08-07 16:01:26', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3176, 'ar', '148', '', 'اترك الكلمات', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:02:28', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-08-07 16:02:28', '2019-08-07 16:02:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3177, 'ar', '149', '', 'اتصل', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:02:42', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 22, 0, 0, 'admin', 'admin', '2019-08-07 16:02:42', '2019-08-07 16:02:42', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3178, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3179, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3180, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3181, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3182, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 6, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3183, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3184, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3185, 'ar', '145', '', '必看丨山东省考生必须关注，100多所高校预估分数线汇总', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:37:26', '/static/upload/image/20190807/1565167061976046.jpg', '', '&lt;p&gt;在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的&lt;/p&gt;', '', '', '', '在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的在现实中菜的', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:37:47', '2019-08-07 16:37:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3186, 'ar', '146', '', '阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:47:01', '/static/upload/image/20190807/1565167630498569.jpg', '', '&lt;p&gt;自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线&lt;/p&gt;', '', '', '', '自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:47:23', '2019-08-07 16:47:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3187, 'ar', '146', '', '阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:47:01', '/static/upload/image/20190807/1565167630498569.jpg', '', '&lt;p&gt;自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线&lt;/p&gt;', '', '', '', '自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:47:23', '2019-08-07 16:47:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3188, 'ar', '146', '', '阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:47:01', '/static/upload/image/20190807/1565167630498569.jpg', '', '&lt;p&gt;自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线&lt;/p&gt;', '', '', '', '自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-08-07 16:47:23', '2019-08-07 16:47:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3189, 'ar', '146', '', '阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达阿萨达', '#333333', '', '', 'admin', '本站', '', '2019-08-07 16:47:01', '/static/upload/image/20190807/1565167630498569.jpg', '', '&lt;p&gt;自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线&lt;/p&gt;', '', '', '', '自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车在线自行车自行车', 255, '1', '0', '0', '0', 6, 0, 0, 'admin', 'admin', '2019-08-07 16:47:23', '2019-08-07 16:47:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3242, 'jp', '150', '', '伝言', '#333333', '', '', 'admin', '本站', '', '2019-08-29 09:08:44', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 4, 0, 0, 'admin', 'admin', '2019-08-29 09:08:44', '2019-08-29 09:08:44', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3243, 'ru', '151', '', 'Уводзіны', '#333333', '', '', 'admin', '本站', '', '2019-09-06 09:17:18', '/static/upload/image/20190906/1567758952896188.jpg', '', '&lt;p&gt;&amp;nbsp; Компания China Yangcheng County Huayang Materials Co., Ltd. специализируется на производстве и продаже шлицевых гаек, анкерных болтов, высокопрочных болтов, болтов из нержавеющей стали и других продуктов. Это проектирование, разработка, производство, продажа как единое целое, специализирующаяся на производстве и эксплуатации различных типов крепежа. Компания имеет многолетний опыт производства крепежа. Мы стремимся предоставлять нашим клиентам продукцию более высокого качества на основе концепции «Качество во-первых, кредит-во-первых». Компания внедряет современную систему управления, придерживается технологии в качестве движущей силы, берет за основу качество продукции и гарантирует послепродажное обслуживание, чтобы вернуть доверие и поддержку клиентов. Продукты широко используются в различных отраслях промышленности, таких как автозапчасти, электромеханика, строительные материалы и новая энергия.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Продукция, выпускаемая компанией, продается дома и за рубежом и хорошо воспринимается покупателями. Мы будем и впредь придерживаться «ориентированной на качество, ориентированной на клиента» философии, чтобы предоставить нашим клиентам более качественные изделия с крепежом.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Целостность, прочность и качество продукции Huayang Materials были признаны промышленностью. Добро пожаловать друзья из всех слоев общества приходят в гости, вести и вести переговоры по бизнесу.&lt;/p&gt;', '', '', '', 'Компания China Tianniu Chemical Technology Co., Ltd. расположена по адресу: Шэньчжэнь, 6, Цзинин, провинция Шаньдун, Китай. Наша компания специализируется на производстве и продаже', 255, '1', '0', '0', '0', 6, 0, 0, 'admin', 'admin', '2019-09-06 09:17:18', ' 2019-09-07 10:57:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3244, 'ru', '155', '', 'Оставь слова', '#333333', '', '', 'admin', '本站', '', '2019-09-06 09:19:23', '', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-06 09:19:23', '2019-09-06 09:19:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3245, 'ru', '156', '', 'контакт', '#333333', '', '', 'admin', '本站', '', '2019-09-06 09:19:46', '', '', '&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;strong&gt;China Yangcheng County Huayang Materials Co., Ltd.&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;Телефон: +86-13934065103&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;E-mail: huayang@hy-fastener.cn&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;Адрес: No. 86, Nancheng Road, Yangcheng County, Jincheng City, Shanxi Province, China&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;a href=&quot;https://www.google.com/maps/place/Nan+Cheng+Dong+Jie,+Yangcheng+Xian,+Jincheng+Shi,+Shanxi+Sheng,+China/@35.4796166,112.4281204,17z/data=!3m1!4b1!4m8!1m2!2m1!1sNo.+86,+Nancheng+Road,+Yangcheng+County,+Jincheng+City,+Shanxi+Province,+China!3m4!1s0x3677e7fe372c53ad:0x17b1a5400e80f6a9!8m2!3d35.4796129!4d112.4299609&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;/static/upload/image/20190907/1567826457207259.jpg&quot; title=&quot;1567826457207259.jpg&quot; alt=&quot;QQ截图20190907111812.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;', '', '', '', 'China Yangcheng County Huayang Materials Co., Ltd.Телефон: +86-13934065103E-mail:Адрес: No. 86, Nancheng Road, Yangcheng County, Jincheng City, Shanxi Province, China', 255, '1', '0', '0', '0', 9, 0, 0, 'admin', 'admin', '2019-09-06 09:19:46', ' 2019-09-07 11:21:06', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3291, 'ru', '153', '', 'Крепеж и процесс обработки материала', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:57:45', '', '', '&lt;p&gt;&amp;nbsp; Крепеж - это общий термин для класса механических частей, используемых, когда две или более части (или компоненты) скреплены вместе, чтобы образовать единое целое. Крепежные элементы характеризуются широким разнообразием спецификаций, различной производительностью и использованием, а степень стандартизации, сериализации и обобщения очень высока. Поэтому некоторые люди называют класс крепежных элементов в существующих национальных стандартах стандартными крепежами или сокращенно называют стандартными крепежными элементами. Другие называются нестандартными деталями. Но их важная роль одинакова. Сегодня мы представим процесс крепления и обработки материалов.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1. Поток продукции из высокопрочных резьбовых крепежей&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Процесс производства высокопрочных резьбовых крепежных изделий представляет собой модификацию сырья холодным способом, формируя резьбу, обработку (прокатку или протирку), термическую обработку, обработку поверхности, сортировку и упаковку. Процесс прокатки после термической обработки обычно применяется для крепежа сорта выше 10,9.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2. Автомобильные материалы крепления&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Марки стали, обычно используемые для высокопрочных болтов: 8,8 35, 45, ML35, 10,9, 35CrMo, 40Cr, 12,9, 35CrMo, 42CrMo и SCM435.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Сырье для крепежа в Китае в основном горячекатаное, в то время как сталь для крепежа, произведенного в Японии и других странах, может иметь прямую холодную обработку. Пользователи не нуждаются в предварительной обработке и могут сократить расходы на ссылки.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Распространенными видами разрушения крепежных элементов являются удлинение сборки, усталостное разрушение и замедленное разрушение.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Холодная штамповка и обработка резьбы (прокатка или втирание, нарезание резьбы)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; За исключением материала, формовочное оборудование, оборудование для обработки резьбы и матрица (производственный процесс и оборудование) являются ключевыми факторами, обеспечивающими качество резьбовых соединений. Особенно в условиях крупномасштабных и разнообразных поставок, как обеспечить постоянство продукции и предотвращение дефектов является одной из проблем, с которыми сталкивается производство крепежа.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 4. Термическая обработка&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Термическая обработка и отпуск предназначены для улучшения всесторонних механических свойств крепежных изделий и для обеспечения требуемого предела прочности при растяжении и предела текучести изделий. Закаленный и отпущенный процесс термообработки предъявляет строгие требования к сырью, контролю температуры печи, контролю атмосферы печи, закалочной среде и так далее. Основными контрольными дефектами являются сегрегация углерода в центре материала, декарбонизация поверхности при отжиге, трещина в холодном направлении, трещина закалки и деформация при закалке и отпуске.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Процесс термообработки: подача, очистка, нагрев, закалка, очистка, отпуск, окрашивание, офлайн.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 5. Обработка поверхности&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Поверхностная обработка автомобильных креплений в основном включает следующие способы. A. Неэлектролитическими покрытиями являются горячее погружение, инфильтрация, механическое покрытие, спеченная пленка Dacromet и т. Д. B. Электролитические покрытия оцинкованы, цинк-никелевый сплав, цинк-железный сплав и т. Д. C. Фосфатирование. D. чернение, лечение и др.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Крепеж - это общий термин для класса механических частей, используемых, когда две или более части (или компоненты) скреплены вместе, чтобы образовать единое цело', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-07 10:58:05', '2019-09-07 10:58:05', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3292, 'ru', '153', '', 'Способ установки контейнерного напольного гвоздя', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:58:06', '', '', '&lt;p&gt;&amp;nbsp; Способ установки контейнерного напольного гвоздя:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1. Выровняйте окружающие и перегородочные фундаменты, предпочтительно железобетоном, который является относительно прочным; затем колонна с поперечной балкой для соединения каркаса, верхней перегородки, наружной стеновой доски и дверных и оконных рам; следуйте за полом.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2. Это относится к крупногабаритному контейнеру с определенной прочностью, жесткостью и спецификациями для использования в обороте.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1) Сделайте землю ровной, чистой и сухой, и нанесите дважды водостойкую краску;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Деревянная рама укладывается прямо в соответствии с линией пули (обычно известной как деревянная полка). Размер поперечного сечения деревянного каркаса составляет 40 мм или 40 мм. Режим соединения - крепление половинной канавки, и на месте крепления наносятся клей и гвоздь. Затем просверлите отверстия в деревянной раме и шлифуйте ударной дрелью, закрепите их болтами и проверьте, удерживает ли рама уровень.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (3) Прибейте основную панель к деревянной раме. Базовая панель может быть изготовлена из толстой деревянной шины или толстой деревянной плиты, а край шины и конец плиты могут быть прикреплены к средней линии деревянного каркаса.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Общие размеры гвоздей для напольного контейнера: M8X45; M8X50; M8X65. Самый большой размер - M8X50. (Единица измерения: ММ)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Цель гвоздей пола состоит в том, чтобы исправить пол, с 1500 до 2000 гвоздей на сумку. Количество контейнеров, используемых в контейнере, составляет около 160; на каждой нижней балке 8 гвоздей, 4 на каждом этаже и 16 на широкой нижней балке.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Способ установки контейнерного напольного гвоздя: 1. Выровняйте окружающие и перегородочные фундаменты, предпочтительно железобетоном, который я', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-07 10:58:25', '2019-09-07 10:58:25', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3293, 'ru', '153', '', 'Пятиступенчатый метод управления смазкой крепежа', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:58:26', '/static/upload/image/20190907/1567825198510153.jpg', '', '&lt;p&gt;&amp;nbsp; В последние годы все больше предприятий по производству крепежных изделий начинают осознавать важность смазки оборудования. Некоторые профессиональные продукты и услуги, такие как служба обнаружения масла, прецизионный фильтр, специальное нанесение масла, решили многие проблемы с оборудованием. Теперь кажется, что всестороннее усовершенствование от коробки передач, выбора масла пары трения, дозаправки, использования масла, масла трубы и других аспектов - лучшая схема, чтобы получить большие фактические выгоды и умножить результаты с половиной усилия. Отраслевые специалисты обнаружили, что ввод и вывод этой работы почти в 100 раз выше, чем в целом.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Пятиступенчатый метод управления смазкой крепежа&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; В настоящее время большинство предприятий, производящих крепежные изделия, как правило, не устанавливают специальную систему управления смазкой для оборудования, смазочные материалы часто игнорируются, отказ оборудования, руководители предприятий впервые определили запасные части, точность обработки, установку и другие механические причины, игнорируя при этом более 80% неисправность вызвана неправильным выбором масла и статистикой обслуживания. Предприятиям не хватает руководства техников по смазке. Больше чем 95% из них испытывают недостаток в знании смазки и пренебрегают работой смазки. Они неправильно используют масло или используют масло ненадлежащим образом, что приводит к короткому сроку службы оборудования, низкой эффективности производства и частым авариям, которые приводят к ненужным потерям энергии. Упор делается на техническое обновление, легкое обслуживание, тяжелые покупки и легкие операции, сильное обслуживание и слабая смазка являются общими.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Смазка 5-ступенчатый метод управления - это комплекс полных методов управления коробками передач и парами трения различных типов машин с холодной подачей, конвейерной печи с непрерывной ячеистой цепью, производственной линии с горячей цепью с ленточным конвейером, штамповочного пресса, производственной линии для нанесения покрытий или нанесения покрытий. на предприятиях, производящих крепеж, от выбора масла, закупки масла, заправки маслом, использования масла до управления маслом, что в совокупности называется 5-ступенчатым методом смазки. Коробка передач и пара трения являются основой пятиступенчатого метода управления смазкой.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1. Труба нефтяная&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Установите концепцию активного обслуживания, измените пассивное обслуживание на активное обслуживание. Оценка порогового значения износа по данным может снизить уровень мышления: больше опыта, меньше науки и чувств.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Укрепление и улучшение карт смазки, работа в соответствии с компьютерными картами смазки. Постоянно обогащать и улучшать формулировку различных стандартов смазки, необходимые автономные средства испытаний и внешних испытаний, создание и совершенствование станций смазки (мастер-станции и подстанции).&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (3) Для устранения проблем в зародыше следует проводить регулярный мониторинг точного, крупномасштабного, дефицитного и ключевого оборудования. Чтобы ускорить выращивание специалистов по смазке, мы должны принять метод быстрого культивирования для выполнения проектов, изучения и выращивания основы смазки.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2. Выбор масла&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1) Выберите в зависимости от выбора масла (машина для холодной высадки - это, главным образом, нагрузка, скорость, температура и среда, с учетом других условий, когда все четыре условия выполнены).&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Выбирайте хорошее масло для подходящих условий труда и получайте хорошее соотношение цены и качества, потому что стоимость обслуживания оборудования более чем в 20 раз превышает стоимость смазочного масла, а стоимость смазочного масла составляет всего 3% ~ 5% от стоимости. Общая стоимость обслуживания. Нефтепродукты будут модернизированы до нормы.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 3. Покупка нефти&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Необходимо установить концепцию, согласно которой закупки нефти должны основываться на условиях работы оборудования, а цена должна быть изменена. Закупка нефтепродуктов и оборудования настаивает на сравнении товаров с тремя и более, и наиболее приспособленные будут исключены.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Все закупки масла должны быть проверены перед применением. Первый выбор нефтепродуктов известных брендов, хорошее послепродажное обслуживание, может предложить комплексные решения для смазки поставщиков масла.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 4. Заправка&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Прежде всего, мы должны уточнить, какая смазка необходима для точки смазки оборудования, чтобы объединить наше понимание. Подходящий для условий работы машины холодной прокатки, интеллектуального централизованного смазывания устройства сбора масла, смазывания маслом и газом и одноточечного автоматического заправочного устройства является лучшим выбором в настоящее время.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Топливное оборудование предприятий модернизации должно настаивать на трех или более соотношениях товаров и выбирать наилучшую схему. Очень важно выбрать хорошего поставщика смазочного оборудования. Предложенная схема требует передовых технологий, разумной цены, сервиса отслеживания всего процесса и сотрудничества с поставщиками смазочного оборудования, которые могут предоставить комплексные решения.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 5. Использование масла&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1) Обратите внимание на три фактора, которые вызывают порчу нефтепродуктов: твердое вещество (частицы и т. Д.), Жидкость (вода и т. Д.) И газ. По данным испытаний трех факторов&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'В последние годы все больше предприятий по производству крепежных изделий начинают осознавать важность смазки оборудования. Некоторые профессиональные проду', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-07 10:59:02', ' 2019-09-07 10:59:59', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3294, 'ru', '153', '', 'Применение винтовой гильзы из нержавеющей стали в промышленности', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:59:03', '/static/upload/image/20190907/1567825204961133.jpg', '', '&lt;p&gt;&amp;nbsp; Применение винтовой гильзы из нержавеющей стали в промышленности&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (1) Установите болты из стальной проволоки непосредственно на основной металл из алюминиевого сплава. Конструкция такого типа подходит для случая относительно толстой пластины или толщины стенки основного металла (отливка). Как правило, сформированные отверстия под болты могут гарантировать, что по крайней мере 6-8 болтов (болт L не больше, чем M12) соединены. Конструкция такого типа требует, чтобы соединительные болты не могли нести большие нагрузки, чтобы избежать повреждения отверстий под болты или основного металла.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (2) Основной металл укрепляется на месте, а затем устанавливается стальная винтовая втулка. Метод локального армирования основного металла можно использовать для сварки арматурных блоков в необходимых деталях для деталей из листового металла, а также для проектирования фланца для отливок в необходимых деталях для местного армирования. Монтажные тумбы на алюминиевом сплав верхней крышке обычно принимают локальное укрепление структуру, такие как керамические бутылки монтажной опора, пантограф монтажной опора и т.п. Так, например, пантограф посадочного места на алюминиевом сплаве крыше DJJ2 электрического транспортное средство, первый сварной шов укрепляющей пластины под монтажной панелью сиденья, затем просверлите отверстия и постучите по отверстиям и установите стальную проволочную втулку, чтобы сформированная резьба могла выдерживать сильные нагрузки.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; (3) Установите стальную проволочную резьбовую втулку с основанием гайки. Для некоторых деталей с длинной или сложной конструкцией гнездо гайки может быть приварено или приклеено в требуемом положении, а затем втулка винта из стальной проволоки может быть установлена в гнездо гайки.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Кроме того, упругое соединение, образованное между втулкой со стальной резьбой и крепежным болтом, может устранить ошибки шага и профиля между внутренней и внешней резьбой, так что каждый круг нитей может участвовать в силе и избежать явления сосредоточенной силы на корневая резьба (основная причина разрушения болтов). Это может эффективно улучшить условия соединения болтов.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Применение винтовой гильзы из нержавеющей стали в промышленности (1) Установите болты из стальной проволоки непосредственно на основной металл из', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-07 10:59:23', ' 2019-09-07 11:00:05', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3295, 'ru', '153', '', 'Спецификации и функции базовых знаний крепежа', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:59:24', '/static/upload/image/20190907/1567825210955570.jpg', '', '&lt;p&gt;&amp;nbsp; Крепежные детали представляют собой разновидность механических деталей, используемых для крепления соединения и широко используемых. Он широко используется в различных отраслях промышленности, таких как машины, оборудование, транспортные средства, корабли, железные дороги, мосты, здания, сооружения, инструменты, инструменты, химикаты, инструменты и расходные материалы. Это наиболее широко используемая механическая инфраструктура.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Он характеризуется широким спектром спецификаций, различной производительностью и использованием, а также высокой степенью стандартизации, сериализации и обобщения. Поэтому некоторые люди называют в существующих национальных стандартах крепежные детали стандартными или кратко именуемыми стандартными крепежными элементами.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Спецификации и функции базовых знаний крепежа&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Базовые знания о крепежных изделиях (спецификация)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1. Параметры, которые должны быть отмечены для описания крепежа: имя (стандарт), спецификация, качество материала, класс прочности и обработка поверхности. Например: DIN912, M4-0,7x8, SCM435, 12,9 класс, чернение.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Наименование (Стандарт): Примечание: Для винта без стандарта, который относится к нестандартным деталям, должны быть предоставлены чертежи.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Например, DIN912, китайское название: винт с шестигранной цилиндрической головкой, который является названием продукта.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Но самый точный способ - использовать стандарт адреса, потому что GB70 - это одно и то же имя, но между двумя стандартами существует много разных размеров.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Наиболее влиятельными стандартами в мире являются немецкий стандарт (DIN), международный стандарт (ISO), китайский национальный стандарт (GB), американский стандарт (ANSI) и японский стандарт (JIS).&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2. Спецификация, общий адрес винта - это диаметр резьбы * длина винта.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Диаметр зубного обозначения, метрическая система обычно используются: M2, M3, M4, M5, M6, M8, M10, M12 и т. Д.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Обычные американские продукты: 4-40, 6-32, 8-32, 10-24, 1 / 4-20, 5 / 16-18, 3 / 8-16, 1 / 2-13 и т. Д.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Длина винта относится к эффективной длине внедренного объекта. Например, винт с потайной головкой загружается с общей длиной, винт с полугерметичной головкой должен добавить половину длины головки, в то время как длина винта с цилиндрической головкой не включает размер головки. Такие как:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Для спецификаций полное имя лучше всего с интервалом. Например, внешний диаметр M4-0,7x8, 4 пальца составляет 4 мм, 0,7 означает, что расстояние между пиками двух зубов составляет 0,7 мм, а эффективная длина 8 пальцев, встроенных в загруженный объект, составляет 8 мм.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; Базовые знания о крепежных изделиях (функциональная глава)&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; I. Функциональные аспекты:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 1. Требования к кручению винта: внешний винт с шестигранной головкой имеет относительно большее кручение, внутренний винт с шестигранной головкой имеет меньшую скручиваемость, поперечная прорезь кручения меньше (поэтому этот тип винта обычно является винтом обычного сорта).&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 2. Сборка наружных болтов с шестигранной головкой обычно производится с помощью гибких гаечных ключей, гаечных ключей сливы и открытых гаечных ключей. Эффективность сборки гибкого гаечного ключа низкая, но универсальность высока, подходит для различных спецификаций головки наружного шестигранного винта; эффективность сливового гаечного ключа самая высокая, но в некоторых случаях это не применимо, сливной гаечный ключ только с двумя головками, он может использоваться только в двух спецификациях головки внешнего винта с шестигранной головкой; Открытый ключ похож на сливовый ключ, но он может удлинить рукав. Цилиндр использовать. Чем меньше спецификация наружного болта с шестигранной головкой, тем выше требование к углу кромки наружного болта с шестигранной головкой. В противном случае головка внешнего болта с шестигранной головкой легко скользит, когда на нее воздействует (гаечный ключ) усилие. Чтобы сохранить материалы, люди из Вэньчжоу изобрели внешнюю шестиугольную пещеру. Шестигранный винт снаружи пещеры легок по весу, тонок по толщине головы, легко скользит под действием силы, и головку можно отвинчивать.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 3. Внутренний шестигранный винт собран с внутренним шестигранным ключом. Требование к внутреннему шестигранному отверстию очень велико. Большой ключ проскальзывает, и меньший ключ не может быть вставлен. Чем меньше внутренние шестиугольные характеристики, тем выше требования к отверстиям. Для какого-то большого внутреннего шестигранного винта, если имеется соответствующая противоположная сторона, его можно собрать как правило с помощью гаечного ключа; для небольшого внутреннего шестигранного винта, такого как внутренняя шестигранная затяжка M2, ключ будет скользить, если его вставить с небольшим усилием, поэтому немного большая противоположная сторона не подходит. Следовательно, внутренний шестигранный винт M2, M2,5 и M3 (особенно затягивающие изделия) легко скользит в процессе сборки.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 4. Винт с крестообразной канавкой собирается с помощью отвертки, поэтому ему не требуется слишком большое усилие, поэтому прочность составляет всего 4,8 градуса, иногда для некоторых требуется высокопрочный винт, при условии термической обработки цементации.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', 'Крепежные детали представляют собой разновидность механических деталей, используемых для крепления соединения и широко используемых. Он широко используется', 255, '1', '0', '0', '0', 5, 0, 0, 'admin', 'admin', '2019-09-07 10:59:49', ' 2019-09-07 11:00:11', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3296, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:23:05', '/static/upload/image/20190907/1567823004997816.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:23:49', '2019-09-07 10:23:49', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3297, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:23:50', '/static/upload/image/20190907/1567823035387521.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:23:57', '2019-09-07 10:23:57', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3298, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:23:58', '/static/upload/image/20190907/1567823042876039.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:24:04', '2019-09-07 10:24:04', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3299, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:24:05', '/static/upload/image/20190907/1567823050874683.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:24:12', '2019-09-07 10:24:12', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3300, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:24:13', '/static/upload/image/20190907/1567823067954163.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:24:28', '2019-09-07 10:24:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3301, 'ru', '160', '', 'Высокопрочный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:24:29', '/static/upload/image/20190907/1567823073360969.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:24:34', '2019-09-07 10:24:34', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3302, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:24:35', '/static/upload/image/20190907/1567823087670257.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:24:53', '2019-09-07 10:24:53', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3303, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:24:54', '/static/upload/image/20190907/1567823101954402.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:03', '2019-09-07 10:25:03', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3304, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:25:04', '/static/upload/image/20190907/1567823108115791.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:09', '2019-09-07 10:25:09', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3305, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:25:10', '/static/upload/image/20190907/1567823115159319.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:16', '2019-09-07 10:25:16', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3306, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:25:17', '/static/upload/image/20190907/1567823124156697.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:26', '2019-09-07 10:25:26', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3307, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:25:27', '/static/upload/image/20190907/1567823132577753.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:34', '2019-09-07 10:25:34', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3308, 'ru', '159', '', 'Щелевая гайка', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:25:35', '/static/upload/image/20190907/1567823138637189.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:25:40', '2019-09-07 10:25:40', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3309, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:19', '/static/upload/image/20190907/1567823186303924.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:26:27', '2019-09-07 10:26:27', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3310, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:28', '/static/upload/image/20190907/1567823194833606.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:26:35', '2019-09-07 10:26:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3311, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:36', '/static/upload/image/20190907/1567823201233490.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:26:42', '2019-09-07 10:26:42', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3312, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:43', '/static/upload/image/20190907/1567823207785864.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:26:49', '2019-09-07 10:26:49', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3313, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:51', '/static/upload/image/20190907/1567823215884803.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:26:57', '2019-09-07 10:26:57', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3314, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:26:58', '/static/upload/image/20190907/1567823222442044.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:27:03', '2019-09-07 10:27:03', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3315, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:27:04', '/static/upload/image/20190907/1567823228743463.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:27:10', '2019-09-07 10:27:10', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3316, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:27:11', '/static/upload/image/20190907/1567823235864762.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:27:16', '2019-09-07 10:27:16', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3317, 'ru', '158', '', 'Анкерный болт', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:27:17', '/static/upload/image/20190907/1567823241889724.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:27:22', '2019-09-07 10:27:22', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3318, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:27:23', '/static/upload/image/20190907/1567823254566654.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:27:53', '2019-09-07 10:27:53', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3319, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:27:54', '/static/upload/image/20190907/1567823278803333.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:02', '2019-09-07 10:28:02', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3320, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:04', '/static/upload/image/20190907/1567823287195150.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:09', '2019-09-07 10:28:09', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3321, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:10', '/static/upload/image/20190907/1567823294851846.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:16', '2019-09-07 10:28:16', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3322, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:17', '/static/upload/image/20190907/1567823304107181.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:26', '2019-09-07 10:28:26', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3323, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:27', '/static/upload/image/20190907/1567823311286369.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:40', '2019-09-07 10:28:40', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3324, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:41', '/static/upload/image/20190907/1567823325507213.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:47', '2019-09-07 10:28:47', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3325, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:48', '/static/upload/image/20190907/1567823332335405.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:28:53', '2019-09-07 10:28:53', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3326, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:28:55', '/static/upload/image/20190907/1567823339902867.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:00', '2019-09-07 10:29:00', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3327, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:01', '/static/upload/image/20190907/1567823345393823.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:07', '2019-09-07 10:29:07', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3328, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:15', '/static/upload/image/20190907/1567823360349549.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:21', '2019-09-07 10:29:21', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3329, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:22', '/static/upload/image/20190907/1567823367879942.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:28', '2019-09-07 10:29:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3330, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:29', '/static/upload/image/20190907/1567823373852398.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:34', '2019-09-07 10:29:34', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3331, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:35', '/static/upload/image/20190907/1567823382656419.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:43', '2019-09-07 10:29:43', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3332, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:44', '/static/upload/image/20190907/1567823389342885.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:50', '2019-09-07 10:29:50', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3333, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:51', '/static/upload/image/20190907/1567823396647334.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-09-07 10:29:58', '2019-09-07 10:29:58', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3334, 'ru', '157', '', 'Стандартный болт из нержавеющей стали', '#333333', '', '', 'admin', '本站', '', '2019-09-07 10:29:59', '/static/upload/image/20190907/1567823403928808.jpg', '', '', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-09-07 10:30:04', '2019-09-07 10:30:04', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3335, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375474459632.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:24:36', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3336, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375465527361.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 7, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:24:27', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3337, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375448621128.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:24:09', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3338, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375433799086.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:23:54', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3339, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375503417486.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:25:05', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3340, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375423876895.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 10, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:23:44', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3341, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375414672084.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 4, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:23:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3342, 'cn', '44', '', '中国科学技术大学自主招生初审名单公布，共826通过！', '#333333', '', '', 'admin', '本站', '', '2019-09-10 10:52:35', '/static/upload/image/20200814/1597375323453998.jpg', '', '&lt;p&gt;无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...&lt;/p&gt;', '', '', '', '无锡市机械厂有限公司位于无锡国家高新技术开发区，毗邻京杭大运河，沪宁铁路和沪宁高速公路，交通十分便利。工厂占地面积为1.5万M2，员工100余人，拥有一支素质较高的工程技术人员队伍，其中工程师11名，高工2名，年产值二千多万元，为江苏省同行业中规模较大的厂家之一。 主要产...无锡市机械厂有限公司位于无锡国家高新技', 255, '1', '0', '0', '0', 47, 0, 0, 'admin', 'admin', '2019-09-10 10:53:04', ' 2020-08-14 11:23:27', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3356, 'cn', '50', '', '铲车轮胎', '#333333', '', '', 'admin', '本站', '', '2019-07-11 10:33:02', '/static/upload/image/20200814/1597372906676075.jpg', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。&lt;/span&gt;&lt;/p&gt;', '', '', '', '波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。', 255, '1', '0', '1', '0', 31, 0, 0, 'admin', 'admin', '2019-07-11 10:33:10', ' 2021-11-20 17:05:07', '4', '0', '', '');
INSERT INTO "ay_content" VALUES (3357, 'cn', '50', '', '铲车轮胎', '#333333', '', '', 'admin', '本站', '', '2019-07-11 10:33:11', '/static/upload/image/20200814/1597372894873219.jpg', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。&lt;/span&gt;&lt;/p&gt;', '', '', '', '波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。', 255, '1', '0', '0', '0', 95, 0, 0, 'admin', 'admin', '2019-07-11 10:33:17', ' 2021-11-20 17:04:11', '4', '0', '', '');
INSERT INTO "ay_content" VALUES (3358, 'cn', '50', '', '铲车轮胎', '#333333', '', '', 'admin', '本站', '', '2019-07-11 10:33:02', '/static/upload/image/20200814/1597372881856519.jpg', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。&lt;/span&gt;&lt;/p&gt;', '', '', '', '波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。', 255, '1', '0', '1', '0', 42, 0, 0, 'admin', 'admin', '2019-07-11 10:33:10', ' 2021-11-20 17:03:56', '4', '0', '', '');
INSERT INTO "ay_content" VALUES (3359, 'cn', '50', '', '铲车轮胎', '#333333', '', '', 'admin', '本站', '', '2019-07-11 10:33:11', '/static/upload/image/20200814/1597372869278522.jpg', '', '&lt;p&gt;波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。&lt;/p&gt;', '', '', '', '波形，纯正弦波超省电、抗干扰、超静音设计（采用进口夕钢片），具有带载能力强，使用电压宽，带反接、过压、欠压、过载、过温保护。可挂壁安装，适合负载，电风扇、电脑、手机充电、监控设备配套。', 255, '1', '1', '0', '0', 137, 0, 0, 'admin', 'admin', '2019-07-11 10:33:17', ' 2020-08-14 10:41:11', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3361, 'en', '13', '', 'About rotary cutting machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:46:03', '/static/upload/image/20191106/1573008920564468.jpg', '', '&lt;p&gt;&amp;nbsp; Rotary cutting machine is one of the main equipments for producing plywood. It is divided into card cutting machine and cardless rotary cutting machine. With the advancement of technology, digital control technology is also applied to the production of rotary cutting machine. CNC rotary cutting machine. The appearance of the CNC rotary cutting machine not only improves the quality and precision of the production veneers, but also greatly improves the production efficiency and the automation of the whole machine.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; CNC cardless rotary cutting machine is an important equipment in plywood production line or veneer production line. It is mainly used for the re-rotation of the remaining (or round) wood core with card shaft rotary cutting machine for secondary use, and the length of wood In the segment, the wood core in a certain diameter range is cut into veneers of different thicknesses, and the diameter of the rotary cutting is small.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Features:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 1. Use servo motor to drive precision screw feed.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 2. It is only necessary to input the plate thickness number when replacing the plate thickness, no need to change the gear, and the cutting precision is high.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3. Different wood species can also be cut together without affecting the thickness of the board.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4. The surface finish is good, and it is not sensitive to the reaction of the yin and yang of the wood.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 5. Power saving, simple operation and convenient maintenance.&lt;/p&gt;', '', '', '', 'Rotary cutting machine is one of the main equipments for producing plywood. It is divided into card cutting machine and cardless rotary cutting machine. With the advancement of technology, digital control technology is also applied to the production of rotary cutting machine. CNC rotary cutti', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-11-06 10:46:26', ' 2019-11-06 10:55:21', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3362, 'en', '13', '', 'The difference between cardless rotary cutter and card rotary cutter', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:46:28', '/static/upload/image/20191106/1573008926163647.jpg', '', '&lt;p&gt;&amp;nbsp; Rotary cutting machines are generally divided into two types: cardless rotary cutters and card rotary cutters. They are also available in both vertical and horizontal types. The vertical and horizontal general rotary cutting methods are the same!&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Cardless rotary cutting machine: It is to put a certain length of wood into the machine table, and there are roller shafts on the front and rear sides, and the method of rotating the wood is used to achieve the purpose of rotary cutting. However, the cardless rotary cutting machine can only choose small-diameter wood, but the wood must be round. Generally, it can be rotated within 30 cm, and the wooden core is small, and can be rotated to about 3 cm.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Card rotary cutting machine: It is to put a certain length of wood into the machine table, and there are chucks on both the left and right sides, which can be rotated. The chucks on both sides will squeeze the wood and start to rotate and cut to achieve the purpose of rotary cutting. ! Cards can be used to cut and cut large-diameter wood, and the diameter of 1.3 meters can be, but the minimum of the wooden core is more than 10 cm.&lt;/p&gt;', '', '', '', 'Rotary cutting machines are generally divided into two types: cardless rotary cutters and card rotary cutters. They are also available in both vertical and horizontal types. The vertical and horizontal general rotary cutting methods are the same! Cardless rotary cutting mach', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-11-06 10:47:52', ' 2019-11-06 10:55:27', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3363, 'en', '13', '', 'Rotary cutter features', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:47:54', '/static/upload/image/20191106/1573008934820712.jpg', '', '&lt;p&gt;&amp;nbsp; Our company is a professional enterprise engaged in rotary cutting machine, occupying a broad market with excellent service quality and product quality.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Below we briefly introduce the characteristics of the rotary cutter:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 1. Using servo motor to drive precision screw feed.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 2 Replace the plate thickness only need to input the plate thickness number, no need to change the gear, the cutting precision is high.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3 different wood species can also be cut together without affecting the thickness of the board.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4 The surface finish is good, and it is not sensitive to the reaction of the yin and yang of the wood.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 5 power saving, easy to operate, easy to maintain.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Welcome all friends to come to our factory to negotiate and order rotary cutting machine. Our company will wholeheartedly provide customers with the best quality products and services!&lt;/p&gt;', '', '', '', 'Our company is a professional enterprise engaged in rotary cutting machine, occupying a broad market with excellent service quality and product quality. Below we briefly introduce the characteristics of the rotary cutter: 1. Using servo motor to drive preci', 255, '1', '0', '0', '0', 4, 0, 0, 'admin', 'admin', '2019-11-06 10:48:32', ' 2019-11-06 10:55:35', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3364, 'en', '13', '', 'The principle and characteristics of wood peeling and finding circular machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:48:34', '/static/upload/image/20191106/1573008940222088.jpg', '', '&lt;p&gt;&amp;nbsp; The peeling and rounding machine is used to round the skin before the processing of the logs, and it is the basis for the use of the rotary cutting machine. It can completely remove the bark and round the wood for the next step. Ready. The rounding work of the wood can be completed by one person operation, and the efficiency of finding the round of the log is improved. At this stage, the hydraulic rounding machine is generally used.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; By increasing the diameter of the single and double rolls, the speed of the skin is increased, the power is rationally configured, the production cost is reduced, and the manual self-resetting and reversing valve is adopted, which is quick in response and convenient to maintain. The biggest feature is the use of hydraulic feeds, which are faster when feeding or retracting, and different woods can be used.&lt;/p&gt;', '', '', '', 'The peeling and rounding machine is used to round the skin before the processing of the logs, and it is the basis for the use of the rotary cutting machine. It can completely remove the bark and round the wood for the next step. Ready. The rounding work of the wood can be completed by one per', 255, '1', '0', '0', '0', 3, 0, 0, 'admin', 'admin', '2019-11-06 10:50:48', ' 2019-11-06 10:55:41', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3365, 'en', '13', '', 'Rotary cutting machine safety use matters to keep in mind', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:50:50', '/static/upload/image/20191106/1573008945312412.jpg', '', '&lt;p&gt;&amp;nbsp; Rotary cutting machine plays an important role in wood processing, especially in the plywood production line, which cuts the logs one by one into thin-thick veneers, which are then spliced, glued, pressed, and sawed. Such a plywood is completed. This article is mainly for everyone to pay attention to some safety issues when using rotary cutting equipment, how to use it safely, please keep in mind.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Firstly, the user is required to stand on the side of the machine. After the machine is started, do not stand in the range of the machine; adjust the size of the wood. After entering the machine, the machine speed should not be adjusted evenly. If the logs are not fixed, the intermittent veneers will be unscrewed, causing losses and continuous production. The bent wood of the logs will also spin out the broken pieces. To check the operation of the equipment, the installation of the components is correct. After the rotary cutting is completed, the wooden shafts remaining on the rotary cutter should be removed with tools such as wooden sticks. Remember not to take them by hand to avoid danger.&lt;/p&gt;', '', '', '', 'Rotary cutting machine plays an important role in wood processing, especially in the plywood production line, which cuts the logs one by one into thin-thick veneers, which are then spliced, glued, pressed, and sawed. Such a plywood is completed. This article is mainly for everyone to pay atte', 255, '1', '0', '0', '0', 4, 0, 0, 'admin', 'admin', '2019-11-06 10:51:15', ' 2019-11-06 10:55:46', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3366, 'en', '13', '', 'Cardless rotary cutting machine related content introduction', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:51:16', '/static/upload/image/20191106/1573008952713347.jpg', '', '&lt;p&gt;&amp;nbsp; The cardless rotary cutting machine has no card shaft mechanical transmission rotary cutting machine, which is suitable for rotating the remaining wood core of the card shaft rotary cutting machine and then continuously cutting into a single board, and can also be used for cutting a small diameter material into a single board. The cardless rotary cutting machine is mainly composed of a frame, a double roll system, a single roll system, a tool holder, a transmission system, an electrical system and the like.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; The cardless rotary cutting machine has the following characteristics, which are described as follows:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; A: The thickness of the rotary cutting is controlled by a computer program, and the man-machine interface has high precision of peeling.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; B: The swallowtail slide is advanced and retractable, and the adjustment is convenient. The anti-shock auxiliary slide is added under the original foundation to make the machine more stable.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; C: Using the cam feed structure, the cam is made of high-quality steel and carburized for durability.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; D: The requirements for manual technology are not high, and the machine is under normal rotation and the error is ±0.1mm.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; E: The roller is treated with chrome to improve the wear resistance of the stick.&lt;/p&gt;', '', '', '', 'The cardless rotary cutting machine has no card shaft mechanical transmission rotary cutting machine, which is suitable for rotating the remaining wood core of the card shaft rotary cutting machine and then continuously cutting into a single board, and can also be used for cutting a small dia', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-11-06 10:52:09', ' 2019-11-06 10:55:53', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3367, 'en', '14', '', '1500 type knife sharpener', '#333333', '', '', 'admin', '本站', '', '2019-11-06 10:56:18', '/static/upload/image/20191106/1573009659780781.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009653955715.jpg&quot; style=&quot;&quot; title=&quot;1573009653955715.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009654150538.jpg&quot; style=&quot;&quot; title=&quot;1573009654150538.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-11-06 11:07:40', ' 2019-11-06 11:10:42', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3368, 'en', '14', '', '220 type CNC panel rotary cutting board machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:07:41', '/static/upload/image/20191106/1573009773840501.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009764298354.jpg&quot; style=&quot;&quot; title=&quot;1573009764298354.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009765607266.jpg&quot; style=&quot;&quot; title=&quot;1573009765607266.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:09:35', ' 2019-11-06 11:13:57', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3369, 'en', '14', '', '150 type rounding machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:09:36', '/static/upload/image/20191106/1573009814798961.jpg', '', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009811147528.jpg&quot; title=&quot;1573009811147528.jpg&quot; alt=&quot;C65E33E95160A5ECF7EAF1AAC5E82D88.jpg&quot;/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:10:15', ' 2019-11-06 11:10:23', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3370, 'en', '14', '', '150L CNC rotary cutting board machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:10:50', '/static/upload/image/20191106/1573009895367500.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009890127614.jpg&quot; style=&quot;&quot; title=&quot;1573009890127614.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009891213783.jpg&quot; style=&quot;&quot; title=&quot;1573009891213783.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2019-11-06 11:11:37', ' 2019-11-06 11:13:32', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3371, 'en', '14', '', '19DJX-140 CNC Rotary Cutting Board Machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:11:38', '/static/upload/image/20191106/1573009958822914.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009953936809.jpg&quot; style=&quot;&quot; title=&quot;1573009953936809.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009954192309.jpg&quot; style=&quot;&quot; title=&quot;1573009954192309.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-11-06 11:12:39', '2019-11-06 11:12:39', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3372, 'vn', '74', '', 'Giới thiệu về máy cắt quay', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:28:43', '/static/upload/image/20191106/1573010975414977.jpg', '', '&lt;p&gt;&amp;nbsp; Máy cắt quay là một trong những thiết bị chính để sản xuất ván ép. Nó được chia thành máy cắt thẻ và máy cắt quay không cần thẻ. Với sự tiến bộ của công nghệ, công nghệ điều khiển kỹ thuật số cũng được áp dụng để sản xuất máy cắt quay. Máy cắt quay CNC. Sự xuất hiện của máy cắt quay CNC không chỉ cải thiện chất lượng và độ chính xác của veneers sản xuất, mà còn cải thiện đáng kể hiệu quả sản xuất và tự động hóa của toàn bộ máy.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Máy cắt không trục CNC là một thiết bị quan trọng trong dây chuyền sản xuất gỗ dán hoặc dây chuyền sản xuất veneer. Nó chủ yếu được sử dụng để quay lại lõi gỗ còn lại (hoặc tròn) với máy cắt trục trục thẻ để sử dụng thứ cấp và chiều dài của gỗ Trong phân khúc, lõi gỗ trong một phạm vi đường kính nhất định được cắt thành veneer độ dày khác nhau, và đường kính của cắt quay là nhỏ.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Đặc trưng:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 1. Sử dụng động cơ servo để lái nguồn cấp vít chính xác.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 2. Chỉ cần nhập số độ dày tấm khi thay thế độ dày tấm, không cần thay đổi bánh răng và độ chính xác cắt cao.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3. Các loại gỗ khác nhau cũng có thể được cắt với nhau mà không ảnh hưởng đến độ dày của bảng.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4. Bề mặt hoàn thiện tốt, và nó không nhạy cảm với phản ứng âm dương của gỗ.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 5. Tiết kiệm điện, vận hành đơn giản và bảo trì thuận tiện.&lt;/p&gt;', '', '', '', 'Máy cắt quay là một trong những thiết bị chính để sản xuất ván ép. Nó được chia thành máy cắt thẻ và máy cắt quay không cần thẻ. Với sự tiến bộ của công nghệ, công nghệ điều khiển kỹ thuật số cũng được áp dụng để sản xuất máy cắt quay. Má', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:29:36', '2019-11-06 11:29:36', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3373, 'vn', '74', '', 'Sự khác biệt giữa máy cắt quay không cần thẻ và máy cắt thẻ quay', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:29:37', '/static/upload/image/20191106/1573011013814096.jpg', '', '&lt;p&gt;&amp;nbsp; Máy cắt quay thường được chia thành hai loại: máy cắt quay không cần thẻ và máy cắt thẻ quay. Chúng cũng có sẵn trong cả hai loại dọc và ngang. Các phương pháp cắt quay dọc và ngang là như nhau!&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Máy cắt quay không cần thẻ: Đó là đặt một chiều dài gỗ nhất định vào bàn máy, và có trục lăn ở mặt trước và mặt sau, và phương pháp xoay gỗ được sử dụng để đạt được mục đích cắt quay. Tuy nhiên, máy cắt quay không cần thẻ chỉ có thể chọn gỗ có đường kính nhỏ, nhưng gỗ phải tròn. Nói chung, nó có thể được xoay trong vòng 30 cm, và lõi gỗ nhỏ, và có thể xoay đến khoảng 3 cm.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Máy cắt thẻ quay: Đó là đặt một chiều dài gỗ nhất định vào bàn máy, và có mâm cặp ở cả bên trái và bên phải, có thể xoay được. Mâm cặp ở hai bên sẽ ép gỗ và bắt đầu xoay và cắt để đạt được mục đích cắt quay. ! Thẻ có thể được sử dụng để cắt và cắt gỗ có đường kính lớn, và đường kính 1,3 mét có thể, nhưng tối thiểu của lõi gỗ là hơn 10 cm.&lt;/p&gt;', '', '', '', 'Máy cắt quay thường được chia thành hai loại: máy cắt quay không cần thẻ và máy cắt thẻ quay. Chúng cũng có sẵn trong cả hai loại dọc và ngang. Các phương pháp cắt quay dọc và ngang là như nhau! Máy cắt quay không cần thẻ: Đó là đặ', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:30:14', '2019-11-06 11:30:14', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3374, 'vn', '74', '', 'Tính năng cắt quay', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:30:16', '/static/upload/image/20191106/1573011063915177.jpg', '', '&lt;p&gt;&amp;nbsp; Công ty chúng tôi là một doanh nghiệp chuyên nghiệp tham gia vào máy cắt quay, chiếm thị trường rộng lớn với chất lượng dịch vụ và chất lượng sản phẩm tuyệt vời.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Dưới đây chúng tôi giới thiệu ngắn gọn về các đặc tính của máy cắt quay:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 1. Sử dụng động cơ servo để lái trục vít chính xác.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 2 Thay thế độ dày tấm chỉ cần nhập số độ dày tấm, không cần thay đổi bánh răng, độ chính xác cắt cao.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 3 loại gỗ khác nhau cũng có thể được cắt với nhau mà không ảnh hưởng đến độ dày của bảng.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 4 Bề mặt hoàn thiện tốt và không nhạy cảm với phản ứng âm dương của gỗ.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 5 tiết kiệm điện, dễ vận hành, dễ bảo trì.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Chào mừng tất cả bạn bè đến nhà máy của chúng tôi để đàm phán và đặt hàng máy cắt quay. Công ty chúng tôi sẽ hết lòng cung cấp cho khách hàng những sản phẩm và dịch vụ chất lượng tốt nhất!&lt;/p&gt;', '', '', '', 'Công ty chúng tôi là một doanh nghiệp chuyên nghiệp tham gia vào máy cắt quay, chiếm thị trường rộng lớn với chất lượng dịch vụ và chất lượng sản phẩm tuyệt vời. Dưới đây chúng tôi giới thiệu ngắn gọn về các đặc tính của máy cắ', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:31:04', '2019-11-06 11:31:04', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3375, 'vn', '74', '', 'Nguyên lý và đặc điểm của bóc gỗ và tìm máy tròn', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:31:06', '/static/upload/image/20191106/1573011099379100.jpg', '', '&lt;p&gt;&amp;nbsp; Máy bóc và làm tròn được sử dụng để làm tròn da trước khi xử lý các bản ghi, và nó là cơ sở cho việc sử dụng máy cắt quay. Nó có thể loại bỏ hoàn toàn vỏ cây và làm tròn gỗ cho bước tiếp theo. Sẵn sàng. Công việc làm tròn gỗ có thể được hoàn thành bởi hoạt động của một người và hiệu quả của việc tìm ra vòng gỗ được cải thiện. Ở giai đoạn này, máy làm tròn thủy lực thường được sử dụng.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Bằng cách tăng đường kính của cuộn đơn và cuộn kép, tốc độ của da được tăng lên, công suất được cấu hình hợp lý, giảm chi phí sản xuất và van tự đảo chiều và đặt lại thủ công được áp dụng, đáp ứng nhanh chóng và thuận tiện để duy trì. Tính năng lớn nhất là sử dụng thức ăn thủy lực, nhanh hơn khi cho ăn hoặc rút lại, và các loại gỗ khác nhau có thể được sử dụng.&lt;/p&gt;', '', '', '', 'Máy bóc và làm tròn được sử dụng để làm tròn da trước khi xử lý các bản ghi, và nó là cơ sở cho việc sử dụng máy cắt quay. Nó có thể loại bỏ hoàn toàn vỏ cây và làm tròn gỗ cho bước tiếp theo. Sẵn sàng. Công việc làm tròn gỗ có thể đượ', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:31:41', '2019-11-06 11:31:41', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3376, 'vn', '74', '', 'An toàn máy cắt quay sử dụng các vấn đề cần lưu ý', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:31:42', '/static/upload/image/20191106/1573011162234191.jpg', '', '&lt;p&gt;&amp;nbsp; Máy cắt quay đóng một vai trò quan trọng trong chế biến gỗ, đặc biệt là trong dây chuyền sản xuất gỗ dán, cắt từng khúc gỗ thành các lớp veneer dày, sau đó được ghép, dán, ép và cưa. Một ván ép như vậy được hoàn thành. Bài viết này chủ yếu dành cho mọi người chú ý đến một số vấn đề an toàn khi sử dụng thiết bị cắt quay, làm thế nào để sử dụng nó an toàn, xin lưu ý.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Đầu tiên, người dùng được yêu cầu đứng bên cạnh máy. Sau khi máy được khởi động, không đứng trong phạm vi của máy; điều chỉnh kích thước của gỗ. Sau khi vào máy, không nên điều chỉnh tốc độ máy một cách đồng đều. Nếu các bản ghi không được cố định, các veneers không liên tục sẽ được tháo ra, gây ra tổn thất và sản xuất liên tục. Gỗ uốn cong của các bản ghi cũng sẽ quay ra các mảnh vỡ. Để kiểm tra hoạt động của thiết bị, việc cài đặt các thành phần là chính xác. Sau khi cắt quay xong, các trục gỗ còn lại trên máy cắt quay phải được gỡ bỏ bằng các dụng cụ như gậy gỗ. Hãy nhớ đừng cầm chúng bằng tay để tránh nguy hiểm.&lt;/p&gt;', '', '', '', 'Máy cắt quay đóng một vai trò quan trọng trong chế biến gỗ, đặc biệt là trong dây chuyền sản xuất gỗ dán, cắt từng khúc gỗ thành các lớp veneer dày, sau đó được ghép, dán, ép và cưa. Một ván ép như vậy được hoàn thành. Bài viết này chủ yếu', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:32:43', '2019-11-06 11:32:43', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3377, 'vn', '74', '', 'Giới thiệu nội dung liên quan đến máy cắt quay Cardless', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:32:44', '/static/upload/image/20191106/1573011202330400.jpg', '', '&lt;p&gt;&amp;nbsp; Máy cắt quay không có thẻ không có máy cắt trục truyền trục cơ học, thích hợp để quay lõi gỗ còn lại của máy cắt trục trục thẻ và sau đó cắt liên tục thành một bảng duy nhất, và cũng có thể được sử dụng để cắt một đường kính nhỏ vật liệu thành một bảng duy nhất. Máy cắt quay không cần thẻ chủ yếu bao gồm khung, hệ thống cuộn kép, hệ thống cuộn đơn, giá đỡ dụng cụ, hệ thống truyền động, hệ thống điện và các loại tương tự.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Máy cắt quay không có thẻ có các đặc điểm sau, được mô tả như sau:&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; Trả lời: Độ dày của dao cắt quay được điều khiển bởi chương trình máy tính và giao diện người-máy có độ chính xác cao khi bóc.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; B: Trượt nắp trượt được nâng cao và có thể thu vào, và việc điều chỉnh thuận tiện. Các slide phụ chống sốc được thêm vào dưới nền tảng ban đầu để làm cho máy ổn định hơn.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; C: Sử dụng cấu trúc thức ăn cam, cam được làm bằng thép chất lượng cao và được cacbon hóa cho độ bền.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; D: Yêu cầu đối với công nghệ thủ công không cao và máy hoạt động bình thường và sai số là 0,1 0,1mm.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; E: Con lăn được xử lý bằng crôm để cải thiện khả năng chống mài mòn của thanh.&lt;/p&gt;', '', '', '', 'Máy cắt quay không có thẻ không có máy cắt trục truyền trục cơ học, thích hợp để quay lõi gỗ còn lại của máy cắt trục trục thẻ và sau đó cắt liên tục thành một bảng duy nhất, và cũng có thể được sử dụng để cắt một đường kính nhỏ vật liệ', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:33:24', '2019-11-06 11:33:24', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3378, 'vn', '73', '', 'Máy mài dao 1500', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:33:29', '/static/upload/image/20191106/1573011269321328.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011265125370.jpg&quot; style=&quot;&quot; title=&quot;1573011265125370.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011266133713.jpg&quot; style=&quot;&quot; title=&quot;1573011266133713.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:34:30', '2019-11-06 11:34:30', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3379, 'vn', '73', '', '220 loại CNC bảng cắt quay máy', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:34:31', '/static/upload/image/20191106/1573011349614595.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011338918878.jpg&quot; style=&quot;&quot; title=&quot;1573011338918878.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011339174427.jpg&quot; style=&quot;&quot; title=&quot;1573011339174427.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:35:50', '2019-11-06 11:35:50', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3380, 'vn', '73', '', 'Máy làm tròn 150', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:35:51', '/static/upload/image/20191106/1573011387477097.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011383995448.jpg&quot; title=&quot;1573011383995448.jpg&quot; alt=&quot;C65E33E95160A5ECF7EAF1AAC5E82D88.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:36:28', '2019-11-06 11:36:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3381, 'vn', '73', '', 'Máy cắt quay CNC 150L', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:36:29', '/static/upload/image/20191106/1573011446801814.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011441653841.jpg&quot; style=&quot;&quot; title=&quot;1573011441653841.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011442210492.jpg&quot; style=&quot;&quot; title=&quot;1573011442210492.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 0, 0, 0, 'admin', 'admin', '2019-11-06 11:37:28', '2019-11-06 11:37:28', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3382, 'vn', '73', '', 'Máy cắt quay CNC 19DJX-140', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:37:29', '/static/upload/image/20191106/1573011514917242.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011509182584.jpg&quot; style=&quot;&quot; title=&quot;1573011509182584.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573011509872324.jpg&quot; style=&quot;&quot; title=&quot;1573011509872324.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-11-06 11:38:36', '2019-11-06 11:38:36', '4', '', '', '');
INSERT INTO "ay_content" VALUES (3383, 'en', '14', '', '2-19DJX-140 CNC Rotary Cutting Board Machine', '#333333', '', '', 'admin', '本站', '', '2019-11-06 11:11:38', '/static/upload/image/20191106/1573009958822914.jpg', '', '&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009953936809.jpg&quot; style=&quot;&quot; title=&quot;1573009953936809.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/static/upload/image/20191106/1573009954192309.jpg&quot; style=&quot;&quot; title=&quot;1573009954192309.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '', 255, '1', '0', '0', '0', 2, 0, 0, 'admin', 'admin', '2019-11-06 11:12:39', ' 2023-10-04 15:22:42', '4', '0', '', '');
INSERT INTO "ay_content" VALUES (3384, 'en', '14', '', '测试添加的标题', '#333333', '', '', '测试添加的产品页的作者', '本站', '', '2023-10-04 15:23:07', '', '', '&lt;p&gt;&lt;span style=&quot;text-wrap: wrap;&quot;&gt;测试添加的产品页的内容&lt;/span&gt;&lt;/p&gt;', '', '', '', '测试添加的产品页的内容', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2023-10-04 15:35:11', '2023-10-04 15:35:11', '4', '0', '', '');
INSERT INTO "ay_content" VALUES (3385, 'en', '161', '', '测试添加的标题', '#333333', '', '', '测试添加的产品页的作者', '本站', '', '2023-10-04 15:23:07', '', '', '&lt;p&gt;&lt;span style=&quot;text-wrap: wrap;&quot;&gt;测试添加的产品页的内容&lt;/span&gt;&lt;/p&gt;', '', '', '', '测试添加的产品页的内容', 255, '1', '0', '0', '0', 1, 0, 0, 'admin', 'admin', '2023-10-04 15:35:11', '2023-10-04 15:35:11', '4', '0', '', '');

-- ----------------------------
-- Table structure for ay_content_ext
-- ----------------------------
DROP TABLE IF EXISTS "ay_content_ext";
CREATE TABLE "ay_content_ext" (
  "extid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "contentid" INTEGER(10) NOT NULL,
  "ext_price" TEXT(100),
  "ext_type" TEXT(100),
  "ext_color" TEXT(100),
  "ext_size" TEXT(100),
  "ext_weight" TEXT(100),
  "ext_material" TEXT(100),
  "ext_specifications" TEXT(100),
  "ext_f_content" TEXT(2000),
  "ext_video_src" TEXT(200),
  "ext_video_if" TEXT(200),
  "ext_canshu" TEXT(10000)
);

-- ----------------------------
-- Records of ay_content_ext
-- ----------------------------
INSERT INTO "ay_content_ext" VALUES (821, 3137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/static/upload/other/20190715/1563160354322418.mp4', '是', NULL);
INSERT INTO "ay_content_ext" VALUES (822, 3138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/static/upload/other/20190715/1563160566572390.mp4', '是', NULL);
INSERT INTO "ay_content_ext" VALUES (823, 3139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/static/upload/other/20190715/1563160753386403.mp4', '是', NULL);
INSERT INTO "ay_content_ext" VALUES (828, 3357, '', '', '', '', '', '', '', '', '', '', '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输入电压：&lt;/span&gt;24V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输出电压：&lt;/span&gt;220V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;欠压保护&lt;/span&gt;：18V&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;波形：&lt;/span&gt;工频纯正弦波&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;正常使用功率：&lt;/span&gt;300W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;瞬间最大功率：&lt;/span&gt;500W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;尺寸：&lt;/span&gt;24.5*15.5*9&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;重量：&lt;/span&gt;2.5kg&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (829, 3359, '', '', '', '', '', '', '', '', '', '', '&lt;p&gt;&lt;strong&gt;输入电压：&lt;/strong&gt;24V&lt;/p&gt;&lt;p&gt;&lt;strong&gt;输出电压：&lt;/strong&gt;220V&lt;/p&gt;&lt;p&gt;&lt;strong&gt;欠压保护&lt;/strong&gt;：18V&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;波形：&lt;/strong&gt;工频纯正弦波&lt;/p&gt;&lt;p&gt;&lt;strong&gt;正常使用功率：&lt;/strong&gt;300W&lt;/p&gt;&lt;p&gt;&lt;strong&gt;瞬间最大功率：&lt;/strong&gt;500W&lt;/p&gt;&lt;p&gt;&lt;strong&gt;尺寸：&lt;/strong&gt;24.5*15.5*9&lt;/p&gt;&lt;p&gt;&lt;strong&gt;重量：&lt;/strong&gt;2.5kg&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (831, 3367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Maximum grinding length: 1550mm&lt;/p&gt;&lt;p&gt;Workbench area: 1550x180mm&lt;/p&gt;&lt;p&gt;Grinding wheel size: 250/120/100mm&lt;/p&gt;&lt;p&gt;Grinding straightness: ≤0.05mm/m&lt;/p&gt;&lt;p&gt;Working voltage: 380v&lt;/p&gt;&lt;p&gt;Dimensions: 3600x1200x1400mm&lt;/p&gt;&lt;p&gt;Grinding head reciprocating speed: adjustable frequency conversion 3-20m/min&lt;/p&gt;&lt;p&gt;Working knife table adjustable angle: ±90°&lt;/p&gt;&lt;p&gt;Grinding head adjustable angle: ±15°&lt;/p&gt;&lt;p&gt;Grinding head transmission: rack and pinion / frequency conversion&lt;/p&gt;&lt;p&gt;Total power: 4.1kw&lt;/p&gt;&lt;p&gt;Total weight: 2.6T&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (832, 3368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Rotary cut wood length: 2150mm&lt;br/&gt;&lt;/p&gt;&lt;p&gt;Rotary cutting wood thickness: 0.3-3.6mm&lt;/p&gt;&lt;p&gt;Remaining small shaft diameter: 25mm&lt;/p&gt;&lt;p&gt;Friction roller diameter: 126mm&lt;/p&gt;&lt;p&gt;Maximum opening: 400/500/600mm&lt;/p&gt;&lt;p&gt;Rotary cutting speed: 48m/min&lt;/p&gt;&lt;p&gt;Total power: 24kw&lt;/p&gt;&lt;p&gt;Rated voltage: 380v&lt;/p&gt;&lt;p&gt;Rotary cutter size: 1400x130/180x12.7mm (length x width x thickness)&lt;/p&gt;&lt;p&gt;Dimensions: 4100x2100x1200mm (length x width x height)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (833, 3369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Processing diameter: 500mm&lt;/p&gt;&lt;p&gt;Processing length: 1400mm&lt;/p&gt;&lt;p&gt;Rotary cutting speed: 40m/min&lt;/p&gt;&lt;p&gt;Equipped with power: 20.5kw&lt;/p&gt;&lt;p&gt;Dimensions: 2800mm / 1800mm / 1100mm&lt;/p&gt;&lt;p&gt;Processing materials: various logs&lt;/p&gt;&lt;p&gt;Roller diameter: 150mm/160mm&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (834, 3370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Rotary cut wood length: 1350mm&lt;/p&gt;&lt;p&gt;Rotary cutting wood thickness: 0.3-3.6mm&lt;/p&gt;&lt;p&gt;Remaining small shaft diameter: 25mm&lt;/p&gt;&lt;p&gt;Friction roller diameter: 126mm&lt;/p&gt;&lt;p&gt;Maximum opening: 400/500/600mm&lt;/p&gt;&lt;p&gt;Cutting speed: 52m/min&lt;/p&gt;&lt;p&gt;Total power: 28.5kw&lt;/p&gt;&lt;p&gt;Rated voltage: 380v&lt;/p&gt;&lt;p&gt;Rotary cutter size: 1400x130/180x12.7mm (length x width x thickness)&lt;/p&gt;&lt;p&gt;Dimensions: 3800x2100x1200mm (length x width x height)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (835, 3371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Rotary cut wood length: 1350mm&lt;/p&gt;&lt;p&gt;Rotary cutting wood thickness: 0.3-3.6mm&lt;/p&gt;&lt;p&gt;Remaining small shaft diameter: 25mm&lt;/p&gt;&lt;p&gt;Friction roller diameter: 126mm&lt;/p&gt;&lt;p&gt;Maximum opening: 400/500/600mm&lt;/p&gt;&lt;p&gt;Rotating speed: 52m/min&lt;/p&gt;&lt;p&gt;Total power: 28.5kw&lt;/p&gt;&lt;p&gt;Rated voltage: 380v&lt;/p&gt;&lt;p&gt;Rotary cutter size: 1400x130/180x12.7mm (length x width x thickness)&lt;/p&gt;&lt;p&gt;Dimensions: 3800x2100x1200mm (length x width x height)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (836, 3378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Chiều dài mài tối đa: 1550mm&lt;br/&gt;&lt;/p&gt;&lt;p&gt;Diện tích bàn làm việc: 1550x180mm&lt;/p&gt;&lt;p&gt;Kích thước bánh mài: 250/120 / 100mm&lt;/p&gt;&lt;p&gt;Độ thẳng mài: .050,05mm / m&lt;/p&gt;&lt;p&gt;Điện áp làm việc: 380v&lt;/p&gt;&lt;p&gt;Kích thước: 3600x1200x1400mm&lt;/p&gt;&lt;p&gt;Tốc độ quay ngược đầu: chuyển đổi tần số có thể điều chỉnh 3-20m / phút&lt;/p&gt;&lt;p&gt;Bàn dao làm việc góc điều chỉnh: ± 90 °&lt;/p&gt;&lt;p&gt;Đầu mài góc điều chỉnh: ± 15 °&lt;/p&gt;&lt;p&gt;Truyền đầu mài: chuyển đổi giá và bánh răng / tần số&lt;/p&gt;&lt;p&gt;Tổng công suất: 4,1kw&lt;/p&gt;&lt;p&gt;Tổng trọng lượng: 2,6T&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (837, 3379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Chiều dài gỗ cắt: 2150mm&lt;/p&gt;&lt;p&gt;Chiều dày gỗ cắt quay: 0,3-3,6mm&lt;/p&gt;&lt;p&gt;Đường kính trục nhỏ còn lại: 25 mm&lt;/p&gt;&lt;p&gt;Đường kính con lăn ma sát: 126mm&lt;/p&gt;&lt;p&gt;Độ mở tối đa: 400/500 / 600mm&lt;/p&gt;&lt;p&gt;Tốc độ cắt quay: 48m / phút&lt;/p&gt;&lt;p&gt;Tổng công suất: 24kw&lt;/p&gt;&lt;p&gt;Điện áp định mức: 380v&lt;/p&gt;&lt;p&gt;Kích thước dao cắt quay: 1400x130 / 180x12.7mm (dài x rộng x dày)&lt;/p&gt;&lt;p&gt;Kích thước: 4100x2100x1200mm (dài x rộng x cao)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (838, 3380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Đường kính gia công: 500mm&lt;/p&gt;&lt;p&gt;Chiều dài xử lý: 1400mm&lt;/p&gt;&lt;p&gt;Tốc độ cắt quay: 40m / phút&lt;/p&gt;&lt;p&gt;Được trang bị sức mạnh: 20,5kw&lt;/p&gt;&lt;p&gt;Kích thước: 2800mm / 1800mm / 1100mm&lt;/p&gt;&lt;p&gt;Vật liệu chế biến: các bản ghi khác nhau&lt;/p&gt;&lt;p&gt;Đường kính con lăn: 150mm / 160mm&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (839, 3381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Chiều dài gỗ cắt: 1350mm&lt;/p&gt;&lt;p&gt;Chiều dày gỗ cắt quay: 0,3-3,6mm&lt;/p&gt;&lt;p&gt;Đường kính trục nhỏ còn lại: 25 mm&lt;/p&gt;&lt;p&gt;Đường kính con lăn ma sát: 126mm&lt;/p&gt;&lt;p&gt;Độ mở tối đa: 400/500 / 600mm&lt;/p&gt;&lt;p&gt;Tốc độ quay: 52m / phút&lt;/p&gt;&lt;p&gt;Tổng công suất: 28,5kw&lt;/p&gt;&lt;p&gt;Điện áp định mức: 380v&lt;/p&gt;&lt;p&gt;Kích thước dao cắt quay: 1400x130 / 180x12.7mm (dài x rộng x dày)&lt;/p&gt;&lt;p&gt;Kích thước 3800x2100x1200mm (dài x rộng x cao)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (840, 3382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;Chiều dài gỗ cắt: 1350mm&lt;br/&gt;&lt;/p&gt;&lt;p&gt;Chiều dày gỗ cắt quay: 0,3-3,6mm&lt;/p&gt;&lt;p&gt;Đường kính trục nhỏ còn lại: 25 mm&lt;/p&gt;&lt;p&gt;Đường kính con lăn ma sát: 126mm&lt;/p&gt;&lt;p&gt;Độ mở tối đa: 400/500 / 600mm&lt;/p&gt;&lt;p&gt;Tốc độ quay: 52m / phút&lt;/p&gt;&lt;p&gt;Tổng công suất: 28,5kw&lt;/p&gt;&lt;p&gt;Điện áp định mức: 380v&lt;/p&gt;&lt;p&gt;Kích thước dao cắt quay: 1400x130 / 180x12.7mm (dài x rộng x dày)&lt;/p&gt;&lt;p&gt;Kích thước 3800x2100x1200mm (dài x rộng x cao)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (841, 3358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输入电压：&lt;/span&gt;24V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输出电压：&lt;/span&gt;220V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;欠压保护&lt;/span&gt;：18V&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;波形：&lt;/span&gt;工频纯正弦波&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;正常使用功率：&lt;/span&gt;300W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;瞬间最大功率：&lt;/span&gt;500W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;尺寸：&lt;/span&gt;24.5*15.5*9&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;重量：&lt;/span&gt;2.5kg&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (842, 3356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输入电压：&lt;/span&gt;24V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;输出电压：&lt;/span&gt;220V&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;欠压保护&lt;/span&gt;：18V&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;波形：&lt;/span&gt;工频纯正弦波&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;正常使用功率：&lt;/span&gt;300W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;瞬间最大功率：&lt;/span&gt;500W&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;尺寸：&lt;/span&gt;24.5*15.5*9&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.875; color: rgb(102, 102, 102); font-family: Arial, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;WenQuanYi Micro Hei&amp;quot;, &amp;quot;PingFang SC&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Heiti SC&amp;quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;重量：&lt;/span&gt;2.5kg&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (843, 3383, '', '', '', '', '', '', '', '', '', '', '&lt;p&gt;Rotary cut wood length: 1350mm&lt;/p&gt;&lt;p&gt;Rotary cutting wood thickness: 0.3-3.6mm&lt;/p&gt;&lt;p&gt;Remaining small shaft diameter: 25mm&lt;/p&gt;&lt;p&gt;Friction roller diameter: 126mm&lt;/p&gt;&lt;p&gt;Maximum opening: 400/500/600mm&lt;/p&gt;&lt;p&gt;Rotating speed: 52m/min&lt;/p&gt;&lt;p&gt;Total power: 28.5kw&lt;/p&gt;&lt;p&gt;Rated voltage: 380v&lt;/p&gt;&lt;p&gt;Rotary cutter size: 1400x130/180x12.7mm (length x width x thickness)&lt;/p&gt;&lt;p&gt;Dimensions: 3800x2100x1200mm (length x width x height)&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (844, 3384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '&lt;p&gt;测试添加的产品页的参数&lt;br/&gt;&lt;/p&gt;');
INSERT INTO "ay_content_ext" VALUES (845, 3385, '', '', '', '', '', '', '', '', '', '', '&lt;p&gt;测试添加的产品页的参数&lt;br/&gt;&lt;/p&gt;');

-- ----------------------------
-- Table structure for ay_content_sort
-- ----------------------------
DROP TABLE IF EXISTS "ay_content_sort";
CREATE TABLE "ay_content_sort" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "mcode" TEXT(20) NOT NULL,
  "pcode" TEXT(20) NOT NULL,
  "scode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "listtpl" TEXT(30) NOT NULL,
  "contenttpl" TEXT(30) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "outlink" TEXT(100) NOT NULL,
  "subname" TEXT(30) NOT NULL,
  "ico" TEXT(100) NOT NULL,
  "pic" TEXT(100) NOT NULL,
  "title" TEXT(100) NOT NULL,
  "keywords" TEXT(200) NOT NULL,
  "description" TEXT(500) NOT NULL,
  "filename" TEXT(30) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL,
  "gtype" TEXT(1) NOT NULL DEFAULT '4',
  "gid" TEXT(20) NOT NULL DEFAULT '',
  "gnote" TEXT(100) NOT NULL DEFAULT '',
  "def1" TEXT(1000) NOT NULL DEFAULT '',
  "def2" TEXT(1000) NOT NULL DEFAULT '',
  "def3" TEXT(1000) NOT NULL DEFAULT ''
);

-- ----------------------------
-- Records of ay_content_sort
-- ----------------------------
INSERT INTO "ay_content_sort" VALUES (1, 'cn', '1', '0', '1', '关于我们', '', 'about.html', '1', '', 'About us', '', '', '关于我们', '', '', 'about', 1, 'admin', 'admin', '2018-04-11 17:26:11', ' 2021-11-20 16:37:35', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (2, 'cn', '2', '0', '2', '新闻中心', 'newslist.html', 'news.html', '1', '', 'News', '', '', '新闻中心', '新闻中心', '新闻中心', 'news', 3, 'admin', 'admin', '2018-04-11 17:26:46', ' 2021-11-20 17:06:01', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (5, 'cn', '3', '0', '5', '产品中心', 'productlist.html', 'product.html', '1', '', 'PRODUCT', '', '', '产品中心', '', '主要产品：旋切机，数控旋切机，数控无卡旋切机，无卡旋切机，其中LXQ系列旋切机的旋切直径最大（加工直径2.2米），中板旋转切割机的厚度最厚（最大约6毫米）。', 'product', 2, 'admin', 'admin', '2018-04-11 17:27:54', ' 2021-11-20 16:49:18', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (10, 'cn', '1', '0', '10', '在线留言', '', 'message.html', '1', '', 'Feedback', '', '', '在线留言', '在线留言', '在线留言', 'liuyan', 6, 'admin', 'admin', '2018-04-11 17:30:36', ' 2021-11-20 19:09:13', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (11, 'cn', '1', '0', '11', '联系我们', '', 'contact.html', '1', '', 'Contact us', '/static/upload/image/20211120/1637400150724269.jpg', '', '联系我们', '', '', 'contact', 7, 'admin', 'admin', '2018-04-11 17:31:29', ' 2021-11-20 17:22:31', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (12, 'en', '1', '0', '12', 'About', '', 'about.html', '1', '', '', '', '', 'About', '', '', 'about-10', 1, 'admin', 'admin', '2019-01-03 11:36:55', ' 2021-11-20 19:34:26', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (13, 'en', '2', '0', '13', 'News', 'newslist.html', 'news.html', '1', '', '', '', '', 'News', '', '', 'News', 4, 'admin', 'admin', '2019-01-03 11:37:04', ' 2021-11-20 19:40:25', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (14, 'en', '3', '0', '14', 'Products', 'productlist.html', 'product.html', '1', '', 'Specialized customized school supplies for Chemistry', '', '', 'Products', '', '', 'product-19', 3, 'admin', 'admin', '2019-01-03 11:37:21', ' 2021-11-20 19:34:46', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (16, 'en', '1', '0', '16', 'Message', '', 'message.html', '1', '', '', '', '', 'Message', '', '', 'gbook', 6, 'admin', 'admin', '2019-01-03 11:38:08', ' 2021-11-20 19:41:03', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (17, 'en', '1', '0', '17', 'Contact', '', 'contact.html', '1', '', '', '/static/upload/image/20211120/1637410395575014.jpg', '', 'Contact', '', '', 'contact-5', 7, 'admin', 'admin', '2019-01-03 11:38:16', ' 2021-11-20 20:13:16', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (57, 'cn', '2', '2', '44', '公司新闻', 'newslist.html', 'news.html', '1', '', '', '', '', '公司新闻', '公司新闻', '公司新闻', 'gongsi', 255, 'admin', 'admin', '2019-05-04 15:25:57', ' 2021-11-20 17:06:11', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (58, 'cn', '2', '2', '45', '行业资讯', 'newslist.html', 'news.html', '1', '', '', '', '', '行业资讯', '行业资讯', '行业资讯', 'hangye', 255, 'admin', 'admin', '2019-05-04 15:26:10', ' 2021-11-20 17:06:24', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (59, 'cn', '2', '2', '46', '常见问题', 'newslist.html', 'news.html', '1', '', '', '', '', '常见问题', '常见问题', '常见问题', 'wenti', 255, 'admin', 'admin', '2019-05-04 15:26:22', ' 2021-11-20 17:06:33', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (63, 'cn', '3', '5', '50', '安全座椅', 'productlist.html', 'product.html', '1', '', '', '', '', '安全座椅', '', '', 'lm1', 255, 'admin', 'admin', '2019-05-10 16:19:17', ' 2021-11-20 16:55:57', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (64, 'cn', '3', '5', '51', '儿童推车', 'productlist.html', 'product.html', '1', '', '', '', '', '儿童推车', '儿童推车', '儿童推车', 'lm2', 255, 'admin', 'admin', '2019-05-10 16:19:29', ' 2021-11-20 16:56:36', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (72, 'cn', '3', '5', '57', '儿童餐桌', 'productlist.html', 'product.html', '1', '', '', '', '', '儿童餐桌', '儿童餐桌', '儿童餐桌', 'lm3', 255, 'admin', 'admin', '2019-05-21 17:46:19', ' 2021-11-20 16:56:46', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (82, 'nl', '1', '0', '61', 'Over ons', '', 'about.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:17:10', '2019-06-26 09:17:10', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (83, 'nl', '3', '0', '62', 'Producten', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:18:01', '2019-06-26 09:18:01', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (84, 'nl', '2', '0', '63', 'Blog', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:18:13', '2019-06-26 09:18:13', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (85, 'nl', '4', '0', '64', 'De fabriek', 'caselist.html', 'case.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:19:00', '2019-06-26 09:19:00', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (86, 'nl', '5', '0', '65', 'Feedback', '', 'message.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:20:17', '2019-06-26 09:20:17', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (87, 'nl', '1', '0', '66', 'Contacteer ons', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:20:53', '2019-06-26 09:20:53', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (88, 'nl', '1', '61', '67', 'Merk', '', 'about.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:23:25', '2019-06-26 09:23:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (89, 'nl', '1', '61', '68', 'Cultuur', '', 'about.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:23:49', '2019-06-26 09:23:49', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (90, 'nl', '2', '63', '69', 'Nieuws', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:24:42', '2019-06-26 09:24:42', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (91, 'nl', '2', '63', '70', 'Informatie', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:25:01', '2019-06-26 09:25:01', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (92, 'nl', '2', '63', '71', 'Q &amp; A', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-06-26 09:25:31', '2019-06-26 09:25:31', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (93, 'vn', '1', '0', '72', 'về chúng ta', '', 'about.html', '1', '', '', '', '', '', '', '', '', 1, 'admin', 'admin', '2019-06-26 09:26:28', ' 2019-06-26 09:30:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (94, 'vn', '3', '0', '73', 'SẢN PHẨM', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 2, 'admin', 'admin', '2019-06-26 09:27:23', ' 2019-11-04 17:22:41', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (95, 'vn', '2', '0', '74', 'TIN TỨC', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 3, 'admin', 'admin', '2019-06-26 09:27:53', ' 2019-11-04 17:23:16', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (96, 'vn', '4', '0', '75', 'Tiệm', 'caselist.html', 'case.html', '0', '', '', '', '', '', '', '', '', 4, 'admin', 'admin', '2019-06-26 09:28:07', ' 2019-07-27 14:33:14', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (97, 'vn', '5', '0', '76', 'Để lại lời', '', 'message.html', '1', '', '', '', '', '', '', '', '', 5, 'admin', 'admin', '2019-06-26 09:28:20', ' 2019-06-26 09:30:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (98, 'vn', '1', '0', '77', 'Liên lạc', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 6, 'admin', 'admin', '2019-06-26 09:28:37', ' 2019-06-26 09:30:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (106, 'nl', '3', '62', '85', 'Caustic Soda', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-01 14:52:50', '2019-07-01 14:52:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (107, 'nl', '3', '62', '86', 'Natriumcydroxide', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-01 14:53:06', '2019-07-01 14:53:06', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (108, 'nl', '3', '62', '87', 'Caustic Soda Flakes', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-01 14:53:19', '2019-07-01 14:53:19', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (109, 'nl', '3', '62', '88', 'NaOH', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-01 14:53:33', '2019-07-01 14:53:33', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (114, 'cn', '3', '5', '93', '行车记录仪', 'productlist.html', 'product.html', '1', '', '', '', '', '行车记录仪', '行车记录仪', '行车记录仪', 'lm4', 255, 'admin', 'admin', '2019-07-06 09:41:44', ' 2021-11-20 16:56:58', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (115, 'cn', '3', '5', '94', '扫码类', 'productlist.html', 'product.html', '1', '', '', '', '', '扫码类', '扫码类', '扫码类', 'lm5', 255, 'admin', 'admin', '2019-07-06 09:41:53', ' 2021-11-20 16:57:10', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (116, 'cn', '3', '5', '95', '特殊应用', 'productlist.html', 'product.html', '1', '', '', '', '', '特殊应用', '特殊应用', '特殊应用', 'lm6', 255, 'admin', 'admin', '2019-07-06 09:42:00', ' 2021-11-20 16:57:20', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (121, 'jp', '1', '0', '100', '企業情報', '', 'about.html', '1', '', '', '', '', '', '', '', '', 1, 'admin', 'admin', '2019-07-09 11:44:15', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (122, 'jp', '3', '0', '101', '製品情報', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 2, 'admin', 'admin', '2019-07-09 11:44:39', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (123, 'jp', '2', '0', '102', 'ブログ', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 3, 'admin', 'admin', '2019-07-09 11:44:56', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (124, 'jp', '4', '0', '103', '企業写真', 'caselist.html', 'case.html', '0', '', '', '', '', '', '', '', '', 4, 'admin', 'admin', '2019-07-09 11:45:56', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (125, 'jp', '1', '0', '104', 'アクセス', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 6, 'admin', 'admin', '2019-07-09 11:46:15', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (126, 'de', '1', '0', '105', 'Über uns', '', 'about.html', '1', '', '', '/static/upload/image/20190715/1563177403576313.jpg', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:29:09', ' 2019-07-15 15:56:44', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (127, 'de', '3', '0', '106', 'Design des Hauses', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:29:25', '2019-07-15 09:29:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (128, 'de', '3', '0', '107', 'Produkte', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:29:39', '2019-07-15 09:29:39', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (129, 'de', '2', '0', '108', 'Blog', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:29:48', '2019-07-15 09:29:48', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (130, 'de', '4', '0', '109', 'Fabrik', 'caselist.html', 'case.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:30:07', '2019-07-15 09:30:07', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (131, 'de', '1', '0', '110', 'Kontakt', '', 'contact.html', '1', '', '', '/static/upload/image/20190715/1563177410543563.jpg', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 09:30:30', ' 2019-07-15 15:56:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (138, 'de', '3', '107', '117', 'Türen', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:06:52', '2019-07-15 15:06:52', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (139, 'de', '3', '107', '118', 'Garderobe', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:07:46', ' 2019-07-15 15:08:35', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (140, 'de', '3', '107', '119', 'Wardrobe', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:07:58', '2019-07-15 15:07:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (141, 'de', '3', '107', '120', 'Badezimmer Schrank', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:08:13', ' 2019-07-15 15:08:46', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (142, 'de', '3', '107', '121', 'Der Weinkeller', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:09:02', '2019-07-15 15:09:02', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (143, 'de', '3', '107', '122', 'Wetterboarding', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:09:31', '2019-07-15 15:09:31', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (144, 'de', '3', '107', '123', 'Zubehör für Möbel', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:09:48', '2019-07-15 15:09:48', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (145, 'de', '3', '106', '124', 'Das Wohnzimmer', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:32:49', ' 2019-07-15 15:35:30', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (146, 'de', '3', '106', '125', 'Treppen', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:34:21', ' 2019-07-15 15:35:20', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (147, 'de', '3', '106', '126', 'Studie', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:35:46', '2019-07-15 15:35:46', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (148, 'de', '3', '106', '127', 'Schlafzimmer', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:35:59', '2019-07-15 15:35:59', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (149, 'de', '3', '106', '128', 'Cloakroom', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-07-15 15:36:11', '2019-07-15 15:36:11', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (159, 'fr', '1', '0', '138', 'Marque', '', 'about.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:36:50', '2019-08-07 15:36:50', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (160, 'fr', '3', '0', '139', 'Des produits', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:37:24', '2019-08-07 15:37:24', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (161, 'fr', '2', '0', '140', 'Nouvelles', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:37:36', '2019-08-07 15:37:36', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (162, 'fr', '4', '0', '141', 'Projet', 'caselist.html', 'case.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:37:54', '2019-08-07 15:37:54', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (163, 'fr', '5', '0', '142', 'Laisser des mots', '', 'message.html', '0', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:38:15', ' 2019-08-07 15:39:41', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (164, 'fr', '1', '0', '143', 'Contact', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-08-07 15:39:19', '2019-08-07 15:39:19', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (165, 'ar', '1', '0', '144', 'علامة تجارية', '', 'about.html', '1', '', '', '', '', '', '', '', '', 1, 'admin', 'admin', '2019-08-07 16:01:26', ' 2019-08-07 16:12:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (166, 'ar', '3', '0', '145', 'منتجات', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 2, 'admin', 'admin', '2019-08-07 16:01:41', ' 2019-08-07 16:12:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (167, 'ar', '2', '0', '146', 'أخبار', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 3, 'admin', 'admin', '2019-08-07 16:01:55', ' 2019-08-07 16:12:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (168, 'ar', '4', '0', '147', 'مشروع', 'caselist.html', 'case.html', '1', '', '', '', '', '', '', '', '', 4, 'admin', 'admin', '2019-08-07 16:02:09', ' 2019-08-07 16:12:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (169, 'ar', '5', '0', '148', 'اترك الكلمات', '', 'message.html', '1', '', '', '', '', '', '', '', '', 5, 'admin', 'admin', '2019-08-07 16:02:28', ' 2019-08-19 17:18:57', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (170, 'ar', '1', '0', '149', 'اتصل', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 6, 'admin', 'admin', '2019-08-07 16:02:42', ' 2019-08-07 16:12:25', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (171, 'jp', '5', '0', '150', '伝言', '', 'message.html', '1', '', '', '', '', '', '', '', '', 5, 'admin', 'admin', '2019-08-29 09:08:44', ' 2019-08-29 09:08:58', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (172, 'ru', '1', '0', '151', 'ВВЕДЕНИЕ', '', 'about.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:17:18', ' 2019-09-06 09:23:38', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (173, 'ru', '3', '0', '152', 'ПРОДУКЦИЯ', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:18:13', ' 2019-09-06 09:23:49', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (174, 'ru', '2', '0', '153', 'НОВОСТИ', 'newslist.html', 'news.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:18:29', ' 2019-09-06 09:23:57', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (175, 'ru', '4', '0', '154', 'ПРЕДМЕТ', 'caselist.html', 'case.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:19:07', ' 2019-10-15 15:26:27', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (176, 'ru', '5', '0', '155', 'ОСТАВЬТЕ СООБЩЕНИЕ', '', 'message.html', '0', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:19:23', ' 2019-10-15 15:26:27', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (177, 'ru', '1', '0', '156', 'КОНТАКТЫ', '', 'contact.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-06 09:19:46', ' 2019-09-06 09:24:39', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (178, 'ru', '3', '152', '157', 'Болты из нержавеющей стали', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-07 11:05:03', '2019-09-07 11:05:03', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (179, 'ru', '3', '152', '158', 'Анкерный болт', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-07 11:05:16', '2019-09-07 11:05:16', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (180, 'ru', '3', '152', '159', 'Щелевой орех', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-07 11:05:30', '2019-09-07 11:05:30', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (181, 'ru', '3', '152', '160', 'Высокопрочные болты', 'productlist.html', 'product.html', '1', '', '', '', '', '', '', '', '', 255, 'admin', 'admin', '2019-09-07 11:05:43', '2019-09-07 11:05:43', '4', '', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (182, 'en', '3', '14', '161', 'Class 1', 'productlist.html', 'product.html', '1', '', '', '', '', 'Class 1', '', '', 'class1', 255, 'admin', 'admin', '2021-11-20 19:38:58', '2021-11-20 19:38:58', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (183, 'en', '3', '14', '162', 'Class 2', 'productlist.html', 'product.html', '1', '', '', '', '', 'Class 2', '', '', 'class2', 255, 'admin', 'admin', '2021-11-20 19:39:21', ' 2021-11-20 19:39:32', '4', '0', '', '', '', '');
INSERT INTO "ay_content_sort" VALUES (184, 'en', '3', '14', '163', 'Class 3', 'productlist.html', 'product.html', '1', '', '', '', '', 'Class 3', '', '', 'class3', 255, 'admin', 'admin', '2021-11-20 19:39:55', '2021-11-20 19:39:55', '4', '0', '', '', '', '');

-- ----------------------------
-- Table structure for ay_extfield
-- ----------------------------
DROP TABLE IF EXISTS "ay_extfield";
CREATE TABLE "ay_extfield" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "mcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "type" TEXT(1) NOT NULL,
  "value" TEXT(500) NOT NULL,
  "description" TEXT(30) NOT NULL,
  "sorting" INTEGER(11) NOT NULL
);

-- ----------------------------
-- Records of ay_extfield
-- ----------------------------
INSERT INTO "ay_extfield" VALUES (12, '3', 'ext_canshu', '8', '', '产品参数', 255);

-- ----------------------------
-- Table structure for ay_form
-- ----------------------------
DROP TABLE IF EXISTS "ay_form";
CREATE TABLE "ay_form" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "fcode" TEXT(20) NOT NULL,
  "form_name" TEXT(30) NOT NULL,
  "table_name" TEXT(30) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_form
-- ----------------------------
INSERT INTO "ay_form" VALUES (1, '1', '在线留言', 'ay_message', 'admin', 'admin', '2018-04-11 17:31:29', '2018-04-11 17:31:29');

-- ----------------------------
-- Table structure for ay_form_field
-- ----------------------------
DROP TABLE IF EXISTS "ay_form_field";
CREATE TABLE "ay_form_field" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "fcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "length" INTEGER(10) NOT NULL,
  "required" TEXT(1) NOT NULL,
  "description" TEXT(30) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_form_field
-- ----------------------------
INSERT INTO "ay_form_field" VALUES (1, '1', 'contacts', 20, '1', '联系人', 255, 'admin', 'admin', '2018-07-14 18:24:02', ' 2019-07-25 10:19:32');
INSERT INTO "ay_form_field" VALUES (2, '1', 'mobile', 15, '0', '手机', 255, 'admin', 'admin', '2018-07-14 18:24:02', ' 2019-05-31 10:53:08');
INSERT INTO "ay_form_field" VALUES (15, '1', 'content', 9999, '1', '内容', 255, 'admin', 'admin', '2019-01-15 11:23:01', ' 2019-07-25 10:19:33');
INSERT INTO "ay_form_field" VALUES (17, '1', 'email', 20, '1', '邮箱', 255, 'admin', 'admin', '2019-05-31 10:52:41', ' 2019-07-25 10:19:35');

-- ----------------------------
-- Table structure for ay_label
-- ----------------------------
DROP TABLE IF EXISTS "ay_label";
CREATE TABLE "ay_label" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT(30) NOT NULL,
  "value" TEXT(500) NOT NULL,
  "type" TEXT(1) NOT NULL,
  "description" TEXT(30) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(20) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_label
-- ----------------------------

-- ----------------------------
-- Table structure for ay_link
-- ----------------------------
DROP TABLE IF EXISTS "ay_link";
CREATE TABLE "ay_link" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "gid" INTEGER(10) NOT NULL,
  "name" TEXT(50) NOT NULL,
  "link" TEXT(100) NOT NULL,
  "logo" TEXT(100) NOT NULL,
  "sorting" INTEGER(11) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_link
-- ----------------------------
INSERT INTO "ay_link" VALUES (1, 'cn', 1, '欧方源码', 'http://www.ofym.com', '', 255, 'admin', 'admin', '2018-04-12 10:53:06', ' 2022-05-16 12:12:41');
INSERT INTO "ay_link" VALUES (2, 'cn', 1, '小程序开发', 'http://www.ofkj.com', '', 255, 'admin', 'admin', '2021-10-13 16:41:03', ' 2022-05-16 12:14:05');
INSERT INTO "ay_link" VALUES (3, 'cn', 1, '全网营销', 'http://www.ofyx.com', '', 255, 'admin', 'admin', '2021-11-05 18:33:56', ' 2022-05-16 12:14:15');
INSERT INTO "ay_link" VALUES (4, 'cn', 1, 'UI设计', 'http://www.ofsj.com', '', 255, 'admin', 'admin', '2021-11-05 18:34:04', ' 2022-05-16 12:14:25');
INSERT INTO "ay_link" VALUES (5, 'cn', 1, '源码下载', 'http://www.ofym.com', '', 255, 'admin', 'admin', '2021-11-05 18:34:12', ' 2022-05-16 12:14:35');
INSERT INTO "ay_link" VALUES (6, 'cn', 1, '前端开发', 'http://www.ofqd.com', '', 255, 'admin', 'admin', '2021-11-05 18:34:20', ' 2022-05-16 12:14:48');
INSERT INTO "ay_link" VALUES (7, 'cn', 1, '软件开发', 'http://www.ofkf.com', '', 255, 'admin', 'admin', '2022-05-16 12:15:07', '2022-05-16 12:15:07');
INSERT INTO "ay_link" VALUES (8, 'cn', 1, '建站仿站', 'http://www.ofjz.com', '', 255, 'admin', 'admin', '2022-05-16 12:15:07', ' 2022-05-16 12:15:23');

-- ----------------------------
-- Table structure for ay_member
-- ----------------------------
DROP TABLE IF EXISTS "ay_member";
CREATE TABLE "ay_member" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "ucode" TEXT(20) NOT NULL,
  "username" TEXT(100) NOT NULL,
  "nickname" TEXT(100) NOT NULL,
  "password" TEXT(32) NOT NULL,
  "headpic" TEXT(200) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "gid" TEXT(20) NOT NULL,
  "wxid" TEXT(50) NOT NULL,
  "qqid" TEXT(50) NOT NULL,
  "wbid" TEXT(50) NOT NULL,
  "score" INTEGER(10) NOT NULL DEFAULT 0,
  "register_time" TEXT NOT NULL,
  "login_count" INTEGER(10) NOT NULL DEFAULT 0,
  "last_login_ip" TEXT(11) NOT NULL,
  "last_login_time" TEXT(11) NOT NULL,
  "sex" TEXT(2) NOT NULL DEFAULT '',
  "birthday" TEXT(20) NOT NULL DEFAULT '',
  "telephone" TEXT(20) NOT NULL DEFAULT '',
  "email" TEXT(50) NOT NULL DEFAULT '',
  "qq" TEXT(15) NOT NULL DEFAULT '',
  "useremail" TEXT(50) NOT NULL DEFAULT '',
  "usermobile" TEXT(11) NOT NULL DEFAULT '',
  "activation" TEXT(1) NOT NULL DEFAULT 1
);

-- ----------------------------
-- Records of ay_member
-- ----------------------------

-- ----------------------------
-- Table structure for ay_member_comment
-- ----------------------------
DROP TABLE IF EXISTS "ay_member_comment";
CREATE TABLE "ay_member_comment" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "pid" INTEGER(10) NOT NULL DEFAULT 0,
  "contentid" INTEGER(10) NOT NULL,
  "comment" TEXT(1000) NOT NULL,
  "uid" INTEGER(10) NOT NULL,
  "puid" INTEGER(10) NOT NULL,
  "likes" INTEGER(10) NOT NULL DEFAULT 0,
  "oppose" INTEGER(10) NOT NULL DEFAULT 0,
  "status" TEXT(1) NOT NULL,
  "user_ip" TEXT(11) NOT NULL,
  "user_os" TEXT(30) NOT NULL,
  "user_bs" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_member_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ay_member_field
-- ----------------------------
DROP TABLE IF EXISTS "ay_member_field";
CREATE TABLE "ay_member_field" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT(30) NOT NULL,
  "length" INTEGER(10) NOT NULL,
  "required" TEXT(1) NOT NULL,
  "description" TEXT(30) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_member_field
-- ----------------------------
INSERT INTO "ay_member_field" VALUES (1, 'sex', 2, '0', '性别', 255, '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');
INSERT INTO "ay_member_field" VALUES (2, 'birthday', 20, '0', '生日', 255, '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');
INSERT INTO "ay_member_field" VALUES (3, 'qq', 15, '0', 'QQ', 255, '1', 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');

-- ----------------------------
-- Table structure for ay_member_group
-- ----------------------------
DROP TABLE IF EXISTS "ay_member_group";
CREATE TABLE "ay_member_group" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "gcode" TEXT(20) NOT NULL,
  "gname" TEXT(100) NOT NULL,
  "description" TEXT(200) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "lscore" INTEGER(10) NOT NULL DEFAULT 0,
  "uscore" INTEGER(10) NOT NULL DEFAULT 0,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_member_group
-- ----------------------------
INSERT INTO "ay_member_group" VALUES (1, '1', '初级会员', '初级会员具备基本的权限', '1', 0, 999, 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');
INSERT INTO "ay_member_group" VALUES (2, '2', '中级会员', '中级会员具备部分特殊权限', '1', 1000, 9999, 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');
INSERT INTO "ay_member_group" VALUES (3, '3', '高级会员', '高级会员具备全部特殊权限', '1', 10000, 9999999999, 'admin', 'admin', '2020-06-25 00:00:00', '2020-06-25 00:00:00');

-- ----------------------------
-- Table structure for ay_menu
-- ----------------------------
DROP TABLE IF EXISTS "ay_menu";
CREATE TABLE "ay_menu" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "mcode" TEXT(20) NOT NULL,
  "pcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "url" TEXT(100) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "shortcut" TEXT(1) NOT NULL,
  "ico" TEXT(30) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_menu
-- ----------------------------
INSERT INTO "ay_menu" VALUES (1, 'M101', '0', '系统管理', '/admin/M101/index', 900, '1', '0', 'fa-cog', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:52:57');
INSERT INTO "ay_menu" VALUES (2, 'M102', 'M101', '数据区域', '/admin/Area/index', 901, '1', '1', 'fa-sitemap', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:23');
INSERT INTO "ay_menu" VALUES (3, 'M103', 'M101', '系统菜单', '/admin/Menu/index', 902, '0', '0', 'fa-bars', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:35');
INSERT INTO "ay_menu" VALUES (4, 'M104', 'M101', '系统角色', '/admin/Role/index', 903, '1', '1', 'fa-hand-stop-o', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:43');
INSERT INTO "ay_menu" VALUES (5, 'M105', 'M101', '系统用户', '/admin/User/index', 904, '1', '1', 'fa-users', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:54:51');
INSERT INTO "ay_menu" VALUES (6, 'M106', 'M101', '系统日志', '/admin/Syslog/index', 905, '1', '1', 'fa-history', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:00');
INSERT INTO "ay_menu" VALUES (7, 'M107', 'M101', '类型管理', '/admin/Type/index', 906, '0', '0', 'fa-tags', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:13');
INSERT INTO "ay_menu" VALUES (8, 'M108', 'M101', '数据库管理', '/admin/Database/index', 907, '1', '1', 'fa-database', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:24');
INSERT INTO "ay_menu" VALUES (9, 'M109', 'M101', '服务器信息', '/admin/Site/server', 908, '1', '1', 'fa-info-circle', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-30 14:55:34');
INSERT INTO "ay_menu" VALUES (10, 'M110', '0', '基础内容', '/admin/M110/index', 300, '1', '0', 'fa-sliders', 'admin', 'admin', '2017-11-28 11:13:05', '2018-04-30 14:48:29');
INSERT INTO "ay_menu" VALUES (11, 'M111', 'M110', '站点信息', '/admin/Site/index', 301, '1', '1', 'fa-cog', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-07 18:45:57');
INSERT INTO "ay_menu" VALUES (12, 'M112', 'M110', '公司信息', '/admin/Company/index', 302, '1', '1', 'fa-copyright', 'admin', 'admin', '0000-00-00 00:00:00', '2018-04-07 18:46:09');
INSERT INTO "ay_menu" VALUES (29, 'M129', 'M110', '内容栏目', '/admin/ContentSort/index', 303, '1', '1', 'fa-bars', 'admin', 'admin', '2017-12-26 10:42:40', '2018-04-07 18:46:25');
INSERT INTO "ay_menu" VALUES (30, 'M130', '0', '文章内容', '/admin/M130/index', 400, '1', '0', 'fa-file-text-o', 'admin', 'admin', '2017-12-26 10:45:36', '2018-04-30 14:49:47');
INSERT INTO "ay_menu" VALUES (31, 'M131', 'M130', '单页内容', '/admin/Single/index', 401, '0', '0', 'fa-file-o', 'admin', 'admin', '2017-12-26 10:46:35', '2018-04-07 18:46:35');
INSERT INTO "ay_menu" VALUES (32, 'M132', 'M130', '列表内容', '/admin/Content/index', 402, '0', '0', 'fa-file-text-o', 'admin', 'admin', '2017-12-26 10:48:17', '2018-04-07 21:52:15');
INSERT INTO "ay_menu" VALUES (36, 'M136', 'M156', '定制标签', '/admin/Label/index', 203, '1', '1', 'fa-wrench', 'admin', 'admin', '2018-01-03 11:52:40', '2018-04-07 18:44:31');
INSERT INTO "ay_menu" VALUES (50, 'M150', 'M157', '留言信息', '/admin/Message/index', 501, '1', '1', 'fa-question-circle-o', 'admin', 'admin', '2018-02-01 13:20:17', '2018-07-07 23:45:09');
INSERT INTO "ay_menu" VALUES (51, 'M151', 'M157', '轮播图片', '/admin/Slide/index', 502, '1', '1', 'fa-picture-o', 'admin', 'admin', '2018-03-01 14:57:41', '2018-04-07 18:47:07');
INSERT INTO "ay_menu" VALUES (52, 'M152', 'M157', '友情链接', '/admin/Link/index', 503, '1', '1', 'fa-link', 'admin', 'admin', '2018-03-01 14:58:45', '2018-04-07 18:47:16');
INSERT INTO "ay_menu" VALUES (53, 'M153', 'M156', '配置参数', '/admin/Config/index', 201, '1', '1', 'fa-sliders', 'admin', 'admin', '2018-03-21 14:52:05', '2018-04-07 18:44:02');
INSERT INTO "ay_menu" VALUES (55, 'M155', 'M156', '模型管理', '/admin/Model/index', 204, '1', '1', 'fa-codepen', 'admin', 'admin', '2018-03-25 17:16:06', '2018-04-07 18:44:40');
INSERT INTO "ay_menu" VALUES (56, 'M156', '0', '全局配置', '/admin/M156/index', 200, '1', '0', 'fa-globe', 'admin', 'admin', '2018-03-25 17:20:43', '2018-04-30 14:43:56');
INSERT INTO "ay_menu" VALUES (57, 'M157', '0', '扩展内容', '/admin/M157/index', 500, '1', '0', 'fa-arrows-alt', 'admin', 'admin', '2018-03-25 17:27:57', '2018-04-30 14:50:34');
INSERT INTO "ay_menu" VALUES (58, 'M158', 'M156', '模型字段', '/admin/ExtField/index', 205, '1', '1', 'fa-external-link', 'admin', 'admin', '2018-03-25 21:24:43', '2018-04-07 18:44:49');
INSERT INTO "ay_menu" VALUES (60, 'M160', 'M157', '自定义表单', '/admin/Form/index', 504, '1', '1', 'fa-plus-square-o', 'admin', 'admin', '2018-05-30 18:25:41', '2018-05-31 23:55:10');
INSERT INTO "ay_menu" VALUES (61, 'M1000', 'M157', '文章内链', '/admin/Tags/index', 505, '1', '0', 'fa-random', 'admin', 'admin', '2019-07-12 08:25:41', '2019-07-12 08:26:23');
INSERT INTO "ay_menu" VALUES (63, 'M1001', '0', '会员中心', '/admin/M1001/index', 600, '1', '0', 'fa-user-o', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23');
INSERT INTO "ay_menu" VALUES (64, 'M1002', 'M1001', '会员等级', '/admin/MemberGroup/index', 601, '1', '0', 'fa-signal', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23');
INSERT INTO "ay_menu" VALUES (65, 'M1003', 'M1001', '会员字段', '/admin/MemberField/index', 602, '1', '0', 'fa-wpforms', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23');
INSERT INTO "ay_menu" VALUES (66, 'M1004', 'M1001', '会员管理', '/admin/Member/index', 603, '1', '0', 'fa-users', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23');
INSERT INTO "ay_menu" VALUES (67, 'M1005', 'M1001', '文章评论', '/admin/MemberComment/index', 604, '1', '0', 'fa-commenting-o', 'admin', 'admin', '2019-10-04 08:25:41', '2019-10-04 08:26:23');

-- ----------------------------
-- Table structure for ay_menu_action
-- ----------------------------
DROP TABLE IF EXISTS "ay_menu_action";
CREATE TABLE "ay_menu_action" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "mcode" TEXT(20) NOT NULL,
  "action" TEXT(20) NOT NULL
);

-- ----------------------------
-- Records of ay_menu_action
-- ----------------------------
INSERT INTO "ay_menu_action" VALUES (1, 'M102', 'mod');
INSERT INTO "ay_menu_action" VALUES (2, 'M102', 'del');
INSERT INTO "ay_menu_action" VALUES (3, 'M102', 'add');
INSERT INTO "ay_menu_action" VALUES (4, 'M103', 'mod');
INSERT INTO "ay_menu_action" VALUES (5, 'M103', 'del');
INSERT INTO "ay_menu_action" VALUES (6, 'M103', 'add');
INSERT INTO "ay_menu_action" VALUES (7, 'M104', 'mod');
INSERT INTO "ay_menu_action" VALUES (8, 'M104', 'del');
INSERT INTO "ay_menu_action" VALUES (9, 'M104', 'add');
INSERT INTO "ay_menu_action" VALUES (10, 'M105', 'mod');
INSERT INTO "ay_menu_action" VALUES (11, 'M105', 'del');
INSERT INTO "ay_menu_action" VALUES (12, 'M105', 'add');
INSERT INTO "ay_menu_action" VALUES (13, 'M107', 'mod');
INSERT INTO "ay_menu_action" VALUES (14, 'M107', 'del');
INSERT INTO "ay_menu_action" VALUES (15, 'M107', 'add');
INSERT INTO "ay_menu_action" VALUES (16, 'M111', 'mod');
INSERT INTO "ay_menu_action" VALUES (17, 'M112', 'mod');
INSERT INTO "ay_menu_action" VALUES (18, 'M114', 'mod');
INSERT INTO "ay_menu_action" VALUES (19, 'M114', 'del');
INSERT INTO "ay_menu_action" VALUES (20, 'M114', 'add');
INSERT INTO "ay_menu_action" VALUES (21, 'M120', 'mod');
INSERT INTO "ay_menu_action" VALUES (22, 'M120', 'del');
INSERT INTO "ay_menu_action" VALUES (23, 'M120', 'add');
INSERT INTO "ay_menu_action" VALUES (24, 'M129', 'mod');
INSERT INTO "ay_menu_action" VALUES (25, 'M129', 'del');
INSERT INTO "ay_menu_action" VALUES (26, 'M129', 'add');
INSERT INTO "ay_menu_action" VALUES (27, 'M131', 'mod');
INSERT INTO "ay_menu_action" VALUES (28, 'M132', 'mod');
INSERT INTO "ay_menu_action" VALUES (29, 'M132', 'del');
INSERT INTO "ay_menu_action" VALUES (30, 'M132', 'add');
INSERT INTO "ay_menu_action" VALUES (31, 'M136', 'mod');
INSERT INTO "ay_menu_action" VALUES (32, 'M136', 'del');
INSERT INTO "ay_menu_action" VALUES (33, 'M136', 'add');
INSERT INTO "ay_menu_action" VALUES (34, 'M141', 'mod');
INSERT INTO "ay_menu_action" VALUES (35, 'M141', 'del');
INSERT INTO "ay_menu_action" VALUES (36, 'M141', 'add');
INSERT INTO "ay_menu_action" VALUES (37, 'M142', 'mod');
INSERT INTO "ay_menu_action" VALUES (38, 'M142', 'del');
INSERT INTO "ay_menu_action" VALUES (39, 'M142', 'add');
INSERT INTO "ay_menu_action" VALUES (40, 'M143', 'mod');
INSERT INTO "ay_menu_action" VALUES (41, 'M143', 'del');
INSERT INTO "ay_menu_action" VALUES (42, 'M143', 'add');
INSERT INTO "ay_menu_action" VALUES (43, 'M144', 'mod');
INSERT INTO "ay_menu_action" VALUES (44, 'M144', 'del');
INSERT INTO "ay_menu_action" VALUES (45, 'M144', 'add');
INSERT INTO "ay_menu_action" VALUES (46, 'M145', 'mod');
INSERT INTO "ay_menu_action" VALUES (47, 'M145', 'del');
INSERT INTO "ay_menu_action" VALUES (48, 'M145', 'add');
INSERT INTO "ay_menu_action" VALUES (49, 'M150', 'del');
INSERT INTO "ay_menu_action" VALUES (50, 'M150', 'mod');
INSERT INTO "ay_menu_action" VALUES (51, 'M151', 'mod');
INSERT INTO "ay_menu_action" VALUES (52, 'M151', 'del');
INSERT INTO "ay_menu_action" VALUES (53, 'M151', 'add');
INSERT INTO "ay_menu_action" VALUES (54, 'M152', 'mod');
INSERT INTO "ay_menu_action" VALUES (55, 'M152', 'del');
INSERT INTO "ay_menu_action" VALUES (56, 'M152', 'add');
INSERT INTO "ay_menu_action" VALUES (57, 'M155', 'mod');
INSERT INTO "ay_menu_action" VALUES (58, 'M155', 'del');
INSERT INTO "ay_menu_action" VALUES (59, 'M155', 'add');
INSERT INTO "ay_menu_action" VALUES (60, 'M158', 'mod');
INSERT INTO "ay_menu_action" VALUES (61, 'M158', 'del');
INSERT INTO "ay_menu_action" VALUES (62, 'M158', 'add');
INSERT INTO "ay_menu_action" VALUES (63, 'M160', 'add');
INSERT INTO "ay_menu_action" VALUES (64, 'M160', 'del');
INSERT INTO "ay_menu_action" VALUES (65, 'M160', 'mod');
INSERT INTO "ay_menu_action" VALUES (66, 'M1000', 'add');
INSERT INTO "ay_menu_action" VALUES (67, 'M1000', 'del');
INSERT INTO "ay_menu_action" VALUES (68, 'M1000', 'mod');
INSERT INTO "ay_menu_action" VALUES (69, 'M1002', 'add');
INSERT INTO "ay_menu_action" VALUES (70, 'M1002', 'del');
INSERT INTO "ay_menu_action" VALUES (71, 'M1002', 'mod');
INSERT INTO "ay_menu_action" VALUES (72, 'M1003', 'add');
INSERT INTO "ay_menu_action" VALUES (73, 'M1003', 'del');
INSERT INTO "ay_menu_action" VALUES (74, 'M1003', 'mod');
INSERT INTO "ay_menu_action" VALUES (75, 'M1004', 'add');
INSERT INTO "ay_menu_action" VALUES (76, 'M1004', 'del');
INSERT INTO "ay_menu_action" VALUES (77, 'M1004', 'mod');
INSERT INTO "ay_menu_action" VALUES (78, 'M1005', 'del');

-- ----------------------------
-- Table structure for ay_message
-- ----------------------------
DROP TABLE IF EXISTS "ay_message";
CREATE TABLE "ay_message" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "contacts" TEXT(10),
  "mobile" TEXT(12),
  "content" TEXT(500),
  "user_ip" TEXT(11) NOT NULL,
  "user_os" TEXT(30) NOT NULL,
  "user_bs" TEXT(30) NOT NULL,
  "recontent" TEXT(500) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL,
  "company" TEXT(250),
  "t1" TEXT(250),
  "t2" TEXT(250),
  "t3" TEXT(20),
  "t4" TEXT(250),
  "t5" TEXT(250),
  "t6" TEXT(250),
  "t7" TEXT(250),
  "t8" TEXT(250),
  "email" TEXT(20),
  "uid" INTEGER(10) NOT NULL DEFAULT 0
);

-- ----------------------------
-- Records of ay_message
-- ----------------------------

-- ----------------------------
-- Table structure for ay_model
-- ----------------------------
DROP TABLE IF EXISTS "ay_model";
CREATE TABLE "ay_model" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "mcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "type" TEXT(1) NOT NULL,
  "listtpl" TEXT(30) NOT NULL,
  "contenttpl" TEXT(30) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "issystem" TEXT(1) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL,
  "urlname" TEXT(100) NOT NULL DEFAULT ''
);

-- ----------------------------
-- Records of ay_model
-- ----------------------------
INSERT INTO "ay_model" VALUES (1, '1', '单页', '1', '', 'about.html', '1', '1', 'admin', 'admin', '2018-04-11 17:16:01', ' 2019-01-03 09:59:06', '');
INSERT INTO "ay_model" VALUES (2, '2', '新闻', '2', 'newslist.html', 'news.html', '1', '1', 'admin', 'admin', '2018-04-11 17:17:16', '2018-04-11 17:17:16', '');
INSERT INTO "ay_model" VALUES (3, '3', '产品', '2', 'productlist.html', 'product.html', '1', '0', 'admin', 'admin', '2018-04-11 17:17:46', '2018-04-11 17:17:46', '');
INSERT INTO "ay_model" VALUES (4, '4', '照片', '2', 'caselist.html', 'case.html', '0', '0', 'admin', 'admin', '2018-04-11 17:19:53', ' 2021-11-20 19:11:48', '');
INSERT INTO "ay_model" VALUES (5, '5', '留言1', '2', '', 'mesdsage.html', '0', '0', 'admin', 'admin', '2018-04-11 17:24:34', ' 2021-11-20 19:13:26', 'list');

-- ----------------------------
-- Table structure for ay_role
-- ----------------------------
DROP TABLE IF EXISTS "ay_role";
CREATE TABLE "ay_role" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "rcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "description" TEXT(50) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_role
-- ----------------------------
INSERT INTO "ay_role" VALUES (1, 'R101', '系统管理员', '系统管理员具有所有权限', 'admin', 'admin', '2017-03-22 11:33:32', '2018-07-17 17:33:48');

-- ----------------------------
-- Table structure for ay_role_area
-- ----------------------------
DROP TABLE IF EXISTS "ay_role_area";
CREATE TABLE "ay_role_area" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "rcode" TEXT(20) NOT NULL,
  "acode" TEXT(20) NOT NULL
);

-- ----------------------------
-- Records of ay_role_area
-- ----------------------------
INSERT INTO "ay_role_area" VALUES (1, 'R101', 'cn');

-- ----------------------------
-- Table structure for ay_role_level
-- ----------------------------
DROP TABLE IF EXISTS "ay_role_level";
CREATE TABLE "ay_role_level" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "rcode" TEXT(20) NOT NULL,
  "level" TEXT(50) NOT NULL
);

-- ----------------------------
-- Records of ay_role_level
-- ----------------------------
INSERT INTO "ay_role_level" VALUES (1, 'R101', '/admin/M156/index');
INSERT INTO "ay_role_level" VALUES (2, 'R101', '/admin/Config/index');
INSERT INTO "ay_role_level" VALUES (3, 'R101', '/admin/Config/email');
INSERT INTO "ay_role_level" VALUES (4, 'R101', '/admin/Label/index');
INSERT INTO "ay_role_level" VALUES (5, 'R101', '/admin/Label/add');
INSERT INTO "ay_role_level" VALUES (6, 'R101', '/admin/Label/del');
INSERT INTO "ay_role_level" VALUES (7, 'R101', '/admin/Label/mod');
INSERT INTO "ay_role_level" VALUES (8, 'R101', '/admin/Model/index');
INSERT INTO "ay_role_level" VALUES (9, 'R101', '/admin/Model/add');
INSERT INTO "ay_role_level" VALUES (10, 'R101', '/admin/Model/del');
INSERT INTO "ay_role_level" VALUES (11, 'R101', '/admin/Model/mod');
INSERT INTO "ay_role_level" VALUES (12, 'R101', '/admin/ExtField/index');
INSERT INTO "ay_role_level" VALUES (13, 'R101', '/admin/ExtField/add');
INSERT INTO "ay_role_level" VALUES (14, 'R101', '/admin/ExtField/del');
INSERT INTO "ay_role_level" VALUES (15, 'R101', '/admin/ExtField/mod');
INSERT INTO "ay_role_level" VALUES (16, 'R101', '/admin/M110/index');
INSERT INTO "ay_role_level" VALUES (17, 'R101', '/admin/Site/index');
INSERT INTO "ay_role_level" VALUES (18, 'R101', '/admin/Site/mod');
INSERT INTO "ay_role_level" VALUES (19, 'R101', '/admin/Company/index');
INSERT INTO "ay_role_level" VALUES (20, 'R101', '/admin/Company/mod');
INSERT INTO "ay_role_level" VALUES (21, 'R101', '/admin/ContentSort/index');
INSERT INTO "ay_role_level" VALUES (22, 'R101', '/admin/ContentSort/add');
INSERT INTO "ay_role_level" VALUES (23, 'R101', '/admin/ContentSort/del');
INSERT INTO "ay_role_level" VALUES (24, 'R101', '/admin/ContentSort/mod');
INSERT INTO "ay_role_level" VALUES (25, 'R101', '/admin/M130/index');
INSERT INTO "ay_role_level" VALUES (26, 'R101', '/admin/Single/index');
INSERT INTO "ay_role_level" VALUES (27, 'R101', '/admin/Single/mod');
INSERT INTO "ay_role_level" VALUES (28, 'R101', '/admin/Content/index');
INSERT INTO "ay_role_level" VALUES (29, 'R101', '/admin/Content/add');
INSERT INTO "ay_role_level" VALUES (30, 'R101', '/admin/Content/del');
INSERT INTO "ay_role_level" VALUES (31, 'R101', '/admin/Content/mod');
INSERT INTO "ay_role_level" VALUES (32, 'R101', '/admin/Content/index/mcode/2');
INSERT INTO "ay_role_level" VALUES (33, 'R101', '/admin/M157/index');
INSERT INTO "ay_role_level" VALUES (34, 'R101', '/admin/Message/index');
INSERT INTO "ay_role_level" VALUES (35, 'R101', '/admin/Message/del');
INSERT INTO "ay_role_level" VALUES (36, 'R101', '/admin/Message/mod');
INSERT INTO "ay_role_level" VALUES (37, 'R101', '/admin/Slide/index');
INSERT INTO "ay_role_level" VALUES (38, 'R101', '/admin/Slide/add');
INSERT INTO "ay_role_level" VALUES (39, 'R101', '/admin/Slide/del');
INSERT INTO "ay_role_level" VALUES (40, 'R101', '/admin/Slide/mod');
INSERT INTO "ay_role_level" VALUES (41, 'R101', '/admin/Link/index');
INSERT INTO "ay_role_level" VALUES (42, 'R101', '/admin/Link/add');
INSERT INTO "ay_role_level" VALUES (43, 'R101', '/admin/Link/del');
INSERT INTO "ay_role_level" VALUES (44, 'R101', '/admin/Link/mod');
INSERT INTO "ay_role_level" VALUES (45, 'R101', '/admin/Form/index');
INSERT INTO "ay_role_level" VALUES (46, 'R101', '/admin/Form/add');
INSERT INTO "ay_role_level" VALUES (47, 'R101', '/admin/Form/del');
INSERT INTO "ay_role_level" VALUES (48, 'R101', '/admin/Form/mod');
INSERT INTO "ay_role_level" VALUES (49, 'R101', '/admin/M101/index');
INSERT INTO "ay_role_level" VALUES (50, 'R101', '/admin/Area/index');
INSERT INTO "ay_role_level" VALUES (51, 'R101', '/admin/Area/add');
INSERT INTO "ay_role_level" VALUES (52, 'R101', '/admin/Area/del');
INSERT INTO "ay_role_level" VALUES (53, 'R101', '/admin/Area/mod');
INSERT INTO "ay_role_level" VALUES (54, 'R101', '/admin/Menu/index');
INSERT INTO "ay_role_level" VALUES (55, 'R101', '/admin/Menu/add');
INSERT INTO "ay_role_level" VALUES (56, 'R101', '/admin/Menu/del');
INSERT INTO "ay_role_level" VALUES (57, 'R101', '/admin/Menu/mod');
INSERT INTO "ay_role_level" VALUES (58, 'R101', '/admin/Role/index');
INSERT INTO "ay_role_level" VALUES (59, 'R101', '/admin/Role/add');
INSERT INTO "ay_role_level" VALUES (60, 'R101', '/admin/Role/del');
INSERT INTO "ay_role_level" VALUES (61, 'R101', '/admin/Role/mod');
INSERT INTO "ay_role_level" VALUES (62, 'R101', '/admin/User/index');
INSERT INTO "ay_role_level" VALUES (63, 'R101', '/admin/User/add');
INSERT INTO "ay_role_level" VALUES (64, 'R101', '/admin/User/del');
INSERT INTO "ay_role_level" VALUES (65, 'R101', '/admin/User/mod');
INSERT INTO "ay_role_level" VALUES (66, 'R101', '/admin/Syslog/index');
INSERT INTO "ay_role_level" VALUES (67, 'R101', '/admin/Type/index');
INSERT INTO "ay_role_level" VALUES (68, 'R101', '/admin/Type/add');
INSERT INTO "ay_role_level" VALUES (69, 'R101', '/admin/Type/del');
INSERT INTO "ay_role_level" VALUES (70, 'R101', '/admin/Type/mod');
INSERT INTO "ay_role_level" VALUES (71, 'R101', '/admin/Database/index');
INSERT INTO "ay_role_level" VALUES (72, 'R101', '/admin/Site/server');

-- ----------------------------
-- Table structure for ay_site
-- ----------------------------
DROP TABLE IF EXISTS "ay_site";
CREATE TABLE "ay_site" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "title" TEXT(50) NOT NULL,
  "subtitle" TEXT(100) NOT NULL,
  "domain" TEXT(50) NOT NULL,
  "logo" TEXT(100) NOT NULL,
  "keywords" TEXT(200) NOT NULL,
  "description" TEXT(500) NOT NULL,
  "icp" TEXT(30) NOT NULL,
  "theme" TEXT(30) NOT NULL,
  "statistical" TEXT(500) NOT NULL,
  "copyright" TEXT(200) NOT NULL
);

-- ----------------------------
-- Records of ay_site
-- ----------------------------
INSERT INTO "ay_site" VALUES (1, 'cn', '工控解决方案 | 高性能主板与控制盒 | 星为光电', '', '', '/static/upload/image/20211120/1637410971180050.png', '中英文双语网站模板,机械设备网站源码', '星为是工业自动化领域的领先供应商，提供创新的工控解决方案，包括高性能主板和控制盒，满足各种行业的需求。', '', 'cn', '', 'Copyright © 2022 xingwei All Rights Reserved.');
INSERT INTO "ay_site" VALUES (2, 'en', 'Industrial Control Solutions | High-Performance Boards and Control Boxes | Ceenway Tech', '', '', '/static/upload/image/20211120/1637410948632114.png', '', 'We are a leading supplier in the field of industrial automation, providing innovative control solutions including high-performance boards and control boxes to meet the diverse needs of various industries.', '', 'en', '', 'Copyright © 2022 Ceenway All Rights Reserved.');
INSERT INTO "ay_site" VALUES (3, 'nl', 'De Chinese Wanyun Chemical Co., Ltd', 'Caustic Soda-Natriumhydroxide-NaOH', '', '', '', '', '', 'nl', '', '');
INSERT INTO "ay_site" VALUES (4, 'vn', 'China Hebei Lianyi Machinery Manufacturing Co., Ltd.', 'rotary cutting machine-CNC rotary cutting machine', '', '', '', '', '', 'vn', '', '');
INSERT INTO "ay_site" VALUES (5, 'jp', '中国九玺環境科学技術会社', '', '', '', '', '', '', 'jp', '', '');
INSERT INTO "ay_site" VALUES (6, 'de', 'China Meisili Furniture Co., Ltd.', '', '', '', '', '', '', 'de', '', '');
INSERT INTO "ay_site" VALUES (7, 'fr', '', '', '', '', '', '', '', 'fr', '', '');
INSERT INTO "ay_site" VALUES (8, 'ar', '', '', '', '', '', '', '', 'ar', '', '');
INSERT INTO "ay_site" VALUES (9, 'ru', 'China Yangcheng County Huayang Materials Co., Ltd.', 'Крепежные гайки-болты', '', '', 'Крепежные гайки-болты', '', '', 'ru', '', '');

-- ----------------------------
-- Table structure for ay_slide
-- ----------------------------
DROP TABLE IF EXISTS "ay_slide";
CREATE TABLE "ay_slide" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "gid" INTEGER(10) NOT NULL,
  "pic" TEXT(100) NOT NULL,
  "link" TEXT(100) NOT NULL,
  "title" TEXT(50) NOT NULL,
  "subtitle" TEXT(100) NOT NULL,
  "sorting" INTEGER(11) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_slide
-- ----------------------------
INSERT INTO "ay_slide" VALUES (17, 'cn', 1, '/static/upload/image/20211120/1637403508560052.jpg', '', '', '', 255, 'admin', 'admin', '2021-11-20 18:18:40', '2021-11-20 18:18:40');
INSERT INTO "ay_slide" VALUES (18, 'cn', 1, '/static/upload/image/20211120/1637403526817914.jpg', '', '', '', 255, 'admin', 'admin', '2021-11-20 18:18:47', '2021-11-20 18:18:47');
INSERT INTO "ay_slide" VALUES (19, 'cn', 1, '/static/upload/image/20211120/1637403532256817.jpg', '', '', '', 255, 'admin', 'admin', '2021-11-20 18:18:53', '2021-11-20 18:18:53');
INSERT INTO "ay_slide" VALUES (20, 'en', 2, '/static/upload/image/20230914/1694704338773474.jpg', '', '', '', 255, 'admin', 'admin', '2021-11-20 19:42:04', ' 2023-09-14 23:12:19');
INSERT INTO "ay_slide" VALUES (21, 'en', 2, '/static/upload/image/20230914/1694704346959634.jpg', '', '', '', 255, 'admin', 'admin', '2021-11-20 19:42:11', ' 2023-09-14 23:12:27');
INSERT INTO "ay_slide" VALUES (22, 'en', 2, '/static/upload/image/20230914/1694704372486411.jpg', '', '', '', 255, 'admin', 'admin', '2023-09-14 23:12:53', '2023-09-14 23:12:53');
INSERT INTO "ay_slide" VALUES (23, 'en', 2, '/static/upload/image/20230914/1694704380661299.jpg', '', '', '', 255, 'admin', 'admin', '2023-09-14 23:13:01', '2023-09-14 23:13:01');

-- ----------------------------
-- Table structure for ay_syslog
-- ----------------------------
DROP TABLE IF EXISTS "ay_syslog";
CREATE TABLE "ay_syslog" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "level" TEXT(20) NOT NULL,
  "event" TEXT(200) NOT NULL,
  "user_ip" TEXT(11) NOT NULL,
  "user_os" TEXT(30) NOT NULL,
  "user_bs" TEXT(30) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_syslog
-- ----------------------------
INSERT INTO "ay_syslog" VALUES (4760, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:35:29');
INSERT INTO "ay_syslog" VALUES (4761, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:37:22');
INSERT INTO "ay_syslog" VALUES (4762, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:41:36');
INSERT INTO "ay_syslog" VALUES (4763, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:41:39');
INSERT INTO "ay_syslog" VALUES (4764, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:43:06');
INSERT INTO "ay_syslog" VALUES (4765, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:43:21');
INSERT INTO "ay_syslog" VALUES (4766, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:45:00');
INSERT INTO "ay_syslog" VALUES (4767, 'info', '修改友情链接1成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:45:45');
INSERT INTO "ay_syslog" VALUES (4768, 'info', '修改友情链接2成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:45:55');
INSERT INTO "ay_syslog" VALUES (4769, 'info', '删除友情链接3成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:00');
INSERT INTO "ay_syslog" VALUES (4770, 'info', '删除友情链接4成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:03');
INSERT INTO "ay_syslog" VALUES (4771, 'info', '删除友情链接5成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:06');
INSERT INTO "ay_syslog" VALUES (4772, 'info', '删除友情链接6成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:09');
INSERT INTO "ay_syslog" VALUES (4773, 'info', '删除友情链接7成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:12');
INSERT INTO "ay_syslog" VALUES (4774, 'info', '删除友情链接8成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:46:14');
INSERT INTO "ay_syslog" VALUES (4775, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:59:30');
INSERT INTO "ay_syslog" VALUES (4776, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 10:59:51');
INSERT INTO "ay_syslog" VALUES (4777, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:02:05');
INSERT INTO "ay_syslog" VALUES (4778, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:02:38');
INSERT INTO "ay_syslog" VALUES (4779, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:02:51');
INSERT INTO "ay_syslog" VALUES (4780, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:06:35');
INSERT INTO "ay_syslog" VALUES (4781, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:16:06');
INSERT INTO "ay_syslog" VALUES (4782, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:16:51');
INSERT INTO "ay_syslog" VALUES (4783, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:16:54');
INSERT INTO "ay_syslog" VALUES (4784, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:17:08');
INSERT INTO "ay_syslog" VALUES (4785, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2022-05-17 11:17:12');
INSERT INTO "ay_syslog" VALUES (4786, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:52:25');
INSERT INTO "ay_syslog" VALUES (4787, 'info', '修改参数配置成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:52:48');
INSERT INTO "ay_syslog" VALUES (4788, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:53:08');
INSERT INTO "ay_syslog" VALUES (4789, 'info', '修改数据区域cn成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:53:36');
INSERT INTO "ay_syslog" VALUES (4790, 'info', '修改数据区域en成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:53:40');
INSERT INTO "ay_syslog" VALUES (4791, 'info', '修改数据区域cn成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:55:38');
INSERT INTO "ay_syslog" VALUES (4792, 'info', '修改数据区域cn成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:56:02');
INSERT INTO "ay_syslog" VALUES (4793, 'info', '修改参数配置成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 20:57:19');
INSERT INTO "ay_syslog" VALUES (4794, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:18:31');
INSERT INTO "ay_syslog" VALUES (4795, 'info', '修改公司信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:20:02');
INSERT INTO "ay_syslog" VALUES (4796, 'info', '修改公司信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:20:35');
INSERT INTO "ay_syslog" VALUES (4797, 'info', '修改公司信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:21:27');
INSERT INTO "ay_syslog" VALUES (4798, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:21:53');
INSERT INTO "ay_syslog" VALUES (4799, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:23:31');
INSERT INTO "ay_syslog" VALUES (4800, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:31:24');
INSERT INTO "ay_syslog" VALUES (4801, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:32:41');
INSERT INTO "ay_syslog" VALUES (4802, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:33:04');
INSERT INTO "ay_syslog" VALUES (4803, 'info', '修改数据区域en成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-12 21:33:16');
INSERT INTO "ay_syslog" VALUES (4804, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:04:13');
INSERT INTO "ay_syslog" VALUES (4805, 'info', '修改站点信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:04:48');
INSERT INTO "ay_syslog" VALUES (4806, 'info', '修改公司信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:05:34');
INSERT INTO "ay_syslog" VALUES (4807, 'info', '修改公司信息成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:07:27');
INSERT INTO "ay_syslog" VALUES (4808, 'info', '修改轮播图20成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:12:19');
INSERT INTO "ay_syslog" VALUES (4809, 'info', '修改轮播图21成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:12:27');
INSERT INTO "ay_syslog" VALUES (4810, 'info', '新增轮播图成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:12:53');
INSERT INTO "ay_syslog" VALUES (4811, 'info', '新增轮播图成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:13:01');
INSERT INTO "ay_syslog" VALUES (4812, 'info', '修改单页内容18成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-09-14 23:22:07');
INSERT INTO "ay_syslog" VALUES (4813, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-04 15:21:48');
INSERT INTO "ay_syslog" VALUES (4814, 'info', '复制内容成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-04 15:22:22');
INSERT INTO "ay_syslog" VALUES (4815, 'info', '修改文章3383成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-04 15:22:42');
INSERT INTO "ay_syslog" VALUES (4816, 'info', '清理缓存成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-04 15:23:05');
INSERT INTO "ay_syslog" VALUES (4817, 'info', '新增文章成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-04 15:35:11');
INSERT INTO "ay_syslog" VALUES (4818, 'info', '登录失败!', '2130706433', 'Windows 10', 'Chrome', '', '2023-10-09 13:45:31');
INSERT INTO "ay_syslog" VALUES (4819, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-09 13:45:38');
INSERT INTO "ay_syslog" VALUES (4820, 'info', '复制内容成功！', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-09 14:03:46');
INSERT INTO "ay_syslog" VALUES (4821, 'info', '登录成功!', '2130706433', 'Mac', 'Chrome', 'admin', '2023-10-09 15:35:14');
INSERT INTO "ay_syslog" VALUES (4822, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-09 21:26:34');
INSERT INTO "ay_syslog" VALUES (4823, 'info', '登录成功!', '2130706433', 'Windows 10', 'Chrome', 'admin', '2023-10-11 14:31:16');

-- ----------------------------
-- Table structure for ay_tags
-- ----------------------------
DROP TABLE IF EXISTS "ay_tags";
CREATE TABLE "ay_tags" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "acode" TEXT(20) NOT NULL,
  "name" TEXT(50) NOT NULL,
  "link" TEXT(200) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_tags
-- ----------------------------

-- ----------------------------
-- Table structure for ay_type
-- ----------------------------
DROP TABLE IF EXISTS "ay_type";
CREATE TABLE "ay_type" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "tcode" TEXT(20) NOT NULL,
  "name" TEXT(30) NOT NULL,
  "item" TEXT(30) NOT NULL,
  "value" TEXT(20) NOT NULL,
  "sorting" INTEGER(10) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_type
-- ----------------------------
INSERT INTO "ay_type" VALUES (1, 'T101', '菜单功能', '新增', 'add', 1, 'admin', 'admin', '2017-04-27 07:28:34', '2017-08-09 15:25:56');
INSERT INTO "ay_type" VALUES (2, 'T101', '菜单功能', '删除', 'del', 2, 'admin', 'admin', '2017-04-27 07:29:08', '2017-08-09 15:23:34');
INSERT INTO "ay_type" VALUES (3, 'T101', '菜单功能', '修改', 'mod', 3, 'admin', 'admin', '2017-04-27 07:29:34', '2017-08-09 15:23:32');
INSERT INTO "ay_type" VALUES (4, 'T101', '菜单功能', '导出', 'export', 4, 'admin', 'admin', '2017-04-27 07:30:42', '2017-08-09 15:23:29');
INSERT INTO "ay_type" VALUES (5, 'T101', '菜单功能', '导入', 'import', 5, 'admin', 'admin', '2017-04-27 07:31:38', '2017-08-09 15:23:27');

-- ----------------------------
-- Table structure for ay_user
-- ----------------------------
DROP TABLE IF EXISTS "ay_user";
CREATE TABLE "ay_user" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "ucode" TEXT(20) NOT NULL,
  "username" TEXT(30) NOT NULL,
  "realname" TEXT(30) NOT NULL,
  "password" TEXT(32) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "login_count" INTEGER(10) NOT NULL,
  "last_login_ip" TEXT(11) NOT NULL,
  "create_user" TEXT(30) NOT NULL,
  "update_user" TEXT(30) NOT NULL,
  "create_time" TEXT NOT NULL,
  "update_time" TEXT NOT NULL
);

-- ----------------------------
-- Records of ay_user
-- ----------------------------
INSERT INTO "ay_user" VALUES (1, '10001', 'admin', '欧方源码网', 'c3284d0f94606de1fd2af172aba15bf3', '1', 224, '2130706433', 'admin', 'admin', '2017-05-08 18:50:30', ' 2023-10-11 14:31:16');

-- ----------------------------
-- Table structure for ay_user_role
-- ----------------------------
DROP TABLE IF EXISTS "ay_user_role";
CREATE TABLE "ay_user_role" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "ucode" TEXT(20) NOT NULL,
  "rcode" TEXT(20) NOT NULL
);

-- ----------------------------
-- Records of ay_user_role
-- ----------------------------
INSERT INTO "ay_user_role" VALUES (1, '10001', 'R101');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('ay_area', 11);
INSERT INTO "sqlite_sequence" VALUES ('ay_company', 8);
INSERT INTO "sqlite_sequence" VALUES ('ay_config', 53);
INSERT INTO "sqlite_sequence" VALUES ('ay_content', 3385);
INSERT INTO "sqlite_sequence" VALUES ('ay_content_ext', 845);
INSERT INTO "sqlite_sequence" VALUES ('ay_content_sort', 184);
INSERT INTO "sqlite_sequence" VALUES ('ay_extfield', 12);
INSERT INTO "sqlite_sequence" VALUES ('ay_form', 6);
INSERT INTO "sqlite_sequence" VALUES ('ay_form_field', 18);
INSERT INTO "sqlite_sequence" VALUES ('ay_label', 9);
INSERT INTO "sqlite_sequence" VALUES ('ay_menu', 67);
INSERT INTO "sqlite_sequence" VALUES ('ay_menu_action', 78);
INSERT INTO "sqlite_sequence" VALUES ('ay_message', 57);
INSERT INTO "sqlite_sequence" VALUES ('ay_model', 5);
INSERT INTO "sqlite_sequence" VALUES ('ay_role', 2);
INSERT INTO "sqlite_sequence" VALUES ('ay_role_area', 4);
INSERT INTO "sqlite_sequence" VALUES ('ay_role_level', 137);
INSERT INTO "sqlite_sequence" VALUES ('ay_site', 9);
INSERT INTO "sqlite_sequence" VALUES ('ay_slide', 23);
INSERT INTO "sqlite_sequence" VALUES ('ay_type', 5);
INSERT INTO "sqlite_sequence" VALUES ('ay_user', 3);
INSERT INTO "sqlite_sequence" VALUES ('ay_user_role', 3);
INSERT INTO "sqlite_sequence" VALUES ('ay_syslog', 4823);
INSERT INTO "sqlite_sequence" VALUES ('ay_member_group', 3);
INSERT INTO "sqlite_sequence" VALUES ('ay_member_field', 3);
INSERT INTO "sqlite_sequence" VALUES ('ay_link', 8);

-- ----------------------------
-- Auto increment value for ay_area
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'ay_area';

-- ----------------------------
-- Indexes structure for table ay_area
-- ----------------------------
CREATE UNIQUE INDEX "ay_area_acode"
ON "ay_area" (
  "acode" ASC
);
CREATE INDEX "ay_area_pcode"
ON "ay_area" (
  "pcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_company
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 8 WHERE name = 'ay_company';

-- ----------------------------
-- Indexes structure for table ay_company
-- ----------------------------
CREATE INDEX "ay_company_acode"
ON "ay_company" (
  "acode" ASC
);

-- ----------------------------
-- Auto increment value for ay_config
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 53 WHERE name = 'ay_config';

-- ----------------------------
-- Auto increment value for ay_content
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3385 WHERE name = 'ay_content';

-- ----------------------------
-- Indexes structure for table ay_content
-- ----------------------------
CREATE INDEX "ay_content_acode"
ON "ay_content" (
  "acode" ASC
);
CREATE INDEX "ay_content_scode"
ON "ay_content" (
  "scode" ASC
);
CREATE INDEX "ay_content_subscode"
ON "ay_content" (
  "subscode" ASC
);

-- ----------------------------
-- Auto increment value for ay_content_ext
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 845 WHERE name = 'ay_content_ext';

-- ----------------------------
-- Indexes structure for table ay_content_ext
-- ----------------------------
CREATE INDEX "ay_content_ext_contentid"
ON "ay_content_ext" (
  "contentid" ASC
);

-- ----------------------------
-- Auto increment value for ay_content_sort
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 184 WHERE name = 'ay_content_sort';

-- ----------------------------
-- Indexes structure for table ay_content_sort
-- ----------------------------
CREATE INDEX "ay_content_sort_acode"
ON "ay_content_sort" (
  "acode" ASC
);
CREATE INDEX "ay_content_sort_mcode"
ON "ay_content_sort" (
  "mcode" ASC
);
CREATE INDEX "ay_content_sort_pcode"
ON "ay_content_sort" (
  "pcode" ASC
);
CREATE UNIQUE INDEX "ay_content_sort_scode"
ON "ay_content_sort" (
  "scode" ASC
);

-- ----------------------------
-- Auto increment value for ay_extfield
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 12 WHERE name = 'ay_extfield';

-- ----------------------------
-- Indexes structure for table ay_extfield
-- ----------------------------
CREATE INDEX "ay_extfield_mcode"
ON "ay_extfield" (
  "mcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_form
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 6 WHERE name = 'ay_form';

-- ----------------------------
-- Indexes structure for table ay_form
-- ----------------------------
CREATE UNIQUE INDEX "ay_form_fcode"
ON "ay_form" (
  "fcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_form_field
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 18 WHERE name = 'ay_form_field';

-- ----------------------------
-- Indexes structure for table ay_form_field
-- ----------------------------
CREATE INDEX "ay_form_field_fcode"
ON "ay_form_field" (
  "fcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_label
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 9 WHERE name = 'ay_label';

-- ----------------------------
-- Auto increment value for ay_link
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 8 WHERE name = 'ay_link';

-- ----------------------------
-- Indexes structure for table ay_link
-- ----------------------------
CREATE INDEX "ay_link_acode"
ON "ay_link" (
  "acode" ASC
);
CREATE INDEX "ay_link_gid"
ON "ay_link" (
  "gid" ASC
);
CREATE INDEX "ay_link_sorting"
ON "ay_link" (
  "sorting" ASC
);

-- ----------------------------
-- Indexes structure for table ay_member
-- ----------------------------
CREATE INDEX "ay_member_gid"
ON "ay_member" (
  "gid" ASC
);
CREATE INDEX "ay_member_qqid"
ON "ay_member" (
  "qqid" ASC
);
CREATE UNIQUE INDEX "ay_member_ucode"
ON "ay_member" (
  "ucode" ASC
);
CREATE INDEX "ay_member_useremail"
ON "ay_member" (
  "useremail" ASC
);
CREATE INDEX "ay_member_usermobile"
ON "ay_member" (
  "usermobile" ASC
);
CREATE UNIQUE INDEX "ay_member_username"
ON "ay_member" (
  "username" ASC
);
CREATE INDEX "ay_member_wbid"
ON "ay_member" (
  "wbid" ASC
);
CREATE INDEX "ay_member_wxid"
ON "ay_member" (
  "wxid" ASC
);

-- ----------------------------
-- Indexes structure for table ay_member_comment
-- ----------------------------
CREATE INDEX "ay_member_comment_contentid"
ON "ay_member_comment" (
  "contentid" ASC
);
CREATE INDEX "ay_member_comment_pid"
ON "ay_member_comment" (
  "pid" ASC
);
CREATE INDEX "ay_member_comment_puid"
ON "ay_member_comment" (
  "puid" ASC
);
CREATE INDEX "ay_member_comment_uid"
ON "ay_member_comment" (
  "uid" ASC
);

-- ----------------------------
-- Auto increment value for ay_member_field
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'ay_member_field';

-- ----------------------------
-- Auto increment value for ay_member_group
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'ay_member_group';

-- ----------------------------
-- Indexes structure for table ay_member_group
-- ----------------------------
CREATE UNIQUE INDEX "ay_member_group_gcode"
ON "ay_member_group" (
  "gcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_menu
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 67 WHERE name = 'ay_menu';

-- ----------------------------
-- Indexes structure for table ay_menu
-- ----------------------------
CREATE UNIQUE INDEX "ay_menu_mcode"
ON "ay_menu" (
  "mcode" ASC
);
CREATE INDEX "ay_menu_pcode"
ON "ay_menu" (
  "pcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_menu_action
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 78 WHERE name = 'ay_menu_action';

-- ----------------------------
-- Indexes structure for table ay_menu_action
-- ----------------------------
CREATE INDEX "ay_menu_action_mcode"
ON "ay_menu_action" (
  "mcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_message
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 57 WHERE name = 'ay_message';

-- ----------------------------
-- Indexes structure for table ay_message
-- ----------------------------
CREATE INDEX "ay_message_acode"
ON "ay_message" (
  "acode" ASC
);

-- ----------------------------
-- Auto increment value for ay_model
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'ay_model';

-- ----------------------------
-- Indexes structure for table ay_model
-- ----------------------------
CREATE UNIQUE INDEX "ay_model_mcode"
ON "ay_model" (
  "mcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_role
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'ay_role';

-- ----------------------------
-- Indexes structure for table ay_role
-- ----------------------------
CREATE UNIQUE INDEX "ay_role_rcode"
ON "ay_role" (
  "rcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_role_area
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'ay_role_area';

-- ----------------------------
-- Indexes structure for table ay_role_area
-- ----------------------------
CREATE INDEX "ay_role_area_acode"
ON "ay_role_area" (
  "acode" ASC
);
CREATE INDEX "ay_role_area_rcode"
ON "ay_role_area" (
  "rcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_role_level
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 137 WHERE name = 'ay_role_level';

-- ----------------------------
-- Indexes structure for table ay_role_level
-- ----------------------------
CREATE INDEX "ay_role_level_rcode"
ON "ay_role_level" (
  "rcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_site
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 9 WHERE name = 'ay_site';

-- ----------------------------
-- Indexes structure for table ay_site
-- ----------------------------
CREATE INDEX "ay_site_acode"
ON "ay_site" (
  "acode" ASC
);

-- ----------------------------
-- Auto increment value for ay_slide
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 23 WHERE name = 'ay_slide';

-- ----------------------------
-- Indexes structure for table ay_slide
-- ----------------------------
CREATE INDEX "ay_slide_acode"
ON "ay_slide" (
  "acode" ASC
);
CREATE INDEX "ay_slide_gid"
ON "ay_slide" (
  "gid" ASC
);

-- ----------------------------
-- Auto increment value for ay_syslog
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4823 WHERE name = 'ay_syslog';

-- ----------------------------
-- Indexes structure for table ay_tags
-- ----------------------------
CREATE INDEX "ay_tags_acode"
ON "ay_tags" (
  "acode" ASC
);

-- ----------------------------
-- Auto increment value for ay_type
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'ay_type';

-- ----------------------------
-- Indexes structure for table ay_type
-- ----------------------------
CREATE INDEX "ay_type_tcode"
ON "ay_type" (
  "tcode" ASC
);

-- ----------------------------
-- Auto increment value for ay_user
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'ay_user';

-- ----------------------------
-- Indexes structure for table ay_user
-- ----------------------------
CREATE UNIQUE INDEX "ay_user_ucode"
ON "ay_user" (
  "ucode" ASC
);
CREATE INDEX "ay_user_username"
ON "ay_user" (
  "username" ASC
);

-- ----------------------------
-- Auto increment value for ay_user_role
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'ay_user_role';

-- ----------------------------
-- Indexes structure for table ay_user_role
-- ----------------------------
CREATE INDEX "ay_user_role_rcode"
ON "ay_user_role" (
  "rcode" ASC
);
CREATE INDEX "ay_user_role_ucode"
ON "ay_user_role" (
  "ucode" ASC
);

PRAGMA foreign_keys = true;
