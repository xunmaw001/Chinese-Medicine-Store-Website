DROP DATABASE IF EXISTS ssmud300;

CREATE DATABASE ssmud300 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmud300;

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`huiyuanhao` varchar(200)  UNIQUE   COMMENT '会员号',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	`jifen` int   default '0' COMMENT '积分',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

INSERT INTO huiyuan(huiyuanhao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,jifen,money) VALUES('会员1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian1.jpg',1,1);
INSERT INTO huiyuan(huiyuanhao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,jifen,money) VALUES('会员2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian2.jpg',2,2);
INSERT INTO huiyuan(huiyuanhao,mima,xingming,xingbie,lianxidianhua,dianziyouxiang,shenfenzhenghao,gerenzhaopian,jifen,money) VALUES('会员3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmud300/upload/huiyuan_gerenzhaopian3.jpg',3,3);

DROP TABLE IF EXISTS `yaocaifenlei`;

CREATE TABLE `yaocaifenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaocaileixing` varchar(200)    COMMENT '药材类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药材分类';

INSERT INTO yaocaifenlei(yaocaileixing) VALUES('药材类型1');
INSERT INTO yaocaifenlei(yaocaileixing) VALUES('药材类型2');
INSERT INTO yaocaifenlei(yaocaileixing) VALUES('药材类型3');

DROP TABLE IF EXISTS `yaocaixinxi`;

CREATE TABLE `yaocaixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaocaibianhao` varchar(200)  UNIQUE   COMMENT '药材编号',
	`yaocaimingcheng` varchar(200)    COMMENT '药材名称',
	`yaocaileixing` varchar(200)    COMMENT '药材类型',
	`yaocaikucun` int    COMMENT '药材库存',
	`yaocaitupian` varchar(200)    COMMENT '药材图片',
	`yaocaijieshao` longtext    COMMENT '药材介绍',
	`yaocaixiangqing` longtext    COMMENT '药材详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`jifen` int   default '-1' COMMENT '积分',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药材信息';

INSERT INTO yaocaixinxi(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,yaocaitupian,yaocaijieshao,yaocaixiangqing,thumbsupnum,crazilynum,jifen,price) VALUES('药材编号1','药材名称1','药材类型1',1,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian1.jpg','药材介绍1','药材详情1',1,1,1,1);
INSERT INTO yaocaixinxi(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,yaocaitupian,yaocaijieshao,yaocaixiangqing,thumbsupnum,crazilynum,jifen,price) VALUES('药材编号2','药材名称2','药材类型2',2,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian2.jpg','药材介绍2','药材详情2',2,2,2,2);
INSERT INTO yaocaixinxi(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,yaocaitupian,yaocaijieshao,yaocaixiangqing,thumbsupnum,crazilynum,jifen,price) VALUES('药材编号3','药材名称3','药材类型3',3,'http://localhost:8080/ssmud300/upload/yaocaixinxi_yaocaitupian3.jpg','药材介绍3','药材详情3',3,3,3,3);

DROP TABLE IF EXISTS `baojianyaofang`;

CREATE TABLE `baojianyaofang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaofangbiaoti` varchar(200)    COMMENT '药方标题',
	`shiyongrenqun` varchar(200)    COMMENT '适用人群',
	`shiyongjijie` varchar(200)    COMMENT '适用季节',
	`yongliangyongfa` varchar(200)    COMMENT '用量用法',
	`yaocaijishuliang` longtext    COMMENT '药材及数量',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`yaofanggongxiao` longtext    COMMENT '药方功效',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保健药方';

INSERT INTO baojianyaofang(yaofangbiaoti,shiyongrenqun,shiyongjijie,yongliangyongfa,yaocaijishuliang,fengmiantupian,yaofanggongxiao,thumbsupnum,crazilynum) VALUES('药方标题1','儿童','春季','用量用法1','药材及数量1','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian1.jpg','药方功效1',1,1);
INSERT INTO baojianyaofang(yaofangbiaoti,shiyongrenqun,shiyongjijie,yongliangyongfa,yaocaijishuliang,fengmiantupian,yaofanggongxiao,thumbsupnum,crazilynum) VALUES('药方标题2','儿童','春季','用量用法2','药材及数量2','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian2.jpg','药方功效2',2,2);
INSERT INTO baojianyaofang(yaofangbiaoti,shiyongrenqun,shiyongjijie,yongliangyongfa,yaocaijishuliang,fengmiantupian,yaofanggongxiao,thumbsupnum,crazilynum) VALUES('药方标题3','儿童','春季','用量用法3','药材及数量3','http://localhost:8080/ssmud300/upload/baojianyaofang_fengmiantupian3.jpg','药方功效3',3,3);

DROP TABLE IF EXISTS `songlitaocan`;

CREATE TABLE `songlitaocan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`mingcheng` varchar(200)    COMMENT '名称',
	`leixing` varchar(200)    COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`jieshao` longtext    COMMENT '介绍',
	`xiangqing` longtext    COMMENT '详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送礼套餐';

INSERT INTO songlitaocan(mingcheng,leixing,tupian,jieshao,xiangqing,thumbsupnum,crazilynum,price) VALUES('名称1','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian1.jpg','介绍1','详情1',1,1,1);
INSERT INTO songlitaocan(mingcheng,leixing,tupian,jieshao,xiangqing,thumbsupnum,crazilynum,price) VALUES('名称2','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian2.jpg','介绍2','详情2',2,2,2);
INSERT INTO songlitaocan(mingcheng,leixing,tupian,jieshao,xiangqing,thumbsupnum,crazilynum,price) VALUES('名称3','送礼推荐','http://localhost:8080/ssmud300/upload/songlitaocan_tupian3.jpg','介绍3','详情3',3,3,3);

DROP TABLE IF EXISTS `rukujilu`;

CREATE TABLE `rukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaocaibianhao` varchar(200)    COMMENT '药材编号',
	`yaocaimingcheng` varchar(200)    COMMENT '药材名称',
	`yaocaileixing` varchar(200)    COMMENT '药材类型',
	`yaocaikucun` int    COMMENT '药材库存',
	`rukushijian` datetime    COMMENT '入库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库记录';

INSERT INTO rukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,rukushijian) VALUES('药材编号1','药材名称1','药材类型1',1,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,rukushijian) VALUES('药材编号2','药材名称2','药材类型2',2,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,rukushijian) VALUES('药材编号3','药材名称3','药材类型3',3,CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `chukujilu`;

CREATE TABLE `chukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yaocaibianhao` varchar(200)    COMMENT '药材编号',
	`yaocaimingcheng` varchar(200)    COMMENT '药材名称',
	`yaocaileixing` varchar(200)    COMMENT '药材类型',
	`yaocaikucun` int    COMMENT '药材库存',
	`chukushijian` datetime    COMMENT '出库时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出库记录';

INSERT INTO chukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,chukushijian) VALUES('药材编号1','药材名称1','药材类型1',1,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,chukushijian) VALUES('药材编号2','药材名称2','药材类型2',2,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(yaocaibianhao,yaocaimingcheng,yaocaileixing,yaocaikucun,chukushijian) VALUES('药材编号3','药材名称3','药材类型3',3,CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'songlitaocan' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','http://localhost:8080/ssmud300/upload/cart_picture1.jpg',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','http://localhost:8080/ssmud300/upload/cart_picture2.jpg',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','http://localhost:8080/ssmud300/upload/cart_picture3.jpg',3,3,3);

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单编号',
	`tablename` varchar(200)   default 'songlitaocan' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int   default '1' COMMENT '支付类型',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssmud300/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssmud300/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssmud300/upload/storeup_picture3.jpg');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健康资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmud300/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmud300/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmud300/upload/news_picture3.jpg','内容3');

DROP TABLE IF EXISTS `discussyaocaixinxi`;

CREATE TABLE `discussyaocaixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药材信息评论表';

INSERT INTO discussyaocaixinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyaocaixinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyaocaixinxi(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussbaojianyaofang`;

CREATE TABLE `discussbaojianyaofang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保健药方评论表';

INSERT INTO discussbaojianyaofang(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussbaojianyaofang(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussbaojianyaofang(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discusssonglitaocan`;

CREATE TABLE `discusssonglitaocan` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送礼套餐评论表';

INSERT INTO discusssonglitaocan(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discusssonglitaocan(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discusssonglitaocan(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmud300/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmud300/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmud300/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmud300/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmud300/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

