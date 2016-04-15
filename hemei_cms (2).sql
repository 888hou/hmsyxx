-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 �?04 �?06 �?21:44
-- 服务器版本: 5.5.47
-- PHP 版本: 5.5.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `hemei_cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `hemei_category`
--

CREATE TABLE IF NOT EXISTS `hemei_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '//栏目标题',
  `title` varchar(100) NOT NULL COMMENT '//栏目简介',
  `type` int(11) NOT NULL COMMENT '//类别 0栏目 1链接 2图片栏目 3图片页面',
  `uri` varchar(100) NOT NULL COMMENT '//链接',
  `status` int(11) NOT NULL COMMENT '//状态 0停用 1显示 2隐藏',
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//类目表' AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `hemei_category`
--

INSERT INTO `hemei_category` (`id`, `nid`, `pid`, `name`, `title`, `type`, `uri`, `status`, `oid`) VALUES
(1, 8, 0, '通知公告', '通知公告', 0, '#', 1, 0),
(2, 8, 0, '学校概况', '学校概况', 0, '#', 1, 1),
(3, 8, 0, '新闻报道', '新闻报道', 0, '#', 1, 2),
(4, 8, 0, '媒体报道', '媒体报道', 0, '#', 1, 3),
(5, 8, 0, '联系我们', '联系我们', 1, 'http://www.baidu.com', 1, 4),
(6, 1, 0, '和美阳光校园', '和美阳光校园', 0, '#', 1, 0),
(7, 1, 0, '和美环保校园', '和美环保校园', 0, '#', 1, 1),
(8, 1, 0, '和美科技校园', '和美科技校园', 0, '#', 1, 2),
(9, 2, 0, '和美德育', '和美德育', 0, '#', 1, 0),
(10, 2, 0, '社会实践', '社会实践', 0, '#', 1, 1),
(11, 2, 0, '全纳教育', '全纳教育', 0, '#', 1, 2),
(12, 3, 0, '基础课程', '基础课程', 0, '#', 1, 0),
(13, 3, 0, '拓展课程', '拓展课程', 0, '#', 1, 1),
(14, 3, 0, '绽放课程', '绽放课程', 0, '#', 1, 2),
(15, 3, 0, '可爱作业', '可爱作业', 0, '#', 1, 3),
(16, 4, 0, '奖牌榜', '奖牌榜', 0, '#', 1, 0),
(17, 4, 0, '社团新闻', '社团新闻', 0, '#', 1, 1),
(18, 4, 0, '社团风采', '社团风采', 0, '#', 1, 2),
(19, 5, 0, '和美的节日', '和美的节日', 0, '#', 1, 0),
(20, 5, 0, '元旦联欢', '元旦联欢', 0, '#', 1, 1),
(21, 5, 0, '教师节', '教师节', 0, '#', 1, 1),
(22, 5, 0, '趣味运动会', '趣味运动会', 0, '#', 1, 2),
(23, 6, 0, '学生成长手册', '学生成长手册', 0, '#', 1, 0),
(24, 6, 0, '和美GOOD币', '和美GOOD币', 0, '#', 1, 1),
(25, 6, 0, '和美获奖证章', '和美获奖证章', 0, '#', 1, 2),
(26, 6, 0, '和美期末测评', '和美期末测评', 0, '#', 1, 2),
(27, 7, 0, '和美领导团队', '和美领导团队', 0, '#', 1, 0),
(28, 7, 0, '和美最美教师', '和美最美教师', 0, '#', 1, 0),
(29, 7, 0, '和美支教团', '和美支教团', 0, '#', 1, 0),
(30, 7, 0, '和美名师堂', '和美名师堂', 0, '#', 1, 0),
(31, 7, 0, '教育故事', '教育故事', 0, '#', 1, 0),
(32, 7, 0, '教师随笔', '教师随笔', 0, '#', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hemei_links`
--

CREATE TABLE IF NOT EXISTS `hemei_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  `oid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//友情链接表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `hemei_links`
--

INSERT INTO `hemei_links` (`id`, `name`, `title`, `img`, `uri`, `oid`, `status`) VALUES
(1, '港城教育网', '秦皇岛市港城教育网', '', 'http://www.gcedu.net.cn/', 0, 1),
(2, '中华人民共和国教育部', '中华人民共和国教育部网站', '', 'http://www.moe.gov.cn/', 0, 1),
(3, '河北省教育厅', '河北省教育厅网站', '', 'http://hee.cn/', 1, 1),
(4, '秦皇岛市教育局', '秦皇岛市教育局网站', '', 'http://www.qhdedu.cn/', 3, 1),
(5, '秦皇岛市教师教育网', '秦皇岛市教师教育网', '', 'http://qhd.hbte.com.cn/', 4, 1),
(6, '秦皇岛电教馆', '秦皇岛市电化教育管', '', 'http://www.qhddj.cn/', 5, 1),
(7, '河北省电教馆', '河北省电化电教馆', '', 'http://www.hebeijiaoyu.com/', 6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hemei_nav`
--

CREATE TABLE IF NOT EXISTS `hemei_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `uri` varchar(200) NOT NULL COMMENT '//图片展示链接',
  `class` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//主导航表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `hemei_nav`
--

INSERT INTO `hemei_nav` (`id`, `name`, `title`, `image`, `uri`, `class`, `type`, `status`, `oid`) VALUES
(1, '和美环境', '和美环境', '/Public/images/ztest.jpg', '#1', '1', 1, 1, 0),
(2, '和美德育', '和美德育', '/Public/images/ztest.jpg', '#2', '2', 1, 1, 1),
(3, '和美课程', '和美课程', '/Public/images/ztest.jpg', '#3', '3', 1, 1, 2),
(4, '和美社团', '和美社团', '/Public/images/ztest.jpg', '#4', '4', 1, 1, 3),
(5, '和美节日', '和美节日', '/Public/images/ztest.jpg', '#5', '5', 1, 1, 4),
(6, '和美评价', '和美评价', '/Public/images/ztest.jpg', '#6', '6', 1, 1, 5),
(7, '和美教师', '和美教师', '/Public/images/ztest.jpg', '#7', '7', 1, 1, 6),
(8, '和美新闻', '和美新闻', '#', '#', '8', 1, 1, 99);

-- --------------------------------------------------------

--
-- 表的结构 `hemei_news`
--

CREATE TABLE IF NOT EXISTS `hemei_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '//id',
  `cid` int(11) NOT NULL COMMENT '//categoryid',
  `type` int(11) NOT NULL COMMENT '//0 文章 1相册 2连接 ',
  `title` varchar(60) NOT NULL COMMENT '//标题',
  `pid` int(11) NOT NULL COMMENT '//发送者ID',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `img` varchar(200) NOT NULL COMMENT '//首页展示图',
  `content` text NOT NULL COMMENT '//内容',
  `uri` varchar(200) NOT NULL COMMENT '//标题链接',
  `posttime` int(11) NOT NULL COMMENT '//发送时间',
  `addtime` int(11) NOT NULL COMMENT '//添加日期',
  `clickcount` int(11) NOT NULL COMMENT '//点击数量',
  `status` int(11) NOT NULL COMMENT '//状态 0正常 1列表隐藏 2永久隐藏 ',
  `oid` int(11) NOT NULL COMMENT '//order id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//文章表' AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `hemei_news`
--

INSERT INTO `hemei_news` (`id`, `cid`, `type`, `title`, `pid`, `info`, `img`, `content`, `uri`, `posttime`, `addtime`, `clickcount`, `status`, `oid`) VALUES
(1, 3, 0, '一二三四五六七八九十一二三四五六七八九十', 1, '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(2, 3, 0, '一二三四五六七八九十一二三四五六七八九十\n', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(3, 3, 0, '测试标题|分组3-id-3', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(4, 3, 0, '测试标题|分组3-id-4', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(5, 3, 0, '测试标题|分组3-id-5', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(6, 3, 0, '测试标题|分组3-id-6', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(7, 3, 0, '测试标题|分组3-id-7', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(8, 3, 0, '测试标题|分组3-id-8', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(9, 1, 0, '测试标题|分组1-id-9测试标题|分组1-id-9测试标题|分组1-id-9测试标题|分组1-id-9', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(10, 1, 0, '测试标题|分组1-id-10测试标题|分组1-id-10测试标题|分组1-id-10测试标题|分组1-id-10', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(11, 1, 0, '测试标题|分组1-id-11', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(12, 1, 0, '测试标题|分组1-id-12', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(13, 1, 0, '测试标题|分组1-id-13', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(14, 1, 0, '测试标题|分组1-id-14', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(15, 1, 0, '测试标题|分组1-id-15', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(16, 1, 0, '测试标题|分组1-id-16', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(17, 1, 0, '测试标题|分组1-id-17', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(18, 1, 0, '测试标题|分组1-id-18', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(19, 1, 0, '测试标题|分组1-id-19', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(20, 1, 0, '测试标题|分组1-id-20', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(21, 1, 0, '测试标题|分组1-id-21', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(22, 1, 0, '测试标题|分组1-id-22', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(23, 1, 0, '测试标题|分组1-id-23', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(24, 1, 0, '测试标题|分组1-id-24', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(25, 1, 0, '测试标题|分组1-id-25', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(26, 1, 0, '测试标题|分组1-id-26', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(27, 1, 0, '测试标题|分组1-id-27', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(28, 1, 0, '测试标题|分组1-id-28', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(29, 1, 0, '测试标题|分组1-id-29', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(30, 1, 0, '测试标题|分组1-id-30', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(31, 4, 0, '测试标题|分组4-id-31----1111111111111', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(32, 4, 0, '测试标题|分组4-id-32', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(33, 4, 0, '测试标题|分组4-id-33', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(34, 4, 0, '测试标题|分组4-id-34', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(35, 4, 0, '测试标题|分组4-id-35', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(36, 4, 0, '测试标题|分组4-id-36', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(37, 4, 0, '测试标题|分组4-id-37', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(38, 4, 0, '测试标题|分组4-id-38', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1),
(39, 2, 0, '测试标题|分组2-id-39', 1, '测试INFO', '', '测试CONTENT', '', 11111, 11111, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hemei_notice`
--

CREATE TABLE IF NOT EXISTS `hemei_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `oid` int(11) NOT NULL COMMENT '排序',
  `status` int(11) NOT NULL COMMENT '1 显示 0隐藏',
  `top` int(11) NOT NULL COMMENT '1 置顶',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//公告表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `hemei_notice`
--

INSERT INTO `hemei_notice` (`id`, `name`, `title`, `uri`, `oid`, `status`, `top`) VALUES
(1, '测试公告置顶标题', '测试公告置顶描述', 'http://www.baidu.com', 0, 1, 1),
(2, '测试滚动公告标题1', '测试滚动公告简介1', '#', 1, 1, 0),
(3, '测试滚动公告标题2', '测试公告置顶描述2', 'http://www.baidu.com', 2, 1, 0),
(4, '测试滚动公告标题3', '测试滚动公告简介31', '#', 3, 1, 0),
(5, '测试滚动公告标题4', '测试公告置顶描述2', 'http://www.baidu.com', 4, 1, 0),
(6, '测试滚动公告标题5', '测试滚动公告简介5', '#', 5, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `hemei_sets`
--

CREATE TABLE IF NOT EXISTS `hemei_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `value` varchar(200) NOT NULL,
  `info` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='//网站设置表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `hemei_sets`
--

INSERT INTO `hemei_sets` (`id`, `name`, `value`, `info`) VALUES
(1, 'INDEX_NEWS_CID', '3', '首页新闻列表所属CategoryID'),
(2, 'INDEX_INFO_PHOTO', '', '首页学校概况图片地址'),
(3, 'INDEX_INFO_NEWS', '39', '首页学校概况文章地址'),
(4, 'INDEX_INFO_TEXT', '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十', '首页学校概况文章简介'),
(5, 'INDEX_MOVIE_CID', '4', '首页新闻报道链接所属CID'),
(6, 'INDEX_NOTICE_CID', '1', '首页公告链接所属CID');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
