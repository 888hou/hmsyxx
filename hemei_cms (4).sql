-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-04-14 21:06:42
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hemei_cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `hemei_category`
--

CREATE TABLE `hemei_category` (
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '//栏目标题',
  `title` varchar(100) NOT NULL COMMENT '//栏目简介',
  `type` int(11) NOT NULL COMMENT '//类别 0栏目 1链接 2图片栏目 3图片页面',
  `uri` varchar(100) NOT NULL COMMENT '//链接',
  `status` int(11) NOT NULL COMMENT '//状态 0停用 1显示 2隐藏',
  `oid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//类目表';

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

CREATE TABLE `hemei_links` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  `oid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//友情链接表';

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

CREATE TABLE `hemei_nav` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `uri` varchar(200) NOT NULL COMMENT '//图片展示链接',
  `class` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `oid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//主导航表';

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

CREATE TABLE `hemei_news` (
  `id` int(11) NOT NULL COMMENT '//id',
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
  `oid` int(11) NOT NULL COMMENT '//order id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//文章表';

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

CREATE TABLE `hemei_notice` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `oid` int(11) NOT NULL COMMENT '排序',
  `status` int(11) NOT NULL COMMENT '1 显示 0隐藏',
  `top` int(11) NOT NULL COMMENT '1 置顶'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//公告表';

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

CREATE TABLE `hemei_sets` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(200) NOT NULL,
  `info` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='//网站设置表';

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

-- --------------------------------------------------------

--
-- 表的结构 `hm_article`
--

CREATE TABLE `hm_article` (
  `aid` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `t` int(10) UNSIGNED NOT NULL COMMENT '时间',
  `n` int(10) UNSIGNED NOT NULL COMMENT '点击'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hm_auth_group`
--

CREATE TABLE `hm_auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_auth_group`
--

INSERT INTO `hm_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理员', 1, '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55'),
(2, '管理员', 1, '13,14,23,22,21,20,19,18,17,16,15,24,36,34,33,32,31,30,29,27,26,25,1'),
(3, '站点编辑', 1, '1,24,25,26,27,29,30,48,49,50,55'),
(6, '333', 0, '1,2');

-- --------------------------------------------------------

--
-- 表的结构 `hm_auth_group_access`
--

CREATE TABLE `hm_auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_auth_group_access`
--

INSERT INTO `hm_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `hm_auth_rule`
--

CREATE TABLE `hm_auth_rule` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_auth_rule`
--

INSERT INTO `hm_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `type`, `status`, `condition`, `islink`, `o`, `tips`) VALUES
(1, 0, 'Index/index', '控制台', 'menu-icon fa fa-tachometer', 1, 1, '', 1, 1, '友情提示：经常查看操作日志，发现异常以便及时追查原因。'),
(2, 0, '', '系统设置', 'menu-icon fa fa-cog', 1, 1, '', 1, 2, ''),
(3, 2, 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 3, '这是网站设置的提示。'),
(4, 2, 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 4, ''),
(5, 2, 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 5, ''),
(6, 4, 'Menu/edit', '编辑菜单', '', 1, 1, '', 0, 6, ''),
(7, 2, 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 7, ''),
(8, 2, 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 8, ''),
(9, 2, 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 9, ''),
(10, 9, 'Database/recovery', '数据库还原', '', 1, 1, '', 0, 10, ''),
(11, 2, 'Update/update', '在线升级', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 11, ''),
(12, 2, 'Update/devlog', '开发日志', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 12, ''),
(13, 0, '', '用户及组', 'menu-icon fa fa-users', 1, 1, '', 1, 13, ''),
(14, 13, 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 14, ''),
(15, 13, 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 15, ''),
(16, 13, 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 16, ''),
(17, 13, 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 17, ''),
(18, 13, 'Member/del', '删除用户', '', 1, 1, '', 0, 18, ''),
(19, 13, 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 19, ''),
(20, 13, 'Group/add', '新增用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 20, ''),
(21, 13, 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 21, ''),
(22, 13, 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 22, ''),
(23, 13, 'Group/del', '删除用户组', '', 1, 1, '', 0, 23, ''),
(24, 0, '', '网站内容', 'menu-icon fa fa-desktop', 1, 1, '', 1, 24, ''),
(25, 24, 'Article/index', '文章管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 25, '网站虽然重要，身体更重要，出去走走吧。'),
(26, 24, 'Article/add', '新增文章', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 26, ''),
(27, 24, 'Article/edit', '编辑文章', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 27, ''),
(29, 24, 'Article/update', '保存文章', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 29, ''),
(30, 24, 'Article/del', '删除文章', '', 1, 1, '', 0, 30, ''),
(31, 24, 'Category/index', '分类管理', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 31, ''),
(32, 24, 'Category/add', '新增分类', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 32, ''),
(33, 24, 'Category/edit', '编辑分类', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 33, ''),
(34, 24, 'Category/update', '保存分类', 'menu-icon fa fa-caret-right', 1, 1, '', 0, 34, ''),
(36, 24, 'Category/del', '删除分类', '', 1, 1, '', 0, 36, ''),
(37, 0, '', '其它功能', 'menu-icon fa fa-legal', 1, 1, '', 1, 37, ''),
(38, 37, 'Link/index', '友情链接', 'menu-icon fa fa-caret-right', 1, 1, '', 1, 38, ''),
(39, 37, 'Link/add', '增加链接', '', 1, 1, '', 1, 39, ''),
(40, 37, 'Link/edit', '编辑链接', '', 1, 1, '', 0, 40, ''),
(41, 37, 'Link/update', '保存链接', '', 1, 1, '', 0, 41, ''),
(42, 37, 'Link/del', '删除链接', '', 1, 1, '', 0, 42, ''),
(43, 37, 'Flash/index', '焦点图', 'menu-icon fa fa-desktop', 1, 1, '', 1, 43, ''),
(44, 37, 'Flash/add', '新增焦点图', '', 1, 1, '', 1, 44, ''),
(45, 37, 'Flash/update', '保存焦点图', '', 1, 1, '', 0, 45, ''),
(46, 37, 'Flash/edit', '编辑焦点图', '', 1, 1, '', 0, 46, ''),
(47, 37, 'Flash/del', '删除焦点图', '', 1, 1, '', 0, 47, ''),
(48, 0, 'Personal/index', '个人中心', 'menu-icon fa fa-user', 1, 1, '', 1, 48, ''),
(49, 48, 'Personal/profile', '个人资料', 'menu-icon fa fa-user', 1, 1, '', 1, 49, ''),
(50, 48, 'Logout/index', '退出', '', 1, 1, '', 1, 50, ''),
(51, 9, 'Database/export', '备份', '', 1, 1, '', 0, 51, ''),
(52, 9, 'Database/optimize', '数据优化', '', 1, 1, '', 0, 52, ''),
(53, 9, 'Database/repair', '修复表', '', 1, 1, '', 0, 53, ''),
(54, 11, 'Update/updating', '升级安装', '', 1, 1, '', 0, 54, ''),
(55, 48, 'Personal/update', '资料保存', '', 1, 1, '', 0, 55, ''),
(56, 3, 'Setting/update', '设置保存', '', 1, 1, '', 0, 56, ''),
(57, 9, 'Database/del', '备份删除', '', 1, 1, '', 0, 57, ''),
(58, 2, 'variable/index', '自定义变量', '', 1, 1, '', 1, 0, ''),
(59, 58, 'variable/add', '新增变量', '', 1, 1, '', 0, 0, ''),
(60, 58, 'variable/edit', '编辑变量', '', 1, 1, '', 0, 0, ''),
(61, 58, 'variable/update', '保存变量', '', 1, 1, '', 0, 0, ''),
(62, 58, 'variable/del', '删除变量', '', 1, 1, '', 0, 0, ''),
(63, 37, 'Facebook/add', '用户反馈', '', 1, 1, '', 1, 63, ''),
(66, 37, 'Nav/index', '导航管理', '', 1, 1, '', 1, 0, '管理首页栏目导航对应模块ID和轮播图片文章地址');

-- --------------------------------------------------------

--
-- 表的结构 `hm_category`
--

CREATE TABLE `hm_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '父ID',
  `type` int(11) NOT NULL COMMENT '//0文章列表 1相册列表 2连接 ',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `keywords` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL COMMENT '//指定链接地址',
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '//状态 0正常 1隐藏 9停用',
  `o` int(11) NOT NULL COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hm_devlog`
--

CREATE TABLE `hm_devlog` (
  `id` int(11) NOT NULL,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_devlog`
--

INSERT INTO `hm_devlog` (`id`, `v`, `y`, `t`, `log`) VALUES
(1, '1.0.0', 2016, 1440259200, 'QWADMIN第一个版本发布。');

-- --------------------------------------------------------

--
-- 表的结构 `hm_flash`
--

CREATE TABLE `hm_flash` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hm_links`
--

CREATE TABLE `hm_links` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hm_log`
--

CREATE TABLE `hm_log` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_log`
--

INSERT INTO `hm_log` (`id`, `name`, `t`, `ip`, `log`) VALUES
(1, 'admin', 1460528528, '::1', '登录成功。'),
(2, 'admin', 1460528649, '::1', '修改个人资料'),
(3, 'admin', 1460528814, '::1', '新增菜单，名称：导航管理'),
(4, 'admin', 1460529874, '::1', '编辑用户组，ID：3，组名：站点编辑'),
(5, 'admin', 1460529907, '::1', '新增会员，会员UID：3'),
(6, 'bianji', 1460529927, '::1', '登录成功。');

-- --------------------------------------------------------

--
-- 表的结构 `hm_member`
--

CREATE TABLE `hm_member` (
  `uid` int(11) NOT NULL,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) UNSIGNED NOT NULL COMMENT '注册时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_member`
--

INSERT INTO `hm_member` (`uid`, `user`, `head`, `sex`, `birthday`, `phone`, `qq`, `email`, `password`, `t`) VALUES
(1, 'admin', '/Public/attached/201601/1453389194.png', 1, 651164400, '18633501596', '313988277', '313988277@qq.com', '66d6a1c8748025462128dc75bf5ae8d1', 1442505600),
(3, 'bianji', '/Public/attached/201604/1460529901.png', 0, 1460563200, '', '', '', '0fa5933c7d220e1334ba99d6f751074c', 1460529907);

-- --------------------------------------------------------

--
-- 表的结构 `hm_nav`
--

CREATE TABLE `hm_nav` (
  `id` int(11) NOT NULL COMMENT '//ID',
  `category` int(11) NOT NULL COMMENT '//category id',
  `class` int(11) NOT NULL COMMENT '//栏目样式 0 1 2 3 4 5 6 7 8 ',
  `pic` varchar(255) NOT NULL COMMENT '//大图展示图片',
  `uri` varchar(255) NOT NULL COMMENT '//大图连接地址',
  `title` varchar(50) NOT NULL COMMENT '//名称',
  `description` varchar(255) NOT NULL COMMENT '//图片简介',
  `o` int(11) NOT NULL COMMENT '//排序序号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `hm_setting`
--

CREATE TABLE `hm_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hm_setting`
--

INSERT INTO `hm_setting` (`k`, `v`, `type`, `name`) VALUES
('sitename', '和美实验学校', 0, ''),
('title', '和美网络', 0, ''),
('keywords', '关键词', 0, ''),
('description', '网站描述', 0, ''),
('footer', '2016©和美网络', 0, ''),
('test', '测试', 1, '测试变量');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hemei_category`
--
ALTER TABLE `hemei_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemei_links`
--
ALTER TABLE `hemei_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemei_nav`
--
ALTER TABLE `hemei_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemei_news`
--
ALTER TABLE `hemei_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemei_notice`
--
ALTER TABLE `hemei_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemei_sets`
--
ALTER TABLE `hemei_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `hm_article`
--
ALTER TABLE `hm_article`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `hm_auth_group`
--
ALTER TABLE `hm_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hm_auth_group_access`
--
ALTER TABLE `hm_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `hm_auth_rule`
--
ALTER TABLE `hm_auth_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hm_category`
--
ALTER TABLE `hm_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fsid` (`pid`);

--
-- Indexes for table `hm_devlog`
--
ALTER TABLE `hm_devlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hm_flash`
--
ALTER TABLE `hm_flash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `o` (`o`);

--
-- Indexes for table `hm_links`
--
ALTER TABLE `hm_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `o` (`o`);

--
-- Indexes for table `hm_log`
--
ALTER TABLE `hm_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hm_member`
--
ALTER TABLE `hm_member`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `hm_nav`
--
ALTER TABLE `hm_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hm_setting`
--
ALTER TABLE `hm_setting`
  ADD PRIMARY KEY (`k`),
  ADD KEY `k` (`k`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hemei_category`
--
ALTER TABLE `hemei_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- 使用表AUTO_INCREMENT `hemei_links`
--
ALTER TABLE `hemei_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `hemei_nav`
--
ALTER TABLE `hemei_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `hemei_news`
--
ALTER TABLE `hemei_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '//id', AUTO_INCREMENT=40;
--
-- 使用表AUTO_INCREMENT `hemei_notice`
--
ALTER TABLE `hemei_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `hemei_sets`
--
ALTER TABLE `hemei_sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `hm_article`
--
ALTER TABLE `hm_article`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hm_auth_group`
--
ALTER TABLE `hm_auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `hm_auth_rule`
--
ALTER TABLE `hm_auth_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `hm_category`
--
ALTER TABLE `hm_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hm_devlog`
--
ALTER TABLE `hm_devlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `hm_flash`
--
ALTER TABLE `hm_flash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hm_links`
--
ALTER TABLE `hm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `hm_log`
--
ALTER TABLE `hm_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `hm_member`
--
ALTER TABLE `hm_member`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `hm_nav`
--
ALTER TABLE `hm_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '//ID';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
