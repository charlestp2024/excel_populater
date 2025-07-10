-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2025 at 03:17 PM
-- Server version: 8.0.32
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmv_dca`
--

-- --------------------------------------------------------

--
-- Table structure for table `annuity_payment_record`
--

CREATE TABLE `annuity_payment_record` (
  `id` int NOT NULL,
  `casereference_annuity_id` int NOT NULL,
  `current_annuity` int DEFAULT NULL,
  `payment_made_by` int DEFAULT NULL,
  `date_of_payment` date NOT NULL,
  `amount` int DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `reciept_name` varchar(100) DEFAULT NULL,
  `reciept_path` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `annuity_review`
--

CREATE TABLE `annuity_review` (
  `id` int NOT NULL,
  `casereference_annuity_id` int NOT NULL,
  `attorney_id` int DEFAULT NULL,
  `decision_due_date` date DEFAULT NULL,
  `decision_keep_count` int DEFAULT '0',
  `decision_drop_count` int DEFAULT '0',
  `decision_tentative_drop_count` int DEFAULT '0',
  `assigned_reviewer_count` int DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_checklist`
--

CREATE TABLE `attorney_checklist` (
  `id` int NOT NULL,
  `checklist_id` int NOT NULL,
  `annuity_review_id` int NOT NULL,
  `attorney_id` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_checklist_config`
--

CREATE TABLE `attorney_checklist_config` (
  `id` int NOT NULL,
  `checklist_id` int NOT NULL,
  `attorney_id` int NOT NULL,
  `added_by` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_decision`
--

CREATE TABLE `attorney_decision` (
  `id` int NOT NULL,
  `annuity_review_id` int NOT NULL,
  `decision` int DEFAULT NULL,
  `decision_date` datetime DEFAULT NULL,
  `comment` text,
  `is_related_to_sustainability` tinyint(1) DEFAULT '0',
  `reviewed_by` int DEFAULT NULL,
  `decision_taken_before_days` int DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_reviewer`
--

CREATE TABLE `attorney_reviewer` (
  `id` int NOT NULL,
  `attorneyid` int NOT NULL,
  `reviewerid` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bl_checklist_config`
--

CREATE TABLE `bl_checklist_config` (
  `id` int NOT NULL,
  `checklist_id` int NOT NULL,
  `department_id` char(36) NOT NULL,
  `added_by` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `casereference`
--

CREATE TABLE `casereference` (
  `id` int NOT NULL,
  `docketid` int NOT NULL,
  `casenumber` varchar(255) NOT NULL,
  `system_generated_subdocket_number` varchar(36) DEFAULT 'NULL',
  `inforce` tinyint(1) NOT NULL,
  `priority` tinyint(1) DEFAULT '0',
  `countryid` int NOT NULL,
  `client_id` varchar(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `priority_date` date DEFAULT NULL,
  `current_attorney` int NOT NULL,
  `current_annuity_case` int DEFAULT NULL,
  `latest_annuity_number` int DEFAULT NULL,
  `current_annuity_decision` int NOT NULL DEFAULT '0',
  `current_annuity_decision_date` date DEFAULT NULL,
  `department_id` char(36) NOT NULL,
  `filingtypeid` int DEFAULT NULL,
  `grant_date` date DEFAULT NULL,
  `filing_date` date DEFAULT NULL,
  `added_date` date DEFAULT NULL,
  `has_annuity_data` tinyint(1) DEFAULT '0',
  `publication_number` varchar(255) DEFAULT NULL,
  `title` text,
  `combined_inventors` text,
  `espace_publink` text,
  `publicationlink` text,
  `due_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `casereference_annuity`
--

CREATE TABLE `casereference_annuity` (
  `id` int NOT NULL,
  `casereferenceid` int NOT NULL,
  `attorneyid` int DEFAULT NULL,
  `renewaldate` date NOT NULL,
  `annuity` int DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `eur_to_dollar_rate` decimal(10,2) DEFAULT NULL,
  `dollar_fee` decimal(10,2) DEFAULT NULL,
  `quarter` int NOT NULL,
  `financial_year` int NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `case_reference_annuity_reminder`
--

CREATE TABLE `case_reference_annuity_reminder` (
  `id` int NOT NULL,
  `casereference_id` int NOT NULL,
  `annuity` int NOT NULL,
  `sent` tinyint(1) DEFAULT '0',
  `template_id` int NOT NULL,
  `reminder_date` datetime NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `parent_id` int DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `has_sub_section` tinyint(1) NOT NULL,
  `is_disabled` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`id`, `name`, `parent_id`, `client_id`, `tenant_id`, `has_sub_section`, `is_disabled`, `is_show`, `created_on`, `modified_on`) VALUES
(1, 'Grades', NULL, '', '', 1, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(2, 'a. Covers Sales of Commercial grades', 1, '', '', 0, 1, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(3, 'b. Covers manufacturing/compounding of grades', 1, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(4, 'Relates to commercially relevant process', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(5, 'c. Covers Experimental Grades', 1, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(6, 'Accolade: Associated with Open Accolade project(s)', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(7, 'Cover articles/design aspects that will be manufactured/used/sold by Customers', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(8, 'd. Covers commercial grade in a customer formulation', 1, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(9, 'New resin platform/new molecule', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(10, 'New formulation with expected future commercial value', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(11, 'Plan to license out', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(12, 'Filed as part of fencing / defensive strategy', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21'),
(13, 'Other', NULL, '', '', 0, 0, 1, '2025-03-07 09:48:21', '2025-03-07 09:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `claim_type`
--

CREATE TABLE `claim_type` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `visibility` int NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `uuid` char(36) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_code` varchar(50) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`uuid`, `client_name`, `client_code`, `tenant_id`, `is_active`, `created_on`, `modified_on`) VALUES
('151cf854-7c89-4bcb-9f8e-d9ef1de1ac57', 'client test1', '0008', 'df234305-8a47-4b4d-8efb-716a6b695428', 1, '2025-04-15 06:16:41', '2025-04-15 06:21:53'),
('20248b73-4d9a-468c-833a-81d081b1802f', 'Beta Logic Pvt Ltd', '0010', 'df234305-8a47-4b4d-8efb-716a6b695428', 0, '2025-05-28 13:34:07', '2025-05-28 14:05:10'),
('2b37715a-4d31-430e-91c3-72f0eea8a94e', 'Philips Client', '0004', 'df234305-8a47-4b4d-8efb-716a6b695428', 1, '2025-03-27 11:44:22', '2025-03-27 11:44:22'),
('4d62cf44-08c9-4186-be65-9ed3280888e2', 'Client7', '0007', 'df234305-8a47-4b4d-8efb-716a6b695428', 0, '2025-04-08 15:05:57', '2025-04-08 15:06:03'),
('86ab5a4d-5797-4bdb-af23-bcbda3e55509', 'Client5', '0005', 'df234305-8a47-4b4d-8efb-716a6b695428', 1, '2025-03-28 05:12:51', '2025-03-28 05:12:51'),
('f6a2b44b-74a7-4aa7-a87a-5aff93695edf', 'AlphaLogic', '0009', 'df234305-8a47-4b4d-8efb-716a6b695428', 1, '2025-05-21 07:31:23', '2025-05-21 07:31:23'),
('ff0e4dfa-e1e5-45e9-8d27-3d0e3998f698', 'client6', '0006', 'df234305-8a47-4b4d-8efb-716a6b695428', 0, '2025-04-02 15:26:25', '2025-04-03 06:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int UNSIGNED NOT NULL,
  `maintenance` tinyint(1) DEFAULT '0',
  `maintenace_up_timestamp` timestamp NULL DEFAULT NULL,
  `ticker_tape` tinyint(1) DEFAULT '0',
  `ticker_tape_message` text,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `maintenance`, `maintenace_up_timestamp`, `ticker_tape`, `ticker_tape_message`, `created_on`, `modified_on`) VALUES
(1, 0, NULL, 0, 'Maintenance', '2025-03-07 09:49:41', '2025-03-07 09:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `code` varchar(4) NOT NULL,
  `visibility` tinyint NOT NULL DEFAULT '0' COMMENT '1- visible , 0 - not visible',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `visibility`, `created_on`, `modified_on`) VALUES
(43, 'India', 'IN', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(44, 'China', 'CN', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(45, 'New Zealand', 'NZ', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(46, 'Bangladesh', 'BD', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(47, 'Canada', 'CA', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(48, 'France', 'FR', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(49, 'United State', 'US', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(50, 'Singapore', 'SG', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(51, 'Nepal', 'NP', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(52, 'WIPO', 'WO', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(53, 'Serbia', 'RS', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(54, 'Australia', 'AU', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(55, 'Finland', 'FI', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(56, 'Indonesia', 'ID', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06'),
(57, 'Brazil', 'BR', 1, '2025-03-07 09:50:06', '2025-03-07 09:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `uuid` char(36) NOT NULL,
  `department` varchar(300) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `docket`
--

CREATE TABLE `docket` (
  `id` int NOT NULL,
  `number` varchar(100) NOT NULL,
  `combined_grade` text,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filing_type`
--

CREATE TABLE `filing_type` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_type`
--

INSERT INTO `filing_type` (`id`, `name`, `code`, `created_on`, `modified_on`) VALUES
(1, 'Non-Provisional', 'NP', '2025-03-07 09:52:17', '2025-03-07 09:52:17'),
(2, 'PCT Application', 'PCT', '2025-03-07 09:52:17', '2025-03-07 09:52:17'),
(3, 'Divisional', 'D', '2025-03-07 09:52:17', '2025-03-07 09:52:17'),
(4, 'Continuation Patent', 'NP-CP', '2025-03-07 09:52:17', '2025-03-07 09:52:17'),
(5, 'Continuation- In- Parts', 'NP-CIP', '2025-03-07 09:52:17', '2025-03-07 09:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `mail_template`
--

CREATE TABLE `mail_template` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `createdby` int DEFAULT NULL,
  `type` tinyint NOT NULL,
  `by_default` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mail_template`
--

INSERT INTO `mail_template` (`id`, `name`, `body`, `createdby`, `type`, `by_default`, `subject`, `created_on`, `modified_on`) VALUES
(1, 'Activation Annuity Review', '<style type=\"text/css\">\n       table.etemplate{border-collapse: collapse;width:100%;table-layout:fixed}\n       table.etemplate th{\n              white-space: nowrap;\n              padding: 10px;\n              background-color: #E6E7E8;\n              border-bottom:1px solid #939598;\n              width:160px;\n              text-align:center;\n       }\n       table.etemplate th:not(last-child){\n              border-right: 2px solid #fff;\n       }\n       \n       table.etemplate tr:not(frist-child) > td {\n               border-bottom:1px solid #E6E7E8;\n       }\n       table.etemplate tr:not(frist-child):nth-child(even) td{\n              border-right: 2px solid #fff;\n       }\n       table.etemplate tr td{\n              padding: 8px 10px;\n              width:160px;\n              text-align:center;\n       }\n       \n       table.etemplate .et{\n       		width:400px !important;\n       }\n       table.etemplate .tal{\n      	text-align:left !important;\n      }\n      \n</style>\n<p>Dear All,<p>\n<br/>\n<p>\n	The following cases has been sent to you by <b>$attorney_name</b> for your review. Please click on the case reference number to provide your inputs.\n<p>\n<br/>\n<table class=\"etemplate\">\n	<tr>\n		<th class=\'tal\'>Case Number</th>\n		<th>Prosecution Status</th>\n		<th>Publication Number</th>\n		<th>Current Renewal Date</th>\n		<th class=\"et\">Title</th>\n		<th>Inventor</th>\n		<th>SBU</th>\n		<th>BU</th>\n		<th>BL</th>\n	</tr>\n	#foreach( $caseDetailsDto in $dtoCaseDetailsList )\n    	<tr>\n			<td class=\'tal\'><a href=\"$!baseurl/case/view/$caseDetailsDto.caseNumber\">$!caseDetailsDto.caseNumber</a></td>\n			<td>$!caseDetailsDto.prosecutionStatus</td>\n			<td>\n				#if( $caseDetailsDto.publicatoinNumber )\n  					#if( $caseDetailsDto.publicationLink )\n  						<a href=\"$caseDetailsDto.publicationLink\">$caseDetailsDto.publicatoinNumber</a>\n  					#else\n  						$caseDetailsDto.publicatoinNumber\n  					#end\n				#end\n			</td>\n			<td>$!caseDetailsDto.currentRenewalDate</td>\n			<td class=\"et\">$!caseDetailsDto.title</td>\n			<td>$!caseDetailsDto.concatenetedInventor</td>\n			<td>$!caseDetailsDto.concatenetedSBU</td>\n			<td>$!caseDetailsDto.concatenetedBU</td>\n			<td>$!caseDetailsDto.concatenetedBL</td>\n		</tr>\n  	#end\n</table>\n<br/>\n<br/>\n<p>This is a system generated email. Do not reply to this. For more information kindly contact <b>$attorney_name</b> or IP analyst(s)</p>\n<br/>\n<br/>\n \nRegards,<br/>\nAdministrator<br/>\nAnnuity Review Tool<br/>', NULL, 0, 1, 'Action needed for Annuity Review', '2025-03-07 09:52:38', '2025-03-07 09:52:38'),
(2, 'Activation Foreign Filing', '<style type=\"text/css\">\n       table.etemplate{border-collapse: collapse;width:100%;table-layout:fixed}\n       table.etemplate th{\n              white-space: nowrap;\n              padding: 10px;\n              background-color: #E6E7E8;\n              border-bottom:1px solid #939598;\n              width:160px;\n              text-align:center;\n       }\n       table.etemplate th:not(last-child){\n              border-right: 2px solid #fff;\n       }\n       \n       table.etemplate tr:not(frist-child):nth-child(even){\n              border-bottom:1px solid #E6E7E8;\n       }\n       table.etemplate tr:not(frist-child):nth-child(even) td{\n              border-right: 2px solid #fff;\n       }\n       table.etemplate tr td{\n              padding: 8px 10px;\n              width:160px;\n              text-align:center;\n       }\n       \n       table.etemplate .et{\n       		width:400px !important;\n       }\n       table.etemplate .tal{\n      	text-align:left !important;\n      }\n      \n</style>\n<p>Dear All,<p>\n<br/>\n<p>\n    The following cases are due for Foreign Filing Conversion and has been sent by <b>$attorney_name</b> for your review. Please click on the case reference number to provide your inputs.\n<p>\n<br/>\n<table class=\"etemplate\">\n	<tr>\n		<th class=\'tal\'>Case Number</th>\n		<th>Filing Date</th>\n		<th>Due Date Foreign Filing</th>\n		<th>Expiry Date</th>\n		<th class=\"et\">Title</th>\n		<th>Inventor</th>\n		<th>SBU</th>\n		<th>BU</th>\n		<th>BL</th>\n	</tr>\n	#foreach( $caseDetailsDto in $dtoCaseDetailsList )\n    	<tr>\n			<td class=\'tal\'><a href=\"$!baseurl/case/view/$caseDetailsDto.caseNumber\">$!caseDetailsDto.caseNumber</a></td>\n			<td>$!caseDetailsDto.filingDate</td>\n			<td>$!caseDetailsDto.dueDateForeignFiling</td>\n			<td>$!caseDetailsDto.expiryDate</td>\n			<td class=\"et\">$!caseDetailsDto.title</td>\n			<td>$!caseDetailsDto.concatenetedInventor</td>\n			<td>$!caseDetailsDto.concatenetedSBU</td>\n			<td>$!caseDetailsDto.concatenetedBU</td>\n			<td>$!caseDetailsDto.concatenetedBL</td>\n		</tr>\n  	#end\n</table>\n<br/>\n<br/>\n<p>This is a system generated email. Do not reply to this. For more information kindly contact <b>$attorney_name</b> or IP analyst(s)</p>\n<br/>\n<br/>\n \nRegards,<br/>\nAdministrator<br/>\nAnnuity Review Tool<br/>', NULL, 0, 1, 'Action needed - Cases Due For Foreign Filing', '2025-03-07 09:52:38', '2025-03-07 09:52:38'),
(3, 'Activation National Stage', '<style type=\"text/css\">\n       table.etemplate{border-collapse: collapse;width:100%;table-layout:fixed}\n       table.etemplate th{\n              white-space: nowrap;\n              padding: 10px;\n               background-color: #E6E7E8;\n              border-bottom:1px solid #939598;\n              width:170px;\n              text-align:center;\n       }\n       table.etemplate th:not(last-child){\n              border-right: 2px solid #fff;\n       }\n       \n       table.etemplate tr:not(frist-child):nth-child(even){\n              border-bottom:1px solid #E6E7E8;\n       }\n       table.etemplate tr:not(frist-child):nth-child(even) td{\n              border-right: 2px solid #fff;\n       }\n       table.etemplate tr td{\n              padding: 8px 10px;\n              width:160px;\n              text-align:center;\n       }\n       \n       table.etemplate .et{\n       		width:400px !important;\n       }\n       table.etemplate .tal{\n      	text-align:left !important;\n      }\n      \n</style>\n<p>Dear All,<p>\n<br/>\n<p>\n	The following cases are due for National Stage Conversion and has been sent by <b>$attorney_name</b> for your review. Please click on the case reference number to provide your inputs.\n	Please provide your inputs on list of countries to be validated for this case in comments section.\n<p>\n<br/>\n<table class=\"etemplate\">\n	<tr>\n		<th class=\'tal\'>Case Number</th>\n		<th>Filing Date</th>\n		<th>Priority Date</th>\n		<th>Due Date National Stage</th>\n		<th>Publication Number</th>\n		<th class=\"et\">Title</th>\n		<th>Inventor</th>\n		<th>SBU</th>\n		<th>BU</th>\n		<th>BL</th>\n	</tr>\n	#foreach( $caseDetailsDto in $dtoCaseDetailsList )\n    	<tr>\n			<td class=\'tal\'><a href=\"$!baseurl/case/view/$caseDetailsDto.caseNumber\">$!caseDetailsDto.caseNumber</a></td>\n			<td>$!caseDetailsDto.filingDate</td>\n			<td>$!caseDetailsDto.priorityDate</td>\n			<td>$!caseDetailsDto.dueDateNationalStage</td>\n			<td>\n				#if( $caseDetailsDto.publicatoinNumber )\n  					#if( $caseDetailsDto.publicationLink )\n  						<a href=\"$caseDetailsDto.publicationLink\">$caseDetailsDto.publicatoinNumber</a>\n  					#else\n  						$caseDetailsDto.publicatoinNumber\n  					#end\n				#end\n			</td>\n			<td class=\"et\">$!caseDetailsDto.title</td>\n			<td>$!caseDetailsDto.concatenetedInventor</td>\n			<td>$!caseDetailsDto.concatenetedSBU</td>\n			<td>$!caseDetailsDto.concatenetedBU</td>\n			<td>$!caseDetailsDto.concatenetedBL</td>\n		</tr>\n  	#end\n</table>\n<br/>\n<br/>\n<p>This is a system generated email. Do not reply to this. For more information kindly contact <b>$attorney_name</b> or IP analyst(s)</p>\n<br/>\n<br/>\n \nRegards,<br/>\nAdministrator<br/>\nAnnuity Review Tool<br/>', NULL, 0, 1, 'Action needed - Cases Due For National Stage Conversion', '2025-03-07 09:52:38', '2025-03-07 09:52:38'),
(4, 'Activation Pending Cases Review', '<style type=\"text/css\">\n       table.etemplate{border-collapse: collapse;width:100%;table-layout:fixed}\n       table.etemplate th{\n              white-space: nowrap;\n              padding: 10px;\n              background-color: #E6E7E8;\n              border-bottom:1px solid #939598;\n              width:160px;\n              text-align:center;\n       }\n       table.etemplate th:not(last-child){\n              border-right: 2px solid #fff;\n       }\n       \n       table.etemplate tr:not(first-child) > td {\n               border-bottom:1px solid #E6E7E8;\n       }\n       table.etemplate tr:not(first-child):nth-child(even) td{\n              border-right: 2px solid #fff;\n       }\n       table.etemplate tr td{\n              padding: 8px 10px;\n              width:160px;\n              text-align:center;\n       }\n       \n       table.etemplate .et{\n       		width:400px !important;\n       }\n       table.etemplate .tal{\n      	text-align:left !important;\n      }\n      \n</style>\n<p>Dear All,<p>\n<br/>\n<p>\n	The following cases has been sent to you by <b>$attorney_name</b> for your review. Please click on the case reference number to provide your inputs.\n<p>\n<br/>\n<table class=\"etemplate\">\n	<tr>\n		<th class=\'tal\'>Case Number</th>\n		<th>Prosecution Status</th>\n		<th>Publication Number</th>\n		<th>Current Renewal Date</th>\n		<th class=\"et\">Title</th>\n		<th>Inventor</th>\n		<th>SBU</th>\n		<th>BU</th>\n		<th>BL</th>\n		<th>Current Annuity Fee</th>\n		<th>Filing date</th>\n	</tr>\n	#foreach( $caseDetailsDto in $dtoCaseDetailsList )\n    	<tr>\n			<td class=\'tal\'><a href=\"$!baseurl/case/view/$caseDetailsDto.caseNumber\">$!caseDetailsDto.caseNumber</a></td>\n			<td>$!caseDetailsDto.prosecutionStatus</td>\n			<td>\n				#if( $caseDetailsDto.publicatoinNumber )\n  					#if( $caseDetailsDto.publicationLink )\n  						<a href=\"$caseDetailsDto.publicationLink\">$caseDetailsDto.publicatoinNumber</a>\n  					#else\n  						$caseDetailsDto.publicatoinNumber\n  					#end\n				#end\n			</td>\n			<td>$!caseDetailsDto.currentRenewalDate</td>\n			<td class=\"et\">$!caseDetailsDto.title</td>\n			<td>$!caseDetailsDto.concatenetedInventor</td>\n			<td>$!caseDetailsDto.concatenetedSBU</td>\n			<td>$!caseDetailsDto.concatenetedBU</td>\n			<td>$!caseDetailsDto.concatenetedBL</td>\n			<td>$!caseDetailsDto.currentAnnuityFee</td>\n			<td>$!caseDetailsDto.filingDate</td>\n		</tr>\n  	#end\n</table>\n<br/>\n<br/>\n<p>This is a system generated email. Do not reply to this. For more information kindly contact <b>$attorney_name</b> or IP analyst(s)</p>\n<br/>\n<br/>\n \nRegards,<br/>\nAdministrator<br/>\nAnnuity Review Tool<br/>', NULL, 0, 1, 'Action needed for Pending Cases Review', '2025-03-07 09:52:38', '2025-03-07 09:52:38'),
(5, 'ESR & Analyst\'s Observation', '<p>Dear $attorney_name,<p>\r\n<br/>\r\n<p>\r\n    The following ESR and Analyst\'s observation has been updated by <b>$user_name</b>. \r\n    Please click on the url to see updated ESR and Analyst\'s observation.<br/>\r\n    <a href=\"$esr_link\">$esr_link</a>\r\n<p>\r\n<br/>\r\n\r\n<br/>\r\n<br/>\r\n<p>\r\n	This is a system generated email. Do not reply to this.\r\n</p>\r\n<br/>\r\n<br/>\r\n \r\nRegards,<br/>\r\nAdministrator<br/>\r\nAnnuity Review Tool<br/>', NULL, 2, 0, 'ESR & Analyst\'s Observation', '2025-03-07 09:52:38', '2025-03-07 09:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `mail_template_id`
--

CREATE TABLE `mail_template_id` (
  `id` int NOT NULL,
  `template` text NOT NULL,
  `remindermonth` float NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mail_template_id`
--

INSERT INTO `mail_template_id` (`id`, `template`, `remindermonth`, `created_on`, `modified_on`) VALUES
(1, '` <!DOCTYPE html>\n  <html>\n  <br>\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\n  <br></br>\n  <%=reminder%> and date is <%=date%> \n<br></br>\nFrom,\n <br>\n <b>Promive- Annuity application</b></br>\n  </html>`', 0.5, '2025-03-07 09:53:00', '2025-03-07 09:53:00'),
(2, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 1, '2025-03-07 09:53:00', '2025-03-07 09:53:00'),
(3, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 2, '2025-03-07 09:53:00', '2025-03-07 09:53:00'),
(4, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 3, '2025-03-07 09:53:00', '2025-03-07 09:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `prosecution_status`
--

CREATE TABLE `prosecution_status` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `char_code` varchar(2) NOT NULL,
  `group_name` varchar(10) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_mail_template`
--

CREATE TABLE `reminder_mail_template` (
  `id` int NOT NULL,
  `template` text NOT NULL,
  `reminder_name` varchar(60) DEFAULT NULL,
  `reminder_count` int NOT NULL,
  `reminder_type` varchar(60) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reminder_mail_template`
--

INSERT INTO `reminder_mail_template` (`id`, `template`, `reminder_name`, `reminder_count`, `reminder_type`, `created_on`, `modified_on`) VALUES
(1, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 'First Reminder', 3, 'month', '2025-03-07 09:53:46', '2025-03-07 09:53:46'),
(2, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 'Second Reminder', 2, 'month', '2025-03-07 09:53:46', '2025-03-07 09:53:46'),
(3, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 'Third Reminder', 1, 'month', '2025-03-07 09:53:46', '2025-03-07 09:53:46'),
(4, '` <!DOCTYPE html>\r\n  <html>\r\n  <br>\r\n  <b>Disclaimer: This mail is sent from Testing server.</b></br>\r\n  <br></br>\r\n  <%=reminder%> and date is <%=date%> \r\n<br></br>\r\nFrom,\r\n <br>\r\n <b>Promive- Annuity application</b></br>\r\n  </html>`', 'Forth Reminder', 15, 'days', '2025-03-07 09:53:46', '2025-03-07 09:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `reviewer_checklist`
--

CREATE TABLE `reviewer_checklist` (
  `id` int NOT NULL,
  `checklist_id` int NOT NULL,
  `annuity_review_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reviewer_decision`
--

CREATE TABLE `reviewer_decision` (
  `id` int NOT NULL,
  `annuity_review_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `decision` int DEFAULT NULL,
  `decision_date` datetime DEFAULT NULL,
  `comment` text,
  `is_related_to_sustainability` tinyint(1) DEFAULT '0',
  `reviewed_by` int DEFAULT NULL,
  `decision_taken_before_days` int DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `visibility`, `created_on`, `modified_on`) VALUES
(1, 'Admin', 0, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(2, 'Executive', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(3, 'Inventor', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(4, 'Patent Agent', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(5, 'Paralegal', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(6, 'Manager(Internal)', 0, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(7, 'Drafter', 0, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(8, 'Analyst', 0, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(9, 'Outside Agent', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(10, ' Reviewer', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22'),
(11, 'App_user', 1, '2025-03-07 09:55:22', '2025-03-07 09:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `memotechname` varchar(60) DEFAULT NULL,
  `show_in_timeline` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_logs`
--

CREATE TABLE `subdocket_logs` (
  `id` int NOT NULL,
  `casereference_id` int NOT NULL,
  `message` varchar(100) NOT NULL,
  `added_by` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `uuid` char(60) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_graph`
--

CREATE TABLE `user_graph` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(300) NOT NULL,
  `graph_key` varchar(300) NOT NULL,
  `description` text,
  `x_axis` varchar(100) NOT NULL,
  `y_axis` varchar(100) NOT NULL,
  `z_axis` varchar(100) DEFAULT NULL,
  `percentage_based_on` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `segmentation` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `color` varchar(50) NOT NULL,
  `ordering` int NOT NULL DEFAULT '1',
  `dategroup` varchar(100) DEFAULT NULL,
  `default_graph` tinyint(1) NOT NULL DEFAULT '0',
  `applied_filter_json` varchar(255) NOT NULL,
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
-- Indexes for table `annuity_payment_record`
--
ALTER TABLE `annuity_payment_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casereference_annuity_id` (`casereference_annuity_id`),
  ADD KEY `payment_made_by` (`payment_made_by`);

--
-- Indexes for table `annuity_review`
--
ALTER TABLE `annuity_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casereference_annuity_id` (`casereference_annuity_id`),
  ADD KEY `attorney_id` (`attorney_id`);

--
-- Indexes for table `attorney_checklist`
--
ALTER TABLE `attorney_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checklist_id` (`checklist_id`),
  ADD KEY `annuity_review_id` (`annuity_review_id`),
  ADD KEY `attorney_id` (`attorney_id`);

--
-- Indexes for table `attorney_checklist_config`
--
ALTER TABLE `attorney_checklist_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checklist_id` (`checklist_id`),
  ADD KEY `attorney_id` (`attorney_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `attorney_decision`
--
ALTER TABLE `attorney_decision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annuity_review_id` (`annuity_review_id`),
  ADD KEY `reviewed_by` (`reviewed_by`);

--
-- Indexes for table `attorney_reviewer`
--
ALTER TABLE `attorney_reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attorneyid` (`attorneyid`),
  ADD KEY `reviewerid` (`reviewerid`);

--
-- Indexes for table `bl_checklist_config`
--
ALTER TABLE `bl_checklist_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checklist_id` (`checklist_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `casereference`
--
ALTER TABLE `casereference`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casenumber` (`casenumber`),
  ADD KEY `docketid` (`docketid`),
  ADD KEY `countryid` (`countryid`),
  ADD KEY `current_attorney` (`current_attorney`),
  ADD KEY `filingtypeid` (`filingtypeid`);

--
-- Indexes for table `casereference_annuity`
--
ALTER TABLE `casereference_annuity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casereferenceid` (`casereferenceid`),
  ADD KEY `attorneyid` (`attorneyid`);

--
-- Indexes for table `case_reference_annuity_reminder`
--
ALTER TABLE `case_reference_annuity_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `casereference_id` (`casereference_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parenet_id` (`parent_id`);

--
-- Indexes for table `claim_type`
--
ALTER TABLE `claim_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `client_code` (`client_code`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `docket`
--
ALTER TABLE `docket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `filing_type`
--
ALTER TABLE `filing_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `mail_template`
--
ALTER TABLE `mail_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdby` (`createdby`);

--
-- Indexes for table `mail_template_id`
--
ALTER TABLE `mail_template_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prosecution_status`
--
ALTER TABLE `prosecution_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `reminder_mail_template`
--
ALTER TABLE `reminder_mail_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewer_checklist`
--
ALTER TABLE `reviewer_checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checklist_id` (`checklist_id`),
  ADD KEY `annuity_review_id` (`annuity_review_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `reviewer_decision`
--
ALTER TABLE `reviewer_decision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annuity_review_id` (`annuity_review_id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `reviewed_by` (`reviewed_by`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `casereference_id` (`casereference_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ssoid` (`uuid`),
  ADD UNIQUE KEY `ssoid_2` (`uuid`);

--
-- Indexes for table `user_graph`
--
ALTER TABLE `user_graph`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `annuity_payment_record`
--
ALTER TABLE `annuity_payment_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annuity_review`
--
ALTER TABLE `annuity_review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attorney_checklist`
--
ALTER TABLE `attorney_checklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attorney_checklist_config`
--
ALTER TABLE `attorney_checklist_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attorney_decision`
--
ALTER TABLE `attorney_decision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attorney_reviewer`
--
ALTER TABLE `attorney_reviewer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bl_checklist_config`
--
ALTER TABLE `bl_checklist_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casereference`
--
ALTER TABLE `casereference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casereference_annuity`
--
ALTER TABLE `casereference_annuity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_reference_annuity_reminder`
--
ALTER TABLE `case_reference_annuity_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `claim_type`
--
ALTER TABLE `claim_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `docket`
--
ALTER TABLE `docket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filing_type`
--
ALTER TABLE `filing_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reminder_mail_template`
--
ALTER TABLE `reminder_mail_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviewer_checklist`
--
ALTER TABLE `reviewer_checklist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewer_decision`
--
ALTER TABLE `reviewer_decision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_graph`
--
ALTER TABLE `user_graph`
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
-- Constraints for table `annuity_payment_record`
--
ALTER TABLE `annuity_payment_record`
  ADD CONSTRAINT `annuity_payment_record_ibfk_1` FOREIGN KEY (`casereference_annuity_id`) REFERENCES `casereference_annuity` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `annuity_payment_record_ibfk_2` FOREIGN KEY (`payment_made_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `annuity_review`
--
ALTER TABLE `annuity_review`
  ADD CONSTRAINT `annuity_review_ibfk_1` FOREIGN KEY (`casereference_annuity_id`) REFERENCES `casereference_annuity` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `annuity_review_ibfk_2` FOREIGN KEY (`attorney_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `attorney_checklist`
--
ALTER TABLE `attorney_checklist`
  ADD CONSTRAINT `attorney_checklist_ibfk_1` FOREIGN KEY (`checklist_id`) REFERENCES `checklist` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `attorney_checklist_ibfk_2` FOREIGN KEY (`annuity_review_id`) REFERENCES `annuity_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attorney_checklist_ibfk_3` FOREIGN KEY (`attorney_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `attorney_decision`
--
ALTER TABLE `attorney_decision`
  ADD CONSTRAINT `attorney_decision_ibfk_1` FOREIGN KEY (`annuity_review_id`) REFERENCES `annuity_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attorney_decision_ibfk_2` FOREIGN KEY (`reviewed_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `attorney_reviewer`
--
ALTER TABLE `attorney_reviewer`
  ADD CONSTRAINT `attorney_reviewer_ibfk_1` FOREIGN KEY (`attorneyid`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `attorney_reviewer_ibfk_2` FOREIGN KEY (`reviewerid`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `casereference`
--
ALTER TABLE `casereference`
  ADD CONSTRAINT `casereference_ibfk_1` FOREIGN KEY (`docketid`) REFERENCES `docket` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `casereference_ibfk_2` FOREIGN KEY (`countryid`) REFERENCES `country` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `casereference_ibfk_3` FOREIGN KEY (`current_attorney`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `casereference_ibfk_5` FOREIGN KEY (`filingtypeid`) REFERENCES `filing_type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `casereference_annuity`
--
ALTER TABLE `casereference_annuity`
  ADD CONSTRAINT `casereference_annuity_ibfk_1` FOREIGN KEY (`casereferenceid`) REFERENCES `casereference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casereference_annuity_ibfk_2` FOREIGN KEY (`attorneyid`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `case_reference_annuity_reminder`
--
ALTER TABLE `case_reference_annuity_reminder`
  ADD CONSTRAINT `case_reference_annuity_reminder_ibfk_1` FOREIGN KEY (`casereference_id`) REFERENCES `casereference` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `case_reference_annuity_reminder_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `reminder_mail_template` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reviewer_checklist`
--
ALTER TABLE `reviewer_checklist`
  ADD CONSTRAINT `reviewer_checklist_ibfk_1` FOREIGN KEY (`checklist_id`) REFERENCES `checklist` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_checklist_ibfk_2` FOREIGN KEY (`annuity_review_id`) REFERENCES `annuity_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_checklist_ibfk_3` FOREIGN KEY (`reviewer_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reviewer_decision`
--
ALTER TABLE `reviewer_decision`
  ADD CONSTRAINT `reviewer_decision_ibfk_1` FOREIGN KEY (`annuity_review_id`) REFERENCES `annuity_review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_decision_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_decision_ibfk_3` FOREIGN KEY (`reviewed_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  ADD CONSTRAINT `subdocket_logs_ibfk_1` FOREIGN KEY (`casereference_id`) REFERENCES `casereference` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subdocket_logs_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_tenant_client_mapping`
--
ALTER TABLE `user_tenant_client_mapping`
  ADD CONSTRAINT `user_tenant_client_mapping_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
