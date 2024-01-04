-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2023 lúc 09:03 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `multiusermusic_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite_list`
--

CREATE TABLE `favorite_list` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite_list`
--

INSERT INTO `favorite_list` (`id`, `song_id`, `user_id`) VALUES
(5, 37, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file` varchar(1024) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `title` varchar(100) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `popularity` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `artist` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `songs`
--

INSERT INTO `songs` (`id`, `user_id`, `file`, `image`, `title`, `views`, `downloads`, `popularity`, `date`, `artist`) VALUES
(10, 10, 'uploads/nhac-chuong-em-chi-im-lang-osad-ft-phao.mp3', 'uploads/1701330574431_640.jpg', 'Em Chỉ Im Lặng', 0, 0, 0, '2023-12-27 08:12:42', 'OSAD, Pháo'),
(11, 10, 'uploads/Ve-Tinh-HIEUTHUHAI-x-HOANG-TON.mp3', 'uploads/49f6f7ebf517b9a6b2bc47abd6abfa32.jpg', 'Vệ tinh', 0, 0, 0, '2023-12-27 08:15:42', 'HIEUTHUHAI x HOÀNG TÔN'),
(12, 10, 'uploads/Nhac-Chuong-Beat-Do-Toc-2-Lofi-Masew-Phuc-Du-Phao-Do-Mixi.mp3', 'uploads/do-toc-21-450x251.png', 'Độ Tộc 2', 0, 0, 0, '2023-12-27 08:19:19', 'Do Mixi, Pháo, Phúc Du, Masew'),
(13, 10, 'uploads/Nhac-Chuong-Sao-Em-Lai-Tat-May-Diep-Khuc-Pham-Nguyen-Ngoc-Vanh.mp3', 'uploads/f6553e5d6281763a103897dbefa05088.jpg', 'Sao Em Lại Tắt Máy?', 0, 0, 0, '2023-12-27 08:20:34', 'Phạm Nguyên Ngọc, Vanh'),
(14, 10, 'uploads/nhac-chuong-cat-doi-noi-sau-doan-dau-tang-duy-tan.mp3', 'uploads/bf0182328238f2a252496a63e51f1f74.jpg', 'Cắt Đôi Nỗi Sầu', 0, 0, 0, '2023-12-27 08:21:56', 'Tăng Duy Tân'),
(15, 10, 'uploads/nhac-chuong-nghe-noi-anh-yeu-em-chau-khai-phong.mp3', 'uploads/794229c0dc49ac8ad17ec0ce5b8a84cb.jpg', 'Nghe Nói Anh Yêu Em', 0, 0, 0, '2023-12-27 08:23:12', 'Châu Khải Phong'),
(16, 10, 'uploads/nhac-chuong-qua-cau-ruoc-em-danhka.mp3', 'uploads/691570cee4e4ae8053a34e234d1dbbd6.jpg', 'Qua Cầu Rước Em', 0, 0, 0, '2023-12-27 08:24:29', 'DanhKA'),
(17, 10, 'uploads/CuoiThoiEm-Doan-Dau-ThaiHoc.mp3', 'uploads/b80c73e24f545f9d1ba7aa428db3b5b3.jpg', 'Cưới Thôi Em', 0, 0, 0, '2023-12-27 08:25:36', 'Thái Học'),
(18, 10, 'uploads/nhac-chuong-ai-roi-cung-thay-doi-lam-chan-khang.mp3', 'uploads/40fb89bc0bd74695726ab89002e63001.jpg', 'Ai Rồi Cũng Thay Đổi', 0, 0, 0, '2023-12-27 08:26:43', 'Lâm Chấn Khang'),
(19, 10, 'uploads/nhac-chuong-buc-tranh-luu-hung.mp3', 'uploads/aaaabd4cd3db00a45536ee23f28fdfd9.jpg', 'Bức Tranh', 0, 0, 0, '2023-12-27 08:27:34', 'Lưu Hưng'),
(20, 11, 'uploads/nhac-chuong-em-biet-khong-phan-duy-anh.mp3', 'uploads/c80dfdee1efab9e86569b10463237a02.jpg', 'Em Biết Không', 0, 0, 0, '2023-12-27 08:29:41', 'Phan Duy Anh'),
(21, 11, 'uploads/nhac-chuong-tat-ca-hoac-khong-la-gi-ca-cao-thai-son.mp3', 'uploads/6f412fff2959cf4b59df9fef77bd638a.jpg', 'Tất Cả Hoặc Không Là Gì Cả', 0, 0, 0, '2023-12-27 08:30:34', 'Cao Thái Sơn'),
(22, 11, 'uploads/toi-nghiep-lam-em-thanh-dat-nhac-chuong.mp3', 'uploads/2ba8f8fa0038b1d7359b64f7a2497fab.jpg', 'Tội Nghiệp Lắm Em', 0, 0, 0, '2023-12-27 08:31:33', 'Thành Đạt'),
(23, 11, 'uploads/Nhac-Chuong-Le-Luu-Ly-Remix-Vu-Phung-Tien-Le-Bao-Remix.mp3', 'uploads/hqdefault.jpg', 'Lệ Lưu Ly', 0, 0, 0, '2023-12-27 08:32:29', 'Vũ Phụng Tiên, DT'),
(24, 11, 'uploads/Nhac-Chuong-Dam-Sau-Chang-Duoc-Gi-Hoai-Lam.mp3', 'uploads/maxresdefault.jpg', 'Đậm Sâu Chẳng Được Gì', 0, 0, 0, '2023-12-27 08:33:40', 'Hoài Lâm'),
(25, 12, 'uploads/nhac-chuong-sao-troi-lam-gio-nal.mp3', 'uploads/9cfcfa64d888e48f44a3326af53374f1.jpg', 'Sao Trời Làm Gió', 0, 0, 0, '2023-12-27 08:35:59', 'Hồ Phi Nal'),
(26, 12, 'uploads/nhac-chuong-duong-mot-chieu.mp3', 'uploads/maxresdefault (1).jpg', 'Đường một chiều', 0, 0, 0, '2023-12-27 08:37:31', 'Huỳnh Tú'),
(27, 12, 'uploads/nhac-chuong-ngay-em-cuoi-remix-nguyen-vi.mp3', 'uploads/maxresdefault (2).jpg', 'Ngày Em Cưới', 0, 0, 0, '2023-12-27 08:38:17', 'Nguyễn Vĩ'),
(28, 12, 'uploads/nhac-chuong-ngay-mai-nguoi-ta-lay-chong-thanh-dat.mp3', 'uploads/maxresdefault (3).jpg', 'Ngày Mai Người Ta Lấy Chồng', 0, 0, 0, '2023-12-27 08:39:51', 'Thành Đạt'),
(29, 12, 'uploads/Nhac-Chuong-Nhung-Ngay-Mua-Le-Gia-Bao.mp3', 'uploads/3439_a425569ddb8fdf2404562683ad01a413bf250767.jpg', 'Những ngày mưa', 0, 0, 0, '2023-12-27 08:40:58', 'Lê Gia Bảo,BMZ'),
(30, 12, 'uploads/Nhac-Chuong-Co-Em-La-Dieu-Tuyet-Voi-Thien-Tu.mp3', 'uploads/f62d754d308bfa537124c2a9d7469d98.jpg', 'Có Em Là Điều Tuyệt Vời Nhất', 0, 0, 0, '2023-12-27 08:42:18', 'Thiên Tú'),
(31, 12, 'uploads/a-loi-Double2T.mp3', 'uploads/a-loi-23281702_20230720074834.jpg', 'À lôi', 0, 0, 0, '2023-12-27 08:43:45', 'Double2T, Masew'),
(32, 12, 'uploads/nhac-chuong-muon-kiep-nhan-sinh-dee-tran-quach-tuan-du.mp3', 'uploads/26ac6c1721a492262a0439919eb8ed69.jpg', 'Muôn Kiếp Nhân Sinh', 0, 0, 0, '2023-12-27 08:45:18', 'Dee Trần, Quách Tuấn Du'),
(33, 12, 'uploads/nhac-chuong-muon-kiep-nhan-sinh-dee-tran-quach-tuan-du.mp3', 'uploads/1e27b3d5f4b11dc5fa99d4d6f639f08b.jpg', 'Sao Phải Giữ', 0, 0, 0, '2023-12-27 08:46:28', 'Khang Việt'),
(34, 12, 'uploads/hoa-co-lau-remix-tiktok-phong-max.mp3', 'uploads/619964de31327dbf8491d14d2c25533f.jpg', 'Hoa Cỏ Lau', 0, 0, 0, '2023-12-27 08:47:20', 'Phong Max'),
(35, 10, 'uploads/nhac-chuong-gap-em-luc-tan-vo-trung-quan.mp3', 'uploads/66ff8cd5bb0f0189f9ed32cc897bc0bd.jpg', 'Gặp Em Lúc Tan Vỡ', 0, 0, 0, '2023-12-27 08:49:47', 'Trung Quân'),
(36, 10, 'uploads/nhac-chuong-no-tinh-dinh-dung.mp3', 'uploads/7f4a092ee91b74d9de307c344e39df0a.jpg', 'Nợ Tình', 0, 0, 0, '2023-12-27 08:50:53', 'Đình Dũng'),
(37, 10, 'uploads/nhac-chuong-dau-con-quan-trong-lofi.mp3', 'uploads/651b34503c348f3bad4fc35e226e85ac.jpg', 'Đâu Còn Quan Trọng', 0, 0, 0, '2023-12-27 08:51:52', 'Chung Thanh Chung'),
(38, 10, 'uploads/Nhac-Chuong-Toan-La-Loi-Noi-Doi-DD-Huong-Ly.mp3', 'uploads/684db61d48b37a9d7127c1ed8216da03.jpg', 'Toàn Là Lời Nói Dối', 0, 0, 0, '2023-12-27 08:52:42', 'Hương Ly'),
(39, 10, 'uploads/nhac-chuong-khong-the-say-remix-hieuthuhai.mp3', 'uploads/1681962535702_org.jpeg', 'Không Thể Say', 0, 0, 0, '2023-12-27 08:53:31', 'HIEUTHUHAI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(6) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `role`, `date`, `image`) VALUES
(9, 'admin', 'admin', 'Hang', 'admin@gmail.com', '$2y$10$yOW6JDG2bqcPXJHQRss6P.tbKLUx7tz3gOaXFwTweCIYtY3NS3wc.', 'admin', '2023-12-27 08:04:43', NULL),
(10, 'thuhang', 'thu', 'hang', 'thuhang123@gmail.com', '$2y$10$v4brqx55IGWaklIm.PbqUuk6GwkbdEHnIFeeB1hUE5.B9nPuKMOOK', 'user', '2023-12-27 08:07:26', 'uploads/z4848668160621_54a8f43bd6caa30419ba60506ed5bb7e.jpg'),
(11, 'dinhhuong', 'dinh', 'huong', 'dinhhuong@gmail.com', '$2y$10$YU5x6wy9vJsUw3Ac20s4QecS8hZf.PSQuoo9BfInpo.ih2V/VwlP2', 'user', '2023-12-27 08:28:02', 'uploads/watermelon.jpg'),
(12, 'dinhmay', 'dinh', 'may', 'dinhmay@gmail.com', '$2y$10$TbZZ5cXUtm5wlyaCO4l5bOBpZkLhKC4ZkaGuHfXkiZCvev7/d8s9e', 'user', '2023-12-27 08:34:35', 'uploads/test.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `favorite_list`
--
ALTER TABLE `favorite_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `title` (`title`),
  ADD KEY `views` (`views`),
  ADD KEY `popularity` (`popularity`),
  ADD KEY `downloads` (`downloads`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `favorite_list`
--
ALTER TABLE `favorite_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
