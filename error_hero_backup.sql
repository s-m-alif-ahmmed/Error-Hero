-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 01:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `error_hero_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` longtext NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `alt` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL,
  `count` int(11) DEFAULT NULL,
  `home_status` varchar(255) NOT NULL DEFAULT 'active',
  `popular_status` varchar(255) DEFAULT 'active',
  `blog_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `meta_author`, `meta_description`, `meta_keyword`, `author_name`, `image`, `alt`, `heading`, `slug`, `short_description`, `description`, `count`, `home_status`, `popular_status`, `blog_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'S M Alif Ahmmed', 'The Importance of Laravel 10 in Modern Web Development.', 'web development, Laravel 10 for beginners, Laravel, app development, Laravel 10 course for beginners, Laravel 10, Laravel 10 course, Learn Laravel 10 from scratch, Laravel development company, Laravel development services, Laravel development, Laravel app development services, Laravel 10 course from scratch, Laravel tutorial, learn web development in 5 minutes, software development, web development 2024, web development guide, web development roadmap', 'S M Alif Ahmmed', 'admin/images/blog/The Importance of Laravel 10 in Modern Web Development.png', 'The Importance of Laravel 10 in Modern Web Development', 'The Importance of Laravel 10 in Modern Web Development', 'the-importance-of-laravel-10-in-modern-web-development', 'In the ever-evolving landscape of web development, staying ahead with the latest technologies is crucial. Laravel, one of the leading PHP Frameworks, has recently released version 10, introducing new features and improvements that further solidify its significance in modern web development.', '<p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:52pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>The Importance of Laravel 10 in Modern Web Development</strong></span></span></p><p><br><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:11pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">In the ever-evolving landscape of web development, staying ahead with the latest technologies is crucial. Laravel, one of the leading PHP Frameworks, has recently released version 10, introducing new features and improvements that further solidify its significance in modern web development.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>What’s New in Laravel 10?</strong></span></span></p><p><br>&nbsp;</p><ol style=\"margin-bottom:0;margin-top:0;padding-inline-start:48px;\"><li style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:16.5pt;font-style:normal;font-variant:normal;list-style-type:decimal;text-decoration:none;vertical-align:baseline;white-space:pre;\" dir=\"ltr\" aria-level=\"1\"><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\" role=\"presentation\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:16.5pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>Enhanced Performance:</strong></span></span></p></li></ol><p style=\"line-height:1.38;margin-bottom:0pt;margin-left:36pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel 10 comes with optimizations under the hood, promising improved performance and faster response time. These enhancements make it an ideal choice for high-traffic websites and appilcation.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>2.Blade Components Evolution:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">The Blade templating engine has been refined in Laravel 10, introducing Blade components that facilitate cleaner and more modular code. This evolution streamlines the development process and enhances code readability.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>3. Eloquent ORM Advancements:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel’s Eloquent ORM (Object-Relational Mapping) continues to evolve, now offering even more powerful features. With Laravel 10, developers can expect increased flexibility and efficiency when working with databases.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>4. Improved Livewire Integration:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Livewire, a popular library for building reactive interfaces in Laravel, sees improved integration in version 10. This enables developers to create dynamic and interactive user interfaces seamlessly.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>Why Choose Laravel 10?</strong></span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>1. Developer-Friendly Syntax:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel has always been praised for it’s elegant and expressive syntax. Version 10 maintains this developer-friendly approch, making it a joy to work with for both seasoned developers and thoes new to the framework.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>2. Robust Security Measures:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Security is paramount in web development, and Laravel continues to prioritize it. Laravel 10 introduces enhanced security measures, protecting your applications from common vulnerabilities.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>3. Community Support:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">The Laravel community is vibrant and supportive. With version 10, the community is expanding, bringing in more resources, tutorials, and discussions. The wealth of knowledge ensures that developers have ample support as they explore and implement Laravel in their projects.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>SEO Benefits of Laravel 10:</strong></span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>1. Clean an Semantic Markup:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel Blade templating engine encourages the use of clean and semantic HTML markup. Search enngines favour well-stuctured content, and Laravel’s adherence to best practices contributes to better SEO rankings.</span></span></p><p><br><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>2. Fast Loading Times:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">The performance impronvements in Laravel 10 translate to faster loading times for your web applications. Page speed is a crucial factor in SEO, and Laravel’s commitment to optimization aligns with this requirements.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>3. Responsive Design Capabilities:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel 10 supports the creation of responsive and mobile-friendly applications. As search engines prioritize mobile-friendly websites, Laravel’s responsiveness contributes positively to SEO efforts.</span></span></p><p><br>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:17pt;\"><span style=\"font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\"><strong>Conclustion:</strong></span></span></p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Laravel 10 emerges as a powerhouse in the realm of web development, offering developers a feature-rich and elegant framework to build robust applications. It’s commitment to performance,</span></span></p><p>&nbsp;</p><p style=\"line-height:1.38;margin-bottom:0pt;margin-top:0pt;\" dir=\"ltr\"><span style=\"background-color:transparent;color:#000000;font-family:Roboto,sans-serif;font-size:12pt;\"><span style=\"font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\">Security, and developer experience positions it as a top choice for modern web development projects. As you embark on your next development journey, consider Laravel 10 for a seamless and rewarding experience.</span></span></p><div><br>&nbsp;</div>', 106, 'active', 'active', 1, '2024-02-16 12:31:29', '2024-04-28 04:07:49'),
(3, 2, 'S M Alif Ahmmed', 'Learn the smooth transition process from Laravel v10.x to Laravel v11.x with our comprehensive upgrade guide. Stay ahead with seamless updates!', 'Laravel, Laravel 9, Laravel upgrade v10 to v11, how to learn Laravel, Laravel 11 upgrade, Laravel tips, upgrade Laravel, Laravel version upgrade, Laravel application upgrade, learn Laravel 9, Laravel 5.7 to 10 migration, Laravel 8 tutorial, laravel 9 tutorial, laravel 10, Laravel 10 tutorial, Laravel 11, Laravel 11 tutorial, laravel tutorial 2024 - the complete developer course, learn Laravel step by step, Laravel tutorial youtube, learn Laravel for beginners,', 'S M Alif Ahmmed', 'admin/images/blog/Laravel 10.x to Laravel_11.x.png', 'Laravel 10 to 11', 'Laravel 10 to 11 : Smooth Upgrade Guide', 'laravel-10-to-11-smooth-upgrade-guide', 'Discover the seamless transition from Laravel 10 to 11 with our comprehensive upgrade guide. Stay ahead of the curve with smooth updates!', '<p>Are you ready to take your Laravel application to the next level with Laravel 11? This comprehensive guide will walk you through the upgrade process step by step, ensuing a seamless transition and leveraging the latest features and improvements. Let\'s dive in!</p><h4 id=\"ef9031c92a7274e4b723a3be093b293e2\">Why Upgrade to Laravel 11?</h4><p>Laravel 11 brings exciting new features, performance enhancements, and bug fixes, providing a more robust and efficient framework for your application. By upgrading, you\'ll stay up to date with the latest developments in the Laravel ecosystem, ensuring your project remains secure and future-proof.</p><h4 id=\"ef3d4207b63be37a822b16242795498d6\">Pre-Upgrade Preparation</h4><p>Before diving into the upgrade process, make sure to back up your project files and database to avoid any data loss or unforeseen issues. Once you\'ve secured your data, let\'s proceed with the upgrade steps.</p><h4 id=\"e6d7d262272b0eecd862fa52c7cea16df\"><span style=\"font-size:18px;\">Step 1: Upgrade Composer Dependencies</span></h4><h6 id=\"e2db46ae5500d16929afc583add32f5c6\">Start by updating your composer.json file with the following changes:</h6><p><strong>Json</strong></p><p><strong>Copy code</strong></p><p>“require”: {</p><p>“php” : “^8.2”</p><p>“guzzlehttp/guzzle” : “^7.2”</p><p>“laravel/freamework” : “^11.0”</p><p>“laravel/tinker”: “^2.8”</p><p>}</p><p>\"require-dev\": {<br>\"fakerphp/faker\": \"^1.9.1\",<br>\"laravel/breeze\": \"^2.0\",<br>\"laravel/pint\": \"^1.0\",<br>\"laravel/sail\": \"^1.18\",<br>\"mockery/mockery\": \"^1.4.4\",<br>\"nunomaduro/collision\": \"^8.0\",<br>\"phpunit/phpunit\": \"^10.0\",<br>\"spatie/laravel-ignition\": \"^2.0\"<br>}<br>Ensure that you replace existing packages with their updated versions as specified.</p><p><span style=\"color:hsl(0,0%,0%);font-size:18px;\">Step 2: Update Installed Packages (Optional)</span><br>If you have any of the specified packages installed, update their versions accordingly:<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/breeze to ^2.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/cashier to ^15.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/dusk to ^8.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/jetstream to ^5.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/passport to ^12.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/sanctum to ^4.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/spark-stripe to ^5.0<br>&nbsp; &nbsp; &nbsp; &nbsp;laravel/telescope to ^5.0<br>&nbsp; &nbsp; &nbsp; &nbsp;inertiajs/inertia-laravel to ^1.0</p><p><span style=\"color:hsl(0,0%,0%);font-size:18px;\">Step 3: Run Composer Update</span><br>Execute the following command in your terminal to update your dependencies:<br>Bash<br>Copy code<br>composer update<br><br>This will download and install the latest versions of the packages specified in your composer.json.<br><br><span style=\"background-color:hsl(0,0%,100%);color:hsl(0,0%,0%);font-size:18px;\">Step 4: Publish Sanctum Migrations</span><br>If you\'re using Laravel Sanctum, run the following command to publish its migrations:<br>Bash<br>Copy code<br>php artisan vendor:publish --tag=sanctum-migrations<br><br><span style=\"color:hsl(0,0%,0%);font-size:18px;\">Step 5: Publish Additional Package Migrations (Optional)</span><br>If you have any of the following packages installed, publish their migrations as well:<br>Bash<br>Copy code<br>php artisan vendor:publish --tag=cashier-migrations (if installed)<br>php artisan vendor:publish --tag=passport-migrations (if installed)<br>php artisan vendor:publish --tag=spark-migrations (if installed)<br>php artisan vendor:publish --tag=telescope-migrations (if installed)<br><br><span style=\"color:hsl(0,0%,0%);font-size:18px;\">Conclusion</span><br>Congratulations! You\'ve successfully upgraded your Laravel application from version 10 to version 11. Enjoy the benefits of the latest features and enhancements, and don\'t forget to explore the Laravel documentation for further insights and optimizations.<br>Happy coding!<br>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 109, 'active', 'active', 1, '2024-03-19 13:09:29', '2024-04-28 05:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(12, 1, 4, NULL, NULL),
(13, 2, 4, NULL, NULL),
(14, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `meta_description`, `meta_keyword`, `name`, `category_slug`, `category_status`, `created_at`, `updated_at`) VALUES
(2, 'Laravel', 'Laravel', 'Laravel', 'laravel', 1, '2023-10-30 04:32:12', '2024-04-23 23:53:55'),
(3, 'PHP', 'PHP', 'PHP', 'php', 1, '2023-10-31 06:20:44', '2024-04-23 23:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `note` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unRead',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `code` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_20_155017_create_blogs_table', 2),
(6, '2023_10_20_155025_create_tags_table', 2),
(7, '2023_10_20_155042_create_categories_table', 2),
(8, '2023_10_31_122313_create_blogs_table', 3),
(9, '2023_10_31_155328_create_blog_tags_table', 4),
(10, '2023_10_31_164436_create_blog_tag_table', 5),
(11, '2023_11_03_200648_create_extras_table', 6),
(12, '2023_11_06_151330_create_comments_table', 7),
(13, '2023_11_08_070738_create_comments_table', 8),
(14, '2023_11_15_114320_create_contacts_table', 8),
(15, '2023_11_15_165308_create_subscribes_table', 9),
(16, '2023_11_29_083507_create_visitor_counts_table', 10),
(17, '2024_04_28_095418_create_visitors_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unRead',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  `tag_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `tag_slug`, `tag_status`, `created_at`, `updated_at`) VALUES
(4, 'Laravel', 'laravel', 1, '2024-02-16 12:18:08', '2024-04-23 23:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `ban_status` tinyint(4) NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `number`, `address`, `ban_status`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'S M Alif Ahmmed', 'smalifahmmed@gmail.com', NULL, '$2y$10$y3Euonmp.dDcEbrEpahKc./aBCfJEw7fvwUyjL4F4rdFmbvVuJpDm', 'admin/images/profile_photo/836.jpg', NULL, NULL, 0, 'admin', NULL, '2023-10-15 00:40:30', '2024-03-20 22:20:54'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$o9N6wu/Kse195odfkjAtvufHeRn2SkNkvl8Fo0Z9dH.0t.e8MmQR6', 'admin/images/profile_photo/DSC05748.JPG', NULL, NULL, 0, 'user', NULL, '2023-10-15 02:16:29', '2023-11-08 14:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `start_time` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_heading` (`heading`),
  ADD UNIQUE KEY `blog_slug` (`slug`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`name`),
  ADD UNIQUE KEY `category_category_slug` (`category_slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_name` (`name`),
  ADD UNIQUE KEY `tag_tag_slug` (`tag_slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
