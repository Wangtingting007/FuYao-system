-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2017-04-23 17:33:11
-- 服务器版本： 5.6.28
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fuyao`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrator`
--

CREATE TABLE `administrator` (
  `aid` int(4) UNSIGNED NOT NULL COMMENT '管理员ID',
  `account` varchar(30) NOT NULL COMMENT '管理员账号',
  `password` varchar(30) NOT NULL COMMENT '管理员密码',
  `name` varchar(30) NOT NULL COMMENT '管理员昵称',
  `grade` int(2) NOT NULL COMMENT '管理员等级'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `cid` int(4) UNSIGNED NOT NULL COMMENT '类别ID',
  `cname` varchar(50) NOT NULL COMMENT '类别名称',
  `cinfo` varchar(300) NOT NULL COMMENT '类别详情介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `good`
--

CREATE TABLE `good` (
  `gid` int(10) UNSIGNED NOT NULL COMMENT '商品ID',
  `cid` int(11) NOT NULL COMMENT '商品类别ID',
  `picture1` varchar(100) NOT NULL COMMENT '图1',
  `picture2` varchar(100) NOT NULL COMMENT '图2',
  `picture3` varchar(100) NOT NULL COMMENT '图3',
  `picture4` varchar(100) NOT NULL COMMENT '图4',
  `title1` varchar(50) NOT NULL COMMENT '参数1',
  `title2` varchar(50) NOT NULL COMMENT '参数2',
  `title3` varchar(50) NOT NULL COMMENT '参数3',
  `title4` varchar(50) NOT NULL COMMENT '参数4',
  `value1` varchar(50) NOT NULL COMMENT '值1 ',
  `value2` varchar(50) NOT NULL COMMENT '值2',
  `value3` varchar(50) NOT NULL COMMENT '值3',
  `value4` varchar(50) NOT NULL COMMENT '值4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `mid` int(5) NOT NULL COMMENT '留言ID',
  `phone` varchar(50) DEFAULT NULL COMMENT '留言者电话',
  `email` varchar(100) DEFAULT NULL COMMENT '留言者邮箱',
  `contents` varchar(500) NOT NULL COMMENT '留言内容',
  `status` int(2) DEFAULT NULL COMMENT '留言状态：0未处理，1已处理',
  `aid` int(4) DEFAULT NULL COMMENT '处理人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `administrator`
--
ALTER TABLE `administrator`
  MODIFY `aid` int(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID';
--
-- 使用表AUTO_INCREMENT `good`
--
ALTER TABLE `good`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品ID';