#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and needed db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_PATH_HOST/mysql not found.
#
# if your $DATA_PATH_HOST/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

#CREATE DATABASE IF NOT EXISTS `dev_db_1` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_1`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_2` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_2`.* TO 'default'@'%' ;

#CREATE DATABASE IF NOT EXISTS `dev_db_3` COLLATE 'utf8_general_ci' ;
#GRANT ALL ON `dev_db_3`.* TO 'default'@'%' ;

docker-compose exec mysql bash
mysql -uroot -proot
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2019 a las 19:35:35
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_business`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `important` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id_blog`, `title`, `content`, `image`, `date`, `important`, `visible`) VALUES
(1, 'Primer Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.<p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-1.png', '2019-11-06 19:14:49', 0, 1),
(2, 'Segon Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.<p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-2.png', '2019-11-06 19:14:49', 0, 1),
(3, 'Tercer Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.<p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-3.png', '2019-11-06 19:14:49', 0, 1),
(4, 'Quart Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.<p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-4.png', '2019-11-06 19:14:49', 0, 1),
(5, 'Cinquè Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p><p></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-5.png', '2019-11-19 19:14:26', 0, 1),
(6, 'Sisè Post', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.<p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>', 'blog-6.png', '2019-11-06 19:14:49', 0, 1),
(8, 'Important', 'This call to action card is a great place to showcase some important information or display a clever tagline!', '', '2019-11-06 21:28:02', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id_client`, `name`, `content`, `image`, `date`) VALUES
(1, 'Client 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_1.jpg', '2019-11-21 19:08:42'),
(2, 'Client 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_2.jpg', '2019-11-23 19:33:38'),
(3, 'Client 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_3.jpg', '2019-11-09 18:45:28'),
(4, 'Client 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_4.jpg', '2019-11-09 18:45:23'),
(5, 'Client 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_5.jpg', '2019-11-09 18:45:19'),
(6, 'Client 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'client_6.jpg', '2019-11-09 18:45:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`id_company`, `name`, `content`, `image`, `date`) VALUES
(1, 'La meva empresa', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum <b>nisi dolores delectus reprehenderit</b> voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum&nbsp;<span style=\"font-weight: bolder;\">nisi dolores delectus reprehenderit</span>&nbsp;voluptatem perferendis dicta dolorem non blanditiis ex fugiat.<br></p>', 'about-1.png', '2019-11-23 19:33:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_info`
--

CREATE TABLE `contact_info` (
  `id_contact_info` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hours` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contact_info`
--

INSERT INTO `contact_info` (`id_contact_info`, `name`, `content`, `map`, `phone`, `email`, `hours`) VALUES
(1, 'Contacte', '<h3>Direcció física</h3>\r\n<p>\r\nC/ València, 34\r\n<br>Barcelona, 08000\r\n<br>\r\n</p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6247515.049248458!2d-8.201854992922032!3d40.130154352119675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc42e3783261bc8b%3A0xa6ec2c940768a3ec!2zRXNwYcOxYQ!5e0!3m2!1ses!2ses!4v1572619714085!5m2!1ses!2ses', '+34 123 45 78', 'admin@domini.es', 'De dilluns a divendres de 9:00 a 15:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_items`
--

CREATE TABLE `contact_items` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `checked` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contact_items`
--

INSERT INTO `contact_items` (`id_contact`, `name`, `phone_number`, `mail`, `subject`, `content`, `checked`, `date`, `updated_at`, `created_at`) VALUES
(2, 'Joan Hernández', '+34931234567', 'jhernandezch@uoc.edu', 'Prova de contacte', 'Això és una altra prova d\'entrada de formulari de contacte.', 'yes', '2019-11-23 12:08:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Eiral', '930000000', 'jhernandezch@uoc.edu.es', 'Prova des de web', 'Hola.', 'no', '2019-12-04 18:03:15', '2019-12-04 18:03:15', '2019-12-04 18:03:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icons_info`
--

CREATE TABLE `icons_info` (
  `id_icon` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `icons_info`
--

INSERT INTO `icons_info` (`id_icon`, `title`, `content`, `icon`, `date`) VALUES
(1, 'Fully Responsive', '<p>This theme will look great on any device, no matter the size!</p>', 'icon-screen-desktop', '2019-11-09 18:14:30'),
(2, 'Bootstrap 4 Ready', '<p>Featuring the latest build of the new Bootstrap 4 framework!</p>', 'icon-layers', '2019-11-09 18:14:23'),
(3, 'Easy to Use', '<p>Ready to use with your own content, or customize the source files!</p>', 'icon-check', '2019-11-24 10:56:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_generic`
--

CREATE TABLE `info_generic` (
  `id_info` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `info_generic`
--

INSERT INTO `info_generic` (`id_info`, `name`, `content`, `date`) VALUES
(1, 'Termes d\'ús', '<p>aaaaaaaaaaaaa</p>', '2019-11-06 19:30:27'),
(2, 'Política de privacitat', '<p>bbbbbbbbbbbbbb</p>', '2019-11-06 19:30:50'),
(3, 'Logo', 'Logo empresa', '2019-11-26 20:14:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professional_team`
--

CREATE TABLE `professional_team` (
  `id_team` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `professional_team`
--

INSERT INTO `professional_team` (`id_team`, `name`, `position`, `content`, `mail`, `image`, `date`) VALUES
(1, 'Membre equip 1', 'Posició 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>', 'membre1@example.com', 'worker-1.png', '2019-11-23 19:32:45'),
(2, 'Membre equip 2', 'Posició 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>', 'membre2@example.com', 'worker-2.png', '2019-11-06 19:41:01'),
(3, 'Membre equip 3', 'Posició 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>', 'membre3@example.com', 'worker-3.png', '2019-11-06 19:41:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id_service`, `title`, `content`, `image`, `date`) VALUES
(1, 'Servei 1', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'bg-showcase-1.jpg', '2019-11-23 10:46:24'),
(2, 'Servei 2', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'bg-showcase-2.jpg', '2019-11-06 19:48:22'),
(3, 'Servei 3', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'bg-showcase-3.jpg', '2019-11-06 19:48:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id_slide`, `title`, `content`, `image`, `date`) VALUES
(1, 'Primer Slide', '<p>Aquest és la descripció del primer slide.</p>', 'business-1.png', '2019-11-24 10:36:10'),
(2, 'Segon Slide', '<p>Aquest és la descripció del segon slide.</p>', 'business-2.png', '2019-11-06 20:08:29'),
(3, 'Tercer Slide', '<p>Aquest és la descripció del tercer slide.</p>', 'business-3.png', '2019-11-06 20:08:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_media`
--

CREATE TABLE `social_media` (
  `id_socialmedia` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `social_media`
--

INSERT INTO `social_media` (`id_socialmedia`, `name`, `url`, `date`) VALUES
(1, 'Facebook', 'https://facebook.com', '2019-11-24 10:36:01'),
(2, 'Twitter', 'https://twitter.es', '2019-11-06 19:36:07'),
(3, 'Instagram', 'https://www.instagram.com', '2019-11-06 19:36:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `success_projects`
--

CREATE TABLE `success_projects` (
  `id_success` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `success_projects`
--

INSERT INTO `success_projects` (`id_success`, `title`, `content`, `image`, `date`) VALUES
(1, 'Cas 1', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'case1.jpg', '2019-11-23 11:02:03'),
(2, 'Cas 2', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'case2.jpg', '2019-11-23 11:02:03'),
(3, 'Cas 3', '<p>Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat.</p>', 'case3.jpg', '2019-11-23 11:02:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joan Hernández', 'jhernandezch@uoc.edu', '2019-11-25 23:00:00', '$2y$10$Jx2ESW05k2DtTuC3xoP3aewNq/6eeVEoCoDGnTo/dN/dCItp9kipu', NULL, '2019-11-26 18:56:35', '2019-11-26 18:56:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indices de la tabla `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id_contact_info`);

--
-- Indices de la tabla `contact_items`
--
ALTER TABLE `contact_items`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `icons_info`
--
ALTER TABLE `icons_info`
  ADD PRIMARY KEY (`id_icon`);

--
-- Indices de la tabla `info_generic`
--
ALTER TABLE `info_generic`
  ADD PRIMARY KEY (`id_info`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `professional_team`
--
ALTER TABLE `professional_team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indices de la tabla `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id_socialmedia`);

--
-- Indices de la tabla `success_projects`
--
ALTER TABLE `success_projects`
  ADD PRIMARY KEY (`id_success`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_contact_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contact_items`
--
ALTER TABLE `contact_items`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `icons_info`
--
ALTER TABLE `icons_info`
  MODIFY `id_icon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `info_generic`
--
ALTER TABLE `info_generic`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `professional_team`
--
ALTER TABLE `professional_team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id_socialmedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `success_projects`
--
ALTER TABLE `success_projects`
  MODIFY `id_success` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
