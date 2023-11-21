-- `one-blog`.blog_article definition

CREATE TABLE `blog_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) DEFAULT NULL COMMENT '文章标题 不能为空',
  `author_id` int DEFAULT '1' COMMENT '文章作者 不能为空',
  `category_id` int DEFAULT NULL COMMENT '分类id 不能为空',
  `article_content` text COMMENT '文章内容',
  `article_cover` varchar(1234) DEFAULT '	https://mrzym.gitee.io/blogimg/html/rabbit.png' COMMENT '文章缩略图',
  `is_top` int DEFAULT '2' COMMENT '是否置顶 1 置顶 2 取消置顶',
  `status` int DEFAULT '1' COMMENT '文章状态  1 公开 2 私密 3 草稿箱',
  `type` int DEFAULT '1' COMMENT '文章类型 1 原创 2 转载 3 翻译',
  `origin_url` varchar(255) DEFAULT NULL COMMENT '原文链接 是转载或翻译的情况下提供',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `view_times` int DEFAULT '0' COMMENT '文章访问次数',
  `article_description` varchar(255) DEFAULT NULL COMMENT '描述信息 不能为空',
  `thumbs_up_times` int DEFAULT '0' COMMENT '文章点赞次数',
  `reading_duration` double DEFAULT '0' COMMENT '文章阅读时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_article_tag definition

CREATE TABLE `blog_article_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int DEFAULT NULL COMMENT '文章id',
  `tag_id` int DEFAULT NULL COMMENT '标签id',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_category definition

CREATE TABLE `blog_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(55) DEFAULT NULL COMMENT '分类名称 唯一',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `category_name` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_2` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_3` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_4` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_5` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_6` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_7` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_8` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_9` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_10` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_11` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_12` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_13` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_14` (`category_name`) USING BTREE,
  UNIQUE KEY `category_name_15` (`category_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_comment definition

CREATE TABLE `blog_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL COMMENT '评论父级id',
  `for_id` int DEFAULT NULL COMMENT '评论的对象id 比如说说id、文章id等',
  `type` int DEFAULT NULL COMMENT '评论类型 1 文章 2 说说 3 留言 ...',
  `from_id` int DEFAULT NULL COMMENT '评论人id',
  `from_name` varchar(255) DEFAULT NULL COMMENT '评论人昵称',
  `from_avatar` varchar(555) DEFAULT NULL COMMENT '评论人头像',
  `to_id` int DEFAULT NULL COMMENT '被回复的人id',
  `to_name` varchar(255) DEFAULT NULL COMMENT '被回复人的昵称',
  `to_avatar` varchar(555) DEFAULT NULL COMMENT '被回复人的头像',
  `content` varchar(555) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `thumbs_up` int DEFAULT '0' COMMENT '评论点赞数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4;


-- `one-blog`.blog_config definition

CREATE TABLE `blog_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_name` varchar(55) DEFAULT '小张的博客' COMMENT '博客名称',
  `blog_avatar` varchar(255) DEFAULT 'https://mrzym.gitee.io/blogimg/html/rabbit.png' COMMENT '博客头像',
  `avatar_bg` varchar(255) DEFAULT NULL COMMENT '博客头像背景图',
  `personal_say` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `blog_notice` varchar(255) DEFAULT NULL COMMENT '博客公告',
  `qq_link` varchar(255) DEFAULT NULL COMMENT 'qq链接',
  `we_chat_link` varchar(255) DEFAULT NULL COMMENT '微信链接',
  `github_link` varchar(255) DEFAULT NULL COMMENT 'github链接',
  `git_ee_link` varchar(255) DEFAULT NULL COMMENT 'git_ee链接',
  `bilibili_link` varchar(255) DEFAULT NULL COMMENT 'bilibili链接',
  `view_time` bigint DEFAULT '0' COMMENT '博客被访问的次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `we_chat_group` varchar(255) DEFAULT NULL COMMENT '微信群图片',
  `qq_group` varchar(255) DEFAULT NULL COMMENT 'qq群图片',
  `we_chat_pay` varchar(255) DEFAULT NULL COMMENT '微信收款码',
  `ali_pay` varchar(255) DEFAULT NULL COMMENT '支付宝收款码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_header definition

CREATE TABLE `blog_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bg_url` varchar(255) DEFAULT NULL COMMENT '背景图',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `route_name` varchar(555) DEFAULT NULL COMMENT '路由名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- DBeaver tool

-- `one-blog`.blog_like definition

CREATE TABLE `blog_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int DEFAULT NULL COMMENT '点赞类型 1 文章 2 说说 3 留言 4 评论',
  `for_id` int DEFAULT NULL COMMENT '点赞的id 文章id 说说id 留言id',
  `user_id` int DEFAULT NULL COMMENT '点赞用户id',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4;


-- `one-blog`.blog_links definition

CREATE TABLE `blog_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(55) DEFAULT NULL COMMENT '网站名称',
  `site_desc` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `site_avatar` varchar(555) DEFAULT NULL COMMENT '网站头像',
  `url` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `status` int DEFAULT NULL COMMENT '友链状态 1 待审核 2 审核通过',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;


-- `one-blog`.blog_message definition

CREATE TABLE `blog_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `message` varchar(555) DEFAULT NULL COMMENT '留言内容',
  `color` varchar(255) DEFAULT '#676767' COMMENT '字体颜色',
  `font_size` int DEFAULT '12' COMMENT '字体大小',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '背景颜色',
  `bg_url` varchar(255) DEFAULT NULL COMMENT '背景图片',
  `user_id` int DEFAULT NULL COMMENT '留言用户的id',
  `like_times` int DEFAULT '0' COMMENT '点赞次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `font_weight` int DEFAULT '500' COMMENT '字体宽度',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '游客用户的昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;


-- `one-blog`.blog_notify definition

CREATE TABLE `blog_notify` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(555) DEFAULT NULL COMMENT '通知内容',
  `user_id` int DEFAULT NULL COMMENT '通知给谁',
  `type` int DEFAULT NULL COMMENT '通知类型 1 文章 2 说说 3 留言 4 友链',
  `to_id` int DEFAULT NULL COMMENT '说说或者是文章的id 用于跳转',
  `isView` int DEFAULT '1' COMMENT '是否被查看 1 没有 2 已经查看',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4;


-- `one-blog`.blog_photo definition

CREATE TABLE `blog_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_id` int DEFAULT NULL COMMENT '相册 id 属于哪个相册',
  `url` varchar(555) DEFAULT NULL COMMENT '图片地址',
  `status` int DEFAULT '1' COMMENT '状态 1 正常 2 回收站',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_photo_album definition

CREATE TABLE `blog_photo_album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `album_name` varchar(26) DEFAULT NULL COMMENT '相册名称',
  `description` varchar(55) DEFAULT NULL COMMENT '相册描述信息',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `album_cover` varchar(555) DEFAULT NULL COMMENT '相册封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_recommend definition

CREATE TABLE `blog_recommend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL COMMENT '推荐网站标题',
  `link` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_tag definition

CREATE TABLE `blog_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(55) DEFAULT NULL COMMENT '标签名称 唯一',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `tag_name` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_2` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_3` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_4` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_5` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_6` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_7` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_8` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_9` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_10` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_11` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_12` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_13` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_14` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_15` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_16` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_17` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_18` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_19` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_20` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_21` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_22` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_23` (`tag_name`) USING BTREE,
  UNIQUE KEY `tag_name_24` (`tag_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_talk definition

CREATE TABLE `blog_talk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '发布说说的用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '说说内容',
  `status` int DEFAULT '1' COMMENT '说说状态 1 公开 2 私密 3 回收站',
  `is_top` int DEFAULT '2' COMMENT '是否置顶 1 置顶 2 不置顶',
  `like_times` int DEFAULT '0' COMMENT '点赞次数',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_talk_photo definition

CREATE TABLE `blog_talk_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `talk_id` int DEFAULT NULL COMMENT '说说的id',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- `one-blog`.blog_user definition

CREATE TABLE `blog_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '账号，唯一',
  `password` char(64) NOT NULL COMMENT '密码',
  `role` int NOT NULL DEFAULT '2' COMMENT '用户角色 1 管理员 2 普通用户',
  `nick_name` varchar(255) DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(255) DEFAULT '' COMMENT '用户头像',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `qq` varchar(255) DEFAULT '' COMMENT '用户QQ 用于联系',
  `ip` varchar(255) DEFAULT '' COMMENT 'ip属地',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `username_2` (`username`) USING BTREE,
  UNIQUE KEY `username_3` (`username`) USING BTREE,
  UNIQUE KEY `username_4` (`username`) USING BTREE,
  UNIQUE KEY `username_5` (`username`) USING BTREE,
  UNIQUE KEY `username_6` (`username`) USING BTREE,
  UNIQUE KEY `username_7` (`username`) USING BTREE,
  UNIQUE KEY `username_8` (`username`) USING BTREE,
  UNIQUE KEY `username_9` (`username`) USING BTREE,
  UNIQUE KEY `username_10` (`username`) USING BTREE,
  UNIQUE KEY `username_11` (`username`) USING BTREE,
  UNIQUE KEY `username_12` (`username`) USING BTREE,
  UNIQUE KEY `username_13` (`username`) USING BTREE,
  UNIQUE KEY `username_14` (`username`) USING BTREE,
  UNIQUE KEY `username_15` (`username`) USING BTREE,
  UNIQUE KEY `username_16` (`username`) USING BTREE,
  UNIQUE KEY `username_17` (`username`) USING BTREE,
  UNIQUE KEY `username_18` (`username`) USING BTREE,
  UNIQUE KEY `username_19` (`username`) USING BTREE,
  UNIQUE KEY `username_20` (`username`) USING BTREE,
  UNIQUE KEY `username_21` (`username`) USING BTREE,
  UNIQUE KEY `username_22` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;



INSERT INTO `one-blog`.blog_article (article_title,author_id,category_id,article_content,article_cover,is_top,status,`type`,origin_url,createdAt,updatedAt,view_times,article_description,thumbs_up_times,reading_duration) VALUES
	 ('java牛逼',162,4,'**java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼java牛逼**','http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa02',2,1,1,NULL,'2023-11-21 10:25:35','2023-11-21 10:37:42',6,'java牛逼',1,108388.0),
	 ('kotlin牛逼',162,5,'**kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼kotlin牛逼**','http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa01',2,1,1,NULL,'2023-11-21 10:29:43','2023-11-21 10:35:56',3,'kotlin牛逼',1,52415.0);
INSERT INTO `one-blog`.blog_article_tag (article_id,tag_id,createdAt,updatedAt) VALUES
	 (13,16,'2023-11-21 10:29:43','2023-11-21 10:29:43'),
	 (12,15,'2023-11-21 10:30:02','2023-11-21 10:30:02');
INSERT INTO `one-blog`.blog_category (category_name,createdAt,updatedAt) VALUES
	 ('java','2023-11-21 10:23:41','2023-11-21 10:23:41'),
	 ('kotlin','2023-11-21 10:27:14','2023-11-21 10:27:14');
INSERT INTO `one-blog`.blog_comment (parent_id,for_id,`type`,from_id,from_name,from_avatar,to_id,to_name,to_avatar,content,thumbs_up,createdAt,updatedAt,ip) VALUES
	 (NULL,13,1,163,'gogo tone','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp',NULL,NULL,NULL,'厉害啊',0,'2023-11-21 10:35:14','2023-11-21 10:35:14','127.0.0.1'),
	 (NULL,12,1,163,'gogo tone','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp',NULL,NULL,NULL,'厉害啊',0,'2023-11-21 10:36:32','2023-11-21 10:36:32','127.0.0.1');
INSERT INTO `one-blog`.blog_like (`type`,for_id,user_id,createdAt,updatedAt) VALUES
	 (1,13,163,'2023-11-21 10:35:55','2023-11-21 10:35:55'),
	 (1,12,163,'2023-11-21 10:35:59','2023-11-21 10:35:59');
INSERT INTO `one-blog`.blog_notify (message,user_id,`type`,to_id,isView,createdAt,updatedAt) VALUES
	 ('您的文章收到了来自于：gogo tone 的评论: 厉害啊！',162,1,13,1,'2023-11-21 10:35:14','2023-11-21 10:35:14'),
	 ('您的文章收到了来自于：gogo tone 的评论: 厉害啊！',162,1,12,1,'2023-11-21 10:36:32','2023-11-21 10:36:32');
INSERT INTO `one-blog`.blog_photo (album_id,url,status,createdAt,updatedAt) VALUES
	 (11,'http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa06',1,'2023-11-21 10:46:24','2023-11-21 10:46:24'),
	 (11,'http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa07',1,'2023-11-21 10:46:24','2023-11-21 10:46:24');
INSERT INTO `one-blog`.blog_photo_album (album_name,description,createdAt,updatedAt,album_cover) VALUES
	 ('技术','技术相关','2023-11-21 10:43:37','2023-11-21 10:47:19','http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa08');
INSERT INTO `one-blog`.blog_tag (tag_name,createdAt,updatedAt) VALUES
	 ('java','2023-11-21 10:23:50','2023-11-21 10:23:50'),
	 ('kotlin','2023-11-21 10:27:06','2023-11-21 10:27:06');
INSERT INTO `one-blog`.blog_talk (user_id,content,status,is_top,like_times,createdAt,updatedAt) VALUES
	 (162,'我不生气，毕竟我不是付款的一方。',1,1,0,'2023-11-21 10:43:02','2023-11-21 10:43:02');
INSERT INTO `one-blog`.blog_talk_photo (talk_id,url,createdAt,updatedAt) VALUES
	 (33,'http://127.0.0.1:8888/online/95cc3bee3356565852fa0fa03','2023-11-21 10:43:02','2023-11-21 10:43:02');
INSERT INTO `one-blog`.blog_user (username,password,`role`,nick_name,avatar,createdAt,updatedAt,qq,ip) VALUES
	 ('redbrick','$2a$10$p1rm/cKUIawyDP1D8HlqCOD1w//n9njRuhh/v8/z54BO9vvEWUpHK',1,'超级管理员','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp','2023-11-21 10:04:42','2023-11-21 10:23:19','','127.0.0.1'),
	 ('gogotone','$2a$10$VUEXj4L/Rw7QEBQ7.LVTRumtsnq6O.nORMR.4CdrCZNnJxh48VGv6',2,'gogo tone','http://mrzym.top/online/9bb507f4bd065759a3d093d04.webp','2023-11-21 10:35:01','2023-11-21 10:35:01','','127.0.0.1');
