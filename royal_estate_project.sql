-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2022 at 06:50 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `royal_estate_project`
--
CREATE DATABASE IF NOT EXISTS `royal_estate_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `royal_estate_project`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact model', 7, 'add_contactmodel'),
(26, 'Can change contact model', 7, 'change_contactmodel'),
(27, 'Can delete contact model', 7, 'delete_contactmodel'),
(28, 'Can view contact model', 7, 'view_contactmodel'),
(29, 'Can add appointment model', 8, 'add_appointmentmodel'),
(30, 'Can change appointment model', 8, 'change_appointmentmodel'),
(31, 'Can delete appointment model', 8, 'delete_appointmentmodel'),
(32, 'Can view appointment model', 8, 'view_appointmentmodel'),
(33, 'Can add feedback model', 9, 'add_feedbackmodel'),
(34, 'Can change feedback model', 9, 'change_feedbackmodel'),
(35, 'Can delete feedback model', 9, 'delete_feedbackmodel'),
(36, 'Can view feedback model', 9, 'view_feedbackmodel'),
(37, 'Can add rent_house model', 10, 'add_rent_housemodel'),
(38, 'Can change rent_house model', 10, 'change_rent_housemodel'),
(39, 'Can delete rent_house model', 10, 'delete_rent_housemodel'),
(40, 'Can view rent_house model', 10, 'view_rent_housemodel'),
(41, 'Can add rent_land model', 11, 'add_rent_landmodel'),
(42, 'Can change rent_land model', 11, 'change_rent_landmodel'),
(43, 'Can delete rent_land model', 11, 'delete_rent_landmodel'),
(44, 'Can view rent_land model', 11, 'view_rent_landmodel'),
(45, 'Can add rent_pg model', 12, 'add_rent_pgmodel'),
(46, 'Can change rent_pg model', 12, 'change_rent_pgmodel'),
(47, 'Can delete rent_pg model', 12, 'delete_rent_pgmodel'),
(48, 'Can view rent_pg model', 12, 'view_rent_pgmodel'),
(49, 'Can add rent_shop model', 13, 'add_rent_shopmodel'),
(50, 'Can change rent_shop model', 13, 'change_rent_shopmodel'),
(51, 'Can delete rent_shop model', 13, 'delete_rent_shopmodel'),
(52, 'Can view rent_shop model', 13, 'view_rent_shopmodel'),
(53, 'Can add sale_house model', 14, 'add_sale_housemodel'),
(54, 'Can change sale_house model', 14, 'change_sale_housemodel'),
(55, 'Can delete sale_house model', 14, 'delete_sale_housemodel'),
(56, 'Can view sale_house model', 14, 'view_sale_housemodel'),
(57, 'Can add sale_land model', 15, 'add_sale_landmodel'),
(58, 'Can change sale_land model', 15, 'change_sale_landmodel'),
(59, 'Can delete sale_land model', 15, 'delete_sale_landmodel'),
(60, 'Can view sale_land model', 15, 'view_sale_landmodel'),
(61, 'Can add sale_pg model', 16, 'add_sale_pgmodel'),
(62, 'Can change sale_pg model', 16, 'change_sale_pgmodel'),
(63, 'Can delete sale_pg model', 16, 'delete_sale_pgmodel'),
(64, 'Can view sale_pg model', 16, 'view_sale_pgmodel'),
(65, 'Can add sale_shop model', 17, 'add_sale_shopmodel'),
(66, 'Can change sale_shop model', 17, 'change_sale_shopmodel'),
(67, 'Can delete sale_shop model', 17, 'delete_sale_shopmodel'),
(68, 'Can view sale_shop model', 17, 'view_sale_shopmodel'),
(69, 'Can add user model', 18, 'add_usermodel'),
(70, 'Can change user model', 18, 'change_usermodel'),
(71, 'Can delete user model', 18, 'delete_usermodel'),
(72, 'Can view user model', 18, 'view_usermodel'),
(73, 'Can add user_appointment model', 19, 'add_user_appointmentmodel'),
(74, 'Can change user_appointment model', 19, 'change_user_appointmentmodel'),
(75, 'Can delete user_appointment model', 19, 'delete_user_appointmentmodel'),
(76, 'Can view user_appointment model', 19, 'view_user_appointmentmodel'),
(77, 'Can add house_booking model', 20, 'add_house_bookingmodel'),
(78, 'Can change house_booking model', 20, 'change_house_bookingmodel'),
(79, 'Can delete house_booking model', 20, 'delete_house_bookingmodel'),
(80, 'Can view house_booking model', 20, 'view_house_bookingmodel'),
(81, 'Can add land_booking model', 21, 'add_land_bookingmodel'),
(82, 'Can change land_booking model', 21, 'change_land_bookingmodel'),
(83, 'Can delete land_booking model', 21, 'delete_land_bookingmodel'),
(84, 'Can view land_booking model', 21, 'view_land_bookingmodel'),
(85, 'Can add pg_booking model', 22, 'add_pg_bookingmodel'),
(86, 'Can change pg_booking model', 22, 'change_pg_bookingmodel'),
(87, 'Can delete pg_booking model', 22, 'delete_pg_bookingmodel'),
(88, 'Can view pg_booking model', 22, 'view_pg_bookingmodel'),
(89, 'Can add salehouse_booking model', 23, 'add_salehouse_bookingmodel'),
(90, 'Can change salehouse_booking model', 23, 'change_salehouse_bookingmodel'),
(91, 'Can delete salehouse_booking model', 23, 'delete_salehouse_bookingmodel'),
(92, 'Can view salehouse_booking model', 23, 'view_salehouse_bookingmodel'),
(93, 'Can add saleland_booking model', 24, 'add_saleland_bookingmodel'),
(94, 'Can change saleland_booking model', 24, 'change_saleland_bookingmodel'),
(95, 'Can delete saleland_booking model', 24, 'delete_saleland_bookingmodel'),
(96, 'Can view saleland_booking model', 24, 'view_saleland_bookingmodel'),
(97, 'Can add salepg_booking model', 25, 'add_salepg_bookingmodel'),
(98, 'Can change salepg_booking model', 25, 'change_salepg_bookingmodel'),
(99, 'Can delete salepg_booking model', 25, 'delete_salepg_bookingmodel'),
(100, 'Can view salepg_booking model', 25, 'view_salepg_bookingmodel'),
(101, 'Can add saleshop_booking model', 26, 'add_saleshop_bookingmodel'),
(102, 'Can change saleshop_booking model', 26, 'change_saleshop_bookingmodel'),
(103, 'Can delete saleshop_booking model', 26, 'delete_saleshop_bookingmodel'),
(104, 'Can view saleshop_booking model', 26, 'view_saleshop_bookingmodel'),
(105, 'Can add shop_booking model', 27, 'add_shop_bookingmodel'),
(106, 'Can change shop_booking model', 27, 'change_shop_bookingmodel'),
(107, 'Can delete shop_booking model', 27, 'delete_shop_bookingmodel'),
(108, 'Can view shop_booking model', 27, 'view_shop_bookingmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'mainapp', 'contactmodel'),
(6, 'sessions', 'session'),
(8, 'userapp', 'appointmentmodel'),
(9, 'userapp', 'feedbackmodel'),
(20, 'userapp', 'house_bookingmodel'),
(21, 'userapp', 'land_bookingmodel'),
(22, 'userapp', 'pg_bookingmodel'),
(10, 'userapp', 'rent_housemodel'),
(11, 'userapp', 'rent_landmodel'),
(12, 'userapp', 'rent_pgmodel'),
(13, 'userapp', 'rent_shopmodel'),
(23, 'userapp', 'salehouse_bookingmodel'),
(24, 'userapp', 'saleland_bookingmodel'),
(25, 'userapp', 'salepg_bookingmodel'),
(26, 'userapp', 'saleshop_bookingmodel'),
(14, 'userapp', 'sale_housemodel'),
(15, 'userapp', 'sale_landmodel'),
(16, 'userapp', 'sale_pgmodel'),
(17, 'userapp', 'sale_shopmodel'),
(27, 'userapp', 'shop_bookingmodel'),
(18, 'userapp', 'usermodel'),
(19, 'userapp', 'user_appointmentmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-29 07:16:50.983972'),
(2, 'auth', '0001_initial', '2022-04-29 07:16:52.072012'),
(3, 'admin', '0001_initial', '2022-04-29 07:16:52.310785'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-29 07:16:52.325866'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-29 07:16:52.342652'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-29 07:16:52.532230'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-29 07:16:52.667062'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-29 07:16:52.772102'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-29 07:16:52.788752'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-29 07:16:52.892446'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-29 07:16:52.899578'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-29 07:16:52.914616'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-29 07:16:53.032811'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-29 07:16:53.131023'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-29 07:16:53.249877'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-29 07:16:53.273395'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-29 07:16:53.366554'),
(18, 'sessions', '0001_initial', '2022-04-29 07:16:53.534000'),
(19, 'userapp', '0001_initial', '2022-04-29 07:16:53.961124'),
(20, 'userapp', '0002_remove_appointmentmodel_land_id_and_more', '2022-04-29 09:13:52.618666'),
(21, 'userapp', '0003_appointmentmodel_sale_house_id', '2022-04-29 09:23:12.868562'),
(22, 'userapp', '0004_delete_appointmentmodel', '2022-04-30 06:26:37.239440'),
(23, 'userapp', '0005_appointmentmodel', '2022-04-30 06:35:41.100041'),
(24, 'userapp', '0006_delete_appointmentmodel', '2022-04-30 06:39:39.831883'),
(25, 'userapp', '0007_user_appointmentmodel', '2022-04-30 07:05:07.131511'),
(26, 'userapp', '0008_rename_mobile_user_appointmentmodel_mobile', '2022-04-30 07:21:40.404836'),
(27, 'userapp', '0009_remove_user_appointmentmodel_land_id_and_more', '2022-04-30 07:40:19.820647'),
(28, 'userapp', '0010_user_appointmentmodel_land_id_and_more', '2022-04-30 07:47:39.574331'),
(29, 'userapp', '0011_house_bookingmodel_land_bookingmodel_pg_bookingmodel_and_more', '2022-04-30 08:00:17.874282'),
(30, 'userapp', '0012_rename_house_id_land_bookingmodel_land_id_and_more', '2022-04-30 08:05:50.181781'),
(31, 'userapp', '0013_rename_booking_id_house_bookingmodel_house_booking_id_and_more', '2022-04-30 09:23:14.663752');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qo23qvedf68zud0d3zuvyilhgkq9mpjn', 'eyJ1c2VyX2lkIjoxfQ:1nnCw6:aAYd6docZSTf3m1eYoga5XNK_AnWK-fh08QhK-yy1wU', '2022-05-21 05:24:58.291359');

-- --------------------------------------------------------

--
-- Table structure for table `house_booking_details`
--

CREATE TABLE IF NOT EXISTS `house_booking_details` (
  `house_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`house_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `house_booking_details`
--

INSERT INTO `house_booking_details` (`house_booking_id`, `user_id`, `owner_id`, `house_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-04-30'),
(2, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-04-30'),
(3, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-05-04'),
(4, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-05-04'),
(5, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-05-04'),
(6, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'i want to buy this property', '2022-05-04'),
(7, 4, 1, 1, 'john*', 'john@gmail.com', 9876543210, 'i want to buy this property', '2022-05-05'),
(8, 2, 1, 1, 'saddam', 'saddam@gmail.com', 1234567890, 'i want to buy this property', '2022-05-06'),
(9, 2, 1, 1, 'saddam', 'saddam@gmail.com', 1234567890, 'i want to buy this property', '2022-05-06'),
(10, 2, 1, 1, 'saddam', 'saddam@gmail.com', 1234567890, 'i want to buy this property', '2022-05-06'),
(11, 1, 1, 1, 'sravani', 'chanuchiramana1800@gmail.com', 9059501800, 'I want to buy this property', '2022-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `land_booking_details`
--

CREATE TABLE IF NOT EXISTS `land_booking_details` (
  `land_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `land_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`land_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pg_booking_details`
--

CREATE TABLE IF NOT EXISTS `pg_booking_details` (
  `pg_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `pg_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`pg_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pg_booking_details`
--

INSERT INTO `pg_booking_details` (`pg_booking_id`, `user_id`, `owner_id`, `pg_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'ssssssssssssssssssssssssssssssssssssssss', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `property_rent_houses`
--

CREATE TABLE IF NOT EXISTS `property_rent_houses` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` longtext NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `year_built` date NOT NULL,
  `rooms` varchar(10) NOT NULL,
  `bedrooms` varchar(100) NOT NULL,
  `bathrooms` varchar(50) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `super_buldup_area` varchar(50) NOT NULL,
  `carpet_area` varchar(50) NOT NULL,
  `furnishing` varchar(50) NOT NULL,
  `maintenance` varchar(50) NOT NULL,
  `total_floors` varchar(50) NOT NULL,
  `floor_no` varchar(50) NOT NULL,
  `facing` longtext NOT NULL,
  `reference` longtext NOT NULL,
  `house_image` varchar(100) NOT NULL,
  `bedroom_image` varchar(100) NOT NULL,
  `bathroom_image` varchar(100) NOT NULL,
  `kitchen_image` varchar(100) NOT NULL,
  `parking_image` varchar(100) NOT NULL,
  `dining_image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `property_rent_houses`
--

INSERT INTO `property_rent_houses` (`house_id`, `owner_id`, `property_type`, `property_location`, `price`, `year_built`, `rooms`, `bedrooms`, `bathrooms`, `car_parking`, `super_buldup_area`, `carpet_area`, `furnishing`, `maintenance`, `total_floors`, `floor_no`, `facing`, `reference`, `house_image`, `bedroom_image`, `bathroom_image`, `kitchen_image`, `parking_image`, `dining_image`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Apartments', 'Hyderabad', '20000', '2022-05-04', '2', '3', '2', '1', '500', '550', 'Furnished', '50000', '6', '4', 'North-West', '2021', 'logo/images/blog-details-also-2_AeRr1Mi.jpg', 'logo/images/home2_SfZBFRq.jpg', 'logo/images/home4_m2gdeYR.jpg', 'logo/images/home5_8rQ9M1u.jpg', 'logo/images/house7_IuzBYt1.jpg', 'logo/images/house9_mNRDVOV.jpg', 'ddddddddddddddddddddddd', 'ddddddddddddddddddddddddddddddddddd', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_rent_lands`
--

CREATE TABLE IF NOT EXISTS `property_rent_lands` (
  `land_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` longtext NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `facing` varchar(50) DEFAULT NULL,
  `length` varchar(50) NOT NULL,
  `breadth` varchar(10) NOT NULL,
  `land_image` varchar(100) NOT NULL,
  `land_image1` varchar(100) NOT NULL,
  `land_image2` varchar(100) NOT NULL,
  `land_image3` varchar(100) NOT NULL,
  `land_image4` varchar(100) NOT NULL,
  `land_image5` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`land_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `property_rent_lands`
--

INSERT INTO `property_rent_lands` (`land_id`, `owner_id`, `property_type`, `property_location`, `price`, `facing`, `length`, `breadth`, `land_image`, `land_image1`, `land_image2`, `land_image3`, `land_image4`, `land_image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Lands', 'Vizag', '2000', 'North-West', '200', '522', 'land/images/blog-details-also-2_hcUESdF.jpg', 'land/images/house6.jpg', 'land/images/home1_fj8LhNa.jpg', 'land/images/home5_kvfUFeJ.jpg', 'land/images/home7_I1j15fe.jpg', 'land/images/home2_bXUUx6l.jpg', '60 ft 40 ft CC Roads, Over head Tanks, Childrens Play area', '24/7 security', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_rent_pg&hostel`
--

CREATE TABLE IF NOT EXISTS `property_rent_pg&hostel` (
  `pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `sub_type` varchar(100) NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `meals` varchar(50) DEFAULT NULL,
  `furnishing` varchar(50) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `pg_image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`pg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `property_rent_pg&hostel`
--

INSERT INTO `property_rent_pg&hostel` (`pg_id`, `owner_id`, `sub_type`, `property_location`, `price`, `meals`, `furnishing`, `car_parking`, `pg_image`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'PG', 'Vizag', '2000', 'Yes', 'Unfurnished', '2', 'pg/images/latest-3_Qz28CYx.jpg', 'pg/images/home3.jpg', 'pg/images/home2.jpg', 'pg/images/home1_eCxtxLE.jpg', 'pg/images/home6.jpg', 'pg/images/home7_tzwPuZ4.jpg', '800/- Rent, $th Floor, Lift & watchman Available, 2BHK East Facing, 950 sft, prefered family, ready to occupy', 'Lift, House Keeping                      ', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_rent_shops`
--

CREATE TABLE IF NOT EXISTS `property_rent_shops` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` varchar(100) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `property_location` varchar(100) DEFAULT NULL,
  `furnishing` varchar(100) NOT NULL,
  `bathrooms` varchar(100) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `super_buldup_area` varchar(100) DEFAULT NULL,
  `carpet_area` varchar(100) DEFAULT NULL,
  `maintenance` varchar(100) NOT NULL,
  `facing` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `shop_image` varchar(100) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `description` longtext,
  `amenities` longtext,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `property_rent_shops`
--

INSERT INTO `property_rent_shops` (`shop_id`, `owner_id`, `property_type`, `project_name`, `price`, `property_location`, `furnishing`, `bathrooms`, `car_parking`, `super_buldup_area`, `carpet_area`, `maintenance`, `facing`, `reference`, `shop_image`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Office', 'Ram Nilayam', '2000', 'Vizag', 'furnished', '2', '3', '500', '777', '524', 'East', '2022', 'shop/images/latest-2_ENkf2bX.jpg', 'shop/images/home1_Y9HoTqa.jpg', 'shop/images/home2_jkmKpGc.jpg', 'shop/images/home4_d36DeNO.jpg', 'shop/images/home3_p3iLfAs.jpg', 'shop/images/home5.jpg', '800/- Rent, $th Floor, Lift & watchman Available, 2BHK East Facing, 950 sft, prefered family, ready to occupy', 'Lift, House Keeping                      ', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_sale_houses`
--

CREATE TABLE IF NOT EXISTS `property_sale_houses` (
  `sale_house_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` longtext NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `year_built` date NOT NULL,
  `rooms` varchar(10) NOT NULL,
  `bedrooms` varchar(100) NOT NULL,
  `bathrooms` varchar(50) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `super_buldup_area` varchar(50) NOT NULL,
  `carpet_area` varchar(50) NOT NULL,
  `furnishing` varchar(50) NOT NULL,
  `maintenance` varchar(50) NOT NULL,
  `total_floors` varchar(50) NOT NULL,
  `floor_no` varchar(50) NOT NULL,
  `facing` longtext NOT NULL,
  `reference` longtext NOT NULL,
  `house_image` varchar(100) NOT NULL,
  `bedroom_image` varchar(100) NOT NULL,
  `bathroom_image` varchar(100) NOT NULL,
  `kitchen_image` varchar(100) NOT NULL,
  `parking_image` varchar(100) NOT NULL,
  `dining_image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`sale_house_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `property_sale_houses`
--

INSERT INTO `property_sale_houses` (`sale_house_id`, `owner_id`, `property_type`, `property_location`, `price`, `year_built`, `rooms`, `bedrooms`, `bathrooms`, `car_parking`, `super_buldup_area`, `carpet_area`, `furnishing`, `maintenance`, `total_floors`, `floor_no`, `facing`, `reference`, `house_image`, `bedroom_image`, `bathroom_image`, `kitchen_image`, `parking_image`, `dining_image`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Builder Floors', 'Hyderabad', '50000', '2022-04-30', '4', '2', '1', '3', '555', '550', 'Semi-Furnished', '500', '4', '5', 'East', '2020', 'logo/images/latest-3_tKMV1it.jpg', 'logo/images/room7_oNl20jM.jpg', 'logo/images/room3_gsDrNCL.jpeg', 'logo/images/room10_N4qnNz6.jpeg', 'logo/images/house2_nycZtOp.jpg', 'logo/images/house3_T7QD2V0.jpg', '800/- Rent, $th Floor, Lift & watchman Available, 2BHK East Facing, 950 sft, prefered family, ready to occupy', 'Lift, House Keeping                      ', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_sale_lands`
--

CREATE TABLE IF NOT EXISTS `property_sale_lands` (
  `sale_land_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` longtext NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `length` varchar(50) NOT NULL,
  `breadth` varchar(10) NOT NULL,
  `facing` varchar(50) DEFAULT NULL,
  `land_image` varchar(100) NOT NULL,
  `land_image1` varchar(100) NOT NULL,
  `land_image2` varchar(100) NOT NULL,
  `land_image3` varchar(100) NOT NULL,
  `land_image4` varchar(100) NOT NULL,
  `land_image5` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`sale_land_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `property_sale_lands`
--

INSERT INTO `property_sale_lands` (`sale_land_id`, `owner_id`, `property_type`, `property_location`, `price`, `length`, `breadth`, `facing`, `land_image`, `land_image1`, `land_image2`, `land_image3`, `land_image4`, `land_image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Plots', 'Vizag', '2000', '200', '522', 'North-West', 'land/images/latest-1.jpg', 'land/images/home5_UZgG4CM.jpg', 'land/images/home1_BuZCaYM.jpg', 'land/images/home2_kwI7AqB.jpg', 'land/images/home5_cXLPIw6.jpg', 'land/images/home7_26MXXDk.jpg', '60 ft 40 ft CC Roads, Over head Tanks, Childrens Play area', '24/7 Security', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_sale_pg&hostel`
--

CREATE TABLE IF NOT EXISTS `property_sale_pg&hostel` (
  `sale_pg_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `sub_type` varchar(100) NOT NULL,
  `property_location` varchar(250) NOT NULL,
  `price` varchar(50) NOT NULL,
  `meals` varchar(50) DEFAULT NULL,
  `furnishing` varchar(50) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `pg_image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `amenities` longtext NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`sale_pg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `property_sale_pg&hostel`
--

INSERT INTO `property_sale_pg&hostel` (`sale_pg_id`, `owner_id`, `sub_type`, `property_location`, `price`, `meals`, `furnishing`, `car_parking`, `pg_image`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Roommate', 'Vizag', '2000', 'No', 'Furnished', NULL, 'pg/images/latest-6_BW84T7R.jpg', 'pg/images/home3_GffDnEc.jpg', 'pg/images/home6_3pgg8Br.jpg', 'pg/images/home3_jifcExH.jpg', 'pg/images/home2_alTuAqN.jpg', 'pg/images/home5.jpg', '800/- Rent, $th Floor, Lift & watchman Available, 2BHK East Facing, 950 sft, prefered family, ready to occupy', 'Lift, House Keeping                      ', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `property_sale_shops`
--

CREATE TABLE IF NOT EXISTS `property_sale_shops` (
  `sale_shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `property_type` varchar(100) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `property_location` varchar(100) DEFAULT NULL,
  `furnishing` varchar(100) NOT NULL,
  `bathrooms` varchar(100) NOT NULL,
  `car_parking` varchar(50) DEFAULT NULL,
  `super_buldup_area` varchar(100) DEFAULT NULL,
  `carpet_area` varchar(100) DEFAULT NULL,
  `maintenance` varchar(100) NOT NULL,
  `facing` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `shop_image` varchar(100) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `description` longtext,
  `amenities` longtext,
  `status` varchar(50) DEFAULT NULL,
  `uploded_date` date NOT NULL,
  PRIMARY KEY (`sale_shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `property_sale_shops`
--

INSERT INTO `property_sale_shops` (`sale_shop_id`, `owner_id`, `property_type`, `project_name`, `price`, `property_location`, `furnishing`, `bathrooms`, `car_parking`, `super_buldup_area`, `carpet_area`, `maintenance`, `facing`, `reference`, `shop_image`, `image1`, `image2`, `image3`, `image4`, `image5`, `description`, `amenities`, `status`, `uploded_date`) VALUES
(1, 1, 'Office', 'Ram Nilayam', '2000', 'Vizag', 'furnished', '1', '2', '500', '777', '524', 'East', '2022', 'shop/images/latest-5_4qVJikT.jpg', 'shop/images/home3_a2IcYBF.jpg', 'shop/images/home1_98dO1Mj.jpg', 'shop/images/home4_6lsfT4B.jpg', 'shop/images/home6_7n43icx.jpg', 'shop/images/home2_4KRujLM.jpg', '800/- Rent, $th Floor, Lift & watchman Available, 2BHK East Facing, 950 sft, prefered family, ready to occupy', 'Lift, House Keeping                      ', 'Accepted', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `salehouse_booking_details`
--

CREATE TABLE IF NOT EXISTS `salehouse_booking_details` (
  `salehouse_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sale_house_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`salehouse_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `salehouse_booking_details`
--

INSERT INTO `salehouse_booking_details` (`salehouse_booking_id`, `user_id`, `owner_id`, `sale_house_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'salehousesssssssssssssssssssssssssssssssssss\r\n', '2022-04-30'),
(2, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'landdddddddddddddd', '2022-04-30'),
(3, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'landdddddddddddddd', '2022-04-30'),
(4, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'landdddddddddddddd', '2022-04-30'),
(5, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, '', '2022-05-04'),
(6, 2, 1, 1, 'saddam*', 'saddam@gmail.com', 1234567890, '', '2022-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `saleland_booking_details`
--

CREATE TABLE IF NOT EXISTS `saleland_booking_details` (
  `saleland_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sale_land_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`saleland_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salepg_booking_details`
--

CREATE TABLE IF NOT EXISTS `salepg_booking_details` (
  `salepg_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sale_pg_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`salepg_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `salepg_booking_details`
--

INSERT INTO `salepg_booking_details` (`salepg_booking_id`, `user_id`, `owner_id`, `sale_pg_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'pgggggggggggggggggggggggggggggggggggggggg', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `saleshop_booking_details`
--

CREATE TABLE IF NOT EXISTS `saleshop_booking_details` (
  `saleshop_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sale_shop_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`saleshop_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `saleshop_booking_details`
--

INSERT INTO `saleshop_booking_details` (`saleshop_booking_id`, `user_id`, `owner_id`, `sale_shop_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'saleshopppppppp', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `shop_booking_details`
--

CREATE TABLE IF NOT EXISTS `shop_booking_details` (
  `shop_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`shop_booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_booking_details`
--

INSERT INTO `shop_booking_details` (`shop_booking_id`, `user_id`, `owner_id`, `shop_id`, `user_name`, `email`, `mobile`, `message`, `booking_date`) VALUES
(1, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'ddddddddddddddd', '2022-04-30'),
(2, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'fffffffffffffffffffff', '2022-05-04'),
(3, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'fffffffffffffffffffff', '2022-05-04'),
(4, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, '', '2022-05-04'),
(5, 1, 1, 1, 'sravani*', 'chanuchiramana1800@gmail.com', 9059501800, 'ggggggggggggggg', '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `email`, `password`, `mobile`, `location`, `dob`, `user_image`, `reg_date`) VALUES
(1, 'sravani', 'chanuchiramana1800@gmail.com', '1800', 9059501800, 'Nellore', '2022-04-20', 'user_image/face10_vU9McQk.jpg', '2022-04-29'),
(2, 'saddam', 'saddam@gmail.com', 'saddam', 1234567890, 'hyderabad', '2022-05-04', 'user_image/face7_65Pbx7D.jpg', '2022-05-04'),
(3, 'Narendra Naidu', 'naninaidu91822@gmail.com', 'nani', 7989464593, 'Bangalore', '2022-05-05', 'user_image/face16_ftVsQD7.jpg', '2022-05-05'),
(4, 'john', 'john@gmail.com', 'john', 9876543210, 'hyderabad', '2022-05-06', 'user_image/face21.jpg', '2022-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `feedback_type` varchar(50) NOT NULL,
  `feedback` longtext NOT NULL,
  `user_image` varchar(100) DEFAULT NULL,
  `feedback_date` date NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `user_name`, `email`, `feedback_type`, `feedback`, `user_image`, `feedback_date`) VALUES
(1, 'sravani', 'chanuchiramana1800@gmail.com', 'Houses & Villas', 'The most used app on my phone. i just loved it. This is so much either than using any other property dealing website.\n\n', 'user_image/face23_23VaV5t.jpg', '2022-04-29'),
(2, 'saddam', 'saddam@gmail.com', 'Houses & Villas', 'it is perfect app to find property. I got the house of my dreams hear at a very reasonable price.', 'user_image/face7_65Pbx7D.jpg', '2022-05-05'),
(3, 'Narendra Naidu', 'naninaidu91822@gmail.com', 'Shops & Offices', 'I love that the lot size is in front. that''s important to us and the commute feature saves a lot of work.', 'user_image/face16_ftVsQD7.jpg', '2022-05-05'),
(4, 'john', 'john@gmail.com', 'Builder Floors', 'ssss', 'user_image/face21.jpg', '2022-05-05');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
