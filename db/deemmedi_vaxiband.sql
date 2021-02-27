-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2021 at 02:46 PM
-- Server version: 5.7.33
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deemmedi_vaxiband`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `QC_approve` int(11) NOT NULL DEFAULT '0',
  `qc_image` int(11) NOT NULL DEFAULT '0',
  `qc_image_date` date DEFAULT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `admin_approve_date` date DEFAULT NULL,
  `in_manu` int(11) NOT NULL DEFAULT '0',
  `in_manu_date` date DEFAULT NULL,
  `admin_reject` int(11) NOT NULL DEFAULT '0',
  `reset_order` int(11) NOT NULL DEFAULT '0',
  `band_image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` int(11) NOT NULL DEFAULT '0',
  `order_completed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderNumber` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_ln` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkno` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippinginformation` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finalVaccinationDate` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaccine` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lotno` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_pin` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_pin` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `QC_approve`, `qc_image`, `qc_image_date`, `admin_status`, `admin_approve_date`, `in_manu`, `in_manu_date`, `admin_reject`, `reset_order`, `band_image`, `completed`, `order_completed_date`, `orderNumber`, `order_date`, `product`, `firstname`, `lastname`, `email`, `on_ln`, `linkno`, `shippinginformation`, `finalVaccinationDate`, `vaccine`, `image`, `lotno`, `first_pin`, `current_pin`, `country`, `city`, `created_at`, `updated_at`) VALUES
(123, 0, 1, '2021-02-23', 1, NULL, 1, '2021-02-23', 0, 1, 'L748223490.jpg', 1, '2021-02-23', 'eyJpdiI6ImxkMDdMcVV6TXkxcjBoUlNrQnkreWc9PSIsInZhbHVlIjoibXZ2RUptdU9OVDZCdzZPbmZjTDhLUT09IiwibWFjIjoiODE3YzljM2QxNzY0YjMzYjM2MjgyM2Y1NjQxNDdjYTgxYjljZDhiOWQwOTU2MDM3ZTI4OWJkODc3MmM1ZGFkMCJ9', 'eyJpdiI6IjZSR2NMSkd0S2F2eGtxUlJYUytIUFE9PSIsInZhbHVlIjoiTE0vdEcwdktrNjFWcE5LYXBwUTZsSVhtUk9SbEhOVk5sYTc2UTduR3lWWT0iLCJtYWMiOiIyNzFkNTI3NTUyZjAwZmUwZDRhNzI0NjlkZTI1OGExYWI5NGIwMTdjYTU1ODU5ZmFhMzM2MmNhM2Q2NjM2M2EzIn0=', 'eyJpdiI6Imluczg1V2F6dmNXMC80NGNnZDdWcmc9PSIsInZhbHVlIjoiRzlRcmlvdUVzWndJSitKUXVlb2lubVRUS0ZqUG1oS3lJTXRkd0pZaDlzYz0iLCJtYWMiOiJmYmVjNWY2ZGZhNmU4ZmIxYjRlMzA1M2U0OWZhNGMxOTVmNWU4MmY3OTU4MGQyZTI0YTFiMTA4ZDA2OWMzYjVhIn0=', 'eyJpdiI6IlI1aHNmY0k5UmNud2d1aFNLSjM5c3c9PSIsInZhbHVlIjoiV3ZtNHJWczFjOFVhbnZoMzM1Q1BGZz09IiwibWFjIjoiY2RlYWU3ZjM0NTViOGYzZGE0NzgxOWIzNTE4NTZlNTYwYjIwMGM5OTA0OTkxMzRkMjFmMjY5NmY2YmFhMjJjOSJ9', 'eyJpdiI6Im9qTUhIUzB5SCt0ODNNMWNqc0hmWUE9PSIsInZhbHVlIjoia21LWDcwZHpucXJJU3BqZTJCeUNBQT09IiwibWFjIjoiYzM3ODZmNDFiZWEyM2Y1NjIxZWM4YmE4ZjFkNDFlY2I5YzNlMzcwNzQyN2QxZmY2OWIyM2JhZGIwY2ZmN2Y0OSJ9', 'eyJpdiI6IkRhblJNWFUreUNXbDlWdFRqbkxQUnc9PSIsInZhbHVlIjoiUVJ1eFMzV1RSMlNRcVZIcU9PL2RRQXpHM094eVkvRFlxR3pNTkdxZ1l0NENSSkJNclZZZnMvd3FRbXhOYmdIUiIsIm1hYyI6IjI2YzRjM2Q4M2Y1YzZjZGY3YTBjZWI1YmY3OGRlY2FlNjI1N2VkZjM0NTUzZjczYzc5YzE5M2ZmMWY5YjA2M2UifQ==', 'eyJpdiI6ImIrMWcyV3dVekFoOGt1N2pLa3Y1QUE9PSIsInZhbHVlIjoiWFYyQitkSmNPNDhyYjI0dEpzQ3V5MGV5dWFXRUpzWTd4ai9lL2JvalpIcz0iLCJtYWMiOiI5ZmM5Y2IzYzc3NWUwMDUzNzE3YzI3YjYyNDFkMWI3MTY1ZWQ1MzM5ZWQxYzU1NzFiOTE1NmRkOWYxYjViODAxIn0=', 'L748223490', 'eyJpdiI6ImFaMGh6RUhTMUN6S3pFTjRycmVFTWc9PSIsInZhbHVlIjoiWXUvd21IV2t5c09JRm9HVkJTaGY0LzBDQ1IyZ2NzY280S1piK3NNdmFMRT0iLCJtYWMiOiJkZDIxNzI3MTlmYzcwNjA4ZDQxZTZiYzc4NjFkY2FiZjQ3M2M1OGI3ZDVkM2Y4ZGFmYjk0MTBhYjkyNThiZGFlIn0=', 'eyJpdiI6IjlJT0c2UlpTenRBWmxEY3ZkZFRmRGc9PSIsInZhbHVlIjoiSHc2VEFweWVVVHdKMHB5Nk9Za0NNS0l6N2tFdHozRTdpejdTclhFVmpDWT0iLCJtYWMiOiI2YTgyYjVkNjY0NmFjMGYwZGRkMzM3MzNkYzVlODI2MTk2NWRjMzhmOGNiYTM2YjcyZjY2MWU2MGM0OWU2MGMxIn0=', 'eyJpdiI6ImVoYkVMWXQ0M08zcGxGeDd1Kyt1S3c9PSIsInZhbHVlIjoid202WCswaThsSGFmd1FjSERaajM4SFU2TTZ0K1MrWm5BMFJuY29QMm9Kaz0iLCJtYWMiOiIyMzJlZDA5ZjVhYjM1MDBjZmM1NmI4ZjU3ZjY0ODVmYzc5ZWM0NTcxZDdkZjBhYTQ0ZDY5MWFkNWViMjljNTlkIn0=', 'eyJpdiI6IlFOYlpCMU5hdWF6YzRwSDFMRi8xL0E9PSIsInZhbHVlIjoiYkRhV0daVzZDdE5ScVlXOE9IZXFCaHdFVGk3cy8xdkJ0MWhWeGJkQWZjOD0iLCJtYWMiOiIwMWRmYjMyOTAwMTVkYTRjZGMyMmRiYjU3NmIzYTIxMTgzYzNhYWRhNjUxN2U1MzFiODZmZDNhNTY3YTVjNWIzIn0=', 'eyJpdiI6InR1RDhlUzBTRWhBa3dMU0tYaWxQUUE9PSIsInZhbHVlIjoibVJiZmJyR3BXSEJYbWx4ZG01bHdoZz09IiwibWFjIjoiMDgxNDQ1OWQwMzcxZjQ1NDZmZTNmN2NiN2QxMTdiMTk3ODQ4ZTI0NTZjZGI1MzY3NWEyZWRiMzk0NzE3Mzc2OSJ9', 'eyJpdiI6IktRMER6cHQ1Vk9TbXRlNFU2RzlmRFE9PSIsInZhbHVlIjoiOEtERFJxNVpJQThYRkV5YzBSTFVIQT09IiwibWFjIjoiZDJmMzkxMWIzZjk5ZDY4OTFjZWFhNWUwYmJkNzY3MDRlNmZjODM2M2U3ZjM1ZGRkMmE0ZThiY2IyZmY5NWIyMyJ9', 'eyJpdiI6IkRweFlDZWoweXQ5YW5FdU5hRHdhc2c9PSIsInZhbHVlIjoiWjhWV0xuUzBrNzVlRGU4ejI1dW9WQT09IiwibWFjIjoiMjkyODhjMjI0ZjRmYzEwYmNhYzEyNzM4NzBjODM2YzRlZWY0MTA1MTNmODdjOTQyYTU2NTdiYzk0M2VjZTliNSJ9', 'eyJpdiI6ImIvUzhsVTBVcVVkRWhXdzQ5c0M3VHc9PSIsInZhbHVlIjoiYXdVWVpsQy9pdFdDRStzc3NZL1ZTVmZuNS9RazU2enFxMElMUFdjaFZYMD0iLCJtYWMiOiJjY2UxMjFjZGZhMGM2Y2I2YWEzNDM1MTA3NjI2MTI0NWE2NTA1MTM2NDQ2MjA4Yzk3ZWM5MWRiYzYwZDA0ZDA4In0=', 'eyJpdiI6IjQvQ0hmeXJGVzdXQ0x3MnBtY0U5emc9PSIsInZhbHVlIjoiMDdod2ZaQzEwRFpEZXdxa1J1OHJCdE9RcVc4dUs0a2FVdGVibEgyeW5GZz0iLCJtYWMiOiI1NWQyOTc5MjE5MGI0NmMwODQ0OWE4ZmU0YWIyM2ZkM2U3NzQ0NDgwMzNhMTllMjc4MGRiMDgwMWY1NjdhOGQ5In0=', '2021-02-19 02:31:50', '2021-02-23 02:41:48'),
(132, 0, 1, '2021-02-23', 1, NULL, 1, '2021-02-23', 0, 0, 'L491425818.jpg', 1, '2021-02-23', 'eyJpdiI6InFoa1ZyaS95d1dFeThLcHh6YVlocmc9PSIsInZhbHVlIjoianVkVnlveTd0SWpBcWNsc0d3bTZCdz09IiwibWFjIjoiYWY0NzNiNjM2ZGU5NjMzOWU2OGIxNjQ0ZjJhOTA0YTdiZTU0MDFkMmRlZGMxNjRlMzM4OThkMmQ4YTFmMzk2MCJ9', 'eyJpdiI6ImN1Tks1bjVZU1pmOFhOeW5ka1IyVHc9PSIsInZhbHVlIjoiK3RyK3RKSUR6TUtzNGlqVURLMzVLem1LaU9yT29OanZ3MG8rcVRGaEVCaz0iLCJtYWMiOiI5ZWE2ZDc1NjE2ODdiZjUzMGUwOWZiNzY4NDViNWQ3Y2YyZDkyMGM5Y2UyZDFiNzAzZjc5YzliNDJkN2U3NjdlIn0=', 'eyJpdiI6InJ0Q0crNVVlbk5NNkV2S3dnak8rd2c9PSIsInZhbHVlIjoieFlOa25QYTNBNGZ6STVBczVJK2Q3RHk0NXBLMDlBNTlIUzJSVS9XbXgvND0iLCJtYWMiOiJmYmNkOTg0ZDQ1NTAyMTg5MTA4M2IxMWFiY2Y3MTFhNGIzMTllMDIzMTkxNDExMGQ4NWU2ZjA1MzIxYzkwMTU3In0=', 'eyJpdiI6ImZsYXpwNVA2ZVNoRDI4MnRlTWdyanc9PSIsInZhbHVlIjoiSzU1K2ZVcW03UllEY1ZuZ0hVT2hDdz09IiwibWFjIjoiNTQ2MjJlNGM4Yzk0ZjIwYTVlZTU5MTUxYWJjYWVjNzI2MWQ0MGU3MDM2ZmYyMGVhOWU3MjY3YTVlYTg4MzMwOCJ9', 'eyJpdiI6IkVkQjNpTEV2ZUFIU0NEWndyc0hqaWc9PSIsInZhbHVlIjoiWW1PRElROG9lQ2FldVN0ZHA3UkpLZz09IiwibWFjIjoiNjk0NjFjOGRhMDkwZDYwYmE4YTcwYzk1MzQ1ZGI1YzdkZmZjNmFmMTczZmFlZWM1YzBhZjEwMDllN2ExM2UwNCJ9', 'eyJpdiI6IkorbGx5QkdmMFlHaWMwdjYwb28wQlE9PSIsInZhbHVlIjoidGRJZjUyYmtYaGNLMWRMbnF0TWlJMFo5SlJGeUwvc2k0TVVUNU5sUHB4ckZ0TDF2OFJSTXZCQjZzajREWTJBbyIsIm1hYyI6ImZhYjhjZWQ4NTk2Y2U2OWM2NDQwMjRkMmMxOTcwNzVkMmIyZTUzOTQ3N2M4MTU3ODJjOTJmMDNiMGM2NmNlZWEifQ==', 'eyJpdiI6Ijl5VzIzUUphdTdsVzdWWEp2Q1NFaFE9PSIsInZhbHVlIjoidlZkciszY09tVTdEcXk3a2RhaTY0RmhmOHdKZnVkOVRXMjJEcGpKS2xuZz0iLCJtYWMiOiI1NzlkN2EzMjY4ZmUxODk3NDM2MTMxZjNmZjFjNjA1N2M1Y2QxZjdlYjZiYTBhMzZkYTRlYWMwNzAwNDNhZmE2In0=', 'L491425818', 'eyJpdiI6Ill3Lzk0ak9KcjQzOHZ3bUVoNUNBK2c9PSIsInZhbHVlIjoiMmJmRU1LWmxHenAzUXpLSDlYbVZlLzNhUUFQMjR1QmQ3Uk5IN01aVjRuND0iLCJtYWMiOiI1MjdhMmE3MDc2OWEzYTM1NDUzOGJkNjg5MGY0YWM1N2RiNzFiOThiODU5ZGZmNGZlOWJkZGE2Yjg0NzMyOGFiIn0=', 'eyJpdiI6ImJRTXByZHlUUzVlUUNjZHVQRXV3NWc9PSIsInZhbHVlIjoiaWMzN0FvS1Z3eW5oU2huUytyRnhBYVBYU3VxYVE3T1N2aTNkU3I4bFZxQT0iLCJtYWMiOiIwMzMxNTZkMjRkMDIzNTAyN2RjMzk2NmFiMmZhNzYwN2E3NDllMzE1OGE5OTlmNzIwYjJmY2ZlYjY4ZTUyNzA0In0=', 'eyJpdiI6InFDVHhkWkZFejl6VWR0dnRwVFFtR1E9PSIsInZhbHVlIjoiSklOUjg0anEwWWYzMjB5WmEwOFZLU1dRTU5GcmoycDBjc04yR1R6VHllcz0iLCJtYWMiOiI1OTE3OTRiODE5OTAzZGIxZTY1OTlkY2MyMTRjYTRlYWY3NmZmMmVhNjk5YzAwNGI5MjQxOTU5MTlmZGRkNDBmIn0=', 'eyJpdiI6Ilh2NDJXR2NwdVFrNDVGckd1MlhtS1E9PSIsInZhbHVlIjoiYndJMTczMjc5WTN3WkhEaUxHS1F5RU10YTNxNE1mdG1yZFVMUlRyZzdZcz0iLCJtYWMiOiJmYWVhMWI4ODMzNWEzNjEwZDk1OTU5MTgxN2QyMjAzOTg0ZmYyN2NjNTdmMTM5MjAyNTAwYjZiM2RkZWUxNmUzIn0=', 'eyJpdiI6ImVLWmRJVzNRbXpEZlRYdDlpdElYaUE9PSIsInZhbHVlIjoiMnlBNFpyVXhqRVNPR0hGdjR3WkhzUT09IiwibWFjIjoiMzk4OWYwZmQ4MTMyY2VhNThmNmFkNWFiMmZlZmIzZmU5NzE2ZjE0ZWU0MTIyOWJiYWI1NGY0NTczM2Y0NjA3MSJ9', 'eyJpdiI6IjBaUHRvSFVtenp3YmhCa2NoaDRWNUE9PSIsInZhbHVlIjoiaFNzNWRHcHdQOUdkSTdYem15UFFjQT09IiwibWFjIjoiYTNjMzg2ZWM0ZTI2ZWUwZGVhMTBjODQ2YzZiMDBlNzc0OWQ2ZGVjZThhOTIzZTgxNjM2YTQwMjQ0MDA0MDA5OCJ9', 'eyJpdiI6IlBhVGtwV3hjRFY0bVRvM0tRdzA3K0E9PSIsInZhbHVlIjoiSWhIR2xwT1dQanN2aVRIaDNadERqZz09IiwibWFjIjoiNDA4ZmE2OGQ5ZDMwODIxZDhjZTRjMzgzMGU1NGQ2NzA3Zjc0ODRmMzBhY2FiM2I1ZjFiZDEyMjJlNjU2NjA0YiJ9', 'eyJpdiI6IkpqSVQ2OXE5RHBKVnRaQVAxaVJoVXc9PSIsInZhbHVlIjoic015bFREMjMzd05qYWNMQ3EvdXFXbVFSMm5BZmZlbDZzc1hVTHZiaCtHOD0iLCJtYWMiOiI1MjQ0NDMyZTczNGI4MzFhNGZhNGM2ZDY0ZmQ3MzBjNWZmODE1N2UzMTc3ZTliYTNjNDhlNWRiZmI5YWVjZjE1In0=', 'eyJpdiI6Ikg5ZWJoR3B6WjAvZjJvZmF1dE1lN0E9PSIsInZhbHVlIjoiUHhoR3ZROVJtYnhZWUJkTHM2R3BVUT09IiwibWFjIjoiNzE4MDUwODM5OTU4ZWZlYzEyNGI3ZTE5OGFmYWMzNjRjODgwYjU2MDllNTIzN2E3ODEyODA2NGMyNWI3NGUxNCJ9', '2021-02-22 23:41:12', '2021-02-23 02:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers_rh`
--

CREATE TABLE `customers_rh` (
  `id` bigint(20) NOT NULL,
  `QC_approve` int(11) NOT NULL DEFAULT '0',
  `qc_image` int(11) NOT NULL DEFAULT '0',
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `in_manu` int(11) NOT NULL DEFAULT '0',
  `reset_order` int(11) NOT NULL DEFAULT '0',
  `admin_reject` int(11) NOT NULL DEFAULT '0',
  `band_image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_ln` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` int(11) NOT NULL DEFAULT '0',
  `orderNumber` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippinginformation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalVaccinationDate` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaccine` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkno` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lotno` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_pin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_pin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_01_27_074846_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_link`
--

CREATE TABLE `orders_link` (
  `id` int(11) NOT NULL,
  `orderdate` varchar(255) DEFAULT NULL,
  `orderno` varchar(225) DEFAULT NULL,
  `link` varchar(500) NOT NULL,
  `linkno` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `reset_order` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_link`
--

INSERT INTO `orders_link` (`id`, `orderdate`, `orderno`, `link`, `linkno`, `status`, `reset_order`, `created_at`, `updated_at`) VALUES
(300, 'February 19, 2021', '1020', 'aliinfotech.com/vaxiband/show/Premium QRBracelet-Jimy-United States-denly-raheelsiddiqui05@gmail.com-1020-L480888490-February 19, 2021', 'L480888490', 0, 0, '2021-02-22 04:59:41', '2021-02-22 04:59:41'),
(301, 'February 22, 2021', '1022', 'aliinfotech.com/vaxiband/show/Name Bracelet-Ben-United States-Thomas-benthomas.lehigh@gmail.com-1022-L735155743-February 22, 2021', 'L735155743', 0, 0, '2021-02-22 15:35:30', '2021-02-22 15:35:30'),
(302, 'February 19, 2021', '1020', 'aliinfotech.com/vaxiband/show/QRBracelet-smith-United States-denly-raheelsiddiqui05@gmail.com-1020-L491425818-February 19, 2021', 'L491425818', 0, 0, '2021-02-23 07:41:12', '2021-02-23 07:41:12'),
(299, 'February 17, 2021', '1016', 'aliinfotech.com/vaxiband/show/Name Bracelet-Jimy-United States-Robbert-tabishadnan7800@gmail.com-1016-L753872172-February 17, 2021', 'L753872172', 0, 1, '2021-02-19 10:36:46', '2021-02-19 10:36:46'),
(298, 'February 17, 2021', '1016', 'aliinfotech.com/vaxiband/show/Premium QRBracelet-smith-United States-denly-tabishadnan7800@gmail.com-1016-L748223490-February 17, 2021', 'L748223490', 0, 0, '2021-02-19 10:31:50', '2021-02-19 12:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `company_name` varchar(225) NOT NULL,
  `shipping_number` varchar(225) NOT NULL,
  `shipping_address` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `cus_id`, `company_name`, `shipping_number`, `shipping_address`, `created_at`, `updated_at`) VALUES
(27, 130, 'TCS', '7877777', '5678UniversalBoulevard', '2021-02-23 02:32:21', '2021-02-23 02:32:21'),
(26, 130, 'DHL', '1211111', '6000UniversalBoulevard', '2021-02-23 02:32:21', '2021-02-23 02:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `role`, `status`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '4416473549', 0, 0, 'admin', 'admin@vaxiband.com', '2021-02-09 14:55:34', '$2y$10$MVAceMgrb1MSmnh4bW4QOu1VSVU8hS2jrlMZ3OufikOx8yzuuDZdq', NULL, '2021-02-09 14:55:34', '2021-02-09 14:55:34'),
(2, NULL, 1, 0, 'manufacture', 'manufacture@vaxiband.com', '2021-02-11 14:57:44', '$2y$10$MVAceMgrb1MSmnh4bW4QOu1VSVU8hS2jrlMZ3OufikOx8yzuuDZdq', NULL, '2021-02-11 14:57:44', '2021-02-19 00:00:54'),
(7, NULL, 1, 1, 'Manufacture', 'manufacture11@vaxiband.com', NULL, '11111', NULL, '2021-02-12 03:27:19', '2021-02-19 04:07:56'),
(8, '4416473549', 1, 0, 'Musavir', 'musavir@aliinfotech.com', NULL, '12345678', NULL, '2021-02-12 03:51:56', '2021-02-12 03:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_rh`
--
ALTER TABLE `customers_rh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_link`
--
ALTER TABLE `orders_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `customers_rh`
--
ALTER TABLE `customers_rh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_link`
--
ALTER TABLE `orders_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
