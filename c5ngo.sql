-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2015 at 05:45 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c5ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutColumns`
--

CREATE TABLE `AreaLayoutColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutCustomColumns`
--

CREATE TABLE `AreaLayoutCustomColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutPresets`
--

CREATE TABLE `AreaLayoutPresets` (
`arLayoutPresetID` int(10) unsigned NOT NULL,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayouts`
--

CREATE TABLE `AreaLayouts` (
`arLayoutID` int(10) unsigned NOT NULL,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

CREATE TABLE `AreaLayoutThemeGridColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
`arID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 124, 'Main', 0, 0, 0, 0),
(2, 125, 'Primary', 0, 0, 0, 0),
(3, 125, 'Secondary 1', 0, 0, 0, 0),
(4, 125, 'Secondary 2', 0, 0, 0, 0),
(5, 125, 'Secondary 3', 0, 0, 0, 0),
(6, 125, 'Secondary 4', 0, 0, 0, 0),
(7, 125, 'Secondary 5', 0, 0, 0, 0),
(8, 142, 'Main', 0, 0, 0, 0),
(13, 1, 'Main', 0, 0, 0, 0),
(14, 1, 'Page Footer', 0, 0, 0, 0),
(21, 148, 'Main', 0, 0, 0, 0),
(22, 1, 'Masthead', 0, 0, 1, 0),
(23, 149, 'Main', 0, 0, 0, 0),
(24, 1, 'Site Name', 0, 0, 1, 0),
(25, 150, 'Main', 0, 0, 0, 0),
(26, 1, 'Header Right', 0, 0, 1, 0),
(27, 151, 'Main', 0, 0, 0, 0),
(28, 1, 'Header Nav', 0, 0, 1, 0),
(29, 152, 'Main', 0, 0, 0, 0),
(30, 1, 'Breadcrumbs', 0, 0, 1, 0),
(31, 1, 'Sidebar', 0, 0, 0, 0),
(32, 153, 'Main', 0, 0, 0, 0),
(33, 1, 'Footer', 0, 0, 1, 0),
(34, 154, 'Main', 0, 0, 0, 0),
(35, 154, 'Masthead', 0, 0, 1, 0),
(36, 154, 'Site Name', 0, 0, 1, 0),
(37, 154, 'Header Right', 0, 0, 1, 0),
(38, 154, 'Header Nav', 0, 0, 1, 0),
(39, 154, 'Breadcrumbs', 0, 0, 1, 0),
(40, 154, 'Sidebar', 0, 0, 0, 0),
(41, 154, 'Footer', 0, 0, 1, 0),
(42, 1, 'Header', 0, 0, 0, 0),
(43, 155, 'Main', 0, 0, 0, 0),
(44, 139, 'Main', 0, 0, 0, 0),
(45, 139, 'Masthead', 0, 0, 1, 0),
(46, 139, 'Site Name', 0, 0, 1, 0),
(47, 139, 'Header Right', 0, 0, 1, 0),
(48, 139, 'Header Nav', 0, 0, 1, 0),
(49, 139, 'Footer', 0, 0, 1, 0),
(50, 142, 'Masthead', 0, 0, 1, 0),
(51, 142, 'Site Name', 0, 0, 1, 0),
(52, 142, 'Header Right', 0, 0, 1, 0),
(53, 142, 'Header Nav', 0, 0, 1, 0),
(54, 142, 'Breadcrumbs', 0, 0, 1, 0),
(55, 142, 'Sidebar', 0, 0, 0, 0),
(56, 142, 'Footer', 0, 0, 1, 0),
(57, 156, 'Masthead', 0, 0, 1, 0),
(58, 156, 'Site Name', 0, 0, 1, 0),
(59, 156, 'Header Right', 0, 0, 1, 0),
(60, 156, 'Header', 0, 0, 0, 0),
(61, 156, 'Header Nav', 0, 0, 1, 0),
(62, 156, 'Main', 0, 0, 0, 0),
(63, 156, 'Sidebar', 0, 0, 0, 0),
(64, 156, 'Footer', 0, 0, 1, 0),
(65, 157, 'Masthead', 0, 0, 1, 0),
(66, 157, 'Site Name', 0, 0, 1, 0),
(67, 157, 'Header Right', 0, 0, 1, 0),
(68, 157, 'Header Nav', 0, 0, 1, 0),
(69, 157, 'Breadcrumbs', 0, 0, 1, 0),
(70, 157, 'Main', 0, 0, 0, 0),
(71, 157, 'Sidebar', 0, 0, 0, 0),
(72, 157, 'Footer', 0, 0, 1, 0),
(73, 158, 'Main', 0, 0, 0, 0),
(74, 158, 'Masthead', 0, 0, 1, 0),
(75, 158, 'Site Name', 0, 0, 1, 0),
(76, 158, 'Header Right', 0, 0, 1, 0),
(77, 158, 'Header Nav', 0, 0, 1, 0),
(78, 158, 'Breadcrumbs', 0, 0, 1, 0),
(79, 158, 'Sidebar', 0, 0, 0, 0),
(80, 158, 'Footer', 0, 0, 1, 0),
(81, 159, 'Masthead', 0, 0, 1, 0),
(82, 159, 'Site Name', 0, 0, 1, 0),
(83, 159, 'Header Right', 0, 0, 1, 0),
(84, 159, 'Header Nav', 0, 0, 1, 0),
(85, 159, 'Breadcrumbs', 0, 0, 1, 0),
(86, 159, 'Main', 0, 0, 0, 0),
(87, 159, 'Sidebar', 0, 0, 0, 0),
(88, 159, 'Footer', 0, 0, 1, 0),
(89, 160, 'Masthead', 0, 0, 1, 0),
(90, 160, 'Site Name', 0, 0, 1, 0),
(91, 160, 'Header Right', 0, 0, 1, 0),
(92, 160, 'Header Nav', 0, 0, 1, 0),
(93, 160, 'Breadcrumbs', 0, 0, 1, 0),
(94, 160, 'Main', 0, 0, 0, 0),
(95, 160, 'Sidebar', 0, 0, 0, 0),
(96, 160, 'Footer', 0, 0, 1, 0),
(97, 161, 'Main', 0, 0, 0, 0),
(98, 161, 'Masthead', 0, 0, 1, 0),
(99, 161, 'Site Name', 0, 0, 1, 0),
(100, 161, 'Header Right', 0, 0, 1, 0),
(101, 161, 'Header Nav', 0, 0, 1, 0),
(102, 161, 'Breadcrumbs', 0, 0, 1, 0),
(103, 161, 'Sidebar', 0, 0, 0, 0),
(104, 161, 'Footer', 0, 0, 1, 0),
(105, 162, 'Main', 0, 0, 0, 0),
(106, 162, 'Masthead', 0, 0, 1, 0),
(107, 162, 'Site Name', 0, 0, 1, 0),
(108, 162, 'Header Right', 0, 0, 1, 0),
(109, 162, 'Header Nav', 0, 0, 1, 0),
(110, 162, 'Breadcrumbs', 0, 0, 1, 0),
(111, 162, 'Sidebar', 0, 0, 0, 0),
(112, 162, 'Footer', 0, 0, 1, 0),
(113, 163, 'Main', 0, 0, 0, 0),
(114, 163, 'Masthead', 0, 0, 1, 0),
(115, 163, 'Site Name', 0, 0, 1, 0),
(116, 163, 'Header Right', 0, 0, 1, 0),
(117, 163, 'Header Nav', 0, 0, 1, 0),
(118, 163, 'Breadcrumbs', 0, 0, 1, 0),
(119, 163, 'Sidebar', 0, 0, 0, 0),
(120, 163, 'Footer', 0, 0, 1, 0),
(121, 164, 'Main', 0, 0, 0, 0),
(122, 164, 'Masthead', 0, 0, 1, 0),
(123, 164, 'Site Name', 0, 0, 1, 0),
(124, 164, 'Header Right', 0, 0, 1, 0),
(125, 164, 'Header Nav', 0, 0, 1, 0),
(126, 164, 'Breadcrumbs', 0, 0, 1, 0),
(127, 164, 'Sidebar', 0, 0, 0, 0),
(128, 164, 'Footer', 0, 0, 1, 0),
(129, 165, 'Main', 0, 0, 0, 0),
(130, 166, 'Main', 0, 0, 0, 0),
(131, 166, 'Masthead', 0, 0, 1, 0),
(132, 166, 'Site Name', 0, 0, 1, 0),
(133, 166, 'Header Right', 0, 0, 1, 0),
(134, 166, 'Header Nav', 0, 0, 1, 0),
(135, 166, 'Breadcrumbs', 0, 0, 1, 0),
(136, 166, 'Sidebar', 0, 0, 0, 0),
(137, 166, 'Footer', 0, 0, 1, 0),
(138, 167, 'Masthead', 0, 0, 1, 0),
(139, 167, 'Site Name', 0, 0, 1, 0),
(140, 167, 'Header Right', 0, 0, 1, 0),
(141, 167, 'Header Nav', 0, 0, 1, 0),
(142, 167, 'Breadcrumbs', 0, 0, 1, 0),
(143, 167, 'Main', 0, 0, 0, 0),
(144, 167, 'Sidebar', 0, 0, 0, 0),
(145, 167, 'Footer', 0, 0, 1, 0),
(146, 168, 'Masthead', 0, 0, 1, 0),
(147, 168, 'Site Name', 0, 0, 1, 0),
(148, 168, 'Header Right', 0, 0, 1, 0),
(149, 168, 'Header Nav', 0, 0, 1, 0),
(150, 168, 'Breadcrumbs', 0, 0, 1, 0),
(151, 168, 'Main', 0, 0, 0, 0),
(152, 168, 'Sidebar', 0, 0, 0, 0),
(153, 168, 'Footer', 0, 0, 1, 0),
(154, 169, 'Masthead', 0, 0, 1, 0),
(155, 169, 'Site Name', 0, 0, 1, 0),
(156, 169, 'Header Right', 0, 0, 1, 0),
(157, 169, 'Header Nav', 0, 0, 1, 0),
(158, 169, 'Breadcrumbs', 0, 0, 1, 0),
(159, 169, 'Main', 0, 0, 0, 0),
(160, 169, 'Sidebar', 0, 0, 0, 0),
(161, 169, 'Footer', 0, 0, 1, 0),
(162, 170, 'Masthead', 0, 0, 1, 0),
(163, 170, 'Site Name', 0, 0, 1, 0),
(164, 170, 'Header Right', 0, 0, 1, 0),
(165, 170, 'Header Nav', 0, 0, 1, 0),
(166, 170, 'Breadcrumbs', 0, 0, 1, 0),
(167, 170, 'Main', 0, 0, 0, 0),
(168, 170, 'Sidebar', 0, 0, 0, 0),
(169, 170, 'Footer', 0, 0, 1, 0),
(170, 171, 'Masthead', 0, 0, 1, 0),
(171, 171, 'Site Name', 0, 0, 1, 0),
(172, 171, 'Header Right', 0, 0, 1, 0),
(173, 171, 'Header Nav', 0, 0, 1, 0),
(174, 171, 'Breadcrumbs', 0, 0, 1, 0),
(175, 171, 'Main', 0, 0, 0, 0),
(176, 171, 'Sidebar', 0, 0, 0, 0),
(177, 171, 'Footer', 0, 0, 1, 0),
(178, 172, 'Main', 0, 0, 0, 0),
(179, 172, 'Masthead', 0, 0, 1, 0),
(180, 172, 'Site Name', 0, 0, 1, 0),
(181, 172, 'Header Right', 0, 0, 1, 0),
(182, 172, 'Header Nav', 0, 0, 1, 0),
(183, 172, 'Breadcrumbs', 0, 0, 1, 0),
(184, 172, 'Sidebar', 0, 0, 0, 0),
(185, 172, 'Footer', 0, 0, 1, 0),
(186, 173, 'Main', 0, 0, 0, 0),
(187, 173, 'Masthead', 0, 0, 1, 0),
(188, 173, 'Site Name', 0, 0, 1, 0),
(189, 173, 'Header Right', 0, 0, 1, 0),
(190, 173, 'Header Nav', 0, 0, 1, 0),
(191, 173, 'Breadcrumbs', 0, 0, 1, 0),
(192, 173, 'Sidebar', 0, 0, 0, 0),
(193, 173, 'Footer', 0, 0, 1, 0),
(194, 174, 'Main', 0, 0, 0, 0),
(195, 174, 'Masthead', 0, 0, 1, 0),
(196, 174, 'Site Name', 0, 0, 1, 0),
(197, 174, 'Header Right', 0, 0, 1, 0),
(198, 174, 'Header Nav', 0, 0, 1, 0),
(199, 174, 'Breadcrumbs', 0, 0, 1, 0),
(200, 174, 'Sidebar', 0, 0, 0, 0),
(201, 174, 'Footer', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressCustomCountries`
--

CREATE TABLE `atAddressCustomCountries` (
`atAddressCustomCountryID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(9, 1),
(16, 1),
(18, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(42, 1),
(43, 1),
(47, 1),
(51, 1),
(98, 1),
(105, 1),
(106, 1),
(107, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(166, 1),
(187, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'fa fa-th-large'),
(2, 'pages, add page, delete page, copy, move, alias'),
(3, 'pages, add page, delete page, copy, move, alias'),
(4, 'pages, add page, delete page, copy, move, alias, bulk'),
(5, 'find page, search page, search, find, pages, sitemap'),
(6, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(7, 'file, file attributes, title, attribute, description, rename'),
(8, 'files, category, categories'),
(10, 'new file set'),
(11, 'users, groups, people, find, delete user, remove user, change password, password'),
(12, 'find, search, people, delete user, remove user, change password, password'),
(13, 'user, group, people, permissions, expire, badges'),
(14, 'user attributes, user data, gather data, registration data'),
(15, 'new user, create'),
(17, 'new user group, new group, group, create'),
(19, 'group set'),
(20, 'community, points, karma'),
(21, 'action, community actions'),
(22, 'forms, log, error, email, mysql, exception, survey'),
(23, 'forms, questions, response, data'),
(24, 'questions, quiz, response'),
(25, 'forms, log, error, email, mysql, exception, survey, history'),
(26, 'new theme, theme, active theme, change theme, template, css'),
(27, 'page types'),
(36, 'page attributes, custom'),
(37, 'single, page, custom, application'),
(38, 'atom, rss, feed, syndication'),
(39, 'icon-bullhorn'),
(40, 'add workflow, remove workflow'),
(41, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(44, 'edit stacks, view stacks, all stacks'),
(45, 'block, refresh, custom'),
(46, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
(48, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(49, 'update, upgrade'),
(50, 'concrete5.org, my account, marketplace'),
(52, 'buy theme, new theme, marketplace, template'),
(53, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(54, 'dashboard, configuration'),
(55, 'website name, title'),
(56, 'accessibility, easy mode'),
(57, 'sharing, facebook, twitter'),
(58, 'logo, favicon, iphone, icon, bookmark'),
(59, 'tinymce, content block, fonts, editor, content, overlay'),
(60, 'translate, translation, internationalization, multilingual'),
(61, 'timezone, profile, locale'),
(62, 'multilingual, localization, internationalization, i18n'),
(63, 'vanity, pretty url, seo, pageview, view'),
(64, 'bulk, seo, change keywords, engine, optimization, search'),
(65, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(66, 'pretty, slug'),
(67, 'configure search, site search, search option'),
(68, 'file options, file manager, upload, modify'),
(69, 'security, files, media, extension, manager, upload'),
(70, 'images, picture, responsive, retina'),
(71, 'security, alternate storage, hide files'),
(72, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(73, 'cache option, turn off cache, no cache, page cache, caching'),
(74, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(75, 'queries, database, mysql'),
(76, 'editors, hide site, offline, private, public, access'),
(77, 'security, actions, administrator, admin, package, marketplace, search'),
(78, 'security, lock ip, lock out, block ip, address, restrict, access'),
(79, 'security, registration'),
(80, 'antispam, block spam, security'),
(81, 'lock site, under construction, hide, hidden'),
(82, 'profile, login, redirect, specific, dashboard, administrators'),
(83, 'member profile, member page, community, forums, social, avatar'),
(84, 'signup, new user, community, public registration, public, registration'),
(85, 'auth, authentication, types, oauth, facebook, login, registration'),
(86, 'smtp, mail settings'),
(87, 'email server, mail settings, mail configuration, external, internal'),
(88, 'test smtp, test mail'),
(89, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(90, 'conversations'),
(91, 'conversations'),
(92, 'conversations ratings, ratings, community, community points'),
(93, 'conversations bad words, banned words, banned, bad words, bad, words, list'),
(94, 'attribute configuration'),
(95, 'attributes, sets'),
(96, 'attributes, types'),
(97, 'topics, tags, taxonomy'),
(99, 'overrides, system info, debug, support, help'),
(100, 'errors, exceptions, develop, support, help'),
(101, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(102, 'network, proxy server'),
(103, 'export, backup, database, sql, mysql, encryption, restore'),
(104, 'upgrade, new version, update'),
(108, 'fa fa-edit'),
(109, 'fa fa-trash-o'),
(110, 'fa fa-th'),
(111, 'fa fa-briefcase'),
(183, ''),
(184, ''),
(185, ''),
(186, '');

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atFile`
--

INSERT INTO `atFile` (`avID`, `fID`) VALUES
(151, 8),
(150, 9),
(193, 10),
(192, 11),
(197, 12),
(196, 13),
(198, 15),
(199, 16),
(201, 16),
(200, 17),
(191, 25),
(190, 26),
(188, 31),
(189, 31);

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atNumber`
--

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(112, 940.0000),
(113, 305.0000),
(114, 28.0000),
(115, 28.0000),
(116, 940.0000),
(117, 305.0000),
(118, 376.0000),
(119, 68.0000),
(120, 940.0000),
(121, 305.0000),
(122, 300.0000),
(123, 22.0000),
(124, 28.0000),
(125, 28.0000),
(130, 188.0000),
(131, 44.0000),
(132, 188.0000),
(133, 44.0000),
(134, 188.0000),
(135, 44.0000),
(136, 188.0000),
(137, 44.0000),
(138, 188.0000),
(139, 44.0000),
(140, 188.0000),
(141, 44.0000),
(142, 188.0000),
(143, 44.0000),
(144, 188.0000),
(145, 44.0000),
(146, 188.0000),
(147, 44.0000),
(148, 188.0000),
(149, 44.0000),
(152, 620.0000),
(153, 33.0000),
(154, 300.0000),
(155, 30.0000),
(156, 300.0000),
(157, 50.0000),
(158, 620.0000),
(159, 40.0000),
(160, 300.0000),
(161, 146.0000),
(162, 300.0000),
(163, 363.0000),
(164, 300.0000),
(165, 30.0000),
(167, 208.0000),
(168, 153.0000),
(169, 208.0000),
(170, 153.0000),
(171, 381.0000),
(172, 26.0000),
(173, 381.0000),
(174, 26.0000),
(175, 208.0000),
(176, 153.0000),
(177, 381.0000),
(178, 26.0000),
(179, 208.0000),
(180, 153.0000),
(181, 381.0000),
(182, 26.0000),
(194, 221.0000),
(195, 221.0000);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedTopics`
--

CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
`ID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(8, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `atSocialLinks`
--

CREATE TABLE `atSocialLinks` (
`avsID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
(2, '', ''),
(3, '', ''),
(4, '', ''),
(7, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `atTopicSettings`
--

CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
`akCategoryID` int(10) unsigned NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
`akID` int(10) unsigned NOT NULL,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 1, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 0, 0, 1, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(8, 'tags', 'Tags', 1, 1, 1, 0, 0, 1, 8, 1, 0),
(9, 'is_featured', 'Is Featured', 1, 0, 1, 0, 0, 1, 3, 1, 0),
(10, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(11, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(12, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(13, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(14, 'width', 'Width', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(15, 'height', 'Height', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(16, 'account_profile_links', 'Personal Links', 0, 0, 0, 0, 0, 1, 11, 2, 0),
(17, 'duration', 'Duration', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(18, 'globalnav_image', 'グロナビ画像', 1, 0, 0, 0, 0, 1, 5, 1, 0),
(19, 'globalnav_image_over', 'グロナビ画像ホバー', 1, 0, 0, 0, 0, 1, 5, 1, 0),
(20, 'thumbnail', 'サムネイル画像', 1, 0, 0, 0, 0, 1, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(7, 1, 4),
(11, 1, 5),
(18, 2, 0),
(19, 2, 1),
(20, 2, 2),
(9, 2, 3),
(5, 2, 4),
(6, 2, 5),
(10, 2, 6),
(8, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

CREATE TABLE `AttributeSets` (
`asID` int(10) unsigned NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'SEO', 'seo', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
`atID` int(10) unsigned NOT NULL,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0),
(10, 'topics', 'Topics', 0),
(11, 'social_links', 'Social Links', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

CREATE TABLE `AttributeValues` (
`avID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 4, '2015-03-21 03:49:45', 1, 2),
(2, 3, '2015-03-21 03:49:45', 1, 2),
(3, 3, '2015-03-21 03:49:45', 1, 2),
(4, 3, '2015-03-21 03:49:45', 1, 2),
(5, 3, '2015-03-21 03:49:45', 1, 2),
(6, 3, '2015-03-21 03:49:45', 1, 2),
(7, 3, '2015-03-21 03:49:46', 1, 2),
(8, 3, '2015-03-21 03:49:46', 1, 2),
(9, 5, '2015-03-21 03:49:46', 1, 3),
(10, 3, '2015-03-21 03:49:46', 1, 2),
(11, 3, '2015-03-21 03:49:46', 1, 2),
(12, 3, '2015-03-21 03:49:46', 1, 2),
(13, 3, '2015-03-21 03:49:46', 1, 2),
(14, 3, '2015-03-21 03:49:46', 1, 2),
(15, 3, '2015-03-21 03:49:46', 1, 2),
(16, 5, '2015-03-21 03:49:46', 1, 3),
(17, 3, '2015-03-21 03:49:46', 1, 2),
(18, 5, '2015-03-21 03:49:47', 1, 3),
(19, 3, '2015-03-21 03:49:47', 1, 2),
(20, 3, '2015-03-21 03:49:47', 1, 2),
(21, 3, '2015-03-21 03:49:47', 1, 2),
(22, 3, '2015-03-21 03:49:47', 1, 2),
(23, 3, '2015-03-21 03:49:47', 1, 2),
(24, 3, '2015-03-21 03:49:47', 1, 2),
(25, 3, '2015-03-21 03:49:47', 1, 2),
(26, 3, '2015-03-21 03:49:47', 1, 2),
(27, 3, '2015-03-21 03:49:47', 1, 2),
(28, 5, '2015-03-21 03:49:47', 1, 3),
(29, 5, '2015-03-21 03:49:48', 1, 3),
(30, 5, '2015-03-21 03:49:48', 1, 3),
(31, 5, '2015-03-21 03:49:48', 1, 3),
(32, 5, '2015-03-21 03:49:48', 1, 3),
(33, 5, '2015-03-21 03:49:48', 1, 3),
(34, 5, '2015-03-21 03:49:48', 1, 3),
(35, 5, '2015-03-21 03:49:48', 1, 3),
(36, 3, '2015-03-21 03:49:48', 1, 2),
(37, 3, '2015-03-21 03:49:48', 1, 2),
(38, 3, '2015-03-21 03:49:48', 1, 2),
(39, 4, '2015-03-21 03:49:49', 1, 2),
(40, 3, '2015-03-21 03:49:49', 1, 2),
(41, 3, '2015-03-21 03:49:49', 1, 2),
(42, 5, '2015-03-21 03:49:49', 1, 3),
(43, 10, '2015-03-21 03:49:50', 1, 3),
(44, 3, '2015-03-21 03:49:50', 1, 2),
(45, 3, '2015-03-21 03:49:50', 1, 2),
(46, 3, '2015-03-21 03:49:50', 1, 2),
(47, 5, '2015-03-21 03:49:51', 1, 3),
(48, 3, '2015-03-21 03:49:51', 1, 2),
(49, 3, '2015-03-21 03:49:51', 1, 2),
(50, 3, '2015-03-21 03:49:51', 1, 2),
(51, 5, '2015-03-21 03:49:51', 1, 3),
(52, 3, '2015-03-21 03:49:51', 1, 2),
(53, 3, '2015-03-21 03:49:51', 1, 2),
(54, 3, '2015-03-21 03:49:52', 1, 2),
(55, 3, '2015-03-21 03:49:52', 1, 2),
(56, 3, '2015-03-21 03:49:52', 1, 2),
(57, 3, '2015-03-21 03:49:52', 1, 2),
(58, 3, '2015-03-21 03:49:52', 1, 2),
(59, 3, '2015-03-21 03:49:52', 1, 2),
(60, 3, '2015-03-21 03:49:52', 1, 2),
(61, 3, '2015-03-21 03:49:52', 1, 2),
(62, 3, '2015-03-21 03:49:52', 1, 2),
(63, 3, '2015-03-21 03:49:53', 1, 2),
(64, 3, '2015-03-21 03:49:53', 1, 2),
(65, 3, '2015-03-21 03:49:53', 1, 2),
(66, 3, '2015-03-21 03:49:53', 1, 2),
(67, 3, '2015-03-21 03:49:53', 1, 2),
(68, 3, '2015-03-21 03:49:53', 1, 2),
(69, 3, '2015-03-21 03:49:53', 1, 2),
(70, 3, '2015-03-21 03:49:53', 1, 2),
(71, 3, '2015-03-21 03:49:53', 1, 2),
(72, 3, '2015-03-21 03:49:54', 1, 2),
(73, 3, '2015-03-21 03:49:54', 1, 2),
(74, 3, '2015-03-21 03:49:54', 1, 2),
(75, 3, '2015-03-21 03:49:54', 1, 2),
(76, 3, '2015-03-21 03:49:54', 1, 2),
(77, 3, '2015-03-21 03:49:54', 1, 2),
(78, 3, '2015-03-21 03:49:54', 1, 2),
(79, 3, '2015-03-21 03:49:54', 1, 2),
(80, 3, '2015-03-21 03:49:55', 1, 2),
(81, 3, '2015-03-21 03:49:55', 1, 2),
(82, 3, '2015-03-21 03:49:55', 1, 2),
(83, 3, '2015-03-21 03:49:55', 1, 2),
(84, 3, '2015-03-21 03:49:55', 1, 2),
(85, 3, '2015-03-21 03:49:55', 1, 2),
(86, 3, '2015-03-21 03:49:56', 1, 2),
(87, 3, '2015-03-21 03:49:56', 1, 2),
(88, 3, '2015-03-21 03:49:56', 1, 2),
(89, 3, '2015-03-21 03:49:56', 1, 2),
(90, 3, '2015-03-21 03:49:56', 1, 2),
(91, 3, '2015-03-21 03:49:56', 1, 2),
(92, 3, '2015-03-21 03:49:56', 1, 2),
(93, 3, '2015-03-21 03:49:56', 1, 2),
(94, 3, '2015-03-21 03:49:56', 1, 2),
(95, 3, '2015-03-21 03:49:56', 1, 2),
(96, 3, '2015-03-21 03:49:56', 1, 2),
(97, 3, '2015-03-21 03:49:56', 1, 2),
(98, 10, '2015-03-21 03:49:56', 1, 3),
(99, 3, '2015-03-21 03:49:56', 1, 2),
(100, 3, '2015-03-21 03:49:56', 1, 2),
(101, 3, '2015-03-21 03:49:56', 1, 2),
(102, 3, '2015-03-21 03:49:56', 1, 2),
(103, 3, '2015-03-21 03:49:56', 1, 2),
(104, 3, '2015-03-21 03:49:56', 1, 2),
(105, 5, '2015-03-21 03:49:56', 1, 3),
(106, 5, '2015-03-21 03:49:57', 1, 3),
(107, 10, '2015-03-21 03:49:57', 1, 3),
(108, 4, '2015-03-21 03:49:58', 1, 2),
(109, 4, '2015-03-21 03:49:58', 1, 2),
(110, 4, '2015-03-21 03:49:58', 1, 2),
(111, 4, '2015-03-21 03:49:58', 1, 2),
(112, 14, '2015-03-21 03:55:44', 1, 6),
(113, 15, '2015-03-21 03:55:44', 1, 6),
(114, 14, '2015-03-21 03:55:45', 1, 6),
(115, 15, '2015-03-21 03:55:45', 1, 6),
(116, 14, '2015-03-21 03:55:46', 1, 6),
(117, 15, '2015-03-21 03:55:46', 1, 6),
(118, 14, '2015-03-21 03:55:47', 1, 6),
(119, 15, '2015-03-21 03:55:47', 1, 6),
(120, 14, '2015-03-21 03:55:47', 1, 6),
(121, 15, '2015-03-21 03:55:47', 1, 6),
(122, 14, '2015-03-21 03:55:48', 1, 6),
(123, 15, '2015-03-21 03:55:48', 1, 6),
(124, 14, '2015-03-21 03:55:49', 1, 6),
(125, 15, '2015-03-21 03:55:49', 1, 6),
(126, 5, '2015-03-21 04:01:14', 1, 3),
(127, 6, '2015-03-21 04:01:14', 1, 3),
(128, 10, '2015-03-21 04:01:14', 1, 3),
(129, 11, '2015-03-21 04:01:23', 1, 3),
(130, 14, '2015-03-21 04:08:28', 1, 6),
(131, 15, '2015-03-21 04:08:28', 1, 6),
(132, 14, '2015-03-21 04:08:29', 1, 6),
(133, 15, '2015-03-21 04:08:29', 1, 6),
(134, 14, '2015-03-21 04:08:29', 1, 6),
(135, 15, '2015-03-21 04:08:30', 1, 6),
(136, 14, '2015-03-21 04:08:30', 1, 6),
(137, 15, '2015-03-21 04:08:30', 1, 6),
(138, 14, '2015-03-21 04:08:31', 1, 6),
(139, 15, '2015-03-21 04:08:31', 1, 6),
(140, 14, '2015-03-21 04:08:31', 1, 6),
(141, 15, '2015-03-21 04:08:31', 1, 6),
(142, 14, '2015-03-21 04:08:32', 1, 6),
(143, 15, '2015-03-21 04:08:32', 1, 6),
(144, 14, '2015-03-21 04:08:32', 1, 6),
(145, 15, '2015-03-21 04:08:33', 1, 6),
(146, 14, '2015-03-21 04:08:33', 1, 6),
(147, 15, '2015-03-21 04:08:33', 1, 6),
(148, 14, '2015-03-21 04:08:34', 1, 6),
(149, 15, '2015-03-21 04:08:34', 1, 6),
(150, 18, '2015-03-21 04:09:28', 1, 5),
(151, 19, '2015-03-21 04:09:29', 1, 5),
(152, 14, '2015-03-21 04:10:21', 1, 6),
(153, 15, '2015-03-21 04:10:21', 1, 6),
(154, 14, '2015-03-21 04:12:31', 1, 6),
(155, 15, '2015-03-21 04:12:31', 1, 6),
(156, 14, '2015-03-21 04:12:34', 1, 6),
(157, 15, '2015-03-21 04:12:34', 1, 6),
(158, 14, '2015-03-21 04:12:43', 1, 6),
(159, 15, '2015-03-21 04:12:43', 1, 6),
(160, 14, '2015-03-21 04:12:50', 1, 6),
(161, 15, '2015-03-21 04:12:50', 1, 6),
(162, 14, '2015-03-21 04:12:52', 1, 6),
(163, 15, '2015-03-21 04:12:52', 1, 6),
(164, 14, '2015-03-21 04:14:51', 1, 6),
(165, 15, '2015-03-21 04:14:51', 1, 6),
(166, 5, '2015-03-21 04:24:33', 1, 3),
(167, 14, '2015-03-21 04:46:39', 1, 6),
(168, 15, '2015-03-21 04:46:39', 1, 6),
(169, 14, '2015-03-21 04:46:39', 1, 6),
(170, 15, '2015-03-21 04:46:40', 1, 6),
(171, 14, '2015-03-21 04:46:40', 1, 6),
(172, 15, '2015-03-21 04:46:40', 1, 6),
(173, 14, '2015-03-21 04:46:41', 1, 6),
(174, 15, '2015-03-21 04:46:41', 1, 6),
(175, 14, '2015-03-21 04:46:41', 1, 6),
(176, 15, '2015-03-21 04:46:41', 1, 6),
(177, 14, '2015-03-21 04:46:42', 1, 6),
(178, 15, '2015-03-21 04:46:42', 1, 6),
(179, 14, '2015-03-21 04:46:42', 1, 6),
(180, 15, '2015-03-21 04:46:42', 1, 6),
(181, 14, '2015-03-21 04:46:43', 1, 6),
(182, 15, '2015-03-21 04:46:43', 1, 6),
(183, 1, '2015-03-21 05:05:55', 1, 1),
(184, 2, '2015-03-21 05:05:55', 1, 2),
(185, 3, '2015-03-21 05:05:55', 1, 2),
(186, 7, '2015-03-21 05:05:55', 1, 2),
(187, 11, '2015-03-21 05:05:55', 1, 3),
(188, 20, '2015-03-21 05:12:09', 1, 5),
(189, 20, '2015-03-21 05:14:49', 1, 5),
(190, 20, '2015-03-21 05:18:25', 1, 5),
(191, 20, '2015-03-21 05:21:31', 1, 5),
(192, 18, '2015-03-21 05:22:43', 1, 5),
(193, 19, '2015-03-21 05:22:43', 1, 5),
(194, 14, '2015-03-21 05:26:16', 1, 6),
(195, 15, '2015-03-21 05:26:16', 1, 6),
(196, 18, '2015-03-21 05:27:06', 1, 5),
(197, 19, '2015-03-21 05:27:06', 1, 5),
(198, 18, '2015-03-21 05:30:30', 1, 5),
(199, 19, '2015-03-21 05:30:30', 1, 5),
(200, 18, '2015-03-21 05:31:54', 1, 5),
(201, 19, '2015-03-21 05:31:54', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `AuthenticationTypes`
--

CREATE TABLE `AuthenticationTypes` (
`authTypeID` int(10) unsigned NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AuthenticationTypes`
--

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `authTypeConcreteCookieMap`
--

CREATE TABLE `authTypeConcreteCookieMap` (
`ID` int(10) unsigned NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BannedWords`
--

CREATE TABLE `BannedWords` (
`bwID` int(10) unsigned NOT NULL,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BannedWords`
--

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockFeatureAssignments`
--

CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BlockFeatureAssignments`
--

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(149, 2, 16, 1),
(159, 1, 57, 2),
(160, 1, 57, 2),
(161, 1, 57, 2),
(162, 1, 57, 2),
(163, 1, 57, 2),
(163, 2, 57, 2),
(164, 1, 57, 2),
(165, 2, 99, 4),
(165, 3, 99, 4),
(165, 4, 99, 4),
(165, 5, 99, 4),
(165, 6, 99, 4),
(165, 7, 99, 4),
(165, 8, 99, 4),
(165, 9, 99, 4),
(165, 10, 99, 4),
(165, 11, 99, 4),
(165, 12, 99, 4);

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockRelations`
--

CREATE TABLE `BlockRelations` (
`brID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 11, 10, 'DUPLICATE'),
(2, 15, 12, 'DUPLICATE'),
(3, 22, 21, 'DUPLICATE'),
(4, 24, 19, 'DUPLICATE'),
(5, 102, 100, 'DUPLICATE'),
(6, 104, 100, 'DUPLICATE'),
(7, 105, 102, 'DUPLICATE'),
(8, 106, 100, 'DUPLICATE'),
(9, 108, 100, 'DUPLICATE'),
(10, 109, 104, 'DUPLICATE'),
(11, 133, 128, 'DUPLICATE'),
(12, 134, 100, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

CREATE TABLE `Blocks` (
`bID` int(10) unsigned NOT NULL,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjEiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIwNzoiPGRpdiBzdHlsZT0icGFkZGluZzogNDBweDsgdGV4dC1hbGlnbjogY2VudGVyIj4gPGlmcmFtZSB3aWR0aD0iODUzIiBoZWlnaHQ9IjQ4MCIgc3JjPSIvL3d3dy55b3V0dWJlLmNvbS9lbWJlZC9WQi1SNzF6azA2VSIgZnJhbWVib3JkZXI9IjAiIGFsbG93ZnVsbHNjcmVlbj48L2lmcmFtZT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+Ijt9'),
(2, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 9, 1, NULL),
(3, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 10, 1, NULL),
(4, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjQiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQSI7fQ=='),
(5, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQiI7fQ=='),
(6, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 7, 1, NULL),
(7, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 6, 1, NULL),
(8, '', '2015-03-21 03:49:56', '2015-03-21 03:49:56', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjgiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQyI7fQ=='),
(9, '', '2015-03-21 03:49:59', '2015-03-21 03:49:59', NULL, '0', 2, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjM1OiJidENvcmVQYWdlVHlwZUNvbXBvc2VyQ29udHJvbE91dHB1dCI7czoyNToicHRDb21wb3Nlck91dHB1dENvbnRyb2xJRCI7czoxOiIxIjt9'),
(10, '', '2015-03-21 03:56:59', '2015-03-21 03:56:59', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyMjc6Ijx1bCBjbGFzcz0ic29jaWFsLWJ1dHRvbnMiPiAgCTxsaSBjbGFzcz0idHdpdHRlciI+PGEgaHJlZj0iIyI+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSI3IiBhbHQ9IlR3aXR0ZXIiIHN0eWxlPSIiIC8+PC9hPjwvbGk+ICAJPGxpIGNsYXNzPSJmYWNlYm9vayI+PGEgaHJlZj0iIyI+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSIyIiBhbHQ9IkZhY2VyYm9vayIgc3R5bGU9IiIgLz48L2E+PC9saT4gIDwvdWw+Ijt9'),
(11, '', '2015-03-21 03:57:59', '2015-03-21 03:57:59', NULL, '1', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjExIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMjY6Ijx1bCBjbGFzcz0ic29jaWFsLWJ1dHRvbnMiPiAgCSAgPGxpIGNsYXNzPSJ0d2l0dGVyIj48YSBocmVmPSJodHRwczovL3R3aXR0ZXIuY29tL2NvbmNyZXRlNWphcGFuIiB0YXJnZXQ9Il9ibGFuayI+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSI3IiBhbHQ9IlR3aXR0ZXIiIHN0eWxlPSIiIC8+PC9hPjwvbGk+CSAgPGxpIGNsYXNzPSJmYWNlYm9vayI+PGEgaHJlZj0iaHR0cHM6Ly9mYWNlYm9vay5jb20vY29uY3JldGU1amFwYW4iIHRhcmdldD0iX2JsYW5rIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjIiIGFsdD0iRmFjZXJib29rIiBzdHlsZT0iIiAvPjwvYT48L2xpPjwvdWw+Ijt9'),
(12, '', '2015-03-21 03:58:31', '2015-03-21 03:58:44', 'header.php', '0', 32, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czo2OiLmpJzntKIiO3M6MTA6ImJ1dHRvblRleHQiO3M6Njoi5qSc57SiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InBvc3RUb19jSUQiO3M6MDoiIjtzOjEwOiJyZXN1bHRzVVJMIjtzOjA6IiI7fQ=='),
(14, '', '2015-03-21 03:59:34', '2015-03-21 03:59:44', '', '0', 32, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjE0IjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czo2OiLmpJzntKIiO3M6MTA6ImJ1dHRvblRleHQiO3M6Njoi5qSc57SiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InBvc3RUb19jSUQiO3M6MDoiIjtzOjEwOiJyZXN1bHRzVVJMIjtzOjA6IiI7fQ=='),
(15, '', '2015-03-21 04:02:05', '2015-03-21 04:02:05', 'header.php', '1', 32, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjE1IjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czo2OiLmpJzntKIiO3M6MTA6ImJ1dHRvblRleHQiO3M6Njoi5qSc57SiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InBvc3RUb19jSUQiO2k6MTU0O3M6MTA6InJlc3VsdHNVUkwiO3M6MDoiIjt9'),
(16, '', '2015-03-21 04:02:57', '2015-03-21 04:02:57', NULL, '0', 27, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIxNiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiI0IjtzOjEwOiJmT25zdGF0ZUlEIjtzOjE6IjAiO3M6ODoibWF4V2lkdGgiO2k6MDtzOjk6Im1heEhlaWdodCI7aTowO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIxIjtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(17, '', '2015-03-21 04:03:44', '2015-03-21 04:03:44', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxMjI6IjxwIGNsYXNzPSJ0ZWwgcmlnaHQiPiAgCTxjb25jcmV0ZS1waWN0dXJlIGZJRD0iNiIgYWx0PSLjgZTkuojntITjg7vjgYrllY/jgYTlkIjjgo/jgZvjga/jgIEwNi0zMDMzLTg4ODgiIHN0eWxlPSIiIC8+ICA8L3A+Ijt9'),
(18, '', '2015-03-21 04:05:21', '2015-03-21 04:05:21', NULL, '0', 33, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE4IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7fQ=='),
(19, '', '2015-03-21 04:05:42', '2015-03-21 04:05:55', 'global_nav.php', '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIxOSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6NDoibm9uZSI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6NjoiZW5vdWdoIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7aTowO3M6MjM6ImRpc3BsYXlVbmF2YWlsYWJsZVBhZ2VzIjtpOjA7fQ=='),
(20, '', '2015-03-21 04:10:37', '2015-03-21 04:10:37', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4MToiPGgxPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMTgiIGFsdD0iQW5ub3VuY2VtZW5044CA44GK55+l44KJ44GbIiBzdHlsZT0iIiAvPjwvaDE+Ijt9'),
(21, '', '2015-03-21 04:14:14', '2015-03-21 04:14:14', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4NjQ6IjxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjMiIGFsdD0i44K344Kn44OV44Gu44GK44GZ44GZ44KBIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjIiIGFsdD0i44OR44O844OG44Kj44O844OX44Op44OzIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjAiIGFsdD0i5a2j56+A6ZmQ5a6a44K544Kk44O844OEIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxoMz48aW1nIHNyYz0iaW1hZ2VzL2J1c2luZXNzX2hvdXJzX3RpdGxlLnBuZyIgYWx0PSLllrbmpa3mmYLplpPjga7jgZTmoYjlhoUiPjwvaDM+ICA8dGFibGUgY2xhc3M9InR3ZWx2ZSI+ICA8dGJvZHk+ICA8dHI+ICAJPHRoPiAgCQnjg6njg7Pjg4EgIAk8L3RoPiAgCTx0ZD4gIAkJMTEgOiAzMOOAnDE0IDogMzDvvIhMLk8xNO+8mjAw77yJICAJPC90ZD4gIDwvdHI+ICA8dHI+ICAJPHRoPiAgCQnjg4fjgqPjg4rjg7wgIAk8L3RoPiAgCTx0ZD4gIAkJMTfvvJowMOOAnDIz77yaMDDvvIhMLk8yMu+8mjAw77yJICAJPC90ZD4gIDwvdHI+ICA8dHI+ICAJPHRoPiAgCQnlrprkvJHml6UgIAk8L3RoPiAgCTx0ZD4gIAkJ54Gr5puc5pelICAJPC90ZD4gIDwvdHI+ICA8L3Rib2R5PiAgPC90YWJsZT4gIDxoMz48aW1nIHNyYz0iaW1hZ2VzL2FjY2Vzc19tYXBfdGl0bGUucG5nIiBhbHQ9IuOCouOCr+OCu+OCuSI+PC9oMz4gIDxwPiAgCeOAkjU0MS0wMDg4ICAJPGJyPiAgCeWkp+mYquW6nOWkp+mYquW4guS4reWkruWMuuW5s+mHjueUujgtNC0yICAJPGJyPiAgCVRFTCA6IDA2LTMwMzMtODg4OCAgPC9wPiI7fQ=='),
(22, '', '2015-03-21 04:15:04', '2015-03-21 04:15:04', NULL, '1', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4OTc6IjxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjMiIGFsdD0i44K344Kn44OV44Gu44GK44GZ44GZ44KBIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjIiIGFsdD0i44OR44O844OG44Kj44O844OX44Op44OzIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxwPiAgCTxhIGhyZWY9IiMiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMjAiIGFsdD0i5a2j56+A6ZmQ5a6a44K544Kk44O844OEIiBzdHlsZT0iIiAvPjwvYT4gIDwvcD4gIDxoMz48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE5IiBhbHQ9IuWWtualreaZgumWk+OBruOBlOahiOWGhSIgc3R5bGU9IiIgLz48L2gzPiAgPHRhYmxlIGNsYXNzPSJ0d2VsdmUiPiAgPHRib2R5PiAgPHRyPiAgCTx0aD4gIAkJICAJCeODqeODs+ODgSAgCTwvdGg+ICAJPHRkPiAgCQkgIAkJMTEgOiAzMOOAnDE0IDogMzDvvIhMLk8xNO+8mjAw77yJICAJPC90ZD4gIDwvdHI+ICA8dHI+ICAJPHRoPiAgCQkgIAkJ44OH44Kj44OK44O8ICAJPC90aD4gIAk8dGQ+ICAJCSAgCQkxN++8mjAw44CcMjPvvJowMO+8iEwuTzIy77yaMDDvvIkgIAk8L3RkPiAgPC90cj4gIDx0cj4gIAk8dGg+ICAJCSAgCQnlrprkvJHml6UgIAk8L3RoPiAgCTx0ZD4gIAkJICAJCeeBq+abnOaXpSAgCTwvdGQ+ICA8L3RyPiAgPC90Ym9keT4gIDwvdGFibGU+ICA8aDM+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSIyNCIgYWx0PSLjgqLjgq/jgrvjgrkiIHN0eWxlPSIiIC8+PC9oMz4gIDxwPiAgCSAgCeOAkjU0MS0wMDg4ICAJICAJPGJyPiAgCSAgCeWkp+mYquW6nOWkp+mYquW4guS4reWkruWMuuW5s+mHjueUujgtNC0yICAJICAJPGJyPiAgCSAgCVRFTCA6IDA2LTMwMzMtODg4OCAgPC9wPiI7fQ=='),
(23, '', '2015-03-21 04:16:10', '2015-03-21 04:16:10', NULL, '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIyMyI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6MTk6InJlbGV2YW50X2JyZWFkY3J1bWIiO3M6MjA6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzIjtzOjY6ImVub3VnaCI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO2k6MDtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7aTowO30='),
(24, '', '2015-03-21 04:16:30', '2015-03-21 04:55:33', 'global_nav.php', '1', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIyNCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czo0OiJub25lIjtzOjIwOiJkaXNwbGF5U3ViUGFnZUxldmVscyI7czo2OiJlbm91Z2giO3M6MjM6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzTnVtIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlVbmF2YWlsYWJsZVBhZ2VzIjtzOjE6IjAiO30='),
(25, '', '2015-03-21 04:16:49', '2015-03-21 04:16:49', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czoxODoiYnRDb3JlU3RhY2tEaXNwbGF5IjtzOjQ6InN0SUQiO3M6MzoiMTU1Ijt9'),
(26, '', '2015-03-21 04:19:50', '2015-03-21 04:19:50', NULL, '0', 3, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRDb3JlU2NyYXBib29rRGlzcGxheSI7czoxMToiYk9yaWdpbmFsSUQiO3M6MjoiMjIiO30='),
(27, '', '2015-03-21 04:21:10', '2015-03-21 04:21:10', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNzg6Ijx1bCBjbGFzcz0ibGluay1saXN0Ij4gIDxsaT48YSBocmVmPSIjIj7jgrnjgr/jg4Pjg5Xli5/pm4Y8L2E+PC9saT4gIDxsaT48YSBocmVmPSIjIj7jg5fjg6njgqTjg5Djgrfjg7zjg53jg6rjgrfjg7w8L2E+PC9saT4gIDxsaT48YSBocmVmPSIjIj7jgrXjgqTjg4jjg57jg4Pjg5c8L2E+PC9saT4gIDwvdWw+ICAiO30='),
(54, '', '2015-03-21 04:24:16', '2015-03-21 04:24:16', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo4MToiPGgxPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMTgiIGFsdD0iQW5ub3VuY2VtZW5044CA44GK55+l44KJ44GbIiBzdHlsZT0iIiAvPjwvaDE+Ijt9'),
(55, '', '2015-03-21 04:25:42', '2015-03-21 04:25:42', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI1OntzOjM6ImJJRCI7czoyOiI1NSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjI6IjIwIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7czozOiIxNTgiO3M6NToiY1RoaXMiO3M6MToiMSI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMSI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjEiO3M6ODoicGFnaW5hdGUiO2k6MTtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czo0OiJwdElEIjtpOjA7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjA6IiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),
(56, '', '2015-03-21 04:28:40', '2015-03-21 04:28:40', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU2IjtzOjk6IgAqAF90YWJsZSI7czoxODoiYnRDb3JlU3RhY2tEaXNwbGF5IjtzOjQ6InN0SUQiO3M6MzoiMTU1Ijt9'),
(57, '', '2015-03-21 04:29:27', '2015-03-21 04:29:27', NULL, '0', 27, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiI1NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoyOiIxOCI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MjU6IkFubm91bmNlbWVudCDjgYrnn6XjgonjgZsiO3M6NToidGl0bGUiO3M6MjU6IkFubm91bmNlbWVudCDjgYrnn6XjgonjgZsiO30='),
(58, '', '2015-03-21 04:29:44', '2015-03-21 04:37:11', NULL, '0', 2, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU4IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiNSI7fQ=='),
(60, '', '2015-03-21 04:31:30', '2015-03-21 04:31:30', NULL, '0', 18, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjYwIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtpOjA7czo5OiJ0aXRsZVRleHQiO3M6MjM6Ilvjg5rjg7zjgrjjgr/jgqTjg4jjg6tdIjt9'),
(61, '', '2015-03-21 04:32:38', '2015-03-21 04:33:17', '', '0', 16, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjYxIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE4OiJycHZfcGFnZURhdGVQdWJsaWMiO3M6MTg6ImF0dHJpYnV0ZVRpdGxlVGV4dCI7czowOiIiO3M6MTA6ImRpc3BsYXlUYWciO3M6NzoiYWRkcmVzcyI7czoxMDoiZGF0ZUZvcm1hdCI7czoxODoiWeW5tG3mnIhk5pelIGg6aTphIjtzOjE1OiJ0aHVtYm5haWxIZWlnaHQiO3M6MzoiMjUwIjtzOjE0OiJ0aHVtYm5haWxXaWR0aCI7czozOiIyNTAiO30='),
(71, '', '2015-03-21 04:38:35', '2015-03-21 04:38:35', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjcxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo1ODoiPHA+44OL44Ol44O844K544Gv44GT44Gu44KI44GG44Gr6KGo56S644GV44KM44G+44GZ44CCPC9wPiI7fQ=='),
(78, '', '2015-03-21 04:39:26', '2015-03-21 04:39:26', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo0MzoiPHA+5b+Y5bm05Lya44Oh44OL44Ol44O844Gu44GK55+l44KJ44GbPC9wPiI7fQ=='),
(85, '', '2015-03-21 04:40:05', '2015-03-21 04:40:05', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo0MzoiPHA+5a2j56+A6ZmQ5a6a44K544Kk44O844OE44GM55m75aC077yBPC9wPiI7fQ=='),
(87, '', '2015-03-21 04:40:22', '2015-03-21 04:40:22', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijg3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo0MzoiPHA+5a2j56+A6ZmQ5a6a44K544Kk44O844OE44GM55m75aC077yBPC9wPiI7fQ=='),
(95, '', '2015-03-21 04:41:30', '2015-03-21 04:41:30', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo3NToiPHA+MjAxNSDjgq/jg6rjgrnjg57jgrnjg7vjg4fjgqPjg4rjg7zjga7jgZTkuojntITjgpLjga/jgZjjgoHjgb7jgZfjgZ88L3A+Ijt9'),
(96, '', '2015-03-21 04:43:18', '2015-03-21 04:43:18', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI1OntzOjM6ImJJRCI7czoyOiI5NiI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjUiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjM6IjE1OCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjA6IiI7czoxMzoicGFnZUxpc3RUaXRsZSI7czowOiIiO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIwIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7aTowO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjQ6InB0SUQiO2k6NjtzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6Mzk6IuOBiuefpeOCieOBm+iomOS6i+OBjOOBguOCiuOBvuOBm+OCk+OAgiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),
(97, '', '2015-03-21 04:44:09', '2015-03-21 04:44:09', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo3NDoiPHAgY2xhc3M9InJlYWQtbW9yZSByaWdodCI+PGEgaHJlZj0ie0NDTTpDSURfMTU4fSI+44KC44Gj44Go6KaL44KLPC9hPjwvcD4iO30='),
(99, '', '2015-03-21 04:45:45', '2015-03-21 04:45:45', NULL, '0', 27, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiI5OSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoyOiIyMSI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtpOjA7czo5OiJtYXhIZWlnaHQiO2k6MDtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO2k6MDtzOjc6ImFsdFRleHQiO3M6MjE6IuODqeODs+ODgeODoeODi+ODpeODvCI7czo1OiJ0aXRsZSI7czowOiIiO30='),
(100, '', '2015-03-21 04:50:15', '2015-03-21 04:50:15', NULL, '0', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDAiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIzMSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMzIiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxNToi44OU44K244Op44Oz44OBIjtzOjIwOiJmaWVsZF82X3RleHRib3hfdGV4dCI7czoyMToi44OU44OD44OE44Kh44Op44Oz44OBIjtzOjIwOiJmaWVsZF83X3RleHRib3hfdGV4dCI7czozOiI5ODAiO3M6MjA6ImZpZWxkXzlfdGV4dGJveF90ZXh0IjtzOjM6IjIwMCI7czoyMToiZmllbGRfMTBfdGV4dGJveF90ZXh0IjtzOjIyOiLjgrPjg7zjg5Ljg7wgb3Ig57SF6Iy2IjtzOjIxOiJmaWVsZF8xMV90ZXh0Ym94X3RleHQiO3M6MzoiMzUwIjtzOjIxOiJmaWVsZF8xMl90ZXh0Ym94X3RleHQiO3M6MzY6IuOCq+ODleOCp+ODqeODhuOAgeOCqOOCueODl+ODrOODg+OCvSI7fQ=='),
(101, '', '2015-03-21 04:50:28', '2015-03-21 04:50:28', NULL, '0', 3, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwMSI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjEwMCI7fQ=='),
(102, '', '2015-03-21 04:51:24', '2015-03-21 04:51:24', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDIiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyOSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMzAiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoyMToi44OR44K544K/44Op44Oz44OH44KjIjtzOjIwOiJmaWVsZF82X3RleHRib3hfdGV4dCI7czoxODoi44OR44K544K/44Op44Oz44OBIjtzOjIwOiJmaWVsZF83X3RleHRib3hfdGV4dCI7czo1OiIxLDEwMCI7czoyMDoiZmllbGRfOV90ZXh0Ym94X3RleHQiO3M6MzoiMjAwIjtzOjIxOiJmaWVsZF8xMF90ZXh0Ym94X3RleHQiO3M6MjI6IuOCs+ODvOODkuODvCBvciDntIXojLYiO3M6MjE6ImZpZWxkXzExX3RleHRib3hfdGV4dCI7czozOiIzNTAiO3M6MjE6ImZpZWxkXzEyX3RleHRib3hfdGV4dCI7czozNjoi44Kr44OV44Kn44Op44OG44CB44Ko44K544OX44Os44OD44K9Ijt9'),
(103, '', '2015-03-21 04:51:33', '2015-03-21 04:51:33', NULL, '0', 3, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwMyI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjEwMCI7fQ=='),
(104, '', '2015-03-21 04:52:21', '2015-03-21 04:52:21', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDQiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyNSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMjciO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxOToi44Kz44O844K544Op44Oz44OBQSI7czoyMDoiZmllbGRfNl90ZXh0Ym94X3RleHQiO3M6OTQ6IuOCueODvOODl++8i+OCouODs+ODhuOCo+ODkeOCueODiO+8i+acrOaXpeOBruODoeOCpOODs++8iOOBiuiCiSBvciDjgYrprZrvvInvvIvoh6rlrrboo73jg5Hjg7MiO3M6MjA6ImZpZWxkXzdfdGV4dGJveF90ZXh0IjtzOjM6Ijk4MCI7czoyMDoiZmllbGRfOV90ZXh0Ym94X3RleHQiO3M6MzoiMjAwIjtzOjIxOiJmaWVsZF8xMF90ZXh0Ym94X3RleHQiO3M6MjI6IuOCs+ODvOODkuODvCBvciDntIXojLYiO3M6MjE6ImZpZWxkXzExX3RleHRib3hfdGV4dCI7czozOiIzNTAiO3M6MjE6ImZpZWxkXzEyX3RleHRib3hfdGV4dCI7czozNjoi44Kr44OV44Kn44Op44OG44CB44Ko44K544OX44Os44OD44K9Ijt9'),
(105, '', '2015-03-21 04:52:33', '2015-03-21 04:52:33', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDUiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyOSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMzAiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoyMToi44OR44K544K/44Op44Oz44OH44KjIjtzOjIwOiJmaWVsZF82X3RleHRib3hfdGV4dCI7czo4Mjoi44K144Op44OA77yL5pys5pel44Gu44OR44K544K/77yIMueorumhnuOBi+OCieOBsuOBqOOBpOOAgeOBiumBuOOBs+OBj+OBoOOBleOBhO+8iSI7czoyMDoiZmllbGRfN190ZXh0Ym94X3RleHQiO3M6NToiMSwxMDAiO3M6MjA6ImZpZWxkXzlfdGV4dGJveF90ZXh0IjtzOjM6IjIwMCI7czoyMToiZmllbGRfMTBfdGV4dGJveF90ZXh0IjtzOjIyOiLjgrPjg7zjg5Ljg7wgb3Ig57SF6Iy2IjtzOjIxOiJmaWVsZF8xMV90ZXh0Ym94X3RleHQiO3M6MzoiMzUwIjtzOjIxOiJmaWVsZF8xMl90ZXh0Ym94X3RleHQiO3M6MzY6IuOCq+ODleOCp+ODqeODhuOAgeOCqOOCueODl+ODrOODg+OCvSI7fQ=='),
(106, '', '2015-03-21 04:52:44', '2015-03-21 04:52:45', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDYiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIzMSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMzIiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxNToi44OU44K244Op44Oz44OBIjtzOjIwOiJmaWVsZF82X3RleHRib3hfdGV4dCI7czo4NToi44K144Op44OA77yL5pys5pel44Gu44OU44OD44OE44Kh77yIMueorumhnuOBi+OCieOBsuOBqOOBpOOAgeOBiumBuOOBs+OBj+OBoOOBleOBhO+8iSI7czoyMDoiZmllbGRfN190ZXh0Ym94X3RleHQiO3M6MzoiOTgwIjtzOjIwOiJmaWVsZF85X3RleHRib3hfdGV4dCI7czozOiIyMDAiO3M6MjE6ImZpZWxkXzEwX3RleHRib3hfdGV4dCI7czoyMjoi44Kz44O844OS44O8IG9yIOe0heiMtiI7czoyMToiZmllbGRfMTFfdGV4dGJveF90ZXh0IjtzOjM6IjM1MCI7czoyMToiZmllbGRfMTJfdGV4dGJveF90ZXh0IjtzOjM2OiLjgqvjg5Xjgqfjg6njg4bjgIHjgqjjgrnjg5fjg6zjg4Pjgr0iO30='),
(107, '', '2015-03-21 04:52:54', '2015-03-21 04:52:54', NULL, '0', 3, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEwNyI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjEwMCI7fQ=='),
(108, '', '2015-03-21 04:53:45', '2015-03-21 04:53:45', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDgiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyNiI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMjgiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxOToi44Kz44O844K544Op44Oz44OBQiI7czoyMDoiZmllbGRfNl90ZXh0Ym94X3RleHQiO3M6MTYzOiLjgrnjg7zjg5fvvIvjgqLjg7Pjg4bjgqPjg5Hjgrnjg4jvvIvmnKzml6Xjga7jg5Hjgrnjgr/vvIvmnKzml6Xjga7jg6HjgqTjg7PvvIjjgYrogokgb3Ig44GK6a2a77yJ77yL6Ieq5a626KO944OR44Oz77yL5pys5pel44Gu44OJ44Or44OB44Kn77yL44Kz44O844OS44O8b3LntIXojLYgIjtzOjIwOiJmaWVsZF83X3RleHRib3hfdGV4dCI7czo1OiIyLDg1MCI7czoyMDoiZmllbGRfOV90ZXh0Ym94X3RleHQiO3M6MzoiMjAwIjtzOjIxOiJmaWVsZF8xMF90ZXh0Ym94X3RleHQiO3M6MjI6IuOCs+ODvOODkuODvCBvciDntIXojLYiO3M6MjE6ImZpZWxkXzExX3RleHRib3hfdGV4dCI7czozOiIzNTAiO3M6MjE6ImZpZWxkXzEyX3RleHRib3hfdGV4dCI7czozNjoi44Kr44OV44Kn44Op44OG44CB44Ko44K544OX44Os44OD44K9Ijt9'),
(109, '', '2015-03-21 04:53:59', '2015-03-21 04:53:59', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMDkiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyNSI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMjciO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxOToi44Kz44O844K544Op44Oz44OBQSI7czoyMDoiZmllbGRfNl90ZXh0Ym94X3RleHQiO3M6OTQ6IuOCueODvOODl++8i+OCouODs+ODhuOCo+ODkeOCueODiO+8i+acrOaXpeOBruODoeOCpOODs++8iOOBiuiCiSBvciDjgYrprZrvvInvvIvoh6rlrrboo73jg5Hjg7MiO3M6MjA6ImZpZWxkXzdfdGV4dGJveF90ZXh0IjtzOjU6IjEsODUwIjtzOjIwOiJmaWVsZF85X3RleHRib3hfdGV4dCI7czozOiIyMDAiO3M6MjE6ImZpZWxkXzEwX3RleHRib3hfdGV4dCI7czoyMjoi44Kz44O844OS44O8IG9yIOe0heiMtiI7czoyMToiZmllbGRfMTFfdGV4dGJveF90ZXh0IjtzOjM6IjM1MCI7czoyMToiZmllbGRfMTJfdGV4dGJveF90ZXh0IjtzOjM2OiLjgqvjg5Xjgqfjg6njg4bjgIHjgqjjgrnjg5fjg6zjg4Pjgr0iO30='),
(110, '', '2015-03-21 04:54:45', '2015-03-21 04:54:45', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMCI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZVN0YWNrRGlzcGxheSI7czo0OiJzdElEIjtzOjM6IjE2NSI7fQ=='),
(111, '', '2015-03-21 04:55:05', '2015-03-21 04:55:05', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExMSI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZVN0YWNrRGlzcGxheSI7czo0OiJzdElEIjtzOjM6IjE1NSI7fQ=='),
(112, '', '2015-03-21 04:56:40', '2015-03-21 04:56:40', NULL, '0', 38, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjExMiI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRZb3VUdWJlIjtzOjU6InRpdGxlIjtzOjk6IuOCq+ODrOODvCI7czo4OiJ2aWRlb1VSTCI7czo0MzoiaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1IMzVUTHA4dDNiVSI7czo3OiJ2SGVpZ2h0IjtzOjM6IjM0NCI7czo2OiJ2V2lkdGgiO3M6MzoiNDI1IjtzOjc6InZQbGF5ZXIiO2k6MTt9'),
(125, '', '2015-03-21 04:59:50', '2015-03-21 04:59:50', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjE6IjxoMT7jg6Hjg4vjg6Xjg7w8L2gxPiI7fQ=='),
(126, '', '2015-03-21 05:01:16', '2015-03-21 05:01:16', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyNiI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZVN0YWNrRGlzcGxheSI7czo0OiJzdElEIjtzOjM6IjE1NSI7fQ=='),
(127, '', '2015-03-21 05:01:55', '2015-03-21 05:16:34', 'linklist.php', '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjM6IjEyNyI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjY6ImN1c3RvbSI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjM6IjE2NiI7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6NDoibm9uZSI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO2k6MDtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7aTowO30='),
(128, '', '2015-03-21 05:04:33', '2015-03-21 05:04:33', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyOCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjQ6IjxoMT7jg6Hjg4vjg6Xjg7zlkI08L2gxPiI7fQ=='),
(129, '', '2015-03-21 05:05:11', '2015-03-21 05:05:11', NULL, '0', 3, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEyOSI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjEwMCI7fQ=='),
(130, '', '2015-03-21 05:06:32', '2015-03-21 05:06:32', NULL, '0', 2, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjM6IjEzMCI7czo5OiIAKgBfdGFibGUiO3M6MzU6ImJ0Q29yZVBhZ2VUeXBlQ29tcG9zZXJDb250cm9sT3V0cHV0Ijt9'),
(131, '', '2015-03-21 05:11:38', '2015-03-21 05:11:38', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjE6IjxoMT7jg6Hjg4vjg6Xjg7w8L2gxPiI7fQ=='),
(132, '', '2015-03-21 05:14:06', '2015-03-21 05:14:06', NULL, '0', 4, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMiI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0Q29yZVN0YWNrRGlzcGxheSI7czo0OiJzdElEIjtzOjM6IjE2NSI7fQ=='),
(133, '', '2015-03-21 05:18:58', '2015-03-21 05:18:58', NULL, '1', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjEzMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTEyOiI8aDE+44OH44Kj44OK44O844Oh44OL44Ol44O8PC9oMT48cD7lvZPlupfjga7mnIDpq5jjga7jgq/jgqrjg6rjg4bjgqPjg7zjga7jg6Hjg4vjg6Xjg7zjgpLntLnku4vjgZfjgb7jgZnjgII8L3A+Ijt9'),
(134, '', '2015-03-21 05:20:01', '2015-03-21 05:20:01', NULL, '1', 39, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czozOiIxMzQiO3M6OToiACoAX3RhYmxlIjtzOjEzOiJidERDTHVuY2hNZW51IjtzOjE3OiJmaWVsZF8yX2ltYWdlX2ZJRCI7czoyOiIyNiI7czoxNzoiZmllbGRfNF9pbWFnZV9mSUQiO3M6MjoiMjgiO3M6MjE6ImZpZWxkXzRfaW1hZ2VfYWx0VGV4dCI7czoxOToi44Kz44O844K544Op44Oz44OBQiI7czoyMDoiZmllbGRfNl90ZXh0Ym94X3RleHQiO3M6MTYzOiLjgrnjg7zjg5fvvIvjgqLjg7Pjg4bjgqPjg5Hjgrnjg4jvvIvmnKzml6Xjga7jg5Hjgrnjgr/vvIvmnKzml6Xjga7jg6HjgqTjg7PvvIjjgYrogokgb3Ig44GK6a2a77yJ77yL6Ieq5a626KO944OR44Oz77yL5pys5pel44Gu44OJ44Or44OB44Kn77yL44Kz44O844OS44O8b3LntIXojLYgIjtzOjIwOiJmaWVsZF83X3RleHRib3hfdGV4dCI7czo1OiIyLDg1MCI7czoyMDoiZmllbGRfOV90ZXh0Ym94X3RleHQiO3M6MzoiMjAwIjtzOjIxOiJmaWVsZF8xMF90ZXh0Ym94X3RleHQiO3M6MjI6IuOCs+ODvOODkuODvCBvciDntIXojLYiO3M6MjE6ImZpZWxkXzExX3RleHRib3hfdGV4dCI7czozOiIzNTAiO3M6MjE6ImZpZWxkXzEyX3RleHRib3hfdGV4dCI7czozNjoi44Kr44OV44Kn44Op44OG44CB44Ko44K544OX44Os44OD44K9Ijt9'),
(135, '', '2015-03-21 05:23:25', '2015-03-21 05:24:05', '', '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI1OntzOjM6ImJJRCI7czozOiIxMzUiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7czoxOiI1IjtzOjc6Im9yZGVyQnkiO3M6MTE6ImRpc3BsYXlfYXNjIjtzOjk6ImNQYXJlbnRJRCI7czozOiIxNjYiO3M6NToiY1RoaXMiO3M6MToiMSI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMSI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czo0OiJwdElEIjtpOjc7czo0OiJwZklEIjtpOjA7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjA6IiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjA7fQ=='),
(157, '', '2015-03-21 05:26:34', '2015-03-21 05:26:34', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTg3MzoiPGgxPuOCquODquODvOODluOBruawl+aMgeOBoTwvaDE+PGgyPuacrOWgtOOBruefs+eqr+ODiuODneODquODlOODg+ODhOOCoeOCkuOBnOOBsuOBqOOCguOBlOiznuWRs+OBj+OBoOOBleOBhOOAgjwvaDI+PHA+IAnlpKfmraPmmYLku6Pjgavlu7rjgabjgonjgozjgZ/otaTjg6zjg7Pjgqzjga7lgInluqvjgpLmlLnoo4XjgZfjgZ/jgqvjgrjjg6XjgqLjg6vjg7vjgqTjgr/jg6rjgqLjg7Pjg6zjgrnjg4jjg6njg7PjgII8YnI+IAnokL3jgaHnnYDjgYTjgZ/pm7Dlm7LmsJfjga7lupflhoXjgafmnKzloLTjga7nn7Pnqq/jgafnhLzjgY3kuIrjgZLjgZ/mnKzmoLznmoTjgarjg4rjg53jg6rjg5Tjg4Pjg4TjgqLjgpLjgYrmpb3jgZfjgb/jgY/jgaDjgZXjgYTjgII8L3A+PHA+IAnjgb7jgZ/jgIHlvZPlupfjga7lpZHntITovrLlrrbjgYzmoL3ln7njgZfjgabjgYTjgovjgI7mlrDprq7jgI/jgI7lronlv4PjgI/jgI7lronlhajjgI/jga7nhKHovrLolqzph47oj5zjgpLkvb/jgaPjgZ/jg6Hjg4vjg6Xjg7zjgoLlpJrmlbDjgZTnlKjmhI/jgZfjgabjgYrjgorjgb7jgZnjgII8L3A+PHA+IAk8Y29uY3JldGUtcGljdHVyZSBmSUQ9IjMzIiBhbHQ9InRyYXR0b3JpYSBTZW5zYXppb25lIGRpIE9saXZlIiBzdHlsZT0iZmxvYXQ6IGxlZnQ7IG1hcmdpbjogMTBweDsiIC8+5bCR5Lq65pWw44Gn44Gu44OX44Op44Kk44OZ44O844OI44Gq44OR44O844OG44Kj44O844GL44KJ5aSn5Lq65pWw44Gn44Gu6LOR44KE44GL44Gq44OR44O844OG44Kj44O844Gq44Gp44KC5om/44Gj44Gm44GK44KK44G+44GZ44CCPGJyPiAJ44GK6KqV55Sf5pel44OR44O844OG44Kj44O844KE44Oe44Oe5Y+L44Gu44Op44Oz44OB44Gq44Gp44Gr5pyA6YGp44Gq44GK5omL6Lu944Op44Oz44OB44OX44Op44Oz44CCPGJyPiAJ57WQ5ama5byP44Gu5LqM5qyh5Lya44KE5paw5bm05Lya44O75b+Y5bm05Lya44Gq44Gp44CB54m55Yil44Gq44OR44O844OG44Kj44O844Gr44Gv44CB44Gh44KH44Gj44Go6LSF5rKi44Gq44OH44Kj44OK44O844OX44Op44Oz44CCPGJyPiAJ5Z+65pys44OX44Op44Oz44Gr44OV44Oq44O844OJ44Oq44Oz44Kv77yI6aOy44G/5pS+6aGM77yJ562J44Gu44Kq44OX44K344On44Oz44KS6L+95Yqg44GZ44KL44GT44Go44KC5Ye65p2l44G+44GZ44Gu44Gn44CB44GK5a6i44GV44G+44Gu44GU5biM5pyb44GZ44KL44OX44Op44Oz44KS44GU55So5oSP44Gn44GN44G+44GZ44CCPGJyPiAJ44G+44Ga44Gv44CB5b2T5bqX44Gu44K544K/44OD44OV44G+44Gn44GK5rCX6Lu944Gr44GK44Gf44Ga44Gt44GP44Gg44GV44GE44CCPGJyPiAJ5b2T5bqX5bCC5bGe44Gu44OX44Op44Oz44OK44O844GM44GK5a6i44GV44G+44Gu44GU6KaB5pyb44KS44KC44Go44Gr5LyB55S744O75o+Q5qGI44O744GK5omL5Lyd44GE44KS44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GZ44CCPGJyPiAJ5paZ55CG44Gu44Kw44Os44O844OJ44Ki44OD44OX44KE44Km44Ko44OH44Kj44Oz44Kw44Kx44O844Kt44O744OQ44O844K544OH44O844Kx44O844Kt44Gq44Gp44CB44K344Kn44OV44Go44OR44OG44Kj44K344Ko44Gr55u46KuH44GX44Gm44GE44Gf44Gg44GP44GT44Go44KC5Y+v6IO944Gn44GZ44CCPGJyPiAJ44G+44Ga44Gv44CB5pys5qC855qE44Gq44OK44Od44Oq44OU44OD44OE44Kh44KS5ZGz44KP44GG44Kr44K444Ol44Ki44Or44O744OR44O844OG44Kj44O844KS5piv6Z2e77yBPGJyPiAJ55qG44GV44G+44Gu44GU5Yip55So44KS5b+D44KI44KK44GK5b6F44Gh44GX44Gm44GK44KK44G+44GZ44CCPC9wPjxoMz7opovlh7rjgZczPC9oMz48aDQ+6KaL5Ye644GXNDwvaDQ+PGg1Puimi+WHuuOBlzU8L2g1PiI7fQ=='),
(165, '', '2015-03-21 05:28:26', '2015-03-21 05:28:26', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE2NSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTc2OiI8aDE+44GK5ZWP44GE5ZCI44KP44GbPC9oMT4gPHA+IAnjg5Hjg7zjg4bjgqPjg7zjg5fjg6njg7Pjga7jgZTnm7joq4fjgoTjgZTkuojntITjgavjgaTjgYTjgabjga/jgIHkuIvoqJjjga7jg5Xjgqnjg7zjg6DjgojjgorjgYrmsJfou73jgavjgYrllY/jgYTlkIjjgo/jgZvjgY/jgaDjgZXjgYTjgIIgPC9wPiI7fQ=='),
(166, '', '2015-03-21 05:29:47', '2015-03-21 05:29:47', NULL, '0', 17, 1, NULL),
(175, '', '2015-03-21 05:31:35', '2015-03-21 05:31:35', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE3NSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NTI6IjxoMT7jg5bjg63jgrA8L2gxPjxwPuODluODreOCsOODmuODvOOCuOOBp+OBmeOAgjwvcD4iO30=');

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

CREATE TABLE `BlockTypes` (
`btID` int(10) unsigned NOT NULL,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 0, 400, 400, 0),
(2, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(3, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(4, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(5, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(6, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(7, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(8, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(9, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(10, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(11, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 0, 0, 800, 350, 0),
(12, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 0, 0, 600, 465, 0),
(13, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 0, 0, 400, 450, 0),
(14, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 0, 0, 370, 175, 0),
(15, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 0, 0, 300, 250, 0),
(16, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 0, 0, 500, 365, 0),
(17, 'form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 0, 0, 420, 430, 0),
(18, 'page_title', 'Page Title', 'Displays a Page''s Title', 0, 0, 0, 0, 0, 0, 0, 400, 200, 0),
(19, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 0, 0, 400, 520, 0),
(20, 'topic_list', 'Topic List', 'Displays a list of your site''s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(21, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(22, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person''s picture.', 0, 0, 0, 0, 0, 0, 0, 450, 560, 0),
(23, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(24, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 0, 0, 400, 320, 0),
(25, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 1, 0, 600, 500, 0),
(26, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 1, 0, 400, 400, 0),
(27, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 0, 0, 400, 550, 0),
(28, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 0, 0, 600, 465, 0),
(29, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 0, 0, 430, 400, 0),
(30, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 0, 800, 350, 0),
(31, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 0, 0, 400, 550, 0),
(32, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 0, 0, 400, 420, 0),
(33, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 1, 0, 600, 465, 0),
(34, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 0, 0, 420, 400, 0),
(35, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 0, 0, 500, 150, 0),
(36, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 0, 450, 439, 0),
(37, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 0, 0, 320, 270, 0),
(38, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 0, 0, 400, 430, 0),
(39, 'lunch_menu', 'ランチメニュー用', '', 0, 0, 0, 0, 0, 0, 0, 700, 450, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(12, 1, 0),
(25, 1, 1),
(27, 1, 2),
(15, 1, 3),
(26, 1, 4),
(19, 1, 5),
(11, 2, 0),
(18, 2, 1),
(28, 2, 2),
(30, 2, 3),
(29, 2, 4),
(13, 2, 5),
(36, 2, 6),
(20, 2, 7),
(31, 2, 8),
(35, 2, 9),
(17, 3, 0),
(32, 3, 1),
(14, 3, 2),
(34, 4, 0),
(5, 4, 1),
(21, 4, 2),
(22, 4, 3),
(23, 4, 4),
(16, 5, 0),
(33, 5, 1),
(37, 5, 2),
(38, 5, 3),
(24, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSets`
--

CREATE TABLE `BlockTypeSets` (
`btsID` int(10) unsigned NOT NULL,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BlockTypeSets`
--

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Social Networking', 'social', 0, 0),
(5, 'Multimedia', 'multimedia', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
(16, 4, 0, 0, 0, '', 1, '', ''),
(57, 18, 0, 0, 0, '', 0, 'Announcement お知らせ', 'Announcement お知らせ'),
(99, 21, 0, 0, 0, '', 0, 'ランチメニュー', '');

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '<div style="padding: 40px; text-align: center"> <iframe width="853" height="480" src="//www.youtube.com/embed/VB-R71zk06U" frameborder="0" allowfullscreen></iframe>                                     </div>'),
(10, '<ul class="social-buttons">  	<li class="twitter"><a href="#"><concrete-picture fID="7" alt="Twitter" style="" /></a></li>  	<li class="facebook"><a href="#"><concrete-picture fID="2" alt="Facerbook" style="" /></a></li>  </ul>'),
(11, '<ul class="social-buttons">  	  <li class="twitter"><a href="https://twitter.com/concrete5japan" target="_blank"><concrete-picture fID="7" alt="Twitter" style="" /></a></li>	  <li class="facebook"><a href="https://facebook.com/concrete5japan" target="_blank"><concrete-picture fID="2" alt="Facerbook" style="" /></a></li></ul>'),
(17, '<p class="tel right">  	<concrete-picture fID="6" alt="ご予約・お問い合わせは、06-3033-8888" style="" />  </p>'),
(20, '<h1><concrete-picture fID="18" alt="Announcement　お知らせ" style="" /></h1>'),
(21, '<p>  	<a href="#"><concrete-picture fID="23" alt="シェフのおすすめ" style="" /></a>  </p>  <p>  	<a href="#"><concrete-picture fID="22" alt="パーティープラン" style="" /></a>  </p>  <p>  	<a href="#"><concrete-picture fID="20" alt="季節限定スイーツ" style="" /></a>  </p>  <h3><img src="images/business_hours_title.png" alt="営業時間のご案内"></h3>  <table class="twelve">  <tbody>  <tr>  	<th>  		ランチ  	</th>  	<td>  		11 : 30〜14 : 30（L.O14：00）  	</td>  </tr>  <tr>  	<th>  		ディナー  	</th>  	<td>  		17：00〜23：00（L.O22：00）  	</td>  </tr>  <tr>  	<th>  		定休日  	</th>  	<td>  		火曜日  	</td>  </tr>  </tbody>  </table>  <h3><img src="images/access_map_title.png" alt="アクセス"></h3>  <p>  	〒541-0088  	<br>  	大阪府大阪市中央区平野町8-4-2  	<br>  	TEL : 06-3033-8888  </p>'),
(22, '<p>  	<a href="#"><concrete-picture fID="23" alt="シェフのおすすめ" style="" /></a>  </p>  <p>  	<a href="#"><concrete-picture fID="22" alt="パーティープラン" style="" /></a>  </p>  <p>  	<a href="#"><concrete-picture fID="20" alt="季節限定スイーツ" style="" /></a>  </p>  <h3><concrete-picture fID="19" alt="営業時間のご案内" style="" /></h3>  <table class="twelve">  <tbody>  <tr>  	<th>  		  		ランチ  	</th>  	<td>  		  		11 : 30〜14 : 30（L.O14：00）  	</td>  </tr>  <tr>  	<th>  		  		ディナー  	</th>  	<td>  		  		17：00〜23：00（L.O22：00）  	</td>  </tr>  <tr>  	<th>  		  		定休日  	</th>  	<td>  		  		火曜日  	</td>  </tr>  </tbody>  </table>  <h3><concrete-picture fID="24" alt="アクセス" style="" /></h3>  <p>  	  	〒541-0088  	  	<br>  	  	大阪府大阪市中央区平野町8-4-2  	  	<br>  	  	TEL : 06-3033-8888  </p>'),
(27, '<ul class="link-list">  <li><a href="#">スタッフ募集</a></li>  <li><a href="#">プライバシーポリシー</a></li>  <li><a href="#">サイトマップ</a></li>  </ul>  '),
(54, '<h1><concrete-picture fID="18" alt="Announcement　お知らせ" style="" /></h1>'),
(71, '<p>ニュースはこのように表示されます。</p>'),
(78, '<p>忘年会メニューのお知らせ</p>'),
(85, '<p>季節限定スイーツが登場！</p>'),
(87, '<p>季節限定スイーツが登場！</p>'),
(95, '<p>2015 クリスマス・ディナーのご予約をはじめました</p>'),
(97, '<p class="read-more right"><a href="{CCM:CID_158}">もっと見る</a></p>'),
(125, '<h1>メニュー</h1>'),
(128, '<h1>メニュー名</h1>'),
(131, '<h1>メニュー</h1>'),
(133, '<h1>ディナーメニュー</h1><p>当店の最高のクオリティーのメニューを紹介します。</p>'),
(157, '<h1>オリーブの気持ち</h1><h2>本場の石窯ナポリピッツァをぜひともご賞味ください。</h2><p> 	大正時代に建てられた赤レンガの倉庫を改装したカジュアル・イタリアンレストラン。<br> 	落ち着いた雰囲気の店内で本場の石窯で焼き上げた本格的なナポリピッツアをお楽しみください。</p><p> 	また、当店の契約農家が栽培している『新鮮』『安心』『安全』の無農薬野菜を使ったメニューも多数ご用意しております。</p><p> 	<concrete-picture fID="33" alt="trattoria Sensazione di Olive" style="float: left; margin: 10px;" />少人数でのプライベートなパーティーから大人数での賑やかなパーティーなども承っております。<br> 	お誕生日パーティーやママ友のランチなどに最適なお手軽ランチプラン。<br> 	結婚式の二次会や新年会・忘年会など、特別なパーティーには、ちょっと贅沢なディナープラン。<br> 	基本プランにフリードリンク（飲み放題）等のオプションを追加することも出来ますので、お客さまのご希望するプランをご用意できます。<br> 	まずは、当店のスタッフまでお気軽におたずねください。<br> 	当店専属のプランナーがお客さまのご要望をもとに企画・提案・お手伝いをさせていただきます。<br> 	料理のグレードアップやウエディングケーキ・バースデーケーキなど、シェフとパティシエに相談していただくことも可能です。<br> 	まずは、本格的なナポリピッツァを味わうカジュアル・パーティーを是非！<br> 	皆さまのご利用を心よりお待ちしております。</p><h3>見出し3</h3><h4>見出し4</h4><h5>見出し5</h5>'),
(165, '<h1>お問い合わせ</h1> <p> 	パーティープランのご相談やご予約については、下記のフォームよりお気軽にお問い合わせください。 </p>'),
(175, '<h1>ブログ</h1><p>ブログページです。</p>');

-- --------------------------------------------------------

--
-- Table structure for table `btCoreAreaLayout`
--

CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreConversation`
--

CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insertNewMessages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(130, 0),
(9, 1),
(58, 5);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(26, 22),
(101, 100),
(103, 100),
(107, 100),
(129, 100);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btCoreStackDisplay`
--

INSERT INTO `btCoreStackDisplay` (`bID`, `stID`) VALUES
(25, 155),
(56, 155),
(111, 155),
(126, 155),
(110, 165),
(132, 165);

-- --------------------------------------------------------

--
-- Table structure for table `btDashboardNewsflowLatest`
--

CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(4, 'A'),
(5, 'B'),
(8, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btDateNavigation`
--

CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDCLunchMenu`
--

CREATE TABLE `btDCLunchMenu` (
  `bID` int(10) unsigned NOT NULL,
  `field_2_image_fID` int(11) DEFAULT NULL,
  `field_4_image_fID` int(11) DEFAULT NULL,
  `field_4_image_altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_6_textbox_text` text COLLATE utf8_unicode_ci,
  `field_7_textbox_text` text COLLATE utf8_unicode_ci,
  `field_9_textbox_text` text COLLATE utf8_unicode_ci,
  `field_10_textbox_text` text COLLATE utf8_unicode_ci,
  `field_11_textbox_text` text COLLATE utf8_unicode_ci,
  `field_12_textbox_text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btDCLunchMenu`
--

INSERT INTO `btDCLunchMenu` (`bID`, `field_2_image_fID`, `field_4_image_fID`, `field_4_image_altText`, `field_6_textbox_text`, `field_7_textbox_text`, `field_9_textbox_text`, `field_10_textbox_text`, `field_11_textbox_text`, `field_12_textbox_text`) VALUES
(100, 31, 32, 'ピザランチ', 'ピッツァランチ', '980', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(102, 29, 30, 'パスタランディ', 'パスタランチ', '1,100', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(104, 25, 27, 'コースランチA', 'スープ＋アンティパスト＋本日のメイン（お肉 or お魚）＋自家製パン', '980', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(105, 29, 30, 'パスタランディ', 'サラダ＋本日のパスタ（2種類からひとつ、お選びください）', '1,100', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(106, 31, 32, 'ピザランチ', 'サラダ＋本日のピッツァ（2種類からひとつ、お選びください）', '980', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(108, 26, 28, 'コースランチB', 'スープ＋アンティパスト＋本日のパスタ＋本日のメイン（お肉 or お魚）＋自家製パン＋本日のドルチェ＋コーヒーor紅茶 ', '2,850', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(109, 25, 27, 'コースランチA', 'スープ＋アンティパスト＋本日のメイン（お肉 or お魚）＋自家製パン', '1,850', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ'),
(134, 26, 28, 'コースランチB', 'スープ＋アンティパスト＋本日のパスタ＋本日のメイン（お肉 or お魚）＋自家製パン＋本日のドルチェ＋コーヒーor紅茶 ', '2,850', '200', 'コーヒー or 紅茶', '350', 'カフェラテ、エスプレッソ');

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaq`
--

CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaqEntries`
--

CREATE TABLE `btFaqEntries` (
`id` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFeature`
--

CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btForm`
--

INSERT INTO `btForm` (`bID`, `questionSetId`, `surveyName`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(166, 1426912127, 'お問い合わせ', 'ありがとうございます。お問い合わせが送信されました。（と書いていますが、デモなので、実際にメール通知はしていません。）', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
`aID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
`asID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
`qID` int(10) unsigned NOT NULL,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btFormQuestions`
--

INSERT INTO `btFormQuestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `required`) VALUES
(1, 1, 166, 1426912127, 'お名前', 'field', '', 0, 50, 3, 1),
(2, 2, 166, 1426912127, 'メールアドレス', 'email', 'a:1:{s:22:"send_notification_from";i:1;}', 0, 50, 3, 1),
(3, 3, 166, 1426912127, '本文', 'text', '', 0, 50, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSlider`
--

CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btImageSlider`
--

INSERT INTO `btImageSlider` (`bID`, `navigationType`) VALUES
(18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btImageSliderEntries`
--

CREATE TABLE `btImageSliderEntries` (
`id` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btImageSliderEntries`
--

INSERT INTO `btImageSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `sortOrder`) VALUES
(1, 18, 0, 3, '', 0, '', '', 0),
(2, 18, 0, 5, '', 0, '', '', 1),
(3, 18, 0, 1, '', 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(19, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(23, 'display_asc', 'top', 0, 0, 'relevant_breadcrumb', 'enough', 0, 0),
(24, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(127, 'display_asc', 'custom', 166, 0, 'none', 'enough', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageAttributeDisplay`
--

CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btPageAttributeDisplay`
--

INSERT INTO `btPageAttributeDisplay` (`bID`, `attributeHandle`, `attributeTitleText`, `displayTag`, `dateFormat`, `thumbnailHeight`, `thumbnailWidth`) VALUES
(61, 'rpv_pageDatePublic', '', 'address', 'Y年m月d日 h:i:a', 250, 250);

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btPageList`
--

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `relatedTopicAttributeKeyHandle`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `enableExternalFiltering`, `filterByRelated`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(55, 20, 'chrono_desc', 158, 1, 0, '', '', '', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0),
(96, 5, 'chrono_desc', 158, 0, 0, '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 'お知らせ記事がありません。', 0, 0),
(135, 5, 'display_asc', 166, 1, 0, '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btPageTitle`
--

CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btPageTitle`
--

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `titleText`) VALUES
(60, 0, '[ページタイトル]');

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btSearch`
--

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(12, '検索', '検索', '', '', ''),
(14, '検索', '検索', '', '', ''),
(15, '検索', '検索', '', '154', '');

-- --------------------------------------------------------

--
-- Table structure for table `btShareThisPage`
--

CREATE TABLE `btShareThisPage` (
`btShareThisPageID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSocialLinks`
--

CREATE TABLE `btSocialLinks` (
`btSocialLinkID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
`optionID` int(10) unsigned NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
`resultID` int(10) unsigned NOT NULL,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSwitchLanguage`
--

CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTestimonial`
--

CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTopicList`
--

CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btYouTube`
--

INSERT INTO `btYouTube` (`bID`, `title`, `videoURL`, `vHeight`, `vWidth`, `vPlayer`) VALUES
(112, 'カレー', 'https://www.youtube.com/watch?v=H35TLp8t3bU', '344', '425', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 4, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 5, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(16, 1, 5, 16),
(17, 1, 3, 17),
(17, 1, 5, 18),
(19, 1, 3, 19),
(20, 1, 3, 20),
(22, 1, 3, 21),
(23, 1, 3, 22),
(24, 1, 3, 23),
(25, 1, 3, 24),
(26, 1, 3, 25),
(28, 1, 3, 26),
(29, 1, 3, 27),
(29, 1, 5, 28),
(31, 1, 5, 29),
(32, 1, 5, 30),
(33, 1, 5, 31),
(34, 1, 5, 32),
(35, 1, 5, 33),
(36, 1, 5, 34),
(38, 1, 5, 35),
(39, 1, 3, 36),
(40, 1, 3, 37),
(41, 1, 3, 38),
(43, 1, 4, 39),
(44, 1, 3, 40),
(48, 1, 3, 41),
(50, 1, 5, 42),
(50, 1, 10, 43),
(50, 1, 3, 44),
(51, 1, 3, 45),
(52, 1, 3, 46),
(53, 1, 5, 47),
(54, 1, 3, 48),
(55, 1, 3, 49),
(56, 1, 3, 50),
(56, 1, 5, 51),
(57, 1, 3, 52),
(58, 1, 3, 53),
(59, 1, 3, 54),
(61, 1, 3, 55),
(62, 1, 3, 56),
(63, 1, 3, 57),
(64, 1, 3, 58),
(65, 1, 3, 59),
(66, 1, 3, 60),
(67, 1, 3, 61),
(68, 1, 3, 62),
(73, 1, 3, 63),
(74, 1, 3, 64),
(75, 1, 3, 65),
(76, 1, 3, 66),
(77, 1, 3, 67),
(79, 1, 3, 68),
(80, 1, 3, 69),
(81, 1, 3, 70),
(82, 1, 3, 71),
(84, 1, 3, 72),
(85, 1, 3, 73),
(86, 1, 3, 74),
(87, 1, 3, 75),
(89, 1, 3, 76),
(90, 1, 3, 77),
(93, 1, 3, 78),
(94, 1, 3, 79),
(95, 1, 3, 80),
(96, 1, 3, 81),
(98, 1, 3, 82),
(99, 1, 3, 83),
(100, 1, 3, 84),
(101, 1, 3, 85),
(102, 1, 3, 86),
(103, 1, 3, 87),
(104, 1, 3, 88),
(105, 1, 3, 89),
(106, 1, 3, 90),
(107, 1, 3, 91),
(108, 1, 3, 92),
(109, 1, 3, 93),
(111, 1, 3, 94),
(112, 1, 3, 95),
(113, 1, 3, 96),
(114, 1, 3, 97),
(116, 1, 10, 98),
(117, 1, 3, 99),
(118, 1, 3, 100),
(119, 1, 3, 101),
(120, 1, 3, 102),
(121, 1, 3, 103),
(123, 1, 3, 104),
(124, 1, 5, 105),
(125, 1, 5, 106),
(125, 1, 10, 107),
(126, 1, 4, 108),
(127, 1, 4, 109),
(128, 1, 4, 110),
(131, 1, 4, 111),
(154, 1, 5, 126),
(154, 1, 6, 127),
(154, 1, 10, 128),
(154, 1, 11, 129),
(1, 2, 18, 150),
(1, 2, 19, 151),
(158, 2, 5, 166),
(168, 1, 1, 183),
(168, 1, 2, 184),
(168, 1, 3, 185),
(168, 1, 7, 186),
(168, 1, 11, 187),
(167, 1, 20, 188),
(169, 1, 20, 189),
(170, 1, 20, 190),
(170, 2, 20, 190),
(171, 1, 20, 190),
(171, 2, 20, 190),
(171, 3, 20, 191),
(166, 2, 18, 192),
(166, 2, 19, 193),
(172, 2, 18, 196),
(172, 2, 19, 197),
(173, 1, 18, 198),
(173, 1, 19, 199),
(174, 2, 18, 200),
(174, 2, 19, 201);

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
`cID` int(10) unsigned NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2015-03-21 03:48:25', '2015-03-21 04:57:03', 'home'),
(2, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'dashboard'),
(3, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'sitemap'),
(4, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'full'),
(5, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'explore'),
(6, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'search'),
(7, '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'files'),
(8, '2015-03-21 03:49:38', '2015-03-21 03:49:39', 'search'),
(9, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'attributes'),
(10, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'sets'),
(11, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'add_set'),
(12, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'users'),
(13, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'search'),
(14, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'groups'),
(15, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'attributes'),
(16, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'add'),
(17, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'add_group'),
(18, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'bulkupdate'),
(19, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'group_sets'),
(20, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'points'),
(21, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'assign'),
(22, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'actions'),
(23, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'reports'),
(24, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'forms'),
(25, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'surveys'),
(26, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'logs'),
(27, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'pages'),
(28, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'themes'),
(29, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'inspect'),
(30, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'types'),
(31, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'organize'),
(32, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'add'),
(33, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'form'),
(34, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'output'),
(35, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'attributes'),
(36, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'permissions'),
(37, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'templates'),
(38, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'add'),
(39, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'attributes'),
(40, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'single'),
(41, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'feeds'),
(42, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'conversations'),
(43, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'messages'),
(44, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'workflow'),
(45, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'workflows'),
(46, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'me'),
(47, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'blocks'),
(48, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'stacks'),
(49, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'permissions'),
(50, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'list'),
(51, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'types'),
(52, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'extend'),
(53, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'news'),
(54, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'install'),
(55, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'update'),
(56, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'connect'),
(57, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'themes'),
(58, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'addons'),
(59, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'system'),
(60, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'basics'),
(61, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'name'),
(62, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'accessibility'),
(63, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'social'),
(64, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'icons'),
(65, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'editor'),
(66, '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'multilingual'),
(67, '2015-03-21 03:49:40', '2015-03-21 03:49:41', 'timezone'),
(68, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'multilingual'),
(69, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'setup'),
(70, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'page_report'),
(71, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'translate_interface'),
(72, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'seo'),
(73, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'urls'),
(74, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'bulk'),
(75, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'codes'),
(76, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'excluded'),
(77, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'searchindex'),
(78, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'files'),
(79, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'permissions'),
(80, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'filetypes'),
(81, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'thumbnails'),
(82, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'storage'),
(83, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'optimization'),
(84, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'cache'),
(85, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'clearcache'),
(86, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'jobs'),
(87, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'query_log'),
(88, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'permissions'),
(89, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'site'),
(90, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'tasks'),
(91, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'users'),
(92, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'advanced'),
(93, '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'blacklist'),
(94, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'captcha'),
(95, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'antispam'),
(96, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'maintenance'),
(97, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'registration'),
(98, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'postlogin'),
(99, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'profiles'),
(100, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'open'),
(101, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'authentication'),
(102, '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'mail'),
(103, '2015-03-21 03:49:42', '2015-03-21 03:49:43', 'method'),
(104, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'test'),
(105, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'importers'),
(106, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'conversations'),
(107, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'settings'),
(108, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'points'),
(109, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'bannedwords'),
(110, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'permissions'),
(111, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'attributes'),
(112, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'sets'),
(113, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'types'),
(114, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'topics'),
(115, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'add'),
(116, '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'environment'),
(117, '2015-03-21 03:49:43', '2015-03-21 03:49:44', 'info'),
(118, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'debug'),
(119, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'logging'),
(120, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'proxy'),
(121, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'backup'),
(122, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'backup'),
(123, '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'update'),
(124, '2015-03-21 03:49:45', '2015-03-21 03:49:45', 'welcome'),
(125, '2015-03-21 03:49:45', '2015-03-21 03:49:45', 'home'),
(126, '2015-03-21 03:49:57', '2015-03-21 03:49:57', '!drafts'),
(127, '2015-03-21 03:49:57', '2015-03-21 03:49:57', '!trash'),
(128, '2015-03-21 03:49:57', '2015-03-21 03:49:57', '!stacks'),
(129, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'login'),
(130, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'register'),
(131, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'account'),
(132, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'edit_profile'),
(133, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'avatar'),
(134, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'messages'),
(135, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'inbox'),
(136, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'members'),
(137, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'profile'),
(138, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'directory'),
(139, '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'page_not_found'),
(140, '2015-03-21 03:49:57', '2015-03-21 03:49:58', 'page_forbidden'),
(141, '2015-03-21 03:49:58', '2015-03-21 03:49:58', 'download_file'),
(142, '2015-03-21 03:49:59', '2015-03-21 03:49:59', NULL),
(148, '2015-03-21 03:52:36', '2015-03-21 04:57:03', 'masthead'),
(149, '2015-03-21 03:52:40', '2015-03-21 04:57:03', 'site-name'),
(150, '2015-03-21 03:52:41', '2015-03-21 04:57:04', 'header-right'),
(151, '2015-03-21 03:52:43', '2015-03-21 04:57:04', 'header-nav'),
(152, '2015-03-21 03:52:45', '2015-03-21 03:52:45', 'breadcrumbs'),
(153, '2015-03-21 03:52:45', '2015-03-21 03:52:45', 'footer'),
(154, '2015-03-21 03:59:01', '2015-03-21 04:01:36', ''),
(155, '2015-03-21 04:11:07', '2015-03-21 04:15:09', ''),
(156, '2015-03-21 04:17:40', '2015-03-21 04:17:40', NULL),
(157, '2015-03-21 04:19:36', '2015-03-21 04:19:36', NULL),
(158, '2015-03-21 04:21:49', '2015-03-21 04:26:01', ''),
(159, '2015-03-21 04:27:58', '2015-03-21 04:37:37', NULL),
(160, '2015-03-21 04:34:25', '2015-03-21 04:57:40', ''),
(161, '2015-03-21 04:37:48', '2015-03-21 04:38:35', ''),
(162, '2015-03-21 04:38:52', '2015-03-21 04:39:27', ''),
(163, '2015-03-21 04:39:33', '2015-03-21 04:40:22', ''),
(164, '2015-03-21 04:40:52', '2015-03-21 04:41:30', ''),
(165, '2015-03-21 04:45:26', '2015-03-21 04:54:03', ''),
(166, '2015-03-21 04:58:42', '2015-03-21 05:24:18', ''),
(167, '2015-03-21 05:00:58', '2015-03-21 05:16:42', NULL),
(168, '2015-03-21 05:05:31', '2015-03-21 05:05:55', ''),
(169, '2015-03-21 05:13:33', '2015-03-21 05:15:10', ''),
(170, '2015-03-21 05:17:43', '2015-03-21 05:20:33', ''),
(171, '2015-03-21 05:20:54', '2015-03-21 05:21:47', NULL),
(172, '2015-03-21 05:24:34', '2015-03-21 05:27:23', ''),
(173, '2015-03-21 05:27:44', '2015-03-21 05:30:42', ''),
(174, '2015-03-21 05:30:50', '2015-03-21 05:32:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_globalnav_image` int(11) DEFAULT '0',
  `ak_globalnav_image_over` int(11) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_globalnav_image`, `ak_globalnav_image_over`, `ak_thumbnail`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 9, 8, 0),
(2, NULL, NULL, NULL, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(10, NULL, NULL, 'files, category, categories', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(11, NULL, NULL, 'new file set', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(15, NULL, NULL, 'user attributes, user data, gather data, registration data', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(16, NULL, NULL, 'new user, create', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(17, NULL, NULL, 'new user group, new group, group, create', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(19, NULL, NULL, 'group set', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(20, NULL, NULL, 'community, points, karma', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(22, NULL, NULL, 'action, community actions', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(23, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(24, NULL, NULL, 'forms, questions, response, data', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(25, NULL, NULL, 'questions, quiz, response', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(29, NULL, NULL, 'page types', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(31, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(32, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(33, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(34, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(35, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(36, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(38, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(39, NULL, NULL, 'page attributes, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(40, NULL, NULL, 'single, page, custom, application', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(41, NULL, NULL, 'atom, rss, feed, syndication', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(43, NULL, NULL, NULL, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(44, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(48, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(50, NULL, NULL, 'edit stacks, view stacks, all stacks', NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0),
(51, NULL, NULL, 'block, refresh, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(52, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(53, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(54, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(55, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(56, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(57, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(58, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(59, NULL, NULL, 'dashboard, configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(61, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(62, NULL, NULL, 'accessibility, easy mode', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(63, NULL, NULL, 'sharing, facebook, twitter', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(64, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(65, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(66, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(67, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(68, NULL, NULL, 'multilingual, localization, internationalization, i18n', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(73, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(74, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(75, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(76, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(77, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(79, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(80, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(81, NULL, NULL, 'images, picture, responsive, retina', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(82, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(84, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(85, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(86, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(87, NULL, NULL, 'queries, database, mysql', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(89, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(90, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(93, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(94, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(95, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(96, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(98, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(99, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(100, NULL, NULL, 'signup, new user, community, public registration, public, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(101, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(102, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(103, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(104, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(105, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(106, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(107, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(108, NULL, NULL, 'conversations ratings, ratings, community, community points', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(109, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(111, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(112, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(113, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(114, NULL, NULL, 'topics, tags, taxonomy', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(116, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, 0, 0, 0),
(117, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(118, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(119, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(120, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(121, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(123, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(124, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(125, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 1, 0, 0, 0, 0),
(126, NULL, NULL, NULL, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(127, NULL, NULL, NULL, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(128, NULL, NULL, NULL, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(131, NULL, NULL, NULL, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(148, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(149, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(150, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(151, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(154, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 1, 1, 0, 0, 0),
(155, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(158, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(159, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(161, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(162, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(163, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(164, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(165, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0),
(166, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 11, 10, 0),
(167, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 31),
(169, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 31),
(170, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 26),
(171, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 25),
(172, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 13, 12, 0),
(173, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 15, 16, 0),
(174, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 17, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`) VALUES
(1, 2, 18, 'Header', 0, 1, 0, 0, 0),
(1, 2, 20, 'Main', 1, 1, 0, 0, 0),
(1, 2, 96, 'Main', 2, 1, 0, 0, 0),
(1, 2, 97, 'Main', 3, 1, 0, 0, 0),
(1, 2, 110, 'Main', 5, 1, 0, 0, 0),
(1, 2, 111, 'Sidebar', 0, 1, 0, 0, 0),
(1, 2, 112, 'Main', 0, 1, 0, 0, 0),
(124, 1, 1, 'Main', 0, 1, 0, 0, 0),
(125, 1, 2, 'Primary', 0, 1, 0, 0, 0),
(125, 1, 3, 'Primary', 1, 1, 0, 0, 0),
(125, 1, 4, 'Secondary 1', 0, 1, 0, 0, 0),
(125, 1, 5, 'Secondary 2', 0, 1, 0, 0, 0),
(125, 1, 6, 'Secondary 3', 0, 1, 0, 0, 0),
(125, 1, 7, 'Secondary 4', 0, 1, 0, 0, 0),
(125, 1, 8, 'Secondary 5', 0, 1, 0, 0, 0),
(142, 1, 9, 'Main', 0, 1, 0, 0, 0),
(142, 1, 25, 'Sidebar', 0, 1, 0, 0, 0),
(148, 2, 10, 'Main', 0, 1, 0, 0, 0),
(148, 3, 11, 'Main', 0, 1, 0, 0, 0),
(148, 4, 11, 'Main', 0, 0, 0, 0, 0),
(148, 4, 12, 'Main', 1, 1, 0, 0, 0),
(148, 5, 11, 'Main', 0, 0, 0, 0, 0),
(148, 5, 12, 'Main', 1, 0, 0, 0, 0),
(148, 6, 11, 'Main', 0, 0, 0, 0, 0),
(148, 6, 15, 'Main', 1, 1, 0, 0, 0),
(149, 2, 16, 'Main', 0, 1, 0, 0, 0),
(150, 2, 17, 'Main', 0, 1, 0, 0, 0),
(151, 2, 19, 'Main', 0, 1, 0, 0, 0),
(151, 3, 19, 'Main', 0, 0, 0, 0, 0),
(151, 4, 24, 'Main', 0, 1, 0, 0, 0),
(151, 5, 24, 'Main', 0, 0, 0, 0, 0),
(152, 2, 23, 'Main', 0, 1, 0, 0, 0),
(153, 2, 26, 'Main', 0, 1, 0, 0, 0),
(153, 4, 27, 'Main', 0, 1, 0, 0, 0),
(154, 1, 14, 'Main', 0, 1, 0, 0, 0),
(155, 2, 21, 'Main', 0, 1, 0, 0, 0),
(155, 3, 22, 'Main', 0, 1, 0, 0, 0),
(157, 1, 26, 'Sidebar', 0, 0, 0, 0, 0),
(158, 1, 25, 'Sidebar', 0, 0, 0, 0, 0),
(158, 1, 54, 'Main', 0, 1, 0, 0, 0),
(158, 2, 25, 'Sidebar', 0, 0, 0, 0, 0),
(158, 2, 54, 'Main', 0, 0, 0, 0, 0),
(158, 2, 55, 'Main', 1, 1, 0, 0, 0),
(159, 1, 56, 'Sidebar', 0, 1, 0, 0, 0),
(159, 1, 57, 'Main', 0, 1, 0, 0, 0),
(159, 1, 58, 'Main', 3, 1, 0, 0, 0),
(159, 1, 60, 'Main', 1, 1, 0, 0, 0),
(159, 1, 61, 'Main', 2, 1, 0, 0, 0),
(160, 1, 56, 'Sidebar', 0, 0, 0, 0, 0),
(160, 1, 57, 'Main', 0, 0, 0, 0, 0),
(160, 1, 58, 'Main', 3, 0, 0, 0, 0),
(160, 1, 60, 'Main', 1, 0, 0, 0, 0),
(160, 1, 61, 'Main', 2, 0, 0, 0, 0),
(161, 1, 56, 'Sidebar', 0, 0, 0, 0, 0),
(161, 1, 57, 'Main', 0, 0, 0, 0, 0),
(161, 1, 60, 'Main', 1, 0, 0, 0, 0),
(161, 1, 61, 'Main', 2, 0, 0, 0, 0),
(161, 1, 71, 'Main', 3, 1, 0, 0, 0),
(162, 1, 56, 'Sidebar', 0, 0, 0, 0, 0),
(162, 1, 57, 'Main', 0, 0, 0, 0, 0),
(162, 1, 60, 'Main', 1, 0, 0, 0, 0),
(162, 1, 61, 'Main', 2, 0, 0, 0, 0),
(162, 1, 78, 'Main', 3, 1, 0, 0, 0),
(163, 1, 56, 'Sidebar', 0, 0, 0, 0, 0),
(163, 1, 57, 'Main', 0, 0, 0, 0, 0),
(163, 1, 60, 'Main', 1, 0, 0, 0, 0),
(163, 1, 61, 'Main', 2, 0, 0, 0, 0),
(163, 1, 85, 'Main', 3, 1, 0, 0, 0),
(163, 2, 56, 'Sidebar', 0, 0, 0, 0, 0),
(163, 2, 57, 'Main', 0, 0, 0, 0, 0),
(163, 2, 60, 'Main', 1, 0, 0, 0, 0),
(163, 2, 61, 'Main', 2, 0, 0, 0, 0),
(163, 2, 87, 'Main', 3, 1, 0, 0, 0),
(164, 1, 56, 'Sidebar', 0, 0, 0, 0, 0),
(164, 1, 57, 'Main', 0, 0, 0, 0, 0),
(164, 1, 60, 'Main', 1, 0, 0, 0, 0),
(164, 1, 61, 'Main', 2, 0, 0, 0, 0),
(164, 1, 95, 'Main', 3, 1, 0, 0, 0),
(165, 2, 99, 'Main', 0, 1, 0, 0, 0),
(165, 3, 99, 'Main', 0, 0, 0, 0, 0),
(165, 3, 100, 'Main', 1, 1, 0, 0, 0),
(165, 4, 99, 'Main', 0, 0, 0, 0, 0),
(165, 4, 100, 'Main', 1, 0, 0, 0, 0),
(165, 4, 101, 'Main', 2, 1, 0, 0, 0),
(165, 5, 99, 'Main', 0, 0, 0, 0, 0),
(165, 5, 100, 'Main', 1, 0, 0, 0, 0),
(165, 5, 102, 'Main', 2, 1, 0, 0, 0),
(165, 6, 99, 'Main', 0, 0, 0, 0, 0),
(165, 6, 100, 'Main', 1, 0, 0, 0, 0),
(165, 6, 102, 'Main', 2, 0, 0, 0, 0),
(165, 6, 103, 'Main', 3, 1, 0, 0, 0),
(165, 7, 99, 'Main', 0, 0, 0, 0, 0),
(165, 7, 100, 'Main', 1, 0, 0, 0, 0),
(165, 7, 102, 'Main', 2, 0, 0, 0, 0),
(165, 7, 104, 'Main', 3, 1, 0, 0, 0),
(165, 8, 99, 'Main', 0, 0, 0, 0, 0),
(165, 8, 100, 'Main', 1, 0, 0, 0, 0),
(165, 8, 104, 'Main', 3, 0, 0, 0, 0),
(165, 8, 105, 'Main', 2, 1, 0, 0, 0),
(165, 9, 99, 'Main', 0, 0, 0, 0, 0),
(165, 9, 104, 'Main', 3, 0, 0, 0, 0),
(165, 9, 105, 'Main', 2, 0, 0, 0, 0),
(165, 9, 106, 'Main', 1, 1, 0, 0, 0),
(165, 10, 99, 'Main', 0, 0, 0, 0, 0),
(165, 10, 104, 'Main', 3, 0, 0, 0, 0),
(165, 10, 105, 'Main', 2, 0, 0, 0, 0),
(165, 10, 106, 'Main', 1, 0, 0, 0, 0),
(165, 10, 107, 'Main', 4, 1, 0, 0, 0),
(165, 11, 99, 'Main', 0, 0, 0, 0, 0),
(165, 11, 104, 'Main', 3, 0, 0, 0, 0),
(165, 11, 105, 'Main', 2, 0, 0, 0, 0),
(165, 11, 106, 'Main', 1, 0, 0, 0, 0),
(165, 11, 108, 'Main', 4, 1, 0, 0, 0),
(165, 12, 99, 'Main', 0, 0, 0, 0, 0),
(165, 12, 105, 'Main', 2, 0, 0, 0, 0),
(165, 12, 106, 'Main', 1, 0, 0, 0, 0),
(165, 12, 108, 'Main', 4, 0, 0, 0, 0),
(165, 12, 109, 'Main', 3, 1, 0, 0, 0),
(166, 1, 25, 'Sidebar', 0, 0, 0, 0, 0),
(166, 1, 125, 'Main', 0, 1, 0, 0, 0),
(166, 2, 25, 'Sidebar', 0, 0, 0, 0, 0),
(166, 2, 131, 'Main', 0, 1, 0, 0, 0),
(166, 2, 135, 'Main', 1, 1, 0, 0, 0),
(167, 1, 126, 'Sidebar', 0, 1, 0, 0, 0),
(167, 1, 127, 'Main', 1, 1, 0, 0, 0),
(167, 1, 128, 'Main', 2, 1, 0, 0, 0),
(167, 1, 129, 'Main', 3, 1, 0, 0, 0),
(167, 1, 130, 'Main', 0, 1, 0, 0, 0),
(168, 1, 126, 'Sidebar', 0, 0, 0, 0, 0),
(168, 1, 127, 'Main', 0, 0, 0, 0, 0),
(168, 1, 128, 'Main', 1, 0, 0, 0, 0),
(168, 1, 129, 'Main', 2, 0, 0, 0, 0),
(169, 1, 126, 'Sidebar', 0, 0, 0, 0, 0),
(169, 1, 127, 'Main', 1, 0, 0, 0, 0),
(169, 1, 130, 'Main', 0, 0, 0, 0, 0),
(169, 1, 132, 'Main', 2, 1, 0, 0, 0),
(170, 1, 126, 'Sidebar', 0, 0, 0, 0, 0),
(170, 1, 127, 'Main', 1, 0, 0, 0, 0),
(170, 1, 130, 'Main', 0, 0, 0, 0, 0),
(170, 1, 133, 'Main', 2, 1, 0, 0, 0),
(170, 1, 134, 'Main', 3, 1, 0, 0, 0),
(170, 2, 126, 'Sidebar', 0, 0, 0, 0, 0),
(170, 2, 127, 'Main', 1, 0, 0, 0, 0),
(170, 2, 130, 'Main', 0, 0, 0, 0, 0),
(170, 2, 133, 'Main', 2, 0, 0, 0, 0),
(170, 2, 134, 'Main', 3, 0, 0, 0, 0),
(171, 1, 126, 'Sidebar', 0, 0, 0, 0, 0),
(171, 1, 127, 'Main', 1, 0, 0, 0, 0),
(171, 1, 130, 'Main', 0, 0, 0, 0, 0),
(171, 1, 133, 'Main', 2, 0, 0, 0, 0),
(171, 1, 134, 'Main', 3, 0, 0, 0, 0),
(171, 2, 126, 'Sidebar', 0, 0, 0, 0, 0),
(171, 2, 127, 'Main', 1, 0, 0, 0, 0),
(171, 2, 130, 'Main', 0, 0, 0, 0, 0),
(171, 2, 133, 'Main', 2, 0, 0, 0, 0),
(171, 2, 134, 'Main', 3, 0, 0, 0, 0),
(171, 3, 126, 'Sidebar', 0, 0, 0, 0, 0),
(171, 3, 127, 'Main', 1, 0, 0, 0, 0),
(171, 3, 130, 'Main', 0, 0, 0, 0, 0),
(171, 3, 133, 'Main', 2, 0, 0, 0, 0),
(171, 3, 134, 'Main', 3, 0, 0, 0, 0),
(172, 1, 25, 'Sidebar', 0, 0, 0, 0, 0),
(172, 1, 157, 'Main', 0, 1, 0, 0, 0),
(172, 2, 25, 'Sidebar', 0, 0, 0, 0, 0),
(172, 2, 157, 'Main', 0, 0, 0, 0, 0),
(173, 1, 25, 'Sidebar', 0, 0, 0, 0, 0),
(173, 1, 165, 'Main', 0, 1, 0, 0, 0),
(173, 1, 166, 'Main', 1, 1, 0, 0, 0),
(174, 1, 25, 'Sidebar', 0, 0, 0, 0, 0),
(174, 1, 175, 'Main', 0, 1, 0, 0, 0),
(174, 2, 25, 'Sidebar', 0, 0, 0, 0, 0),
(174, 2, 175, 'Main', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584759778),
(1, 2, 98, 'Main', '<img src="/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png" alt="Lunch Menu ランチメニュー" width="620" height="40" class="ccm-image-block img-responsive bID-98">\n', 1584762293),
(1, 2, 99, 'Main', '<img src="/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png" alt="ランチメニュー" width="620" height="40" class="ccm-image-block img-responsive bID-99">\n', 1584762886),
(48, 1, 99, 'Main', '<img src="/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png" alt="ランチメニュー" width="620" height="40" class="ccm-image-block img-responsive bID-99">\n', 1584762640),
(139, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584760316),
(142, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584760540),
(156, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584760661),
(157, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584760777),
(158, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584760910),
(158, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761083),
(159, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761305),
(159, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584761368),
(160, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761666),
(160, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584761666),
(161, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761869),
(161, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584761869),
(162, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761933),
(162, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584761933),
(163, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584761974),
(163, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584761974),
(163, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584762022),
(163, 2, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584762022),
(164, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584762053),
(164, 1, 57, 'Main', '<img src="/c5ngo/application/files/1614/2690/7421/announcement_title.png" alt="Announcement お知らせ" width="620" height="33" class="ccm-image-block img-responsive bID-57" title="Announcement お知らせ">\n', 1584762053),
(165, 2, 99, 'Main', '<img src="/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png" alt="ランチメニュー" width="620" height="40" class="ccm-image-block img-responsive bID-99">\n', 1584762346),
(166, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584763124),
(166, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584763972),
(167, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584763259),
(168, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584763532),
(169, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764014),
(169, 1, 99, 'Main', '<img src="/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png" alt="ランチメニュー" width="620" height="40" class="ccm-image-block img-responsive bID-99">\n', 1584764047),
(170, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764265),
(170, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764430),
(171, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764458),
(171, 3, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764499),
(172, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764676),
(172, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764833),
(173, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584764865),
(174, 1, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584765051),
(174, 2, 16, 'Site Name', '<a href="/c5ngo"><img src="/c5ngo/application/files/9514/2690/6546/header_logo.png" alt="header_logo.png" width="376" height="68" class="ccm-image-block img-responsive bID-16"></a>\n', 1584765124);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(148, 5, 12, 'Main', 1),
(148, 6, 15, 'Main', 1),
(154, 1, 14, 'Main', 2),
(151, 3, 19, 'Main', 3),
(151, 4, 24, 'Main', 4),
(159, 1, 61, 'Main', 5),
(160, 1, 61, 'Main', 5),
(161, 1, 61, 'Main', 5),
(162, 1, 61, 'Main', 5),
(163, 1, 61, 'Main', 5),
(163, 2, 61, 'Main', 5),
(164, 1, 61, 'Main', 5),
(151, 5, 24, 'Main', 6),
(167, 1, 127, 'Main', 7),
(168, 1, 127, 'Main', 7),
(169, 1, 127, 'Main', 7),
(170, 1, 127, 'Main', 7),
(170, 2, 127, 'Main', 7),
(171, 1, 127, 'Main', 7),
(171, 2, 127, 'Main', 7),
(171, 3, 127, 'Main', 7),
(166, 2, 135, 'Main', 9);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(149, 2, 1),
(159, 1, 2),
(165, 2, 4),
(165, 3, 4),
(165, 4, 4),
(165, 5, 4),
(165, 6, 4),
(165, 7, 4),
(165, 8, 4),
(165, 9, 4),
(165, 10, 4),
(165, 11, 4),
(165, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

INSERT INTO `CollectionVersionRelatedEdits` (`cID`, `cvID`, `cRelationID`, `cvRelationID`) VALUES
(142, 1, 151, 4),
(142, 1, 152, 2),
(157, 1, 153, 2),
(157, 1, 153, 3),
(157, 1, 153, 4);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2015-03-21 03:48:25', '2015-03-21 03:48:25', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL),
(1, 2, 'Home', 'home', '', '2015-03-21 03:48:00', '2015-03-21 03:57:00', 'YouTube 動画を追加', 1, 0, 1, 1, 2, 7, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(5, 1, 'Flat View', 'explore', '', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(6, 1, 'Page Search', 'search', '', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(8, 1, 'File Manager', 'search', '', '2015-03-21 03:49:38', '2015-03-21 03:49:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(9, 1, 'Attributes', 'attributes', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(10, 1, 'File Sets', 'sets', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(13, 1, 'Search Users', 'search', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(14, 1, 'User Groups', 'groups', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(15, 1, 'Attributes', 'attributes', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(16, 1, 'Add User', 'add', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(17, 1, 'Add Group', 'add_group', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(20, 1, 'Community Points', 'points', NULL, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(22, 1, 'Actions', 'actions', NULL, '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(23, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(29, 1, 'Inspect', 'inspect', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(30, 1, 'Page Types', 'types', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(31, 1, 'Organize Page Type Order', 'organize', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(32, 1, 'Add Page Type', 'add', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(33, 1, 'Compose Form', 'form', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(34, 1, 'Defaults and Output', 'output', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(35, 1, 'Page Type Attributes', 'attributes', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(36, 1, 'Page Type Permissions', 'permissions', '', '2015-03-21 03:49:39', '2015-03-21 03:49:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(37, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(38, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(39, 1, 'Attributes', 'attributes', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(40, 1, 'Single Pages', 'single', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(41, 1, 'RSS Feeds', 'feeds', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(42, 1, 'Conversations', 'conversations', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(43, 1, 'Messages', 'messages', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(44, 1, 'Workflow', 'workflow', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(45, 1, 'Workflow List', 'workflows', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(46, 1, 'Waiting for Me', 'me', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(48, 1, 'Stacks', 'stacks', 'Share content across your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(50, 1, 'Stack List', 'list', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(52, 1, 'Extend concrete5', 'extend', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(53, 1, 'Dashboard', 'news', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(54, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(55, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(56, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(57, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(58, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(59, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(60, 1, 'Basics', 'basics', 'Basic information about your website.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(61, 1, 'Site Name', 'name', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(62, 1, 'Accessibility', 'accessibility', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(63, 1, 'Social Links', 'social', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(64, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(65, 1, 'Rich Text Editor', 'editor', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(66, 1, 'Languages', 'multilingual', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(67, 1, 'Time Zone', 'timezone', '', '2015-03-21 03:49:40', '2015-03-21 03:49:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(68, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(69, 1, 'Multilingual Setup', 'setup', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(70, 1, 'Page Report', 'page_report', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(71, 1, 'Translate Site Interface', 'translate_interface', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(72, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(73, 1, 'Pretty URLs', 'urls', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(74, 1, 'Bulk SEO Updater', 'bulk', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(75, 1, 'Tracking Codes', 'codes', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(76, 1, 'Excluded URL Word List', 'excluded', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(77, 1, 'Search Index', 'searchindex', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(78, 1, 'Files', 'files', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(79, 1, 'File Manager Permissions', 'permissions', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(80, 1, 'Allowed File Types', 'filetypes', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(81, 1, 'Thumbnails', 'thumbnails', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(82, 1, 'File Storage Locations', 'storage', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(83, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(84, 1, 'Cache & Speed Settings', 'cache', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(85, 1, 'Clear Cache', 'clearcache', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(86, 1, 'Automated Jobs', 'jobs', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(87, 1, 'Database Query Log', 'query_log', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(88, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(89, 1, 'Site Access', 'site', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(90, 1, 'Task Permissions', 'tasks', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(91, 1, 'User Permissions', 'users', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(92, 1, 'Advanced Permissions', 'advanced', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(93, 1, 'IP Blacklist', 'blacklist', '', '2015-03-21 03:49:41', '2015-03-21 03:49:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(94, 1, 'Captcha Setup', 'captcha', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(95, 1, 'Spam Control', 'antispam', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(96, 1, 'Maintenance Mode', 'maintenance', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(97, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(98, 1, 'Login Destination', 'postlogin', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(99, 1, 'Public Profiles', 'profiles', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(100, 1, 'Public Registration', 'open', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(101, 1, 'Authentication Types', 'authentication', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(102, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(103, 1, 'SMTP Method', 'method', '', '2015-03-21 03:49:42', '2015-03-21 03:49:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(104, 1, 'Test Mail Settings', 'test', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(105, 1, 'Email Importers', 'importers', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(106, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(107, 1, 'Settings', 'settings', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(108, 1, 'Community Points', 'points', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(109, 1, 'Banned Words', 'bannedwords', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(110, 1, 'Conversation Permissions', 'permissions', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(111, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(112, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(113, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(114, 1, 'Topics', 'topics', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(115, 1, 'Add Topic Tree', 'add', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(116, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(117, 1, 'Environment Information', 'info', '', '2015-03-21 03:49:43', '2015-03-21 03:49:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(118, 1, 'Debug Settings', 'debug', '', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(119, 1, 'Logging Settings', 'logging', '', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(120, 1, 'Proxy Server', 'proxy', '', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(121, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(122, 1, 'Backup Database', 'backup', '', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(123, 1, 'Update concrete5', 'update', '', '2015-03-21 03:49:44', '2015-03-21 03:49:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(124, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2015-03-21 03:49:45', '2015-03-21 03:49:45', 'Initial Version', 1, 0, 1, NULL, 2, 4, NULL),
(125, 1, 'Customize Dashboard Home', 'home', '', '2015-03-21 03:49:45', '2015-03-21 03:49:45', 'Initial Version', 1, 0, 1, NULL, 2, 2, NULL),
(126, 1, 'Drafts', '!drafts', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(127, 1, 'Trash', '!trash', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(128, 1, 'Stacks', '!stacks', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(129, 1, 'Login', 'login', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(130, 1, 'Register', 'register', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(131, 1, 'My Account', 'account', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(132, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(133, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(134, 1, 'Messages', 'messages', 'Inbox for site-specific messages.', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(135, 1, 'Inbox', 'inbox', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(136, 1, 'Members', 'members', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(137, 1, 'View Profile', 'profile', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(138, 1, 'Directory', 'directory', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(139, 1, 'Page Not Found', 'page_not_found', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(140, 1, 'Page Forbidden', 'page_forbidden', '', '2015-03-21 03:49:57', '2015-03-21 03:49:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(141, 1, 'Download File', 'download_file', '', '2015-03-21 03:49:58', '2015-03-21 03:49:58', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(142, 1, '', NULL, NULL, '2015-03-21 03:49:59', '2015-03-21 03:49:59', 'Version 1', 1, 0, NULL, NULL, 0, 5, NULL),
(148, 1, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 03:52:36', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(148, 2, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 03:56:59', '新バージョン 2', 0, 0, 1, 1, 2, 0, NULL),
(148, 3, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 03:57:59', '新バージョン 3', 0, 0, 1, 1, 2, 0, NULL),
(148, 4, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 03:58:31', '新バージョン 4', 0, 0, 1, 1, 2, 0, NULL),
(148, 5, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 03:58:44', '新バージョン 5', 0, 0, 1, 1, 2, 0, NULL),
(148, 6, 'Masthead', 'masthead', NULL, '2015-03-21 03:52:36', '2015-03-21 04:02:05', '新バージョン 6', 1, 0, 1, 1, 2, 0, NULL),
(149, 1, 'Site Name', 'site-name', NULL, '2015-03-21 03:52:40', '2015-03-21 03:52:40', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(149, 2, 'Site Name', 'site-name', NULL, '2015-03-21 03:52:40', '2015-03-21 04:02:57', '新バージョン 2', 1, 0, 1, 1, 2, 0, NULL),
(150, 1, 'Header Right', 'header-right', NULL, '2015-03-21 03:52:41', '2015-03-21 03:52:41', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(150, 2, 'Header Right', 'header-right', NULL, '2015-03-21 03:52:41', '2015-03-21 04:03:44', '新バージョン 2', 1, 0, 1, 1, 2, 0, NULL),
(151, 1, 'Header Nav', 'header-nav', NULL, '2015-03-21 03:52:43', '2015-03-21 03:52:43', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(151, 2, 'Header Nav', 'header-nav', NULL, '2015-03-21 03:52:43', '2015-03-21 04:05:42', '新バージョン 2', 0, 0, 1, 1, 2, 0, NULL),
(151, 3, 'Header Nav', 'header-nav', NULL, '2015-03-21 03:52:43', '2015-03-21 04:05:55', '新バージョン 3', 0, 0, 1, 1, 2, 0, NULL),
(151, 4, 'Header Nav', 'header-nav', NULL, '2015-03-21 03:52:43', '2015-03-21 04:16:30', '新バージョン 4', 0, 0, 1, NULL, 2, 0, NULL),
(151, 5, 'Header Nav', 'header-nav', NULL, '2015-03-21 03:52:43', '2015-03-21 04:55:33', '新バージョン 5', 1, 0, 1, 1, 2, 0, NULL),
(152, 1, 'Breadcrumbs', 'breadcrumbs', NULL, '2015-03-21 03:52:45', '2015-03-21 03:52:45', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(152, 2, 'Breadcrumbs', 'breadcrumbs', NULL, '2015-03-21 03:52:45', '2015-03-21 04:16:09', '新バージョン 2', 0, 0, 1, NULL, 2, 0, NULL),
(153, 1, 'Footer', 'footer', NULL, '2015-03-21 03:52:45', '2015-03-21 03:52:45', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(153, 2, 'Footer', 'footer', NULL, '2015-03-21 03:52:45', '2015-03-21 04:19:50', '新バージョン 2', 0, 0, 1, NULL, 2, 0, NULL),
(153, 3, 'Footer', 'footer', NULL, '2015-03-21 03:52:45', '2015-03-21 04:20:06', '新バージョン 3', 0, 0, 1, NULL, 2, 0, NULL),
(153, 4, 'Footer', 'footer', NULL, '2015-03-21 03:52:45', '2015-03-21 04:21:10', '新バージョン 4', 0, 0, 1, NULL, 2, 0, NULL),
(154, 1, '検索', 'search', '検索結果を表示するページです', '2015-03-21 03:59:00', '2015-03-21 03:59:01', '検索結果ページを作成', 1, 0, 1, 1, 2, 5, NULL),
(155, 1, 'サイトバー', '', NULL, '2015-03-21 04:11:07', '2015-03-21 04:11:07', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(155, 2, 'サイトバー', '', NULL, '2015-03-21 04:11:07', '2015-03-21 04:14:14', '新バージョン 2', 0, 0, 1, NULL, 2, 0, NULL),
(155, 3, 'サイトバー', '', NULL, '2015-03-21 04:11:07', '2015-03-21 04:15:04', '新バージョン 3', 1, 0, 1, 1, 2, 0, NULL),
(156, 1, '', NULL, NULL, '2015-03-21 04:17:40', '2015-03-21 04:17:40', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(157, 1, '', NULL, NULL, '2015-03-21 04:19:36', '2015-03-21 04:19:36', 'Version 1', 1, 0, NULL, NULL, 0, 8, NULL),
(158, 1, 'お知らせ', 'news', '当店のお知らせを紹介いたします', '2015-03-21 04:21:49', '2015-03-21 04:21:49', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL),
(158, 2, 'お知らせ', 'news', '当店のお知らせを紹介いたします', '2015-03-21 04:21:00', '2015-03-21 04:24:33', 'お知らせページを作成', 1, 0, 1, 1, 2, 5, NULL),
(159, 1, '', NULL, NULL, '2015-03-21 04:27:58', '2015-03-21 04:27:58', 'コンポーザーブロックを追加', 1, 0, NULL, 1, 0, 5, NULL),
(160, 1, '', '', NULL, '2015-03-21 04:34:25', '2015-03-21 04:34:25', 'Initial Version', 0, 1, 1, NULL, 2, 5, NULL),
(161, 1, 'シーフードフェア2015を開催します！', '2015', 'シーフードフェア2015を開催します！', '2015-03-21 04:37:00', '2015-03-21 04:37:48', 'Initial Version', 1, 0, 1, 1, 2, 5, NULL),
(162, 1, '忘年会・新年会のパーティーメニュー', 'bonenkai-2014', '忘年会メニュー', '2014-11-03 04:38:00', '2015-03-21 04:38:52', 'Initial Version', 1, 0, 1, 1, 2, 5, NULL),
(163, 1, '季節限定スイーツが登場！', '', '季節限定スイーツが登場！', '2014-10-07 04:39:00', '2015-03-21 04:39:33', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL),
(163, 2, '季節限定スイーツが登場！', 'season-sweets', '季節限定スイーツが登場！', '2015-03-21 04:40:00', '2015-03-21 04:40:17', '新バージョン 2', 1, 0, 1, 1, 2, 5, NULL),
(164, 1, '2015 クリスマス・ディナーのご予約をはじめました', '2015', '2015 クリスマス・ディナーのご予約をはじめました', '2015-04-08 04:40:00', '2015-03-21 04:40:52', 'Initial Version', 1, 0, 1, 1, 2, 5, NULL),
(165, 1, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:45:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(165, 2, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:45:45', '新バージョン 2', 0, 0, 1, NULL, 2, 0, NULL),
(165, 3, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:50:15', '新バージョン 3', 0, 0, 1, NULL, 2, 0, NULL),
(165, 4, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:50:28', '新バージョン 4', 0, 0, 1, NULL, 2, 0, NULL),
(165, 5, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:51:24', '新バージョン 5', 0, 0, 1, NULL, 2, 0, NULL),
(165, 6, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:51:32', '新バージョン 6', 0, 0, 1, NULL, 2, 0, NULL),
(165, 7, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:52:21', '新バージョン 7', 0, 0, 1, NULL, 2, 0, NULL),
(165, 8, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:52:33', '新バージョン 8', 0, 0, 1, NULL, 2, 0, NULL),
(165, 9, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:52:44', '新バージョン 9', 0, 0, 1, NULL, 2, 0, NULL),
(165, 10, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:52:54', '新バージョン 10', 0, 0, 1, NULL, 2, 0, NULL),
(165, 11, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:53:44', '新バージョン 11', 0, 0, 1, NULL, 2, 0, NULL),
(165, 12, 'ランチメニュー', '', NULL, '2015-03-21 04:45:26', '2015-03-21 04:53:59', '新バージョン 12', 1, 0, 1, 1, 2, 0, NULL),
(166, 1, 'メニュー', 'menu', 'メニューの紹介', '2015-03-21 04:58:42', '2015-03-21 04:58:42', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL),
(166, 2, 'メニュー', 'menu', 'メニューの紹介', '2015-03-21 04:58:00', '2015-03-21 05:11:38', 'ページリスト追加', 1, 0, 1, 1, 2, 5, NULL),
(167, 1, '', NULL, NULL, '2015-03-21 05:00:58', '2015-03-21 05:00:58', 'Version 1', 1, 0, NULL, 1, 0, 5, NULL),
(168, 1, 'ランチメニュー', 'lunch', NULL, '2015-03-21 05:05:31', '2015-03-21 05:05:31', 'Initial Version', 0, 1, 1, NULL, 2, 5, NULL),
(169, 1, 'ランチメニュー', 'lunch', 'お得なランチメニューを紹介。', '2015-03-21 05:13:00', '2015-03-21 05:13:33', 'ランチメニュー', 1, 0, 1, 1, 2, 5, NULL),
(170, 1, 'ディナー', 'dinner', 'ディナーメニューをご紹介', '2015-03-21 05:17:00', '2015-03-21 05:17:43', 'ディナーページ公開', 0, 0, 1, 1, 2, 5, NULL),
(170, 2, 'ディナー', 'dinner', 'ディナーメニューをご紹介', '2015-03-21 05:17:00', '2015-03-21 05:20:23', '新バージョン 2', 1, 0, 1, 1, 2, 5, NULL),
(171, 1, 'ディナー', 'dinner', 'ディナーメニューをご紹介', '2015-03-21 05:17:00', '2015-03-21 05:20:55', 'ディナーページ公開', 0, 0, 1, NULL, 2, 5, NULL),
(171, 2, 'ディナー 2', 'dinner-2', 'ディナーメニューをご紹介', '2015-03-21 05:17:00', '2015-03-21 05:20:56', '新バージョン 2', 0, 0, 1, NULL, 2, 5, NULL),
(171, 3, 'パーティー', 'party', 'パーティーメニューをご紹介', '2015-03-21 05:17:00', '2015-03-21 05:21:07', '公開', 1, 0, 1, 1, 2, 5, NULL),
(172, 1, 'オリーブの気持ちについて', 'about', '当店の紹介です', '2015-03-21 05:24:34', '2015-03-21 05:24:34', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL),
(172, 2, 'オリーブの気持ちについて', 'about', '当店の紹介です', '2015-03-21 05:24:00', '2015-03-21 05:27:06', 'ページ公開', 1, 0, 1, 1, 2, 5, NULL),
(173, 1, 'お問い合わせ', 'coutacu', '当店へのお問い合わせはこちらから。', '2015-03-21 05:27:00', '2015-03-21 05:27:44', 'お問い合わせページを公開', 1, 0, 1, 1, 2, 5, NULL),
(174, 1, 'ブログ', 'blog', 'ブログを公開', '2015-03-21 05:30:50', '2015-03-21 05:30:50', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL),
(174, 2, 'ブログ', 'blog', 'ブログを公開', '2015-03-21 05:30:00', '2015-03-21 05:31:54', 'ページを公開', 1, 0, 1, 1, 2, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'concrete', 'security.token.encryption', 'AJDyvTKuKK8KVjuZ6bmPHA9hC9iG3vxNfy4J8QFJjXHyZNDeqn0IyWUoiF2y73LK'),
('', 'concrete', 'security.token.jobs', 'SaxTLSrqY6H27A9NLFsBXWgIo8PvEfHTuj7gcsAklrK1rcO9LEPuY5RU2KJu3Q20'),
('', 'concrete', 'security.token.validation', 'DwjRQ14GoNYxFJAmOqAwHPErFLS8P6Ce2SaPVgOHpiko82AhytocvYlfhEDXqzun');

-- --------------------------------------------------------

--
-- Table structure for table `ConfigStore`
--

CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ConfigStore`
--

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('DISABLED_HELP_NOTIFICATIONS', '2015-03-21 02:50:48', 'all', 1, 0),
('NEWSFLOW_LAST_VIEWED', '2015-03-21 02:50:00', '1426906225', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationDiscussions`
--

CREATE TABLE `ConversationDiscussions` (
`cnvDiscussionID` int(10) unsigned NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationEditors`
--

CREATE TABLE `ConversationEditors` (
`cnvEditorID` int(10) unsigned NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 0, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'redactor', 'Redactor', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessages`
--

CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

CREATE TABLE `ConversationFlaggedMessageTypes` (
`cnvMessageFlagTypeID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageAttachments`
--

CREATE TABLE `ConversationMessageAttachments` (
`cnvMessageAttachmentID` int(10) unsigned NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageRatings`
--

CREATE TABLE `ConversationMessageRatings` (
`cnvMessageRatingID` int(10) unsigned NOT NULL,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessages`
--

CREATE TABLE `ConversationMessages` (
`cnvMessageID` int(10) unsigned NOT NULL,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAssignments`
--

CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 66, 65),
(0, 67, 66),
(0, 70, 67),
(0, 69, 68),
(0, 71, 69),
(0, 68, 70),
(0, 72, 71),
(0, 73, 72);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationRatingTypes`
--

CREATE TABLE `ConversationRatingTypes` (
`cnvRatingTypeID` int(10) unsigned NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ConversationRatingTypes`
--

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Conversations`
--

CREATE TABLE `Conversations` (
`cnvID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` smallint(5) unsigned DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
`dsID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FeatureAssignments`
--

CREATE TABLE `FeatureAssignments` (
`faID` int(10) unsigned NOT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FeatureAssignments`
--

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:55:"/c5ngo/application/files/9514/2690/6546/header_logo.png";s:8:"\0*\0width";d:376;s:9:"\0*\0height";d:68;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(2, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:62:"/c5ngo/application/files/1614/2690/7421/announcement_title.png";s:8:"\0*\0width";d:620;s:9:"\0*\0height";d:33;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(4, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:60:"/c5ngo/application/files/9914/2690/7563/lunch_menu_title.png";s:8:"\0*\0width";d:620;s:9:"\0*\0height";d:40;s:7:"\0*\0item";N;s:5:"error";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `FeatureCategories`
--

CREATE TABLE `FeatureCategories` (
`fcID` int(10) unsigned NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FeatureCategories`
--

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Features`
--

CREATE TABLE `Features` (
`feID` int(10) unsigned NOT NULL,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Features`
--

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 14, 112),
(1, 1, 15, 113),
(2, 1, 14, 114),
(2, 1, 15, 115),
(3, 1, 14, 116),
(3, 1, 15, 117),
(4, 1, 14, 118),
(4, 1, 15, 119),
(5, 1, 14, 120),
(5, 1, 15, 121),
(6, 1, 14, 122),
(6, 1, 15, 123),
(7, 1, 14, 124),
(7, 1, 15, 125),
(8, 1, 14, 130),
(8, 1, 15, 131),
(9, 1, 14, 132),
(9, 1, 15, 133),
(10, 1, 14, 134),
(10, 1, 15, 135),
(11, 1, 14, 136),
(11, 1, 15, 137),
(12, 1, 14, 138),
(12, 1, 15, 139),
(13, 1, 14, 140),
(13, 1, 15, 141),
(14, 1, 14, 142),
(14, 1, 15, 143),
(15, 1, 14, 144),
(15, 1, 15, 145),
(16, 1, 14, 146),
(16, 1, 15, 147),
(17, 1, 14, 148),
(17, 1, 15, 149),
(18, 1, 14, 152),
(18, 1, 15, 153),
(19, 1, 14, 154),
(19, 1, 15, 155),
(20, 1, 14, 156),
(20, 1, 15, 157),
(21, 1, 14, 158),
(21, 1, 15, 159),
(22, 1, 14, 160),
(22, 1, 15, 161),
(23, 1, 14, 162),
(23, 1, 15, 163),
(24, 1, 14, 164),
(24, 1, 15, 165),
(25, 1, 14, 167),
(25, 1, 15, 168),
(26, 1, 14, 169),
(26, 1, 15, 170),
(27, 1, 14, 171),
(27, 1, 15, 172),
(28, 1, 14, 173),
(28, 1, 15, 174),
(29, 1, 14, 175),
(29, 1, 15, 176),
(30, 1, 14, 177),
(30, 1, 15, 178),
(31, 1, 14, 179),
(31, 1, 15, 180),
(32, 1, 14, 181),
(32, 1, 15, 182),
(33, 1, 14, 194),
(33, 1, 15, 195);

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypes`
--

CREATE TABLE `FileImageThumbnailTypes` (
`ftTypeID` int(10) unsigned NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1),
(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
`fID` int(10) unsigned NOT NULL,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2015-03-21 03:55:43', 1, 1, 0, 0, NULL),
(2, '2015-03-21 03:55:45', 1, 1, 0, 0, NULL),
(3, '2015-03-21 03:55:45', 1, 1, 0, 0, NULL),
(4, '2015-03-21 03:55:46', 1, 1, 0, 0, NULL),
(5, '2015-03-21 03:55:47', 1, 1, 0, 0, NULL),
(6, '2015-03-21 03:55:48', 1, 1, 0, 0, NULL),
(7, '2015-03-21 03:55:49', 1, 1, 0, 0, NULL),
(8, '2015-03-21 04:08:28', 1, 1, 0, 0, NULL),
(9, '2015-03-21 04:08:29', 1, 1, 0, 0, NULL),
(10, '2015-03-21 04:08:29', 1, 1, 0, 0, NULL),
(11, '2015-03-21 04:08:30', 1, 1, 0, 0, NULL),
(12, '2015-03-21 04:08:31', 1, 1, 0, 0, NULL),
(13, '2015-03-21 04:08:31', 1, 1, 0, 0, NULL),
(14, '2015-03-21 04:08:32', 1, 1, 0, 0, NULL),
(15, '2015-03-21 04:08:32', 1, 1, 0, 0, NULL),
(16, '2015-03-21 04:08:33', 1, 1, 0, 0, NULL),
(17, '2015-03-21 04:08:33', 1, 1, 0, 0, NULL),
(18, '2015-03-21 04:10:21', 1, 1, 0, 0, NULL),
(19, '2015-03-21 04:12:31', 1, 1, 0, 0, NULL),
(20, '2015-03-21 04:12:33', 1, 1, 0, 0, NULL),
(21, '2015-03-21 04:12:43', 1, 1, 0, 0, NULL),
(22, '2015-03-21 04:12:50', 1, 1, 0, 0, NULL),
(23, '2015-03-21 04:12:52', 1, 1, 0, 0, NULL),
(24, '2015-03-21 04:14:50', 1, 1, 0, 0, NULL),
(25, '2015-03-21 04:46:38', 1, 1, 0, 0, NULL),
(26, '2015-03-21 04:46:39', 1, 1, 0, 0, NULL),
(27, '2015-03-21 04:46:40', 1, 1, 0, 0, NULL),
(28, '2015-03-21 04:46:41', 1, 1, 0, 0, NULL),
(29, '2015-03-21 04:46:41', 1, 1, 0, 0, NULL),
(30, '2015-03-21 04:46:42', 1, 1, 0, 0, NULL),
(31, '2015-03-21 04:46:42', 1, 1, 0, 0, NULL),
(32, '2015-03-21 04:46:43', 1, 1, 0, 0, NULL),
(33, '2015-03-21 05:26:16', 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, 940.0000, 305.0000, 0.0000),
(2, 28.0000, 28.0000, 0.0000),
(3, 940.0000, 305.0000, 0.0000),
(4, 376.0000, 68.0000, 0.0000),
(5, 940.0000, 305.0000, 0.0000),
(6, 300.0000, 22.0000, 0.0000),
(7, 28.0000, 28.0000, 0.0000),
(8, 188.0000, 44.0000, 0.0000),
(9, 188.0000, 44.0000, 0.0000),
(10, 188.0000, 44.0000, 0.0000),
(11, 188.0000, 44.0000, 0.0000),
(12, 188.0000, 44.0000, 0.0000),
(13, 188.0000, 44.0000, 0.0000),
(14, 188.0000, 44.0000, 0.0000),
(15, 188.0000, 44.0000, 0.0000),
(16, 188.0000, 44.0000, 0.0000),
(17, 188.0000, 44.0000, 0.0000),
(18, 620.0000, 33.0000, 0.0000),
(19, 300.0000, 30.0000, 0.0000),
(20, 300.0000, 50.0000, 0.0000),
(21, 620.0000, 40.0000, 0.0000),
(22, 300.0000, 146.0000, 0.0000),
(23, 300.0000, 363.0000, 0.0000),
(24, 300.0000, 30.0000, 0.0000),
(25, 208.0000, 153.0000, 0.0000),
(26, 208.0000, 153.0000, 0.0000),
(27, 381.0000, 26.0000, 0.0000),
(28, 381.0000, 26.0000, 0.0000),
(29, 208.0000, 153.0000, 0.0000),
(30, 381.0000, 26.0000, 0.0000),
(31, 208.0000, 153.0000, 0.0000),
(32, 381.0000, 26.0000, 0.0000),
(33, 221.0000, 221.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
`fsfID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileSetFiles`
--

INSERT INTO `FileSetFiles` (`fsfID`, `fID`, `fsID`, `timestamp`, `fsDisplayOrder`) VALUES
(1, 7, 1, '2015-03-20 18:56:06', 0),
(2, 6, 1, '2015-03-20 18:56:06', 1),
(3, 5, 1, '2015-03-20 18:56:06', 2),
(4, 4, 1, '2015-03-20 18:56:06', 3),
(5, 2, 1, '2015-03-20 18:56:06', 4),
(6, 3, 1, '2015-03-20 18:56:06', 5),
(7, 1, 1, '2015-03-20 18:56:06', 6),
(18, 17, 2, '2015-03-20 19:08:57', 0),
(19, 16, 2, '2015-03-20 19:08:57', 1),
(20, 14, 2, '2015-03-20 19:08:57', 2),
(21, 15, 2, '2015-03-20 19:08:57', 3),
(22, 12, 2, '2015-03-20 19:08:57', 4),
(23, 13, 2, '2015-03-20 19:08:57', 5),
(24, 11, 2, '2015-03-20 19:08:57', 6),
(25, 9, 2, '2015-03-20 19:08:57', 7),
(26, 10, 2, '2015-03-20 19:08:57', 8),
(27, 8, 2, '2015-03-20 19:08:57', 9),
(44, 32, 3, '2015-03-20 19:47:27', 0),
(45, 30, 3, '2015-03-20 19:47:27', 1),
(46, 31, 3, '2015-03-20 19:47:27', 2),
(47, 28, 3, '2015-03-20 19:47:27', 3),
(48, 29, 3, '2015-03-20 19:47:27', 4),
(49, 27, 3, '2015-03-20 19:47:27', 5),
(50, 26, 3, '2015-03-20 19:47:27', 6),
(51, 25, 3, '2015-03-20 19:47:27', 7),
(67, 24, 4, '2015-03-20 19:48:18', 0),
(68, 23, 4, '2015-03-20 19:48:18', 1),
(69, 22, 4, '2015-03-20 19:48:18', 2),
(70, 20, 4, '2015-03-20 19:48:18', 3),
(71, 19, 4, '2015-03-20 19:48:18', 4),
(80, 21, 5, '2015-03-20 19:48:50', 0),
(81, 18, 5, '2015-03-20 19:48:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionAssignments`
--

CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `pkID`, `paID`) VALUES
(0, 39, 31),
(0, 40, 32),
(0, 41, 33),
(0, 42, 34),
(0, 43, 35),
(0, 44, 36),
(0, 46, 37),
(0, 45, 38),
(0, 47, 39);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

CREATE TABLE `FileSets` (
`fsID` int(10) unsigned NOT NULL,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileSets`
--

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1, 'ヘッダー', 1, 1, 0),
(2, 'グローバルナビ', 1, 1, 0),
(3, 'ランチメニュー', 1, 1, 0),
(4, 'サイドバー', 1, 1, 0),
(5, 'ページタイトル画像', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
`fslID` int(10) unsigned NOT NULL,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileStorageLocations`
--

INSERT INTO `FileStorageLocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
(1, 'Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocationTypes`
--

CREATE TABLE `FileStorageLocationTypes` (
`fslTypeID` int(10) unsigned NOT NULL,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileStorageLocationTypes`
--

INSERT INTO `FileStorageLocationTypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
(1, 'default', 'Default', 0),
(2, 'local', 'Local', 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
`fvlID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileVersionLog`
--

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 14),
(2, 1, 1, 5, 15),
(3, 2, 1, 5, 14),
(4, 2, 1, 5, 15),
(5, 3, 1, 5, 14),
(6, 3, 1, 5, 15),
(7, 4, 1, 5, 14),
(8, 4, 1, 5, 15),
(9, 5, 1, 5, 14),
(10, 5, 1, 5, 15),
(11, 6, 1, 5, 14),
(12, 6, 1, 5, 15),
(13, 7, 1, 5, 14),
(14, 7, 1, 5, 15),
(15, 8, 1, 5, 14),
(16, 8, 1, 5, 15),
(17, 9, 1, 5, 14),
(18, 9, 1, 5, 15),
(19, 10, 1, 5, 14),
(20, 10, 1, 5, 15),
(21, 11, 1, 5, 14),
(22, 11, 1, 5, 15),
(23, 12, 1, 5, 14),
(24, 12, 1, 5, 15),
(25, 13, 1, 5, 14),
(26, 13, 1, 5, 15),
(27, 14, 1, 5, 14),
(28, 14, 1, 5, 15),
(29, 15, 1, 5, 14),
(30, 15, 1, 5, 15),
(31, 16, 1, 5, 14),
(32, 16, 1, 5, 15),
(33, 17, 1, 5, 14),
(34, 17, 1, 5, 15),
(35, 18, 1, 5, 14),
(36, 18, 1, 5, 15),
(37, 19, 1, 5, 14),
(38, 19, 1, 5, 15),
(39, 20, 1, 5, 14),
(40, 20, 1, 5, 15),
(41, 21, 1, 5, 14),
(42, 21, 1, 5, 15),
(43, 22, 1, 5, 14),
(44, 22, 1, 5, 15),
(45, 23, 1, 5, 14),
(46, 23, 1, 5, 15),
(47, 24, 1, 5, 14),
(48, 24, 1, 5, 15),
(49, 25, 1, 5, 14),
(50, 25, 1, 5, 15),
(51, 26, 1, 5, 14),
(52, 26, 1, 5, 15),
(53, 27, 1, 5, 14),
(54, 27, 1, 5, 15),
(55, 28, 1, 5, 14),
(56, 28, 1, 5, 15),
(57, 29, 1, 5, 14),
(58, 29, 1, 5, 15),
(59, 30, 1, 5, 14),
(60, 30, 1, 5, 15),
(61, 31, 1, 5, 14),
(62, 31, 1, 5, 15),
(63, 32, 1, 5, 14),
(64, 32, 1, 5, 15),
(65, 33, 1, 5, 14),
(66, 33, 1, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FileVersions`
--

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
(1, 1, 'header_image_03.jpg', '821426906543', 0, 114155, 'header_image_03.jpg', NULL, '', 1, '2015-03-21 03:55:43', 1, 1, '2015-03-21 03:55:43', 1, 1, 'jpg', 1),
(2, 1, 'header_facebook_icon.png', '681426906545', 0, 2933, 'header_facebook_icon.png', NULL, '', 1, '2015-03-21 03:55:45', 1, 1, '2015-03-21 03:55:45', 0, 0, 'png', 1),
(3, 1, 'header_image_01.jpg', '781426906545', 0, 107235, 'header_image_01.jpg', NULL, '', 1, '2015-03-21 03:55:45', 1, 1, '2015-03-21 03:55:45', 1, 1, 'jpg', 1),
(4, 1, 'header_logo.png', '951426906546', 0, 17560, 'header_logo.png', NULL, '', 1, '2015-03-21 03:55:46', 1, 1, '2015-03-21 03:55:46', 1, 0, 'png', 1),
(5, 1, 'header_image_02.jpg', '261426906547', 0, 91964, 'header_image_02.jpg', NULL, '', 1, '2015-03-21 03:55:47', 1, 1, '2015-03-21 03:55:47', 1, 1, 'jpg', 1),
(6, 1, 'header_phone_num.png', '481426906548', 0, 3246, 'header_phone_num.png', NULL, '', 1, '2015-03-21 03:55:48', 1, 1, '2015-03-21 03:55:48', 1, 0, 'png', 1),
(7, 1, 'header_twitter_icon.png', '321426906549', 0, 3200, 'header_twitter_icon.png', NULL, '', 1, '2015-03-21 03:55:49', 1, 1, '2015-03-21 03:55:49', 0, 0, 'png', 1),
(8, 1, 'gn_01_btn_over.png', '621426907308', 0, 1377, 'gn_01_btn_over.png', NULL, '', 1, '2015-03-21 04:08:28', 1, 1, '2015-03-21 04:08:28', 1, 0, 'png', 1),
(9, 1, 'gn_01_btn.png', '571426907309', 0, 1066, 'gn_01_btn.png', NULL, '', 1, '2015-03-21 04:08:29', 1, 1, '2015-03-21 04:08:29', 1, 0, 'png', 1),
(10, 1, 'gn_02_btn_over.png', '491426907309', 0, 979, 'gn_02_btn_over.png', NULL, '', 1, '2015-03-21 04:08:29', 1, 1, '2015-03-21 04:08:29', 1, 0, 'png', 1),
(11, 1, 'gn_02_btn.png', '391426907310', 0, 943, 'gn_02_btn.png', NULL, '', 1, '2015-03-21 04:08:30', 1, 1, '2015-03-21 04:08:30', 1, 0, 'png', 1),
(12, 1, 'gn_03_btn_over.png', '821426907311', 0, 4324, 'gn_03_btn_over.png', NULL, '', 1, '2015-03-21 04:08:31', 1, 1, '2015-03-21 04:08:31', 1, 0, 'png', 1),
(13, 1, 'gn_03_btn.png', '301426907311', 0, 1734, 'gn_03_btn.png', NULL, '', 1, '2015-03-21 04:08:31', 1, 1, '2015-03-21 04:08:31', 1, 0, 'png', 1),
(14, 1, 'gn_04_btn_over.png', '361426907312', 0, 1840, 'gn_04_btn_over.png', NULL, '', 1, '2015-03-21 04:08:32', 1, 1, '2015-03-21 04:08:32', 1, 0, 'png', 1),
(15, 1, 'gn_04_btn.png', '731426907312', 0, 1796, 'gn_04_btn.png', NULL, '', 1, '2015-03-21 04:08:32', 1, 1, '2015-03-21 04:08:32', 1, 0, 'png', 1),
(16, 1, 'gn_05_btn_over.png', '361426907313', 0, 1652, 'gn_05_btn_over.png', NULL, '', 1, '2015-03-21 04:08:33', 1, 1, '2015-03-21 04:08:33', 1, 0, 'png', 1),
(17, 1, 'gn_05_btn.png', '141426907313', 0, 1593, 'gn_05_btn.png', NULL, '', 1, '2015-03-21 04:08:34', 1, 1, '2015-03-21 04:08:34', 1, 0, 'png', 1),
(18, 1, 'announcement_title.png', '161426907421', 0, 3521, 'announcement_title.png', NULL, '', 1, '2015-03-21 04:10:21', 1, 1, '2015-03-21 04:10:21', 1, 1, 'png', 1),
(19, 1, 'business_hours_title.png', '971426907551', 0, 2574, 'business_hours_title.png', NULL, '', 1, '2015-03-21 04:12:31', 1, 1, '2015-03-21 04:12:31', 1, 0, 'png', 1),
(20, 1, 'dolce_banner.jpg', '681426907553', 0, 10360, 'dolce_banner.jpg', NULL, '', 1, '2015-03-21 04:12:33', 1, 1, '2015-03-21 04:12:33', 1, 0, 'jpg', 1),
(21, 1, 'lunch_menu_title.png', '991426907563', 0, 5301, 'lunch_menu_title.png', NULL, '', 1, '2015-03-21 04:12:43', 1, 1, '2015-03-21 04:12:43', 1, 1, 'png', 1),
(22, 1, 'party_banner.jpg', '281426907569', 0, 28617, 'party_banner.jpg', NULL, '', 1, '2015-03-21 04:12:50', 1, 1, '2015-03-21 04:12:50', 1, 0, 'jpg', 1),
(23, 1, 'recommend_banner.jpg', '271426907572', 0, 53490, 'recommend_banner.jpg', NULL, '', 1, '2015-03-21 04:12:52', 1, 1, '2015-03-21 04:12:52', 1, 0, 'jpg', 1),
(24, 1, 'access_map_title.png', '821426907690', 0, 3800, 'access_map_title.png', NULL, '', 1, '2015-03-21 04:14:50', 1, 1, '2015-03-21 04:14:50', 1, 0, 'png', 1),
(25, 1, 'a_lunch_photo.jpg', '401426909598', 0, 26349, 'a_lunch_photo.jpg', NULL, '', 1, '2015-03-21 04:46:38', 1, 1, '2015-03-21 04:46:38', 1, 0, 'jpg', 1),
(26, 1, 'b_lunch_photo.jpg', '721426909599', 0, 26651, 'b_lunch_photo.jpg', NULL, '', 1, '2015-03-21 04:46:39', 1, 1, '2015-03-21 04:46:39', 1, 0, 'jpg', 1),
(27, 1, 'a_lunch_title.png', '181426909600', 0, 2185, 'a_lunch_title.png', NULL, '', 1, '2015-03-21 04:46:40', 1, 1, '2015-03-21 04:46:40', 1, 0, 'png', 1),
(28, 1, 'b_lunch_title.png', '651426909601', 0, 2177, 'b_lunch_title.png', NULL, '', 1, '2015-03-21 04:46:41', 1, 1, '2015-03-21 04:46:41', 1, 0, 'png', 1),
(29, 1, 'pasta_lunch_photo.jpg', '951426909601', 0, 29167, 'pasta_lunch_photo.jpg', NULL, '', 1, '2015-03-21 04:46:41', 1, 1, '2015-03-21 04:46:41', 1, 0, 'jpg', 1),
(30, 1, 'pasta_lunch_title.png', '811426909602', 0, 2293, 'pasta_lunch_title.png', NULL, '', 1, '2015-03-21 04:46:42', 1, 1, '2015-03-21 04:46:42', 1, 0, 'png', 1),
(31, 1, 'pizza_lunch_photo.jpg', '441426909602', 0, 19810, 'pizza_lunch_photo.jpg', NULL, '', 1, '2015-03-21 04:46:42', 1, 1, '2015-03-21 04:46:42', 1, 0, 'jpg', 1),
(32, 1, 'pizza_lunch_title.png', '131426909603', 0, 2341, 'pizza_lunch_title.png', NULL, '', 1, '2015-03-21 04:46:43', 1, 1, '2015-03-21 04:46:43', 1, 0, 'png', 1),
(33, 1, 'olive_about_mark.png', '941426911976', 0, 65843, 'olive_about_mark.png', NULL, '', 1, '2015-03-21 05:26:16', 1, 1, '2015-03-21 05:26:16', 1, 0, 'png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gaPage`
--

CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringConfiguredDataSources`
--

CREATE TABLE `GatheringConfiguredDataSources` (
`gcsID` int(10) unsigned NOT NULL,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringDataSources`
--

CREATE TABLE `GatheringDataSources` (
`gasID` int(10) unsigned NOT NULL,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GatheringDataSources`
--

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

CREATE TABLE `GatheringItemFeatureAssignments` (
`gafaID` int(10) unsigned NOT NULL,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItems`
--

CREATE TABLE `GatheringItems` (
`gaiID` int(10) unsigned NOT NULL,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

CREATE TABLE `GatheringItemTemplateFeatures` (
`gfeID` int(10) unsigned NOT NULL,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplates`
--

CREATE TABLE `GatheringItemTemplates` (
`gatID` int(10) unsigned NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplates`
--

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateTypes`
--

CREATE TABLE `GatheringItemTemplateTypes` (
`gatTypeID` int(10) unsigned NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringPermissionAssignments`
--

CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Gatherings`
--

CREATE TABLE `Gatherings` (
`gaID` int(10) unsigned NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
`gID` int(10) unsigned NOT NULL,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

CREATE TABLE `GroupSets` (
`gsID` int(10) unsigned NOT NULL,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
`jID` int(10) unsigned NOT NULL,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2015-03-21 03:49:38', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

CREATE TABLE `JobSets` (
`jsID` int(10) unsigned NOT NULL,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

CREATE TABLE `JobsLog` (
`jlID` int(10) unsigned NOT NULL,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
`logID` int(10) unsigned NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Logs`
--

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1, 'application', 1426906306, 'ページ「Header Site Title」（パス /!stacks/header-site-title ）を削除しました', 1, 100),
(2, 'application', 1426906314, 'ページ「Header Navigation」（パス /!stacks/header-navigation ）を削除しました', 1, 100),
(3, 'application', 1426906323, 'ページ「Footer Legal」（パス /!stacks/footer-legal ）を削除しました', 1, 100),
(4, 'application', 1426906333, 'ページ「Footer Navigation」（パス /!stacks/footer-navigation ）を削除しました', 1, 100),
(5, 'application', 1426906341, 'ページ「Footer Contact」（パス /!stacks/footer-contact ）を削除しました', 1, 100),
(6, 'application', 1426910260, 'ページ「」（パス /!drafts/160 ）をゴミ箱に移動しました', 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

CREATE TABLE `MailImporters` (
`miID` int(10) unsigned NOT NULL,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
`mvhID` int(10) unsigned NOT NULL,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualPageRelations`
--

CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualSections`
--

CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualTranslations`
--

CREATE TABLE `MultilingualTranslations` (
`mtID` int(10) unsigned NOT NULL,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgstr` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OauthUserMap`
--

CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
`pkgID` int(10) unsigned NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageFeeds`
--

CREATE TABLE `PageFeeds` (
`pfID` int(10) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

CREATE TABLE `PagePaths` (
`ppID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/sitemap', '1'),
(3, 4, '/dashboard/sitemap/full', '1'),
(4, 5, '/dashboard/sitemap/explore', '1'),
(5, 6, '/dashboard/sitemap/search', '1'),
(6, 7, '/dashboard/files', '1'),
(7, 8, '/dashboard/files/search', '1'),
(8, 9, '/dashboard/files/attributes', '1'),
(9, 10, '/dashboard/files/sets', '1'),
(10, 11, '/dashboard/files/add_set', '1'),
(11, 12, '/dashboard/users', '1'),
(12, 13, '/dashboard/users/search', '1'),
(13, 14, '/dashboard/users/groups', '1'),
(14, 15, '/dashboard/users/attributes', '1'),
(15, 16, '/dashboard/users/add', '1'),
(16, 17, '/dashboard/users/add_group', '1'),
(17, 18, '/dashboard/users/groups/bulkupdate', '1'),
(18, 19, '/dashboard/users/group_sets', '1'),
(19, 20, '/dashboard/users/points', '1'),
(20, 21, '/dashboard/users/points/assign', '1'),
(21, 22, '/dashboard/users/points/actions', '1'),
(22, 23, '/dashboard/reports', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/inspect', '1'),
(29, 30, '/dashboard/pages/types', '1'),
(30, 31, '/dashboard/pages/types/organize', '1'),
(31, 32, '/dashboard/pages/types/add', '1'),
(32, 33, '/dashboard/pages/types/form', '1'),
(33, 34, '/dashboard/pages/types/output', '1'),
(34, 35, '/dashboard/pages/types/attributes', '1'),
(35, 36, '/dashboard/pages/types/permissions', '1'),
(36, 37, '/dashboard/pages/templates', '1'),
(37, 38, '/dashboard/pages/templates/add', '1'),
(38, 39, '/dashboard/pages/attributes', '1'),
(39, 40, '/dashboard/pages/single', '1'),
(40, 41, '/dashboard/pages/feeds', '1'),
(41, 42, '/dashboard/conversations', '1'),
(42, 43, '/dashboard/conversations/messages', '1'),
(43, 44, '/dashboard/workflow', '1'),
(44, 45, '/dashboard/workflow/workflows', '1'),
(45, 46, '/dashboard/workflow/me', '1'),
(46, 47, '/dashboard/blocks', '1'),
(47, 48, '/dashboard/blocks/stacks', '1'),
(48, 49, '/dashboard/blocks/permissions', '1'),
(49, 50, '/dashboard/blocks/stacks/list', '1'),
(50, 51, '/dashboard/blocks/types', '1'),
(51, 52, '/dashboard/extend', '1'),
(52, 53, '/dashboard/news', '1'),
(53, 54, '/dashboard/extend/install', '1'),
(54, 55, '/dashboard/extend/update', '1'),
(55, 56, '/dashboard/extend/connect', '1'),
(56, 57, '/dashboard/extend/themes', '1'),
(57, 58, '/dashboard/extend/addons', '1'),
(58, 59, '/dashboard/system', '1'),
(59, 60, '/dashboard/system/basics', '1'),
(60, 61, '/dashboard/system/basics/name', '1'),
(61, 62, '/dashboard/system/basics/accessibility', '1'),
(62, 63, '/dashboard/system/basics/social', '1'),
(63, 64, '/dashboard/system/basics/icons', '1'),
(64, 65, '/dashboard/system/basics/editor', '1'),
(65, 66, '/dashboard/system/basics/multilingual', '1'),
(66, 67, '/dashboard/system/basics/timezone', '1'),
(67, 68, '/dashboard/system/multilingual', '1'),
(68, 69, '/dashboard/system/multilingual/setup', '1'),
(69, 70, '/dashboard/system/multilingual/page_report', '1'),
(70, 71, '/dashboard/system/multilingual/translate_interface', '1'),
(71, 72, '/dashboard/system/seo', '1'),
(72, 73, '/dashboard/system/seo/urls', '1'),
(73, 74, '/dashboard/system/seo/bulk', '1'),
(74, 75, '/dashboard/system/seo/codes', '1'),
(75, 76, '/dashboard/system/seo/excluded', '1'),
(76, 77, '/dashboard/system/seo/searchindex', '1'),
(77, 78, '/dashboard/system/files', '1'),
(78, 79, '/dashboard/system/files/permissions', '1'),
(79, 80, '/dashboard/system/files/filetypes', '1'),
(80, 81, '/dashboard/system/files/thumbnails', '1'),
(81, 82, '/dashboard/system/files/storage', '1'),
(82, 83, '/dashboard/system/optimization', '1'),
(83, 84, '/dashboard/system/optimization/cache', '1'),
(84, 85, '/dashboard/system/optimization/clearcache', '1'),
(85, 86, '/dashboard/system/optimization/jobs', '1'),
(86, 87, '/dashboard/system/optimization/query_log', '1'),
(87, 88, '/dashboard/system/permissions', '1'),
(88, 89, '/dashboard/system/permissions/site', '1'),
(89, 90, '/dashboard/system/permissions/tasks', '1'),
(90, 91, '/dashboard/system/permissions/users', '1'),
(91, 92, '/dashboard/system/permissions/advanced', '1'),
(92, 93, '/dashboard/system/permissions/blacklist', '1'),
(93, 94, '/dashboard/system/permissions/captcha', '1'),
(94, 95, '/dashboard/system/permissions/antispam', '1'),
(95, 96, '/dashboard/system/permissions/maintenance', '1'),
(96, 97, '/dashboard/system/registration', '1'),
(97, 98, '/dashboard/system/registration/postlogin', '1'),
(98, 99, '/dashboard/system/registration/profiles', '1'),
(99, 100, '/dashboard/system/registration/open', '1'),
(100, 101, '/dashboard/system/registration/authentication', '1'),
(101, 102, '/dashboard/system/mail', '1'),
(102, 103, '/dashboard/system/mail/method', '1'),
(103, 104, '/dashboard/system/mail/method/test', '1'),
(104, 105, '/dashboard/system/mail/importers', '1'),
(105, 106, '/dashboard/system/conversations', '1'),
(106, 107, '/dashboard/system/conversations/settings', '1'),
(107, 108, '/dashboard/system/conversations/points', '1'),
(108, 109, '/dashboard/system/conversations/bannedwords', '1'),
(109, 110, '/dashboard/system/conversations/permissions', '1'),
(110, 111, '/dashboard/system/attributes', '1'),
(111, 112, '/dashboard/system/attributes/sets', '1'),
(112, 113, '/dashboard/system/attributes/types', '1'),
(113, 114, '/dashboard/system/attributes/topics', '1'),
(114, 115, '/dashboard/system/attributes/topics/add', '1'),
(115, 116, '/dashboard/system/environment', '1'),
(116, 117, '/dashboard/system/environment/info', '1'),
(117, 118, '/dashboard/system/environment/debug', '1'),
(118, 119, '/dashboard/system/environment/logging', '1'),
(119, 120, '/dashboard/system/environment/proxy', '1'),
(120, 121, '/dashboard/system/backup', '1'),
(121, 122, '/dashboard/system/backup/backup', '1'),
(122, 123, '/dashboard/system/backup/update', '1'),
(123, 124, '/dashboard/welcome', '1'),
(124, 125, '/dashboard/home', '1'),
(125, 126, '/!drafts', '1'),
(126, 127, '/!trash', '1'),
(127, 128, '/!stacks', '1'),
(128, 129, '/login', '1'),
(129, 130, '/register', '1'),
(130, 131, '/account', '1'),
(131, 132, '/account/edit_profile', '1'),
(132, 133, '/account/avatar', '1'),
(133, 134, '/account/messages', '1'),
(134, 135, '/account/messages/inbox', '1'),
(135, 136, '/members', '1'),
(136, 137, '/members/profile', '1'),
(137, 138, '/members/directory', '1'),
(138, 139, '/page_not_found', '1'),
(139, 140, '/page_forbidden', '1'),
(140, 141, '/download_file', '1'),
(146, 148, '/!stacks/masthead', '1'),
(147, 149, '/!stacks/site-name', '1'),
(148, 150, '/!stacks/header-right', '1'),
(149, 151, '/!stacks/header-nav', '1'),
(150, 152, '/!stacks/breadcrumbs', '1'),
(151, 153, '/!stacks/footer', '1'),
(152, 154, '/search', '1'),
(153, 155, '/!stacks/155', '1'),
(154, 158, '/news', '1'),
(155, 160, '/!trash/160', '1'),
(156, 161, '/news/2015', '1'),
(157, 162, '/news/bonenkai-2014', '1'),
(158, 163, '/news/season-sweets', '1'),
(159, 164, '/news/2015-1', '1'),
(160, 165, '/!stacks/165', '1'),
(161, 166, '/menu', '1'),
(162, 168, '/!drafts/168', '1'),
(163, 169, '/menu/lunch', '1'),
(164, 170, '/menu/dinner', '1'),
(165, 171, '/menu/party', '1'),
(166, 172, '/about', '1'),
(167, 173, '/coutacu', '1'),
(168, 174, '/blog', '1');

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 40),
(2, 1, 59),
(129, 1, 57),
(130, 1, 58),
(1, 2, 41),
(1, 3, 42),
(1, 4, 43),
(1, 5, 44),
(1, 6, 45),
(1, 7, 46),
(1, 8, 48),
(1, 9, 49),
(1, 11, 50),
(1, 12, 51),
(1, 13, 52),
(1, 14, 53),
(1, 15, 54),
(1, 16, 55),
(1, 17, 56),
(1, 18, 47);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 17, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 0, 2, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 1, 2, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 2, 2, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 3, 3, 2, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 23, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 23, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 4, 2, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 27, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 28, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 27, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 30, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 30, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 30, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 30, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 30, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 30, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 27, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 37, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 27, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 27, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 27, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 5, 2, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/workflows.php', 0, NULL, 0, 1, 0, 0, 44, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 44, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 47, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 48, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 52, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 52, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 52, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 52, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 12, 10, 2, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 7, 0, 59, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 5, 60, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 60, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 3, 1, 59, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 68, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 1, 68, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 2, 68, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 2, 59, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 72, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 72, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 72, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 72, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 72, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 4, 3, 59, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 0, 78, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 1, 78, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 0, 2, 78, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 3, 78, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 4, 59, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 83, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 83, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 83, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/query_log.php', 0, NULL, 0, 1, 0, 3, 83, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 8, 5, 59, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 88, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 88, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 88, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 88, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 0, 4, 88, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 5, 88, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 6, 88, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 7, 88, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 4, 6, 59, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 97, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 97, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 2, 97, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 97, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 7, 59, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 102, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 103, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 102, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 8, 59, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 106, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 106, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 106, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 106, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 9, 59, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 111, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 111, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 111, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 114, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 4, 10, 59, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 116, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 116, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 116, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 116, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 11, 59, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 121, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 121, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 8, 0, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 1, 0, NULL, NULL, NULL, 1, 129, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 1, 0, NULL, NULL, NULL, 1, 130, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 131, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 131, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/view.php', 0, NULL, 0, 1, 1, 2, 131, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/inbox.php', 0, NULL, 0, 1, 0, 0, 134, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/view.php', 0, NULL, 0, 1, 2, 0, 1, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/profile.php', 0, NULL, 0, 1, 0, 0, 136, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/directory.php', 0, NULL, 0, 1, 0, 1, 136, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, 0, -1, '0', 0, 1),
(142, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 142, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(148, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 128, 0, 0, -1, '0', 0, 1),
(149, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 128, 0, 0, -1, '0', 0, 1),
(150, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 128, 0, 0, -1, '0', 0, 1),
(151, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 128, 0, 0, -1, '0', 0, 1),
(152, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 128, 0, 0, -1, '0', 0, 1),
(153, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 128, 0, 0, -1, '0', 0, 1),
(154, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 1, 0, 1, -1, '0', 0, 0),
(155, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 128, 0, 0, -1, '0', 0, 1),
(156, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 156, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(157, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 157, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(158, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 4, 3, 1, 0, 1, -1, '0', 0, 0),
(159, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 159, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(160, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 1, 127, 0, 158, -1, '0', 0, 1),
(161, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 158, 0, 158, -1, '0', 0, 0),
(162, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 158, 0, 158, -1, '0', 0, 0),
(163, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 158, 0, 158, -1, '0', 0, 0),
(164, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 158, 0, 158, -1, '0', 0, 0),
(165, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 128, 0, 0, -1, '0', 0, 1),
(166, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 4, 1, 0, 1, -1, '0', 0, 0),
(167, 7, 1, NULL, 0, NULL, NULL, NULL, 1, 167, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(168, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 0, 126, 0, 166, -1, '0', 0, 1),
(169, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 166, 0, 166, -1, '0', 0, 0),
(170, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 166, 0, 166, -1, '0', 0, 0),
(171, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 166, 0, 166, -1, '0', 0, 0),
(172, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 1, 0, 1, -1, '0', 0, 0),
(173, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 1, 0, 1, -1, '0', 0, 0),
(174, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 1, 0, 1, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(2, '', 'Dashboard', '', '/dashboard', '2015-03-21 03:49:38', '2015-03-21 03:49:45', NULL, 0),
(3, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2015-03-21 03:49:38', '2015-03-21 03:49:45', NULL, 0),
(4, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2015-03-21 03:49:38', '2015-03-21 03:49:45', NULL, 0),
(5, '', 'Flat View', '', '/dashboard/sitemap/explore', '2015-03-21 03:49:38', '2015-03-21 03:49:45', NULL, 0),
(6, '', 'Page Search', '', '/dashboard/sitemap/search', '2015-03-21 03:49:38', '2015-03-21 03:49:45', NULL, 0),
(8, '', 'File Manager', '', '/dashboard/files/search', '2015-03-21 03:49:38', '2015-03-21 03:49:46', NULL, 0),
(9, '', 'Attributes', '', '/dashboard/files/attributes', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(10, '', 'File Sets', '', '/dashboard/files/sets', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(11, '', 'Add File Set', '', '/dashboard/files/add_set', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(12, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(13, '', 'Search Users', '', '/dashboard/users/search', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(14, '', 'User Groups', '', '/dashboard/users/groups', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(15, '', 'Attributes', '', '/dashboard/users/attributes', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(16, '', 'Add User', '', '/dashboard/users/add', '2015-03-21 03:49:39', '2015-03-21 03:49:46', NULL, 0),
(17, '', 'Add Group', '', '/dashboard/users/add_group', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(19, '', 'Group Sets', '', '/dashboard/users/group_sets', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(20, '', 'Community Points', NULL, '/dashboard/users/points', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(22, '', 'Actions', NULL, '/dashboard/users/points/actions', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(23, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2015-03-21 03:49:39', '2015-03-21 03:49:47', NULL, 0),
(29, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(31, '', 'Organize Page Type Order', '', '/dashboard/pages/types/organize', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(32, '', 'Add Page Type', '', '/dashboard/pages/types/add', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(33, '', 'Compose Form', '', '/dashboard/pages/types/form', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(34, '', 'Defaults and Output', '', '/dashboard/pages/types/output', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(35, '', 'Page Type Attributes', '', '/dashboard/pages/types/attributes', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(36, '', 'Page Type Permissions', '', '/dashboard/pages/types/permissions', '2015-03-21 03:49:39', '2015-03-21 03:49:48', NULL, 0),
(38, '', 'Add Page Template', 'Add page templates to your site.', '/dashboard/pages/templates/add', '2015-03-21 03:49:40', '2015-03-21 03:49:48', NULL, 0),
(39, '', 'Attributes', '', '/dashboard/pages/attributes', '2015-03-21 03:49:40', '2015-03-21 03:49:48', NULL, 0),
(40, '', 'Single Pages', '', '/dashboard/pages/single', '2015-03-21 03:49:40', '2015-03-21 03:49:48', NULL, 0),
(41, '', 'RSS Feeds', '', '/dashboard/pages/feeds', '2015-03-21 03:49:40', '2015-03-21 03:49:49', NULL, 0),
(43, '', 'Messages', '', '/dashboard/conversations/messages', '2015-03-21 03:49:40', '2015-03-21 03:49:49', NULL, 0),
(44, '', 'Workflow', '', '/dashboard/workflow', '2015-03-21 03:49:40', '2015-03-21 03:49:49', NULL, 0),
(48, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2015-03-21 03:49:40', '2015-03-21 03:49:49', NULL, 0),
(50, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2015-03-21 03:49:40', '2015-03-21 03:49:50', NULL, 0),
(51, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2015-03-21 03:49:40', '2015-03-21 03:49:50', NULL, 0),
(52, '', 'Extend concrete5', '', '/dashboard/extend', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(53, '', 'Dashboard', '', '/dashboard/news', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(54, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(55, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(56, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(57, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2015-03-21 03:49:40', '2015-03-21 03:49:51', NULL, 0),
(58, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/addons', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(59, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(61, '', 'Site Name', '', '/dashboard/system/basics/name', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(62, '', 'Accessibility', '', '/dashboard/system/basics/accessibility', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(63, '', 'Social Links', '', '/dashboard/system/basics/social', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(64, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(65, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(66, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(67, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2015-03-21 03:49:40', '2015-03-21 03:49:52', NULL, 0),
(68, '', 'Multilingual', 'Run your site in multiple languages.', '/dashboard/system/multilingual', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(73, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(74, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(75, '', 'Tracking Codes', '', '/dashboard/system/seo/codes', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(76, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(77, '', 'Search Index', '', '/dashboard/system/seo/searchindex', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(79, '', 'File Manager Permissions', '', '/dashboard/system/files/permissions', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(80, '', 'Allowed File Types', '', '/dashboard/system/files/filetypes', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(81, '', 'Thumbnails', '', '/dashboard/system/files/thumbnails', '2015-03-21 03:49:41', '2015-03-21 03:49:53', NULL, 0),
(82, '', 'File Storage Locations', '', '/dashboard/system/files/storage', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(84, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(85, '', 'Clear Cache', '', '/dashboard/system/optimization/clearcache', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(86, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(87, '', 'Database Query Log', '', '/dashboard/system/optimization/query_log', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(89, '', 'Site Access', '', '/dashboard/system/permissions/site', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(90, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(93, '', 'IP Blacklist', '', '/dashboard/system/permissions/blacklist', '2015-03-21 03:49:41', '2015-03-21 03:49:54', NULL, 0),
(94, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(95, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(96, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(98, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(99, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(100, '', 'Public Registration', '', '/dashboard/system/registration/open', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(101, '', 'Authentication Types', '', '/dashboard/system/registration/authentication', '2015-03-21 03:49:42', '2015-03-21 03:49:55', NULL, 0),
(102, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2015-03-21 03:49:42', '2015-03-21 03:49:56', NULL, 0),
(103, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2015-03-21 03:49:42', '2015-03-21 03:49:56', NULL, 0),
(104, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(105, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(106, '', 'Conversations', 'Manage your conversations settings', '/dashboard/system/conversations', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(107, '', 'Settings', '', '/dashboard/system/conversations/settings', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(108, '', 'Community Points', '', '/dashboard/system/conversations/points', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(109, '', 'Banned Words', '', '/dashboard/system/conversations/bannedwords', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(111, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(112, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(113, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(114, '', 'Topics', '', '/dashboard/system/attributes/topics', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, '', 'Environment Information', '', '/dashboard/system/environment/info', '2015-03-21 03:49:43', '2015-03-21 03:49:56', NULL, 0),
(118, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2015-03-21 03:49:44', '2015-03-21 03:49:56', NULL, 0),
(119, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2015-03-21 03:49:44', '2015-03-21 03:49:56', NULL, 0),
(120, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2015-03-21 03:49:44', '2015-03-21 03:49:56', NULL, 0),
(121, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup', '2015-03-21 03:49:44', '2015-03-21 03:49:56', NULL, 0),
(123, '', 'Update concrete5', '', '/dashboard/system/backup/update', '2015-03-21 03:49:44', '2015-03-21 03:49:56', NULL, 0),
(124, '                                        ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2015-03-21 03:49:45', '2015-03-21 03:49:56', NULL, 0),
(125, '', 'Customize Dashboard Home', '', '/dashboard/home', '2015-03-21 03:49:45', '2015-03-21 03:49:57', NULL, 0),
(126, '', 'Drafts', '', '/!drafts', '2015-03-21 03:49:57', '2015-03-21 03:49:58', NULL, 0),
(127, '', 'Trash', '', '/!trash', '2015-03-21 03:49:57', '2015-03-21 03:49:58', NULL, 0),
(128, '', 'Stacks', '', '/!stacks', '2015-03-21 03:49:57', '2015-03-21 03:49:58', NULL, 0),
(131, '', 'My Account', '', '/account', '2015-03-21 03:49:57', '2015-03-21 03:49:58', NULL, 0),
(1, ' もっと見る  ', 'Home', '', NULL, '2015-03-21 03:48:00', '2015-03-21 04:57:08', NULL, 0),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(155, '   	        	        	             	  		  		ランチ  	  	  		  		11 : 30〜14 : 30（L.O14：00）  	      	  		  		ディナー  	  	  		  		17：00〜23：00（L.O22：00）  	      	  		  		定休日  	  	  		  		火曜日  	             	  	〒541-0088  	  	   	  	大阪府大阪市中央区平野町8-4-2  	  	   	  	TEL : 06-3033-8888    ', 'サイトバー', NULL, '/!stacks/155', '2015-03-21 04:11:07', '2015-03-21 04:15:11', NULL, 0),
(158, ' ', 'お知らせ', '当店のお知らせを紹介いたします', '/news', '2015-03-21 04:21:00', '2015-03-21 04:26:03', NULL, 0),
(159, '', '', NULL, NULL, '2015-03-21 04:27:58', '2015-03-21 04:37:40', NULL, 0),
(161, ' ニュースはこのように表示されます。  ', 'シーフードフェア2015を開催します！', 'シーフードフェア2015を開催します！', '/news/2015', '2015-03-21 04:37:00', '2015-03-21 04:38:37', NULL, 0),
(162, ' 忘年会メニューのお知らせ  ', '忘年会・新年会のパーティーメニュー', '忘年会メニュー', '/news/bonenkai-2014', '2014-11-03 04:38:00', '2015-03-21 04:39:29', NULL, 0),
(163, ' 季節限定スイーツが登場！  ', '季節限定スイーツが登場！', '季節限定スイーツが登場！', '/news/season-sweets', '2015-03-21 04:40:00', '2015-03-21 04:40:24', NULL, 0),
(164, ' 2015 クリスマス・ディナーのご予約をはじめました  ', '2015 クリスマス・ディナーのご予約をはじめました', '2015 クリスマス・ディナーのご予約をはじめました', '/news/2015-1', '2015-04-08 04:40:00', '2015-03-21 04:41:33', NULL, 0),
(165, 'サラダ＋本日のパスタ（2種類からひとつ、お選びください） - 1,100 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ サラダ＋本日のピッツァ（2種類からひとつ、お選びください） - 980 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ スープ＋アンティパスト＋本日のパスタ＋本日のメイン（お肉 or お魚）＋自家製パン＋本日のドルチェ＋コーヒーor紅茶  - 2,850 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ スープ＋アンティパスト＋本日のメイン（お肉 or お魚）＋自家製パン - 1,850 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ ', 'ランチメニュー', NULL, '/!stacks/165', '2015-03-21 04:45:26', '2015-03-21 04:54:06', NULL, 0),
(148, '  	  	   ', 'Masthead', NULL, '/!stacks/masthead', '2015-03-21 03:52:36', '2015-03-21 04:57:03', NULL, 0),
(149, '', 'Site Name', NULL, '/!stacks/site-name', '2015-03-21 03:52:40', '2015-03-21 04:57:04', NULL, 0),
(150, '  	    ', 'Header Right', NULL, '/!stacks/header-right', '2015-03-21 03:52:41', '2015-03-21 04:57:04', NULL, 0),
(151, '', 'Header Nav', NULL, '/!stacks/header-nav', '2015-03-21 03:52:43', '2015-03-21 04:57:04', NULL, 0),
(166, 'メニュー ', 'メニュー', 'メニューの紹介', '/menu', '2015-03-21 04:58:00', '2015-03-21 05:24:21', NULL, 0),
(167, 'メニュー名 ピッツァランチ - 980 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ ', '', NULL, NULL, '2015-03-21 05:00:58', '2015-03-21 05:16:45', NULL, 0),
(169, '', 'ランチメニュー', 'お得なランチメニューを紹介。', '/menu/lunch', '2015-03-21 05:13:00', '2015-03-21 05:15:13', NULL, 0),
(170, 'ディナーメニュー 当店の最高のクオリティーのメニューを紹介します。  スープ＋アンティパスト＋本日のパスタ＋本日のメイン（お肉 or お魚）＋自家製パン＋本日のドルチェ＋コーヒーor紅茶  - 2,850 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ ', 'ディナー', 'ディナーメニューをご紹介', '/menu/dinner', '2015-03-21 05:17:00', '2015-03-21 05:20:36', NULL, 0),
(171, 'ディナーメニュー 当店の最高のクオリティーのメニューを紹介します。  スープ＋アンティパスト＋本日のパスタ＋本日のメイン（お肉 or お魚）＋自家製パン＋本日のドルチェ＋コーヒーor紅茶  - 2,850 - 200 - コーヒー or 紅茶 - 350 - カフェラテ、エスプレッソ ', 'パーティー', 'パーティーメニューをご紹介', '/menu/party', '2015-03-21 05:17:00', '2015-03-21 05:21:49', NULL, 0),
(172, 'オリーブの気持ち本場の石窯ナポリピッツァをぜひともご賞味ください。  	大正時代に建てられた赤レンガの倉庫を改装したカジュアル・イタリアンレストラン。  	落ち着いた雰囲気の店内で本場の石窯で焼き上げた本格的なナポリピッツアをお楽しみください。   	また、当店の契約農家が栽培している『新鮮』『安心』『安全』の無農薬野菜を使ったメニューも多数ご用意しております。   	少人数でのプライベートなパーティーから大人数での賑やかなパーティーなども承っております。  	お誕生日パーティーやママ友のランチなどに最適なお手軽ランチプラン。  	結婚式の二次会や新年会・忘年会など、特別なパーティーには、ちょっと贅沢なディナープラン。  	基本プランにフリードリンク（飲み放題）等のオプションを追加することも出来ますので、お客さまのご希望するプランをご用意できます。  	まずは、当店のスタッフまでお気軽におたずねください。  	当店専属のプランナーがお客さまのご要望をもとに企画・提案・お手伝いをさせていただきます。  	料理のグレードアップやウエディングケーキ・バースデーケーキなど、シェフとパティシエに相談していただくことも可能です。  	まずは、本格的なナポリピッツァを味わうカジュアル・パーティーを是非！  	皆さまのご利用を心よりお待ちしております。 見出し3見出し4見出し5 ', 'オリーブの気持ちについて', '当店の紹介です', '/about', '2015-03-21 05:24:00', '2015-03-21 05:27:26', NULL, 0),
(173, 'お問い合わせ   	パーティープランのご相談やご予約については、下記のフォームよりお気軽にお問い合わせください。   ', 'お問い合わせ', '当店へのお問い合わせはこちらから。', '/coutacu', '2015-03-21 05:27:00', '2015-03-21 05:30:44', NULL, 0),
(174, 'ブログ ブログページです。  ', 'ブログ', 'ブログを公開', '/blog', '2015-03-21 05:30:00', '2015-03-21 05:32:16', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageStatistics`
--

CREATE TABLE `PageStatistics` (
`pstID` bigint(20) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTemplates`
--

CREATE TABLE `PageTemplates` (
`pTemplateID` int(10) unsigned NOT NULL,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'dashboard_primary_five', '', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', '', 'Dashboard Header + Four Column', 1, 0),
(4, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(5, 'default', 'right_sidebar.png', 'デフォルト', 0, 0),
(6, 'blog_entry', 'right_sidebar.png', 'ブログ記事', 0, 0),
(7, 'home', 'full.png', 'Home', 0, 0),
(8, 'left_sidebar', 'left_sidebar.png', 'Left Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeCustomStyles`
--

CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

CREATE TABLE `PageThemes` (
`pThemeID` int(10) unsigned NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'olive_sample', 'concrete5.7 サンプルテーマ', 'trattoria Sensazione di Olive', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerControlTypes`
--

CREATE TABLE `PageTypeComposerControlTypes` (
`ptComposerControlTypeID` int(10) unsigned NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Properties', 0),
(2, 'collection_attribute', 'Custom Attributes', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
`ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:9:"Page Name";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:11:"Description";s:27:"\0*\0ptComposerControlIconSRC";s:44:"/c5ngo/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:8:"URL Slug";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";s:13:"Page Template";s:27:"\0*\0ptComposerControlIconSRC";s:42:"/c5ngo/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";s:13:"Page Location";s:27:"\0*\0ptComposerControlIconSRC";s:46:"/c5ngo/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":11:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:39:"/c5ngo/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Body', NULL, NULL, 0),
(7, 3, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:12:"ページ名";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, NULL, NULL, NULL, 0),
(8, 3, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:15:"URLスラッグ";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(9, 3, 1, 'O:82:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:9:"date_time";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:9:"date_time";s:24:"\0*\0ptComposerControlName";s:12:"公開日時";s:27:"\0*\0ptComposerControlIconSRC";s:45:"/c5ngo/concrete/attributes/date_time/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(10, 3, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:6:"説明";s:27:"\0*\0ptComposerControlIconSRC";s:44:"/c5ngo/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(12, 3, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":11:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:39:"/c5ngo/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(13, 4, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:12:"ページ名";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, NULL, NULL, NULL, 0),
(14, 4, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:15:"URLスラッグ";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/c5ngo/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(15, 4, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:6:"説明";s:27:"\0*\0ptComposerControlIconSRC";s:44:"/c5ngo/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

CREATE TABLE `PageTypeComposerFormLayoutSets` (
`ptComposerFormLayoutSetID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 5, 'Basics', '', 0),
(2, 5, 'Content', '', 1),
(3, 6, 'お知らせ', 'お知らせです', 0),
(4, 7, 'ランチメニュー', 'ランチメニュー用', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

CREATE TABLE `PageTypeComposerOutputBlocks` (
`ptComposerOutputBlockID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(1, 154, 'Main', 0, 6, 13),
(28, 158, 'Main', 0, 6, 54),
(38, 161, 'Main', 3, 12, 71),
(45, 162, 'Main', 3, 12, 78),
(54, 163, 'Main', 3, 12, 87),
(62, 164, 'Main', 3, 12, 95),
(76, 166, 'Main', 0, 6, 131),
(98, 172, 'Main', 0, 6, 157),
(106, 173, 'Main', 0, 6, 165),
(115, 174, 'Main', 0, 6, 175);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputControls`
--

CREATE TABLE `PageTypeComposerOutputControls` (
`ptComposerOutputControlID` int(10) unsigned NOT NULL,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 5, 5, 6),
(2, 6, 5, 6),
(3, 7, 5, 6),
(4, 8, 5, 6),
(5, 5, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(5, 5, 142),
(7, 5, 156),
(8, 5, 157),
(5, 6, 159),
(5, 7, 167);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplates`
--

CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypePageTemplates`
--

INSERT INTO `PageTypePageTemplates` (`ptID`, `pTemplateID`) VALUES
(6, 5),
(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePermissionAssignments`
--

CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 59, 9),
(2, 59, 9),
(3, 59, 9),
(4, 59, 9),
(5, 59, 9),
(6, 59, 9),
(7, 59, 9),
(1, 60, 9),
(2, 60, 9),
(3, 60, 9),
(4, 60, 9),
(5, 60, 9),
(6, 60, 9),
(7, 60, 9),
(1, 61, 9),
(2, 61, 9),
(3, 61, 9),
(4, 61, 9),
(5, 61, 9),
(6, 61, 9),
(7, 61, 9),
(1, 62, 9),
(2, 62, 9),
(3, 62, 9),
(4, 62, 9),
(5, 62, 9),
(6, 62, 9),
(7, 62, 9),
(1, 63, 25),
(2, 63, 26),
(3, 63, 27),
(4, 63, 28),
(5, 63, 29),
(6, 63, 73),
(7, 63, 74);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePublishTargetTypes`
--

CREATE TABLE `PageTypePublishTargetTypes` (
`ptPublishTargetTypeID` int(10) unsigned NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

CREATE TABLE `PageTypes` (
`ptID` int(10) unsigned NOT NULL,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1, 'Stack', 'core_stack', NULL, 0, 'A', 1, 0, 0, 0, 0, NULL),
(2, 'Dashboard Primary + Five', 'dashboard_primary_five', NULL, 0, 'A', 1, 0, 1, 0, 0, NULL),
(3, 'Dashboard Header + Four Column', 'dashboard_header_four_col', NULL, 0, 'A', 1, 0, 2, 0, 0, NULL),
(4, 'Dashboard Full', 'dashboard_full', NULL, 0, 'A', 1, 0, 3, 0, 0, NULL),
(5, 'Page', 'page', 3, 5, 'A', 0, 1, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
(6, 'お知らせ記事', 'news', 1, 5, 'C', 0, 1, 0, 1, 0, 'O:75:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration":5:{s:12:"\0*\0cParentID";s:3:"158";s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"1";s:25:"ptPublishTargetTypeHandle";s:11:"parent_page";s:9:"pkgHandle";b:0;}'),
(7, 'メニュー記事', 'menu', 1, 5, 'C', 0, 1, 2, 0, 0, 'O:75:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration":5:{s:12:"\0*\0cParentID";s:3:"166";s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"1";s:25:"ptPublishTargetTypeHandle";s:11:"parent_page";s:9:"pkgHandle";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
`paID` int(10) unsigned NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
`peID` int(10) unsigned NOT NULL,
  `petID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(3, 1),
(5, 1),
(2, 5),
(6, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
`pegID` int(10) unsigned NOT NULL,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 3, 1),
(3, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(5, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(7, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(7, 20);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
`petID` int(10) unsigned NOT NULL,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 2, 0, 10),
(26, 2, 0, 10),
(27, 2, 0, 10),
(28, 2, 0, 10),
(29, 2, 0, 10),
(30, 3, 0, 10),
(31, 1, 0, 10),
(31, 3, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 3, 0, 10),
(41, 1, 0, 10),
(42, 1, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 3, 0, 10),
(58, 3, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 3, 0, 10),
(66, 3, 0, 10),
(67, 1, 0, 10),
(67, 4, 0, 10),
(68, 1, 0, 10),
(68, 4, 0, 10),
(69, 1, 0, 10),
(69, 5, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 2, 0, 10),
(74, 2, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 19),
(2, 20),
(3, 74),
(4, 75),
(5, 76),
(6, 78),
(7, 79),
(8, 80),
(9, 86),
(10, 87),
(11, 89),
(12, 90),
(13, 91),
(14, 92),
(15, 93),
(16, 94),
(17, 95),
(18, 96),
(19, 97),
(20, 98),
(21, 99),
(22, 100),
(23, 101),
(24, 102);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
`pdID` int(10) unsigned NOT NULL,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
`pkCategoryID` int(10) unsigned NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_set', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'sitemap', NULL),
(12, 'marketplace_newsflow', NULL),
(13, 'basic_workflow', NULL),
(14, 'page_type', NULL),
(15, 'gathering', NULL),
(16, 'group_tree_node', NULL),
(17, 'topic_category_tree_node', NULL),
(18, 'topic_tree_node', NULL),
(19, 'conversation', NULL),
(20, 'conversation_message', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
`pkID` int(10) unsigned NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block''s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 5, 0),
(40, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 5, 0),
(41, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 5, 0),
(42, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 5, 0),
(43, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 5, 0),
(44, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 5, 0),
(45, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 5, 0),
(46, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 5, 0),
(47, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 5, 0),
(48, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(49, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(50, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(51, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(52, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(53, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(54, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(55, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 13, 0),
(56, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 13, 0),
(57, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 13, 0),
(58, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 13, 0),
(59, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 14, 0),
(60, 'edit_page_type', 'Edit Page Type', 0, 0, '', 14, 0),
(61, 'delete_page_type', 'Delete Page Type', 0, 0, '', 14, 0),
(62, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 14, 0),
(63, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 14, 0),
(64, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 18, 0),
(65, 'view_topic_category_tree_node', 'View Topic Category Tree Node', 0, 0, '', 17, 0),
(66, 'add_conversation_message', 'Add Message to Conversation', 0, 0, '', 19, 0),
(67, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 19, 0),
(68, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 19, 0),
(69, 'delete_conversation_message', 'Delete Message', 0, 0, '', 19, 0),
(70, 'edit_conversation_message', 'Edit Message', 0, 0, '', 19, 0),
(71, 'rate_conversation_message', 'Rate Message', 0, 0, '', 19, 0),
(72, 'flag_conversation_message', 'Flag Message', 0, 0, '', 19, 0),
(73, 'approve_conversation_message', 'Approve Message', 0, 0, '', 19, 0),
(74, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(75, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(76, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 4, 0),
(77, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(78, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(79, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(80, 'delete_user', 'Delete User', 0, 0, NULL, 4, 0),
(81, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 16, 0),
(82, 'edit_group', 'Edit Group', 0, 0, NULL, 16, 0),
(83, 'assign_group', 'Assign Group', 0, 0, NULL, 16, 0),
(84, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 16, 0),
(85, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 16, 0),
(86, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(87, 'backup', 'Perform Backups', 0, 0, NULL, 10, 0),
(88, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(89, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 11, 0),
(90, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(91, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(92, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(93, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(94, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(95, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(96, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 12, 0),
(97, 'install_packages', 'Install Packages', 0, 0, NULL, 12, 0),
(98, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 12, 0),
(99, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(100, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(101, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(102, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

CREATE TABLE `PileContents` (
`pcID` int(10) unsigned NOT NULL,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PileContents`
--

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1, 1, 100, 'BLOCK', 1, '2015-03-21 03:50:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

CREATE TABLE `Piles` (
`pID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2015-03-21 02:54:19', NULL, 'READY');

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

CREATE TABLE `QueueMessages` (
`message_id` int(10) unsigned NOT NULL,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(8192) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

CREATE TABLE `Queues` (
`queue_id` int(10) unsigned NOT NULL,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SignupRequests`
--

CREATE TABLE `SignupRequests` (
`id` int(11) NOT NULL,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SocialLinks`
--

CREATE TABLE `SocialLinks` (
`slID` int(10) unsigned NOT NULL,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

CREATE TABLE `Stacks` (
`stID` int(10) unsigned NOT NULL,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(6, 'Masthead', 20, 148),
(7, 'Site Name', 20, 149),
(8, 'Header Right', 20, 150),
(9, 'Header Nav', 20, 151),
(10, 'Breadcrumbs', 20, 152),
(11, 'Footer', 20, 153),
(12, 'サイトバー', 0, 155),
(13, 'ランチメニュー', 0, 165);

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

CREATE TABLE `StyleCustomizerCustomCssRecords` (
`sccRecordID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

CREATE TABLE `StyleCustomizerInlineStylePresets` (
`pssPresetID` int(10) unsigned NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

CREATE TABLE `StyleCustomizerInlineStyleSets` (
`issID` int(10) unsigned NOT NULL,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`) VALUES
(1, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(2, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(3, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(4, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(5, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, 'right', '', '', NULL, '14px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(6, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(7, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(8, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(9, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValueLists`
--

CREATE TABLE `StyleCustomizerValueLists` (
`scvlID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValues`
--

CREATE TABLE `StyleCustomizerValues` (
`scvID` int(10) unsigned NOT NULL,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemContentEditorSnippets`
--

CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseMigrations`
--

CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20150109000000');

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseQueryLog`
--

CREATE TABLE `SystemDatabaseQueryLog` (
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemImageEditorComponents`
--

CREATE TABLE `SystemImageEditorComponents` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemImageEditorControlSets`
--

CREATE TABLE `SystemImageEditorControlSets` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SystemImageEditorControlSets`
--

INSERT INTO `SystemImageEditorControlSets` (`scsID`, `scsHandle`, `scsName`, `scsDisplayOrder`, `pkgID`) VALUES
(1, 'position', 'Position', 0, 0),
(2, 'filter', 'Filter', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemImageEditorFilters`
--

CREATE TABLE `SystemImageEditorFilters` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SystemImageEditorFilters`
--

INSERT INTO `SystemImageEditorFilters` (`scsID`, `scsHandle`, `scsName`, `scsDisplayOrder`, `pkgID`) VALUES
(1, 'none', 'None', 0, 0),
(2, 'grayscale', 'Grayscale', 0, 0),
(3, 'sepia', 'Sepia', 0, 0),
(4, 'gaussian_blur', 'Blur', 0, 0),
(5, 'vignette', 'Vignette', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemImageEditorShapes`
--

CREATE TABLE `SystemImageEditorShapes` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TopicTrees`
--

CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeCategoryNodes`
--

CREATE TABLE `TreeCategoryNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupNodes`
--

CREATE TABLE `TreeGroupNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `gID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TreeGroupNodes`
--

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodePermissionAssignments`
--

CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(1, 81, 60),
(1, 82, 61),
(1, 83, 62),
(1, 84, 63),
(1, 85, 64);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodes`
--

CREATE TABLE `TreeNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TreeNodes`
--

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, 1, 1),
(2, 1, 1, 1, 0, 0, 1),
(3, 1, 1, 1, 1, 0, 1),
(4, 1, 1, 1, 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodeTypes`
--

CREATE TABLE `TreeNodeTypes` (
`treeNodeTypeID` int(10) unsigned NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TreeNodeTypes`
--

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic_category', 0),
(3, 'topic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Trees`
--

CREATE TABLE `Trees` (
`treeID` int(10) unsigned NOT NULL,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2015-03-21 03:48:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TreeTopicNodes`
--

CREATE TABLE `TreeTopicNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeTypes`
--

CREATE TABLE `TreeTypes` (
`treeTypeID` int(10) unsigned NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TreeTypes`
--

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(12, 0, 0, 1, 0, 1, 0, 1, 1),
(13, 0, 0, 1, 0, 1, 0, 2, 1),
(16, 0, 0, 0, 0, 0, 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserBannedIPs`
--

CREATE TABLE `UserBannedIPs` (
`id` int(10) unsigned NOT NULL,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointActions`
--

CREATE TABLE `UserPointActions` (
`upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `UserPointActions`
--

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
`upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
`msgID` int(10) unsigned NOT NULL,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
`uID` int(10) unsigned NOT NULL,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'nagoya@example.com', '$2a$12$Av3BLGyD6ngg7TZDpfoItuPtAa4qeglCFR5vV9h8HG3uh/ZB7qDaG', '1', -1, 1, '2015-03-21 03:48:23', '2015-03-21 03:48:23', 0, 1426912281, 1426906103, 0x3030303030303030303030303030303030303030303030303030303030303031, 0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
`uvhID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
`wpID` int(10) unsigned NOT NULL,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
`wpCategoryID` int(10) unsigned NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
`wphID` int(10) unsigned NOT NULL,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2015-03-21 02:51:46', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"143";s:4:"wrID";s:1:"1";}'),
(2, 2, '2015-03-21 02:51:54', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"144";s:4:"wrID";s:1:"2";}'),
(3, 3, '2015-03-21 02:52:03', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"145";s:4:"wrID";s:1:"3";}'),
(4, 4, '2015-03-21 02:52:13', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"146";s:4:"wrID";s:1:"4";}'),
(5, 5, '2015-03-21 02:52:21', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"147";s:4:"wrID";s:1:"5";}'),
(6, 6, '2015-03-21 03:01:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"6";}'),
(7, 7, '2015-03-21 03:01:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"7";}'),
(8, 8, '2015-03-21 03:15:09', 'O:50:"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"8";}'),
(9, 9, '2015-03-21 03:24:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"158";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"9";}'),
(10, 10, '2015-03-21 03:26:01', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"158";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"10";}'),
(11, 11, '2015-03-21 03:33:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"11";}'),
(12, 12, '2015-03-21 03:37:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"12";}'),
(13, 13, '2015-03-21 03:38:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"161";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"13";}'),
(14, 14, '2015-03-21 03:39:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"162";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"14";}'),
(15, 15, '2015-03-21 03:40:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"15";}'),
(16, 16, '2015-03-21 03:40:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"16";}'),
(17, 17, '2015-03-21 03:41:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"17";}'),
(18, 18, '2015-03-21 03:54:03', 'O:50:"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"18";}'),
(19, 19, '2015-03-21 03:57:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"19";}'),
(20, 20, '2015-03-21 03:57:40', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"160";s:4:"wrID";s:2:"20";}'),
(21, 21, '2015-03-21 03:59:50', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"21";}'),
(22, 22, '2015-03-21 04:05:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"167";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"22";}'),
(23, 23, '2015-03-21 04:15:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"23";}'),
(24, 24, '2015-03-21 04:15:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"24";}'),
(25, 25, '2015-03-21 04:16:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"167";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"25";}'),
(26, 26, '2015-03-21 04:20:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"170";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"26";}'),
(27, 27, '2015-03-21 04:20:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"170";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"27";}'),
(28, 28, '2015-03-21 04:20:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"170";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"28";}'),
(29, 29, '2015-03-21 04:21:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"171";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"29";}'),
(30, 30, '2015-03-21 04:24:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"30";}'),
(31, 31, '2015-03-21 04:26:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"172";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"31";}'),
(32, 32, '2015-03-21 04:27:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"172";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"32";}'),
(33, 33, '2015-03-21 04:30:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"173";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"33";}'),
(34, 34, '2015-03-21 04:30:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"173";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"34";}'),
(35, 35, '2015-03-21 04:31:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"174";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"35";}'),
(36, 36, '2015-03-21 04:32:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"174";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"36";}');

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
`wrID` int(10) unsigned NOT NULL,
  `wrObject` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

CREATE TABLE `Workflows` (
`wfID` int(10) unsigned NOT NULL,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
`wftID` int(10) unsigned NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`), ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`), ADD KEY `arID` (`arID`), ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexes for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
 ADD PRIMARY KEY (`arLayoutPresetID`), ADD KEY `arLayoutID` (`arLayoutID`), ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexes for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
 ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`), ADD KEY `peID` (`peID`), ADD KEY `btID` (`btID`);

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
 ADD PRIMARY KEY (`arID`), ADD KEY `arIsGlobal` (`arIsGlobal`), ADD KEY `cID` (`cID`), ADD KEY `arHandle` (`arHandle`), ADD KEY `arParentID` (`arParentID`);

--
-- Indexes for table `atAddress`
--
ALTER TABLE `atAddress`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
 ADD PRIMARY KEY (`atAddressCustomCountryID`), ADD KEY `akID` (`akID`);

--
-- Indexes for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atBoolean`
--
ALTER TABLE `atBoolean`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDateTime`
--
ALTER TABLE `atDateTime`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDefault`
--
ALTER TABLE `atDefault`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atFile`
--
ALTER TABLE `atFile`
 ADD PRIMARY KEY (`avID`), ADD KEY `fID` (`fID`);

--
-- Indexes for table `atNumber`
--
ALTER TABLE `atNumber`
 ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
 ADD PRIMARY KEY (`avID`,`TopicNodeID`), ADD KEY `TopicNodeID` (`TopicNodeID`);

--
-- Indexes for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
 ADD PRIMARY KEY (`ID`), ADD KEY `akID` (`akID`,`displayOrder`), ADD KEY `value` (`value`);

--
-- Indexes for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
 ADD PRIMARY KEY (`avID`,`atSelectOptionID`), ADD KEY `atSelectOptionID` (`atSelectOptionID`);

--
-- Indexes for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
 ADD PRIMARY KEY (`avsID`), ADD KEY `avID` (`avID`,`avsID`);

--
-- Indexes for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
 ADD PRIMARY KEY (`akID`), ADD KEY `akTopicTreeID` (`akTopicTreeID`);

--
-- Indexes for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
 ADD PRIMARY KEY (`akCategoryID`), ADD KEY `akCategoryHandle` (`akCategoryHandle`), ADD KEY `pkgID` (`pkgID`,`akCategoryID`);

--
-- Indexes for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
 ADD PRIMARY KEY (`akID`), ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`), ADD KEY `akCategoryID` (`akCategoryID`), ADD KEY `atID` (`atID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
 ADD PRIMARY KEY (`akID`,`asID`), ADD KEY `asID` (`asID`,`displayOrder`);

--
-- Indexes for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
 ADD PRIMARY KEY (`asID`), ADD UNIQUE KEY `asHandle` (`asHandle`), ADD KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`), ADD KEY `pkgID` (`pkgID`,`asID`);

--
-- Indexes for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
 ADD PRIMARY KEY (`atID`,`akCategoryID`), ADD KEY `akCategoryID` (`akCategoryID`);

--
-- Indexes for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
 ADD PRIMARY KEY (`atID`), ADD UNIQUE KEY `atHandle` (`atHandle`), ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexes for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
 ADD PRIMARY KEY (`avID`), ADD KEY `akID` (`akID`), ADD KEY `uID` (`uID`), ADD KEY `atID` (`atID`);

--
-- Indexes for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
 ADD PRIMARY KEY (`authTypeID`), ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `token` (`token`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `BannedWords`
--
ALTER TABLE `BannedWords`
 ADD PRIMARY KEY (`bwID`);

--
-- Indexes for table `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
 ADD PRIMARY KEY (`wfID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexes for table `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
 ADD PRIMARY KEY (`wpID`), ADD KEY `uIDStarted` (`uIDStarted`), ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexes for table `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`), ADD KEY `faID` (`faID`,`cID`,`cvID`), ADD KEY `bID` (`bID`);

--
-- Indexes for table `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`), ADD KEY `bID` (`bID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexes for table `BlockRelations`
--
ALTER TABLE `BlockRelations`
 ADD PRIMARY KEY (`brID`), ADD KEY `bID` (`bID`), ADD KEY `originalBID` (`originalBID`);

--
-- Indexes for table `Blocks`
--
ALTER TABLE `Blocks`
 ADD PRIMARY KEY (`bID`), ADD KEY `btID` (`btID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`), ADD KEY `peID` (`peID`), ADD KEY `btID` (`btID`);

--
-- Indexes for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
 ADD PRIMARY KEY (`btID`), ADD UNIQUE KEY `btHandle` (`btHandle`), ADD KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
 ADD PRIMARY KEY (`btID`,`btsID`), ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexes for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
 ADD PRIMARY KEY (`btsID`), ADD UNIQUE KEY `btsHandle` (`btsHandle`), ADD KEY `btsDisplayOrder` (`btsDisplayOrder`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `btContentFile`
--
ALTER TABLE `btContentFile`
 ADD PRIMARY KEY (`bID`), ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentImage`
--
ALTER TABLE `btContentImage`
 ADD PRIMARY KEY (`bID`), ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentLocal`
--
ALTER TABLE `btContentLocal`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
 ADD PRIMARY KEY (`bID`), ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexes for table `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
 ADD PRIMARY KEY (`bID`), ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
 ADD PRIMARY KEY (`bID`), ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexes for table `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `stID` (`stID`);

--
-- Indexes for table `btDashboardNewsflowLatest`
--
ALTER TABLE `btDashboardNewsflowLatest`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDateNavigation`
--
ALTER TABLE `btDateNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDCLunchMenu`
--
ALTER TABLE `btDCLunchMenu`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExternalForm`
--
ALTER TABLE `btExternalForm`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaq`
--
ALTER TABLE `btFaq`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
 ADD PRIMARY KEY (`id`), ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btFeature`
--
ALTER TABLE `btFeature`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btForm`
--
ALTER TABLE `btForm`
 ADD PRIMARY KEY (`bID`), ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
 ADD PRIMARY KEY (`aID`), ADD KEY `asID` (`asID`), ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
 ADD PRIMARY KEY (`asID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
 ADD PRIMARY KEY (`qID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `msqID` (`msqID`), ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexes for table `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSlider`
--
ALTER TABLE `btImageSlider`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btNavigation`
--
ALTER TABLE `btNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageList`
--
ALTER TABLE `btPageList`
 ADD PRIMARY KEY (`bID`), ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `btPageTitle`
--
ALTER TABLE `btPageTitle`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSearch`
--
ALTER TABLE `btSearch`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
 ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexes for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
 ADD PRIMARY KEY (`btSocialLinkID`), ADD KEY `bID` (`bID`,`displayOrder`), ADD KEY `slID` (`slID`);

--
-- Indexes for table `btSurvey`
--
ALTER TABLE `btSurvey`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
 ADD PRIMARY KEY (`optionID`), ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexes for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
 ADD PRIMARY KEY (`resultID`), ADD KEY `optionID` (`optionID`), ADD KEY `cID` (`cID`,`optionID`,`bID`), ADD KEY `bID` (`bID`,`cID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTags`
--
ALTER TABLE `btTags`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTestimonial`
--
ALTER TABLE `btTestimonial`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTopicList`
--
ALTER TABLE `btTopicList`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btVideo`
--
ALTER TABLE `btVideo`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btYouTube`
--
ALTER TABLE `btYouTube`
 ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
 ADD PRIMARY KEY (`cID`,`cvID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
 ADD PRIMARY KEY (`cID`), ADD KEY `cIDDateModified` (`cID`,`cDateModified`), ADD KEY `cDateModified` (`cDateModified`), ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
 ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`), ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`);

--
-- Indexes for table `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`issID`), ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`faID`), ADD KEY `faID` (`faID`);

--
-- Indexes for table `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
 ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
 ADD PRIMARY KEY (`cID`,`cvID`), ADD KEY `cvIsApproved` (`cvIsApproved`), ADD KEY `cvAuthorUID` (`cvAuthorUID`), ADD KEY `cvApproverUID` (`cvApproverUID`), ADD KEY `pThemeID` (`pThemeID`), ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`), ADD KEY `pThemeID` (`pThemeID`), ADD KEY `scvlID` (`scvlID`), ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
 ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`), ADD KEY `configGroup` (`configGroup`);

--
-- Indexes for table `ConfigStore`
--
ALTER TABLE `ConfigStore`
 ADD PRIMARY KEY (`cfKey`,`uID`), ADD KEY `uID` (`uID`,`cfKey`), ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexes for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
 ADD PRIMARY KEY (`cnvDiscussionID`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
 ADD PRIMARY KEY (`cnvEditorID`), ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexes for table `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
 ADD PRIMARY KEY (`faID`), ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
 ADD PRIMARY KEY (`cnvMessageID`), ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexes for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
 ADD PRIMARY KEY (`cnvMessageFlagTypeID`), ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexes for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
 ADD PRIMARY KEY (`cnvMessageAttachmentID`), ADD KEY `cnvMessageID` (`cnvMessageID`), ADD KEY `fID` (`fID`);

--
-- Indexes for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
 ADD PRIMARY KEY (`cnvMessageRatingID`), ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`), ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
 ADD PRIMARY KEY (`cnvMessageID`), ADD KEY `cnvID` (`cnvID`), ADD KEY `cnvMessageParentID` (`cnvMessageParentID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
 ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
 ADD PRIMARY KEY (`cnvRatingTypeID`), ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`), ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexes for table `Conversations`
--
ALTER TABLE `Conversations`
 ADD PRIMARY KEY (`cnvID`), ADD KEY `cID` (`cID`), ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexes for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
 ADD PRIMARY KEY (`dsID`), ADD KEY `fID` (`fID`,`timestamp`), ADD KEY `fvID` (`fID`,`fvID`), ADD KEY `uID` (`uID`), ADD KEY `rcID` (`rcID`), ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
 ADD PRIMARY KEY (`faID`), ADD KEY `feID` (`feID`), ADD KEY `fcID` (`fcID`);

--
-- Indexes for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
 ADD PRIMARY KEY (`fcID`), ADD UNIQUE KEY `fcHandle` (`fcHandle`), ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexes for table `Features`
--
ALTER TABLE `Features`
 ADD PRIMARY KEY (`feID`), ADD UNIQUE KEY `feHandle` (`feHandle`), ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexes for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
 ADD PRIMARY KEY (`fID`,`fvID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexes for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
 ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexes for table `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
 ADD PRIMARY KEY (`fID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexes for table `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
 ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`), ADD KEY `gID` (`gID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
 ADD PRIMARY KEY (`fID`,`uID`,`fslID`), ADD KEY `uID` (`uID`), ADD KEY `fslID` (`fslID`), ADD KEY `ocID` (`ocID`), ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
 ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
 ADD PRIMARY KEY (`fsfID`), ADD KEY `fID` (`fID`), ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
 ADD PRIMARY KEY (`fsID`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`extension`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `FileSets`
--
ALTER TABLE `FileSets`
 ADD PRIMARY KEY (`fsID`), ADD KEY `uID` (`uID`,`fsType`,`fsName`), ADD KEY `fsName` (`fsName`), ADD KEY `fsType` (`fsType`);

--
-- Indexes for table `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
 ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
 ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
 ADD PRIMARY KEY (`fslTypeID`), ADD UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
 ADD PRIMARY KEY (`fvlID`), ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexes for table `FileVersions`
--
ALTER TABLE `FileVersions`
 ADD PRIMARY KEY (`fID`,`fvID`), ADD KEY `fvExtension` (`fvExtension`), ADD KEY `fvType` (`fvType`), ADD KEY `fvFilename` (`fvFilename`);

--
-- Indexes for table `gaPage`
--
ALTER TABLE `gaPage`
 ADD PRIMARY KEY (`gaiID`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
 ADD PRIMARY KEY (`gcsID`), ADD KEY `gaID` (`gaID`), ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
 ADD PRIMARY KEY (`gasID`), ADD UNIQUE KEY `gasHandle` (`gasHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
 ADD PRIMARY KEY (`gafaID`), ADD KEY `gaiID` (`gaiID`,`faID`), ADD KEY `faID` (`faID`);

--
-- Indexes for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
 ADD PRIMARY KEY (`gaiID`), ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`), ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`), ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
 ADD PRIMARY KEY (`gaiID`,`gatID`), ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`), ADD KEY `gatTypeID` (`gatTypeID`), ADD KEY `gatID` (`gatID`);

--
-- Indexes for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
 ADD PRIMARY KEY (`gfeID`), ADD KEY `gatID` (`gatID`), ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexes for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
 ADD PRIMARY KEY (`gatID`), ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`), ADD KEY `gatTypeID` (`gatTypeID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
 ADD PRIMARY KEY (`gatTypeID`), ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
 ADD PRIMARY KEY (`gaID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexes for table `Gatherings`
--
ALTER TABLE `Gatherings`
 ADD PRIMARY KEY (`gaID`), ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
 ADD PRIMARY KEY (`gID`), ADD KEY `gName` (`gName`), ADD KEY `gBadgeFID` (`gBadgeFID`), ADD KEY `pkgID` (`pkgID`), ADD KEY `gPath` (`gPath`(255));

--
-- Indexes for table `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
 ADD PRIMARY KEY (`gID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `GroupSets`
--
ALTER TABLE `GroupSets`
 ADD PRIMARY KEY (`gsID`), ADD KEY `gsName` (`gsName`), ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
 ADD PRIMARY KEY (`jID`), ADD UNIQUE KEY `jHandle` (`jHandle`), ADD KEY `pkgID` (`pkgID`), ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`), ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexes for table `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
 ADD PRIMARY KEY (`jsID`,`jID`), ADD KEY `jID` (`jID`);

--
-- Indexes for table `JobSets`
--
ALTER TABLE `JobSets`
 ADD PRIMARY KEY (`jsID`), ADD KEY `pkgID` (`pkgID`), ADD KEY `jsName` (`jsName`);

--
-- Indexes for table `JobsLog`
--
ALTER TABLE `JobsLog`
 ADD PRIMARY KEY (`jlID`), ADD KEY `jID` (`jID`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
 ADD PRIMARY KEY (`logID`), ADD KEY `channel` (`channel`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `MailImporters`
--
ALTER TABLE `MailImporters`
 ADD PRIMARY KEY (`miID`), ADD UNIQUE KEY `miHandle` (`miHandle`), ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexes for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
 ADD PRIMARY KEY (`mvhID`), ADD UNIQUE KEY `mHash` (`mHash`), ADD KEY `miID` (`miID`);

--
-- Indexes for table `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
 ADD PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`);

--
-- Indexes for table `MultilingualSections`
--
ALTER TABLE `MultilingualSections`
 ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
 ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
 ADD PRIMARY KEY (`user_id`,`namespace`), ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
 ADD PRIMARY KEY (`pkgID`), ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indexes for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
 ADD PRIMARY KEY (`pfID`), ADD UNIQUE KEY `pfHandle` (`pfHandle`);

--
-- Indexes for table `PagePaths`
--
ALTER TABLE `PagePaths`
 ADD PRIMARY KEY (`ppID`), ADD KEY `cID` (`cID`), ADD KEY `ppIsCanonical` (`ppIsCanonical`), ADD KEY `cPath` (`cPath`(255));

--
-- Indexes for table `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
 ADD PRIMARY KEY (`cID`,`pkID`,`paID`), ADD KEY `paID` (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ptID`), ADD KEY `peID` (`peID`), ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexes for table `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`), ADD KEY `peID` (`peID`), ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
 ADD PRIMARY KEY (`cID`,`ptID`), ADD KEY `cParentID` (`cParentID`), ADD KEY `cIsActive` (`cID`,`cIsActive`), ADD KEY `cCheckedOutUID` (`cCheckedOutUID`), ADD KEY `uID` (`uID`,`cPointerID`), ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`), ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`), ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`), ADD KEY `pkgID` (`pkgID`), ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexes for table `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateLastIndexed` (`cDateLastIndexed`), ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`), ADD KEY `cRequiresReindex` (`cRequiresReindex`), ADD FULLTEXT KEY `cName` (`cName`), ADD FULLTEXT KEY `cDescription` (`cDescription`), ADD FULLTEXT KEY `content` (`content`), ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `PageStatistics`
--
ALTER TABLE `PageStatistics`
 ADD PRIMARY KEY (`pstID`), ADD KEY `cID` (`cID`), ADD KEY `date` (`date`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
 ADD PRIMARY KEY (`pTemplateID`), ADD UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
 ADD PRIMARY KEY (`pThemeID`), ADD KEY `scvlID` (`scvlID`), ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `PageThemes`
--
ALTER TABLE `PageThemes`
 ADD PRIMARY KEY (`pThemeID`), ADD UNIQUE KEY `ptHandle` (`pThemeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
 ADD PRIMARY KEY (`ptComposerControlTypeID`), ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
 ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`), ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
 ADD PRIMARY KEY (`ptComposerFormLayoutSetID`), ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
 ADD PRIMARY KEY (`ptComposerOutputBlockID`), ADD KEY `cID` (`cID`), ADD KEY `bID` (`bID`,`cID`), ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
 ADD PRIMARY KEY (`ptComposerOutputControlID`), ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`), ADD KEY `ptID` (`ptID`), ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
 ADD PRIMARY KEY (`pTemplateID`,`ptID`), ADD KEY `ptID` (`ptID`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
 ADD PRIMARY KEY (`ptID`,`pTemplateID`), ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
 ADD PRIMARY KEY (`ptID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
 ADD PRIMARY KEY (`ptPublishTargetTypeID`), ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypes`
--
ALTER TABLE `PageTypes`
 ADD PRIMARY KEY (`ptID`), ADD UNIQUE KEY `ptHandle` (`ptHandle`), ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexes for table `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
 ADD PRIMARY KEY (`cID`,`wpID`), ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
 ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
 ADD PRIMARY KEY (`peID`), ADD KEY `petID` (`petID`);

--
-- Indexes for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
 ADD PRIMARY KEY (`pegID`), ADD KEY `peID` (`peID`), ADD KEY `gID` (`gID`);

--
-- Indexes for table `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
 ADD PRIMARY KEY (`peID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
 ADD PRIMARY KEY (`petID`,`pkCategoryID`), ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexes for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
 ADD PRIMARY KEY (`petID`), ADD UNIQUE KEY `petHandle` (`petHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
 ADD PRIMARY KEY (`peID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexes for table `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `accessType` (`accessType`), ADD KEY `peID` (`peID`), ADD KEY `peID_accessType` (`peID`,`accessType`), ADD KEY `pdID` (`pdID`), ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexes for table `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
 ADD PRIMARY KEY (`paID`,`wfID`), ADD KEY `wfID` (`wfID`);

--
-- Indexes for table `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
 ADD PRIMARY KEY (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
 ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
 ADD PRIMARY KEY (`pkCategoryID`), ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
 ADD PRIMARY KEY (`pkID`), ADD UNIQUE KEY `akHandle` (`pkHandle`), ADD KEY `pkCategoryID` (`pkCategoryID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PileContents`
--
ALTER TABLE `PileContents`
 ADD PRIMARY KEY (`pcID`), ADD KEY `pID` (`pID`,`displayOrder`), ADD KEY `itemID` (`itemID`), ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexes for table `Piles`
--
ALTER TABLE `Piles`
 ADD PRIMARY KEY (`pID`), ADD KEY `uID` (`uID`,`name`);

--
-- Indexes for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
 ADD PRIMARY KEY (`message_id`), ADD UNIQUE KEY `message_handle` (`handle`), ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
 ADD PRIMARY KEY (`cID`,`originalCID`), ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexes for table `Queues`
--
ALTER TABLE `Queues`
 ADD PRIMARY KEY (`queue_id`), ADD KEY `queue_name` (`queue_name`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
 ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `SignupRequests`
--
ALTER TABLE `SignupRequests`
 ADD PRIMARY KEY (`id`), ADD KEY `ipFrom` (`ipFrom`(32));

--
-- Indexes for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
 ADD PRIMARY KEY (`slID`), ADD UNIQUE KEY `ssHandle` (`ssHandle`);

--
-- Indexes for table `Stacks`
--
ALTER TABLE `Stacks`
 ADD PRIMARY KEY (`stID`), ADD KEY `stType` (`stType`), ADD KEY `stName` (`stName`), ADD KEY `cID` (`cID`);

--
-- Indexes for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
 ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexes for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
 ADD PRIMARY KEY (`pssPresetID`), ADD KEY `issID` (`issID`);

--
-- Indexes for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
 ADD PRIMARY KEY (`issID`);

--
-- Indexes for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
 ADD PRIMARY KEY (`scvlID`);

--
-- Indexes for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
 ADD PRIMARY KEY (`scvID`), ADD KEY `scvlID` (`scvlID`);

--
-- Indexes for table `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
 ADD PRIMARY KEY (`saslHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
 ADD PRIMARY KEY (`sclHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
 ADD PRIMARY KEY (`scsHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `SystemImageEditorComponents`
--
ALTER TABLE `SystemImageEditorComponents`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemImageEditorControlSets`
--
ALTER TABLE `SystemImageEditorControlSets`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemImageEditorFilters`
--
ALTER TABLE `SystemImageEditorFilters`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemImageEditorShapes`
--
ALTER TABLE `SystemImageEditorShapes`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `TopicTrees`
--
ALTER TABLE `TopicTrees`
 ADD PRIMARY KEY (`treeID`);

--
-- Indexes for table `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
 ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexes for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
 ADD PRIMARY KEY (`treeNodeID`), ADD KEY `gID` (`gID`);

--
-- Indexes for table `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
 ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexes for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
 ADD PRIMARY KEY (`treeNodeID`), ADD KEY `treeNodeParentID` (`treeNodeParentID`), ADD KEY `treeNodeTypeID` (`treeNodeTypeID`), ADD KEY `treeID` (`treeID`), ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexes for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
 ADD PRIMARY KEY (`treeNodeTypeID`), ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `Trees`
--
ALTER TABLE `Trees`
 ADD PRIMARY KEY (`treeID`), ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexes for table `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
 ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexes for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
 ADD PRIMARY KEY (`treeTypeID`), ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
 ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
 ADD PRIMARY KEY (`uID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexes for table `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32));

--
-- Indexes for table `UserGroups`
--
ALTER TABLE `UserGroups`
 ADD PRIMARY KEY (`uID`,`gID`), ADD KEY `uID` (`uID`), ADD KEY `gID` (`gID`);

--
-- Indexes for table `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
 ADD PRIMARY KEY (`upaID`), ADD UNIQUE KEY `upaHandle` (`upaHandle`), ADD KEY `pkgID` (`pkgID`), ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexes for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
 ADD PRIMARY KEY (`upID`), ADD KEY `upuID` (`upuID`), ADD KEY `upaID` (`upaID`);

--
-- Indexes for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
 ADD PRIMARY KEY (`msgID`), ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexes for table `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
 ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`), ADD KEY `uID` (`uID`), ADD KEY `uAuthorID` (`uAuthorID`), ADD KEY `msgFolderID` (`msgMailboxID`), ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`uID`), ADD UNIQUE KEY `uName` (`uName`), ADD KEY `uEmail` (`uEmail`);

--
-- Indexes for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
 ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
 ADD PRIMARY KEY (`uvhID`), ADD KEY `uID` (`uID`,`type`), ADD KEY `uHash` (`uHash`,`type`), ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexes for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
 ADD PRIMARY KEY (`wpID`), ADD KEY `wpCategoryID` (`wpCategoryID`), ADD KEY `wfID` (`wfID`), ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexes for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
 ADD PRIMARY KEY (`wpCategoryID`), ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
 ADD PRIMARY KEY (`wphID`), ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexes for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
 ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `Workflows`
--
ALTER TABLE `Workflows`
 ADD PRIMARY KEY (`wfID`), ADD UNIQUE KEY `wfName` (`wfName`), ADD KEY `wftID` (`wftID`,`wfID`);

--
-- Indexes for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
 ADD PRIMARY KEY (`wftID`), ADD UNIQUE KEY `wftHandle` (`wftHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
MODIFY `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
MODIFY `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
MODIFY `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
MODIFY `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
MODIFY `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
MODIFY `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
MODIFY `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
MODIFY `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
MODIFY `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
MODIFY `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BannedWords`
--
ALTER TABLE `BannedWords`
MODIFY `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `BlockRelations`
--
ALTER TABLE `BlockRelations`
MODIFY `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Blocks`
--
ALTER TABLE `Blocks`
MODIFY `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
MODIFY `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
MODIFY `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
MODIFY `aID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
MODIFY `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
MODIFY `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
MODIFY `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
MODIFY `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
MODIFY `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
MODIFY `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
MODIFY `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
MODIFY `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
MODIFY `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
MODIFY `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
MODIFY `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
MODIFY `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
MODIFY `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Conversations`
--
ALTER TABLE `Conversations`
MODIFY `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
MODIFY `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
MODIFY `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
MODIFY `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Features`
--
ALTER TABLE `Features`
MODIFY `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
MODIFY `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
MODIFY `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
MODIFY `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `FileSets`
--
ALTER TABLE `FileSets`
MODIFY `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
MODIFY `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
MODIFY `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
MODIFY `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
MODIFY `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
MODIFY `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
MODIFY `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
MODIFY `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
MODIFY `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
MODIFY `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
MODIFY `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Gatherings`
--
ALTER TABLE `Gatherings`
MODIFY `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
MODIFY `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `GroupSets`
--
ALTER TABLE `GroupSets`
MODIFY `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
MODIFY `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `JobSets`
--
ALTER TABLE `JobSets`
MODIFY `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `JobsLog`
--
ALTER TABLE `JobsLog`
MODIFY `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
MODIFY `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `MailImporters`
--
ALTER TABLE `MailImporters`
MODIFY `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
MODIFY `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
MODIFY `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
MODIFY `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
MODIFY `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PagePaths`
--
ALTER TABLE `PagePaths`
MODIFY `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `PageStatistics`
--
ALTER TABLE `PageStatistics`
MODIFY `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
MODIFY `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `PageThemes`
--
ALTER TABLE `PageThemes`
MODIFY `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
MODIFY `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
MODIFY `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
MODIFY `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
MODIFY `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
MODIFY `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
MODIFY `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PageTypes`
--
ALTER TABLE `PageTypes`
MODIFY `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
MODIFY `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
MODIFY `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
MODIFY `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
MODIFY `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
MODIFY `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
MODIFY `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
MODIFY `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `PileContents`
--
ALTER TABLE `PileContents`
MODIFY `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Piles`
--
ALTER TABLE `Piles`
MODIFY `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Queues`
--
ALTER TABLE `Queues`
MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SignupRequests`
--
ALTER TABLE `SignupRequests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
MODIFY `slID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Stacks`
--
ALTER TABLE `Stacks`
MODIFY `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
MODIFY `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
MODIFY `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
MODIFY `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
MODIFY `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
MODIFY `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SystemImageEditorComponents`
--
ALTER TABLE `SystemImageEditorComponents`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SystemImageEditorControlSets`
--
ALTER TABLE `SystemImageEditorControlSets`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `SystemImageEditorFilters`
--
ALTER TABLE `SystemImageEditorFilters`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `SystemImageEditorShapes`
--
ALTER TABLE `SystemImageEditorShapes`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
MODIFY `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Trees`
--
ALTER TABLE `Trees`
MODIFY `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
MODIFY `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
MODIFY `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
MODIFY `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
MODIFY `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
MODIFY `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
MODIFY `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
MODIFY `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
MODIFY `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `Workflows`
--
ALTER TABLE `Workflows`
MODIFY `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
MODIFY `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
ADD CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
