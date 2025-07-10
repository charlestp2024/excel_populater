-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2025 at 07:22 PM
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
-- Database: `pmv_prosecution`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int NOT NULL,
  `attachment_mandatory` tinyint DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `reminder_config` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `staged_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `attachment_mandatory`, `messages`, `order_id`, `reminder_config`, `country_id`, `staged_id`, `created_on`, `modified_on`) VALUES
(1, 1, 'Request for Publication Filed (Within 13 months of filing date)', 1, NULL, 50, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(2, 1, 'Request for Examination Filed (Within 36 months of filing date) ', 2, NULL, 50, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(3, 1, 'Request for Search & Examination Filed (Within 36 months of filing date) ', 3, NULL, 50, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(4, 1, 'Request for examination filed based on foreign search report ', 4, NULL, 50, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(5, 1, 'SG IP Fast Track ', 6, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(6, 1, '12 Months file to Grant ', 7, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(7, 1, ' Patent Prosecution Highway ', 8, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(8, 1, 'ASPEC ', 9, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(9, 1, 'Laos , Cambodia ', 10, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(10, 1, 'CS & E ', 11, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(11, 1, 'Preliminary examination report received ', 13, 1, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(12, 1, 'Publication after 18 months ', 14, NULL, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(13, 1, 'Examination', 15, 1, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(14, 1, 'Invitation to amend (if this is ticked, 2 months to reply – setup alert)', 16, 1, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(15, 1, 'Written Opinion (if this is ticked, 5 months to reply – setup alert) ', 17, 5, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(16, 1, ' Notification for grant received ', 19, 1, 50, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(17, 1, 'Request for issuance of certificate filed', 20, NULL, 50, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(18, 1, 'Final documents submitted', 21, NULL, 50, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(19, 1, 'Patent granted', 23, NULL, 50, 5, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(20, 1, 'Request for early publication', 1, NULL, 43, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(21, 1, 'Request for Examination (RFE) Filed (Within 48 months of filing date)', 3, NULL, 43, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(22, 1, 'Request for Expedited Examination(RFEE) Filed (Within 48 months of filing date)', 2, NULL, 43, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(24, 1, 'First examination report received (FER)', 5, 3, 43, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(25, 1, 'Request for extension of time (Optional)', 6, NULL, 43, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(26, 1, 'Subsequent Examination Report (SER) [ This is optional, not mandatory]', 7, 3, 43, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(27, 1, 'Request for Hearing received (Optional)', 9, NULL, 43, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(28, 1, 'Notification to controller about attending hearing', 10, 4, 43, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(29, 1, 'Notification for grant received', 12, NULL, 43, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(30, 1, 'Patent certificate received', 13, NULL, 43, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(31, 0, 'Not applicable', 5, NULL, 50, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(32, 0, 'Not applicable', 12, NULL, 50, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(33, 0, 'Not applicable', 18, NULL, 50, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(34, 0, 'Not applicable', 22, NULL, 50, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(35, 0, 'Not applicable', 24, NULL, 50, 5, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(36, 0, 'Not applicable', 4, NULL, 43, 1, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(37, 0, 'Not applicable', 8, NULL, 43, 2, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(38, 0, 'Not applicable', 11, NULL, 43, 3, '2025-03-07 09:45:26', '2025-03-07 09:45:26'),
(39, 0, 'Not applicable', 14, NULL, 43, 4, '2025-03-07 09:45:26', '2025-03-07 09:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `action_input_config`
--

CREATE TABLE `action_input_config` (
  `id` int NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` tinyint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `action_id` int DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `sub_text` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `btn_label` varchar(255) DEFAULT NULL,
  `no_data_label` varchar(255) DEFAULT NULL,
  `additional_detail` tinyint DEFAULT '0',
  `mailing_reminder` tinyint NOT NULL DEFAULT '0' COMMENT '0 - Action based , 1 - Input based ',
  `order_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `action_input_config`
--

INSERT INTO `action_input_config` (`id`, `label`, `mandatory`, `type`, `action_id`, `placeholder`, `sub_text`, `name`, `btn_label`, `no_data_label`, `additional_detail`, `mailing_reminder`, `order_id`, `created_on`, `modified_on`) VALUES
(1, 'Upload file', 1, 'file', 1, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(2, 'Comments', 1, 'text', 1, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(3, 'Upload file', 1, 'file', 2, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(4, 'Comments', 1, 'text', 2, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(5, 'Upload file', 1, 'file', 3, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(6, 'Comments', 1, 'text', 3, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(7, 'Upload file', 1, 'file', 4, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(8, 'Comments', 1, 'text', 4, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(9, 'Upload file', 1, 'file', 5, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(10, 'Comments', 1, 'text', 5, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(11, 'Upload file', 1, 'file', 6, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(12, 'Comments', 1, 'text', 6, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(13, 'Upload file', 1, 'file', 7, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(14, 'Comments', 1, 'text', 7, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(15, 'Upload file', 1, 'file', 8, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(16, 'Comments', 1, 'text', 8, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(17, 'Upload file', 1, 'file', 9, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(18, 'Comments', 1, 'text', 9, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(19, 'Upload file', 1, 'file', 10, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(20, 'Comments', 1, 'text', 10, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(21, 'Upload file', 1, 'file', 11, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(22, 'Comments', 1, 'text', 11, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(23, 'Enter Date of Receipt of Preliminary Examination Report', 1, 'date', 11, 'DD-MM-YYYY', NULL, ' Date of Receipt of Examination Report', NULL, NULL, 0, 1, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(24, 'Upload file', 1, 'file', 12, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(25, 'Comments', 1, 'text', 12, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(26, 'Enter date of publication', 1, 'date', 12, 'DD-MM-YYYY', NULL, 'Date of Publication', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(27, 'Upload file', 1, 'file', 13, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(28, 'Comments', 1, 'text', 13, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(29, 'Enter Date of Receipt of Examination Report', 1, 'date', 13, 'DD-MM-YYYY', NULL, 'Date of Receipt of Examination Report', NULL, NULL, 0, 1, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(30, 'Upload file', 1, 'file', 14, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(31, 'Comments', 1, 'text', 14, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(32, 'Upload file', 1, 'file', 15, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(33, 'Comments', 1, 'text', 15, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(34, 'Upload file', 1, 'file', 16, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(35, 'Comments', 1, 'text', 16, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(36, 'Upload file', 1, 'file', 17, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(37, 'Comments', 1, 'text', 17, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(38, 'Upload file', 1, 'file', 18, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(39, 'Comments', 1, 'text', 18, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(40, 'Upload file', 1, 'file', 19, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(41, 'Comments', 1, 'text', 19, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 4, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(42, 'Patent Number', 1, 'text', 19, 'Enter Patent Number', NULL, 'Patent Number', NULL, NULL, 1, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(43, 'Grant Date', 1, 'date', 19, 'DD-MM-YYYY', NULL, 'Grant Date', NULL, NULL, 1, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(44, 'Upload file', 1, 'file', 20, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(45, 'Comments', 1, 'text', 20, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(46, 'Upload file', 1, 'file', 21, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(47, 'Comments', 1, 'text', 21, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(48, 'Upload file', 1, 'file', 22, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(49, 'Comments', 1, 'text', 22, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(52, 'Upload file', 1, 'file', 24, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(53, 'Comments', 1, 'text', 24, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 4, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(54, 'Enter date of receipt of first examination report', 1, 'date', 24, 'DD-MM-YYYY', NULL, 'Date of receipt of first examination report', NULL, NULL, 0, 1, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(55, 'Enter date of filing response to first examination report', 1, 'date', 24, 'DD-MM-YYYY', NULL, 'Date of filing response to first examination report', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(56, 'Upload file', 1, 'file', 25, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(57, 'Comments', 1, 'text', 25, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(58, 'Enter date of filing Request for extension of time', 1, 'date', 25, 'DD-MM-YYYY', NULL, 'Date of filing Request for extension of time', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(59, 'Upload file', 1, 'file', 26, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(60, 'Comments', 1, 'text', 26, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 4, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(62, 'Enter date of filing response to subsequent examination report', 1, 'date', 26, 'DD-MM-YYYY', NULL, 'Date of filing response to subsequent examination report', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(63, 'Enter date of receipt of subsequent examination report', 1, 'date', 26, 'DD-MM-YYYY', NULL, 'Date of receipt of subsequent examination report', NULL, NULL, 0, 1, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(64, 'Upload file', 1, 'file', 27, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(65, 'Comments', 1, 'text', 27, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(66, 'Enter date of receipt of hearing notice', 1, 'date', 27, 'DD-MM-YYYY', NULL, 'Date of receipt of hearing notice', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(67, 'Upload file', 1, 'file', 28, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(68, 'Comments', 1, 'text', 28, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(69, 'Enter date of hearing', 1, 'date', 28, 'DD-MM-YYYY', NULL, 'Date of hearing', NULL, NULL, 0, 1, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(70, 'Upload file', 1, 'file', 29, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(71, 'Comments', 1, 'text', 29, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(72, 'Upload file', 1, 'file', 30, 'Choose file', NULL, 'Upload file', 'Choose', 'No files selected yet', 0, 0, 4, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(73, 'Comments', 1, 'text', 30, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 5, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(74, 'Patent Number', 1, 'text', 30, 'Enter Patent Number', NULL, 'Patent Number', NULL, NULL, 1, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(75, 'Grant date', 1, 'date', 30, 'DD-MM-YYYY', NULL, 'Grant Date', NULL, NULL, 1, 0, 2, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(76, 'Enter last date of payment of fee', 1, 'date', 30, 'DD-MM-YYYY', NULL, 'Last Date Payment', NULL, NULL, 1, 0, 3, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(77, 'Comments', 1, 'text', 31, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(78, 'Comments', 1, 'text', 32, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(79, 'Comments', 1, 'text', 33, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(80, 'Comments', 1, 'text', 34, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(81, 'Comments', 1, 'text', 35, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(82, 'Comments', 1, 'text', 36, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(83, 'Comments', 1, 'text', 37, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(84, 'Comments', 1, 'text', 38, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29'),
(85, 'Comments', 1, 'text', 39, 'Type comments here', NULL, 'Comments', NULL, NULL, 0, 0, 1, '2025-03-07 09:46:29', '2025-03-07 09:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `assignee`
--

CREATE TABLE `assignee` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_type`
--

CREATE TABLE `attachment_type` (
  `id` int NOT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attachment_type`
--

INSERT INTO `attachment_type` (`id`, `attachment_type`, `created_on`, `modified_on`) VALUES
(1, 'NDA', '2025-03-07 09:48:18', '2025-03-07 09:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` char(36) NOT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_code` int NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `client_division`
--

CREATE TABLE `client_division` (
  `id` char(36) NOT NULL,
  `division_name` varchar(300) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `is_disabled` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `is_disabled`, `created_on`, `modified_on`) VALUES
(43, 'India', 'IN', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(44, 'China', 'CN', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(45, 'New Zealand', 'NZ', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(46, 'Bangladesh', 'BD', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(47, 'Canada', 'CA', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(48, 'France', 'FR', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(49, 'United State', 'US', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(50, 'Singapore', 'SG', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(51, 'Nepal', 'NP', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(52, 'WIPO', 'WO', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(53, 'Serbia', 'RS', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(54, 'Australia', 'AU', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(55, 'Finland', 'FI', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(56, 'Indonesia', 'ID', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07'),
(57, 'Brazil', 'BR', 0, '2025-03-07 09:53:07', '2025-03-07 09:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `custom_reminder`
--

CREATE TABLE `custom_reminder` (
  `id` int NOT NULL,
  `subdocket_id` int DEFAULT NULL,
  `next_reminder_month` timestamp(6) NULL DEFAULT NULL,
  `sent` tinyint DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `sent_timestamp` timestamp(6) NULL DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `added_by` char(36) NOT NULL,
  `cc_address` varchar(500) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `added_time` datetime DEFAULT NULL,
  `updated_timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
-- Table structure for table `filing_date_reminder`
--

CREATE TABLE `filing_date_reminder` (
  `id` int NOT NULL,
  `cc_address` varchar(255) DEFAULT NULL,
  `reminder_date` timestamp(6) NULL DEFAULT NULL,
  `sent` tinyint DEFAULT '0',
  `to_address` varchar(255) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `subdocket_stage_action_id` int DEFAULT NULL,
  `need_to_send` tinyint DEFAULT '0',
  `sent_timestamp` timestamp(6) NULL DEFAULT NULL,
  `updated_timestamp` timestamp(6) NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `latest` tinyint(1) DEFAULT NULL,
  `filing_date_reminder_config_action_mapping_id` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filing_date_reminder_config`
--

CREATE TABLE `filing_date_reminder_config` (
  `id` int NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `deleted` tinyint DEFAULT '0',
  `months` decimal(10,1) DEFAULT NULL,
  `reminder_unique_name` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_date_reminder_config`
--

INSERT INTO `filing_date_reminder_config` (`id`, `country`, `deleted`, `months`, `reminder_unique_name`, `created_on`, `modified_on`) VALUES
(1, 'India', 0, 17.0, 'IN17', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(2, 'India', 0, 18.0, 'IN18', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(3, 'India', 0, 47.0, 'IN47', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(4, 'India', 0, 48.0, 'IN48', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(5, 'Singapore', 0, 12.0, 'SG12', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(6, 'Singapore', 0, 13.0, 'SG13', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(7, 'Singapore', 0, 35.0, 'SG35', '2025-03-07 10:03:05', '2025-03-07 10:03:05'),
(8, 'Singapore', 0, 36.0, 'SG36', '2025-03-07 10:03:05', '2025-03-07 10:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `filing_date_reminder_config_action_mapping`
--

CREATE TABLE `filing_date_reminder_config_action_mapping` (
  `id` int NOT NULL,
  `filing_date_reminder_config_id` int NOT NULL,
  `action_id` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_date_reminder_config_action_mapping`
--

INSERT INTO `filing_date_reminder_config_action_mapping` (`id`, `filing_date_reminder_config_id`, `action_id`, `created_on`, `modified_on`) VALUES
(1, 1, 20, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(2, 2, 20, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(3, 3, 21, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(4, 4, 21, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(5, 3, 22, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(6, 4, 22, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(7, 5, 1, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(8, 6, 1, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(9, 7, 2, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(10, 8, 2, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(11, 7, 3, '2025-03-07 10:03:39', '2025-03-07 11:52:03'),
(12, 8, 3, '2025-03-07 10:03:39', '2025-03-07 11:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `filing_entity_type`
--

CREATE TABLE `filing_entity_type` (
  `id` int NOT NULL,
  `filing_entity_type` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_entity_type`
--

INSERT INTO `filing_entity_type` (`id`, `filing_entity_type`, `created_on`, `modified_on`) VALUES
(1, 'Small', '2025-03-07 10:04:01', '2025-03-07 10:04:01'),
(2, 'Large', '2025-03-07 10:04:01', '2025-03-07 10:04:01'),
(3, 'Micro', '2025-03-07 10:04:01', '2025-03-07 10:04:01'),
(4, 'Individual', '2025-03-07 10:04:01', '2025-03-07 10:04:01'),
(5, 'Startup', '2025-03-07 10:04:01', '2025-03-07 10:04:01'),
(6, 'Others', '2025-03-07 10:04:01', '2025-03-07 10:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `mailing_queue`
--

CREATE TABLE `mailing_queue` (
  `id` int NOT NULL,
  `subdocket_id` int DEFAULT NULL,
  `old_reminder_date` timestamp(6) NULL DEFAULT NULL,
  `to_address` varchar(255) DEFAULT NULL,
  `cc_address` varchar(255) DEFAULT NULL,
  `new_reminder_date` timestamp(6) NULL DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `partial_subdocket`
--

CREATE TABLE `partial_subdocket` (
  `id` int NOT NULL,
  `assignee` varchar(255) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `country_of_filing_id` int DEFAULT NULL,
  `docket_number` varchar(255) DEFAULT NULL,
  `patent_agent_id` varchar(255) DEFAULT NULL,
  `prior_filing_date` timestamp(6) NULL DEFAULT NULL,
  `publication_date` timestamp(6) NULL DEFAULT NULL,
  `publication_number` varchar(255) DEFAULT NULL,
  `subdocket_number` varchar(255) DEFAULT NULL,
  `type_of_filing_entity_id` int DEFAULT NULL,
  `type_of_filing_id` int DEFAULT NULL,
  `analyst_id` varchar(255) DEFAULT NULL,
  `isSaved` tinyint DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `filing_date` timestamp(6) NULL DEFAULT NULL,
  `priority_date` timestamp(6) NULL DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `systemGeneratedSubdocket` tinyint NOT NULL DEFAULT '0',
  `department_id` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_config`
--

CREATE TABLE `reminder_config` (
  `id` int NOT NULL COMMENT 'After action completed',
  `first_reminder_by_months` decimal(10,1) DEFAULT NULL,
  `second_reminder_by_months` decimal(10,1) DEFAULT NULL,
  `third_reminder_by_months` decimal(10,1) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `filing_country` int DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `filing_type` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reminder_config`
--

INSERT INTO `reminder_config` (`id`, `first_reminder_by_months`, `second_reminder_by_months`, `third_reminder_by_months`, `template`, `filing_country`, `priority`, `filing_type`, `created_on`, `modified_on`) VALUES
(1, 0.0, 1.0, 1.5, 'Template testing', 50, NULL, NULL, '2025-03-07 11:53:14', '2025-03-07 11:53:14'),
(3, 5.0, 6.0, NULL, NULL, 43, NULL, NULL, '2025-03-07 11:53:14', '2025-03-07 11:53:14'),
(4, 0.5, NULL, NULL, NULL, 43, NULL, NULL, '2025-03-07 11:53:14', '2025-03-07 11:53:14'),
(5, 3.0, 4.0, 4.5, NULL, 50, NULL, NULL, '2025-03-07 11:53:14', '2025-03-07 11:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `visibility` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `visibility`, `created_on`, `modified_on`) VALUES
(1, 'App-admin', 0, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(2, 'Executive', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(3, 'Inventor', 0, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(4, 'Patent Agent', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(5, 'Paralegal', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(6, 'Manager(Internal)', 0, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(7, 'Drafter', 0, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(8, 'Analyst', 0, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(9, 'Outside Agent', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(10, 'Reviewer', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08'),
(11, 'App-user', 1, '2025-03-07 10:07:08', '2025-03-07 10:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `serial_order` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `serial_order`, `created_on`, `modified_on`) VALUES
(1, 'T0', 0, '2025-03-07 10:07:33', '2025-03-07 10:07:33'),
(2, 'T1', 1, '2025-03-07 10:07:33', '2025-03-07 10:07:33'),
(3, 'T2', 2, '2025-03-07 10:07:33', '2025-03-07 10:07:33'),
(4, 'T3', 3, '2025-03-07 10:07:33', '2025-03-07 10:07:33'),
(5, 'T4', 4, '2025-03-07 10:07:33', '2025-03-07 10:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_visible` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `is_visible`, `created_on`, `modified_on`) VALUES
(1, 'Abandoned', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01'),
(2, 'Active', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01'),
(3, 'Hold', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01'),
(4, 'Complete', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01'),
(5, 'Open', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01'),
(6, 'Granted', 1, '2025-03-07 10:08:01', '2025-03-07 10:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `subdocket`
--

CREATE TABLE `subdocket` (
  `id` int NOT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `docket_number` varchar(255) DEFAULT NULL,
  `filing_date` timestamp(6) NULL DEFAULT NULL,
  `prior_filing_year` timestamp(6) NULL DEFAULT NULL,
  `priority_date` timestamp(6) NULL DEFAULT NULL,
  `publication_date` timestamp(6) NULL DEFAULT NULL,
  `publication_number` varchar(255) DEFAULT NULL,
  `subdocket_number` varchar(255) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `country_of_filing` int DEFAULT NULL,
  `filing_entity_type_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `subdocket_filing_type_id` int DEFAULT NULL,
  `source` int DEFAULT NULL COMMENT '0 means from drafting and 1 means from prosecution ',
  `system_generated_subdocket_number` varchar(255) DEFAULT NULL,
  `department_id` char(36) DEFAULT NULL,
  `send_to_dca` tinyint NOT NULL DEFAULT '0',
  `added_by` varchar(255) NOT NULL,
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
  `file_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `added_by` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_checklist_additional_details`
--

CREATE TABLE `subdocket_checklist_additional_details` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `file` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_comments`
--

CREATE TABLE `subdocket_comments` (
  `id` int NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `added_by` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_filing_type`
--

CREATE TABLE `subdocket_filing_type` (
  `id` int NOT NULL,
  `filing_type` varchar(255) DEFAULT NULL,
  `filing_type_code` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subdocket_filing_type`
--

INSERT INTO `subdocket_filing_type` (`id`, `filing_type`, `filing_type_code`, `created_on`, `modified_on`) VALUES
(1, 'Provisional', 'P', '2025-07-09 20:45:57', '2025-07-09 20:48:09'),
(2, 'Non-Provisional', 'NP', '2025-03-07 15:42:44', '2025-07-09 20:48:06'),
(3, 'PCT Application', 'PCT', '2025-03-07 15:42:44', '2025-07-09 20:48:02'),
(4, 'Divisional', 'D', '2025-03-07 15:42:44', '2025-07-09 20:47:57'),
(5, 'Continuation Patent', 'NP-CP', '2025-03-07 15:42:44', '2025-07-09 20:47:53'),
(6, 'Continuation- In- Parts', 'NP-CIP', '2025-03-07 15:42:44', '2025-07-09 20:46:32');


-- --------------------------------------------------------

--
-- Table structure for table `subdocket_logs`
--

CREATE TABLE `subdocket_logs` (
  `id` int NOT NULL,
  `client_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `subdocket_id` int DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_reminder`
--

CREATE TABLE `subdocket_reminder` (
  `id` int NOT NULL,
  `client_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `action_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `next_reminder_month` timestamp(6) NULL DEFAULT NULL,
  `sent` tinyint DEFAULT NULL,
  `sent_timestamp` timestamp(6) NULL DEFAULT NULL,
  `updated_timestamp` timestamp(6) NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `quarter` int DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_stage_action`
--

CREATE TABLE `subdocket_stage_action` (
  `id` int NOT NULL,
  `action_id` int DEFAULT NULL,
  `stage_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `attachment_mandatory` tinyint DEFAULT NULL,
  `performed_by` char(36) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `complete` tinyint DEFAULT NULL,
  `examination_date` timestamp(6) NULL DEFAULT NULL,
  `grant_date` timestamp(6) NULL DEFAULT NULL,
  `patent_number` varchar(255) DEFAULT NULL,
  `preliminary_examination_date` timestamp(6) NULL DEFAULT NULL,
  `publication_date` timestamp(6) NULL DEFAULT NULL,
  `last_date_payment` timestamp(6) NULL DEFAULT NULL,
  `first_examination_report_date` timestamp(6) NULL DEFAULT NULL,
  `date_of_hearing` timestamp(6) NULL DEFAULT NULL,
  `filing_request_extension_time` timestamp(6) NULL DEFAULT NULL,
  `filing_response_first_examination_report_date` timestamp(6) NULL DEFAULT NULL,
  `filing_response_subsequent_examination_report` timestamp(6) NULL DEFAULT NULL,
  `receipt_of_hearing_notice` timestamp(6) NULL DEFAULT NULL,
  `receipt_subsequent_examination_report` timestamp(6) NULL DEFAULT NULL,
  `performed_on` timestamp(6) NULL DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_stage_attachment_mapping`
--

CREATE TABLE `subdocket_stage_attachment_mapping` (
  `id` int NOT NULL,
  `client_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `subdocket_stage_id` int NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_location` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_user_roles`
--

CREATE TABLE `subdocket_user_roles` (
  `id` int NOT NULL,
  `deleted` tinyint DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `subdocket_id` int DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
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
  ADD KEY `FK_ti7enoa17sh9j8x3g4dy0uexn` (`country_id`),
  ADD KEY `FK_j1sko3myfpo01eo56wxhs0uik` (`staged_id`),
  ADD KEY `reminder_config` (`reminder_config`);

--
-- Indexes for table `action_input_config`
--
ALTER TABLE `action_input_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jip2h9jldvyjq27ngql27hapq` (`action_id`);

--
-- Indexes for table `assignee`
--
ALTER TABLE `assignee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `added_by` (`added_by`);

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
-- Indexes for table `filing_date_reminder`
--
ALTER TABLE `filing_date_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdocket_stage_action_id` (`subdocket_stage_action_id`),
  ADD KEY `subdocket_id` (`subdocket_id`),
  ADD KEY `filing_date_reminder_config_action_mapping_id` (`filing_date_reminder_config_action_mapping_id`);

--
-- Indexes for table `filing_date_reminder_config`
--
ALTER TABLE `filing_date_reminder_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filing_date_reminder_config_action_mapping`
--
ALTER TABLE `filing_date_reminder_config_action_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `filing_date_reminder_config_id` (`filing_date_reminder_config_id`);

--
-- Indexes for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailing_queue`
--
ALTER TABLE `mailing_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdocket_id` (`subdocket_id`);

--
-- Indexes for table `partial_subdocket`
--
ALTER TABLE `partial_subdocket`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FK_2p99bnd9cfdg5uuey4xqflepi` (`country_of_filing`),
  ADD KEY `FK_4h3hw0xxwxrbr1nvgj61ghqwd` (`filing_entity_type_id`),
  ADD KEY `FK_2wr8d6m67f9levk3c9h4gywv5` (`status_id`),
  ADD KEY `FK_2hcptm1p2ba8y9nre0rrgubtk` (`subdocket_filing_type_id`),
  ADD KEY `department_id` (`department_id`),
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
-- Indexes for table `subdocket_checklist_additional_details`
--
ALTER TABLE `subdocket_checklist_additional_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fwiyw6vfct97nlhsrbvg2jhia` (`subdocket_id`);

--
-- Indexes for table `subdocket_comments`
--
ALTER TABLE `subdocket_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lbweuuvyqss8o2d1tixry0wmc` (`subdocket_id`),
  ADD KEY `FK_p0u9b87o77v6mnkh8q2x83xly` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_filing_type`
--
ALTER TABLE `subdocket_filing_type`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FK_gtw9n5tksmgvewq1jw3ll5e69` (`action_id`),
  ADD KEY `FK_r5bcw95rjfo1g69u1ja1rrwfv` (`subdocket_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_stage_action`
--
ALTER TABLE `subdocket_stage_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gnu9swbr6idf32kw3o8uqj7er` (`action_id`),
  ADD KEY `FK_3g7y5uguv1p9a30wgb4113262` (`performed_by`),
  ADD KEY `FK_clwmori3dhx8u4fk93jkh3omo` (`stage_id`),
  ADD KEY `FK_hlg5b6x4y74kqg3a5bho3pyei` (`subdocket_id`);

--
-- Indexes for table `subdocket_stage_attachment_mapping`
--
ALTER TABLE `subdocket_stage_attachment_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdocket_stage_id` (`subdocket_stage_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_user_roles`
--
ALTER TABLE `subdocket_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ookxc7bojh8bvx6ipjlvn4oph` (`role_id`),
  ADD KEY `FK_bwjoebw3lcgmwo8cm2j8kjf2i` (`subdocket_id`),
  ADD KEY `FK_k4grcypafa1tv0lbs04yi96a5` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uuid`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `action_input_config`
--
ALTER TABLE `action_input_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `assignee`
--
ALTER TABLE `assignee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachment_type`
--
ALTER TABLE `attachment_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `custom_reminder`
--
ALTER TABLE `custom_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filing_date_reminder`
--
ALTER TABLE `filing_date_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filing_date_reminder_config`
--
ALTER TABLE `filing_date_reminder_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `filing_date_reminder_config_action_mapping`
--
ALTER TABLE `filing_date_reminder_config_action_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mailing_queue`
--
ALTER TABLE `mailing_queue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partial_subdocket`
--
ALTER TABLE `partial_subdocket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_config`
--
ALTER TABLE `reminder_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'After action completed', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `subdocket_checklist_additional_details`
--
ALTER TABLE `subdocket_checklist_additional_details`
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `subdocket_stage_action`
--
ALTER TABLE `subdocket_stage_action`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_stage_attachment_mapping`
--
ALTER TABLE `subdocket_stage_attachment_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_user_roles`
--
ALTER TABLE `subdocket_user_roles`
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
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`reminder_config`) REFERENCES `reminder_config` (`id`),
  ADD CONSTRAINT `FK_j1sko3myfpo01eo56wxhs0uik` FOREIGN KEY (`staged_id`) REFERENCES `stages` (`id`),
  ADD CONSTRAINT `FK_ti7enoa17sh9j8x3g4dy0uexn` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `action_input_config`
--
ALTER TABLE `action_input_config`
  ADD CONSTRAINT `FK_jip2h9jldvyjq27ngql27hapq` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`);

--
-- Constraints for table `assignee`
--
ALTER TABLE `assignee`
  ADD CONSTRAINT `assignee_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `assignee_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`);

--
-- Constraints for table `client_division`
--
ALTER TABLE `client_division`
  ADD CONSTRAINT `client_division_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `custom_reminder`
--
ALTER TABLE `custom_reminder`
  ADD CONSTRAINT `custom_reminder_ibfk_1` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `custom_reminder_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `custom_reminder_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `filing_date_reminder`
--
ALTER TABLE `filing_date_reminder`
  ADD CONSTRAINT `filing_date_reminder_ibfk_1` FOREIGN KEY (`subdocket_stage_action_id`) REFERENCES `subdocket_stage_action` (`id`),
  ADD CONSTRAINT `filing_date_reminder_ibfk_3` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `filing_date_reminder_ibfk_4` FOREIGN KEY (`filing_date_reminder_config_action_mapping_id`) REFERENCES `filing_date_reminder_config_action_mapping` (`id`);

--
-- Constraints for table `filing_date_reminder_config_action_mapping`
--
ALTER TABLE `filing_date_reminder_config_action_mapping`
  ADD CONSTRAINT `filing_date_reminder_config_action_mapping_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `filing_date_reminder_config_action_mapping_ibfk_2` FOREIGN KEY (`filing_date_reminder_config_id`) REFERENCES `filing_date_reminder_config` (`id`);

--
-- Constraints for table `mailing_queue`
--
ALTER TABLE `mailing_queue`
  ADD CONSTRAINT `mailing_queue_ibfk_1` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`);

--
-- Constraints for table `reminder_config`
--
ALTER TABLE `reminder_config`
  ADD CONSTRAINT `FK_i9639wsqeyvwu0gv2sffnespx` FOREIGN KEY (`filing_type`) REFERENCES `subdocket_filing_type` (`id`),
  ADD CONSTRAINT `FK_t2a1rdyqauk8whw9hq7wb7lb3` FOREIGN KEY (`filing_country`) REFERENCES `countries` (`id`);

--
-- Constraints for table `subdocket`
--
ALTER TABLE `subdocket`
  ADD CONSTRAINT `FK_2hcptm1p2ba8y9nre0rrgubtk` FOREIGN KEY (`subdocket_filing_type_id`) REFERENCES `subdocket_filing_type` (`id`),
  ADD CONSTRAINT `FK_2p99bnd9cfdg5uuey4xqflepi` FOREIGN KEY (`country_of_filing`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `FK_2wr8d6m67f9levk3c9h4gywv5` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_4h3hw0xxwxrbr1nvgj61ghqwd` FOREIGN KEY (`filing_entity_type_id`) REFERENCES `filing_entity_type` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`uuid`),
  ADD CONSTRAINT `subdocket_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`);

--
-- Constraints for table `subdocket_assignee_mapping`
--
ALTER TABLE `subdocket_assignee_mapping`
  ADD CONSTRAINT `FK_5ty8lmnxeoo8ncie7ts2tkag4` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `FK_a2l3iv0dxd0am7356vqxwwe2l` FOREIGN KEY (`assignee_id`) REFERENCES `assignee` (`id`);

--
-- Constraints for table `subdocket_attachment_mapping`
--
ALTER TABLE `subdocket_attachment_mapping`
  ADD CONSTRAINT `FK_5a0w0bvu1kfpi6vqc7iaeljl6` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_attachment_mapping_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_attachment_mapping_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `subdocket_checklist_additional_details`
--
ALTER TABLE `subdocket_checklist_additional_details`
  ADD CONSTRAINT `FK_fwiyw6vfct97nlhsrbvg2jhia` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`);

--
-- Constraints for table `subdocket_comments`
--
ALTER TABLE `subdocket_comments`
  ADD CONSTRAINT `subdocket_comments_ibfk_1` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_comments_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_comments_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  ADD CONSTRAINT `FK_d8emc9tw42h70i9xdiasxi5sv` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_logs_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_logs_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `subdocket_reminder`
--
ALTER TABLE `subdocket_reminder`
  ADD CONSTRAINT `FK_gtw9n5tksmgvewq1jw3ll5e69` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `FK_r5bcw95rjfo1g69u1ja1rrwfv` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_reminder_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `subdocket_stage_attachment_mapping`
--
ALTER TABLE `subdocket_stage_attachment_mapping`
  ADD CONSTRAINT `subdocket_stage_attachment_mapping_ibfk_1` FOREIGN KEY (`subdocket_stage_id`) REFERENCES `subdocket_stage_action` (`id`),
  ADD CONSTRAINT `subdocket_stage_attachment_mapping_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
