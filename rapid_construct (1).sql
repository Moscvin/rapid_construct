-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Mar 05, 2025 at 07:14 PM
-- Server version: 8.0.41
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapid_construct`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `seo_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('library_cache_contexts', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:18:\"App\\Models\\Context\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"contexts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:4:\"text\";s:72:\"{\"ro\":\"<h2>Rapid Construct Soluția Ta Pentru Construcții de Top</h2>\"}\";s:5:\"media\";N;s:7:\"page_id\";i:1;s:10:\"created_at\";s:19:\"2025-02-17 18:30:48\";s:10:\"updated_at\";s:19:\"2025-02-17 19:41:55\";s:4:\"hint\";s:15:\"Rapid-Construct\";s:4:\"slug\";s:6:\"slider\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"text\";s:72:\"{\"ro\":\"<h2>Rapid Construct Soluția Ta Pentru Construcții de Top</h2>\"}\";s:5:\"media\";N;s:7:\"page_id\";i:1;s:10:\"created_at\";s:19:\"2025-02-17 18:30:48\";s:10:\"updated_at\";s:19:\"2025-02-17 19:41:55\";s:4:\"hint\";s:15:\"Rapid-Construct\";s:4:\"slug\";s:6:\"slider\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:3:{i:0;s:4:\"text\";i:1;s:5:\"media\";i:2;s:7:\"page_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:4:\"text\";}s:20:\"\0*\0translationLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2055782685),
('library_cache_counters', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2055782685),
('library_cache_options', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:14:{i:0;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:8;s:5:\"title\";s:27:\"{\"ro\":\"Title_Luxury_Villa\"}\";s:4:\"slug\";s:7:\"options\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:32:\"{\"ro\":\"text about luxury villa\"}\";s:5:\"image\";s:52:\"service/dXdTxPVvRKGYCpAlpF5s2ME9VGr5pZSeL2SiDgeU.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-22 11:05:36\";s:10:\"updated_at\";s:19:\"2025-02-22 11:05:36\";s:7:\"special\";i:1;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:8;s:5:\"title\";s:27:\"{\"ro\":\"Title_Luxury_Villa\"}\";s:4:\"slug\";s:7:\"options\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:32:\"{\"ro\":\"text about luxury villa\"}\";s:5:\"image\";s:52:\"service/dXdTxPVvRKGYCpAlpF5s2ME9VGr5pZSeL2SiDgeU.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-22 11:05:36\";s:10:\"updated_at\";s:19:\"2025-02-22 11:05:36\";s:7:\"special\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:1;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:16;s:5:\"title\";s:48:\"{\"ro\":\"Instalarea și montarea acoperișurilor\"}\";s:4:\"slug\";s:8:\"services\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:528:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete pentru instalarea și montarea acoperișurilor din</p>\\r\\n<p class=\\\"p1\\\">diferite tipuri de materiale (țiglă, tabla, șindrilă bituminoasă etc.). Echipa noastră se ocupă de</p>\\r\\n<p class=\\\"p1\\\">toate etapele: de la pregătirea structurii de suport, la montajul propriu-zis și finisaje, asigur&acirc;ndu-</p>\\r\\n<p class=\\\"p1\\\">se că acoperișul este 100% funcțional și etanș, protej&acirc;nd astfel &icirc;ntreaga clădire.</p>\"}\";s:5:\"image\";s:52:\"service/SOZvhuMqo5gCX9JyIDu1KCCUkaEz47jJnUvW4F5a.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:51:26\";s:10:\"updated_at\";s:19:\"2025-02-24 07:51:26\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:16;s:5:\"title\";s:48:\"{\"ro\":\"Instalarea și montarea acoperișurilor\"}\";s:4:\"slug\";s:8:\"services\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:528:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete pentru instalarea și montarea acoperișurilor din</p>\\r\\n<p class=\\\"p1\\\">diferite tipuri de materiale (țiglă, tabla, șindrilă bituminoasă etc.). Echipa noastră se ocupă de</p>\\r\\n<p class=\\\"p1\\\">toate etapele: de la pregătirea structurii de suport, la montajul propriu-zis și finisaje, asigur&acirc;ndu-</p>\\r\\n<p class=\\\"p1\\\">se că acoperișul este 100% funcțional și etanș, protej&acirc;nd astfel &icirc;ntreaga clădire.</p>\"}\";s:5:\"image\";s:52:\"service/SOZvhuMqo5gCX9JyIDu1KCCUkaEz47jJnUvW4F5a.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:51:26\";s:10:\"updated_at\";s:19:\"2025-02-24 07:51:26\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:2;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:17;s:5:\"title\";s:59:\"{\"ro\":\"Reparații și renovări interioare și exterioare\"}\";s:4:\"slug\";s:10:\"services-1\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:520:\"{\"ro\":\"<p class=\\\"p1\\\">Fie că vrei să recondiționezi băile, să refaci instalațiile sau să &icirc;mbunătățești aspectul fațadei,</p>\\r\\n<p class=\\\"p1\\\"><strong>Rapid Construct</strong> &icirc;ți oferă soluții complete pentru reparații și renovări. Ne ocupăm de toate</p>\\r\\n<p class=\\\"p1\\\">tipurile de lucrări: de la reparații structurale, schimbări de instalații, p&acirc;nă la finisaje de interior și</p>\\r\\n<p class=\\\"p1\\\">exterior, cu accent pe durabilitate și eficiență energetică.</p>\"}\";s:5:\"image\";s:52:\"service/GZEaijS7Bhnb8x1EeAerl2Hn588lPtKhXpSoFBOj.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:23\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:23\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:17;s:5:\"title\";s:59:\"{\"ro\":\"Reparații și renovări interioare și exterioare\"}\";s:4:\"slug\";s:10:\"services-1\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:520:\"{\"ro\":\"<p class=\\\"p1\\\">Fie că vrei să recondiționezi băile, să refaci instalațiile sau să &icirc;mbunătățești aspectul fațadei,</p>\\r\\n<p class=\\\"p1\\\"><strong>Rapid Construct</strong> &icirc;ți oferă soluții complete pentru reparații și renovări. Ne ocupăm de toate</p>\\r\\n<p class=\\\"p1\\\">tipurile de lucrări: de la reparații structurale, schimbări de instalații, p&acirc;nă la finisaje de interior și</p>\\r\\n<p class=\\\"p1\\\">exterior, cu accent pe durabilitate și eficiență energetică.</p>\"}\";s:5:\"image\";s:52:\"service/GZEaijS7Bhnb8x1EeAerl2Hn588lPtKhXpSoFBOj.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:23\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:23\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:3;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:18;s:5:\"title\";s:31:\"{\"ro\":\"Montaj plăci ceramice\"}\";s:4:\"slug\";s:10:\"services-2\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:489:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm plăci ceramice de toate tipurile, adaptate necesităților tale (gresie, faianță, mozaic etc.).</p>\\r\\n<p class=\\\"p1\\\">Procesul nostru include pregătirea corectă a suprafeței, tăierea precisă a plăcilor și aplicarea</p>\\r\\n<p class=\\\"p1\\\">adezivului pentru o fixare optimă. Asigurăm un montaj durabil, estetic și rezistent &icirc;n timp,</p>\\r\\n<p class=\\\"p1\\\">indiferent dacă este vorba despre băi, bucătării sau spații comerciale.</p>\"}\";s:5:\"image\";s:52:\"service/Iajhr7IQ7DfFZ5qW4i2WuUtxIKtuqK3jzUiFLVSr.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:59\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:59\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:18;s:5:\"title\";s:31:\"{\"ro\":\"Montaj plăci ceramice\"}\";s:4:\"slug\";s:10:\"services-2\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:489:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm plăci ceramice de toate tipurile, adaptate necesităților tale (gresie, faianță, mozaic etc.).</p>\\r\\n<p class=\\\"p1\\\">Procesul nostru include pregătirea corectă a suprafeței, tăierea precisă a plăcilor și aplicarea</p>\\r\\n<p class=\\\"p1\\\">adezivului pentru o fixare optimă. Asigurăm un montaj durabil, estetic și rezistent &icirc;n timp,</p>\\r\\n<p class=\\\"p1\\\">indiferent dacă este vorba despre băi, bucătării sau spații comerciale.</p>\"}\";s:5:\"image\";s:52:\"service/Iajhr7IQ7DfFZ5qW4i2WuUtxIKtuqK3jzUiFLVSr.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:59\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:59\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:4;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:19;s:5:\"title\";s:47:\"{\"ro\":\"Servicii profesionale de electricitate\"}\";s:4:\"slug\";s:10:\"services-3\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:544:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim servicii complete pentru instalații electrice, de la proiectare și instalare p&acirc;nă la reparații și</p>\\r\\n<p class=\\\"p1\\\">&icirc;ntreținere. Echipa noastră se asigură că toate instalațiile sunt realizate conform normativelor,</p>\\r\\n<p class=\\\"p1\\\">respect&acirc;nd cele mai &icirc;nalte standarde de siguranță. Fie că este vorba de o instalație electrică nouă</p>\\r\\n<p class=\\\"p1\\\">sau de remedierea unei defecțiuni, &icirc;ți garantăm o lucrare de calitate și eficiență maximă.</p>\"}\";s:5:\"image\";s:52:\"service/nOeAeSpJ4SOqvVRll0bEnttJAo7kL3qoTA8hWTZJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:53:40\";s:10:\"updated_at\";s:19:\"2025-02-24 07:53:40\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:19;s:5:\"title\";s:47:\"{\"ro\":\"Servicii profesionale de electricitate\"}\";s:4:\"slug\";s:10:\"services-3\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:544:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim servicii complete pentru instalații electrice, de la proiectare și instalare p&acirc;nă la reparații și</p>\\r\\n<p class=\\\"p1\\\">&icirc;ntreținere. Echipa noastră se asigură că toate instalațiile sunt realizate conform normativelor,</p>\\r\\n<p class=\\\"p1\\\">respect&acirc;nd cele mai &icirc;nalte standarde de siguranță. Fie că este vorba de o instalație electrică nouă</p>\\r\\n<p class=\\\"p1\\\">sau de remedierea unei defecțiuni, &icirc;ți garantăm o lucrare de calitate și eficiență maximă.</p>\"}\";s:5:\"image\";s:52:\"service/nOeAeSpJ4SOqvVRll0bEnttJAo7kL3qoTA8hWTZJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:53:40\";s:10:\"updated_at\";s:19:\"2025-02-24 07:53:40\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:5;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:20;s:5:\"title\";s:29:\"{\"ro\":\"Instalații sanitare\"}\";s:4:\"slug\";s:10:\"services-4\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:559:\"{\"ro\":\"<p class=\\\"p1\\\">Ne ocupăm de instalarea, repararea și &icirc;ntreținerea instalațiilor sanitare, inclusiv a sistemelor de</p>\\r\\n<p class=\\\"p1\\\">apă potabilă, canalizare și apă caldă. Folosim echipamente moderne și soluții durabile pentru a</p>\\r\\n<p class=\\\"p1\\\">garanta că instalațiile tale funcționează eficient și nu sunt predispuse la defecțiuni. Fie că ești &icirc;ntr-</p>\\r\\n<p class=\\\"p1\\\">un proiect de construcție nouă sau de renovare, asigurăm implementarea corectă a sistemelor</p>\\r\\n<p class=\\\"p1\\\">sanitare.</p>\"}\";s:5:\"image\";s:52:\"service/5czQdZ8Xa7uTkIAMBS76qwelsrhmrwnY5e6U7B5i.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:54:17\";s:10:\"updated_at\";s:19:\"2025-02-24 07:54:17\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:20;s:5:\"title\";s:29:\"{\"ro\":\"Instalații sanitare\"}\";s:4:\"slug\";s:10:\"services-4\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:559:\"{\"ro\":\"<p class=\\\"p1\\\">Ne ocupăm de instalarea, repararea și &icirc;ntreținerea instalațiilor sanitare, inclusiv a sistemelor de</p>\\r\\n<p class=\\\"p1\\\">apă potabilă, canalizare și apă caldă. Folosim echipamente moderne și soluții durabile pentru a</p>\\r\\n<p class=\\\"p1\\\">garanta că instalațiile tale funcționează eficient și nu sunt predispuse la defecțiuni. Fie că ești &icirc;ntr-</p>\\r\\n<p class=\\\"p1\\\">un proiect de construcție nouă sau de renovare, asigurăm implementarea corectă a sistemelor</p>\\r\\n<p class=\\\"p1\\\">sanitare.</p>\"}\";s:5:\"image\";s:52:\"service/5czQdZ8Xa7uTkIAMBS76qwelsrhmrwnY5e6U7B5i.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:54:17\";s:10:\"updated_at\";s:19:\"2025-02-24 07:54:17\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:6;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:21;s:5:\"title\";s:33:\"{\"ro\":\"Realizarea fațadelor 3D\"}\";s:4:\"slug\";s:10:\"services-5\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:417:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții inovative pentru realizarea fațadelor 3D, care adaugă un caracter modern și</p>\\r\\n<p class=\\\"p1\\\">deosebit clădirilor tale. Cu ajutorul tehnologiei de ultimă generație și a materialelor de calitate,</p>\\r\\n<p class=\\\"p1\\\">transformăm fațadele simple &icirc;n elemente vizuale impresionante, care pun &icirc;n valoare designul</p>\\r\\n<p class=\\\"p1\\\">arhitectural.</p>\"}\";s:5:\"image\";s:52:\"service/oOnWX7Zvi2OSrxkDQlWoAWgR5UjfGneBzNZ5C2B8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:55:01\";s:10:\"updated_at\";s:19:\"2025-02-24 07:55:01\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:21;s:5:\"title\";s:33:\"{\"ro\":\"Realizarea fațadelor 3D\"}\";s:4:\"slug\";s:10:\"services-5\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:417:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții inovative pentru realizarea fațadelor 3D, care adaugă un caracter modern și</p>\\r\\n<p class=\\\"p1\\\">deosebit clădirilor tale. Cu ajutorul tehnologiei de ultimă generație și a materialelor de calitate,</p>\\r\\n<p class=\\\"p1\\\">transformăm fațadele simple &icirc;n elemente vizuale impresionante, care pun &icirc;n valoare designul</p>\\r\\n<p class=\\\"p1\\\">arhitectural.</p>\"}\";s:5:\"image\";s:52:\"service/oOnWX7Zvi2OSrxkDQlWoAWgR5UjfGneBzNZ5C2B8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:55:01\";s:10:\"updated_at\";s:19:\"2025-02-24 07:55:01\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:7;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:22;s:5:\"title\";s:27:\"{\"ro\":\"Izolație termică\"}\";s:4:\"slug\";s:10:\"services-6\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:524:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete de <strong>izolație termică</strong> pentru clădiri rezidențiale și</p>\\r\\n<p class=\\\"p1\\\">comerciale. Folosim materiale eficiente (polistiren expandat, vată minerală, panouri PIR) pentru a</p>\\r\\n<p class=\\\"p1\\\">asigura protecția termică și eficiența energetică a clădirii tale, contribuind la reducerea costurilor</p>\\r\\n<p class=\\\"p1\\\">de &icirc;ncălzire și menținerea unei temperaturi constante &icirc;n interior.</p>\"}\";s:5:\"image\";s:52:\"service/yAvA1Cyw3f8wHaWZmHnpV6Z9ZIOkGBOyPwF0i0YN.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:06:34\";s:10:\"updated_at\";s:19:\"2025-02-24 08:06:34\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:22;s:5:\"title\";s:27:\"{\"ro\":\"Izolație termică\"}\";s:4:\"slug\";s:10:\"services-6\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:524:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete de <strong>izolație termică</strong> pentru clădiri rezidențiale și</p>\\r\\n<p class=\\\"p1\\\">comerciale. Folosim materiale eficiente (polistiren expandat, vată minerală, panouri PIR) pentru a</p>\\r\\n<p class=\\\"p1\\\">asigura protecția termică și eficiența energetică a clădirii tale, contribuind la reducerea costurilor</p>\\r\\n<p class=\\\"p1\\\">de &icirc;ncălzire și menținerea unei temperaturi constante &icirc;n interior.</p>\"}\";s:5:\"image\";s:52:\"service/yAvA1Cyw3f8wHaWZmHnpV6Z9ZIOkGBOyPwF0i0YN.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:06:34\";s:10:\"updated_at\";s:19:\"2025-02-24 08:06:34\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:8;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:23;s:5:\"title\";s:28:\"{\"ro\":\"Pardoseli epoxidice\"}\";s:4:\"slug\";s:10:\"services-7\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:65:\"{\"ro\":\"<p class=\\\"p1\\\"><strong>Pardoseli epoxidice</strong></p>\"}\";s:5:\"image\";s:52:\"service/DEFTpDvdvxENZImNTHgjHvh351sLkal4TGO4DemL.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:10\";s:10:\"updated_at\";s:19:\"2025-02-24 08:07:10\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:23;s:5:\"title\";s:28:\"{\"ro\":\"Pardoseli epoxidice\"}\";s:4:\"slug\";s:10:\"services-7\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:65:\"{\"ro\":\"<p class=\\\"p1\\\"><strong>Pardoseli epoxidice</strong></p>\"}\";s:5:\"image\";s:52:\"service/DEFTpDvdvxENZImNTHgjHvh351sLkal4TGO4DemL.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:10\";s:10:\"updated_at\";s:19:\"2025-02-24 08:07:10\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:9;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:24;s:5:\"title\";s:51:\"{\"ro\":\"Construcție garduri din metal sau piatră\"}\";s:4:\"slug\";s:10:\"services-8\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:488:\"{\"ro\":\"<p class=\\\"p1\\\">Realizăm <strong>garduri din metal sau piatră</strong> personalizate, care oferă siguranță și un aspect estetic</p>\\r\\n<p class=\\\"p1\\\">plăcut. Indiferent de tipul de material ales, lucrăm cu profesionalism și respectăm toate cerințele</p>\\r\\n<p class=\\\"p1\\\">tale pentru a crea un gard durabil și de calitate. Oferim at&acirc;t soluții standard, c&acirc;t și proiecte</p>\\r\\n<p class=\\\"p1\\\">speciale, &icirc;n funcție de preferințele clientului</p>\"}\";s:5:\"image\";s:52:\"service/iFsPzj1SthYmdcZ25G1llKb5BveGblrsVMDUhPRw.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:39\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:10\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:24;s:5:\"title\";s:51:\"{\"ro\":\"Construcție garduri din metal sau piatră\"}\";s:4:\"slug\";s:10:\"services-8\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:488:\"{\"ro\":\"<p class=\\\"p1\\\">Realizăm <strong>garduri din metal sau piatră</strong> personalizate, care oferă siguranță și un aspect estetic</p>\\r\\n<p class=\\\"p1\\\">plăcut. Indiferent de tipul de material ales, lucrăm cu profesionalism și respectăm toate cerințele</p>\\r\\n<p class=\\\"p1\\\">tale pentru a crea un gard durabil și de calitate. Oferim at&acirc;t soluții standard, c&acirc;t și proiecte</p>\\r\\n<p class=\\\"p1\\\">speciale, &icirc;n funcție de preferințele clientului</p>\"}\";s:5:\"image\";s:52:\"service/iFsPzj1SthYmdcZ25G1llKb5BveGblrsVMDUhPRw.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:39\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:10\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:10;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:25;s:5:\"title\";s:35:\"{\"ro\":\"Instalare geamuri și uși\"}\";s:4:\"slug\";s:10:\"services-9\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:460:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm geamuri și uși de orice tip: feronerie de calitate, izolație termică și fonică excelentă. Fie</p>\\r\\n<p class=\\\"p1\\\">că este vorba de feronerie standard sau de sisteme de securitate avansate, echipa noastră se</p>\\r\\n<p class=\\\"p1\\\">asigură că montajul este realizat corect și că ușile și feroneriile vor funcționa perfect, protej&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">eficient locuința sau spațiul comercial.</p>\"}\";s:5:\"image\";s:52:\"service/GmCXQqX5FaO9Pa6ffV9thsa6u00CPapbSatwOVEV.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:08:51\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:51\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:25;s:5:\"title\";s:35:\"{\"ro\":\"Instalare geamuri și uși\"}\";s:4:\"slug\";s:10:\"services-9\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:460:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm geamuri și uși de orice tip: feronerie de calitate, izolație termică și fonică excelentă. Fie</p>\\r\\n<p class=\\\"p1\\\">că este vorba de feronerie standard sau de sisteme de securitate avansate, echipa noastră se</p>\\r\\n<p class=\\\"p1\\\">asigură că montajul este realizat corect și că ușile și feroneriile vor funcționa perfect, protej&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">eficient locuința sau spațiul comercial.</p>\"}\";s:5:\"image\";s:52:\"service/GmCXQqX5FaO9Pa6ffV9thsa6u00CPapbSatwOVEV.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:08:51\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:51\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:11;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:26;s:5:\"title\";s:30:\"{\"ro\":\"Lucrări de dulgherie\"}\";s:4:\"slug\";s:11:\"services-10\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:526:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim <strong>lucrări de dulgherie</strong> pentru diverse tipuri de construcții: case, hale industriale, structuri</p>\\r\\n<p class=\\\"p1\\\">din lemn sau elemente de decor din lemn. Realizăm lucrări precise și rezistente, utiliz&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">materiale de calitate și respect&acirc;nd toate reglementările de siguranță. Dulgherii noștri sunt experți</p>\\r\\n<p class=\\\"p1\\\">&icirc;n tăierea, montarea și fixarea componentelor din lemn pentru orice tip de construcție.</p>\"}\";s:5:\"image\";s:52:\"service/Ta9LaDoKjN0eXRYD3apdY9S71MyADCyiTwxLxriq.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:09:52\";s:10:\"updated_at\";s:19:\"2025-02-24 08:09:52\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:26;s:5:\"title\";s:30:\"{\"ro\":\"Lucrări de dulgherie\"}\";s:4:\"slug\";s:11:\"services-10\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:526:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim <strong>lucrări de dulgherie</strong> pentru diverse tipuri de construcții: case, hale industriale, structuri</p>\\r\\n<p class=\\\"p1\\\">din lemn sau elemente de decor din lemn. Realizăm lucrări precise și rezistente, utiliz&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">materiale de calitate și respect&acirc;nd toate reglementările de siguranță. Dulgherii noștri sunt experți</p>\\r\\n<p class=\\\"p1\\\">&icirc;n tăierea, montarea și fixarea componentelor din lemn pentru orice tip de construcție.</p>\"}\";s:5:\"image\";s:52:\"service/Ta9LaDoKjN0eXRYD3apdY9S71MyADCyiTwxLxriq.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:09:52\";s:10:\"updated_at\";s:19:\"2025-02-24 08:09:52\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:12;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:27;s:5:\"title\";s:59:\"{\"ro\":\"Construcția și montajul acoperișurilor din zinc\"}\";s:4:\"slug\";s:11:\"services-11\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:465:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții complete pentru <strong>acoperișuri din zinc</strong>, un material durabil, ușor și rezistent la</p>\\r\\n<p class=\\\"p1\\\">intemperii. Montăm acoperișuri din zinc pentru case, clădiri comerciale și industriale,</p>\\r\\n<p class=\\\"p1\\\">asigur&acirc;ndu-ne că fiecare etapă a procesului de montaj este realizată conform standardelor, pentru</p>\\r\\n<p class=\\\"p1\\\">o durabilitate crescută și o estetică deosebită.</p>\"}\";s:5:\"image\";s:52:\"service/ihiyjkQWRYmnB7kQPaM1iaVgeSvWcctsDyJwRRhJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:10:36\";s:10:\"updated_at\";s:19:\"2025-02-24 08:10:36\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:27;s:5:\"title\";s:59:\"{\"ro\":\"Construcția și montajul acoperișurilor din zinc\"}\";s:4:\"slug\";s:11:\"services-11\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:465:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții complete pentru <strong>acoperișuri din zinc</strong>, un material durabil, ușor și rezistent la</p>\\r\\n<p class=\\\"p1\\\">intemperii. Montăm acoperișuri din zinc pentru case, clădiri comerciale și industriale,</p>\\r\\n<p class=\\\"p1\\\">asigur&acirc;ndu-ne că fiecare etapă a procesului de montaj este realizată conform standardelor, pentru</p>\\r\\n<p class=\\\"p1\\\">o durabilitate crescută și o estetică deosebită.</p>\"}\";s:5:\"image\";s:52:\"service/ihiyjkQWRYmnB7kQPaM1iaVgeSvWcctsDyJwRRhJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:10:36\";s:10:\"updated_at\";s:19:\"2025-02-24 08:10:36\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:13;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:28;s:5:\"title\";s:22:\"{\"ro\":\"Montare pavaj\"}\";s:4:\"slug\";s:11:\"services-12\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:529:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii de <strong>montare pavaj</strong> pentru drumuri, alei, parcări sau grădini.</p>\\r\\n<p class=\\\"p1\\\">Alegem materiale de calitate și utilizăm tehnici moderne de montaj, astfel &icirc;nc&acirc;t pavajul să fie</p>\\r\\n<p class=\\\"p1\\\">uniform, durabil și estetic. Indiferent de tipul de pavaj dorit, echipa noastră va realiza lucrările cu</p>\\r\\n<p class=\\\"p1\\\">precizie, asigur&acirc;ndu-se că rezultatul final este conform cerințelor tale.</p>\"}\";s:5:\"image\";s:52:\"service/XQeND97cZr7wRsH6dyrQfxggYNyiucdih25GkFD8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:11:07\";s:10:\"updated_at\";s:19:\"2025-02-24 08:11:07\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:28;s:5:\"title\";s:22:\"{\"ro\":\"Montare pavaj\"}\";s:4:\"slug\";s:11:\"services-12\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:529:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii de <strong>montare pavaj</strong> pentru drumuri, alei, parcări sau grădini.</p>\\r\\n<p class=\\\"p1\\\">Alegem materiale de calitate și utilizăm tehnici moderne de montaj, astfel &icirc;nc&acirc;t pavajul să fie</p>\\r\\n<p class=\\\"p1\\\">uniform, durabil și estetic. Indiferent de tipul de pavaj dorit, echipa noastră va realiza lucrările cu</p>\\r\\n<p class=\\\"p1\\\">precizie, asigur&acirc;ndu-se că rezultatul final este conform cerințelor tale.</p>\"}\";s:5:\"image\";s:52:\"service/XQeND97cZr7wRsH6dyrQfxggYNyiucdih25GkFD8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:11:07\";s:10:\"updated_at\";s:19:\"2025-02-24 08:11:07\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2055782685);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('library_cache_services', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:13:{i:0;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:16;s:5:\"title\";s:48:\"{\"ro\":\"Instalarea și montarea acoperișurilor\"}\";s:4:\"slug\";s:8:\"services\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:528:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete pentru instalarea și montarea acoperișurilor din</p>\\r\\n<p class=\\\"p1\\\">diferite tipuri de materiale (țiglă, tabla, șindrilă bituminoasă etc.). Echipa noastră se ocupă de</p>\\r\\n<p class=\\\"p1\\\">toate etapele: de la pregătirea structurii de suport, la montajul propriu-zis și finisaje, asigur&acirc;ndu-</p>\\r\\n<p class=\\\"p1\\\">se că acoperișul este 100% funcțional și etanș, protej&acirc;nd astfel &icirc;ntreaga clădire.</p>\"}\";s:5:\"image\";s:52:\"service/SOZvhuMqo5gCX9JyIDu1KCCUkaEz47jJnUvW4F5a.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:51:26\";s:10:\"updated_at\";s:19:\"2025-02-24 07:51:26\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:16;s:5:\"title\";s:48:\"{\"ro\":\"Instalarea și montarea acoperișurilor\"}\";s:4:\"slug\";s:8:\"services\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:528:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete pentru instalarea și montarea acoperișurilor din</p>\\r\\n<p class=\\\"p1\\\">diferite tipuri de materiale (țiglă, tabla, șindrilă bituminoasă etc.). Echipa noastră se ocupă de</p>\\r\\n<p class=\\\"p1\\\">toate etapele: de la pregătirea structurii de suport, la montajul propriu-zis și finisaje, asigur&acirc;ndu-</p>\\r\\n<p class=\\\"p1\\\">se că acoperișul este 100% funcțional și etanș, protej&acirc;nd astfel &icirc;ntreaga clădire.</p>\"}\";s:5:\"image\";s:52:\"service/SOZvhuMqo5gCX9JyIDu1KCCUkaEz47jJnUvW4F5a.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:51:26\";s:10:\"updated_at\";s:19:\"2025-02-24 07:51:26\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:1;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:17;s:5:\"title\";s:59:\"{\"ro\":\"Reparații și renovări interioare și exterioare\"}\";s:4:\"slug\";s:10:\"services-1\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:520:\"{\"ro\":\"<p class=\\\"p1\\\">Fie că vrei să recondiționezi băile, să refaci instalațiile sau să &icirc;mbunătățești aspectul fațadei,</p>\\r\\n<p class=\\\"p1\\\"><strong>Rapid Construct</strong> &icirc;ți oferă soluții complete pentru reparații și renovări. Ne ocupăm de toate</p>\\r\\n<p class=\\\"p1\\\">tipurile de lucrări: de la reparații structurale, schimbări de instalații, p&acirc;nă la finisaje de interior și</p>\\r\\n<p class=\\\"p1\\\">exterior, cu accent pe durabilitate și eficiență energetică.</p>\"}\";s:5:\"image\";s:52:\"service/GZEaijS7Bhnb8x1EeAerl2Hn588lPtKhXpSoFBOj.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:23\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:23\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:17;s:5:\"title\";s:59:\"{\"ro\":\"Reparații și renovări interioare și exterioare\"}\";s:4:\"slug\";s:10:\"services-1\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:520:\"{\"ro\":\"<p class=\\\"p1\\\">Fie că vrei să recondiționezi băile, să refaci instalațiile sau să &icirc;mbunătățești aspectul fațadei,</p>\\r\\n<p class=\\\"p1\\\"><strong>Rapid Construct</strong> &icirc;ți oferă soluții complete pentru reparații și renovări. Ne ocupăm de toate</p>\\r\\n<p class=\\\"p1\\\">tipurile de lucrări: de la reparații structurale, schimbări de instalații, p&acirc;nă la finisaje de interior și</p>\\r\\n<p class=\\\"p1\\\">exterior, cu accent pe durabilitate și eficiență energetică.</p>\"}\";s:5:\"image\";s:52:\"service/GZEaijS7Bhnb8x1EeAerl2Hn588lPtKhXpSoFBOj.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:23\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:23\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:2;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:18;s:5:\"title\";s:31:\"{\"ro\":\"Montaj plăci ceramice\"}\";s:4:\"slug\";s:10:\"services-2\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:489:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm plăci ceramice de toate tipurile, adaptate necesităților tale (gresie, faianță, mozaic etc.).</p>\\r\\n<p class=\\\"p1\\\">Procesul nostru include pregătirea corectă a suprafeței, tăierea precisă a plăcilor și aplicarea</p>\\r\\n<p class=\\\"p1\\\">adezivului pentru o fixare optimă. Asigurăm un montaj durabil, estetic și rezistent &icirc;n timp,</p>\\r\\n<p class=\\\"p1\\\">indiferent dacă este vorba despre băi, bucătării sau spații comerciale.</p>\"}\";s:5:\"image\";s:52:\"service/Iajhr7IQ7DfFZ5qW4i2WuUtxIKtuqK3jzUiFLVSr.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:59\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:59\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:18;s:5:\"title\";s:31:\"{\"ro\":\"Montaj plăci ceramice\"}\";s:4:\"slug\";s:10:\"services-2\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:489:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm plăci ceramice de toate tipurile, adaptate necesităților tale (gresie, faianță, mozaic etc.).</p>\\r\\n<p class=\\\"p1\\\">Procesul nostru include pregătirea corectă a suprafeței, tăierea precisă a plăcilor și aplicarea</p>\\r\\n<p class=\\\"p1\\\">adezivului pentru o fixare optimă. Asigurăm un montaj durabil, estetic și rezistent &icirc;n timp,</p>\\r\\n<p class=\\\"p1\\\">indiferent dacă este vorba despre băi, bucătării sau spații comerciale.</p>\"}\";s:5:\"image\";s:52:\"service/Iajhr7IQ7DfFZ5qW4i2WuUtxIKtuqK3jzUiFLVSr.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:52:59\";s:10:\"updated_at\";s:19:\"2025-02-24 07:52:59\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:3;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:19;s:5:\"title\";s:47:\"{\"ro\":\"Servicii profesionale de electricitate\"}\";s:4:\"slug\";s:10:\"services-3\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:544:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim servicii complete pentru instalații electrice, de la proiectare și instalare p&acirc;nă la reparații și</p>\\r\\n<p class=\\\"p1\\\">&icirc;ntreținere. Echipa noastră se asigură că toate instalațiile sunt realizate conform normativelor,</p>\\r\\n<p class=\\\"p1\\\">respect&acirc;nd cele mai &icirc;nalte standarde de siguranță. Fie că este vorba de o instalație electrică nouă</p>\\r\\n<p class=\\\"p1\\\">sau de remedierea unei defecțiuni, &icirc;ți garantăm o lucrare de calitate și eficiență maximă.</p>\"}\";s:5:\"image\";s:52:\"service/nOeAeSpJ4SOqvVRll0bEnttJAo7kL3qoTA8hWTZJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:53:40\";s:10:\"updated_at\";s:19:\"2025-02-24 07:53:40\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:19;s:5:\"title\";s:47:\"{\"ro\":\"Servicii profesionale de electricitate\"}\";s:4:\"slug\";s:10:\"services-3\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:544:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim servicii complete pentru instalații electrice, de la proiectare și instalare p&acirc;nă la reparații și</p>\\r\\n<p class=\\\"p1\\\">&icirc;ntreținere. Echipa noastră se asigură că toate instalațiile sunt realizate conform normativelor,</p>\\r\\n<p class=\\\"p1\\\">respect&acirc;nd cele mai &icirc;nalte standarde de siguranță. Fie că este vorba de o instalație electrică nouă</p>\\r\\n<p class=\\\"p1\\\">sau de remedierea unei defecțiuni, &icirc;ți garantăm o lucrare de calitate și eficiență maximă.</p>\"}\";s:5:\"image\";s:52:\"service/nOeAeSpJ4SOqvVRll0bEnttJAo7kL3qoTA8hWTZJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:53:40\";s:10:\"updated_at\";s:19:\"2025-02-24 07:53:40\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:4;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:20;s:5:\"title\";s:29:\"{\"ro\":\"Instalații sanitare\"}\";s:4:\"slug\";s:10:\"services-4\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:559:\"{\"ro\":\"<p class=\\\"p1\\\">Ne ocupăm de instalarea, repararea și &icirc;ntreținerea instalațiilor sanitare, inclusiv a sistemelor de</p>\\r\\n<p class=\\\"p1\\\">apă potabilă, canalizare și apă caldă. Folosim echipamente moderne și soluții durabile pentru a</p>\\r\\n<p class=\\\"p1\\\">garanta că instalațiile tale funcționează eficient și nu sunt predispuse la defecțiuni. Fie că ești &icirc;ntr-</p>\\r\\n<p class=\\\"p1\\\">un proiect de construcție nouă sau de renovare, asigurăm implementarea corectă a sistemelor</p>\\r\\n<p class=\\\"p1\\\">sanitare.</p>\"}\";s:5:\"image\";s:52:\"service/5czQdZ8Xa7uTkIAMBS76qwelsrhmrwnY5e6U7B5i.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:54:17\";s:10:\"updated_at\";s:19:\"2025-02-24 07:54:17\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:20;s:5:\"title\";s:29:\"{\"ro\":\"Instalații sanitare\"}\";s:4:\"slug\";s:10:\"services-4\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:559:\"{\"ro\":\"<p class=\\\"p1\\\">Ne ocupăm de instalarea, repararea și &icirc;ntreținerea instalațiilor sanitare, inclusiv a sistemelor de</p>\\r\\n<p class=\\\"p1\\\">apă potabilă, canalizare și apă caldă. Folosim echipamente moderne și soluții durabile pentru a</p>\\r\\n<p class=\\\"p1\\\">garanta că instalațiile tale funcționează eficient și nu sunt predispuse la defecțiuni. Fie că ești &icirc;ntr-</p>\\r\\n<p class=\\\"p1\\\">un proiect de construcție nouă sau de renovare, asigurăm implementarea corectă a sistemelor</p>\\r\\n<p class=\\\"p1\\\">sanitare.</p>\"}\";s:5:\"image\";s:52:\"service/5czQdZ8Xa7uTkIAMBS76qwelsrhmrwnY5e6U7B5i.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:54:17\";s:10:\"updated_at\";s:19:\"2025-02-24 07:54:17\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:5;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:21;s:5:\"title\";s:33:\"{\"ro\":\"Realizarea fațadelor 3D\"}\";s:4:\"slug\";s:10:\"services-5\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:417:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții inovative pentru realizarea fațadelor 3D, care adaugă un caracter modern și</p>\\r\\n<p class=\\\"p1\\\">deosebit clădirilor tale. Cu ajutorul tehnologiei de ultimă generație și a materialelor de calitate,</p>\\r\\n<p class=\\\"p1\\\">transformăm fațadele simple &icirc;n elemente vizuale impresionante, care pun &icirc;n valoare designul</p>\\r\\n<p class=\\\"p1\\\">arhitectural.</p>\"}\";s:5:\"image\";s:52:\"service/oOnWX7Zvi2OSrxkDQlWoAWgR5UjfGneBzNZ5C2B8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:55:01\";s:10:\"updated_at\";s:19:\"2025-02-24 07:55:01\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:21;s:5:\"title\";s:33:\"{\"ro\":\"Realizarea fațadelor 3D\"}\";s:4:\"slug\";s:10:\"services-5\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:417:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții inovative pentru realizarea fațadelor 3D, care adaugă un caracter modern și</p>\\r\\n<p class=\\\"p1\\\">deosebit clădirilor tale. Cu ajutorul tehnologiei de ultimă generație și a materialelor de calitate,</p>\\r\\n<p class=\\\"p1\\\">transformăm fațadele simple &icirc;n elemente vizuale impresionante, care pun &icirc;n valoare designul</p>\\r\\n<p class=\\\"p1\\\">arhitectural.</p>\"}\";s:5:\"image\";s:52:\"service/oOnWX7Zvi2OSrxkDQlWoAWgR5UjfGneBzNZ5C2B8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 07:55:01\";s:10:\"updated_at\";s:19:\"2025-02-24 07:55:01\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:6;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:22;s:5:\"title\";s:27:\"{\"ro\":\"Izolație termică\"}\";s:4:\"slug\";s:10:\"services-6\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:524:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete de <strong>izolație termică</strong> pentru clădiri rezidențiale și</p>\\r\\n<p class=\\\"p1\\\">comerciale. Folosim materiale eficiente (polistiren expandat, vată minerală, panouri PIR) pentru a</p>\\r\\n<p class=\\\"p1\\\">asigura protecția termică și eficiența energetică a clădirii tale, contribuind la reducerea costurilor</p>\\r\\n<p class=\\\"p1\\\">de &icirc;ncălzire și menținerea unei temperaturi constante &icirc;n interior.</p>\"}\";s:5:\"image\";s:52:\"service/yAvA1Cyw3f8wHaWZmHnpV6Z9ZIOkGBOyPwF0i0YN.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:06:34\";s:10:\"updated_at\";s:19:\"2025-02-24 08:06:34\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:22;s:5:\"title\";s:27:\"{\"ro\":\"Izolație termică\"}\";s:4:\"slug\";s:10:\"services-6\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:524:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete de <strong>izolație termică</strong> pentru clădiri rezidențiale și</p>\\r\\n<p class=\\\"p1\\\">comerciale. Folosim materiale eficiente (polistiren expandat, vată minerală, panouri PIR) pentru a</p>\\r\\n<p class=\\\"p1\\\">asigura protecția termică și eficiența energetică a clădirii tale, contribuind la reducerea costurilor</p>\\r\\n<p class=\\\"p1\\\">de &icirc;ncălzire și menținerea unei temperaturi constante &icirc;n interior.</p>\"}\";s:5:\"image\";s:52:\"service/yAvA1Cyw3f8wHaWZmHnpV6Z9ZIOkGBOyPwF0i0YN.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:06:34\";s:10:\"updated_at\";s:19:\"2025-02-24 08:06:34\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:7;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:23;s:5:\"title\";s:28:\"{\"ro\":\"Pardoseli epoxidice\"}\";s:4:\"slug\";s:10:\"services-7\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:65:\"{\"ro\":\"<p class=\\\"p1\\\"><strong>Pardoseli epoxidice</strong></p>\"}\";s:5:\"image\";s:52:\"service/DEFTpDvdvxENZImNTHgjHvh351sLkal4TGO4DemL.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:10\";s:10:\"updated_at\";s:19:\"2025-02-24 08:07:10\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:23;s:5:\"title\";s:28:\"{\"ro\":\"Pardoseli epoxidice\"}\";s:4:\"slug\";s:10:\"services-7\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:65:\"{\"ro\":\"<p class=\\\"p1\\\"><strong>Pardoseli epoxidice</strong></p>\"}\";s:5:\"image\";s:52:\"service/DEFTpDvdvxENZImNTHgjHvh351sLkal4TGO4DemL.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:10\";s:10:\"updated_at\";s:19:\"2025-02-24 08:07:10\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:8;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:24;s:5:\"title\";s:51:\"{\"ro\":\"Construcție garduri din metal sau piatră\"}\";s:4:\"slug\";s:10:\"services-8\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:488:\"{\"ro\":\"<p class=\\\"p1\\\">Realizăm <strong>garduri din metal sau piatră</strong> personalizate, care oferă siguranță și un aspect estetic</p>\\r\\n<p class=\\\"p1\\\">plăcut. Indiferent de tipul de material ales, lucrăm cu profesionalism și respectăm toate cerințele</p>\\r\\n<p class=\\\"p1\\\">tale pentru a crea un gard durabil și de calitate. Oferim at&acirc;t soluții standard, c&acirc;t și proiecte</p>\\r\\n<p class=\\\"p1\\\">speciale, &icirc;n funcție de preferințele clientului</p>\"}\";s:5:\"image\";s:52:\"service/iFsPzj1SthYmdcZ25G1llKb5BveGblrsVMDUhPRw.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:39\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:10\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:24;s:5:\"title\";s:51:\"{\"ro\":\"Construcție garduri din metal sau piatră\"}\";s:4:\"slug\";s:10:\"services-8\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:488:\"{\"ro\":\"<p class=\\\"p1\\\">Realizăm <strong>garduri din metal sau piatră</strong> personalizate, care oferă siguranță și un aspect estetic</p>\\r\\n<p class=\\\"p1\\\">plăcut. Indiferent de tipul de material ales, lucrăm cu profesionalism și respectăm toate cerințele</p>\\r\\n<p class=\\\"p1\\\">tale pentru a crea un gard durabil și de calitate. Oferim at&acirc;t soluții standard, c&acirc;t și proiecte</p>\\r\\n<p class=\\\"p1\\\">speciale, &icirc;n funcție de preferințele clientului</p>\"}\";s:5:\"image\";s:52:\"service/iFsPzj1SthYmdcZ25G1llKb5BveGblrsVMDUhPRw.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:07:39\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:10\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:9;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:25;s:5:\"title\";s:35:\"{\"ro\":\"Instalare geamuri și uși\"}\";s:4:\"slug\";s:10:\"services-9\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:460:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm geamuri și uși de orice tip: feronerie de calitate, izolație termică și fonică excelentă. Fie</p>\\r\\n<p class=\\\"p1\\\">că este vorba de feronerie standard sau de sisteme de securitate avansate, echipa noastră se</p>\\r\\n<p class=\\\"p1\\\">asigură că montajul este realizat corect și că ușile și feroneriile vor funcționa perfect, protej&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">eficient locuința sau spațiul comercial.</p>\"}\";s:5:\"image\";s:52:\"service/GmCXQqX5FaO9Pa6ffV9thsa6u00CPapbSatwOVEV.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:08:51\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:51\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:25;s:5:\"title\";s:35:\"{\"ro\":\"Instalare geamuri și uși\"}\";s:4:\"slug\";s:10:\"services-9\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:460:\"{\"ro\":\"<p class=\\\"p1\\\">Instalăm geamuri și uși de orice tip: feronerie de calitate, izolație termică și fonică excelentă. Fie</p>\\r\\n<p class=\\\"p1\\\">că este vorba de feronerie standard sau de sisteme de securitate avansate, echipa noastră se</p>\\r\\n<p class=\\\"p1\\\">asigură că montajul este realizat corect și că ușile și feroneriile vor funcționa perfect, protej&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">eficient locuința sau spațiul comercial.</p>\"}\";s:5:\"image\";s:52:\"service/GmCXQqX5FaO9Pa6ffV9thsa6u00CPapbSatwOVEV.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:08:51\";s:10:\"updated_at\";s:19:\"2025-02-24 08:08:51\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:10;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:26;s:5:\"title\";s:30:\"{\"ro\":\"Lucrări de dulgherie\"}\";s:4:\"slug\";s:11:\"services-10\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:526:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim <strong>lucrări de dulgherie</strong> pentru diverse tipuri de construcții: case, hale industriale, structuri</p>\\r\\n<p class=\\\"p1\\\">din lemn sau elemente de decor din lemn. Realizăm lucrări precise și rezistente, utiliz&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">materiale de calitate și respect&acirc;nd toate reglementările de siguranță. Dulgherii noștri sunt experți</p>\\r\\n<p class=\\\"p1\\\">&icirc;n tăierea, montarea și fixarea componentelor din lemn pentru orice tip de construcție.</p>\"}\";s:5:\"image\";s:52:\"service/Ta9LaDoKjN0eXRYD3apdY9S71MyADCyiTwxLxriq.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:09:52\";s:10:\"updated_at\";s:19:\"2025-02-24 08:09:52\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:26;s:5:\"title\";s:30:\"{\"ro\":\"Lucrări de dulgherie\"}\";s:4:\"slug\";s:11:\"services-10\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:526:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim <strong>lucrări de dulgherie</strong> pentru diverse tipuri de construcții: case, hale industriale, structuri</p>\\r\\n<p class=\\\"p1\\\">din lemn sau elemente de decor din lemn. Realizăm lucrări precise și rezistente, utiliz&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">materiale de calitate și respect&acirc;nd toate reglementările de siguranță. Dulgherii noștri sunt experți</p>\\r\\n<p class=\\\"p1\\\">&icirc;n tăierea, montarea și fixarea componentelor din lemn pentru orice tip de construcție.</p>\"}\";s:5:\"image\";s:52:\"service/Ta9LaDoKjN0eXRYD3apdY9S71MyADCyiTwxLxriq.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:09:52\";s:10:\"updated_at\";s:19:\"2025-02-24 08:09:52\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:11;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:27;s:5:\"title\";s:59:\"{\"ro\":\"Construcția și montajul acoperișurilor din zinc\"}\";s:4:\"slug\";s:11:\"services-11\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:465:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții complete pentru <strong>acoperișuri din zinc</strong>, un material durabil, ușor și rezistent la</p>\\r\\n<p class=\\\"p1\\\">intemperii. Montăm acoperișuri din zinc pentru case, clădiri comerciale și industriale,</p>\\r\\n<p class=\\\"p1\\\">asigur&acirc;ndu-ne că fiecare etapă a procesului de montaj este realizată conform standardelor, pentru</p>\\r\\n<p class=\\\"p1\\\">o durabilitate crescută și o estetică deosebită.</p>\"}\";s:5:\"image\";s:52:\"service/ihiyjkQWRYmnB7kQPaM1iaVgeSvWcctsDyJwRRhJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:10:36\";s:10:\"updated_at\";s:19:\"2025-02-24 08:10:36\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:27;s:5:\"title\";s:59:\"{\"ro\":\"Construcția și montajul acoperișurilor din zinc\"}\";s:4:\"slug\";s:11:\"services-11\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:465:\"{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții complete pentru <strong>acoperișuri din zinc</strong>, un material durabil, ușor și rezistent la</p>\\r\\n<p class=\\\"p1\\\">intemperii. Montăm acoperișuri din zinc pentru case, clădiri comerciale și industriale,</p>\\r\\n<p class=\\\"p1\\\">asigur&acirc;ndu-ne că fiecare etapă a procesului de montaj este realizată conform standardelor, pentru</p>\\r\\n<p class=\\\"p1\\\">o durabilitate crescută și o estetică deosebită.</p>\"}\";s:5:\"image\";s:52:\"service/ihiyjkQWRYmnB7kQPaM1iaVgeSvWcctsDyJwRRhJ.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:10:36\";s:10:\"updated_at\";s:19:\"2025-02-24 08:10:36\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}i:12;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:28;s:5:\"title\";s:22:\"{\"ro\":\"Montare pavaj\"}\";s:4:\"slug\";s:11:\"services-12\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:529:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii de <strong>montare pavaj</strong> pentru drumuri, alei, parcări sau grădini.</p>\\r\\n<p class=\\\"p1\\\">Alegem materiale de calitate și utilizăm tehnici moderne de montaj, astfel &icirc;nc&acirc;t pavajul să fie</p>\\r\\n<p class=\\\"p1\\\">uniform, durabil și estetic. Indiferent de tipul de pavaj dorit, echipa noastră va realiza lucrările cu</p>\\r\\n<p class=\\\"p1\\\">precizie, asigur&acirc;ndu-se că rezultatul final este conform cerințelor tale.</p>\"}\";s:5:\"image\";s:52:\"service/XQeND97cZr7wRsH6dyrQfxggYNyiucdih25GkFD8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:11:07\";s:10:\"updated_at\";s:19:\"2025-02-24 08:11:07\";s:7:\"special\";i:0;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:28;s:5:\"title\";s:22:\"{\"ro\":\"Montare pavaj\"}\";s:4:\"slug\";s:11:\"services-12\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:529:\"{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii de <strong>montare pavaj</strong> pentru drumuri, alei, parcări sau grădini.</p>\\r\\n<p class=\\\"p1\\\">Alegem materiale de calitate și utilizăm tehnici moderne de montaj, astfel &icirc;nc&acirc;t pavajul să fie</p>\\r\\n<p class=\\\"p1\\\">uniform, durabil și estetic. Indiferent de tipul de pavaj dorit, echipa noastră va realiza lucrările cu</p>\\r\\n<p class=\\\"p1\\\">precizie, asigur&acirc;ndu-se că rezultatul final este conform cerințelor tale.</p>\"}\";s:5:\"image\";s:52:\"service/XQeND97cZr7wRsH6dyrQfxggYNyiucdih25GkFD8.jpg\";s:9:\"is_active\";i:1;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-24 08:11:07\";s:10:\"updated_at\";s:19:\"2025-02-24 08:11:07\";s:7:\"special\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2055782685),
('library_cache_settings.cache_key', 'a:0:{}', 2055782685),
('library_cache_types', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:18:\"App\\Models\\Service\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"services\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:14:{s:2:\"id\";i:8;s:5:\"title\";s:27:\"{\"ro\":\"Title_Luxury_Villa\"}\";s:4:\"slug\";s:7:\"options\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:32:\"{\"ro\":\"text about luxury villa\"}\";s:5:\"image\";s:52:\"service/dXdTxPVvRKGYCpAlpF5s2ME9VGr5pZSeL2SiDgeU.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-22 11:05:36\";s:10:\"updated_at\";s:19:\"2025-02-22 11:05:36\";s:7:\"special\";i:1;}s:11:\"\0*\0original\";a:14:{s:2:\"id\";i:8;s:5:\"title\";s:27:\"{\"ro\":\"Title_Luxury_Villa\"}\";s:4:\"slug\";s:7:\"options\";s:9:\"seo_title\";s:2:\"[]\";s:15:\"seo_description\";s:2:\"[]\";s:12:\"seo_keywords\";s:2:\"[]\";s:11:\"description\";s:2:\"[]\";s:4:\"text\";s:32:\"{\"ro\":\"text about luxury villa\"}\";s:5:\"image\";s:52:\"service/dXdTxPVvRKGYCpAlpF5s2ME9VGr5pZSeL2SiDgeU.jpg\";s:9:\"is_active\";i:0;s:5:\"order\";i:0;s:10:\"created_at\";s:19:\"2025-02-22 11:05:36\";s:10:\"updated_at\";s:19:\"2025-02-22 11:05:36\";s:7:\"special\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:9:\"is_active\";i:5;s:9:\"seo_title\";i:6;s:15:\"seo_description\";i:7;s:12:\"seo_keywords\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:15:\"\0*\0translatable\";a:6:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:4:\"text\";i:3;s:9:\"seo_title\";i:4;s:15:\"seo_description\";i:5;s:12:\"seo_keywords\";}s:20:\"\0*\0translationLocale\";N;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2055782685),
('library_cache_vars', 'a:17:{s:7:\"address\";s:33:\"Nicolae Zelinschi 15/3 Chișinău\";s:5:\"email\";s:27:\"rapidconstructmda@gmail.com\";s:9:\"intrebari\";s:11:\"Întrebări\";s:59:\"rapid_construct_este_o_companie_specializata_in_constructii\";s:62:\"Rapid Construct este o companie specializată în construcții\";s:21:\"cele_mai_bune_optiuni\";s:22:\"Cele mai bune opțiuni\";s:41:\"gaseste_ti_cea_mai_buna_oferta_chiar_acum\";s:47:\"Găsește-ți cea mai bună ofertă chiar acum!\";s:20:\"programeaza_o_vizita\";s:22:\"Programează o vizită\";s:11:\"proprietati\";s:13:\"Proprietăți\";s:65:\"oferim_cele_mai_bune_servicii_de_constructie_pentru_proiectul_tau\";s:67:\"Oferim cele mai bune servicii de construcție pentru proiectul tău\";s:53:\"obtine_o_privire_mai_apropiata_si_o_senzatie_diferita\";s:59:\"Obține o privire mai apropiată și o senzație diferită.\";s:16:\"numar_de_telefon\";s:17:\"Număr de telefon\";s:5:\"phone\";s:15:\"+373-77-777-777\";s:17:\"e_mail_de_afaceri\";s:17:\"E-mail de afaceri\";s:7:\"adress2\";s:22:\"Nicolae Zelinschi 15/3\";s:13:\"trimite_mesaj\";s:13:\"Trimite mesaj\";s:10:\"contact_us\";s:17:\"| Contactează-ne\";s:29:\"ia_legatura_cu_agentii_nostri\";s:32:\"Ia legătura cu agenții noștri\";}', 2056044734);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `is_read`, `created_at`, `updated_at`, `phone`) VALUES
(1, '11111', 'moscvin@test.com', '23131', 1, '2025-02-27 18:47:15', '2025-02-27 18:47:39', NULL),
(2, 'test', 'test@gmail.com', '1111', 0, '2025-02-27 19:22:43', '2025-02-27 19:22:43', '1111'),
(3, 'test222', 'test111@gmail.com', '4343', 0, '2025-02-27 19:23:06', '2025-02-27 19:23:06', '21313131');

-- --------------------------------------------------------

--
-- Table structure for table `contexts`
--

CREATE TABLE `contexts` (
  `id` bigint UNSIGNED NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `media` text COLLATE utf8mb4_unicode_ci,
  `page_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Slug'
) ;

--
-- Dumping data for table `contexts`
--

INSERT INTO `contexts` (`id`, `text`, `media`, `page_id`, `created_at`, `updated_at`, `hint`, `slug`) VALUES
(1, '{\"ro\":\"<h2>Rapid Construct Soluția Ta Pentru Construcții de Top</h2>\"}', NULL, 1, '2025-02-17 18:30:48', '2025-02-17 19:41:55', 'Rapid-Construct', 'slider');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `value` double NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `with_plus` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2020_10_04_115514_create_moonshine_roles_table', 1),
(5, '2020_10_05_173148_create_moonshine_tables', 1),
(6, '2022_12_19_115549_create_moonshine_socialites_table', 1),
(7, '2024_03_23_192004_create_permission_tables', 1),
(8, '2024_03_23_205830_create_settings_table', 1),
(9, '2024_03_23_213700_create_vars_table', 1),
(10, '2024_03_24_222932_create_pages_table', 1),
(11, '2024_03_24_224303_create_contexts_table', 1),
(12, '2024_03_25_170449_add_order_to_contexts_table', 1),
(13, '2024_03_25_172527_add_hint_to_contexts_to_table', 1),
(14, '2024_03_25_184710_create_services_table', 1),
(15, '2024_03_26_134508_create_counters_table', 1),
(16, '2024_03_26_140741_add_unit_to_counters_table', 1),
(17, '2024_03_26_193843_add_order_to_services_table', 1),
(18, '2024_03_26_194547_add_slug_to_services_table', 1),
(19, '2024_03_26_195243_create_partners_table', 1),
(20, '2024_03_26_201403_create_questions_table', 1),
(21, '2024_03_30_225123_create_representations_table', 1),
(22, '2024_03_30_231724_create_contacts_table', 1),
(23, '2024_03_30_235741_add_slug_to_contexts_table', 1),
(24, '2024_03_31_000447_remove_order_on_contexts_table', 1),
(25, '2024_04_08_115638_add_special_service_to_services_table', 1),
(26, '2024_04_08_124248_add_seo_to_services_table', 1),
(27, '2024_04_08_125252_create_blogs_table', 1),
(28, '2024_04_08_132125_add_image_to_blog_table', 1),
(29, '2024_04_08_134217_add_short_description_to_blog_table', 1),
(30, '9999_12_20_173629_create_notifications_table', 1),
(31, 'add_role_priority_to_roles_table', 1),
(32, 'create_or_supplement_users_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `moonshine_socialites`
--

CREATE TABLE `moonshine_socialites` (
  `id` bigint UNSIGNED NOT NULL,
  `moonshine_user_id` bigint UNSIGNED NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moonshine_users`
--

CREATE TABLE `moonshine_users` (
  `id` bigint UNSIGNED NOT NULL,
  `moonshine_user_role_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moonshine_user_roles`
--

CREATE TABLE `moonshine_user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moonshine_user_roles`
--

INSERT INTO `moonshine_user_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-02-09 12:33:17', '2025-02-09 12:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `banner_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `seo_title`, `seo_description`, `seo_keywords`, `banner_media`, `created_at`, `updated_at`) VALUES
(1, '{\"ro\":\"Principala\"}', '/', '[]', '[]', '[]', 'pages/mIaP31fxejupfEU6Cbta4rAFijmfqXVLVJxi1TX8.jpg', '2025-02-09 12:39:36', '2025-02-09 14:02:10'),
(2, '{\"ro\":\"Proprietăți\",\"ru\":\"Cвойство\"}', 'properties', '[]', '[]', '[]', NULL, '2025-02-09 13:09:35', '2025-02-09 13:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
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

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `order`, `created_at`, `updated_at`) VALUES
(1, '{\"ro\":\"Cum pot să găsesc locația?\"}', '{\"ro\":\"Pe strada Nicolae Zelinschi\"}', 1, '2025-02-17 20:02:43', '2025-02-17 20:02:43'),
(2, '{\"ro\":\"Cele mai folositoare linkuri\"}', '{\"ro\":\"Instagram test\\r\\nFacebook\\r\\nLInkedin\"}', 2, '2025-02-17 20:03:34', '2025-02-22 13:41:11'),
(3, '{\"ro\":\"Cine e proprietarul?\"}', '{\"ro\":\"Mihai\"}', 3, '2025-02-17 20:03:45', '2025-02-17 20:03:57'),
(4, '{\"ro\":\"Cine este volcinschii\"}', '{\"ro\":\"alex\"}', 4, '2025-02-24 18:37:18', '2025-02-24 18:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `representations`
--

CREATE TABLE `representations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_priority` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `seo_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `seo_title`, `seo_description`, `seo_keywords`, `description`, `text`, `image`, `is_active`, `order`, `created_at`, `updated_at`, `special`) VALUES
(8, '{\"ro\":\"Title_Luxury_Villa\"}', 'options', '[]', '[]', '[]', '[]', '{\"ro\":\"text about luxury villa\"}', 'service/dXdTxPVvRKGYCpAlpF5s2ME9VGr5pZSeL2SiDgeU.jpg', 0, 0, '2025-02-22 11:05:36', '2025-02-22 11:05:36', 1),
(16, '{\"ro\":\"Instalarea și montarea acoperișurilor\"}', 'services', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete pentru instalarea și montarea acoperișurilor din</p>\\r\\n<p class=\\\"p1\\\">diferite tipuri de materiale (țiglă, tabla, șindrilă bituminoasă etc.). Echipa noastră se ocupă de</p>\\r\\n<p class=\\\"p1\\\">toate etapele: de la pregătirea structurii de suport, la montajul propriu-zis și finisaje, asigur&acirc;ndu-</p>\\r\\n<p class=\\\"p1\\\">se că acoperișul este 100% funcțional și etanș, protej&acirc;nd astfel &icirc;ntreaga clădire.</p>\"}', 'service/SOZvhuMqo5gCX9JyIDu1KCCUkaEz47jJnUvW4F5a.jpg', 0, 0, '2025-02-24 07:51:26', '2025-02-24 07:51:26', 0),
(17, '{\"ro\":\"Reparații și renovări interioare și exterioare\"}', 'services-1', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Fie că vrei să recondiționezi băile, să refaci instalațiile sau să &icirc;mbunătățești aspectul fațadei,</p>\\r\\n<p class=\\\"p1\\\"><strong>Rapid Construct</strong> &icirc;ți oferă soluții complete pentru reparații și renovări. Ne ocupăm de toate</p>\\r\\n<p class=\\\"p1\\\">tipurile de lucrări: de la reparații structurale, schimbări de instalații, p&acirc;nă la finisaje de interior și</p>\\r\\n<p class=\\\"p1\\\">exterior, cu accent pe durabilitate și eficiență energetică.</p>\"}', 'service/GZEaijS7Bhnb8x1EeAerl2Hn588lPtKhXpSoFBOj.jpg', 1, 0, '2025-02-24 07:52:23', '2025-02-24 07:52:23', 0),
(18, '{\"ro\":\"Montaj plăci ceramice\"}', 'services-2', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Instalăm plăci ceramice de toate tipurile, adaptate necesităților tale (gresie, faianță, mozaic etc.).</p>\\r\\n<p class=\\\"p1\\\">Procesul nostru include pregătirea corectă a suprafeței, tăierea precisă a plăcilor și aplicarea</p>\\r\\n<p class=\\\"p1\\\">adezivului pentru o fixare optimă. Asigurăm un montaj durabil, estetic și rezistent &icirc;n timp,</p>\\r\\n<p class=\\\"p1\\\">indiferent dacă este vorba despre băi, bucătării sau spații comerciale.</p>\"}', 'service/Iajhr7IQ7DfFZ5qW4i2WuUtxIKtuqK3jzUiFLVSr.jpg', 0, 0, '2025-02-24 07:52:59', '2025-02-24 07:52:59', 0),
(19, '{\"ro\":\"Servicii profesionale de electricitate\"}', 'services-3', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Oferim servicii complete pentru instalații electrice, de la proiectare și instalare p&acirc;nă la reparații și</p>\\r\\n<p class=\\\"p1\\\">&icirc;ntreținere. Echipa noastră se asigură că toate instalațiile sunt realizate conform normativelor,</p>\\r\\n<p class=\\\"p1\\\">respect&acirc;nd cele mai &icirc;nalte standarde de siguranță. Fie că este vorba de o instalație electrică nouă</p>\\r\\n<p class=\\\"p1\\\">sau de remedierea unei defecțiuni, &icirc;ți garantăm o lucrare de calitate și eficiență maximă.</p>\"}', 'service/nOeAeSpJ4SOqvVRll0bEnttJAo7kL3qoTA8hWTZJ.jpg', 1, 0, '2025-02-24 07:53:40', '2025-02-24 07:53:40', 0),
(20, '{\"ro\":\"Instalații sanitare\"}', 'services-4', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Ne ocupăm de instalarea, repararea și &icirc;ntreținerea instalațiilor sanitare, inclusiv a sistemelor de</p>\\r\\n<p class=\\\"p1\\\">apă potabilă, canalizare și apă caldă. Folosim echipamente moderne și soluții durabile pentru a</p>\\r\\n<p class=\\\"p1\\\">garanta că instalațiile tale funcționează eficient și nu sunt predispuse la defecțiuni. Fie că ești &icirc;ntr-</p>\\r\\n<p class=\\\"p1\\\">un proiect de construcție nouă sau de renovare, asigurăm implementarea corectă a sistemelor</p>\\r\\n<p class=\\\"p1\\\">sanitare.</p>\"}', 'service/5czQdZ8Xa7uTkIAMBS76qwelsrhmrwnY5e6U7B5i.jpg', 1, 0, '2025-02-24 07:54:17', '2025-02-24 07:54:17', 0),
(21, '{\"ro\":\"Realizarea fațadelor 3D\"}', 'services-5', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții inovative pentru realizarea fațadelor 3D, care adaugă un caracter modern și</p>\\r\\n<p class=\\\"p1\\\">deosebit clădirilor tale. Cu ajutorul tehnologiei de ultimă generație și a materialelor de calitate,</p>\\r\\n<p class=\\\"p1\\\">transformăm fațadele simple &icirc;n elemente vizuale impresionante, care pun &icirc;n valoare designul</p>\\r\\n<p class=\\\"p1\\\">arhitectural.</p>\"}', 'service/oOnWX7Zvi2OSrxkDQlWoAWgR5UjfGneBzNZ5C2B8.jpg', 1, 0, '2025-02-24 07:55:01', '2025-02-24 07:55:01', 0),
(22, '{\"ro\":\"Izolație termică\"}', 'services-6', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii complete de <strong>izolație termică</strong> pentru clădiri rezidențiale și</p>\\r\\n<p class=\\\"p1\\\">comerciale. Folosim materiale eficiente (polistiren expandat, vată minerală, panouri PIR) pentru a</p>\\r\\n<p class=\\\"p1\\\">asigura protecția termică și eficiența energetică a clădirii tale, contribuind la reducerea costurilor</p>\\r\\n<p class=\\\"p1\\\">de &icirc;ncălzire și menținerea unei temperaturi constante &icirc;n interior.</p>\"}', 'service/yAvA1Cyw3f8wHaWZmHnpV6Z9ZIOkGBOyPwF0i0YN.jpg', 0, 0, '2025-02-24 08:06:34', '2025-02-24 08:06:34', 0),
(23, '{\"ro\":\"Pardoseli epoxidice\"}', 'services-7', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\"><strong>Pardoseli epoxidice</strong></p>\"}', 'service/DEFTpDvdvxENZImNTHgjHvh351sLkal4TGO4DemL.jpg', 0, 0, '2025-02-24 08:07:10', '2025-02-24 08:07:10', 0),
(24, '{\"ro\":\"Construcție garduri din metal sau piatră\"}', 'services-8', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Realizăm <strong>garduri din metal sau piatră</strong> personalizate, care oferă siguranță și un aspect estetic</p>\\r\\n<p class=\\\"p1\\\">plăcut. Indiferent de tipul de material ales, lucrăm cu profesionalism și respectăm toate cerințele</p>\\r\\n<p class=\\\"p1\\\">tale pentru a crea un gard durabil și de calitate. Oferim at&acirc;t soluții standard, c&acirc;t și proiecte</p>\\r\\n<p class=\\\"p1\\\">speciale, &icirc;n funcție de preferințele clientului</p>\"}', 'service/iFsPzj1SthYmdcZ25G1llKb5BveGblrsVMDUhPRw.jpg', 1, 0, '2025-02-24 08:07:39', '2025-02-24 08:08:10', 0),
(25, '{\"ro\":\"Instalare geamuri și uși\"}', 'services-9', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Instalăm geamuri și uși de orice tip: feronerie de calitate, izolație termică și fonică excelentă. Fie</p>\\r\\n<p class=\\\"p1\\\">că este vorba de feronerie standard sau de sisteme de securitate avansate, echipa noastră se</p>\\r\\n<p class=\\\"p1\\\">asigură că montajul este realizat corect și că ușile și feroneriile vor funcționa perfect, protej&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">eficient locuința sau spațiul comercial.</p>\"}', 'service/GmCXQqX5FaO9Pa6ffV9thsa6u00CPapbSatwOVEV.jpg', 1, 0, '2025-02-24 08:08:51', '2025-02-24 08:08:51', 0),
(26, '{\"ro\":\"Lucrări de dulgherie\"}', 'services-10', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Oferim <strong>lucrări de dulgherie</strong> pentru diverse tipuri de construcții: case, hale industriale, structuri</p>\\r\\n<p class=\\\"p1\\\">din lemn sau elemente de decor din lemn. Realizăm lucrări precise și rezistente, utiliz&acirc;nd</p>\\r\\n<p class=\\\"p1\\\">materiale de calitate și respect&acirc;nd toate reglementările de siguranță. Dulgherii noștri sunt experți</p>\\r\\n<p class=\\\"p1\\\">&icirc;n tăierea, montarea și fixarea componentelor din lemn pentru orice tip de construcție.</p>\"}', 'service/Ta9LaDoKjN0eXRYD3apdY9S71MyADCyiTwxLxriq.jpg', 1, 0, '2025-02-24 08:09:52', '2025-02-24 08:09:52', 0),
(27, '{\"ro\":\"Construcția și montajul acoperișurilor din zinc\"}', 'services-11', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">Oferim soluții complete pentru <strong>acoperișuri din zinc</strong>, un material durabil, ușor și rezistent la</p>\\r\\n<p class=\\\"p1\\\">intemperii. Montăm acoperișuri din zinc pentru case, clădiri comerciale și industriale,</p>\\r\\n<p class=\\\"p1\\\">asigur&acirc;ndu-ne că fiecare etapă a procesului de montaj este realizată conform standardelor, pentru</p>\\r\\n<p class=\\\"p1\\\">o durabilitate crescută și o estetică deosebită.</p>\"}', 'service/ihiyjkQWRYmnB7kQPaM1iaVgeSvWcctsDyJwRRhJ.jpg', 1, 0, '2025-02-24 08:10:36', '2025-02-24 08:10:36', 0),
(28, '{\"ro\":\"Montare pavaj\"}', 'services-12', '[]', '[]', '[]', '[]', '{\"ro\":\"<p class=\\\"p1\\\">La <strong>Rapid Construct</strong>, oferim servicii de <strong>montare pavaj</strong> pentru drumuri, alei, parcări sau grădini.</p>\\r\\n<p class=\\\"p1\\\">Alegem materiale de calitate și utilizăm tehnici moderne de montaj, astfel &icirc;nc&acirc;t pavajul să fie</p>\\r\\n<p class=\\\"p1\\\">uniform, durabil și estetic. Indiferent de tipul de pavaj dorit, echipa noastră va realiza lucrările cu</p>\\r\\n<p class=\\\"p1\\\">precizie, asigur&acirc;ndu-se că rezultatul final este conform cerințelor tale.</p>\"}', 'service/XQeND97cZr7wRsH6dyrQfxggYNyiucdih25GkFD8.jpg', 1, 0, '2025-02-24 08:11:07', '2025-02-24 08:11:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'moscvin.2002@gmail.com', 'moscvin.2002@gmail.com', NULL, '$2y$12$1EKWy.SgXvLYed1P9I134u5GcfEgz9pbppPWAxEia0jFDDLbpPa8m', 'JaIFrg9GO6lscU4jut55bNoUJkvG9J7tMf3rJtVp3CJJT1RXT0Am9zWLQGNo', '2025-02-09 12:35:03', '2025-02-09 12:35:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vars`
--

CREATE TABLE `vars` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vars`
--

INSERT INTO `vars` (`id`, `slug`, `value`, `created_at`, `updated_at`) VALUES
(1, 'address', '{\"ro\":\"Nicolae Zelinschi 15/3 Chișinău\"}', '2025-02-09 12:35:48', '2025-02-09 12:36:34'),
(2, 'email', '{\"ro\":\"rapidconstructmda@gmail.com\"}', '2025-02-09 12:36:16', '2025-02-09 12:36:38'),
(3, 'intrebari', '{\"ro\":\"Întrebări\"}', '2025-02-17 20:09:58', '2025-02-17 20:09:58'),
(4, 'rapid_construct_este_o_companie_specializata_in_constructii', '{\"ro\":\"Rapid Construct este o companie specializată în construcții\"}', '2025-02-17 20:15:19', '2025-02-17 20:15:19'),
(5, 'cele_mai_bune_optiuni', '{\"ro\":\"Cele mai bune opțiuni\"}', '2025-02-22 07:59:31', '2025-02-22 07:59:31'),
(6, 'gaseste_ti_cea_mai_buna_oferta_chiar_acum', '{\"ro\":\"Găsește-ți cea mai bună ofertă chiar acum!\"}', '2025-02-22 08:01:37', '2025-02-22 08:01:37'),
(7, 'programeaza_o_vizita', '{\"ro\":\"Programează o vizită\"}', '2025-02-22 10:45:06', '2025-02-22 10:45:06'),
(8, 'proprietati', '{\"ro\":\"Proprietăți\"}', '2025-02-22 10:48:13', '2025-02-22 10:48:13'),
(9, 'oferim_cele_mai_bune_servicii_de_constructie_pentru_proiectul_tau', '{\"ro\":\"Oferim cele mai bune servicii de construcție pentru proiectul tău\"}', '2025-02-22 10:50:37', '2025-02-22 10:50:37'),
(10, 'obtine_o_privire_mai_apropiata_si_o_senzatie_diferita', '{\"ro\":\"Obține o privire mai apropiată și o senzație diferită.\"}', '2025-02-22 13:35:21', '2025-02-22 13:35:21'),
(11, 'numar_de_telefon', '{\"ro\":\"Număr de telefon\"}', '2025-02-27 18:48:42', '2025-02-27 18:48:42'),
(12, 'phone', '{\"ro\":\"+373-77-777-777\"}', '2025-02-27 18:49:53', '2025-02-27 18:49:53'),
(13, 'e_mail_de_afaceri', '{\"ro\":\"E-mail de afaceri\"}', '2025-02-27 18:58:38', '2025-02-27 18:58:38'),
(14, 'adress2', '{\"ro\":\"Nicolae Zelinschi 15/3\"}', '2025-02-27 19:08:18', '2025-02-27 19:10:15'),
(15, 'trimite_mesaj', '{\"ro\":\"Trimite mesaj\"}', '2025-02-27 19:25:27', '2025-02-27 19:25:27'),
(16, 'contact_us', '{\"ro\":\"| Contactează-ne\"}', '2025-02-27 19:28:17', '2025-02-27 19:29:22'),
(17, 'ia_legatura_cu_agentii_nostri', '{\"ro\":\"Ia legătura cu agenții noștri\"}', '2025-02-27 19:30:08', '2025-02-27 19:30:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contexts`
--
ALTER TABLE `contexts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contexts_page_id_foreign` (`page_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `moonshine_socialites`
--
ALTER TABLE `moonshine_socialites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `moonshine_socialites_driver_identity_unique` (`driver`,`identity`);

--
-- Indexes for table `moonshine_users`
--
ALTER TABLE `moonshine_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `moonshine_users_email_unique` (`email`),
  ADD KEY `moonshine_users_moonshine_user_role_id_foreign` (`moonshine_user_role_id`);

--
-- Indexes for table `moonshine_user_roles`
--
ALTER TABLE `moonshine_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `representations`
--
ALTER TABLE `representations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vars`
--
ALTER TABLE `vars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contexts`
--
ALTER TABLE `contexts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `moonshine_socialites`
--
ALTER TABLE `moonshine_socialites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moonshine_users`
--
ALTER TABLE `moonshine_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moonshine_user_roles`
--
ALTER TABLE `moonshine_user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `representations`
--
ALTER TABLE `representations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vars`
--
ALTER TABLE `vars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contexts`
--
ALTER TABLE `contexts`
  ADD CONSTRAINT `contexts_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `moonshine_users`
--
ALTER TABLE `moonshine_users`
  ADD CONSTRAINT `moonshine_users_moonshine_user_role_id_foreign` FOREIGN KEY (`moonshine_user_role_id`) REFERENCES `moonshine_user_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
