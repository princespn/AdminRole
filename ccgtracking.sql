-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2024 at 10:36 AM
-- Server version: 8.0.39-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccgtracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `id` bigint UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oem_support_end_date` date DEFAULT NULL,
  `estimated_renewal_cost` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eol_date` date DEFAULT NULL,
  `oem_renewal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` enum('CCG','IPG') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`id`, `model`, `serial_number`, `brand`, `description`, `purpose`, `oem_support_end_date`, `estimated_renewal_cost`, `status`, `eol_date`, `oem_renewal`, `created_at`, `updated_at`, `owner`, `support_level`) VALUES
(3, 'Cisco C8300-2N2S-4T2X', 'FDO2712M0Z4', 'Cisco', 'VOICE GATEWAY', 'IPT Router for STC Gateway', '2024-08-30', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '2024-08-20 09:17:11', 'CCG', 'NBD'),
(4, 'CISCO UCS -C220 M5 BE6000', 'WZP25250FWN', 'Cisco', 'VOICE SERVER CALL MANAGER,UCCX', 'IPT/Call center', '2023-03-11', 2000, NULL, '2028-02-25', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(5, 'CISCO UCS -C220 M5 BE6000', 'WZP25250G0T', 'Cisco', 'VOICE SERVER CALL MANAGER,UCCX', 'IPT/Call center', '2023-10-31', 2000, NULL, '2028-02-29', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(6, 'Cisco CP-7945', 'QTY#450', 'Cisco', 'IP Telephony ', 'IP Telephony ', NULL, 176517, 'Replacement through Aramco', '2023-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(7, 'Cisco CP-7965', 'QTY#30', 'Cisco', 'IP Telephony', 'IP Telephony ', NULL, 176517, 'Replacement through Aramco', '2023-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(8, 'Cisco CP-7975', 'QTY#120', 'Cisco', 'IP Telephony', 'IP Telephony ', NULL, 176517, 'Replacement through Aramco', '2023-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(9, 'Cisco CP-8851', 'QTY#95', 'Cisco', 'IP Telephony', 'IP Telephony ', NULL, NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(10, 'UC Phone 6901', 'QTY#40', 'Cisco', 'IP Telephony', 'IP Telephony ', NULL, NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(11, 'Cisco Phone-8845', 'QTY#20', 'Cisco', 'IP Telephony', 'IP Telephony ', NULL, NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(12, 'ARUBA CONTROLLER-7220', 'BB0002796', 'Aruba', 'WIRELESS CONTROLLER', 'Wi-Fi', '2024-01-12', 40000, NULL, '2029-02-28', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(13, 'ARUBA CONTROLLER-7220', 'BB0002892', 'Aruba', 'WIRELESS CONTROLLER', 'Wi-Fi', '2024-12-01', 40000, NULL, '2029-02-28', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(14, 'CP-C3010', 'MXQ2120K9W', 'Aruba', 'Network access control ', 'NAC', '2025-09-27', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(15, 'CP-C3010', 'MXQ2120KJW', 'Aruba', 'Network access control ', 'NAC', '2025-09-27', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(16, 'Access Point 315', 'QTY#34', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, NULL, '2026-12-31', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(17, 'Access Point 215', 'QTY#32', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, 'Support Renewal is not required', '2023-02-01', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(18, 'Access Point 225', 'QTY#5', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, 'Support Renewal is not required', '2023-02-01', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(19, 'Acess Point 515', 'QTY#113', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(20, 'Acess Point 535', 'QTY#18', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(21, 'Access Point 275', 'QTY#24', 'Aruba', 'Wireless Access Point', 'Provide Wireless Internet Service ', NULL, NULL, NULL, '2024-08-01', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(22, 'MX960BASE3-AC', 'JN123CC1FAFA', 'JUNIPER', 'Distribution switch 1-chassis', 'LAN Distribution', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(23, 'MX960BASE3-AC', 'JN1234887AFA', 'JUNIPER', 'Distribution switch 2-chassis', 'LAN Distribution', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(24, 'MX480BASE-AC', 'JN123175CAFB', 'JUNIPER', 'Internet Router 1-chassis', 'Internet Services for DC', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(25, 'MX480BASE-AC', 'JN123032DAFB', 'JUNIPER', 'Internet Router 2-chassis', 'Internet Services for DC', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(26, 'MPC2E NG', 'CASD9228', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(27, 'MPC2E NG', 'CASD6447', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(28, 'MPC2E NG', 'CASH8307', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(29, 'MPC2E NG', 'CASH8631', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(30, 'MPC2E NG', 'CASH8870', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(31, 'MPC2E NG', 'CASH8866', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(32, 'MPC2E NG', 'CASH8634', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(33, 'MPC2E NG', 'CASH8715', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(34, 'MPC2E NG', 'CASH8754', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(35, 'MPC2E NG', 'CASH8864', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(36, 'MPC2E NG', 'CASH8863', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(37, 'MPC2E NG', 'CASH8841', 'JUNIPER', 'Line Card', 'Modular Port Concentrator', '2023-12-31', NULL, 'Juniper Support uplift to NBD.', NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(38, 'EX8208-REDUND-AC', 'CA3814183747', 'JUNIPER', 'Core Backbone switch 1', 'Core for complete Network (Brain of network)', '2023-12-31', 1500, 'Part of Data Center Tech Refresh', '2023-12-31', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(39, 'EX8208-REDUND-AC', 'CA3814173738', 'JUNIPER', 'Core Backbone switch 2', 'Core for complete Network (Brain of network)', '2023-12-31', 1501, 'Part of Data Center Tech Refresh', '2023-12-31', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(40, 'EX8208-REDUND-AC', 'CA3814173739', 'JUNIPER', 'Server Farm Switch 1', 'Used for Server connections in DC', '2023-12-31', 1502, 'Part of Data Center Tech Refresh', '2023-12-31', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(41, 'EX8208-REDUND-AC', 'CA3814173735', 'JUNIPER', 'Server Farm Switch 2', 'Used for Server connections in DC', '2023-12-31', 1503, 'Part of Data Center Tech Refresh', '2023-12-31', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(42, 'EX3300-48T', 'GA0211426564', 'JUNIPER', 'DMZ switch ', 'DMZ switch ', '2023-12-31', 1504, 'Part of Data Center Tech Refresh', '2024-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(43, 'EX3300-48T', 'GA0215260003', 'JUNIPER', 'DMZ switch ', 'DMZ switch ', '2023-12-31', 1505, 'Part of Data Center Tech Refresh', '2024-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(44, 'EX3300-48T', 'GA0215260152', 'JUNIPER', 'switch Between internet router and front firewall', 'switch Between internet router and front firewall', '2023-12-31', 1506, 'Part of Data Center Tech Refresh', '2024-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(45, 'EX3300-48T', 'GA0215260082', 'JUNIPER', 'switch Between internet router and front firewall', 'switch Between internet router and front firewall', '2023-12-31', 1507, 'Part of Data Center Tech Refresh', '2024-06-30', 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(46, 'EX4300-48P', 'PD3716500720  ', 'JUNIPER', 'L2 Switch in Server farm', 'L2 Switch in Server farm', '2027-05-18', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(47, 'EX4300-48P', 'PD3716500413 ', 'JUNIPER', 'L2 Switch in Server farm', 'L2 Switch in Server farm', '2027-05-19', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'RTF'),
(48, 'BW Shaping-3000-1GB', '171003075', 'Netequilizer', 'BW Shaper for Vendor network', 'Internet Bandwidth Optimizing for Vendor Network', '2025-01-01', 9000, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(49, 'Pulse Secure Appliance 3000 ', '312082021100078', 'Pulsesecure', 'VPN', 'VPN + 2MF', '2024-11-11', 32000, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(50, 'Pulse Secure Appliance 3000 ', '312082021100053', 'Pulsesecure', 'VPN', 'VPN + 2MF', '2024-11-11', 0, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', 'NBD'),
(51, 'R750', 'DT7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(52, 'R750', 'CT7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(53, 'R750', '4T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(54, 'R750', '3T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(55, 'R750', '9T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(56, 'R750', '6T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(57, 'R750', 'BT7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(58, 'R750', '7T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(59, 'R750', '5T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(60, 'R750', '8T7LVP3', 'Dell', 'Dell Server', 'VSAN Ready Nodes', '2029-06-23', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(61, 'S5248F', 'JH3C9Z2', 'Dell', 'Dell Switch', 'Top of Rack Switch', '2027-03-01', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(62, 'S5248F', 'JGPD9Z2', 'Dell', 'Dell Switch', 'Top of Rack Switch', '2027-03-01', NULL, NULL, NULL, 'HW', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(63, 'Spectra Logic Tape Library T120', '1411502', 'Spectra Logic', 'Spectra Logic Tape Library T120', 'Tape Library for Backup ', '2024-11-30', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(64, 'SOLIDserver 570', '4151PW', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'MGMT+Reporting+IPAM', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(65, 'SOLIDserver 571', '5151PW3', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'MGMT+Reporting+IPAM', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(66, 'SOLIDserver 572', '9151PW3', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'Internal DNS and DHCP', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(67, 'SOLIDserver 573', 'H20X9V3', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'Internal DNS and DHCP', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(68, 'SOLIDserver 574', '5X41PW3', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'Recursive DNS', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(69, 'SOLIDserver 575', 'JW41PW3', 'EfficientIP', 'SOLIDserver 570 hardware appliance', 'Recursive DNS', '2027-07-18', NULL, NULL, NULL, 'OEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(70, 'DD6900', 'DK8STY3/CRK00232708768', 'Dell', 'Backup Appliance System the main enclosure ', 'Backup Controller System', '2026-10-01', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(71, 'DD6900', 'CNIVC0034Q0136', 'Dell', 'Chassis Serial NO that contain all of the Disk Shelves', 'Chassis Serial NO that contain all of the Disk Shelves', '2026-10-01', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(72, 'DD6900', 'B225RT3', 'Dell', 'Disk Enclosure ES40 containing 15 Disks-4TB Each', 'Storage to store the Backups', '2026-10-26', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(73, 'DD6900', 'G225RT3', 'Dell', 'Disk Enclosure ES40 containing 15 Disks-4TB Each', 'Storage to store the Backups', '2026-10-01', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL),
(74, 'DD6900', 'C225RT3', 'Dell', 'Disk Enclosure ES40 containing 15 Disks-4TB Each', 'Storage to store the Backups', '2026-10-01', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'CCG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` bigint UNSIGNED NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oem_support_end_date` date DEFAULT NULL,
  `eol_date` date DEFAULT NULL,
  `oem_renewal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_renewal_cost` decimal(10,2) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_10_124748_create_workstations_table', 1),
(6, '2024_03_10_124913_create_telephones_table', 1),
(7, '2024_03_10_125134_create_hardware_table', 1),
(8, '2024_03_10_125547_create_software_table', 1),
(9, '2024_03_10_125640_create_servers_table', 1),
(11, '2024_03_10_145028_create_permission_tables', 2),
(12, '2024_03_11_094459_edit_workstations_table', 3),
(13, '2024_03_11_095109_update_softwares_table', 3),
(14, '2024_03_12_165946_update_softwares_table_add_status', 4),
(15, '2024_03_13_182702_everythin_nullable', 5),
(16, '2024_03_14_075412_add_support_level', 6),
(17, '2024_04_01_114233_drop_workstation_and_telephone_table', 7),
(18, '2024_04_02_130200_create_licenses_table', 7),
(19, '2024_04_02_130633_create_o_e_m_s_table', 7),
(20, '2024_04_02_130724_create_subscriptions_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `o_e_m_s`
--

CREATE TABLE `o_e_m_s` (
  `id` bigint UNSIGNED NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oem_support_end_date` date DEFAULT NULL,
  `eol_date` date DEFAULT NULL,
  `oem_renewal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_renewal_cost` decimal(10,2) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(2, 'view_any_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(3, 'create_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(4, 'update_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(5, 'restore_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(6, 'restore_any_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(7, 'replicate_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(8, 'reorder_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(9, 'delete_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(10, 'delete_any_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(11, 'force_delete_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(12, 'force_delete_any_hardware', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(13, 'view_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(14, 'view_any_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(15, 'create_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(16, 'update_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(17, 'delete_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(18, 'delete_any_role', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(19, 'view_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(20, 'view_any_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(21, 'create_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(22, 'update_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(23, 'restore_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(24, 'restore_any_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(25, 'replicate_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(26, 'reorder_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(27, 'delete_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(28, 'delete_any_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(29, 'force_delete_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(30, 'force_delete_any_server', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(31, 'view_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(32, 'view_any_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(33, 'create_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(34, 'update_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(35, 'restore_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(36, 'restore_any_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(37, 'replicate_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(38, 'reorder_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(39, 'delete_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(40, 'delete_any_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(41, 'force_delete_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(42, 'force_delete_any_software', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(43, 'view_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(44, 'view_any_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(45, 'create_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(46, 'update_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(47, 'restore_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(48, 'restore_any_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(49, 'replicate_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(50, 'reorder_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(51, 'delete_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(52, 'delete_any_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(53, 'force_delete_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(54, 'force_delete_any_telephone', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(55, 'view_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(56, 'view_any_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(57, 'create_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(58, 'update_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(59, 'restore_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(60, 'restore_any_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(61, 'replicate_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(62, 'reorder_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(63, 'delete_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(64, 'delete_any_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(65, 'force_delete_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(66, 'force_delete_any_user', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(67, 'view_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(68, 'view_any_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(69, 'create_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(70, 'update_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(71, 'restore_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(72, 'restore_any_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(73, 'replicate_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(74, 'reorder_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(75, 'delete_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(76, 'delete_any_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(77, 'force_delete_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(78, 'force_delete_any_workstation', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28'),
(79, 'widget_StatsOverview', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-03-10 20:44:28', '2024-03-10 20:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` bigint UNSIGNED NOT NULL,
  `host_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `id` bigint UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oem_support_end_date` date DEFAULT NULL,
  `estimated_renewal_cost` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eol_date` date DEFAULT NULL,
  `oem_renewal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` enum('CCG','IPG') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id`, `model`, `serial_number`, `brand`, `description`, `purpose`, `oem_support_end_date`, `estimated_renewal_cost`, `status`, `eol_date`, `oem_renewal`, `created_at`, `updated_at`, `owner`, `support_level`) VALUES
(1, 'Imagicle Call recording', 'Imagicle', 'Imagicle', 'Call recording 10 licenses', 'Call center reocrding', '2024-11-24', 10000, NULL, NULL, 'OEM', '2024-03-18 06:58:51', '2024-03-18 06:59:17', 'CCG', 'SW'),
(2, 'Imagicle Call accounting', 'Imagicle', 'Imagicle', 'Call accounting 500 licenses', 'IPT call accounting', '2024-11-24', 10000, NULL, NULL, 'OEM', '2024-03-18 07:00:25', '2024-03-18 07:00:25', 'CCG', 'SW'),
(3, 'Unidashboard & Unicampaign', 'Concillium', 'Concillium', 'Call Center Dashboard & Campainingning', 'Call Center Dashboard & Workflow', '2025-05-31', 42000, NULL, NULL, 'SW', '2024-03-18 07:01:34', '2024-03-18 07:01:34', 'CCG', 'SW'),
(4, 'Whatsupgold Monitoring tool', 'Whatsupgold Monitoring tool', 'WhatsupGold', 'Whatsupgold Monitoring tool-500 Device', 'Whatsupgold Monitoring tool', '2024-03-23', NULL, NULL, NULL, 'HW', '2024-03-18 07:02:33', '2024-03-18 07:02:33', 'CCG', NULL),
(5, 'Vmware', '115948802', 'Vmware', 'Vmware Componant', 'Private Cloud Infra', '2023-09-28', 80000, 'Through Aramco', NULL, 'SW', '2024-03-18 07:03:27', '2024-03-18 07:03:27', 'CCG', NULL),
(6, 'VEEAM', NULL, 'VEEAM', 'VEEAM Backup and Replication Software', 'Purpose is to backup ITHRA Production Servers and Applications', '2024-01-27', 30000, NULL, NULL, 'SW', '2024-03-18 07:04:15', '2024-03-18 07:04:15', 'CCG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oem_support_end_date` date DEFAULT NULL,
  `eol_date` date DEFAULT NULL,
  `oem_renewal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_renewal_cost` decimal(10,2) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `blocked`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'elves.sisante@ithra.com', '2024-03-10 20:41:45', '$2y$12$oMdXvKH2kjoS8trthNFl2OMsf7h9aYbLMU4qFxeA15XhITDupfYIy', 0, 'Ik9H3ttvZ1oWxmhmgyL5BR5HtqrdQQBtbr6hrm03cIdiU9R6EEi5LZql15Vv', '2024-03-10 20:41:45', '2024-03-10 20:41:45'),
(2, 'elves', 'elvessisante@gmail.com', NULL, '$2y$12$oMdXvKH2kjoS8trthNFl2OMsf7h9aYbLMU4qFxeA15XhITDupfYIy', 0, NULL, '2024-08-20 08:56:20', '2024-08-20 08:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `o_e_m_s`
--
ALTER TABLE `o_e_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `o_e_m_s`
--
ALTER TABLE `o_e_m_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
