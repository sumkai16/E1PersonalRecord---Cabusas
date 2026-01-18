-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2026 at 05:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e1_personal_record_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `civil_statuses`
--

CREATE TABLE `civil_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `requires_other` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `civil_statuses`
--

INSERT INTO `civil_statuses` (`id`, `code`, `name`, `requires_other`) VALUES
(1, 'single', 'Single', 0),
(2, 'married', 'Married', 0),
(3, 'widowed', 'Widowed', 0),
(4, 'legally_separated', 'Legally Separated', 0),
(5, 'others', 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `middle_name` varchar(80) NOT NULL,
  `date_of_birth` date NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `civil_status_id` int(10) UNSIGNED NOT NULL,
  `civil_status_other` varchar(120) DEFAULT NULL,
  `nationality` varchar(80) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `email` varchar(120) NOT NULL,
  `religion` varchar(80) DEFAULT NULL,
  `telephone_number` varchar(30) DEFAULT NULL,
  `father_last_name` varchar(80) DEFAULT NULL,
  `father_first_name` varchar(80) DEFAULT NULL,
  `father_middle_name` varchar(80) DEFAULT NULL,
  `mother_last_name` varchar(80) DEFAULT NULL,
  `mother_first_name` varchar(80) DEFAULT NULL,
  `mother_middle_name` varchar(80) DEFAULT NULL,
  `same_as_home_address` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `last_name`, `first_name`, `middle_name`, `date_of_birth`, `sex`, `civil_status_id`, `civil_status_other`, `nationality`, `place_of_birth`, `mobile_number`, `email`, `religion`, `telephone_number`, `father_last_name`, `father_first_name`, `father_middle_name`, `mother_last_name`, `mother_first_name`, `mother_middle_name`, `same_as_home_address`, `created_at`, `updated_at`) VALUES
(1, 'CABUSAS', 'AXCEE', 'FILISILDA', '2004-09-06', 'male', 1, NULL, 'FILIPINO', 'TUNGHAAN, MINGLANILLA, CEBU', '9914082061', 'axceelfelis03@gmail.com', 'CATHOLIC', '9876543', 'CABUSAS', 'ESTEBAN', 'CABRERA', 'FELISILDA', 'MITCHIE', 'LAZAGA', 1, '2026-01-16 03:39:46', '2026-01-16 03:39:46'),
(2, 'CABUSAS', 'AXCEE', 'FILISILDA', '2004-09-06', 'male', 1, NULL, 'FILIPINO', 'TUNGHAAN, MINGLANILLA, CEBU', '9914082061', 'axceelfelis03@gmail.com', 'CATHOLIC', '9876543', 'CABUSAS', 'ESTEBAN', 'CABRERA', 'FELISILDA', 'MITCHIE', 'LAZAGA', 1, '2026-01-16 03:52:02', '2026-01-16 03:52:02'),
(3, 'CABUSAS', 'AXCEE', 'FILISILDA', '2004-09-06', 'male', 2, NULL, 'FILIPINO', 'TUNGHAAN', '9914082061', 'axceelfelis03@gmail.com', 'CATHOLIC', '9876543', 'CABUSAS', 'ESTEBAN', 'CABRERA', 'FELISILDA', 'MITCHIE', 'LAZAGA', 1, '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 'CABUSAS', 'AXCEE', 'FILISILDA', '2004-09-06', 'male', 2, NULL, 'FILIPINO', 'TUNGHAAN', '9914082061', 'axceelfelis03@gmail.com', 'CATHOLIC', '9876543', 'CABUSAS', 'ESTEBAN', 'CABRERA', 'FELISILDA', 'MITCHIE', 'LAZAGA', 1, '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_certifications`
--

CREATE TABLE `person_certifications` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `printed_name` varchar(150) DEFAULT NULL,
  `signature_text` varchar(150) DEFAULT NULL,
  `signature_file_path` varchar(255) DEFAULT NULL,
  `cert_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_certifications`
--

INSERT INTO `person_certifications` (`person_id`, `printed_name`, `signature_text`, `signature_file_path`, `cert_date`, `created_at`, `updated_at`) VALUES
(3, 'qweqwqweqw', '12312', NULL, '2025-12-12', '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 'qweqwqweqw', '12312', NULL, '2025-12-12', '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_dependents`
--

CREATE TABLE `person_dependents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `dependent_type` enum('spouse','child','other') NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `middle_name` varchar(80) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `relationship` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_dependents`
--

INSERT INTO `person_dependents` (`id`, `person_id`, `dependent_type`, `last_name`, `first_name`, `middle_name`, `suffix`, `date_of_birth`, `relationship`, `created_at`, `updated_at`) VALUES
(1, 1, 'spouse', 'CABUSAS', 'KC', 'REPOLLO', NULL, '2004-11-27', NULL, '2026-01-16 03:39:46', '2026-01-16 03:39:46'),
(2, 2, 'spouse', 'CABUSAS', 'KC', 'REPOLLO', NULL, '2004-11-27', NULL, '2026-01-16 03:52:02', '2026-01-16 03:52:02'),
(3, 3, 'spouse', 'CABUSAS', 'KC', 'REPOLLO', NULL, '2004-11-27', NULL, '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 4, 'spouse', 'CABUSAS', 'KC', 'REPOLLO', NULL, '2004-11-27', NULL, '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_home_addresses`
--

CREATE TABLE `person_home_addresses` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `address_line` varchar(200) NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_home_addresses`
--

INSERT INTO `person_home_addresses` (`person_id`, `address_line`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'TUNGHAAN, MINGLANILLA, CEBU', '6046', '2026-01-16 03:39:46', '2026-01-16 03:39:46'),
(2, 'TUNGHAAN, MINGLANILLA, CEBU', '6046', '2026-01-16 03:52:02', '2026-01-16 03:52:02'),
(3, 'TUNGHAAN', '6046', '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 'TUNGHAAN', '6046', '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_nws`
--

CREATE TABLE `person_nws` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `working_spouse_ss_no` varchar(30) DEFAULT NULL,
  `working_spouse_monthly_income` varchar(30) DEFAULT NULL,
  `working_spouse_signature_file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_nws`
--

INSERT INTO `person_nws` (`person_id`, `working_spouse_ss_no`, `working_spouse_monthly_income`, `working_spouse_signature_file_path`, `created_at`, `updated_at`) VALUES
(3, '123123123', '123123123', NULL, '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, '123123123', '123123123', NULL, '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_ofw`
--

CREATE TABLE `person_ofw` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `foreign_address` varchar(200) DEFAULT NULL,
  `monthly_earnings` varchar(30) DEFAULT NULL,
  `flexi_fund` enum('yes','no') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_ofw`
--

INSERT INTO `person_ofw` (`person_id`, `foreign_address`, `monthly_earnings`, `flexi_fund`, `created_at`, `updated_at`) VALUES
(3, 'qweqweqwe', '222222', 'yes', '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 'qweqweqwe', '222222', 'yes', '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_self_employment`
--

CREATE TABLE `person_self_employment` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `profession_business` varchar(150) DEFAULT NULL,
  `year_started` varchar(10) DEFAULT NULL,
  `monthly_earnings` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_self_employment`
--

INSERT INTO `person_self_employment` (`person_id`, `profession_business`, `year_started`, `monthly_earnings`, `created_at`, `updated_at`) VALUES
(3, 'qweqwe', '2004', '121221', '2026-01-16 08:34:01', '2026-01-16 08:34:01'),
(4, 'qweqwe', '2004', '121221', '2026-01-16 09:04:22', '2026-01-16 09:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `person_sss_processing`
--

CREATE TABLE `person_sss_processing` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `business_code` varchar(50) DEFAULT NULL,
  `working_spouse_msc` varchar(50) DEFAULT NULL,
  `monthly_contribution` varchar(50) DEFAULT NULL,
  `approved_msc` varchar(50) DEFAULT NULL,
  `start_of_payment` varchar(50) DEFAULT NULL,
  `flexi_status` enum('approved','disapproved') DEFAULT NULL,
  `received_by_signature_path` varchar(255) DEFAULT NULL,
  `received_by_datetime` datetime DEFAULT NULL,
  `processed_by_signature_path` varchar(255) DEFAULT NULL,
  `processed_by_datetime` datetime DEFAULT NULL,
  `reviewed_by_signature_path` varchar(255) DEFAULT NULL,
  `reviewed_by_datetime` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `civil_statuses`
--
ALTER TABLE `civil_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_civil_status_code` (`code`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_civil_status_id` (`civil_status_id`);

--
-- Indexes for table `person_certifications`
--
ALTER TABLE `person_certifications`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_dependents`
--
ALTER TABLE `person_dependents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_person_dependents_person_id` (`person_id`);

--
-- Indexes for table `person_home_addresses`
--
ALTER TABLE `person_home_addresses`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_nws`
--
ALTER TABLE `person_nws`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_ofw`
--
ALTER TABLE `person_ofw`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_self_employment`
--
ALTER TABLE `person_self_employment`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `person_sss_processing`
--
ALTER TABLE `person_sss_processing`
  ADD PRIMARY KEY (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `civil_statuses`
--
ALTER TABLE `civil_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person_dependents`
--
ALTER TABLE `person_dependents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `fk_persons_civil_status` FOREIGN KEY (`civil_status_id`) REFERENCES `civil_statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `person_certifications`
--
ALTER TABLE `person_certifications`
  ADD CONSTRAINT `fk_cert_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_dependents`
--
ALTER TABLE `person_dependents`
  ADD CONSTRAINT `fk_dependents_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_home_addresses`
--
ALTER TABLE `person_home_addresses`
  ADD CONSTRAINT `fk_home_address_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_nws`
--
ALTER TABLE `person_nws`
  ADD CONSTRAINT `fk_nws_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_ofw`
--
ALTER TABLE `person_ofw`
  ADD CONSTRAINT `fk_ofw_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_self_employment`
--
ALTER TABLE `person_self_employment`
  ADD CONSTRAINT `fk_se_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_sss_processing`
--
ALTER TABLE `person_sss_processing`
  ADD CONSTRAINT `fk_sss_processing_person` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
