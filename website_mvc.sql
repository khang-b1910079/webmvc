-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 05:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Khang', 'khang@gmail.com', 'khangadmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(3, 'le hoang khang', 'khang@123gmail.com', 'khangadmin123', 'e10adc3949ba59abbe56e057f20f883e', 0),
(4, 'khangadmin', 'khang@gmail.com', 'khang', 'e10adc3949ba59abbe56e057f20f883e', 0),
(5, 'khangadmin', 'khang@gmail.com', 'khang', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) NOT NULL,
  `binhluan` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`, `blog_id`, `image`) VALUES
(4, 'khang', 'đẹp quá ', 31, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Dell'),
(2, 'Oppo'),
(3, 'Huawei'),
(4, 'Samsung'),
(5, 'Apple'),
(6, 'Xiaomi'),
(7, 'MSI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(28, 6, 'mkg9g02iqhlhmhftvp112e8mse', 'sp2', 1500, 2, 'bb326b3900.png'),
(29, 3, 'jocs90pou1ns91k78s48jl9sod', 'sp1', 8000, 4, 'fc10484848.jpg'),
(34, 34, 'kv3nm9o15cqthr5gc4uqoa74lg', 'MacBook Air M2 2022 13 inch 8CPU 8GPU 8GB 256GB', 28990000, 3, 'eafac7aacf.webp'),
(35, 21, 'o45ogrj97av92nb6klgb1g01oa', 'Xiaomi 12T 8GB-128GB', 11990000, 1, '59e38cd22a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(2, 'Màng hình'),
(3, 'Gia dụng'),
(4, 'Phụ kiện'),
(5, 'Laptop'),
(6, 'Điện Thoại');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(1, 0, 6, 'sp2', '1500', 'bb326b3900.png'),
(2, 0, 5, 'sp8', '1500', '6bcc8fe279.jpg'),
(3, 0, 3, 'sp1', '8000', 'fc10484848.jpg'),
(10, 3, 21, 'Xiaomi 12T 8GB-128GB', '11990000', '59e38cd22a.webp'),
(11, 3, 23, 'OPPO Reno8 Pro 5G 12GB - 256GB', '18490000', 'b60a9af2a4.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'khang', 'ninh kiều, càn thơ', 'cần thơ', 'AF', '123456', '0237895200', 'khang1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(8, 5, 'sp8', 3, 2, ' 3000', '6bcc8fe279.jpg', 2, '2022-08-23 14:29:20'),
(9, 5, 'sp8', 3, 1, ' 1500', '6bcc8fe279.jpg', 2, '2022-08-24 16:06:56'),
(10, 3, 'sp1', 3, 1, ' 8000', 'fc10484848.jpg', 2, '2022-08-24 16:06:56'),
(11, 2, 'dddđ', 3, 4, ' 32000', '842191072d.jpg', 0, '2022-10-19 03:26:59'),
(12, 5, 'sp8', 3, 1, ' 1500', '6bcc8fe279.jpg', 0, '2022-10-19 03:26:59'),
(13, 5, 'sp8', 3, 3, ' 4500', '6bcc8fe279.jpg', 0, '2022-10-21 15:25:27'),
(14, 5, 'sp8', 3, 3, ' 4500', '6bcc8fe279.jpg', 0, '2022-10-21 15:25:27'),
(15, 6, 'sp2', 3, 3, ' 4500', 'bb326b3900.png', 0, '2022-10-22 06:29:57'),
(16, 6, 'sp2', 3, 4, ' 6000', 'bb326b3900.png', 0, '2022-10-22 06:30:32'),
(17, 21, 'Xiaomi 12T 8GB-128GB', 3, 2, ' 23980000', '59e38cd22a.webp', 0, '2022-12-02 17:47:09'),
(18, 21, 'Xiaomi 12T 8GB-128GB', 3, 1, ' 11990000', '59e38cd22a.webp', 0, '2022-12-02 17:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(15, 'iPhone 14 Pro Max 128GB', 6, 5, '<p><strong>iPhone 14 Pro Max đem đến những trải nghiệm kh&ocirc;ng thể t&igrave;m thấy tr&ecirc;n&nbsp;mọi thế hệ iPhone trước đ&oacute; với&nbsp;m&agrave;u T&iacute;m Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic v&agrave;&nbsp;m&agrave;n h&igrave;nh &ldquo;vi&ecirc;n thuốc&rdquo; Dynamic Island linh hoạt, nịnh mắt.</strong></p>', 1, '33490000', '931018cd34.webp'),
(16, 'iPhone 14 Plus 128GB', 6, 5, '<p><span>Sự hấp dẫn của chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>&nbsp;thế hệ mới 2022 với m&agrave;n h&igrave;nh lớn, pin xuất sắc nhất từ trước đến nay, chụp đ&ecirc;m ấn tượng&nbsp;v&agrave; loạt c&ocirc;ng nghệ đỉnh cao,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-14-plus\">điện thoại iPhone 14 Plus</a>&nbsp;mang người d&ugrave;ng v&agrave;o những trải nghiệm di động ti&ecirc;n tiến, sẵn s&agrave;ng cho cuộc sống năng động, th&ocirc;ng minh v&agrave; tiện lợi.</span></p>\r\n<div><span><br /></span></div>', 0, '24490000', '891d85a8ef.webp'),
(17, 'iPhone 13 128GB', 6, 5, '<p><span>iPhone 13 sở hữu hệ thống camera k&eacute;p xuất sắc nhất từ trước đến nay, bộ vi xử l&yacute; Apple A15 nhanh nhất thế giới smartphone c&ugrave;ng thời lượng pin cực khủng, sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn suốt cả ng&agrave;y.</span></p>', 1, '19290000', 'f2629e567a.webp'),
(18, 'iPhone 13 Pro Max 128GB', 6, 5, '<p><span>iPhone 13 Pro Max xứng đ&aacute;ng l&agrave; một chiếc iPhone lớn nhất, mạnh mẽ nhất v&agrave; c&oacute; thời lượng pin d&agrave;i nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những t&aacute;c vụ b&igrave;nh thường cho đến c&aacute;c ứng dụng chuy&ecirc;n nghiệp.</span></p>', 1, '27990000', '7a0e6c096f.webp'),
(19, 'Xiaomi Redmi A1 2GB-32GB', 6, 6, '<p><span>Redmi A1 tiếp tục l&agrave; một chiếc điện thoại gi&aacute; rẻ mang đến trải nghiệm tuyệt vời từ Xiaomi với mặt lưng da sang trọng, m&agrave;n h&igrave;nh lớn, giao diện Android gốc dễ sử dụng, camera k&eacute;p v&agrave; vi&ecirc;n pin dung lượng l&ecirc;n tới 5000 mAh.</span></p>', 0, '2090000', '038be34718.webp'),
(20, 'Xiaomi Redmi Note 11 4GB - 128GB ', 6, 6, '<p><span>H&atilde;y c&ugrave;ng trải nghiệm Xiaomi Redmi Note 11, phi&ecirc;n bản n&acirc;ng cấp to&agrave;n diện của d&ograve;ng Redmi Note lu&ocirc;n rất được y&ecirc;u th&iacute;ch từ trước đến nay. Sức mạnh vượt trội, thời lượng pin si&ecirc;u d&agrave;i, sạc si&ecirc;u nhanh v&agrave; camera chuy&ecirc;n nghiệp của sản phẩm sẽ mang đến những giờ ph&uacute;t giải tr&iacute; tuyệt vời nhất.</span></p>', 1, '4790000', 'b4026a5992.webp'),
(21, 'Xiaomi 12T 8GB-128GB', 6, 6, '<p><span>Xiaomi 12T thừa hưởng những điểm nổi bật về thiết kế, hệ thống camera m&agrave; thế hệ trước đ&atilde; l&agrave;m cũng như được khai ph&aacute; th&ecirc;m về sức mạnh hiệu năng. Với chiếc điện thoại mới toanh nh&agrave; Xiaomi n&agrave;y tr&ecirc;n tay, bạn sẽ c&oacute; ngay những khoảnh khắc kh&ocirc;ng thể bỏ lỡ v&agrave; đắm ch&igrave;m trong kh&ocirc;ng gian giải tr&iacute; của ri&ecirc;ng m&igrave;nh. </span></p>', 0, '11990000', '59e38cd22a.webp'),
(22, 'OPPO Find X5 Pro 12GB - 256GB', 6, 2, '<p><span>Hội tụ những tinh hoa c&ocirc;ng nghệ &ndash; OPPO Find X5 Pro đưa bạn đến trải nghiệm vượt trội từ hiệu năng Snapdragon 8 Gen 1, sạc nhanh 80W, cảm biến Sony cao cấp đến thiết kế độc đ&aacute;o, điện thoại ph&ocirc; diễn trọn bộ đột ph&aacute;, khẳng định sức mạnh của chiếc flagship đầu bảng.</span></p>', 1, '26990000', 'e579722f45.webp'),
(23, 'OPPO Reno8 Pro 5G 12GB - 256GB', 6, 2, '<p><span>Hội tụ những điểm mạnh của d&ograve;ng Reno, OPPO Reno8 Pro thể hiện bản lĩnh của phi&ecirc;n bản cao cấp từ hiệu năng Dimensity 8100-Max, bộ xử l&yacute; h&igrave;nh ảnh ti&ecirc;n tiến Marisilicon-X, camera đỉnh cao v&agrave; sạc si&ecirc;u tốc đến 80W. Đ&acirc;y ch&iacute;nh l&agrave; thiết bị c&ocirc;ng nghệ mang tới sự tiện lợi v&agrave; khai ph&aacute; hiệu suất cao trong cuộc sống hiện đại.</span></p>', 0, '18490000', 'b60a9af2a4.webp'),
(24, 'Samsung Galaxy Z Fold4 5G 256GB', 6, 4, '<p><strong>Với Samsung Galaxy Z Fold4, smartphone m&agrave;n h&igrave;nh gập đ&atilde; trở n&ecirc;n th&acirc;n thiện, tiện dụng v&agrave; bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng kh&iacute;a cạnh gi&uacute;p sản phẩm biến h&oacute;a linh hoạt hơn v&agrave; đem lại những trải nghiệm kh&ocirc;ng thể t&igrave;m thấy ở đ&acirc;u kh&aacute;c.</strong></p>', 1, '35990000', '21a9e2ed24.webp'),
(27, 'Laptop Dell Vostro V3510 i5 1135G7/8GB/512GB/15.6FHD/MX350 2GB/Win 11+Office HS21 ', 5, 1, '<p><span>Dell Vostro 3510 l&agrave; phi&ecirc;n bản laptop doanh nh&acirc;n 15,6 inch mới nhất từ Dell, với thiết kế gọn g&agrave;ng thanh tho&aacute;t v&agrave; hiện đại, đồng thời hiệu suất được n&acirc;ng cấp đ&aacute;ng kể nhờ bộ vi xử l&yacute; Intel Core i5 thế hệ thứ 11 c&ugrave;ng card đồ họa rời NVIDIA MX350, gi&uacute;p cho c&ocirc;ng việc của bạn lu&ocirc;n hoạt động hiệu quả v&agrave; an to&agrave;n.</span></p>', 0, '19290000', '8a22082f95.webp'),
(28, 'Laptop Dell Inspiron 16 N5620 i5 1240P/16GB/512GB/16.0\"FHD/GeForce MX570 2GB/Win 11', 5, 1, '<p><span>Dell Inspiron 16 5620 i5 1240P l&agrave; một chiếc laptop đồ họa v&ocirc; c&ugrave;ng mạnh mẽ với chip xử l&yacute; Intel thế hệ thứ 12 kết hợp 16GB RAM tốc độ cao v&agrave; card rời GeForce MX570. M&aacute;y t&iacute;nh x&aacute;ch tay cũng c&oacute; m&agrave;n h&igrave;nh lớn, kiểu d&aacute;ng mỏng nhẹ v&agrave; đa dạng cổng kết nối t&iacute;ch hợp.</span></p>', 1, '27490000', '79ed8581bb.webp'),
(29, 'Laptop Dell Vostro V5320 i7 1260P/16GB/512GB/13.3\"FHD+/Win 11 ', 5, 1, '<p><strong>Dell Vostro 5320 g&oacute;i gọn tốc độ v&agrave; sức mạnh h&agrave;ng đầu trong một chiếc laptop thời trang, kiểu d&aacute;ng bắt mắt, si&ecirc;u mỏng nhẹ. Mọi trải nghiệm tr&ecirc;n Dell Vostro V5320 đều diễn ra ho&agrave;n hảo, từ hiệu năng, khả năng phản hồi, thời lượng pin cho đến m&agrave;n h&igrave;nh tuyệt đẹp.</strong></p>', 0, '27990000', 'e35ddd6734.webp'),
(30, 'Laptop MSI Gaming GF63 Thin 11SC-666VN i5 11400H/8GB/512GB/15.6\"FHD/GeForce GTX 1650 4GB/Win 11 ', 5, 7, '<p><strong>MSI GF63 Thin 11SC 666VN l&agrave; chiếc laptop chơi game gi&aacute; rẻ đầy hấp dẫn với bộ vi xử l&yacute; Intel thế hệ thứ 11, thiết kế mỏng nhẹ v&agrave; m&agrave;n h&igrave;nh 144Hz mượt m&agrave;. Với MSI GF63 Thin, bạn c&oacute; thể chơi game tốt m&agrave; l&agrave;m việc, học tập cũng rất tuyệt vời.</strong></p>', 1, '20490000', '8e1a7c188d.webp'),
(31, 'Laptop MSI Modern 14 B11MOU-1034VN i5 1155G7/8GB/512GB/14\"FHD/Win 11 ', 5, 7, '<p><strong>MSI Modern 14 B11MOU được s&aacute;ng tạo v&agrave; x&acirc;y dựng để đ&aacute;p ứng lối sống năng động của giới trẻ. Sự cơ động, t&iacute;nh linh hoạt, vẻ thời trang đi k&egrave;m sức mạnh hiệu năng ấn tượng sẽ l&agrave; những g&igrave; bạn cảm nhận r&otilde; nhất khi cầm tr&ecirc;n tay chiếc laptop xuất sắc n&agrave;y.</strong></p>', 0, '16490000', '4954e33971.webp'),
(32, 'Laptop MSI Gaming Katana GF66 12UCK-805VN i7 12650H/8GB/512GB/15.6\"FHD/GeForce RTX 3050 4GB/Win11', 5, 7, '<p><strong>Mạnh mẽ, sắc b&eacute;n v&agrave; cứng c&aacute;p như một thanh kiếm, MSI Gaming Katana GF66 12UCK-805VN được tối ưu h&oacute;a để giải ph&oacute;ng sức mạnh đỉnh cao trong mọi tr&ograve; chơi. Bộ vi xử l&yacute; Intel Core i7 12650H, card đồ họa RTX 3050 v&agrave; b&agrave;n ph&iacute;m m&agrave;u đỏ đậm phong c&aacute;ch gi&uacute;p bạn lu&ocirc;n tỏa s&aacute;ng tr&ecirc;n chiến trường.</strong></p>', 1, '25290000', 'c0ddf53902.webp'),
(33, 'MacBook Pro 14\" 2021 M1 Pro Ram 32GB', 5, 5, '<p><strong>MacBook Pro 2021 14 inch nay c&ograve;n mạnh mẽ hơn với phi&ecirc;n bản n&acirc;ng cấp RAM 32GB, để bạn xử l&yacute; những c&ocirc;ng việc nặng hơn, l&agrave;m nhiều việc hơn, b&ecirc;n cạnh bộ vi xử l&yacute; M1 Pro đỉnh cao v&agrave; m&agrave;n h&igrave;nh Liquid Retina XDR c&oacute; sẵn tuyệt đẹp.</strong></p>', 1, '56990000', 'dcb015b382.webp'),
(34, 'MacBook Air M2 2022 13 inch 8CPU 8GPU 8GB 256GB', 5, 5, '<p><span>Ngắm nh&igrave;n MacBook Air M2 2022, bạn sẽ say đắm trước vẻ đẹp tinh xảo đến từng g&oacute;c cạnh v&agrave; độ mỏng đặc trưng vốn c&oacute; l&agrave;m n&ecirc;n thương hiệu MacBook Air. Mỗi thiết bị đều được Apple chế t&aacute;c v&agrave; ho&agrave;n thiện từ chất liệu nh&ocirc;m đặc biệt nhằm đảm bảo cả độ nhẹ v&agrave; sự bền bỉ. Bạn sẽ thoải m&aacute;i cầm nắm để mang theo thiết bị đi bất cứ đ&acirc;u. Sản phẩm mang lại bốn t&ugrave;y chọn m&agrave;u tuyệt đẹp gồm Xanh, X&aacute;m, Bạc v&agrave; V&agrave;ng.</span></p>\r\n<div class=\"ddict_div\" style=\"top: 64.2px; max-width: 664.05px; left: 5.02499px;\"><img class=\"ddict_audio\" src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/img/audio.png\" alt=\"\" />\r\n<p class=\"ddict_sentence\">Ngắm nh&igrave;n MacBook Air M2 2022, bạn sẽ say đắm trước vẻ đẹp tinh xảo đến từng g&oacute;c cạnh v&agrave; độ mỏng đặc trưng vốn c&oacute; l&agrave;m n&ecirc;n thương hiệu&nbsp;MacBook Air. Mỗi thiết bị đều được Apple chế t&aacute;c v&agrave; ho&agrave;n thiện từ chất liệu nh&ocirc;m đặc biệt nhằm đảm bảo cả độ nhẹ v&agrave; sự bền bỉ. Bạn sẽ thoải m&aacute;i cầm nắm để mang theo thiết bị đi bất cứ đ&acirc;u. Sản phẩm mang lại bốn t&ugrave;y chọn m&agrave;u tuyệt đẹp gồm Xanh, X&aacute;m, Bạc v&agrave; V&agrave;ng.</p>\r\n</div>', 0, '28990000', 'eafac7aacf.webp'),
(35, 'Tai nghe Bluetooth OPPO Enco Air2', 4, 2, '<p><span>OPPO Enco Air2 l&agrave; một tai nghe kh&ocirc;ng d&acirc;y c&oacute; gi&aacute; b&aacute;n kh&aacute; phải chăng. Tuy nhi&ecirc;n, sản phẩm n&agrave;y vẫn cung cấp h&agrave;ng loạt trải nghiệm tuyệt vời cho người d&ugrave;ng như thiết kế nắp hộp trong suốt độc đ&aacute;o, trọng lượng tai nghe si&ecirc;u nhẹ, tuổi thọ pin ấn tượng v&agrave; chất lượng &acirc;m thanh vượt trội.</span></p>', 1, '1390001', 'fbc6cf90ca.webp'),
(36, 'Tai nghe Bluetooth nhét tai Huawei Enco Air2 Pro ', 4, 3, '<p><span>Tai nghe Bluetooth Huawei Enco Air2 Pro nổi bật với thiết kế hộp đựng b&oacute;ng bẩy, trải nghiệm đeo thoải m&aacute;i suốt cả ng&agrave;y, chất lượng &acirc;m thanh vượt trội, thời gian sử dụng pin ấn tượng v&agrave; kết nối Bluetooth 5.2. Sản phẩm sẽ l&agrave;m h&agrave;i l&ograve;ng mọi t&iacute;n đồ &acirc;m thanh kh&oacute; t&iacute;nh nhất.</span></p>', 1, '1790000', '9ce5aceb98.webp'),
(37, 'Chuột không dây PMW5008', 4, 6, '<div id=\"input_line_0\"><span id=\"input_part_0\" data-mention=\"Kiểu kết nối	Wifi\">Kiểu kết nối Wifi,</span>Độ ph&acirc;n giải chuột 1600 dpi,Thương hiệu Prolink,Xuất xứ Trung Quốc</div>', 1, '180000', 'ade91f88a6.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'sp2', '1500', 'bb326b3900.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `productId_2` (`productId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
