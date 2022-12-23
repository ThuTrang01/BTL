-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2021 lúc 12:00 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ht`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `sdt`, `email`, `password`) VALUES
(1, 'admin', '0946565654', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'nguyenhaivan', '+84930288744', 'nguyenhaivan020201@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'Thu Trang', '0388807567', 'nguyenthutrang1012001@gmail.com', '814f06ab7f40b2cff77f2c7bdffd3415');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `tintuc_id` int(10) UNSIGNED NOT NULL,
  `ten_tin` varchar(255) NOT NULL,
  `mieu_tatin` text NOT NULL,
  `ngay` date NOT NULL,
  `anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`tintuc_id`, `ten_tin`, `mieu_tatin`, `ngay`, `anh`) VALUES
(1, 'GOFL', '  sân golf với chất lượng 5 sao', '2021-10-18', 'golf.jpg'),
(3, 'LƯỚT SÓNG', 'trải nghiệm môn thể thao mới ', '2021-10-19', 'man.webp'),
(4, 'WEDDING', 'lưu giữ những khoảnh khắc đáng nhớ', '2021-10-20', 'wedding.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder_room`
--

CREATE TABLE `tbl_oder_room` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `tong_tien` int(10) NOT NULL,
  `date_den` date NOT NULL,
  `date_di` date NOT NULL,
  `tinh_trang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chờ xác nhận',
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder_room`
--

INSERT INTO `tbl_oder_room` (`book_id`, `tong_tien`, `date_den`, `date_di`, `tinh_trang`, `room_id`, `user_id`) VALUES
(1, 1800000, '2021-12-08', '2021-12-10', 'Đã hủy', 1, 2),
(2, 1800000, '2021-11-03', '2021-11-05', 'Đã xác nhận', 1, 2),
(3, 2400000, '2021-11-23', '2021-11-25', 'Đã xác nhận', 2, 1),
(4, 1800000, '2021-11-23', '2021-11-25', 'Đã xác nhận', 1, 1),
(5, 1800000, '2021-11-23', '2021-11-25', 'Đã xác nhận', 1, 1),
(6, 1800000, '2021-11-17', '2021-11-19', 'Chờ xác nhận', 1, 1),
(17, 2700000, '2021-11-09', '2021-11-12', 'Chờ xác nhận', 1, 2),
(19, 4400000, '2021-11-26', '2021-11-28', 'Chờ xác nhận', 3, 3),
(21, 36000000, '2021-11-05', '2021-12-05', 'Đã hủy', 2, 3),
(22, 21000000, '2021-11-13', '2021-11-20', 'Chờ xác nhận', 4, 3),
(26, 42000000, '2021-11-13', '2021-11-27', 'Chờ xác nhận', 4, 4),
(27, 11000000, '2021-11-20', '2021-11-25', 'Chờ xác nhận', 3, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_services`
--

CREATE TABLE `tbl_order_services` (
  `bs_id` int(10) UNSIGNED NOT NULL,
  `tong_tien` int(10) NOT NULL,
  `date_den` date NOT NULL,
  `date_di` date NOT NULL,
  `tinh_trang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chờ xác nhận',
  `dv_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_services`
--

INSERT INTO `tbl_order_services` (`bs_id`, `tong_tien`, `date_den`, `date_di`, `tinh_trang`, `dv_id`, `user_id`) VALUES
(1, 1234, '2021-11-02', '2021-11-03', 'Chờ xác nhận', 10, 1),
(2, 90, '2021-11-30', '2021-12-03', 'Chờ xác nhận', 9, 1),
(3, 75, '2021-11-30', '2021-12-03', 'Đã hủy', 11, 1),
(4, 150, '2021-11-25', '2021-11-28', 'Chờ xác nhận', 12, 1),
(5, 80, '2021-11-16', '2021-11-20', 'Chờ xác nhận', 10, 2),
(7, 300, '2021-11-27', '2021-12-12', 'Chờ xác nhận', 10, 3),
(8, 1400000, '2021-11-05', '2021-11-12', 'Chờ xác nhận', 10, 1),
(9, 400000, '2021-11-12', '2021-11-13', 'Chờ xác nhận', 13, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_room`
--

CREATE TABLE `tbl_room` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `ten_phong` varchar(100) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia_phong` float NOT NULL,
  `tong_tien` float DEFAULT NULL,
  `anh` varchar(255) NOT NULL,
  `tinh_trang` varchar(50) NOT NULL,
  `mieu_ta` text NOT NULL,
  `gioi_thieu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_room`
--

INSERT INTO `tbl_room` (`room_id`, `ten_phong`, `so_luong`, `gia_phong`, `tong_tien`, `anh`, `tinh_trang`, `mieu_ta`, `gioi_thieu`) VALUES
(1, 'PHÒNG ĐƠN', 20, 900000, 0, 'phongdon.png', 'chờ xác nhận', 'Loại phòng này rất thích hợp với người thích sự riêng tự, yên tĩnh hoặc đi du lịch /công tác đơn lẻ\r\nNội thất bên trong\r\nGiường ngủ\r\nTủ/Tab đầu giường\r\nKệ tivi\r\nTủ quần áo\r\nGương trang điểm\r\nCác thiết bị cơ bản: tivi, minibar, điều hòa, bình nóng lạnh, v..v..', ''),
(2, 'PHÒNG ĐÔI', 25, 1200000, 0, 'phongdoi.jpg', 'chờ xác nhận', 'Không gian cho các cặp đôi, Nội thất bên trong:\r\nGiường\r\nBàn ghế làm việc/trang điểm\r\nTủ quần áo\r\nSofa thư giãn\r\nThiết bị & đồ dùng (điều hòa, ấm nước, đèn bàn, tivi, chăn ga gối đệm, đồ vệ sinh cá nhân 1 lần,...)\r\n', ''),
(3, 'PHÒNG GIA ĐÌNH', 22, 2200000, 0, 'phonggiadinh.jpg', 'chờ xác nhận', 'phòng connecting room phù hợp cho gia đình 3-4 người ,Nội thất bên trong\r\nGiường ngủ\r\nTủ/Tab đầu giường\r\nKệ tivi\r\nTủ quần áo\r\nGương trang điểm\r\nCác thiết bị cơ bản: tivi, minibar, điều hòa, bình nóng lạnh, v..v..', ''),
(4, 'PHÒNG LUXURY', 15, 3000000, 0, 'phongluxury.jpg', 'chờ xác nhận', 'nội thất sang trọng ,đẳng cấp ,Nội thất bên trong\r\nGiường ngủ\r\nTủ/Tab đầu giường\r\nKệ tivi\r\nTủ quần áo\r\nGương trang điểm\r\nCác thiết bị cơ bản: tivi, minibar, điều hòa, bình nóng lạnh, v..v..\r\n\r\n', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `dv_id` int(10) UNSIGNED NOT NULL,
  `ten_dv` varchar(50) NOT NULL,
  `gia_dv` float NOT NULL,
  `anh` varchar(255) NOT NULL,
  `mieu_tadv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`dv_id`, `ten_dv`, `gia_dv`, `anh`, `mieu_tadv`) VALUES
(9, 'NHÀ HÀNG', 300000, 'hotel-restaurant.jpg', ' Bếp trưởng Anthony Bourdain sở hữu 16 sao Michelin danh giá. kết hợp tinh hoa ẩm thực Á-Âu'),
(10, 'MASSAGE', 200000, 'massage.jpg', ' Thư giãn cùng với tiện ích 5 sao, giúp giảm căng thẳng để tinh thần luôn thoải mái'),
(11, 'PHÒNG GYM', 250000, 'gym.jpg', ' Hệ thống phòng tập được trang bị hiện đại, huấn luyện viên nhiệt tình chuyên nghiệp'),
(12, 'PHÒNG HỌP', 500000, 'hoinghi.jpg', ' Đẳng cấp doanh nhân cùng trang thiết bị hiện đại, đội ngũ phục vụ tận tình ,sẵn sàng cho các đối tác'),
(13, 'HỒ BƠI', 400000, 'swimming.jpg', 'Hồ bơi 5 sao với chất lượng đẳng cấp quốc tế , hệ thống xử lí nước công nghệ RO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `email`, `number`) VALUES
(1, 'nguyenhaivan', '$2y$10$.kmqSGbQyGoqDhYvC5JKN.bWkuD1bPBIi8u/xMXRI9C1VNo0vk2m.', 'nguyenhaivan020201@gmail.com', '0867565654'),
(2, 'admin', '$2y$10$3r0KxsAwJ2MO1fW0I5Ie3ePCPdfzpsNxfIPz4RYRpwrFXZAqMdnly', 'hi@gmail.com', '0973646544'),
(3, 'Thu Trang', '$2y$10$N3og.tiWq38wlxKEtfMC0ur1pyYOZiYy.AmmsbRYCwpeePFqM1T.S', 'nguyenthutrang1012001@gmail.com', '0377788779'),
(4, 'Trang', '$2y$10$De5fMc1mA73P3tUqyD4f2.j.fKQf47gUnQPHxoRACNLxec9CR57lS', 'trang1012001@gmail.com', '0388807567');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`tintuc_id`);

--
-- Chỉ mục cho bảng `tbl_oder_room`
--
ALTER TABLE `tbl_oder_room`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `oder_room` (`user_id`),
  ADD KEY `oder_room_1` (`room_id`);

--
-- Chỉ mục cho bảng `tbl_order_services`
--
ALTER TABLE `tbl_order_services`
  ADD PRIMARY KEY (`bs_id`),
  ADD KEY `oder_sv` (`user_id`),
  ADD KEY `oder_sv1` (`dv_id`);

--
-- Chỉ mục cho bảng `tbl_room`
--
ALTER TABLE `tbl_room`
  ADD PRIMARY KEY (`room_id`);

--
-- Chỉ mục cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`dv_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `tintuc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_oder_room`
--
ALTER TABLE `tbl_oder_room`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_order_services`
--
ALTER TABLE `tbl_order_services`
  MODIFY `bs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_room`
--
ALTER TABLE `tbl_room`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `dv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_oder_room`
--
ALTER TABLE `tbl_oder_room`
  ADD CONSTRAINT `oder_room` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oder_room_1` FOREIGN KEY (`room_id`) REFERENCES `tbl_room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_order_services`
--
ALTER TABLE `tbl_order_services`
  ADD CONSTRAINT `oder_sv` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oder_sv1` FOREIGN KEY (`dv_id`) REFERENCES `tbl_service` (`dv_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
