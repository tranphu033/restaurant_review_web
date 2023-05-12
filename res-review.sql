-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 05:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res-review`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_reactions`
--

CREATE TABLE `comment_reactions` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `icon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`) VALUES
(1, 'Tây Hồ'),
(2, 'Hoàn Kiếm'),
(3, 'Hai Bà Trưng'),
(4, 'Ba Đình'),
(5, 'Long Biên');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'like', '👍', NULL, NULL),
(2, 'dislike', '👎', NULL, NULL),
(3, 'heart', '❤', NULL, NULL),
(4, 'wow', '😮', NULL, NULL),
(5, 'sad', '😢', NULL, NULL),
(6, 'angry', '😡', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2023_05_09_080615_create-restaurants-table', 1),
(6, '2023_05_09_080751_create-icons-table', 1),
(7, '2023_05_09_080825_create-reviews-table', 1),
(8, '2023_05_09_080902_create-review_reactions-table', 1),
(9, '2023_05_09_080924_create-comments-table', 1),
(10, '2023_05_09_080945_create-comment_reactions-table', 1),
(11, '2023_05_11_155809_create_districts_table', 1),
(12, '2023_05_11_155836_create_styles_table', 1),
(13, '2023_05_11_155910_create_services_table', 1),
(14, '2023_05_11_162347_create_res_service_table', 1),
(15, '2023_05_11_162721_create_res_style_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_at` time NOT NULL,
  `close_at` time NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` decimal(2,1) NOT NULL DEFAULT 0.0,
  `min_price` int(10) UNSIGNED DEFAULT NULL,
  `max_price` int(10) UNSIGNED DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `district_id`, `name`, `address`, `phone`, `website`, `open_at`, `close_at`, `description`, `image`, `star`, `min_price`, `max_price`, `is_hot`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hemispheres Steak & Seafood Grill', 'Sheraton Hanoi Hotel K5 Nghi Tam, 11 Xuan Dieu Road, Tay Ho, Hà Nội 10000 Việt Nam', '02437199000', 'http://www.facebook.com/hemispheres.seafood.steak.grill', '18:00:00', '22:30:00', 'Hãy để Hemispheres Steak & Seafood Grill đưa vị giác của quý khách lên chuyến tàu phiêu lưu vòng quanh thế giới với thực đơn độc đáo được thiết kế bởi Bếp trưởng Đức, \"đệ tử ruột\" của Đầu bếp Xuất sắc nhất Châu Á do The Hotelier bình chọn năm 2017 - Nguyễn Công Chung. Quý khách đã sẵn sàng đắm mình vào tấm bản đồ ẩm thực đa quốc gia và bắt đầu hành trình du ngoạn qua bốn góc bán cầu với những món ăn được kết hợp hoàn hảo từ các loại nguyên liệu nhập khẩu cao cấp và các sản phẩm tươi ngon từ vườn rau hữu cơ do chính tay các đầu bếp của chúng tôi chăm bón? Chúng tối hân hạnh được chào đón!', 'https://media-cdn.tripadvisor.com/media/photo-s/1c/63/74/76/hemispheres-steak-seafood.jpg', '5.0', 581395, 2325581, 1, 1, NULL, NULL),
(2, 2, 'Puku Cafe and Sports Bar', '16 Tong Duy Tan, Hà Nội 100000 Việt Nam', '0439381745', 'https://www.facebook.com/PukuCafeHanoi/', '07:00:00', '21:00:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/0c/8f/f6/4c/australian-beef-rib-eye.jpg', '4.5', 50000, 200000, 0, 1, NULL, NULL),
(3, 1, 'Dalcheeni HANOI', '100 Xuân Diệu Tứ Liên, Tây Hồ, Hà Nội 100000 Việt Nam', '01642405693', 'http://dalcheenivn.com/', '05:30:00', '22:30:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/11/71/52/fd/west-lake-view.jpg', '5.0', 186047, 465116, 1, 1, NULL, NULL),
(4, 3, 'HOME Hanoi - HOME Vietnamese Restaurant', '75 P. Nguyễn Đình Chiểu, Lê Đại Hành, 31 Van Ho 2, Hà Nội 10000 Việt Nam', '02439588666', 'http://homevietnameserestaurants.com/', '05:30:00', '22:00:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/28/11/f0/30/home-hanoi-restaurant.jpg', '5.0', 465116, 697674, 0, 1, NULL, NULL),
(5, 2, 'Lighthouse Sky Bar & Restaurant', '27 Hàng Bè Tầng thượng, La Siesta Premium Hàng Bè, Hoàn Kiếm, Hà Nội 100000 Việt Nam', '02439290011', 'http://skybars.vn/lighthouse-sky-bar/', '17:00:00', '12:00:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/26/45/83/47/overview-at-night.jpg', '5.0', 186047, 4883721, 1, 1, NULL, NULL),
(6, 2, 'Bánh mì Long Hội', 'Số 1 Hàng Dầu Lý Thái Tổ, Hà Nội 10000 Việt Nam', '0835116866', 'http://banhmilonghoi.vn/', '06:30:00', '21:00:00', 'Bánh mì Long Hội được ra đời từ niềm đam mê và được biết đến nhờ vào chất lượng và vị thơm ngon của bánh. Giá trị cốt lõi của Bánh mì Long Hội là “Uy tín – An toàn – Chất lượng”. Bánh mì Long Hội sẽ luôn nỗ lực không ngừng để đảm bảo cùng lúc 3 giá trị cốt lõi đó.', 'https://media-cdn.tripadvisor.com/media/photo-p/23/bf/2d/13/banh-m-long-h-i-s-1-hang.jpg', '5.0', 30000, 50000, 1, 1, NULL, NULL),
(7, 4, 'ESSENCE Restaurant', '38A Trần Phú, Quận Ba Đình, Hà Nội, Việt Nam 38A Trần Phú, Quận Ba Đình, Thành Phố Hà Nội, Việt Nam, Hà Nội 100000 Việt Nam', '02439352485', 'http://essencedining.com/', '06:30:00', '22:00:00', 'Nhà hàng Essence Restaurant tọa lạc trên tầng 9-10 của khách sạn Aira Boutique Hanoi Hotel & Spa, vị trí đắc địa số 38A Trần Phú, Quận Ba Đình. Essence Restaurant phục vụ thực đơn cực chất lượng và độc đáo, đa dạng không những các món ăn Việt Nam chính thống mà còn cả những món ăn Châu Âu trong không gian được thiết kế vô cùng thanh lịch, tinh tế không góc chết. Các món ăn vừa ngon miệng vừa đẹp mắt bởi cách bày trí vô cùng chất. Các nguyên liệu chế biến cũng được chọn lọc kỹ càng đảm bảo dinh dưỡng, vệ sinh và độ tươi ngon. Mức giá có một không hai kết hợp với phong cách trang trí lạ mắt mang cả nét đẹp Việt Nam xưa và thiết kế hiện đại tiên tiến, Essence Restaurant được nhiều thực khách đánh giá là nhà hàng tốt nhất thủ đô.', 'https://media-cdn.tripadvisor.com/media/photo-s/22/ac/cb/21/luxury-decoration-essence.jpg', '5.0', 116279, 465116, 0, 1, NULL, NULL),
(8, 2, 'Tung\'s Kitchen', '2 Hang Bong, Hà Nội 100000 Việt Nam', '02439352575', 'http://www.facebook.com/Tungskitchen/', '10:00:00', '22:00:00', 'Chúng tối là gia đình Việt Nam hiện đang sinh sống và làm việc tại Hà Nội. Mong muốn của chúng tôi muốn mang ẩm thực Việt Nam giới thiệu cho tất cả bạn bè trong nước cũng như ngoài nước.', 'https://media-cdn.tripadvisor.com/media/photo-s/26/38/e6/d9/we-are-re-opening-from.jpg', '5.0', 46512, 209302, 1, 1, NULL, NULL),
(9, 2, 'The Rhythms Restaurant', '33 - 35 Hàng Dầu Hoàn Kiếm, Hà Nội 100000 Việt Nam', '02432121155', 'http://www.therhythmsrestaurant.com/', '11:00:00', '22:00:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/1a/24/e6/a3/we-create-menu-that-highlights.jpg', '5.0', 139535, 3488372, 0, 1, NULL, NULL),
(10, 1, 'Hill Top Curry Indian Restaurant', '118 Yen Phu, Tay Ho, Hà Nội 10000 Việt Nam', '0335509430', 'http://hilltopcurry.com/', '10:30:00', '22:30:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/28/58/c2/00/interior-look-of-hill.jpg', '3.0', 99000, 115000, 0, 1, NULL, NULL),
(11, 5, 'The Hung Ha Noi Snake Restaurant', '37 Ng. 137 Việt Hưng Long Biên, Hà Nội 100000 Việt Nam', '0989331012', 'https://www.instagram.com/lematsnakevillage/', '09:00:00', '23:00:00', '', 'https://media-cdn.tripadvisor.com/media/photo-s/25/14/61/84/the-hung-ha-noi-snake.jpg', '5.0', 255814, 3488372, 1, 1, NULL, NULL),
(12, 2, 'Skyline Hanoi', '38 Gia Ngữ, Hoàn Kiếm Tầng 13, Hà Nội Việt Nam', '0968083066', 'http://www.skylinehanoi.com/', '09:00:00', '23:00:00', 'SKYLINE còn hơn là nhà hàng hay quầy rượu. Chúng tôi là \"Mái nhà của Phố Cổ\", đem đến cho khách hàng những trải nghiệm dịch vụ cá nhân với sự tập trung đến từng chi tiết trong mọi thứ chúng tôi phục vụ. Người Việt Nam thường nói, nếu chưa đến Phố Cổ thì chưa hiểu Hà Nội. Nhưng nếu bạn muốn có một cái nhìn tốt nhất về Hà Nội, bạn nên đến với chúng tôi - Mái nhà của Phố Cổ.', 'https://media-cdn.tripadvisor.com/media/photo-s/23/a2/b9/72/oasis-in-the-old-quarter.jpg', '5.0', 232558, 930233, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `res_service`
--

CREATE TABLE `res_service` (
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `res_service`
--

INSERT INTO `res_service` (`restaurant_id`, `service_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 4),
(2, 8),
(3, 3),
(3, 5),
(3, 9),
(4, 4),
(4, 5),
(4, 6),
(5, 1),
(5, 3),
(5, 5),
(6, 4),
(6, 8),
(6, 9),
(7, 3),
(7, 5),
(7, 7),
(8, 4),
(8, 6),
(8, 8),
(9, 4),
(9, 7),
(9, 10),
(10, 3),
(10, 9),
(10, 10),
(11, 1),
(11, 7),
(11, 9),
(12, 2),
(12, 8),
(12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `res_style`
--

CREATE TABLE `res_style` (
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `style_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `res_style`
--

INSERT INTO `res_style` (`restaurant_id`, `style_id`) VALUES
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(5, 5),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(9, 5),
(10, 4),
(11, 1),
(12, 1),
(12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` tinyint(3) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_reactions`
--

CREATE TABLE `review_reactions` (
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `icon_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'Giao hàng'),
(2, 'Đặt chỗ'),
(3, 'Bữa ăn tự chọn'),
(4, 'Có bãi đỗ xe'),
(5, 'Ngồi ngoài trời'),
(6, 'Wifi miễn phí'),
(7, 'Phong cách gia đình'),
(8, 'Nhạc sống'),
(9, 'Ven bờ'),
(10, 'Phục vụ đồ uống có cồn');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `name`) VALUES
(1, 'Kiểu Việt'),
(2, 'Kiểu Âu'),
(3, 'Kiểu Á'),
(4, 'Kiểu Ấn Độ'),
(5, 'Quốc tế'),
(6, 'Kiểu Mỹ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `phone` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `email`, `role`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'vanphu', 'phu123', 'Tran Van Phu', 'phu@gmail.com', 1, '0333333333', NULL, NULL),
(2, 'quanghuy', 'huy123', 'Nguyen Quang Huy', 'huy@gmail.com', 2, '0333333334', NULL, NULL),
(3, 'hongquang', 'quangadmin', 'Nguyen Hong Quang', 'quangad@gmail.com', 3, '0333333335', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  ADD PRIMARY KEY (`comment_id`,`user_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_service`
--
ALTER TABLE `res_service`
  ADD PRIMARY KEY (`restaurant_id`,`service_id`);

--
-- Indexes for table `res_style`
--
ALTER TABLE `res_style`
  ADD PRIMARY KEY (`restaurant_id`,`style_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_reactions`
--
ALTER TABLE `review_reactions`
  ADD PRIMARY KEY (`review_id`,`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
