-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-10-2020 a las 19:23:52
-- Versión del servidor: 5.7.21-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.33-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ConteoPoda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_producer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_rut` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `company_producer`, `company_rut`, `company_email`, `created_at`, `updated_at`) VALUES
(1, 'Cliente 1', 'Cliente 1', 'sfsfse', 'safsafe', '2020-08-13 04:49:00', '2020-08-13 04:49:00'),
(2, 'Cliente 2', 'Cliente 2', 'sfsfsedwdd', 'safsafewdd', '2020-08-13 04:51:05', '2020-08-13 04:51:05'),
(3, 'Cliente 3', 'Cliente 3', 'sfsfsedwdd', 'safsafewdd', '2020-08-13 04:51:24', '2020-08-13 04:51:24'),
(4, 'Cliente 4 ', 'Cliente 4', 'fsaff', 'fsfe', '2020-08-13 05:06:32', '2020-08-13 05:06:32'),
(5, 'Cliente 5', 'Cliente 5', '269124679', 'ghjhjd@gmail.com', '2020-08-15 02:22:55', '2020-08-15 02:22:55'),
(6, 'Agricola HC', 'Agricola HC', '269124679', 'aquiles.martinez@birchmangroup.com', '2020-09-03 02:34:19', '2020-09-03 02:34:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client_farms`
--

CREATE TABLE `client_farms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `id_farm` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `client_farms`
--

INSERT INTO `client_farms` (`id`, `id_client`, `id_farm`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2020-08-13 04:51:24', '2020-08-13 04:51:24'),
(2, 4, 1, '2020-08-13 05:06:32', '2020-08-13 05:06:32'),
(4, 5, 1, '2020-08-15 02:22:55', '2020-08-15 02:22:55'),
(5, 6, 4, '2020-09-03 02:34:19', '2020-09-03 02:34:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counts`
--

CREATE TABLE `counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_employee` bigint(20) UNSIGNED NOT NULL,
  `employee_rut` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_day` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countscol` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `id_quarter` bigint(20) UNSIGNED NOT NULL,
  `quarter_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_season` bigint(20) UNSIGNED NOT NULL,
  `season_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_farm` bigint(20) UNSIGNED NOT NULL,
  `farm_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registered_in_batch` tinyint(1) NOT NULL DEFAULT '0',
  `row` int(11) DEFAULT NULL,
  `plant` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `obj` int(11) DEFAULT NULL,
  `diff` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rut` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_seasons`
--

CREATE TABLE `employee_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_employee` bigint(20) UNSIGNED NOT NULL,
  `id_season` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farms`
--

CREATE TABLE `farms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_reason` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `farms`
--

INSERT INTO `farms` (`id`, `name`, `description`, `address`, `social_reason`, `created_at`, `updated_at`) VALUES
(1, 'Campo 1', 'Campo 1', 'Campo 1', 'Campo 1', '2020-08-13 04:47:16', '2020-08-13 04:47:16'),
(3, 'Campo 2', 'Campo 2', 'Gran avenida 6300', 'Agricultura', '2020-08-25 01:35:18', '2020-08-25 01:35:18'),
(4, 'Los pozos', 'Los pozos', 'Santiago', 'HC agricola', '2020-09-03 02:33:33', '2020-09-03 02:33:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_11_08_015246_create_employees_table', 1),
(6, '2019_11_08_045755_create_farms_table', 1),
(7, '2019_11_08_050247_create_quarters_table', 1),
(8, '2019_11_13_051628_create_seasons_table', 1),
(9, '2019_11_13_051629_create_counts_table', 1),
(10, '2019_11_21_010232_add_variedad_hectarea_quarters_table', 1),
(11, '2019_11_21_010305_add_numero_planta_racimos_quarter_table', 1),
(12, '2019_11_29_150929_add_farms_id_to_quarters_table', 1),
(13, '2020_01_07_232302_create_employee_seasons_table', 1),
(14, '2020_01_09_082833_create_user_farms_table', 1),
(15, '2020_08_06_233706_create_clientes_table', 1),
(16, '2020_08_12_002121_create_client_farm_table', 1),
(17, '2020_08_18_194726_add_formacion_cuartel__table', 2),
(18, '2020_08_20_204654_create_poda_table', 3),
(19, '2020_08_20_204716_create_poda_cuartel_table', 4),
(20, '2020_09_05_233241_add_yemas_fertiles__a2_poda_cuartel_table', 5),
(21, '2020_09_07_170342_create_users_client_table', 6),
(22, '2020_09_08_014600_add_module_users_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `podas`
--

CREATE TABLE `podas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_season` bigint(20) UNSIGNED NOT NULL,
  `id_farm` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `podas`
--

INSERT INTO `podas` (`id`, `id_season`, `id_farm`, `date`, `total`, `id_user`, `id_client`, `created_at`, `updated_at`) VALUES
(26, 1, 1, '2020-08-21', 90000.00, 1, 5, '2020-10-03 01:23:59', '2020-10-03 01:23:59'),
(27, 3, 1, '2020-08-21', 90000.00, 1, 5, '2020-10-03 01:32:02', '2020-10-03 01:32:02'),
(28, 2, 1, '2020-08-21', 90000.00, 13, 5, '2020-10-10 00:31:56', '2020-10-10 00:31:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poda_cuartels`
--

CREATE TABLE `poda_cuartels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_poda` bigint(20) UNSIGNED NOT NULL,
  `id_quarter` bigint(20) UNSIGNED NOT NULL,
  `densidad_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantas_muertas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medias_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje_desecho` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `causa_desecho` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargadores_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yemas_cargador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pitones_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yemas_piton` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_yemas_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_yemas_hectareas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yemas_fertiles` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_plantas_potenciales` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_cargador_potenciales` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brotacion_esperada` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brotes_chupados` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje_racimos_chico` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje_racimos_medianos` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje_racimos_grandes` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gr_racimos_chico` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gr_racimos_medianos` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gr_racimos_grandes` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_efectivos_hectareas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_deseados_planta` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_efectivos_planta` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_deseados_hectareas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `racimos_eliminar` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_arreglo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_plantasha_densidad` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_plantasha` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porcentaje_descarte` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kilos_frutasha_efectivos` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kilos_frutasha_deseados` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cajas82ha_efectivas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cajas82ha_deseados` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_cajas_deseada_planta` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_cajas_efectiva_deseadas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cajas82ha_deseadas_cuartel` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `yemas_fertilesA2` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `poda_cuartels`
--

INSERT INTO `poda_cuartels` (`id`, `id_poda`, `id_quarter`, `densidad_plantas`, `plantas_muertas`, `medias_plantas`, `porcentaje_desecho`, `causa_desecho`, `cargadores_plantas`, `yemas_cargador`, `pitones_plantas`, `yemas_piton`, `n_yemas_plantas`, `n_yemas_hectareas`, `yemas_fertiles`, `racimos_plantas_potenciales`, `racimos_cargador_potenciales`, `brotacion_esperada`, `brotes_chupados`, `porcentaje_racimos_chico`, `porcentaje_racimos_medianos`, `porcentaje_racimos_grandes`, `gr_racimos_chico`, `gr_racimos_medianos`, `gr_racimos_grandes`, `racimos_efectivos_hectareas`, `racimos_deseados_planta`, `racimos_efectivos_planta`, `racimos_deseados_hectareas`, `racimos_eliminar`, `tipo_arreglo`, `n_plantasha_densidad`, `n_plantasha`, `porcentaje_descarte`, `kilos_frutasha_efectivos`, `kilos_frutasha_deseados`, `cajas82ha_efectivas`, `cajas82ha_deseados`, `n_cajas_deseada_planta`, `balance_cajas_efectiva_deseadas`, `cajas82ha_deseadas_cuartel`, `created_at`, `updated_at`, `yemas_fertilesA2`) VALUES
(7, 26, 1, '1666', '0', '45', '30', '2', '60', '40', '20', '20', '2400', '3998400', '45', '1080.45', '18', '30', '10', '30', '40', '30', '0.45', '0.60', '0.60', '479244.60000000003', '20', '291.6', '32870', '271.6', '4-3-3', '1666', '1643.5', '20', '212784.60240000003', '14594.279999999999', '25331.50028571429', '1737.4142857142856', '1.0571428571428572', '23594.086000000003', '4864.759999999999', '2020-10-03 01:23:59', '2020-10-03 01:23:59', '45'),
(8, 26, 2, '1666', '0', '78', '20', '3', '45', '45', '45', '45', '2025', '3373650', '20', '405.3', '9', '35', '45', '50', '20', '30', '0.60', '0.80', '0.90', '126844.9875', '40', '77.9625', '65080', '37.962500000000006', '4-3-3', '1666', '1627', '10', '83337.1567875', '42757.560000000005', '9921.09009375', '5090.185714285714', '3.1285714285714286', '4830.904379464285', '14252.519999999999', '2020-10-03 01:23:59', '2020-10-03 01:23:59', '30'),
(9, 27, 1, '1666', '0', '45', '45', '4', '45', '45', '45', '45', '2025', '3373650', '80', '1620.2', '36', '45', '45', '20', '20', '60', '0.50', '0.60', '0.70', '658961.3250000001', '50', '400.95000000000005', '82175', '350.95000000000005', '4-3-3', '1666', '1643.5', '20', '337388.19840000005', '42073.600000000006', '40165.26171428572', '5008.7619047619055', '3.047619047619048', '35156.49980952381', '14024.533333333335', '2020-10-03 01:32:02', '2020-10-03 01:32:02', '20'),
(10, 27, 2, '1666', '0', '90', '45', '2', '12', '12', '12', '45', '144', '239904', '25', '36.3', '3', '70', '20', '20', '30', '50', '0.60', '0.50', '0.80', '32679.36', '20', '20.16', '32420', '0.16000000000000014', '4-3-3', '1666', '1621', '20', '17516.13696', '17377.120000000003', '2085.2544', '2068.704761904762', '1.2761904761904763', '16.549638095237697', '5792.373333333334', '2020-10-03 01:32:02', '2020-10-03 01:32:02', '30'),
(11, 28, 2, '1666', '0', '45', '45', '2', '45', '45', '45', '45', '2025', '3373650', '45', '911.7', '20.25', '45', '45', '20', '30', '50', '0.60', '0.90', '0.20', '370564.05375', '63', '225.47250000000003', '103540.5', '162.47250000000003', '4-3-3', '1666', '1643.5', '20', '145261.10907000003', '40587.876000000004', '17292.989175000002', '4831.89', '2.9400000000000004', '12461.099175000003', '13529.292', '2020-10-10 00:31:56', '2020-10-10 00:31:56', '45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quarters`
--

CREATE TABLE `quarters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hectareas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variety` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portainjerto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_plants` int(11) NOT NULL,
  `number_plants_equivalent` int(11) NOT NULL,
  `number_plants_ha` int(11) NOT NULL,
  `number_plants_equivalent_ha` int(11) NOT NULL,
  `number_clusters_desired` int(11) NOT NULL,
  `number_clusters_ha` int(11) NOT NULL,
  `number_clusters_for_quarters` int(11) NOT NULL,
  `id_farm` bigint(20) UNSIGNED NOT NULL,
  `formacion` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distancia_entrehilera` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distancia_sobrehilera` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `densidad_plantas` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `quarters`
--

INSERT INTO `quarters` (`id`, `name`, `description`, `created_at`, `updated_at`, `hectareas`, `variety`, `portainjerto`, `number_plants`, `number_plants_equivalent`, `number_plants_ha`, `number_plants_equivalent_ha`, `number_clusters_desired`, `number_clusters_ha`, `number_clusters_for_quarters`, `id_farm`, `formacion`, `edad_plantas`, `distancia_entrehilera`, `distancia_sobrehilera`, `densidad_plantas`) VALUES
(1, 'Cuartel 1', 'Cuartel 1', '2020-08-13 04:58:42', '2020-08-25 02:09:12', '4324', '4234', '432', 34, 34, 43, 34, 34, 43, 45, 1, '2', '45', '45', '45', '1666'),
(2, 'Cuartel 2', 'Cuartel 2', '2020-08-15 00:12:39', '2020-08-25 01:16:06', '45', '4', '545', 45, 45, 54, 5454, 5, 44, 45, 1, '1', '1992', '2', '3', '1666'),
(3, 'Cuartel 3', 'Cueartel 3', '2020-08-15 01:54:26', '2020-08-15 01:54:26', '45', '45', '45', 45, 45, 45, 45, 45, 45, 45, 1, '', '', '', '', ''),
(4, 'Cuartel 4', 'Cuartel 4', '2020-08-15 01:54:53', '2020-09-22 19:50:53', '45', '45', '45', 45, 45, 45, 45, 45, 45, 45, 3, '1', '45', '45', '45', '45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'master', 'master', NULL, NULL),
(2, 'administrador', 'administrador', NULL, NULL),
(3, 'consultor', 'consultor', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seasons`
--

INSERT INTO `seasons` (`id`, `name`, `description`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Temporada 2020', 'Temporada 2020', '2020', '2020-08-15 00:11:09', '2020-08-15 00:13:00'),
(2, 'Temporada Uva 2018', 'Uva', '2018', '2020-08-25 01:16:55', '2020-08-25 01:16:55'),
(3, 'temporada 2019', 'Temporada 2019', '2019', '2020-09-03 01:26:55', '2020-09-03 01:26:55'),
(4, 'Temporada 2021', 'Temporada 2021', '2021', '2020-10-03 01:30:10', '2020-10-03 01:30:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rut` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `rut`, `id_role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `module`) VALUES
(1, 'master', 'master', 'rut', 1, 'master@conteo.com', NULL, '$2y$10$zHJhDXw4YUFghn7c53qAZuwlfkqcI7ZnUPhci.fnuMHKJyrqmxMgu', NULL, NULL, '2020-09-08 16:18:44', 3),
(2, 'administrador', 'administrador', 'rut', 3, 'admin@conteo.com', NULL, '$2y$10$qcZqF6yag0tCokB57BRXcOi2CsVD5oqvrU5cwyHTNS2Fj6oa9NXfm', NULL, NULL, NULL, 1),
(3, 'consultor', 'consultor', 'rut', 3, 'consultor@conteo.com', NULL, '$2y$10$.R7e4ue85FUFl9X2GOxDT.3eZU3hRxbRdcu8I8rgYuCDECE.CRIZy', NULL, NULL, NULL, 1),
(12, 'Aquiles', 'Martinez', '26.912.467-9', 3, 'aquiles888@gmail.com', NULL, '$2y$10$qGaJd6ZkSvBSD3kQTWuuiOcZ1r1yD1Bo.2jMWsc044GNqqIFBIbJS', NULL, '2020-09-08 20:01:40', '2020-10-01 02:49:41', 2),
(13, 'Aquiles', 'Martinez', '269124679', 2, 'aquiles.martinez@birchmangroup.com', NULL, '$2y$10$JNtKjJGOEVuJ9m9emDmfJOo0Qo6LyRhAxFfLZyMLGkHc/VcVofrjG', NULL, '2020-10-03 01:14:19', '2020-10-03 01:15:26', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_clients`
--

CREATE TABLE `user_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_clients`
--

INSERT INTO `user_clients` (`id`, `id_user`, `id_client`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2020-09-07 21:00:26', '2020-09-07 21:00:26'),
(2, 1, 2, '2020-09-07 21:00:26', '2020-09-07 21:00:26'),
(4, 12, 1, '2020-10-01 02:47:41', '2020-10-01 02:47:41'),
(5, 12, 5, '2020-10-01 02:47:41', '2020-10-01 02:47:41'),
(9, 13, 5, '2020-10-03 01:17:59', '2020-10-03 01:17:59'),
(10, 13, 6, '2020-10-03 01:17:59', '2020-10-03 01:17:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_farms`
--

CREATE TABLE `user_farms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_farm` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_farms`
--

INSERT INTO `user_farms` (`id`, `id_user`, `id_farm`, `created_at`, `updated_at`) VALUES
(7, 12, 1, '2020-10-01 02:47:41', '2020-10-01 02:47:41'),
(11, 13, 1, '2020-10-03 01:17:59', '2020-10-03 01:17:59'),
(12, 13, 4, '2020-10-03 01:17:59', '2020-10-03 01:17:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client_farms`
--
ALTER TABLE `client_farms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_farm_id_client_foreign` (`id_client`),
  ADD KEY `client_farm_id_farm_foreign` (`id_farm`);

--
-- Indices de la tabla `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counts_id_employee_foreign` (`id_employee`),
  ADD KEY `counts_employee_rut_foreign` (`employee_rut`),
  ADD KEY `counts_id_quarter_foreign` (`id_quarter`),
  ADD KEY `counts_quarter_name_foreign` (`quarter_name`),
  ADD KEY `counts_id_season_foreign` (`id_season`),
  ADD KEY `counts_season_name_foreign` (`season_name`),
  ADD KEY `counts_id_farm_foreign` (`id_farm`),
  ADD KEY `counts_farm_name_foreign` (`farm_name`),
  ADD KEY `counts_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_rut_unique` (`rut`);

--
-- Indices de la tabla `employee_seasons`
--
ALTER TABLE `employee_seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_seasons_id_employee_foreign` (`id_employee`),
  ADD KEY `employee_seasons_id_season_foreign` (`id_season`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `farms_name_unique` (`name`);

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
-- Indices de la tabla `podas`
--
ALTER TABLE `podas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poda_id_season_foreign` (`id_season`),
  ADD KEY `poda_id_farm_foreign` (`id_farm`),
  ADD KEY `poda_id_user_foreign` (`id_user`),
  ADD KEY `poda_id_client_foreign` (`id_client`);

--
-- Indices de la tabla `poda_cuartels`
--
ALTER TABLE `poda_cuartels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poda_cuartel_id_poda_foreign` (`id_poda`),
  ADD KEY `poda_cuartel_id_quarter_foreign` (`id_quarter`);

--
-- Indices de la tabla `quarters`
--
ALTER TABLE `quarters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quarters_name_unique` (`name`),
  ADD KEY `quarters_id_farm_foreign` (`id_farm`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seasons_name_unique` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`);

--
-- Indices de la tabla `user_clients`
--
ALTER TABLE `user_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_client_id_user_foreign` (`id_user`),
  ADD KEY `users_client_id_client_foreign` (`id_client`);

--
-- Indices de la tabla `user_farms`
--
ALTER TABLE `user_farms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_farms_id_user_foreign` (`id_user`),
  ADD KEY `user_farms_id_farm_foreign` (`id_farm`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `client_farms`
--
ALTER TABLE `client_farms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `counts`
--
ALTER TABLE `counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `employee_seasons`
--
ALTER TABLE `employee_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `farms`
--
ALTER TABLE `farms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `podas`
--
ALTER TABLE `podas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `poda_cuartels`
--
ALTER TABLE `poda_cuartels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `quarters`
--
ALTER TABLE `quarters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `user_clients`
--
ALTER TABLE `user_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `user_farms`
--
ALTER TABLE `user_farms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `client_farms`
--
ALTER TABLE `client_farms`
  ADD CONSTRAINT `client_farm_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `client_farm_id_farm_foreign` FOREIGN KEY (`id_farm`) REFERENCES `farms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `counts`
--
ALTER TABLE `counts`
  ADD CONSTRAINT `counts_employee_rut_foreign` FOREIGN KEY (`employee_rut`) REFERENCES `employees` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_farm_name_foreign` FOREIGN KEY (`farm_name`) REFERENCES `farms` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_id_employee_foreign` FOREIGN KEY (`id_employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_id_farm_foreign` FOREIGN KEY (`id_farm`) REFERENCES `farms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_id_quarter_foreign` FOREIGN KEY (`id_quarter`) REFERENCES `quarters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_id_season_foreign` FOREIGN KEY (`id_season`) REFERENCES `seasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_quarter_name_foreign` FOREIGN KEY (`quarter_name`) REFERENCES `quarters` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `counts_season_name_foreign` FOREIGN KEY (`season_name`) REFERENCES `seasons` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `employee_seasons`
--
ALTER TABLE `employee_seasons`
  ADD CONSTRAINT `employee_seasons_id_employee_foreign` FOREIGN KEY (`id_employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_seasons_id_season_foreign` FOREIGN KEY (`id_season`) REFERENCES `seasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `podas`
--
ALTER TABLE `podas`
  ADD CONSTRAINT `poda_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poda_id_farm_foreign` FOREIGN KEY (`id_farm`) REFERENCES `farms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poda_id_season_foreign` FOREIGN KEY (`id_season`) REFERENCES `seasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poda_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poda_cuartels`
--
ALTER TABLE `poda_cuartels`
  ADD CONSTRAINT `poda_cuartel_id_poda_foreign` FOREIGN KEY (`id_poda`) REFERENCES `podas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poda_cuartel_id_quarter_foreign` FOREIGN KEY (`id_quarter`) REFERENCES `quarters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `quarters`
--
ALTER TABLE `quarters`
  ADD CONSTRAINT `quarters_id_farm_foreign` FOREIGN KEY (`id_farm`) REFERENCES `farms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_clients`
--
ALTER TABLE `user_clients`
  ADD CONSTRAINT `users_client_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_client_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_farms`
--
ALTER TABLE `user_farms`
  ADD CONSTRAINT `user_farms_id_farm_foreign` FOREIGN KEY (`id_farm`) REFERENCES `farms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_farms_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
