-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2025 at 05:14 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmv_drafting`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int NOT NULL,
  `staged_id` int DEFAULT NULL,
  `messages` varchar(300) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `attachment_mandatory` tinyint DEFAULT NULL,
  `reminder_config` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `staged_id`, `messages`, `order_id`, `attachment_mandatory`, `reminder_config`, `created_on`, `modified_on`) VALUES
(1, 1, 'Received complete idf', 1, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(2, 1, 'Call with inventor', 2, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(3, 1, 'Patentabilty report', 3, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(4, 1, 'Discuss with inventor', 4, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(5, 1, 'Receive additional information', 5, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(6, 1, 'Identify filing type', 6, 0, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(7, 1, 'Priority filing (Y/N)', 7, NULL, 1, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(8, 2, 'Draft claims', 8, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(9, 2, 'Inventor review', 9, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(10, 2, 'Inventor signoff', 10, 0, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(11, 2, 'Get additional info', 11, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(12, 2, 'Draft spec', 12, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(13, 2, 'Inventor review', 13, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(14, 2, 'Inventor signoff', 14, 0, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(15, 3, 'Based on type of filing', 15, 0, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(16, 3, 'Receive filing forms', 16, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(17, 3, 'Franking', 17, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(18, 4, 'Filing at patent office', 18, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(19, 5, 'Prepare invoice', 20, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(20, 5, 'Payment confirmation', 21, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(21, 5, 'Close sub-docket', 22, 0, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35'),
(22, 4, 'Received filing receipt', 19, 1, 0, '2025-03-07 10:20:35', '2025-03-07 10:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `action_input_config`
--

CREATE TABLE `action_input_config` (
  `id` int NOT NULL,
  `label` varchar(300) DEFAULT NULL,
  `mandatory` tinyint NOT NULL DEFAULT '0',
  `type` varchar(300) DEFAULT NULL,
  `placeholder` varchar(300) DEFAULT NULL,
  `sub_text` varchar(300) DEFAULT NULL,
  `btn_label` varchar(300) DEFAULT NULL,
  `no_data_label` varchar(300) DEFAULT NULL,
  `order_no` int NOT NULL,
  `attachment_required` tinyint NOT NULL DEFAULT '0',
  `reminder_config` tinyint NOT NULL DEFAULT '0',
  `action_id` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `action_input_config`
--

INSERT INTO `action_input_config` (`id`, `label`, `mandatory`, `type`, `placeholder`, `sub_text`, `btn_label`, `no_data_label`, `order_no`, `attachment_required`, `reminder_config`, `action_id`, `created_on`, `modified_on`) VALUES
(1, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 1, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(2, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 1, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(3, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 2, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(4, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 2, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(5, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 3, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(6, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 3, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(7, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 4, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(8, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 4, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(9, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 5, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(10, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 5, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(11, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 1, 0, 0, 6, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(12, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 2, 1, 0, 7, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(13, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 3, 0, 0, 7, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(14, 'Whether priority filing?', 1, 'toggle', NULL, NULL, NULL, NULL, 1, 0, 0, 7, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(15, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 8, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(16, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 8, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(17, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 9, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(18, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 9, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(19, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 1, 0, 0, 10, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(20, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 11, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(21, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 11, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(22, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 12, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(23, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 12, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(24, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 13, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(25, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 13, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(26, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 1, 0, 0, 14, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(27, 'Download Forms to Fill', 0, 'dropdown', 'Select Form', NULL, NULL, NULL, 1, 0, 0, 15, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(28, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 15, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(29, 'Select form Type', 0, 'dropdown', 'Select Form', NULL, NULL, NULL, 1, 0, 0, 16, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(30, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 2, 1, 0, 16, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(31, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 3, 0, 0, 16, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(32, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 17, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(33, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 17, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(34, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 18, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(35, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 18, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(36, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 19, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(37, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 19, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(38, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 20, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(39, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 20, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(41, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 21, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(42, 'Comments', 0, 'text', 'Type comments here', NULL, NULL, NULL, 2, 0, 0, 22, '2025-03-07 10:21:09', '2025-03-07 10:21:09'),
(43, 'Upload file', 1, 'file', 'Choose file', NULL, 'Choose', 'No files selected yet', 1, 1, 0, 22, '2025-03-07 10:21:09', '2025-03-07 10:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `assignee`
--

CREATE TABLE `assignee` (
  `id` int NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_type`
--

CREATE TABLE `attachment_type` (
  `id` int NOT NULL,
  `attachment_type` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attachment_type`
--

INSERT INTO `attachment_type` (`id`, `attachment_type`, `created_on`, `modified_on`) VALUES
(1, 'NDA', '2025-03-07 09:54:09', '2025-03-07 09:54:09'),
(2, 'IDF', '2025-03-07 09:54:09', '2025-03-07 09:54:09'),
(3, 'Proposal', '2025-03-07 09:54:09', '2025-03-07 09:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` char(36) NOT NULL,
  `client_code` int DEFAULT NULL,
  `client_name` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `client_division`
--

CREATE TABLE `client_division` (
  `id` char(36) NOT NULL,
  `division_name` varchar(300) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `countries` varchar(300) DEFAULT NULL,
  `country_code` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countries`, `country_code`, `created_on`, `modified_on`) VALUES
(43, 'India', 'IN', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(44, 'China', 'CN', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(45, 'New Zealand', 'NZ', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(46, 'Bangladesh', 'BD', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(47, 'Canada', 'CA', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(48, 'France', 'FR', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(49, 'United State', 'US', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(50, 'Singapore', 'SG', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(51, 'Nepal', 'NP', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(52, 'WIPO', 'WO', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(53, 'Serbia', 'RS', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(54, 'Australia', 'AU', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(55, 'Finland', 'FI', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(56, 'Indonesia', 'ID', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(57, 'Brazil', 'BR', '2025-03-04 02:28:49', '2025-03-04 02:28:49'),
(59, 'Germany', 'DE', '2025-06-18 15:46:06', '2025-06-18 15:46:06'),
(60, 'JAPAN', 'JP', '2025-06-18 15:49:34', '2025-06-18 15:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `custom_reminder`
--

CREATE TABLE `custom_reminder` (
  `id` int NOT NULL,
  `docket_id` int DEFAULT NULL,
  `next_reminder_month` timestamp(6) NULL DEFAULT NULL,
  `sent` tinyint DEFAULT NULL,
  `archive` tinyint(1) DEFAULT '0',
  `sent_timestamp` timestamp(6) NULL DEFAULT NULL,
  `custom` tinyint(1) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `added_by` char(36) DEFAULT NULL,
  `cc_address` varchar(500) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `uuid` char(36) NOT NULL,
  `department` varchar(300) NOT NULL,
  `client_id` char(36) DEFAULT NULL,
  `tenant_id` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket`
--

CREATE TABLE `docket` (
  `id` int NOT NULL,
  `annuity_timeline` timestamp NULL DEFAULT NULL,
  `deadline_for_filing` timestamp NULL DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `docket_number` varchar(300) DEFAULT NULL,
  `filing_maintenance_cost` decimal(20,10) DEFAULT NULL,
  `temp_number` int DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `filing_entity_type_id` int DEFAULT NULL,
  `first_filing_type_id` int DEFAULT NULL,
  `country_of_filing_id` int DEFAULT NULL,
  `foreign_license_required` tinyint NOT NULL DEFAULT '0',
  `division` char(36) DEFAULT NULL,
  `added_by` char(36) DEFAULT NULL,
  `manual_docket_number` varchar(300) DEFAULT NULL,
  `department_id` char(36) DEFAULT NULL,
  `source` int DEFAULT '0' COMMENT '0 means it is from drafting and 1 means from DR',
  `current_status_date` timestamp NULL DEFAULT NULL,
  `first_filing_date` timestamp NULL DEFAULT NULL,
  `public_disclosure_date` timestamp NULL DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `current_status` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_attachment_mapping`
--

CREATE TABLE `docket_attachment_mapping` (
  `id` int NOT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `attachment_type_id` int DEFAULT NULL,
  `docket_id` int DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_comments`
--

CREATE TABLE `docket_comments` (
  `id` int NOT NULL,
  `added_by` char(36) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  `docket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_logs`
--

CREATE TABLE `docket_logs` (
  `id` int NOT NULL,
  `operation_type` varchar(300) DEFAULT NULL,
  `docket_id` int DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_subdocket_mapping`
--

CREATE TABLE `docket_subdocket_mapping` (
  `id` int NOT NULL,
  `docket_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_subdocket_roles`
--

CREATE TABLE `docket_subdocket_roles` (
  `id` int NOT NULL,
  `docket_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket_subdocket_stage_action`
--

CREATE TABLE `docket_subdocket_stage_action` (
  `id` int NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `complete` tinyint DEFAULT NULL,
  `action_id` int DEFAULT NULL,
  `upload_filetype` int DEFAULT NULL,
  `docket_id` int DEFAULT NULL,
  `stage_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `performed_by` char(36) DEFAULT NULL,
  `performed_on` timestamp NULL DEFAULT NULL,
  `attachment_mandatory` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filing_entity_type`
--

CREATE TABLE `filing_entity_type` (
  `id` int NOT NULL,
  `filing_entity_type` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_entity_type`
--

INSERT INTO `filing_entity_type` (`id`, `filing_entity_type`, `created_on`, `modified_on`) VALUES
(1, 'Small', '2025-03-07 10:19:54', '2025-03-07 10:19:54'),
(2, 'Large', '2025-03-07 10:19:54', '2025-03-07 10:19:54'),
(3, 'Micro', '2025-03-07 10:19:54', '2025-03-07 10:19:54'),
(4, 'Individual', '2025-03-07 10:19:54', '2025-03-07 10:19:54'),
(5, 'Startup', '2025-03-07 10:19:54', '2025-03-07 10:19:54'),
(6, 'Others', '2025-03-07 10:19:54', '2025-03-07 10:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `filing_type`
--

CREATE TABLE `filing_type` (
  `id` int NOT NULL,
  `filing_type` varchar(300) DEFAULT NULL,
  `filing_type_code` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_type`
--

INSERT INTO `filing_type` (`id`, `filing_type`, `filing_type_code`, `created_on`, `modified_on`) VALUES
(1, 'Provisional', 'P', '2025-03-07 10:20:11', '2025-03-07 10:20:11'),
(2, 'Non-Provisional', 'NP', '2025-03-07 10:20:11', '2025-03-07 10:20:11'),
(3, 'PCT Application', 'PCT', '2025-03-07 10:20:11', '2025-03-07 10:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `foreign_filing_countries`
--

CREATE TABLE `foreign_filing_countries` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `docket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `partial_docket`
--

CREATE TABLE `partial_docket` (
  `id` int NOT NULL,
  `analyst` char(36) DEFAULT NULL,
  `annuity_timeline` timestamp(6) NULL DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `deadline_for_filing` timestamp(6) NULL DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `drafter` char(36) DEFAULT NULL,
  `filing_entity_type_id` int DEFAULT NULL,
  `filing_maintenance_cost` decimal(19,2) DEFAULT NULL,
  `first_filing_type_id` int DEFAULT NULL,
  `country_of_filing_id` int DEFAULT NULL,
  `foreign_filing_countries_id` varchar(300) DEFAULT NULL,
  `foreign_license_required` tinyint DEFAULT NULL,
  `inventor_id` varchar(300) DEFAULT NULL,
  `manager_id` varchar(300) DEFAULT NULL,
  `patent_agent` char(36) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `is_saved` tinyint NOT NULL DEFAULT '0',
  `client_division_id` char(36) DEFAULT NULL,
  `added_by` char(36) DEFAULT NULL,
  `manual_docket_number` varchar(300) DEFAULT NULL,
  `system_generated_docket` tinyint(1) DEFAULT NULL,
  `department_id` char(36) DEFAULT NULL,
  `source` int NOT NULL DEFAULT '0' COMMENT '0 means it is from drafting and 1 means from DR',
  `autogenerated_docket_number` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_config`
--

CREATE TABLE `reminder_config` (
  `id` int NOT NULL,
  `first_reminder` int DEFAULT NULL,
  `second_reminder` int DEFAULT NULL,
  `third_reminder` int DEFAULT NULL,
  `forth_reminder` decimal(10,1) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `filing_country` int DEFAULT NULL,
  `filing_type` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reminder_config`
--

INSERT INTO `reminder_config` (`id`, `first_reminder`, `second_reminder`, `third_reminder`, `forth_reminder`, `priority`, `filing_country`, `filing_type`, `created_on`, `modified_on`) VALUES
(1, 9, 10, 11, 11.5, NULL, 43, 1, '2025-03-07 10:29:47', '2025-03-07 10:29:47'),
(2, 27, 28, 29, 29.5, NULL, NULL, 3, '2025-03-07 10:29:47', '2025-03-07 10:29:47'),
(3, 9, 10, 11, 11.5, NULL, 49, 1, '2025-03-07 10:29:47', '2025-03-07 10:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `visibility` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `visibility`, `created_on`, `modified_on`) VALUES
(1, 'App-admin', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(2, 'Executive', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(3, 'Inventor', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(4, 'Patent Agent', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(5, 'Paralegal', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(6, 'Manager(Internal)', 0, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(7, 'Drafter', 0, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(8, 'Analyst', 0, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(9, 'Outside Agent', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(10, 'Reviewer', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02'),
(11, 'App-user', 1, '2025-03-07 10:30:02', '2025-03-07 10:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `serial_order` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `serial_order`, `created_on`, `modified_on`) VALUES
(1, 'T0', 0, '2025-03-07 10:30:19', '2025-03-07 10:30:19'),
(2, 'T1', 1, '2025-03-07 10:30:19', '2025-03-07 10:30:19'),
(3, 'T2', 2, '2025-03-07 10:30:19', '2025-03-07 10:30:19'),
(4, 'T3', 3, '2025-03-07 10:30:19', '2025-03-07 10:30:19'),
(5, 'T4', 4, '2025-03-07 10:30:19', '2025-03-07 10:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `status` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `created_on`, `modified_on`) VALUES
(1, 'Abandoned', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(2, 'Rated To File', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(3, 'Hold', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(4, 'Rated To Publish', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(5, 'Open', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(6, 'Trade Secret', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(7, 'Not Yet Rated', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(8, 'Active', '2025-03-07 10:30:33', '2025-03-07 10:30:33'),
(9, 'Complete', '2025-03-07 10:30:33', '2025-03-07 10:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `subdocket`
--

CREATE TABLE `subdocket` (
  `id` int NOT NULL,
  `deleted` tinyint DEFAULT NULL,
  `expected_filing_year` timestamp NULL DEFAULT NULL,
  `filing_date` timestamp NULL DEFAULT NULL,
  `filing_maintenance_cost` decimal(20,10) DEFAULT NULL,
  `grant_date` timestamp NULL DEFAULT NULL,
  `office_action_recieved_date` timestamp NULL DEFAULT NULL,
  `prior_filing_year` timestamp NULL DEFAULT NULL,
  `priority_date` timestamp NULL DEFAULT NULL,
  `publication_date` timestamp NULL DEFAULT NULL,
  `publication_number` varchar(300) DEFAULT NULL,
  `subdocket_number` varchar(300) DEFAULT NULL,
  `term_extension` timestamp NULL DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `filing_entity_type_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `subdocket_filing_type_id` int DEFAULT NULL,
  `manual_subdocket_number` varchar(255) DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `priority_of_filing` tinyint DEFAULT NULL,
  `application_number` varchar(300) DEFAULT NULL,
  `tentative_filing_date` timestamp NULL DEFAULT NULL,
  `prosecution` tinyint DEFAULT NULL,
  `prosecution_subdocket_link` varchar(300) DEFAULT NULL,
  `added_by` char(36) DEFAULT NULL,
  `docket_uuid` char(36) NOT NULL,
  `uuid` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_assignee_mapping`
--

CREATE TABLE `subdocket_assignee_mapping` (
  `id` int NOT NULL,
  `assignee_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_attachment_mapping`
--

CREATE TABLE `subdocket_attachment_mapping` (
  `id` int NOT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `added_by` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_comments`
--

CREATE TABLE `subdocket_comments` (
  `id` int NOT NULL,
  `added_by` char(36) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_filing_type`
--

CREATE TABLE `subdocket_filing_type` (
  `id` int NOT NULL,
  `filing_type` varchar(300) DEFAULT NULL,
  `filing_type_code` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subdocket_filing_type`
--

INSERT INTO `subdocket_filing_type` (`id`, `filing_type`, `filing_type_code`, `created_on`, `modified_on`) VALUES
(1, 'Provisional', 'P', '2025-03-07 10:37:30', '2025-03-07 10:37:30'),
(2, 'Non-Provisional', 'NP', '2025-03-07 10:37:30', '2025-03-07 10:37:30'),
(3, 'PCT Application', 'PCT', '2025-03-07 10:37:30', '2025-03-07 10:37:30'),
(4, 'Divisional', 'D', '2025-03-07 10:37:30', '2025-03-07 10:37:30'),
(5, 'Continuation Patent', 'NP-CP', '2025-03-07 10:37:30', '2025-03-07 10:37:30'),
(6, 'Continuation-In-Parts / Patent of addition', 'NP-CIP', '2025-03-07 10:37:30', '2025-03-07 10:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_foreign_filing_country`
--

CREATE TABLE `subdocket_foreign_filing_country` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_logs`
--

CREATE TABLE `subdocket_logs` (
  `id` int NOT NULL,
  `added_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `operation_type` varchar(300) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_reminder`
--

CREATE TABLE `subdocket_reminder` (
  `id` int NOT NULL,
  `next_reminder_month` timestamp(6) NULL DEFAULT NULL,
  `sent` tinyint DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `sent_timestamp` timestamp(6) NULL DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  `updated_timestamp` timestamp(6) NULL DEFAULT NULL,
  `action_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_stage_attachment_mapping`
--

CREATE TABLE `subdocket_stage_attachment_mapping` (
  `id` int NOT NULL,
  `file_name` varchar(300) NOT NULL,
  `file_location` varchar(300) NOT NULL,
  `subdocket_stage_id` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` char(36) NOT NULL DEFAULT 'UUID()',
  `fullname` varchar(300) DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `firstname` varchar(300) DEFAULT NULL,
  `lastname` varchar(300) DEFAULT NULL,
  `middlename` varchar(300) DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `inactive` tinyint NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_tenant_client_mapping`
--

CREATE TABLE `user_tenant_client_mapping` (
  `id` int NOT NULL,
  `user_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `active` tinyint NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staged_id` (`staged_id`);

--
-- Indexes for table `action_input_config`
--
ALTER TABLE `action_input_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id` (`action_id`);

--
-- Indexes for table `assignee`
--
ALTER TABLE `assignee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `attachment_type`
--
ALTER TABLE `attachment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_division`
--
ALTER TABLE `client_division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_reminder`
--
ALTER TABLE `custom_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docket_id` (`docket_id`),
  ADD KEY `subdocket_id` (`subdocket_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `docket`
--
ALTER TABLE `docket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tkk8hrfmn7pqnbilky0fygumb` (`client_id`),
  ADD KEY `FK_ay37c7rdcpk86ij6p7y4agk1e` (`filing_entity_type_id`),
  ADD KEY `FK_2laikj2eoemvbd3j5f23fqc2l` (`first_filing_type_id`),
  ADD KEY `FK_oel9bcog807l8nuj671kww20l` (`country_of_filing_id`),
  ADD KEY `FK_6hjxu7ko29qu44l0e34ir24q1` (`division`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `FK_qid7o9qch2kpj8rlcg3xocupg` (`current_status`);

--
-- Indexes for table `docket_attachment_mapping`
--
ALTER TABLE `docket_attachment_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mvp6uyuflf01mo0tygj4f5fon` (`attachment_type_id`),
  ADD KEY `FK_n0qogkfvwb02ej6w9m8eyxdl6` (`docket_id`),
  ADD KEY `FK_2s2psxecv7gihib301behn634` (`user_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `docket_comments`
--
ALTER TABLE `docket_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_bd2an7cf72lgmrp39up3tih8j` (`docket_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `docket_logs`
--
ALTER TABLE `docket_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_n6vomlii2mqleexgeamtdua1j` (`docket_id`),
  ADD KEY `FK_bt1cgym0ulg130d4x7obw2r2p` (`created_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `docket_subdocket_mapping`
--
ALTER TABLE `docket_subdocket_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pm6k78gkj0schku118g3k2oa` (`docket_id`),
  ADD KEY `FK_lcu26e4mi4sfkr7n565ifog54` (`subdocket_id`);

--
-- Indexes for table `docket_subdocket_roles`
--
ALTER TABLE `docket_subdocket_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1krwc0qe8sbhtw8qg8glv1nr5` (`docket_id`),
  ADD KEY `FK_67vdtlh46b1g1m6qmtnjoovji` (`role_id`),
  ADD KEY `FK_lnstihpkrrvg7l17tygnvts9n` (`subdocket_id`),
  ADD KEY `FK_bptqav0a73aitars2dvogj6g` (`user_id`);

--
-- Indexes for table `docket_subdocket_stage_action`
--
ALTER TABLE `docket_subdocket_stage_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fb4tyk40vhkxbxyo7vlnb29w9` (`upload_filetype`),
  ADD KEY `FK_3v9fxrqmwkv0ejwp9rd2w721g` (`docket_id`),
  ADD KEY `FK_qtk2m9bdd1l1lh60uic8emwit` (`stage_id`),
  ADD KEY `FK_6krt70m8wkthaplp1fedtquke` (`subdocket_id`),
  ADD KEY `FK_261s27shbuw66by46ci312frk` (`performed_by`),
  ADD KEY `FK_n73fiu2vj0yi1fi38lilibd3v` (`action_id`);

--
-- Indexes for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filing_type`
--
ALTER TABLE `filing_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mj00xlsojw1r3mi6ja16157ah` (`country_id`),
  ADD KEY `FK_444nfgxacxnfalvm4fjsfnghr` (`docket_id`);

--
-- Indexes for table `partial_docket`
--
ALTER TABLE `partial_docket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `reminder_config`
--
ALTER TABLE `reminder_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_t2a1rdyqauk8whw9hq7wb7lb3` (`filing_country`),
  ADD KEY `FK_i9639wsqeyvwu0gv2sffnespx` (`filing_type`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdocket`
--
ALTER TABLE `subdocket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lu5ne0qwcrmjruxyqgt217jdp` (`client_id`),
  ADD KEY `FK_g9843iy059b7lyfbvxc2krj3v` (`country_id`),
  ADD KEY `FK_4h3hw0xxwxrbr1nvgj61ghqwd` (`filing_entity_type_id`),
  ADD KEY `FK_2wr8d6m67f9levk3c9h4gywv5` (`status_id`),
  ADD KEY `FK_2hcptm1p2ba8y9nre0rrgubtk` (`subdocket_filing_type_id`),
  ADD KEY `FK_l55swsqr5vpki9hfe0vbh8xdf` (`agent_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `subdocket_assignee_mapping`
--
ALTER TABLE `subdocket_assignee_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a2l3iv0dxd0am7356vqxwwe2l` (`assignee_id`),
  ADD KEY `FK_5ty8lmnxeoo8ncie7ts2tkag4` (`subdocket_id`);

--
-- Indexes for table `subdocket_attachment_mapping`
--
ALTER TABLE `subdocket_attachment_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5a0w0bvu1kfpi6vqc7iaeljl6` (`subdocket_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_comments`
--
ALTER TABLE `subdocket_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lbweuuvyqss8o2d1tixry0wmc` (`subdocket_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_filing_type`
--
ALTER TABLE `subdocket_filing_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdocket_foreign_filing_country`
--
ALTER TABLE `subdocket_foreign_filing_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tmv5337najlhqkjx3ayxm5jm4` (`country_id`),
  ADD KEY `FK_d80jc03yy6bjc1btx0j6jx88k` (`subdocket_id`);

--
-- Indexes for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d8emc9tw42h70i9xdiasxi5sv` (`subdocket_id`),
  ADD KEY `FK_knvuieq3u29nl9jr8wp4eu28k` (`created_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_reminder`
--
ALTER TABLE `subdocket_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_r5bcw95rjfo1g69u1ja1rrwfv` (`subdocket_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_stage_attachment_mapping`
--
ALTER TABLE `subdocket_stage_attachment_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdocket_stage_id` (`subdocket_stage_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_tenant_client_mapping`
--
ALTER TABLE `user_tenant_client_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `action_input_config`
--
ALTER TABLE `action_input_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `assignee`
--
ALTER TABLE `assignee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachment_type`
--
ALTER TABLE `attachment_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `custom_reminder`
--
ALTER TABLE `custom_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket`
--
ALTER TABLE `docket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_attachment_mapping`
--
ALTER TABLE `docket_attachment_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_comments`
--
ALTER TABLE `docket_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_logs`
--
ALTER TABLE `docket_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_subdocket_mapping`
--
ALTER TABLE `docket_subdocket_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_subdocket_roles`
--
ALTER TABLE `docket_subdocket_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docket_subdocket_stage_action`
--
ALTER TABLE `docket_subdocket_stage_action`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `filing_type`
--
ALTER TABLE `filing_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partial_docket`
--
ALTER TABLE `partial_docket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_config`
--
ALTER TABLE `reminder_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subdocket`
--
ALTER TABLE `subdocket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_assignee_mapping`
--
ALTER TABLE `subdocket_assignee_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_attachment_mapping`
--
ALTER TABLE `subdocket_attachment_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_comments`
--
ALTER TABLE `subdocket_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_filing_type`
--
ALTER TABLE `subdocket_filing_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subdocket_foreign_filing_country`
--
ALTER TABLE `subdocket_foreign_filing_country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_reminder`
--
ALTER TABLE `subdocket_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_stage_attachment_mapping`
--
ALTER TABLE `subdocket_stage_attachment_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tenant_client_mapping`
--
ALTER TABLE `user_tenant_client_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`staged_id`) REFERENCES `stages` (`id`);

--
-- Constraints for table `action_input_config`
--
ALTER TABLE `action_input_config`
  ADD CONSTRAINT `action_input_config_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`);

--
-- Constraints for table `assignee`
--
ALTER TABLE `assignee`
  ADD CONSTRAINT `assignee_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `client_division`
--
ALTER TABLE `client_division`
  ADD CONSTRAINT `client_division_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `custom_reminder`
--
ALTER TABLE `custom_reminder`
  ADD CONSTRAINT `custom_reminder_ibfk_1` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  ADD CONSTRAINT `custom_reminder_ibfk_2` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `custom_reminder_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `custom_reminder_ibfk_4` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `docket`
--
ALTER TABLE `docket`
  ADD CONSTRAINT `docket_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `docket_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `docket_ibfk_3` FOREIGN KEY (`division`) REFERENCES `client_division` (`id`),
  ADD CONSTRAINT `docket_ibfk_4` FOREIGN KEY (`department_id`) REFERENCES `department` (`uuid`),
  ADD CONSTRAINT `FK_2laikj2eoemvbd3j5f23fqc2l` FOREIGN KEY (`first_filing_type_id`) REFERENCES `filing_type` (`id`),
  ADD CONSTRAINT `FK_ay37c7rdcpk86ij6p7y4agk1e` FOREIGN KEY (`filing_entity_type_id`) REFERENCES `filing_entity_type` (`id`),
  ADD CONSTRAINT `FK_oel9bcog807l8nuj671kww20l` FOREIGN KEY (`country_of_filing_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `FK_qid7o9qch2kpj8rlcg3xocupg` FOREIGN KEY (`current_status`) REFERENCES `status` (`id`);

--
-- Constraints for table `docket_attachment_mapping`
--
ALTER TABLE `docket_attachment_mapping`
  ADD CONSTRAINT `docket_attachment_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `docket_attachment_mapping_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_mvp6uyuflf01mo0tygj4f5fon` FOREIGN KEY (`attachment_type_id`) REFERENCES `attachment_type` (`id`),
  ADD CONSTRAINT `FK_n0qogkfvwb02ej6w9m8eyxdl6` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`);

--
-- Constraints for table `docket_comments`
--
ALTER TABLE `docket_comments`
  ADD CONSTRAINT `docket_comments_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `docket_comments_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_bd2an7cf72lgmrp39up3tih8j` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`);

--
-- Constraints for table `docket_logs`
--
ALTER TABLE `docket_logs`
  ADD CONSTRAINT `docket_logs_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `docket_logs_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_n6vomlii2mqleexgeamtdua1j` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`);

--
-- Constraints for table `docket_subdocket_mapping`
--
ALTER TABLE `docket_subdocket_mapping`
  ADD CONSTRAINT `FK_lcu26e4mi4sfkr7n565ifog54` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `FK_pm6k78gkj0schku118g3k2oa` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`);

--
-- Constraints for table `docket_subdocket_roles`
--
ALTER TABLE `docket_subdocket_roles`
  ADD CONSTRAINT `docket_subdocket_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1krwc0qe8sbhtw8qg8glv1nr5` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  ADD CONSTRAINT `FK_67vdtlh46b1g1m6qmtnjoovji` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FK_lnstihpkrrvg7l17tygnvts9n` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`);

--
-- Constraints for table `docket_subdocket_stage_action`
--
ALTER TABLE `docket_subdocket_stage_action`
  ADD CONSTRAINT `docket_subdocket_stage_action_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `docket_subdocket_stage_action_ibfk_2` FOREIGN KEY (`performed_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_3v9fxrqmwkv0ejwp9rd2w721g` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  ADD CONSTRAINT `FK_6krt70m8wkthaplp1fedtquke` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `FK_fb4tyk40vhkxbxyo7vlnb29w9` FOREIGN KEY (`upload_filetype`) REFERENCES `attachment_type` (`id`),
  ADD CONSTRAINT `FK_qtk2m9bdd1l1lh60uic8emwit` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`);

--
-- Constraints for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  ADD CONSTRAINT `FK_444nfgxacxnfalvm4fjsfnghr` FOREIGN KEY (`docket_id`) REFERENCES `docket` (`id`),
  ADD CONSTRAINT `FK_mj00xlsojw1r3mi6ja16157ah` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `partial_docket`
--
ALTER TABLE `partial_docket`
  ADD CONSTRAINT `partial_docket_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `reminder_config`
--
ALTER TABLE `reminder_config`
  ADD CONSTRAINT `FK_i9639wsqeyvwu0gv2sffnespx` FOREIGN KEY (`filing_type`) REFERENCES `subdocket_filing_type` (`id`),
  ADD CONSTRAINT `FK_t2a1rdyqauk8whw9hq7wb7lb3` FOREIGN KEY (`filing_country`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
