-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 11:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transformator`
--

-- --------------------------------------------------------

--
-- Table structure for table `duval_pentagon_history`
--

CREATE TABLE `duval_pentagon_history` (
  `id` int(11) NOT NULL,
  `h2` float NOT NULL,
  `c2h6` float NOT NULL,
  `ch4` float NOT NULL,
  `c2h4` float NOT NULL,
  `c2h2` float NOT NULL,
  `cx` float NOT NULL,
  `cy` float NOT NULL,
  `faultClass` varchar(10) NOT NULL,
  `faultClassDefinition` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duval_pentagon_history`
--

INSERT INTO `duval_pentagon_history` (`id`, `h2`, `c2h6`, `ch4`, `c2h4`, `c2h2`, `cx`, `cy`, `faultClass`, `faultClassDefinition`, `userId`, `createdAt`) VALUES
(3, 12.8205, 24.7863, 29.0598, 14.5299, 18.8034, -6.37677, -4.12013, 'O', 'Overheating <250°C', 1, '2022-07-22 22:12:11'),
(4, 33.3333, 12.5, 20.8333, 29.1667, 4.16667, -1.34961, -3.5988, 'T3-H', 'Thermal Faults of T>700°C in Oil only', 1, '2022-07-22 22:12:34'),
(5, 7.94118, 24.7059, 19.1176, 26.7647, 21.4706, 0.39179, -5.37004, 'T3-H', 'Thermal Faults of T>700°C in Oil only', 1, '2022-07-24 09:48:38'),
(6, 12.2807, 42.1053, 8.77193, 21.0526, 15.7895, -6.40237, 1.60647, 'O', 'Overheating <250°C', 1, '2022-07-25 21:02:45'),
(7, 26.3636, 27.7273, 14.5455, 12.2727, 19.0909, -5.95776, 4.18502, 'S', 'Stray Gassing of Oil <200°C', 1, '2022-07-25 21:03:50'),
(8, 17.0732, 3.25203, 58.5366, 8.94309, 12.1951, -7.87037, -13.956, 'O', 'Overheating <250°C', 1, '2022-07-25 21:04:45'),
(9, 14.9573, 35.0427, 2.5641, 20.9402, 26.4957, 0.216938, 2.2967, 'D1', 'Discharge of Low Energy', 1, '2022-07-25 21:05:41'),
(10, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'T3-H', 'Thermal Faults of T>700°C in Oil only', 1, '2022-07-25 21:06:19'),
(11, 12.2807, 42.1053, 8.77193, 21.0526, 15.7895, -6.40237, 1.60647, 'O', 'Overheating <250°C', 1, '2022-07-25 21:13:33'),
(12, 26.3636, 27.7273, 14.5455, 12.2727, 19.0909, -5.95776, 4.18502, 'S', 'Stray Gassing of Oil <200°C', 1, '2022-07-25 21:14:21'),
(13, 17.0732, 3.25203, 58.5366, 8.94309, 12.1951, -7.87037, -13.956, 'C', 'Paper Carbonization >300°C', 1, '2022-07-25 21:14:45'),
(14, 14.9573, 35.0427, 2.5641, 20.9402, 26.4957, 0.216938, 2.2967, 'PD', 'Partial Discharge', 1, '2022-07-25 21:15:31'),
(15, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'D2', 'Discharge of High Energy', 1, '2022-07-25 21:16:17'),
(16, 14.9573, 35.0427, 2.5641, 20.9402, 26.4957, 0.216938, 2.2967, 'D1', 'Discharge of Low Energy', 1, '2022-07-25 21:17:27'),
(17, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'D2', 'Discharge of High Energy', 1, '2022-07-25 21:18:06'),
(18, 14.9573, 35.0427, 2.5641, 20.9402, 26.4957, 0.216938, 2.2967, 'D1', 'Discharge of Low Energy', 1, '2022-07-25 21:18:50'),
(19, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'T3-H', 'Thermal Faults of T>700°C in Oil only', 1, '2022-07-25 21:19:21'),
(20, 17.0732, 3.25203, 58.5366, 8.94309, 12.1951, -7.87037, -13.956, 'C', 'Paper Carbonization >300°C', 1, '2022-07-25 21:22:07'),
(21, 14.9573, 35.0427, 2.5641, 20.9402, 26.4957, 0.216938, 2.2967, 'D1', 'Discharge of Low Energy', 1, '2022-07-25 21:23:33'),
(22, 12.2807, 42.1053, 8.77193, 21.0526, 15.7895, -6.40237, 1.60647, 'D1', 'Discharge of Low Energy', 1, '2022-07-25 21:24:07'),
(23, 26.3636, 27.7273, 14.5455, 12.2727, 19.0909, -5.95776, 4.18502, 'S', 'Stray Gassing of Oil <200°C', 1, '2022-07-25 21:24:55'),
(24, 9.70874, 32.5243, 20.3883, 28.6408, 8.73786, -5.34908, -4.83969, 'C', 'Paper Carbonization >300°C', 1, '2022-08-02 13:55:17'),
(25, 23.7458, 8.02676, 20.7358, 19.7324, 27.7592, 4.01274, -3.76096, 'D2', 'Discharge of High Energy', 1, '2022-08-03 10:02:03'),
(26, 12.2807, 42.1053, 8.77193, 21.0526, 15.7895, -6.40237, 1.60647, 'O', 'Overheating <250°C', 1, '2022-08-03 10:21:47'),
(27, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'D2', 'Discharge of High Energy', 1, '2022-08-03 10:22:47'),
(28, 14.6154, 1.53846, 18.4615, 23.0769, 42.3077, 12.2252, -4.55411, 'D2', 'Discharge of High Energy', 1, '2022-08-03 10:25:30'),
(29, 15.3191, 34.8936, 2.55319, 20.8511, 26.383, 0.0795486, 2.42461, 'S', 'Stray Gassing of Oil <200°C', 1, '2022-08-03 10:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `duval_triangle_history`
--

CREATE TABLE `duval_triangle_history` (
  `id` int(11) NOT NULL,
  `ch4` float NOT NULL,
  `c2h4` float NOT NULL,
  `c2h2` float NOT NULL,
  `cx` float NOT NULL,
  `cy` float NOT NULL,
  `faultClass` varchar(10) NOT NULL,
  `faultClassDefinition` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duval_triangle_history`
--

INSERT INTO `duval_triangle_history` (`id`, `ch4`, `c2h4`, `c2h2`, `cx`, `cy`, `faultClass`, `faultClassDefinition`, `createdAt`, `userId`) VALUES
(1, 24.5614, 45.614, 29.8246, 57.2, 21, 'D2', 'Discharge of High Energy', '2022-07-23 17:45:59', 1),
(2, 18.0645, 34.8387, 47.0968, 43.3, 15.5, 'D2', 'Discharge of High Energy', '2022-07-24 08:55:20', 1),
(3, 43.4783, 21.7391, 34.7826, 43, 37.2, 'D1', 'Discharge of Low Energy', '2022-07-24 08:56:31', 1),
(4, 13.3333, 46.6667, 40, 52.7, 11.4, 'D2', 'Discharge of High Energy', '2022-07-25 19:06:05', 1),
(5, 22.7273, 31.25, 46.0227, 42.1, 19.4, 'D2', 'Discharge of High Energy', '2022-08-02 13:54:15', 1),
(6, 20.765, 49.7268, 29.5082, 59.4, 17.8, 'DT', 'Mixture of Electrical and Thermal Fault', '2022-08-03 10:00:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `train_result`
--

CREATE TABLE `train_result` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `accuracy` float NOT NULL,
  `type` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_result`
--

INSERT INTO `train_result` (`id`, `name`, `createdAt`, `accuracy`, `type`, `userId`) VALUES
(1, 'kq9kaEbRWbs7chFFOz0HU', '2022-07-22 22:08:55', 0.968504, 1, 1),
(2, 'rQqVQJ1UoCI1_t0FdpwqM', '2022-07-23 17:45:35', 0.91453, 0, 1),
(3, 'tELDmfYQuWh6iE-eBHFNJ', '2022-07-23 21:19:07', 0.937322, 0, 1),
(4, 'GhpEFZa30Jcd4hRD5gD_2', '2022-07-25 19:01:07', 0.940171, 0, 1),
(5, '2iqTG7ErazIboHNdtH2VD', '2022-07-25 19:01:53', 0.928826, 0, 1),
(6, 'a23LBxX4tcZkqyhZaFXfp', '2022-07-25 20:56:08', 1, 1, 1),
(7, 'Wg-Z7QVRS9DOUwk3U4hS_', '2022-07-25 20:56:43', 0.714286, 1, 1),
(8, 'Doc5zTeIbP-NKu9kyoiMK', '2022-07-25 20:57:37', 1, 1, 1),
(9, '42Xf7jtnp3QpeRts3lyO-', '2022-07-25 20:57:55', 1, 1, 1),
(10, 'JhIYDXrOSVoLfOHHEUuRf', '2022-07-25 21:07:42', 1, 1, 1),
(11, 'WLcPhvSOq5HpKpd8ErhtJ', '2022-07-25 21:08:50', 1, 1, 1),
(12, 'pD3N08Gxc63KPYFY35WR0', '2022-07-25 21:09:12', 1, 1, 1),
(13, '0TjBn89mhIU-JH72gqJo9', '2022-07-25 21:11:12', 1, 1, 1),
(14, 'BLHEcwz9C9tQ9t3hAQyCv', '2022-07-25 21:12:03', 1, 1, 1),
(15, 'Dluk3u9E7vfyVj6D-q855', '2022-07-25 21:16:59', 1, 1, 1),
(16, 'HjQ78k4-P7te_u7C3Ffc_', '2022-07-25 21:18:26', 1, 1, 1),
(17, 'grEEFNKhGXKwJYRlRTkWb', '2022-07-26 05:22:51', 0.857143, 1, 1),
(18, 'MeG7517Zh9Mly4FAcO6cJ', '2022-07-26 05:24:32', 0.571429, 1, 1),
(19, '0GAYbaL4t-m8eMMIfun2K', '2022-07-26 05:25:38', 0.857143, 1, 1),
(20, 'nB2jq9K8W7AxpBVFwP2k_', '2022-07-26 05:32:45', 0.857143, 1, 1),
(21, 'wIZ4jHJ4vhC0xDDbhYFHU', '2022-07-26 05:40:51', 1, 1, 1),
(22, 'ff8x7ZCyj-6p7FPFIWCnb', '2022-07-26 05:42:32', 0.857143, 1, 1),
(23, 'H6muXLjipBnklllPgzWqi', '2022-07-26 15:12:04', 0.941176, 1, 1),
(24, 'oJOT1XtEG5Hhna0rsWAPn', '2022-07-26 15:18:18', 0.946078, 1, 1),
(25, 'G-tBvA0vzpKubVrTOW2sp', '2022-07-26 15:21:06', 0.960784, 1, 1),
(26, 'sDtZnadbZsK3vzVwEDT4i', '2022-07-26 15:21:25', 0.95098, 1, 1),
(27, '1wR49AodmwROuSpxUCVYz', '2022-07-26 15:21:49', 0.95098, 1, 1),
(28, 'EL1z7YfCVrWW1AfbJgb6g', '2022-07-26 15:22:06', 0.952756, 1, 1),
(29, 'gp_G9AUztZf7jd-lOOkLU', '2022-07-26 15:22:22', 0.96063, 1, 1),
(30, 'IZlc84r6iTHxWlyexr1qu', '2022-07-26 15:22:47', 0.937008, 1, 1),
(31, 'shR-FaJeyqKGxt9vVkp3I', '2022-07-26 15:23:00', 0.964567, 1, 1),
(32, 'BC1PWgEbMUpo1Ql6MjnGo', '2022-07-26 21:09:34', 0.714286, 1, 1),
(33, '-CnoggeD_sL4BymrmjKAB', '2022-07-26 21:10:40', 0.928571, 1, 1),
(34, 'm1CV7ecAH3jI8D0Sn6sWp', '2022-07-26 21:12:26', 0.928571, 1, 1),
(35, '-2xmN6rqHWS3OEA8zWD4o', '2022-07-26 21:14:19', 0.857143, 1, 1),
(36, 'T8NJdx4tUgjaKEdJh-gMg', '2022-07-26 21:18:55', 1, 1, 1),
(37, 'ozg6awtlr2cm6e4UC9dKy', '2022-07-26 21:19:08', 0.642857, 1, 1),
(38, 'HpoHPqXbu10XuVtaRK54L', '2022-07-26 21:20:22', 1, 1, 1),
(39, '4_JGuUyHHNHGhUp8vktnz', '2022-07-26 21:20:36', 0.857143, 1, 1),
(40, 'oQtQF-_uxg46wwGoTyIRb', '2022-07-26 21:33:43', 0.714286, 1, 1),
(41, 'z3qLYRbBkYrue8rGre4GB', '2022-07-26 21:34:45', 0.428571, 1, 1),
(42, 'CmdCYrisgvlMa1u8w2yMc', '2022-07-26 21:35:00', 0.928571, 1, 1),
(43, 'p7IPkiaDXqx9sx4RuLEV8', '2022-07-26 21:37:02', 0.928571, 1, 1),
(44, 'TmkaScAlqtaofbZiYp3Gj', '2022-07-26 21:38:42', 0.714286, 1, 1),
(45, 'XUdpq2ZoH2gfOgMEhcUbk', '2022-07-26 22:08:34', 0.428571, 1, 1),
(46, 'acguvF-LxDX_o6rltkjLC', '2022-07-26 22:09:15', 0.619048, 1, 1),
(47, '1LCyJWsKALBN7Wi0KYwzt', '2022-07-26 22:09:46', 0.619048, 1, 1),
(48, 'W0ruGJm3FkoVYEQ3g1lre', '2022-07-27 06:51:20', 0.714286, 1, 1),
(49, '2CwRFpeYxq6ex1WLGwg4c', '2022-07-27 06:53:15', 0.714286, 1, 1),
(50, 'MinBizZZ8qM0772dJKLvZ', '2022-07-27 06:53:33', 1, 1, 1),
(51, 'DfRhxmXnRSsHdQP9G9bPw', '2022-07-27 06:54:38', 0.785714, 1, 1),
(52, 'IGpkrYuWLdifTADr8Qe9k', '2022-07-27 07:23:42', 0.785714, 1, 1),
(53, '547_ahgHkAqynjls_2_B4', '2022-07-27 07:24:33', 0.642857, 1, 1),
(54, 'qnBCkY7TfiVpZmaWddN-C', '2022-07-27 07:26:07', 0.952756, 1, 1),
(55, 'LNaRy1hXNIvOzvdHNemdc', '2022-07-27 07:27:53', 0.944882, 1, 1),
(56, 'i5Cbk1ww8afabHIVvIRs6', '2022-07-27 13:19:02', 0.986928, 1, 1),
(57, 'xTP8qfEngtE2h4pXi4T9o', '2022-07-27 13:19:21', 0.960784, 1, 1),
(58, 'TDARu4cQ1xc4xxwkTtQqJ', '2022-07-27 13:19:33', 0.96732, 1, 1),
(59, 'mSYnp5nagF2ERO2wfRmJO', '2022-07-27 13:20:21', 0.960784, 1, 1),
(60, 'tSQQ--d1XSFF_cfnJMbzu', '2022-07-27 13:20:45', 0.986928, 1, 1),
(61, 'SigJZQ-XdtTgKVU5ABvpw', '2022-07-27 13:21:15', 0.941176, 1, 1),
(62, 'qRMdMeSu-HPcg31c3pw58', '2022-07-27 13:21:47', 0.946078, 1, 1),
(63, 'Fb8JpL1hqO49beZUrnPNN', '2022-07-27 13:22:10', 0.960784, 1, 1),
(64, 'Y3yTApfx-9QNofdVS7nNn', '2022-07-27 13:22:33', 0.960784, 1, 1),
(65, 'hi7ZbxxjgpRD7j1s3U-H3', '2022-07-27 13:22:48', 0.931373, 1, 1),
(66, 'NeFFhI6-OoqWFom2MJ-lD', '2022-07-27 13:23:15', 0.941176, 1, 1),
(67, 'J_dKiMwM4NgXtlYL4n1t0', '2022-07-27 13:23:35', 0.95098, 1, 1),
(68, 'Qu8YjlINtFzCjR6IXmDZn', '2022-07-27 13:24:03', 0.948819, 1, 1),
(69, 'Kbn3NpWiBe_TFvxrYZBCh', '2022-07-27 13:24:21', 0.972441, 1, 1),
(70, 'm1edj7-v0iQkUDbbtj6is', '2022-07-27 13:24:44', 0.940945, 1, 1),
(71, 'zzNIRlLkOQ98OG4YoXdgo', '2022-07-27 13:25:11', 0.96063, 1, 1),
(72, 'Oi0h--aV4D74Xyg89dfJ6', '2022-07-27 13:25:36', 0.947541, 1, 1),
(73, 'S4_Xt8qXJMyccPcwQGqWi', '2022-07-27 13:25:57', 0.931148, 1, 1),
(74, 'PWIAN7hW03PcRscfg3lfZ', '2022-07-27 13:26:25', 0.963934, 1, 1),
(75, 'sJcoUREI59Sg0AcOCmfGd', '2022-07-27 13:27:29', 0.960656, 1, 1),
(76, 'UyVISnJh8qD-3dZRY53M2', '2022-07-27 13:27:53', 0.963483, 1, 1),
(77, 'TDbuz4u6nzwD_q52PRB9V', '2022-07-27 13:28:23', 0.957865, 1, 1),
(78, 'TcpZ6vKXSTr9t-M9lZDwp', '2022-07-27 13:28:47', 0.963483, 1, 1),
(79, 'YPjFxuZnNYdugjq-Q0Des', '2022-07-27 13:29:14', 0.949438, 1, 1),
(80, 'EkV7Rqu1-J7vRMgKfO9kM', '2022-07-27 13:29:37', 0.94382, 1, 1),
(81, 'FmPuvhd1bL1m_QThGDrOj', '2022-07-27 13:31:32', 0.954248, 1, 1),
(82, 'ax3EJ8iOJPLXz7AlX-UpE', '2022-07-27 13:32:05', 0.965686, 1, 1),
(83, '0fVZbkBv1tkfraJFEubrD', '2022-07-27 13:32:32', 0.952756, 1, 1),
(84, 'kGr5EMzqRNR3Ie8adYft8', '2022-07-27 13:32:57', 0.940984, 1, 1),
(85, 'QfXaDkZm-hGUrGhnI5nW1', '2022-07-27 13:33:17', 0.949438, 1, 1),
(86, 'hpiCAgZCX1xuvDyEh_ZCt', '2022-07-27 13:33:33', 0.946629, 1, 1),
(87, 'lIkFv3JlA-QrOyEk_hqZN', '2022-07-29 10:06:43', 0.938389, 0, 1),
(88, 'o2Vh4ENkW__Z7odEkwkkN', '2022-07-29 10:07:09', 0.92891, 0, 1),
(89, 'VtfoGLvMGxJalLfxw2sNw', '2022-07-29 10:07:31', 0.933649, 0, 1),
(90, 'kT_apgb9hR3So-hLxm8bg', '2022-07-29 10:07:59', 0.895735, 0, 1),
(91, '7DQF-l1KW6GGa5w08zDrl', '2022-07-29 10:08:31', 0.919431, 0, 1),
(92, '6y_sG-id0zfZuSTZZfDb9', '2022-07-29 10:08:57', 0.935943, 0, 1),
(93, 'TZtZaxJ7kpTycmh5yVYCJ', '2022-07-29 10:09:22', 0.935943, 0, 1),
(94, 'MwVCXVJOrWORW0igyE5W0', '2022-07-29 10:09:39', 0.918149, 0, 1),
(95, '2wwBW8IzACMKwurccRbkl', '2022-07-29 10:10:56', 0.921708, 0, 1),
(96, 'u0rlYoL3DUcYjG1aJj6Aw', '2022-07-29 10:11:18', 0.939502, 0, 1),
(97, 'jSHsD6OR-8thLum6gfcgL', '2022-07-29 10:11:44', 0.939502, 0, 1),
(98, 'F-CnBuj8ilLwI1fI7A55r', '2022-07-29 10:12:00', 0.946619, 0, 1),
(99, 'EGSmnXy3yEQITHJVr-mjl', '2022-07-29 10:12:25', 0.925926, 0, 1),
(100, 'bLvxZeMSAek5uXybw70Na', '2022-07-29 10:12:48', 0.94302, 0, 1),
(101, 'CzAAi1umfmGDLcTLe6v66', '2022-07-29 10:13:13', 0.917379, 0, 1),
(102, 'PZ4a_7g4Rd8sDfJMs-q3A', '2022-07-29 10:13:38', 0.960114, 0, 1),
(103, 'DTO4nbnKxkdXOal2YhObM', '2022-07-29 10:14:01', 0.908832, 0, 1),
(104, 'mItMWPZ_idfn_j5QL3Y2p', '2022-07-29 10:14:21', 0.938242, 0, 1),
(105, 'uZdx74aZFYnpbRteylLFI', '2022-07-29 10:14:50', 0.947743, 0, 1),
(106, 'hgysQTBdsaJ-wdMd1dpRZ', '2022-07-29 10:15:26', 0.916865, 0, 1),
(107, 'L3l5ak0xJ6O6sLiTvjgf8', '2022-07-29 10:15:46', 0.935867, 0, 1),
(108, 'qt3wqbF2z7SQLy78a83iZ', '2022-07-29 10:16:10', 0.945368, 0, 1),
(109, 'R3oe6VwHsPvWSTr1MEgyx', '2022-07-29 10:16:38', 0.92057, 0, 1),
(110, 'QdRu9vp-nmpbrBPSE0O-q', '2022-07-29 10:17:03', 0.92668, 0, 1),
(111, 'YuIHAUQWr_SMbxidOZWOp', '2022-07-29 10:17:24', 0.92668, 0, 1),
(112, 'dii5ZqOm-kHus7_Wx5-Rk', '2022-07-29 10:17:38', 0.922607, 0, 1),
(113, 'lbp3M1p7icD22jluPDfZg', '2022-07-29 10:17:59', 0.930754, 0, 1),
(114, 'KKcLjYh8GbiaWYhF8K1NN', '2022-07-29 10:18:18', 0.940937, 0, 1),
(115, 'k5ihIDGtSAex3eDRxZ1S3', '2022-07-29 10:18:43', 0.952607, 0, 1),
(116, 'Nm387wZBf0kL5KRzYNHnH', '2022-08-02 13:54:03', 0.923077, 0, 1),
(117, 'Z_ZthhUt9b0aShBjYgDZw', '2022-08-02 13:54:50', 0.960784, 1, 1),
(118, 'WFvJL9Oj3Sv4I54eCpAqo', '2022-08-03 09:58:53', 0.940171, 0, 1),
(119, 'ibwWvnlTOOhZ4eu89_MCf', '2022-08-03 10:01:17', 0.960784, 1, 1),
(120, '2WA2f337mAzTIrw8Vy4bY', '2022-08-03 10:17:41', 0.714286, 1, 1),
(121, 'T8lMbGW0iKOb_LxQYKDiJ', '2022-08-03 10:24:56', 0.954248, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'Hunayn Risatayn', 'hunaynr@gmail.com', 'hunaynr', 'sha256$sjkU2HUafUEj2aJB$8171be5fc3f4037164e58b439c0cd1f12e7399c875f77e892107721d5b57faa1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duval_pentagon_history`
--
ALTER TABLE `duval_pentagon_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `duval_triangle_history`
--
ALTER TABLE `duval_triangle_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `train_result`
--
ALTER TABLE `train_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duval_pentagon_history`
--
ALTER TABLE `duval_pentagon_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `duval_triangle_history`
--
ALTER TABLE `duval_triangle_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `train_result`
--
ALTER TABLE `train_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `duval_pentagon_history`
--
ALTER TABLE `duval_pentagon_history`
  ADD CONSTRAINT `duval_pentagon_history_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `duval_triangle_history`
--
ALTER TABLE `duval_triangle_history`
  ADD CONSTRAINT `duval_triangle_history_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `train_result`
--
ALTER TABLE `train_result`
  ADD CONSTRAINT `train_result_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
