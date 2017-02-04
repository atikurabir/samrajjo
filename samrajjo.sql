-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2016 at 07:07 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `samrajjo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Electrical & Electronics', '2016-12-17 12:46:42', '2016-12-17 12:49:03'),
(2, 'Computer & IT', '2016-12-17 12:50:06', '2016-12-17 12:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `c_firstName`, `c_lastName`, `c_email`, `c_phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Abir', 'Rahman', 'abir.abir.com', '0898797', '$2y$10$aWCVg9a0iguFEWut6M3nCuZlNRz9xiszHH1BIweYDtWjDICWUS5xK', '2016-12-17 13:43:58', '2016-12-17 13:43:58'),
(2, 'Mohim', 'Ahmed', 'mohim.ispahini@gmail.com', '08987877', '$2y$10$8w/TFusoM6vUdJgFz.qAveJOE/XUsMEZYOx2Xx7ttGEN3ihSes0IS', '2016-12-17 13:48:40', '2016-12-17 13:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `joiningDate` date NOT NULL,
  `emp_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_username`, `password`, `emp_firstName`, `emp_lastName`, `emp_phone`, `emp_email`, `joiningDate`, `emp_type`, `emp_image`, `created_at`, `updated_at`) VALUES
(1, 'piash', '$2y$10$f1uFUFWy9sS1gQTjK2NrdewyFjIJAsHPk7CoIsTkjc3shuA9kCGni', 'Rakibul', 'Islam', '01768780070', 'piash@piash.com', '2018-12-16', 'admin', 'piash.jpg', '2016-12-17 13:58:59', '2016-12-17 13:58:59'),
(2, 'atikur', '$2y$10$bV9cCFE.q0MLnZAZOKre6.t6nIHWY2mzWiiI2YGuY7PhxfiuH8/sC', 'Atikur', 'Rahman', '01670633918', 'abir.nsc@gmail.com', '2015-11-16', 'admin', 'atikur.jpg', '2016-12-17 14:03:13', '2016-12-17 14:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_12_16_193637_create_categories_table', 1),
('2016_12_16_193853_create_subCategories_table', 2),
('2016_12_16_194544_create_products_table', 3),
('2016_12_16_195321_create_customers_table', 4),
('2016_12_16_200621_create_products_table', 5),
('2016_12_17_174755_create_sellsHistory_table', 6),
('2016_12_17_180117_create_employees_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sub_cat_id` int(10) unsigned NOT NULL,
  `p_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_buyPrice` int(11) NOT NULL,
  `p_sellPrice` int(11) NOT NULL,
  `p_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_sub_cat_id_foreign` (`sub_cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sub_cat_id`, `p_name`, `p_buyPrice`, `p_sellPrice`, `p_image`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 'HP Pavillion 15 Notebook PC', 35000, 42000, 'null', 2, '2016-12-17 13:26:14', '2016-12-17 13:26:14'),
(2, 2, 'Dell Vostro 3450', 41000, 46000, 'null', 1, '2016-12-17 13:31:50', '2016-12-17 13:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `sellshistory`
--

CREATE TABLE IF NOT EXISTS `sellshistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `amountPaid` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sellshistory_cust_id_foreign` (`cust_id`),
  KEY `sellshistory_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_cat_id_foreign` (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cat_id`, `sub_cat_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Batteries,UPS,IPS', '2016-12-17 12:56:13', '2016-12-17 12:56:13'),
(2, 2, 'Laptop', '2016-12-17 12:59:51', '2016-12-17 12:59:51'),
(3, 2, 'Desktop PC', '2016-12-17 13:00:48', '2016-12-17 13:00:48'),
(4, 1, 'Lighting & Fans', '2016-12-17 13:10:11', '2016-12-17 13:10:11');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `sellshistory`
--
ALTER TABLE `sellshistory`
  ADD CONSTRAINT `sellshistory_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sellshistory_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
