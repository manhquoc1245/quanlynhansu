-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2022 lúc 01:59 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanly_nhansu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_cap`
--

CREATE TABLE `bang_cap` (
  `id` int(11) NOT NULL,
  `ma_bang_cap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_bang_cap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bang_cap`
--

INSERT INTO `bang_cap` (`id`, `ma_bang_cap`, `ten_bang_cap`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(0, 'MBC1569664716', 'Không', '', '13', '2019-09-28 16:58:36', '13', '2019-09-28 16:58:36', '0'),
(1, 'MBC1569651987', 'Bằng cử nhân', '', '13', '2019-09-28 13:26:27', '13', '2019-09-28 13:26:27', '0'),
(2, 'MBC1569652012', 'Bằng thạc sĩ', '', '13', '2019-09-28 13:26:52', '13', '2019-09-28 13:26:52', '0'),
(3, 'MBC1569652035', 'Bằng tiến sĩ', '', '13', '2019-09-28 13:27:15', '13', '2019-09-28 13:27:15', '0'),
(4, 'MBC1569652169', 'Cử nhân khoa học xã hội', '', '13', '2019-09-28 13:29:29', '13', '2019-09-28 13:29:29', '0'),
(5, 'MBC1569652180', 'Cử nhân khoa học tự nhiên', '', '13', '2019-09-28 13:29:40', '13', '2019-09-28 13:29:40', '0'),
(8, 'MBC1569652431', 'Cử nhân quản trị kinh doanh', '', '13', '2019-09-28 13:33:51', '13', '2019-09-28 13:33:51', '0'),
(9, 'MBC1569652436', 'Cử nhân thương mại và quản trị', '', '13', '2019-09-28 13:33:56', '13', '2019-09-28 13:33:56', '0'),
(10, 'MBC1569652441', 'Cử nhân kế toán', '<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -206px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -206px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</', '13', '2019-09-28 13:34:01', '13', '2022-06-16 08:54:26', '0'),
(11, 'MBC1569652448', 'Cử nhân luật', '', '13', '2019-09-28 13:34:08', '13', '2019-09-28 13:34:08', '0'),
(12, 'MBC1569652456', 'Cử nhân ngành quản trị và chính sách công', '', '13', '2019-09-28 13:34:16', '13', '2019-09-28 13:34:16', '0'),
(13, 'MBC1569652463', 'Thạc sĩ khoa học xã hội', '', '13', '2019-09-28 13:34:23', '13', '2019-09-28 13:34:23', '0'),
(14, 'MBC1569652469', 'Thạc sĩ khoa học tự nhiên', '', '13', '2019-09-28 13:34:29', '13', '2019-09-28 13:34:29', '0'),
(15, 'MBC1569652475', 'Thạc sĩ quản trị kinh doanh', '', '13', '2019-09-28 13:34:35', '13', '2019-09-28 13:34:35', '0'),
(16, 'MBC1569652481', 'Thạc sĩ kế toán', '', '13', '2019-09-28 13:34:41', '13', '2019-09-28 13:56:55', '0'),
(21, 'MBC1655343486', 'test', '<p>test</p>\r\n', '13', '2022-06-16 08:38:41', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinh_luong`
--

CREATE TABLE `chinh_luong` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `so_qd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_ky_ket` datetime NOT NULL,
  `ngay_dieu_chinh` datetime NOT NULL,
  `heso_luong_cu` double NOT NULL,
  `heso_luong_moi` double NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_nhom`
--

CREATE TABLE `chi_tiet_nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhan_vien_id` int(11) NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_nhom`
--

INSERT INTO `chi_tiet_nhom` (`id`, `ma_nhom`, `nhan_vien_id`, `nguoi_tao`, `ngay_tao`, `del_flag`) VALUES
(1, 'GRP1571110024', 11, '13', '2019-10-15 11:39:22', '0'),
(2, 'GRP1571110024', 10, '13', '2019-10-15 11:42:07', '0'),
(3, 'GRP1571110024', 5, '13', '2019-10-15 11:56:45', '0'),
(8, 'GRP1571110761', 5, '13', '2019-10-15 12:09:33', '0'),
(9, 'GRP1571110761', 4, '13', '2019-10-15 12:09:38', '0'),
(17, 'GRP1571110790', 11, '13', '2019-10-15 14:48:47', '0'),
(18, 'GRP1571110790', 13, '13', '2019-10-15 14:48:50', '1'),
(19, 'GRP1571110790', 3, '13', '2019-10-15 14:48:56', '0'),
(20, 'GRP1571110114', 10, '13', '2019-10-15 14:49:08', '0'),
(21, 'GRP1571110114', 5, '13', '2019-10-15 14:49:12', '0'),
(22, 'GRP1571110114', 3, '13', '2019-10-15 14:49:18', '0'),
(23, 'GRP1571110114', 8, '13', '2019-10-15 14:49:24', '0'),
(24, 'GRP1571110790', 8, '13', '2019-10-17 08:44:12', '0'),
(25, 'GRP1571110761', 8, '13', '2022-06-26 09:58:52', '0'),
(26, 'GRP1656482800', 12, '11', '2022-06-29 13:46:55', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int(11) NOT NULL,
  `ma_chuc_vu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_chuc_vu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `luong_ngay` double NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chuc_vu`
--

INSERT INTO `chuc_vu` (`id`, `ma_chuc_vu`, `ten_chuc_vu`, `luong_ngay`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(16, 'MCV1569203762', 'Phó giám đốc', 560000, '', '13', '2019-09-23 08:56:02', '13', '2019-10-01 16:33:10', '0'),
(17, 'MCV1569203773', 'Giám đốc', 600000, '', '13', '2019-09-23 08:56:13', '13', '2019-10-02 09:59:00', '0'),
(33, 'MCV1569204007', 'Nhân viên', 230000, '<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -53px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -53px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</di', '13', '2019-09-23 09:00:07', '13', '2022-06-13 15:12:04', '0'),
(37, 'MCV1569985216', 'Trưởng phòng', 310000, '', '13', '2019-10-02 10:00:16', '13', '2019-10-02 10:00:16', '0'),
(38, 'MCV1569985261', 'Phó phòng', 280000, '', '13', '2019-10-02 10:01:01', '13', '2019-10-02 10:01:01', '0'),
(39, 'MCV1571105797', 'Marketing', 285000, '<p>Quảng b&aacute;, k&ecirc;u gọi kh&aacute;ch h&agrave;ng tham gia.</p>\r\n', '13', '2019-10-15 09:16:37', '13', '2019-10-15 09:16:37', '0'),
(43, 'MCV1655107924', 'test', 123124, '<p>test</p>\r\n', '13', '2022-06-13 15:17:08', NULL, NULL, '1'),
(44, 'MCV1655108271', 'test', 125125, '<p>trest</p>\r\n', '13', '2022-06-13 15:18:12', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_mon`
--

CREATE TABLE `chuyen_mon` (
  `id` int(11) NOT NULL,
  `ma_chuyen_mon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_chuyen_mon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chuyen_mon`
--

INSERT INTO `chuyen_mon` (`id`, `ma_chuyen_mon`, `ten_chuyen_mon`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(0, 'MCM1569664640', 'Không', '', '13', '2019-09-28 16:57:20', '13', '2019-09-28 16:57:20', '0'),
(2, 'MCM1569208526', 'Kế toán', '', '13', '2019-09-23 10:15:26', '13', '2019-09-23 10:15:26', '0'),
(3, 'MCM1569208539', 'Công nghệ thông tin', '', '13', '2019-09-23 10:15:39', '13', '2019-09-23 10:15:39', '0'),
(4, 'MCM1569208553', 'Quản trị nhà hàng - khách sạn', '', '13', '2019-09-23 10:15:53', '13', '2019-09-23 10:15:53', '0'),
(5, 'MCM1569208562', 'Tiếp tân', '', '13', '2019-09-23 10:16:02', '13', '2019-09-23 10:16:02', '0'),
(6, 'MCM1569208577', 'Sale', '', '13', '2019-09-23 10:16:17', '13', '2019-09-23 10:16:17', '0'),
(7, 'MCM1569208618', 'Hành chính văn phòng', '', '13', '2019-09-23 10:16:58', '13', '2019-09-23 10:16:58', '0'),
(8, 'MCM1569208631', 'Quản lý chất lượng', '', '13', '2019-09-23 10:17:11', '13', '2019-09-23 10:17:11', '0'),
(9, 'MCM1569208648', 'Thương mại điện tử', '<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -262px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -262px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</', '13', '2019-09-23 10:17:28', '13', '2022-06-13 16:18:16', '0'),
(10, 'MCM1569208673', 'Tài chính', '', '13', '2019-09-23 10:17:53', '13', '2019-09-23 10:17:53', '0'),
(11, 'MCM1569208680', 'Quản lý', '', '13', '2019-09-23 10:18:00', '13', '2019-09-23 10:18:00', '0'),
(12, 'MCM1569208698', 'Maketing', '', '13', '2019-09-23 10:18:18', '13', '2019-09-28 13:05:19', '0'),
(13, 'MCM1569208705', 'Khởi nghiệp', '', '13', '2019-09-23 10:18:25', '13', '2019-09-23 10:18:25', '0'),
(14, 'MCM1569208731', 'Quản lý nguồn nhân lực', '', '13', '2019-09-23 10:18:51', '13', '2019-09-23 10:18:51', '0'),
(15, 'MCM1569208740', 'Kinh doanh', '', '13', '2019-09-23 10:19:00', '13', '2019-09-23 10:19:00', '0'),
(16, 'MCM1569208758', 'Vận tải và hậu cần', '', '13', '2019-09-23 10:19:18', '13', '2019-09-23 10:19:18', '0'),
(17, 'MCM1569208771', 'Kinh doanh', '', '13', '2019-09-23 10:19:31', '13', '2019-09-23 10:19:31', '0'),
(18, 'MCM1569208782', 'Bán lẻ', '', '13', '2019-09-23 10:19:42', '13', '2019-09-23 10:19:42', '0'),
(22, 'MCM1655111569', 'qưtqwtqw', '<p>tqwtqwtwq</p>\r\n', '13', '2022-06-13 16:12:52', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_tac`
--

CREATE TABLE `cong_tac` (
  `id` int(11) NOT NULL,
  `ma_cong_tac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `dia_diem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `muc_dich` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cong_tac`
--

INSERT INTO `cong_tac` (`id`, `ma_cong_tac`, `nhanvien_id`, `ngay_bat_dau`, `ngay_ket_thuc`, `dia_diem`, `muc_dich`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(1, 'MCT1570351884', 3, '2019-10-06', '2019-12-06', 'Cần Thơ', '<p>Đi khảo s&aacute;t t&igrave;nh h&igrave;nh c&aacute;c c&ocirc;ng ty lớn</p>\r\n', '', '13', '2019-10-06 15:51:24', '13', '0000-00-00 00:00:00', '0'),
(3, 'MCT1570352254', 4, '2019-10-06', '2019-12-06', 'Phú Quốc', '<p>Khảo s&aacute;t t&igrave;nh h&igrave;nh c&aacute;c qu&aacute;n b&aacute;n hải sản ở Ph&uacute; Quốc</p>\r\n', '', '13', '2019-10-06 15:57:34', '13', '0000-00-00 00:00:00', '0'),
(5, 'MCT1570353978', 5, '2019-10-08', '2019-10-10', 'Cần Thơ', '<p>Đi chơi</p>\r\n', '', '13', '2019-10-06 16:26:18', '13', '2019-10-06 16:54:16', '0'),
(6, 'MCT1571039527', 10, '2019-10-14', '2019-12-11', 'Phú Quốc', '<p>Đi chơi Vinpearl Land để t&igrave;m hiểu t&igrave;nh h&igrave;nh</p>\r\n', '', '13', '2019-10-14 14:52:07', '13', '0000-00-00 00:00:00', '0'),
(7, 'MCT1571106674', 11, '2019-10-15', '2019-11-15', 'Hà Nội', '<p>Đi khảo s&aacute;t</p>\r\n', '', '13', '2019-10-15 09:31:14', '13', '0000-00-00 00:00:00', '0'),
(8, 'MCT1656487584', 12, '2022-06-29', '2022-06-29', 'àdsfs', '', '', '11', '2022-06-29 14:26:36', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dan_toc`
--

CREATE TABLE `dan_toc` (
  `id` int(11) NOT NULL,
  `ten_dan_toc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dan_toc`
--

INSERT INTO `dan_toc` (`id`, `ten_dan_toc`, `del_flag`) VALUES
(1, 'Kinh', '0'),
(2, 'Khơ-me', '0'),
(3, 'Mường', '0'),
(4, 'Thổ', '0'),
(5, 'H\'Mông', '0'),
(6, 'Ê-đê', '0'),
(7, 'Bố Y', '0'),
(8, 'Lào', '0'),
(9, 'Tày', '0'),
(10, 'Thái', '0'),
(11, 'Nùng', '0'),
(12, 'Khơ-mú', '0'),
(13, 'M\'Nông', '0'),
(14, 'Xơ Đăng', '0'),
(15, 'Chăm', '0'),
(16, 'Gia Rai', '0'),
(17, 'Hoa', '0'),
(18, 'Lô Lô', '0'),
(19, 'Phù Lá', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khen_thuong_ky_luat`
--

CREATE TABLE `khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_kt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_qd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_qd` date NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ten_khen_thuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai_kt_id` int(11) NOT NULL,
  `hinh_thuc` tinyint(1) NOT NULL,
  `so_tien` double NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `ghi_chu` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khen_thuong_ky_luat`
--

INSERT INTO `khen_thuong_ky_luat` (`id`, `ma_kt`, `so_qd`, `ngay_qd`, `nhanvien_id`, `ten_khen_thuong`, `loai_kt_id`, `hinh_thuc`, `so_tien`, `flag`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(1, 'MKT1571286726', 'DHK/1146', '2019-10-17', 5, 'Khen thưởng nhân viên năng động', 6, 0, 240000, 1, '<p>Thưởng trong th&aacute;ng</p>\r\n', '13', '2019-10-17 11:32:06', '13', '2019-10-18 10:33:44', '0'),
(2, 'MKT1571286771', 'DHK/1145', '2019-10-17', 4, 'Khen thưởng nhân viên chăm chỉ', 7, 0, 400000, 1, '', '13', '2019-10-17 11:32:51', '13', '2019-10-18 10:33:31', '0'),
(3, 'MKT1571286857', 'DKT/1144', '2019-10-17', 12, 'Khen thưởng nhân viên tốt', 5, 1, 325000, 1, '', '13', '2019-10-17 11:34:17', '13', '2019-10-18 10:33:19', '0'),
(7, 'MKT1571365640', 'DHK/1143', '2019-10-14', 5, 'Khen thưởng nhân viên hiếu động', 7, 1, 360000, 1, '<p>Thưởng cho th&agrave;nh phần hiếu động</p>\r\n', '13', '2019-10-18 09:27:20', '13', '2019-10-18 10:32:44', '0'),
(9, 'MKL1571368523', 'DKT/5933', '2019-10-18', 12, 'Chuyên đi trễ', 15, 0, 25000, 0, '', '13', '2019-10-18 10:15:23', '13', '2019-10-18 10:15:23', '0'),
(11, 'MKL1571369398', 'DKT/4421', '2019-10-12', 8, 'Nhân viên chậm chạp', 14, 1, 123000, 0, '<p>Cần c&acirc;n nhắc khi sử dụng nh&acirc;n vi&ecirc;n n&agrave;y.</p>\r\n', '13', '2019-10-18 10:29:58', '13', '2019-10-18 10:30:47', '0'),
(20, 'MKT1656428893', 'DHK/125', '2022-06-28', 10, 'test', 7, 1, 12412421, 1, '', '11', '2022-06-28 22:10:04', '', '0000-00-00 00:00:00', '0'),
(21, 'MKT1656428893', 'DHK/125', '2022-06-28', 10, 'test', 7, 1, 12412421, 1, '', '11', '2022-06-28 22:10:12', '', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_khen_thuong_ky_luat`
--

CREATE TABLE `loai_khen_thuong_ky_luat` (
  `id` int(11) NOT NULL,
  `ma_loai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_loai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loai_khen_thuong_ky_luat`
--

INSERT INTO `loai_khen_thuong_ky_luat` (`id`, `ma_loai`, `ten_loai`, `ghi_chu`, `flag`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(5, 'LKT1571280354', 'Nhân viên đồng', '', 1, '13', '2019-10-17 09:45:54', '13', '2019-10-17 09:45:54', '0'),
(6, 'LKT1571280364', 'Nhân viên bạc', '', 1, '13', '2019-10-17 09:46:04', '13', '2019-10-17 09:46:04', '0'),
(7, 'LKT1571280370', 'Nhân viên vàng', '', 1, '13', '2019-10-17 09:46:10', '13', '2019-10-17 09:46:10', '0'),
(8, 'LKT1571280376', 'Nhân viên kim cương', '', 1, '13', '2019-10-17 09:46:16', '13', '2019-10-17 10:38:32', '0'),
(14, 'LKL1571366769', 'Nhân viên đi trễ', '<p>Nh&acirc;n vi&ecirc;n thường xuy&ecirc;n đi trễ</p>\r\n', 0, '13', '2019-10-18 09:46:09', '13', '2019-10-18 09:46:09', '0'),
(15, 'LKL1571366807', 'Nhân viên nghỉ quá ngày cho phép', '<p>Nh&acirc;n vi&ecirc;n nghỉ tr&ecirc;n 20 ng&agrave;y/th&aacute;ng.</p>\r\n', 0, '13', '2019-10-18 09:46:47', '13', '2019-10-18 09:46:47', '0'),
(19, 'LKL1571367774', 'Test', '', 0, '13', '2019-10-18 10:02:54', '13', '2019-10-18 10:03:55', '0'),
(20, 'LKT1599471135', 'Doanh so cao', '<p>ok</p>\r\n', 1, '13', '2020-09-07 16:32:15', '13', '2020-09-07 16:32:15', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id` int(11) NOT NULL,
  `ma_loai_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_loai_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loai_nv`
--

INSERT INTO `loai_nv` (`id`, `ma_loai_nv`, `ten_loai_nv`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(2, 'LNV1569654834', 'Nhân viên chính thức', '', '13', '2019-09-28 14:13:54', '13', '2019-09-28 14:13:54', '0'),
(3, 'LNV1569654844', 'Nhân viên thực tập', '', '13', '2019-09-28 14:14:04', '13', '2019-09-28 14:14:04', '0'),
(4, 'LNV1569654850', 'Nhân viên thời vụ', '', '13', '2019-09-28 14:14:10', '13', '2019-09-28 14:14:10', '0'),
(8, 'LNV1655346106', 'test', '<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 1px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 1px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n', '13', '2022-06-16 09:27:34', '13', '2022-06-16 09:33:06', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `id` int(11) NOT NULL,
  `ma_luong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `luong_thang` double NOT NULL,
  `ngay_cong` int(11) NOT NULL,
  `phu_cap` double NOT NULL,
  `khoan_nop` double NOT NULL,
  `tam_ung` double NOT NULL,
  `thuc_lanh` double NOT NULL,
  `ngay_cham` date NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `luong`
--

INSERT INTO `luong` (`id`, `ma_luong`, `nhanvien_id`, `luong_thang`, `ngay_cong`, `phu_cap`, `khoan_nop`, `tam_ung`, `thuc_lanh`, `ngay_cham`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua_id`, `ngay_sua`, `del_flag`) VALUES
(3, 'ML1570075152', 10, 18600000, 28, 2260000, 1953000, 1500000, 17407000, '2019-10-03', '', 4, '2019-10-03 10:59:12', 4, '2019-10-03 10:59:12', '0'),
(4, 'ML1570075175', 5, 5750000, 25, 0, 603750, 1500000, 3646250, '2019-10-03', '', 4, '2019-10-03 10:59:35', 4, '2019-10-03 10:59:35', '0'),
(5, 'ML1570075372', 3, 8050000, 30, 1650000, 845250, 1500000, 7354750, '2019-10-03', '', 4, '2019-10-03 11:02:52', 4, '2019-10-03 11:02:52', '0'),
(9, 'ML1570267241', 10, 19800000, 29, 2305000, 2079000, 0, 20026000, '2019-11-05', '', 4, '2019-10-05 16:20:41', 4, '2019-10-05 16:20:41', '0'),
(10, 'ML1570267671', 10, 13800000, 23, 2035000, 1449000, 1200000, 13186000, '2019-12-05', '', 4, '2019-10-05 16:27:51', 4, '2019-10-05 16:27:51', '0'),
(11, 'ML1570267847', 2, 8050000, 30, 1650000, 845250, 500000, 8354750, '2019-08-01', '', 4, '2019-10-05 16:30:47', 4, '2019-10-05 16:30:47', '0'),
(12, 'ML1570267874', 2, 7590000, 29, 1605000, 796950, 0, 8398050, '2019-11-05', '', 4, '2019-10-05 16:31:14', 4, '2019-10-05 16:31:14', '0'),
(13, 'ML1570355932', 8, 9240000, 29, 1805000, 970200, 1000000, 9074800, '2019-10-06', '<p>Nhận tiền mặt</p>\r\n', 12, '2019-10-06 16:58:52', 12, '2019-10-06 16:58:52', '0'),
(14, 'ML1571365486', 12, 4600000, 20, 0, 483000, 0, 4117000, '2019-10-18', '', 12, '2019-10-18 09:24:46', 12, '2019-10-18 09:24:46', '0'),
(15, 'ML1571390955', 8, 9800000, 30, 1850000, 1029000, 0, 10621000, '2019-11-05', '', 1, '2019-10-18 16:29:15', 1, '2019-10-18 16:29:15', '0'),
(16, 'ML1598806041', 3, 3450000, 15, 0, 362250, 0, 3087750, '2020-08-30', '<p>aaaaaa</p>\r\n', 1, '2020-08-30 23:47:21', 1, '2020-08-30 23:47:21', '0'),
(17, 'ML1599471056', 12, 8050000, 30, 0, 845250, 0, 7204750, '2020-09-07', '<p>ok</p>\r\n', 1, '2020-09-07 16:30:56', 1, '2020-09-07 16:30:56', '0'),
(18, 'ML1654746498', 8, 8120000, 27, 1715000, 852600, 1000000, 7982400, '2022-06-09', '<p>abc</p>\r\n', 13, '2022-06-09 10:48:18', 13, '2022-06-09 10:48:18', '0'),
(19, 'ML1656490469', 12, 7590000, 29, 1605000, 796950, 0, 8398050, '2022-06-29', '', 11, '2022-06-29 15:19:39', 0, '0000-00-00 00:00:00', '0'),
(20, 'ML1656490782', 10, 19800000, 29, 2305000, 2079000, 0, 20026000, '2022-06-29', '', 11, '2022-06-29 15:19:51', 0, '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ma_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biet_danh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hon_nhan_id` int(11) NOT NULL,
  `so_cmnd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noi_cap_cmnd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_cap_cmnd` date NOT NULL,
  `nguyen_quan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quoc_tich_id` int(11) NOT NULL,
  `ton_giao_id` int(11) NOT NULL,
  `dan_toc_id` int(11) NOT NULL,
  `ho_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tam_tru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai_nv_id` int(11) NOT NULL,
  `trinh_do_id` int(11) NOT NULL,
  `chuyen_mon_id` int(11) NOT NULL,
  `bang_cap_id` int(11) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `chuc_vu_id` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `nguoi_tao` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hinh_anh`, `ten_nv`, `biet_danh`, `gioi_tinh`, `ngay_sinh`, `noi_sinh`, `hon_nhan_id`, `so_cmnd`, `noi_cap_cmnd`, `ngay_cap_cmnd`, `nguyen_quan`, `quoc_tich_id`, `ton_giao_id`, `dan_toc_id`, `ho_khau`, `tam_tru`, `loai_nv_id`, `trinh_do_id`, `chuyen_mon_id`, `bang_cap_id`, `phong_ban_id`, `chuc_vu_id`, `trang_thai`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(2, 'MNV1569830976', '1569907877.jpg', 'Nguyễn Duy Sơn', 'Sơn Núi Đá', 1, '1994-12-19', 'Long Xuyên', 2, '371807766', 'Long Xuyên', '2016-09-30', 'Long Xuyên', 24, 0, 1, 'Long Xuyên', 'Rạch Giá - Kiên Giang', 2, 18, 2, 2, 22, 33, 0, 4, '2019-09-30 15:09:36', 1, '2020-09-07 16:44:44', '0'),
(3, 'MNV1569831824', '1569831824.jpg', 'Nguyễn Thị Mỹ Phương', 'Phương Kini', 0, '1996-09-20', 'Rạch Giá - Kiên Giang', 1, '3718087785', 'Kiên Giang', '2016-09-30', 'Rạch Giá - Kiên Giang', 24, 1, 1, 'Rạch Giá - Kiên Giang', 'Rạch Giá - Kiên Giang', 2, 17, 11, 1, 22, 33, 1, 4, '2020-08-30 15:23:44', 4, '2020-09-02 10:02:32', '0'),
(4, 'MNV1569833913', '1569833913.jpg', 'Nguyễn Phước Thanh', '', 1, '1984-09-12', 'Phú Quốc - Kiên Giang', 3, '567423431', 'Kiên Giang', '2002-04-23', 'Phú Quốc - Kiên Giang', 24, 0, 1, 'Phú Quốc - Kiên Giang', 'Phú Quốc - Kiên Giang', 2, 18, 15, 2, 20, 16, 1, 4, '2020-08-30 15:58:33', 4, '2020-09-03 08:57:41', '0'),
(5, 'MNV1569834099', '1569907854.png', 'Trần Thị Bích Nhi', 'Nhi Kute', 0, '1997-02-12', 'Châu Thành - Kiên Giang', 1, '378623143', 'Kiên Giang', '2004-09-12', 'Châu Thành - Kiên Giang', 24, 1, 1, 'Châu Thành - Kiên Giang', 'Châu Thành - Kiên Giang', 4, 17, 5, 1, 21, 33, 1, 4, '2019-09-30 16:01:39', 4, '2019-10-02 10:02:07', '0'),
(8, 'MNV1569835233', '1569835233.jpg', 'Trần Mai Phương', 'Phương Kòi', 0, '2000-12-09', 'Thốt Nốt - Cần Thơ', 2, '3718087777', 'Cà Mau', '2012-09-30', 'Cà Mau', 24, 0, 1, 'Cà Mau', 'Cà Mau', 3, 17, 5, 1, 20, 38, 1, 4, '2019-09-30 16:20:33', 4, '2019-10-02 10:01:14', '0'),
(10, 'MNV1569905940', '1569907839.jpg', 'Nguyễn Minh Thông', 'Thông bác học', 1, '1980-12-04', 'Phú Quốc - Kiên Giang', 3, '3718087744', 'Phú Quốc -  Kiên Giang', '1997-04-02', 'Phú Quốc - Kiên Giang', 24, 3, 1, 'Phú Quốc - Kiên Giang', 'Phú Quốc - Kiên Giang', 2, 17, 14, 4, 20, 17, 1, 4, '2019-10-01 11:59:00', 4, '2019-10-02 09:59:30', '0'),
(11, 'MNV1569906116', '1569906116.jpg', 'Nguyễn Duy Tính', '', 1, '1992-09-12', 'Rạch Giá - Kiên Giang', 3, '343214564', 'Kiên Giang', '2002-10-20', 'Rạch Giá - Kiên Giang', 24, 0, 18, 'Rạch Giá - Kiên Giang', 'Rạch Giá - Kiên Giang', 3, 18, 7, 11, 23, 37, 1, 4, '2019-10-01 12:01:56', 4, '2019-10-02 10:00:31', '0'),
(12, 'MNV1571124337', '1571124337.jpg', 'Trần Diễm My', '', 0, '1997-10-15', 'Cần Thơ', 1, '3716024774', 'Kiên Giang', '2015-10-15', 'Cần Thơ', 24, 0, 1, 'Cần Thơ', 'Châu Thành - Kiên Giang', 4, 17, 9, 1, 20, 33, 1, 12, '2019-10-15 14:25:37', 12, '2019-10-15 14:27:02', '0'),
(13, 'MNV1571124772', '1571124834.jpg', 'Trần Văn Triệu', 'Triệu Phú', 1, '1990-12-20', 'Cà Mau', 3, '443212354', 'Cà Mau', '2000-12-20', 'Cà Mau', 24, 0, 1, 'Cà Mau', 'Rạch Giá - Kiên Giang', 2, 16, 2, 16, 21, 33, 0, 12, '2019-10-15 14:32:52', 1, '2019-10-18 17:19:05', '0'),
(33, 'MNV1656434014', '', 'ab', '', 1, '2022-06-28', '', 1, '012332121', 'ab', '2022-06-28', '', 1, 1, 1, 'ads', '', 3, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:33:43', 11, '2022-06-29 12:31:22', '0'),
(34, 'MNV1656434031', '', 'ab', '', 1, '2022-06-28', '', 1, '012332121', 'ab', '2022-06-28', '', 1, 1, 1, 'ads', '', 4, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:33:57', 0, '0000-00-00 00:00:00', '1'),
(35, 'MNV1656434058', '', 'ab', '', 1, '2022-06-28', '', 1, '012332121', 'ab', '2022-06-28', '', 1, 1, 1, 'ads', '', 3, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:34:28', 0, '0000-00-00 00:00:00', '1'),
(36, 'MNV1656434095', '', 'ab', '', 1, '2022-06-28', '', 1, '012332121', 'ab', '2022-06-28', '', 24, 5, 3, 'ads', '', 4, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:35:01', 0, '0000-00-00 00:00:00', '1'),
(37, 'MNV1656434103', '1656434110.png', 'ab', '', 1, '2022-06-28', '', 1, '012332121', 'ab', '2022-06-28', '', 24, 5, 3, 'ads', '', 4, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:35:10', 0, '0000-00-00 00:00:00', '1'),
(38, 'MNV1656434111', '1656434128.png', 'ab', '', 1, '2022-06-28', 'adsad', 1, '012332121', 'ab', '2022-06-28', 'sadsads', 24, 5, 3, 'ads', 'ssfdsf', 4, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:35:28', 0, '0000-00-00 00:00:00', '1'),
(39, 'MNV1656434128', '1656434133.png', 'ab', 'gụgku', 1, '2022-06-28', 'adsad', 1, '012332121', 'ab', '2022-06-28', 'sadsads', 24, 5, 3, 'ads', 'ssfdsf', 4, 5, 18, 16, 24, 38, 1, 1, '2022-06-28 23:35:33', 0, '0000-00-00 00:00:00', '1'),
(40, 'MNV1656476561', '', 'abc', 'abca', 1, '2022-06-29', 'ầ', 1, '12321124124', 'ádas', '2022-06-29', 'ầ', 33, 4, 6, 'ầ', 'àgasg', 4, 5, 6, 16, 25, 38, 1, 11, '2022-06-29 11:23:33', 11, '2022-06-29 12:45:42', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `id` int(11) NOT NULL,
  `ma_nhom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nhom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nhom`
--

INSERT INTO `nhom` (`id`, `ma_nhom`, `ten_nhom`, `mo_ta`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(1, 'GRP1571110024', 'Nhóm thu thập', '<p>Nh&oacute;m chuy&ecirc;n thu thập th&ocirc;ng tin kh&aacute;ch h&agrave;ng</p>\r\n', '13', '2019-10-15 10:27:23', '13', '2019-10-15 11:37:09', '0'),
(2, 'GRP1571110114', 'Nhóm quản lý dự án', '<p>Thu thập, quản l&yacute; những dự &aacute;n mới, dự &aacute;n đang thực hiện</p>\r\n', '13', '2019-10-15 10:28:48', '13', '2019-10-15 11:30:45', '0'),
(4, 'GRP1571110761', 'Nhóm đang công tác', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '13', '2019-10-15 10:39:38', '13', '2022-06-26 09:43:30', '0'),
(5, 'GRP1571110790', 'Nhóm tổ chức sự kiện', '', '13', '2019-10-15 10:40:00', '13', '2022-06-26 10:17:04', '0'),
(10, 'GRP1656482800', 'âssa', '', '11', '2022-06-29 13:06:46', '11', '2022-06-29 13:42:14', '0'),
(11, 'GRP1656482843', 'DAd', '', '11', '2022-06-29 13:07:31', '', '0000-00-00 00:00:00', '0'),
(12, 'GRP1656482916', 'qưewqeqr', '', '11', '2022-06-29 13:10:15', '', '0000-00-00 00:00:00', '1'),
(13, 'GRP1656483472', ' ', '', '11', '2022-06-29 13:18:29', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_ban`
--

CREATE TABLE `phong_ban` (
  `id` int(11) NOT NULL,
  `ma_phong_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_phong_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phong_ban`
--

INSERT INTO `phong_ban` (`id`, `ma_phong_ban`, `ten_phong_ban`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(20, 'MBP1569204111', 'Phòng tổ chức - hành chính', '', '13', '2019-09-23 09:01:51', '13', '2019-09-23 09:03:00', '0'),
(21, 'MBP1569204120', 'Phòng kinh doanh', '', '13', '2019-09-23 09:02:00', '13', '2019-09-23 09:02:00', '0'),
(22, 'MBP1569204129', 'Phòng tài chính - kế toán', '', '13', '2019-09-23 09:02:09', '13', '2019-09-23 09:03:56', '0'),
(23, 'MBP1569204142', 'Văn phòng đại diện', '', '13', '2019-09-23 09:02:22', '13', '2019-09-23 09:02:22', '0'),
(24, 'MBP1569204214', 'Phòng kinh tế - kỹ thuật', '', '13', '2019-09-23 09:03:34', '13', '2019-09-23 09:03:34', '0'),
(25, 'MBP1569204303', 'Phòng kế hoạch - kinh doanh', '<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -169px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -169px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</', '13', '2019-09-23 09:05:03', '13', '2022-06-13 11:07:37', '0'),
(30, 'MBP1654762338', 'Phòng phát triển sản phẩm', '', '13', '2022-06-09 15:12:18', '13', '2022-06-09 15:12:18', '0'),
(31, 'MPB1655094320', 'qửqwr', '', '13', '2022-06-13 11:25:26', NULL, NULL, '1'),
(32, 'MPB1655095192', 'test', '', '13', '2022-06-13 11:39:56', NULL, NULL, '1'),
(33, 'MPB1655108338', 'test', '<p>tetst</p>\r\n', '13', '2022-06-13 15:19:03', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quoc_tich`
--

CREATE TABLE `quoc_tich` (
  `id` int(11) NOT NULL,
  `ten_quoc_tich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `quoc_tich`
--

INSERT INTO `quoc_tich` (`id`, `ten_quoc_tich`, `del_flag`) VALUES
(1, 'Danish', '0'),
(2, 'Đan Mạch', '0'),
(3, 'British / English', '0'),
(4, 'Anh', '0'),
(5, 'Estonian', '0'),
(6, 'Estonia', '0'),
(7, 'Finnish', '0'),
(8, 'Phần Lan', '0'),
(9, 'Icelandic', '0'),
(10, 'Irish', '0'),
(11, 'Ireland', '0'),
(12, 'Latvian', '0'),
(13, 'Latvia', '0'),
(14, 'Lithuanian', '0'),
(15, 'Norwegian', '0'),
(16, 'Na Uy', '0'),
(17, 'Canada', '0'),
(18, 'Scotland', '0'),
(19, 'Thụy Điển', '0'),
(20, 'Tây Ban Nha', '0'),
(21, 'Séc', '0'),
(22, 'Ba Lan', '0'),
(23, 'Mỹ', '0'),
(24, 'Việt Nam', '0'),
(25, 'Ấn Độ', '0'),
(26, 'Trung Quốc', '0'),
(27, 'Mông Cổ', '0'),
(28, 'Triều Tiên', '0'),
(29, 'Đài Loan', '0'),
(30, 'Campuchia', '0'),
(31, 'Indonesia', '0'),
(32, 'Lào', '0'),
(33, 'Philipin', '0'),
(34, 'Thái Lan', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_dt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`, `del_flag`, `nguoi_tao`, `nguoi_sua`) VALUES
(1, 'Account', 'Admin', 'admin.png', 'admin1@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', '099999999999', 1, 1, 62, '2019-09-12 00:00:00', '2022-06-30 12:09:43', '0', '13', '1'),
(2, 'Thái', 'Mỹ Tiên', '1568644813.jpg', 'ruakundor@gmail.com', '202cb962ac59075b964b07152d234b70', '099999999999', 1, 1, 19, '2019-09-16 21:15:00', '2019-09-20 18:07:30', '0', '13', ''),
(3, 'Nguyễn', 'Thị Bích Ngọc', '1568647601.jpg', 'thienhoang97@gmail.com', '202cb962ac59075b964b07152d234b70', '0932312994', 0, 1, 1, '2019-09-16 22:08:30', '2019-09-19 08:37:05', '0', '13', ''),
(11, 'Test', 'Test', '1568856833.jpg', 'nhanvien@gmail.com', '25caae0a11df4fa0e401e288c1ad9266', '1234567890', 0, 1, 11, '2019-09-19 08:09:19', '2022-06-30 12:21:12', '0', '13', '11'),
(12, 'Đào', 'Thanh Huy', 'admin.png', 'dthanhhuy1998@gmail.com', '0192023a7bbd73250516f069df18b500', '1234567890', 1, 1, 15, '2019-10-06 00:00:00', '2019-10-06 00:00:00', '0', '13', ''),
(13, 'Nguyễn Minh', 'Cương', 'admin.png', 'cuongboyhc@gmail.com', '263407be74ee6c245ff316674d0bcbd2', '0968514069', 1, 1, 14, '2022-06-09 03:44:09', '2022-06-28 23:25:43', '0', '13', '13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_trang_hon_nhan`
--

CREATE TABLE `tinh_trang_hon_nhan` (
  `id` int(11) NOT NULL,
  `ten_tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `tinh_trang_hon_nhan`
--

INSERT INTO `tinh_trang_hon_nhan` (`id`, `ten_tinh_trang`, `del_flag`) VALUES
(1, 'Độc thân', '0'),
(2, 'Đính hôn', '0'),
(3, 'Có gia đình', '0'),
(4, 'Ly thân', '0'),
(5, 'Ly hôn', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ton_giao`
--

CREATE TABLE `ton_giao` (
  `id` int(11) NOT NULL,
  `ten_ton_giao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ton_giao`
--

INSERT INTO `ton_giao` (`id`, `ten_ton_giao`, `del_flag`) VALUES
(0, 'Không', '0'),
(1, 'Phật giáo', '0'),
(2, 'Thiên chúa giáo', '0'),
(3, 'Đạo tin lành', '0'),
(4, 'Hồi giáo', '0'),
(5, 'Do Thái giáo', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinh_do`
--

CREATE TABLE `trinh_do` (
  `id` int(11) NOT NULL,
  `ma_trinh_do` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_trinh_do` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoi_tao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sua` datetime NOT NULL,
  `del_flag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `trinh_do`
--

INSERT INTO `trinh_do` (`id`, `ma_trinh_do`, `ten_trinh_do`, `ghi_chu`, `nguoi_tao`, `ngay_tao`, `nguoi_sua`, `ngay_sua`, `del_flag`) VALUES
(1, 'MTD1569206480', '1/12', '<p>Tr&igrave;nh độ lớp 1/12</p>\r\n', '13', '2019-09-23 09:42:26', '13', '2019-09-23 09:41:20', '0'),
(2, 'MTD1569206546', '2/12', '<p>Tr&igrave;nh độ lớp 2/12</p>\r\n', '13', '2019-09-23 09:42:26', '13', '2019-09-23 09:42:26', '0'),
(3, 'MTD1569206555', '3/12', '<p>Tr&igrave;nh độ lớp 3/12</p>\r\n', '13', '2019-09-23 09:42:35', '13', '2019-09-23 09:42:35', '0'),
(4, 'MTD1569206570', '4/12', '<p>Tr&igrave;nh độ lớp 4/12</p>\r\n', '13', '2019-09-23 09:42:50', '13', '2019-09-23 09:42:50', '0'),
(5, 'MTD1569206579', '5/12', '<p>Tr&igrave;nh độ lớp 5/12</p>\r\n', '13', '2019-09-23 09:42:59', '13', '2019-09-23 09:42:59', '0'),
(6, 'MTD1569206590', '6/12', '<p>Tr&igrave;nh độ lớp 6/12</p>\r\n', '13', '2019-09-23 09:43:10', '13', '2019-09-23 09:43:10', '0'),
(7, 'MTD1569206604', '7/12', '<p>Tr&igrave;nh độ lớp 7/12</p>\r\n', '13', '2019-09-23 09:43:24', '13', '2019-09-23 09:57:09', '0'),
(8, 'MTD1569206616', '8/12', '<p>Tr&igrave;nh độ lớp 8/12</p>\r\n', '13', '2019-09-23 09:43:36', '13', '2019-09-23 09:43:36', '0'),
(9, 'MTD1569206628', '9/12', '<p>Tr&igrave;nh độ lớp 9/12</p>\r\n', '13', '2019-09-23 09:43:48', '13', '2019-09-23 09:43:48', '0'),
(10, 'MTD1569206638', '10/12', '<p>Tr&igrave;nh độ lớp 10/12</p>\r\n', '13', '2019-09-23 09:43:58', '13', '2019-09-23 09:43:58', '0'),
(11, 'MTD1569206649', '11/12', '<p>Tr&igrave;nh độ lớp 11/12</p>\r\n', '13', '2019-09-23 09:44:09', '13', '2019-09-23 09:56:56', '0'),
(12, 'MTD1569206662', '12/12', '<p>Tr&igrave;nh độ lớp 12/12</p>\r\n', '13', '2019-09-23 09:44:22', '13', '2019-09-23 10:51:16', '0'),
(15, 'MTD1569651298', 'Trung cấp', '', '13', '2019-09-28 13:14:58', '13', '2019-09-28 13:14:58', '0'),
(16, 'MTD1569651304', 'Cao đẳng', '', '13', '2019-09-28 13:15:04', '13', '2019-09-28 13:15:04', '0'),
(17, 'MTD1569651310', 'Đại học', '', '13', '2019-09-28 13:15:10', '13', '2019-09-28 13:15:10', '0'),
(18, 'MTD1569651317', 'Cao học', '', '13', '2019-09-28 13:15:17', '13', '2019-09-28 13:15:26', '0'),
(22, 'MTD1655093265', 'test123', '<p>test</p>\r\n', '13', '2022-06-13 11:12:03', '13', '2022-06-13 11:23:16', '1'),
(23, 'MTD1655108376', 'téast', '<p>qưtqwtqw</p>\r\n', '13', '2022-06-13 15:19:40', '', '0000-00-00 00:00:00', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `nhanvien_id` (`nhanvien_id`) USING BTREE;

--
-- Chỉ mục cho bảng `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `nhan_vien_id` (`nhan_vien_id`);

--
-- Chỉ mục cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `nhanvien_id` (`nhanvien_id`) USING BTREE;

--
-- Chỉ mục cho bảng `dan_toc`
--
ALTER TABLE `dan_toc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `loai_kt_id` (`loai_kt_id`) USING BTREE,
  ADD KEY `nhanvien_id` (`nhanvien_id`) USING BTREE;

--
-- Chỉ mục cho bảng `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `nhanvien_id` (`nhanvien_id`) USING BTREE;

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quoc_tich_id` (`quoc_tich_id`) USING BTREE,
  ADD KEY `ton_giao_id` (`ton_giao_id`) USING BTREE,
  ADD KEY `dan_toc_id` (`dan_toc_id`) USING BTREE,
  ADD KEY `loai_nv_id` (`loai_nv_id`) USING BTREE,
  ADD KEY `chuyen_mon_id` (`chuyen_mon_id`) USING BTREE,
  ADD KEY `trinh_do_id` (`trinh_do_id`) USING BTREE,
  ADD KEY `bang_cap_id` (`bang_cap_id`) USING BTREE,
  ADD KEY `phong_ban_id` (`phong_ban_id`) USING BTREE,
  ADD KEY `chuc_vu_id` (`chuc_vu_id`) USING BTREE,
  ADD KEY `nguoi_tao_id` (`nguoi_tao`) USING BTREE,
  ADD KEY `nguoi_sua_id` (`nguoi_sua`) USING BTREE,
  ADD KEY `hon_nhan_id` (`hon_nhan_id`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `quoc_tich`
--
ALTER TABLE `quoc_tich`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ton_giao`
--
ALTER TABLE `ton_giao`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `trinh_do`
--
ALTER TABLE `trinh_do`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `chuyen_mon`
--
ALTER TABLE `chuyen_mon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `dan_toc`
--
ALTER TABLE `dan_toc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `loai_khen_thuong_ky_luat`
--
ALTER TABLE `loai_khen_thuong_ky_luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `quoc_tich`
--
ALTER TABLE `quoc_tich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tinh_trang_hon_nhan`
--
ALTER TABLE `tinh_trang_hon_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ton_giao`
--
ALTER TABLE `ton_giao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `trinh_do`
--
ALTER TABLE `trinh_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD CONSTRAINT `chinh_luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_nhom`
--
ALTER TABLE `chi_tiet_nhom`
  ADD CONSTRAINT `chi_tiet_nhom_ibfk_1` FOREIGN KEY (`nhan_vien_id`) REFERENCES `nhanvien` (`id`);

--
-- Các ràng buộc cho bảng `cong_tac`
--
ALTER TABLE `cong_tac`
  ADD CONSTRAINT `cong_tac_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `khen_thuong_ky_luat`
--
ALTER TABLE `khen_thuong_ky_luat`
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khen_thuong_ky_luat_ibfk_2` FOREIGN KEY (`loai_kt_id`) REFERENCES `loai_khen_thuong_ky_luat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`quoc_tich_id`) REFERENCES `quoc_tich` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_10` FOREIGN KEY (`hon_nhan_id`) REFERENCES `tinh_trang_hon_nhan` (`id`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`ton_giao_id`) REFERENCES `ton_giao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`dan_toc_id`) REFERENCES `dan_toc` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`loai_nv_id`) REFERENCES `loai_nv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`trinh_do_id`) REFERENCES `trinh_do` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`chuyen_mon_id`) REFERENCES `chuyen_mon` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`bang_cap_id`) REFERENCES `bang_cap` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
