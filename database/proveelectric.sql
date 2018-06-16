-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2018 a las 22:10:10
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proveelectric`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente1`
--

CREATE TABLE `cliente1` (
  `ID` int(11) NOT NULL,
  `ruc` varchar(13) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `RSOCIAL` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `CIUDAD` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente1`
--

INSERT INTO `cliente1` (`ID`, `ruc`, `NOMBRE`, `RSOCIAL`, `DIRECCION`, `TELEFONO`, `CIUDAD`) VALUES
(1, NULL, 'valle lila', 'lubricantes el valle', 'los valles', '3001141', 'quito norte'),
(2, NULL, 'pinto carlos', 'rec repuestos', 'guamani', '2345677', 'quito sur'),
(3, NULL, 'GUAMAN CARLOS', 'ELECTRO GUAMAN', 'AV MALDONADO', '1234567', 'quito sur'),
(4, '1718398710001', 'HENRY TAIPE', 'MECANICO', 'CAMALA METROPOLITANO', '3001141', 'quito sur'),
(5, '0501464192', 'dvdvfvfd', 'vdfvdfvdf', 'vdfvdfv', '023001141', 'QUITO NORTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-01-20 22:57:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-01-20 22:58:28', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/users/edit-save/1', 'Actualizar información JESSICA TAIPE en Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>JESSICA TAIPE</td></tr><tr><td>photo</td><td></td><td>uploads/1/2018-01/2016_06_18_183503.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>jekitabubitas@gmail.com</td></tr><tr><td>password</td><td>$2y$10$xFNvtFGYlLwpvyJQ7KLIhOg2CE2B5VoEYRjC60E0fmOLZ35l0PdbG</td><td>$2y$10$LOsLS00T2./U3w1c8cYcm.u0ZQaSipf7PdgZLMKylWizoKwqDY6oG</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-01-20 18:14:25', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/users/add-save', 'Añadir nueva información MARTHA PORTILLO en Users Management', '', 1, '2018-01-20 18:16:26', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-01-20 18:18:34', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-01-20 18:19:13', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-01-20 18:20:05', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-01-20 18:20:24', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/module_generator/delete/12', 'Eliminar información CLIENTES en Module Generator', '', 1, '2018-01-20 18:29:24', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-01-20 18:34:04', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-01-20 18:34:33', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-01-20 18:35:45', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-01-20 18:36:37', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-01-20 18:36:54', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información CLIENTES en Menu Management', '', 1, '2018-01-20 18:56:18', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-01-20 18:56:28', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-01-20 18:56:53', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-01-20 18:59:14', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-01-20 18:59:34', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-01-20 19:02:43', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente13/add-save', 'Añadir nueva información 7 en CLIENTE', '', 2, '2018-01-20 19:06:41', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-01-20 19:10:50', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-01-20 19:11:28', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-01-20 19:12:15', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-01-20 19:25:53', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente13/add-save', 'Añadir nueva información 8 en CLIENTE', '', 2, '2018-01-20 19:33:43', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-03 19:44:14', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-18 18:44:32', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-18 22:21:23', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-18 22:21:45', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/2', 'Actualizar información PEDIDOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>CLIENTES</td><td>PEDIDOS</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-02-18 23:29:35', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-18 23:39:12', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-02-18 23:39:45', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-02-18 23:41:11', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-18 23:42:14', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-18 23:49:39', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-02-18 23:49:59', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-02-18 23:50:29', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-18 23:50:48', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información PEDIDOS en Menu Management', '', 1, '2018-02-18 23:52:14', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información PROVEEDORES en Menu Management', '', 1, '2018-02-18 23:53:14', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información CLIENTES en Menu Management', '', 1, '2018-02-18 23:55:38', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/3', 'Eliminar información CLIENTES en Menu Management', '', 1, '2018-02-18 23:56:15', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información PRODUCTOS en Menu Management', '', 1, '2018-02-18 23:57:17', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información INGRESOS en Menu Management', '', 1, '2018-02-18 23:57:43', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información EGRESOS en Menu Management', '', 1, '2018-02-18 23:58:02', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-18 23:58:19', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-02-18 23:58:45', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-02-18 23:59:28', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:00:24', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/users/edit-save/2', 'Actualizar información MARTHA PORTILLO en Users Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$g.bWe2G0Bbll8qqNcZLVqen010pwqWzOVMl/m1KEx0s9uF1mTKcpu</td><td>$2y$10$rzu/Mj956QIY.PVPbVjVc.LBhz8CouW6IPNbglFYB0FRRFx3C76Ee</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-02-19 00:01:45', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:01:55', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-02-19 00:02:18', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/users/edit-save/2', 'Intentar añadir datos al Users Management', '', 2, '2018-02-19 00:04:42', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-02-19 00:04:52', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:07:20', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:08:30', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:09:59', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:11:12', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:11:59', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:15:04', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:18:19', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:21:19', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:32:53', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:34:03', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-02-19 00:42:55', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-02-19 00:43:16', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-04-14 20:04:28', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/7', 'Eliminar información INGRESOS en Menu Management', '', 1, '2018-04-14 20:09:30', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/13', 'Eliminar información INGRESOS en Menu Management', '', 1, '2018-04-14 20:09:56', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/14', 'Eliminar información EGRESOS en Menu Management', '', 1, '2018-04-14 20:10:07', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/8', 'Eliminar información EGRESOS en Menu Management', '', 1, '2018-04-14 20:10:19', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/module_generator/delete/18', 'Eliminar información EGRESOS en Module Generator', '', 1, '2018-04-14 21:03:32', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/module_generator/delete/17', 'Eliminar información INGRESOS en Module Generator', '', 1, '2018-04-14 21:03:41', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/module_generator/delete/13', 'Eliminar información PEDIDOS en Module Generator', '', 1, '2018-04-14 21:03:49', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-05-19 16:23:49', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/producto/edit-save/3', 'Actualizar información 3 en PRODUCTOS', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-05-19 16:32:07', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-05-19 18:27:49', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-05-19 18:28:41', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-05-19 18:32:07', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-05-22 02:19:41', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-05-22 02:20:34', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-05-22 02:31:20', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-05-22 02:42:05', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-02 16:41:24', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/13', 'Eliminar información 13 en PEDIDOS', '', 1, '2018-06-02 21:49:49', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/12', 'Eliminar información 12 en PEDIDOS', '', 1, '2018-06-02 21:49:56', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/11', 'Eliminar información 11 en PEDIDOS', '', 1, '2018-06-02 21:49:59', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/10', 'Eliminar información 10 en PEDIDOS', '', 1, '2018-06-02 21:50:02', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/9', 'Eliminar información 9 en PEDIDOS', '', 1, '2018-06-02 21:50:05', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/8', 'Eliminar información 8 en PEDIDOS', '', 1, '2018-06-02 21:50:09', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/pedidos19/delete/7', 'Eliminar información 7 en PEDIDOS', '', 1, '2018-06-02 21:50:12', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/delete/16', 'Eliminar información DETALLE en Menu Management', '', 1, '2018-06-02 23:50:20', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-03 23:19:17', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/provedor/add-save', 'Añadir nueva información  en PROVEEDORES', '', 1, '2018-06-03 23:21:13', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/10', 'Actualizar información PROVEEDORES en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>provedor</td><td></td></tr><tr><td>icon</td><td>fa fa-user</td><td>fa fa-star</td></tr></tbody></table>', 1, '2018-06-03 23:22:26', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/users/add-save', 'Añadir nueva información GERENTE PROPIETARIO en Users Management', '', 1, '2018-06-03 23:31:39', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-03 23:40:29', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de nathyjess94@outlook.com desde la Dirección IP ::1', '', 3, '2018-06-03 23:40:58', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'nathyjess94@outlook.com se desconectó', '', 3, '2018-06-03 23:41:22', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-03 23:41:46', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-03 23:42:53', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-03 23:43:12', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-03 23:45:08', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de nathyjess94@outlook.com desde la Dirección IP ::1', '', 3, '2018-06-03 23:45:30', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'nathyjess94@outlook.com se desconectó', '', 3, '2018-06-03 23:45:42', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-03 23:46:06', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-03 23:47:01', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-03 23:47:17', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/add-save', 'Añadir nueva información PEDIDOS en Menu Management', '', 1, '2018-06-03 23:48:39', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/10', 'Actualizar información PROVEEDORES en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td></td><td>provedor</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:49:21', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/9', 'Actualizar información PEDIDOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>cliente13</td><td>pedidos19</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:49:39', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-03 23:50:04', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-03 23:50:24', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-03 23:51:29', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-03 23:51:46', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/15', 'Actualizar información PEDIDOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-star</td><td>fa fa-file-o</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-06-03 23:53:59', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/10', 'Actualizar información PROVEEDORES en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>provedor</td><td></td></tr><tr><td>icon</td><td>fa fa-star</td><td>fa fa-file-o</td></tr></tbody></table>', 1, '2018-06-03 23:54:39', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-03 23:55:01', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-03 23:55:23', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-03 23:56:06', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-03 23:56:27', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/9', 'Actualizar información PEDIDOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:58:45', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/10', 'Actualizar información PROVEEDORES en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td></td><td>provedor</td></tr><tr><td>icon</td><td>fa fa-file-o</td><td>fa fa-star</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:59:05', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/11', 'Actualizar información CLIENTES en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-group</td><td>fa fa-user</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:59:29', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/12', 'Actualizar información PRODUCTOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-book</td><td>fa fa-road</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-03 23:59:57', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/menu_management/edit-save/16', 'Actualizar información PEDIDOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-file-o</td><td>fa fa-road</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2018-06-04 00:00:33', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-04 00:00:43', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-04 00:01:02', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-04 00:02:36', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de nathyjess94@outlook.com desde la Dirección IP ::1', '', 3, '2018-06-04 00:02:57', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'nathyjess94@outlook.com se desconectó', '', 3, '2018-06-04 00:04:01', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-04 00:04:19', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-04 00:05:41', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-06 20:56:12', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-06 20:58:40', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-06 21:01:03', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'jekitabubitas@gmail.com se desconectó', '', 1, '2018-06-06 21:04:07', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de mario12mcastro@hotmail.com desde la Dirección IP ::1', '', 2, '2018-06-07 00:32:41', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36', 'http://localhost/proveelectric/public/admin/logout', 'mario12mcastro@hotmail.com se desconectó', '', 2, '2018-06-07 00:46:50', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/login', 'Ingreso de jekitabubitas@gmail.com desde la Dirección IP ::1', '', 1, '2018-06-16 15:43:12', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-06-16 16:37:10', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-06-16 19:13:08', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/delete/5', 'Eliminar información  en CLIENTES', '', 1, '2018-06-16 19:13:13', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-06-16 19:16:06', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/delete/5', 'Eliminar información  en CLIENTES', '', 1, '2018-06-16 19:16:36', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'http://localhost/proveelectric/public/admin/cliente1/add-save', 'Añadir nueva información  en CLIENTES', '', 1, '2018-06-16 19:20:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(4, 'CLIENTES', 'Route', 'AdminCliente1ControllerGetIndex', NULL, 'fa fa-image', 0, 1, 0, 1, 2, '2018-02-18 23:26:47', NULL),
(5, 'PROVEEDORES', 'Route', 'AdminProvedorControllerGetIndex', NULL, 'fa fa-home', 0, 1, 0, 1, 3, '2018-02-18 23:30:31', NULL),
(6, 'PRODUCTOS', 'Route', 'AdminProductoControllerGetIndex', NULL, 'fa fa-road', 0, 1, 0, 1, 4, '2018-02-18 23:31:48', NULL),
(9, 'PEDIDOS', 'Module', 'pedidos19', 'normal', 'fa fa-star', 0, 1, 0, 1, NULL, '2018-02-18 23:52:14', '2018-06-03 23:58:45'),
(10, 'PROVEEDORES', 'Module', 'provedor', 'normal', 'fa fa-star', 0, 1, 0, 1, NULL, '2018-02-18 23:53:14', '2018-06-03 23:59:05'),
(11, 'CLIENTES', 'Module', 'cliente1', 'normal', 'fa fa-user', 0, 1, 0, 1, NULL, '2018-02-18 23:55:37', '2018-06-03 23:59:29'),
(12, 'PRODUCTOS', 'Module', 'producto', 'normal', 'fa fa-road', 0, 1, 0, 1, NULL, '2018-02-18 23:57:17', '2018-06-03 23:59:57'),
(15, 'PEDIDOS', 'Route', 'AdminPedidos19ControllerGetIndex', 'normal', 'fa fa-file-o', 0, 1, 0, 1, 5, '2018-04-14 21:04:33', '2018-06-03 23:53:59'),
(16, 'PEDIDOS', 'Module', 'pedidos19', 'normal', 'fa fa-road', 0, 1, 0, 1, NULL, '2018-06-03 23:48:39', '2018-06-04 00:00:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(3, 3, 2),
(4, 4, 1),
(5, 2, 1),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(14, 13, 3),
(15, 14, 3),
(22, 15, 1),
(24, 9, 3),
(25, 10, 3),
(26, 11, 3),
(27, 12, 3),
(28, 16, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-01-20 22:57:06', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-01-20 22:57:06', NULL, NULL),
(12, 'CLIENTES', 'fa fa-star', 'cliente', 'cliente', 'AdminClienteController', 0, 0, '2018-01-20 18:23:07', NULL, '2018-01-20 18:29:25'),
(13, 'PEDIDOS', 'fa fa-star', 'pedidos', 'pedidos', 'AdminCliente13Controller', 0, 0, '2018-01-20 18:29:53', NULL, '2018-04-14 21:03:49'),
(14, 'CLIENTES', 'fa fa-image', 'cliente1', 'cliente1', 'AdminCliente1Controller', 0, 0, '2018-02-18 23:26:47', NULL, NULL),
(15, 'PROVEEDORES', 'fa fa-home', 'provedor', 'provedor', 'AdminProvedorController', 0, 0, '2018-02-18 23:30:31', NULL, NULL),
(16, 'PRODUCTOS', 'fa fa-road', 'producto', 'producto', 'AdminProductoController', 0, 0, '2018-02-18 23:31:48', NULL, NULL),
(17, 'INGRESOS', 'fa fa-glass', 'ingreso', 'ingreso', 'AdminIngresoController', 0, 0, '2018-02-18 23:33:15', NULL, '2018-04-14 21:03:41'),
(18, 'EGRESOS', 'fa fa-cog', 'egreso', 'egreso', 'AdminEgresoController', 0, 0, '2018-02-18 23:34:08', NULL, '2018-04-14 21:03:32'),
(19, 'PEDIDOS', 'fa fa-star', 'pedidos19', 'pedidos', 'AdminPedidos19Controller', 0, 0, '2018-04-14 21:04:32', NULL, NULL),
(20, 'DETALLE', 'fa fa-glass', 'detalle_pedidos', 'detalle_pedidos', 'AdminDetallePedidosController', 0, 0, '2018-04-14 21:14:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-01-20 22:57:06', NULL),
(3, 'GERENTE', 0, 'skin-green', NULL, NULL),
(4, 'GERENTE PROPIETARIO', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-01-20 22:57:06', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-01-20 22:57:07', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-01-20 22:57:07', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-01-20 22:57:07', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-01-20 22:57:07', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-01-20 22:57:07', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-01-20 22:57:08', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-01-20 22:57:08', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-01-20 22:57:08', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-01-20 22:57:08', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-01-20 22:57:08', NULL),
(13, 0, 1, 1, 0, 0, 3, 4, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(22, 1, 1, 1, 0, 1, 3, 14, NULL, NULL),
(23, 1, 0, 1, 0, 0, 3, 18, NULL, NULL),
(24, 1, 0, 1, 0, 0, 3, 17, NULL, NULL),
(25, 1, 1, 1, 0, 0, 3, 13, NULL, NULL),
(26, 1, 1, 1, 0, 1, 3, 16, NULL, NULL),
(27, 1, 1, 1, 0, 1, 3, 15, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(30, 1, 0, 1, 0, 0, 4, 19, NULL, NULL),
(31, 1, 0, 1, 0, 0, 4, 13, NULL, NULL),
(32, 1, 1, 1, 0, 0, 3, 19, NULL, NULL),
(33, 1, 1, 1, 0, 1, 3, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-01-20 22:57:08', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-01-20 22:57:08', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2018-02/dd304ab823ef40c51228f1e389e3be8f.jpg', 'upload_image', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-01-20 22:57:08', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-01-20 22:57:08', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'PROVEELECTRIC', 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-01-20 22:57:08', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-02/f215b97a8259dce1918b7c7df552f634.PNG', 'upload_image', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-01-20 22:57:08', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'JESSICA TAIPE', 'uploads/1/2018-01/2016_06_18_183503.jpg', 'jekitabubitas@gmail.com', '$2y$10$LOsLS00T2./U3w1c8cYcm.u0ZQaSipf7PdgZLMKylWizoKwqDY6oG', 1, '2018-01-20 22:57:06', '2018-01-20 18:14:25', 'Active'),
(2, 'MARTHA PORTILLO', 'uploads/1/2018-01/bg1_2.jpg', 'mario12mcastro@hotmail.com', '$2y$10$rzu/Mj956QIY.PVPbVjVc.LBhz8CouW6IPNbglFYB0FRRFx3C76Ee', 3, '2018-01-20 18:16:25', '2018-02-19 00:01:45', NULL),
(3, 'GERENTE PROPIETARIO', 'uploads/1/2018-06/40.gif', 'nathyjess94@outlook.com', '$2y$10$TKVYjpwQso8ftvNBb/AW3.K4nCzvyQvZ/QEFLRL0AqFK.2.oJkUKG', 4, '2018-06-03 23:31:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedidos_id` int(11) DEFAULT NULL,
  `codigo` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio_unit` decimal(18,2) DEFAULT NULL,
  `precio_total` decimal(18,2) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedidos_id`, `codigo`, `cantidad`, `descripcion`, `precio_unit`, `precio_total`, `producto_id`) VALUES
(13, 14, '5230-A', 22, 'FOCO DE 2P 12V AULITE', '0.28', '6.16', NULL),
(14, 15, '5230-A', 30, 'FOCO DE 2P 12V AULITE', '0.28', '8.40', NULL),
(15, 15, 'T10-12A', 20, 'FOCO DE UÑA 12V AULITE', '0.22', '4.40', NULL),
(16, 16, '5230-A', 40, 'FOCO DE 2P 12V AULITE', '0.28', '11.20', NULL),
(17, 17, 'T10-12A', 50, 'FOCO DE UÑA 12V AULITE', '0.22', '11.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egreso`
--

CREATE TABLE `egreso` (
  `ID` int(11) NOT NULL,
  `CODIGO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `ID` int(11) NOT NULL,
  `CODIGO` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `numero_pedido` int(11) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `descuento` decimal(18,2) NOT NULL,
  `iva` decimal(18,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `numero_pedido`, `subtotal`, `descuento`, `iva`, `total`, `created_at`, `updated_at`) VALUES
(14, 1, 1, '6.16', '0.00', '0.74', '6.90', '2018-06-02 21:51:33', '2018-06-02 21:51:33'),
(15, 2, 2, '12.80', '0.00', '1.54', '14.34', '2018-06-06 20:57:07', '2018-06-06 20:57:07'),
(16, 3, 3, '11.20', '0.00', '1.34', '12.54', '2018-06-07 00:34:52', '2018-06-07 00:34:52'),
(17, 1, 4, '11.00', '0.00', '1.32', '12.32', '2018-06-07 00:45:50', '2018-06-07 00:45:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(250) NOT NULL,
  `precio` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `descripcion`, `stock`, `precio`) VALUES
(1, '5230-A', 'FOCO DE 2P 12V AULITE', 20, '0.28'),
(2, '6671-A', 'FOCO DE 1P 12V AULITE', 20, '0.28'),
(3, 'T10-12A', 'FOCO DE UÑA 12V AULITE', 20, '0.22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `RUC` int(13) NOT NULL,
  `CIUDAD` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`ID`, `NOMBRE`, `RUC`, `CIUDAD`, `TELEFONO`, `DIRECCION`) VALUES
(1, 'REASA', 1718398710, 'QUITO NORTE', '2496198', 'EL CONDADO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente1`
--
ALTER TABLE `cliente1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ruc` (`ruc`);

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_detalle_idx` (`pedidos_id`);

--
-- Indices de la tabla `egreso`
--
ALTER TABLE `egreso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_pedido_idx` (`cliente_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente1`
--
ALTER TABLE `cliente1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `egreso`
--
ALTER TABLE `egreso`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `provedor`
--
ALTER TABLE `provedor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `pedido_detalle` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `cliente_pedido` FOREIGN KEY (`cliente_id`) REFERENCES `cliente1` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
