-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 04:11 PM
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
-- Database: `pmv_csd`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignee`
--

CREATE TABLE `assignee` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `added_by` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `uuid` char(36) NOT NULL,
  `client_name` varchar(300) NOT NULL,
  `client_code` int NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `code` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_on`, `modified_on`) VALUES
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
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `uuid` char(36) NOT NULL,
  `department` varchar(300) NOT NULL,
  `client_id` char(36) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filing_entity_type`
--

CREATE TABLE `filing_entity_type` (
  `id` int NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filing_entity_type`
--

INSERT INTO `filing_entity_type` (`id`, `name`, `created_on`, `modified_on`) VALUES
(1, 'Small', '2025-03-07 10:35:42', '2025-03-07 10:35:42'),
(2, 'Large', '2025-03-07 10:35:42', '2025-03-07 10:35:42'),
(3, 'Micro', '2025-03-07 10:35:42', '2025-03-07 10:35:42'),
(4, 'Individual', '2025-03-07 10:35:42', '2025-03-07 10:35:42'),
(5, 'Startup', '2025-03-07 10:35:42', '2025-03-07 10:35:42'),
(6, 'Others', '2025-03-07 10:35:42', '2025-03-07 10:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `foreign_filing_countries`
--

CREATE TABLE `foreign_filing_countries` (
  `id` int NOT NULL,
  `country_id` int NOT NULL,
  `subdocket_id` int NOT NULL,
  `added_by` char(36) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `partial_subdocket`
--

CREATE TABLE `partial_subdocket` (
  `id` int NOT NULL,
  `manual_subdocket_number` varchar(255) DEFAULT NULL,
  `system_generated_subdocket` tinyint NOT NULL,
  `docket_number` varchar(255) DEFAULT NULL,
  `docket_id` int DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `tenant_id` char(36) NOT NULL,
  `country_of_filing_id` int DEFAULT NULL,
  `type_of_filing_id` int DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `department_id` char(36) DEFAULT NULL,
  `type_of_filing_entity_id` int DEFAULT NULL,
  `foreign_filing_countries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `patent_office_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `publication_number` varchar(255) DEFAULT NULL,
  `filing_maintenance_cost` varchar(255) DEFAULT NULL,
  `analyst_id` char(36) DEFAULT NULL,
  `inventors_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `assignee_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `patent_agent_id` char(36) DEFAULT NULL,
  `expected_filing_year` timestamp NULL DEFAULT NULL,
  `prior_filing_date` timestamp NULL DEFAULT NULL,
  `tentative_filing_date` timestamp NULL DEFAULT NULL,
  `priority_date` timestamp NULL DEFAULT NULL,
  `filing_date` timestamp NULL DEFAULT NULL,
  `recent_action_recieved_date` timestamp NULL DEFAULT NULL,
  `term_extention` timestamp NULL DEFAULT NULL,
  `publication_date` timestamp NULL DEFAULT NULL,
  `grant_date` timestamp NULL DEFAULT NULL,
  `docket_uuid` char(36) DEFAULT NULL,
  `app_uuid` varchar(255) DEFAULT NULL,
  `deleted` tinyint NOT NULL,
  `added_by` varchar(36) NOT NULL,
  `modified_by` varchar(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(300) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_on`, `modified_on`) VALUES
(1, 'App-admin', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(2, 'Executive', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(3, 'Inventor', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(4, 'Patent Agent', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(5, 'Paralegal', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(6, 'Manager(Internal)', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(7, 'Drafter', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(8, 'Analyst', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(9, 'Outside Agent', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(10, 'Reviewer', '2025-03-07 10:38:13', '2025-03-07 10:38:13'),
(11, 'App-user', '2025-03-07 10:38:13', '2025-03-07 10:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `name` varchar(300) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `created_on`, `modified_on`) VALUES
(1, 'Abandoned', '2025-03-07 10:38:34', '2025-03-07 10:38:34'),
(2, 'Active', '2025-03-07 10:38:34', '2025-03-07 10:38:34'),
(3, 'Hold', '2025-03-07 10:38:34', '2025-03-07 10:38:34'),
(4, 'Complete', '2025-03-07 10:38:34', '2025-03-07 10:38:34'),
(5, 'Open', '2025-03-07 10:38:34', '2025-03-07 10:38:34'),
(6, 'Granted', '2025-03-07 10:38:34', '2025-03-07 10:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `subdocket`
--

CREATE TABLE `subdocket` (
  `id` int NOT NULL,
  `docket_number` varchar(255) DEFAULT NULL,
  `system_generated_subdocket_number` varchar(255) DEFAULT NULL,
  `client_id` char(36) DEFAULT NULL,
  `department_id` char(36) DEFAULT NULL,
  `manual_subdocket_number` varchar(255) DEFAULT NULL,
  `filing_entity_type_id` int DEFAULT NULL,
  `type_of_filing_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `publication_number` varchar(255) DEFAULT NULL,
  `application_number` varchar(255) DEFAULT NULL,
  `patent_office_id` int DEFAULT NULL,
  `filing_maintenance_cost_estimate` varchar(255) DEFAULT NULL,
  `country_of_filing_id` int DEFAULT NULL,
  `tentative_filing_date` timestamp NULL DEFAULT NULL,
  `prior_filing_date` timestamp NULL DEFAULT NULL,
  `priority_date` timestamp NULL DEFAULT NULL,
  `filing_date` timestamp NULL DEFAULT NULL,
  `publication_date` timestamp NULL DEFAULT NULL,
  `grant_date` timestamp NULL DEFAULT NULL,
  `expected_filing_year` timestamp NULL DEFAULT NULL,
  `recent_action_recieved_date` timestamp NULL DEFAULT NULL,
  `term_extention` timestamp NULL DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `docket_uuid` char(36) NOT NULL,
  `added_by` char(36) NOT NULL,
  `archived` tinyint NOT NULL DEFAULT '0',
  `archived_by` char(36) DEFAULT NULL,
  `appid` char(36) DEFAULT NULL,
  `temp_number` int NOT NULL,
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
  `subdocket_id` int NOT NULL,
  `assignee_id` int NOT NULL,
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
  `name` varchar(300) DEFAULT NULL,
  `code` varchar(300) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subdocket_filing_type`
--

INSERT INTO `subdocket_filing_type` (`id`, `name`, `code`, `created_on`, `modified_on`) VALUES
(1, 'Provisional', 'P', '2025-03-07 10:40:47', '2025-03-07 10:40:47'),
(2, 'Non-Provisional', 'NP', '2025-03-07 10:40:47', '2025-03-07 10:40:47'),
(3, 'PCT Application', 'PCT', '2025-03-07 10:40:47', '2025-03-07 10:40:47'),
(4, 'Divisional', 'D', '2025-03-07 10:40:47', '2025-03-07 10:40:47'),
(5, 'Continuation Patent', 'NP-CP', '2025-03-07 10:40:47', '2025-03-07 10:40:47'),
(6, 'Continuation-In-Parts / Patent of addition', 'NP-CIP', '2025-03-07 10:40:47', '2025-03-07 10:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_logs`
--

CREATE TABLE `subdocket_logs` (
  `id` int NOT NULL,
  `logs` varchar(300) NOT NULL,
  `subdocket_id` int NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `client_id` char(36) NOT NULL,
  `added_by` char(36) NOT NULL,
  `added_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subdocket_user_role_mapping`
--

CREATE TABLE `subdocket_user_role_mapping` (
  `id` int NOT NULL,
  `user_id` char(36) NOT NULL,
  `role_id` int NOT NULL,
  `subdocket_id` int NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` char(36) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `full_name` varchar(300) NOT NULL,
  `tenant_id` char(36) NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  `inactive` tinyint NOT NULL DEFAULT '0',
  `address` varchar(300) DEFAULT NULL,
  `contact` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
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
-- Indexes for table `assignee`
--
ALTER TABLE `assignee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `subdocket_id` (`subdocket_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `partial_subdocket`
--
ALTER TABLE `partial_subdocket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
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
  ADD KEY `added_by` (`added_by`),
  ADD KEY `archived_by` (`archived_by`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `country_of_filing_id` (`country_of_filing_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `patent_office_id` (`patent_office_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `filing_entity_type_id` (`filing_entity_type_id`),
  ADD KEY `type_of_filing_id` (`type_of_filing_id`);

--
-- Indexes for table `subdocket_assignee_mapping`
--
ALTER TABLE `subdocket_assignee_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `assignee_id` (`assignee_id`),
  ADD KEY `subdocket_id` (`subdocket_id`);

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
  ADD KEY `added_by` (`added_by`),
  ADD KEY `subdocket_id` (`subdocket_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `subdocket_user_role_mapping`
--
ALTER TABLE `subdocket_user_role_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `subdocket_id` (`subdocket_id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `assignee`
--
ALTER TABLE `assignee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `filing_entity_type`
--
ALTER TABLE `filing_entity_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partial_subdocket`
--
ALTER TABLE `partial_subdocket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `subdocket_filing_type`
--
ALTER TABLE `subdocket_filing_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subdocket_user_role_mapping`
--
ALTER TABLE `subdocket_user_role_mapping`
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
-- Constraints for table `assignee`
--
ALTER TABLE `assignee`
  ADD CONSTRAINT `assignee_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `assignee_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`);

--
-- Constraints for table `foreign_filing_countries`
--
ALTER TABLE `foreign_filing_countries`
  ADD CONSTRAINT `foreign_filing_countries_ibfk_3` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `foreign_filing_countries_ibfk_4` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `foreign_filing_countries_ibfk_5` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `partial_subdocket`
--
ALTER TABLE `partial_subdocket`
  ADD CONSTRAINT `partial_subdocket_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `partial_subdocket_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `user` (`uuid`);

--
-- Constraints for table `subdocket`
--
ALTER TABLE `subdocket`
  ADD CONSTRAINT `subdocket_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_ibfk_2` FOREIGN KEY (`archived_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`),
  ADD CONSTRAINT `subdocket_ibfk_4` FOREIGN KEY (`country_of_filing_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_5` FOREIGN KEY (`department_id`) REFERENCES `department` (`uuid`),
  ADD CONSTRAINT `subdocket_ibfk_6` FOREIGN KEY (`patent_office_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_7` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_8` FOREIGN KEY (`filing_entity_type_id`) REFERENCES `filing_entity_type` (`id`),
  ADD CONSTRAINT `subdocket_ibfk_9` FOREIGN KEY (`type_of_filing_id`) REFERENCES `subdocket_filing_type` (`id`);

--
-- Constraints for table `subdocket_assignee_mapping`
--
ALTER TABLE `subdocket_assignee_mapping`
  ADD CONSTRAINT `subdocket_assignee_mapping_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_assignee_mapping_ibfk_2` FOREIGN KEY (`assignee_id`) REFERENCES `assignee` (`id`),
  ADD CONSTRAINT `subdocket_assignee_mapping_ibfk_3` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`);

--
-- Constraints for table `subdocket_logs`
--
ALTER TABLE `subdocket_logs`
  ADD CONSTRAINT `subdocket_logs_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`uuid`),
  ADD CONSTRAINT `subdocket_logs_ibfk_2` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_logs_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`);

--
-- Constraints for table `subdocket_user_role_mapping`
--
ALTER TABLE `subdocket_user_role_mapping`
  ADD CONSTRAINT `subdocket_user_role_mapping_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `subdocket_user_role_mapping_ibfk_2` FOREIGN KEY (`subdocket_id`) REFERENCES `subdocket` (`id`),
  ADD CONSTRAINT `subdocket_user_role_mapping_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`uuid`);

--
-- Constraints for table `user_tenant_client_mapping`
--
ALTER TABLE `user_tenant_client_mapping`
  ADD CONSTRAINT `user_tenant_client_mapping_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`uuid`),
  ADD CONSTRAINT `user_tenant_client_mapping_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
