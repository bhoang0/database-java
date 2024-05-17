

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2023 at 04:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
BEGIN TRANSACTION;
--SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/* cái này tui viết để chạy trên sql */
CREATE DATABASE quanlikhoxemay
USE quanlikhoxemay


--
-- Database:  quanlikhoxemay 
--

-- --------------------------------------------------------

--
-- Table structure for table  Account 
--

CREATE TABLE Account (
  fullName nvarchar(50) DEFAULT NULL,
  userName nvarchar(50) NOT NULL,
  password varchar(60) DEFAULT NULL,
  role nvarchar(50) DEFAULT NULL,
  status int DEFAULT NULL,
  email varchar(50) DEFAULT NULL
);

--
-- Dumping data for table  Account 
--

INSERT INTO Account (fullName, userName, password, role, status, email) VALUES
('Admin', 'admin', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Admin', 1, 'sinhbaoreact2003@gmail.com'),
(N'Trần Thị Kim Huệ', 'kimhue', '$2a$12$PhiTGBbHjHoB3dbS6BmCC.rzdMCBqDrdK9Y8Ae8GPcKe1RpHiWARO', N'Nhân viên xuất', 1, 'hgiabao2k3@gmail.com'),
(N'Trần Nguyễn Bảo Hoàng', 'baohoang', '$2a$12$89As1J0AB0yrqGjnQUHtpevc6voGyvzAd8OvzkS1vGDo3YPO2P.Ia', N'Nhân viên nhập', 1, 'transinh342@gmail.com'),
(N'Trần Phạm Trúc Anh', 'trucanh', '$2a$12$myOaq0kATMzNkbxgzQEkPu8ht2K0pXOGzZMZo6nSBowq6EyoLo7tS', N'Quản lý kho', 1, 'a11611112003@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table  XeMay 
--

CREATE TABLE  XeMay  (
   maXe  varchar(50) NOT NULL,
   tenXe  nvarchar(100) DEFAULT NULL,
   soLuong  int NOT NULL DEFAULT 0,
   tenDongCo  nvarchar(100) NOT NULL DEFAULT '0',
   phanKhoi  nvarchar(50) NOT NULL DEFAULT '0',
   doCaoYen  nvarchar(50) DEFAULT NULL,
   gia  int NOT NULL DEFAULT 0,
   congSuat nvarchar(50) DEFAULT NULL,
   khoiLuong int DEFAULT NULL,
   loaiXe  nvarchar(50) DEFAULT NULL,
   tieuthuNhienLieu nvarchar(50) DEFAULT NULL,
   dungTichbinhXang float DEFAULT NULL,
   phienBan  nvarchar(50) DEFAULT NULL,
   xuatXu  nvarchar(50) DEFAULT NULL,
   trangThai  int DEFAULT NULL
);

--
-- Dumping data for table  XeMay 
--

INSERT INTO  XeMay  ( maXe ,  tenXe ,  soLuong ,  tenDongCo ,  phanKhoi ,  doCaoYen ,  gia ,  congSuat ,  khoiLuong ,  loaiXe ,  tieuthuNhienLieu ,  dungTichbinhXang ,  phienBan ,  xuatXu ,  trangThai ) VALUES
('HD1', 'Honda SH350i', 36, N'SOHC, 4 kỳ, xy-lanh đơn 4 van, làm mát bằng chất lỏng, đáp ứng Euro 3', '329,6 cm3', '805 mm', 150000000, NULL, NULL, N'Xe tay ga', N'3.63 lít/100km', 9.3, N'Cao cấp', N'Nhật Bản', 0),
('HD2', 'Honda Wave Alpha 110', 23, N'4 kỳ, 1 xilanh, làm mát bằng không khí', '109,2 cm3', '770 mm', 17500000, NULL, NULL, N'Xe số', N'1.72 lít/100km', 3.7, N'Tiêu chuẩn', N'Nhật Bản', 0),
('HD3', 'Honda Winner X 2024', 19, N'PGM-FI, DOHC, 4 kỳ xi-lanh đơn, côn tay 6 cấp số, làm mát bằng chất lỏng', '149,2 cm3', '795 mm', 46500000, NULL, NULL, N'Xe côn tay', N'1.98 lít/100km', 5.5, N'Tiêu chuẩn', N'Nhật Bản', 1),
('HD4', 'Honda Super Cub C125', 3, N'PGM-FI, 4 kỳ, xy-lanh đơn, làm mát bằng không khí', '123,94 cm3', '780 mm', 87000000, NULL, NULL, N'Xe số', N'1.5 lít/100km', 3.7, N'Đặc biệt', N'Nhật Bản', 1),
('YH1', 'Yamaha Sirius RC', 28, N'4 thì, 2 van SOHC, làm mát bằng không khí', '110.3 cm3', '770 mm', 21000000, NULL, NULL, N'Xe số', N'2.08 lít/100km', 4.2, N'Tiêu chuẩn', N'Nhật Bản', 1),
('YH2', 'Yamaha Grande', 62, N'Blue Core, SOHC, 4 kỳ, 2 van, Làm mát bằng không khí cưỡng bức', '124,9 cm3', '790 mm', 49000000, NULL, NULL, N'Xe tay ga', N'1.69 lít/100km', 4.4, N'Đặc biệt', N'Nhật Bản', 1),
('YH3', 'Yamaha Jupiter Finn', 22, N'4 thì, 2 van, SOHC, làm mát bằng không khí', '113.7 cm3', '775 mm', 28000000, NULL, NULL, N'Xe số', N'1.64 lít/100km', 4, N'Cao cấp', N'Nhật Bản', 1),
('YH4', 'Yamaha Exciter 155 VVA', 23, N'4 kỳ, 4 van, SOHC, làm mát bằng chất lỏng', '155.1 cm3', '795 mm', 54000000, NULL, NULL, N'Xe số', N'2 lít/100km', 5.4, N'Cao cấp', N'Nhật Bản', 1),
('YH5', 'Yamaha Latte', 18, N'Blue Core, 2 van, 4 kỳ, SOHC, Làm mát bằng không khí cưỡng bức', '124.9 cm3', '790 mm', 38000000, NULL, NULL, N'Xe tay ga', N'1.8 lít/100km', 5.5, N'Tiêu chuẩn', N'Nhật Bản', 1),
('SK1', 'Suzuki Address Fi', 19, N'4 thì, 1 xy-lanh, làm mát bằng không khí', '113 cm3', '755 mm', 29000000, NULL, NULL, N'Xe tay ga', N'1.86 lít/100km', 5.2, N'Tiêu chuẩn', N'Nhật Bản', 1),
('SK2', 'Suzuki Raider R150', 16, N'DOHC, 4 van, côn tay 6 cấp số', '150 cm3', '765 mm', 49000000, NULL, NULL, N'Xe côn tay', N'2.4 lít/100km', 4, N'Tiêu chuẩn', N'Nhật Bản', 1),
('PG1', 'Piaggio Liberty 125 ABS', 20, N'Piaggio iGet, 4 kỳ, phun xăng điện tử', '124.5 cm3', '780 mm', 57000000, NULL, NULL, N'Xe tay ga', N'2.63 lít/100km', 6, N'Tiêu chuẩn', N'Ý', 1),
('PG2', 'Piaggio Vespa Primavera 125', 37,  N'Piaggio iGet, 4 kỳ, 3 van, phun xăng điện tử', '124.5 cm3', '770 mm', 77000000, NULL, NULL, N'Xe tay ga', N'2.67 lít/100km', 7, N'Tiêu chuẩn', N'Ý', 1),
('SY1', 'Sym Elite 50', 34, N'4 kỳ, 1 xi-lanh, làm mát bằng không khí', '50 cm3', '740 mm', 22000000, NULL, NULL, N'Xe tay ga',  N'2.5 lít/100km', 4.5, N'Tiêu chuẩn', N'Đài Loan', 1),
('SY2', 'Sym Attila 50', 53, N'4 thì, làm mát bằng không khí', '50 cm3', '750 mm', 20000000, NULL, NULL, N'Xe tay ga', N'2.22 lít/100km', 6.2, N'Tiêu chuẩn', N'Đài Loan', 1),
('SY3', 'Sym Angela 50', 83, N'4 thì, Làm mát bằng không khí', '50 cm3', '750 mm', 17000000, NULL, NULL, N'Xe tay ga', N'1.26 lít/100km', 3.4, N'Tiêu chuẩn', N'Đài Loan', 1),
('SY4', 'Sym Star SR 125 EFI', 118, N'Động cơ 4 thì, SOHC', '123 cm3', '780 mm', 27500000, NULL, NULL, N'Xe côn tay', N'1.81 lít/100km', 3.6,  N'Tiêu chuẩn', N'Đài Loan', 1),
('HD5', 'Honda SH350i', 11, N'SOHC, 4 kỳ, xy-lanh đơn 4 van, làm mát bằng chất lỏng; đáp ứng Euro 3', '329,6 cm3', '805 mm', 145000000, NULL, NULL, N'Xe tay ga', N'3.63 lít/100km', 9.3, N'Đặc biệt', N'Nhật Bản', 1),
('HD6', 'Honda Wave Alpha 110', 90, N'4 kỳ, 1 xilanh, làm mát bằng không khí', '109,2 cm3', '770 mm', 18000000, NULL, NULL, N'Xe số', N'1.72 lít/100km', 3.7, N'Đặc biệt', N'Nhật Bản', 1),
('HD7', 'Honda Wave Alpha 110', 19, N'4 kỳ, 1 xilanh, làm mát bằng không khí', '109,2 cm3', '770 mm', 18500000, NULL, NULL, N'Xe số', N'1.72 lít/100km', 3.7, N'giới hạn', N'Nhật Bản', 1),
('HD8', 'Honda Winner X 2024', 60, N'PGM-FI, DOHC, 4 kỳ xi-lanh đơn, côn tay 6 cấp số, làm mát bằng chất lỏng', '149,2 cm3', '795 mm', 47000000, NULL, NULL, N'Xe côn tay', N'1.98 lít/100km', 5.5, N'Thể thao', N'Nhật Bản', 1),
('YH6', 'Yamaha Latte', 25, N'Blue Core, 2 van, 4 kỳ, SOHC, Làm mát bằng không khí cưỡng bức', '124.9 cm3', '790 mm', 40000000, NULL, NULL, N'Xe tay ga', N'1.8 lít/100km', 5.5, N'Cao cấp', N'Nhật Bản', 1),
('PG3', 'Piaggio Liberty 125 ABS', 19, N'Piaggio iGet, 4 kỳ, phun xăng điện tử', '124.5 cm3', '780 mm', 60000000, NULL, NULL, N'Xe tay ga', N'2.63 lít/100km', 6, N'Cao cấp', N'Ý', 1),
('PG4', 'Piaggio Vespa Primavera 125', 16,  N'Piaggio iGet, 4 kỳ, 3 van, phun xăng điện tử', '124.5 cm3', '770 mm', 77500000, NULL, NULL, N'Xe tay ga', N'2.67 lít/100km', 7, N'Cao cấp', N'Ý', 1),
('YH7', 'Yamaha Jupiter Finn', 30, N'4 thì, 2 van, SOHC, làm mát bằng không khí', '113.7 cm3', '775 mm', 25000000, NULL, NULL, N'Xe số', N'1.64 lít/100km', 4, N'Tiêu chuẩn', N'Nhật Bản', 1),
('SY5', 'Sym Elite 50', 19, N'4 kỳ, 1 xi-lanh, làm mát bằng không khí', '50 cm3', '740 mm', 25000000, NULL, NULL, N'Xe tay ga',  N'2.5 lít/100km', 4.5, N'Đặc biệt', N'Đài Loan', 1),
('SK3', 'Suzuki Address Fi', 30, N'4 thì, 1 xy-lanh, làm mát bằng không khí', '113 cm3', '755 mm', 30000000, NULL, NULL, N'Xe tay ga', N'1.86 lít/100km', 5.2, N'Đặc biệt', N'Nhật Bản', 1),
('SK4', 'Suzuki Raider R150', 33, N'DOHC, 4 van, côn tay 6 cấp số', '150 cm3', '765 mm', 50000000, NULL, NULL, N'Xe côn tay', N'2.4 lít/100km', 4, N'Đặc biệt', N'Nhật Bản', 1),
('HD9', 'Honda Super Cub C125', 21, N'PGM-FI, 4 kỳ, xy-lanh đơn, làm mát bằng không khí', '123,94 cm3', '780 mm', 85000000, NULL, NULL, N'Xe số', N'1.5 lít/100km', 3.7, N'Tiêu chuẩn', N'Nhật Bản', 1);


-- --------------------------------------------------------

--
-- Table structure for table  NhaCungCap 
--

CREATE TABLE  NhaCungCap  (
   maNhaCungCap  varchar(50) NOT NULL,
   tenNhaCungCap  nvarchar(50) DEFAULT NULL,
   Sdt  varchar(50) DEFAULT NULL,
   diaChi  nvarchar(150) DEFAULT NULL
);

--
-- Dumping data for table  NhaCungCap 
--

INSERT INTO  NhaCungCap  ( maNhaCungCap ,  tenNhaCungCap ,  Sdt ,  diaChi ) VALUES
('HONDA', N'Công ty TNHH Honda Motor', '02838361551', N'Tầng 18, Tòa nhà MB Sunny Tower, 259 Trần Hưng Đạo, Quận 1, Hồ Chí Minh'),
('SUZUKI', N'Công ty TNHH Suzuki', '02513838707', N'Đường số 2, Khu công nghiệp Long Bình, Biên Hòa, Đồng Nai'),
('YAMAHA', N'Công ty TNHH Yamaha Motor', '02873023456', N'Xã Trung Giã, Huyện Sóc Sơn, Thành Phố Hà Nội'),
('CNYAMAHA', N'Chi nhánh Yamaha', '02435824900', N'Lô 48-54, 59-68, Khu Công nghiệp Nội Bài, Huyện Sóc Sơn, Hà Nội'),
('XUANTRUNG', N'Cửa hàng xe máy Xuân Trung', '0788889393', N'33 Phạm Hùng, Q. Cẩm Lệ, TP. Đà Nẵng'),
('PIAGGIO', N'Công ty TNHH Piaggio', '02439352030', N'46 Hoàng Quốc Việt, phường Nghĩa Đô, quận Cầu Giấy, thành phố Hà Nội'),
('DATRACO', N'Cửa hàng Head đại lý Honda Datraco1', '02363752359', N'18-20 Hoàng Hoa Thám, Tân Chính, Thanh Khê, TP. Đà Nẵng'),
('HOAIMINH', N'Công ty TNHH Hoài Minh', '0663831961', N'16 Hùng Vương, TT. Hòa Thành, H. Hòa Thành, Tây Ninh');

-- --------------------------------------------------------

--
-- Table structure for table  PhieuNhap 
--

CREATE TABLE  PhieuNhap  (
   maPhieu  varchar(50) NOT NULL,
   thoiGianTao DATETIME2 DEFAULT GETDATE() NULL,
   nguoiTao  nvarchar(50) DEFAULT NULL,
   maNhaCungCap  varchar(50) DEFAULT NULL,
   tongTien  bigint NOT NULL
);

--
-- Dumping data for table  PhieuNhap 
--

INSERT INTO PhieuNhap (maPhieu, thoiGianTao, nguoiTao, maNhaCungCap, tongTien)
VALUES 
    ('PN1', '2023-12-01 13:59', 'admin', 'YAMAHA', 188000000),
    ('PN10', '2023-12-07 18:04', 'admin', 'XUANTRUNG', 266000000),
    ('PN11', '2023-12-07 18:48', 'admin', 'YAMAHA', 668000000),
    ('PN12', '2023-12-16 02:19', 'admin', 'CNYAMAHA', 69000000),
    ('PN13', '2023-12-16 02:19', 'admin', 'PIAGGIO', 40000000),
    ('PN14', '2023-12-08 12:28', 'admin', 'YAMAHA', 94500000),
    ('PN15', '2023-12-08 12:36', 'admin', 'YAMAHA', 105000000),
    ('PN16', '2023-12-08 16:30', 'admin', 'XUANTRUNG', 233000000),
    ('PN17', '2023-12-09 14:29', 'admin', 'YAMAHA', 65500000),
    ('PN18', '2023-12-09 17:08', 'admin', 'YAMAHA', 321500000),
    ('PN19', '2023-12-12 07:09', 'admin', 'PIAGGIO', 163500000),
    ('PN2', '2023-12-01 13:59', 'admin', 'YAMAHA', 78000000),
    ('PN20', '2023-12-13 19:46', 'admin', 'PIAGGIO', 471500000),
    ('PN21', '2023-12-14 11:54', 'admin', 'PIAGGIO', 3380000000),
    ('PN22', '2023-12-14 12:32', 'admin', 'YAMAHA', 246000000),
    ('PN23', '2023-12-14 14:28', 'admin', 'YAMAHA', 403000000),
    ('PN24', '2023-12-14 14:41', 'admin', 'YAMAHA', 1700000000),
    ('PN25', '2023-12-14 15:18', 'admin', 'HONDA', 87000000),
    ('PN26', '2023-12-14 20:01', 'admin', 'HONDA', 42000000),
    ('PN27', '2023-12-14 20:02', 'admin', 'HONDA', 1450000000),
    ('PN28', '2023-12-15 10:43', 'admin', 'HONDA', 64000000),
    ('PN29', '2023-12-16 02:19', 'admin', 'SUZUKI', 27500000),
    ('PN3', '2023-12-03 03:58', 'admin', 'YAMAHA', 153000000),
    ('PN30', '2023-12-15 23:13', 'admin', 'HONDA', 88000000),
    ('PN31', '2023-12-15 23:14', 'baohoang', 'HONDA', 125500000),
    ('PN32', '2023-12-16 02:19', 'admin', 'XUANTRUNG', 349000000),
    ('PN33', '2023-12-16 13:09', 'baohoang', 'HOAIMINH', 238500000),
    ('PN34', '2023-12-16 15:31', 'admin', 'XUANTRUNG', 597000000),
    ('PN35', '2023-12-16 15:36', 'admin', 'XUANTRUNG', 146500000),
    ('PN36', '2023-12-16 15:40', 'admin', 'HONDA', 760000000),
    ('PN37', '2023-12-17 01:02', 'admin', 'HONDA', 206500000),
    ('PN38', '2023-12-17 01:08', 'admin', 'HONDA', 2080000000),
    ('PN4', '2023-12-03 03:58', 'admin', 'DATRACO', 203500000),
    ('PN5', '2023-12-06 17:51', 'admin', 'YAMAHA', 82500000),
    ('PN6', '2023-12-06 18:50', 'admin', 'YAMAHA', 45000000),
    ('PN7', '2023-12-06 18:59', 'admin', 'PIAGGIO', 276000000),
    ('PN8', '2023-12-06 19:15', 'admin', 'YAMAHA', 105500000),
    ('PN9', '2023-12-06 19:20', 'admin', 'YAMAHA', 67000000);


-- --------------------------------------------------------

--
-- Table structure for table  PhieuXuat 
--

CREATE TABLE  PhieuXuat  (
   maPhieu  varchar(50) NOT NULL,
   thoiGianTao DATETIME2 DEFAULT GETDATE() NOT NULL,
   nguoiTao  nvarchar(50) NOT NULL,
   tongTien  bigint NOT NULL
);

--
-- Dumping data for table  PhieuXuat 
--

INSERT INTO PhieuXuat (maPhieu, thoiGianTao, nguoiTao, tongTien)
VALUES 
    ('PX1', '2023-12-01 14:10', 'admin', '661000000'),
    ('PX10', '2023-12-07 18:41', 'admin', '188500000'),
    ('PX12', '2023-12-07 19:06', 'admin', '124500000'),
    ('PX13', '2023-12-08 12:31', 'admin', '672000000'),
    ('PX14', '2023-12-08 16:30', 'admin', '183000000'),
    ('PX15', '2023-12-12 22:31', 'admin', '319500000'),
    ('PX16', '2023-12-14 15:04', 'admin', '426000000'),
    ('PX17', '2023-12-14 15:34', 'admin', '98000000'),
    ('PX18', '2023-12-15 20:32', 'admin', '339000000'),
    ('PX19', '2023-12-16 02:20', 'Admin', '216000000'),
    ('PX2', '2023-12-04 16:45', 'admin', '145000000'),
    ('PX20', '2023-12-16 13:26', 'Admin', '186000000'),
    ('PX21', '2023-12-16 13:36', 'Admin', '240500000'),
    ('PX22', '2023-12-16 16:39', 'Admin', '185000000'),
    ('PX23', '2023-12-16 17:18', 'Admin', '239500000'),
    ('PX24', '2023-12-16 17:25', 'Admin', '150000000'),
    ('PX25', '2023-12-16 18:51', 'Admin', '152500000'),
    ('PX26', '2023-12-17 00:19', 'Admin', '275000000'),
    ('PX3', '2023-12-04 16:45', 'admin', '131500000'),
    ('PX4', '2023-12-04 16:45', 'admin', '64500000'),
    ('PX5', '2023-12-06 19:10', 'admin', '277500000'),
    ('PX6', '2023-12-06 19:19', 'admin', '113000000'),
    ('PX7', '2023-12-06 19:25', 'admin', '271500000'),
    ('PX8', '2023-12-07 18:39', 'admin', '308500000'),
    ('PX9', '2023-12-07 18:40', 'admin', '133500000');

--
-- Table structure for table  ChiTietPhieuNhap 
--

CREATE TABLE ChiTietPhieuNhap (
   maPhieu varchar(50) NOT NULL,
   maXe  varchar(50) NOT NULL,
   soLuong  int DEFAULT NULL,
   donGia  bigint DEFAULT NULL
);

--
-- Dumping data for table  ChiTietPhieuNhap 
--

INSERT INTO ChiTietPhieuNhap (maPhieu, maXe, soLuong, donGia)
VALUES 
    ('PN1', 'HD1', 1, 150000000),
    ('PN1', 'YH5', 1, 38000000),
    ('PN10', 'PG1', 1, 57000000),
    ('PN10', 'YH2', 1, 49000000),
    ('PN10', 'YH6', 4, 40000000),
    ('PN11', 'PG4', 8, 77500000),
    ('PN11', 'SY2', 1, 20000000),
    ('PN11', 'YH3', 1, 28000000),
    ('PN12', 'HD8', 1, 47000000),
    ('PN12', 'SY1', 1, 22000000),
    ('PN13', 'HD6', 1, 18000000),
    ('PN13', 'SY1', 1, 22000000),
    ('PN14', 'SK1', 1, 29000000),
    ('PN14', 'SY4', 1, 27500000),
    ('PN14', 'YH5', 1, 38000000),
    ('PN15', 'HD4', 1, 87000000),
    ('PN15', 'HD6', 1, 18000000),
    ('PN16', 'HD5', 1, 145000000),
    ('PN16', 'PG3', 1, 60000000),
    ('PN16', 'YH3', 1, 28000000),
    ('PN17', 'SY4', 1, 27500000),
    ('PN17', 'YH5', 1, 38000000),
    ('PN18', 'HD5', 1, 145000000),
    ('PN18', 'HD6', 1, 18000000),
    ('PN18', 'PG3', 1, 60000000),
    ('PN18', 'PG4', 1, 77500000),
    ('PN18', 'YH1', 1, 21000000),
    ('PN19', 'PG3', 1, 60000000),
    ('PN19', 'SY1', 1, 22000000),
    ('PN19', 'SY4', 1, 27500000),
    ('PN19', 'YH4', 1, 54000000),
    ('PN2', 'SK1', 1, 29000000),
    ('PN2', 'SK2', 1, 49000000),
    ('PN20', 'HD5', 1, 145000000),
    ('PN20', 'PG4', 1, 77500000),
    ('PN20', 'SY2', 10, 20000000),
    ('PN20', 'YH2', 1, 49000000),
    ('PN21', 'HD8', 25, 47000000),
    ('PN21', 'YH2', 45, 49000000),
    ('PN22', 'HD1', 1, 150000000),
    ('PN22', 'HD6', 1, 18000000),
    ('PN22', 'PG1', 1, 57000000),
    ('PN22', 'YH1', 1, 21000000),
    ('PN23', 'HD5', 2, 145000000),
    ('PN23', 'HD7', 2, 18500000),
    ('PN23', 'YH5', 2, 38000000),
    ('PN24', 'HD9', 20, 85000000),
    ('PN25', 'HD4', 1, 87000000),
    ('PN26', 'YH1', 2, 21000000),
    ('PN27', 'HD5', 10, 145000000),
    ('PN28', 'SY1', 1, 22000000),
    ('PN28', 'YH1', 2, 21000000),
    ('PN29', 'SY4', 1, 27500000),
    ('PN3', 'PG1', 1, 57000000),
    ('PN3', 'SY2', 1, 20000000),
    ('PN3', 'SY4', 2, 27500000),
    ('PN3', 'YH1', 1, 21000000),
    ('PN30', 'SY1', 1, 22000000),
    ('PN30', 'SY3', 1, 17000000),
    ('PN30', 'YH2', 1, 49000000),
    ('PN31', 'HD4', 1, 87000000),
    ('PN31', 'HD7', 1, 18500000),
    ('PN31', 'SY2', 1, 20000000),
    ('PN32', 'HD5', 1, 145000000),
    ('PN32', 'HD9', 1, 85000000),
    ('PN32', 'YH4', 1, 54000000),
    ('PN32', 'YH6', 1, 40000000),
    ('PN32', 'YH7', 1, 25000000),
    ('PN33', 'HD4', 1, 87000000),
    ('PN33', 'PG1', 1, 57000000),
    ('PN33', 'PG4', 1, 77500000),
    ('PN33', 'SY3', 1, 17000000),
    ('PN34', 'HD6', 20, 18000000),
    ('PN34', 'HD8', 1, 47000000),
    ('PN34', 'SY2', 7, 20000000),
    ('PN34', 'YH7', 2, 25000000),
    ('PN35', 'HD8', 1, 47000000),
    ('PN35', 'SK4', 1, 50000000),
    ('PN35', 'SY1', 1, 22000000),
    ('PN35', 'SY4', 1, 27500000),
    ('PN36', 'YH5', 20, 38000000),
    ('PN37', 'HD8', 3, 47000000),
    ('PN37', 'SY4', 1, 27500000),
    ('PN37', 'YH5', 1, 38000000),
    ('PN38', 'HD6', 30, 18000000),
    ('PN38', 'PG2', 20, 77000000),
    ('PN4', 'HD5', 1, 145000000),
    ('PN4', 'HD7', 1, 18500000),
    ('PN4', 'YH6', 1, 40000000),
    ('PN5', 'SY4', 3, 27500000),
    ('PN6', 'SY3', 1, 17000000),
    ('PN6', 'YH3', 1, 28000000),
    ('PN7', 'HD8', 5, 47000000),
    ('PN7', 'SY2', 1, 20000000),
    ('PN7', 'YH1', 1, 21000000),
    ('PN8', 'SY4', 1, 27500000),
    ('PN8', 'YH5', 1, 38000000),
    ('PN8', 'YH6', 1, 40000000),
    ('PN9', 'HD6', 1, 18000000),
    ('PN9', 'SK2', 1, 49000000);


-- --------------------------------------------------------

--
-- Table structure for table  ChiTietPhieuXuat 
--

CREATE TABLE  ChiTietPhieuXuat  (
   maPhieu  varchar(50) NOT NULL,
   maXe  varchar(50) NOT NULL,
   soLuong  int DEFAULT NULL,
   donGia  bigint DEFAULT NULL
);

--
-- Dumping data for table  ChiTietPhieuXuat 
--

INSERT INTO ChiTietPhieuXuat (maPhieu, maXe, soLuong, donGia)
VALUES 
    ('PX1', 'HD1', 1, 150000000),
    ('PX1', 'SY3', 1, 17000000),
    ('PX1', 'YH5', 13, 38000000),
    ('PX10', 'HD8', 1, 47000000),
    ('PX10', 'PG3', 1, 60000000),
    ('PX10', 'SK1', 1, 29000000),
    ('PX10', 'SY4', 1, 27500000),
    ('PX10', 'YH7', 1, 25000000),
    ('PX12', 'HD6', 1, 18000000),
    ('PX12', 'PG4', 1, 77500000),
    ('PX12', 'SK1', 1, 29000000),
    ('PX13', 'HD5', 2, 145000000),
    ('PX13', 'HD6', 1, 18000000),
    ('PX13', 'PG4', 4, 77500000),
    ('PX13', 'YH4', 1, 54000000),
    ('PX14', 'HD8', 1, 47000000),
    ('PX14', 'PG3', 1, 60000000),
    ('PX14', 'SK1', 1, 29000000),
    ('PX14', 'SY1', 1, 22000000),
    ('PX14', 'YH7', 1, 25000000),
    ('PX15', 'HD5', 1, 145000000),
    ('PX15', 'PG4', 1, 77500000),
    ('PX15', 'SK1', 1, 29000000),
    ('PX15', 'YH3', 1, 28000000),
    ('PX15', 'YH6', 1, 40000000),
    ('PX16', 'HD4', 4, 87000000),
    ('PX16', 'SK1', 1, 29000000),
    ('PX16', 'SK2', 1, 49000000),
    ('PX17', 'SK2', 2, 49000000),
    ('PX18', 'HD8', 2, 47000000),
    ('PX18', 'YH2', 5, 49000000),
    ('PX19', 'PG2', 1, 77000000),
    ('PX19', 'PG3', 1, 60000000),
    ('PX19', 'SY5', 1, 25000000),
    ('PX19', 'YH4', 1, 54000000),
    ('PX2', 'HD6', 2, 18000000),
    ('PX2', 'PG3', 1, 60000000),
    ('PX2', 'SK2', 1, 49000000),
    ('PX20', 'HD6', 2, 18000000),
    ('PX20', 'PG3', 1, 60000000),
    ('PX20', 'SY5', 2, 25000000),
    ('PX20', 'YH6', 1, 40000000),
    ('PX21', 'HD7', 1, 18500000),
    ('PX21', 'PG2', 1, 77000000),
    ('PX21', 'PG3', 2, 60000000),
    ('PX21', 'YH7', 1, 25000000),
    ('PX22', 'HD5', 1, 145000000),
    ('PX22', 'YH6', 1, 40000000),
    ('PX23', 'PG2', 1, 77000000),
    ('PX23', 'PG3', 1, 60000000),
    ('PX23', 'PG4', 1, 77500000),
    ('PX23', 'SY5', 1, 25000000),
    ('PX24', 'HD8', 1, 47000000),
    ('PX24', 'SY5', 1, 25000000),
    ('PX24', 'YH5', 1, 38000000),
    ('PX24', 'YH6', 1, 40000000),
    ('PX25', 'HD7', 2, 18500000),
    ('PX25', 'PG4', 1, 77500000),
    ('PX25', 'YH5', 1, 38000000),
    ('PX26', 'HD5', 1, 145000000),
    ('PX26', 'HD6', 1, 18000000),
    ('PX26', 'PG1', 1, 57000000),
    ('PX26', 'SY3', 1, 17000000),
    ('PX26', 'YH5', 1, 38000000),
    ('PX3', 'HD8', 1, 47000000),
    ('PX3', 'PG1', 1, 57000000),
    ('PX3', 'SY4', 1, 27500000),
    ('PX4', 'HD6', 1, 18000000),
    ('PX4', 'HD7', 1, 18500000),
    ('PX4', 'YH3', 1, 28000000),
    ('PX5', 'HD5', 1, 145000000),
    ('PX5', 'HD7', 1, 18500000),
    ('PX5', 'SY5', 1, 25000000),
    ('PX5', 'YH2', 1, 49000000),
    ('PX5', 'YH6', 1, 40000000),
    ('PX6', 'HD2', 1, 17500000),
    ('PX6', 'HD3', 1, 46500000),
    ('PX6', 'YH1', 1, 21000000),
    ('PX6', 'YH3', 1, 28000000),
    ('PX7', 'HD5', 1, 145000000),
    ('PX7', 'PG4', 1, 77500000),
    ('PX7', 'SK2', 1, 49000000),
    ('PX8', 'HD5', 1, 145000000),
    ('PX8', 'HD8', 1, 47000000),
    ('PX8', 'PG4', 1, 22000000),
    ('PX8', 'SY3', 1, 17000000),
    ('PX9', 'PG1', 1, 57000000),
    ('PX9', 'SK2', 1, 49000000),
    ('PX9', 'SY4', 1, 27500000);


-- --------------------------------------------------------



--
-- Indexes for dumped tables
--

--
-- Indexes for table  Account 
--
ALTER TABLE  Account 
  ADD PRIMARY KEY ( userName );

--
-- Indexes for table  ChiTietPhieuNhap 
--
ALTER TABLE  ChiTietPhieuNhap 
  ADD PRIMARY KEY ( maPhieu , maXe );

CREATE INDEX IX_ChiTietPhieuNhap_maXe ON ChiTietPhieuNhap (maXe);
--
-- Indexes for table  ChiTietPhieuXuat 
--
ALTER TABLE  ChiTietPhieuXuat 
  ADD PRIMARY KEY ( maPhieu , maXe );
  
CREATE INDEX IX_ChiTietPhieuXuat_XeMay ON ChiTietPhieuXuat (maXe);

--
-- Indexes for table  XeMay 
--
ALTER TABLE  XeMay 
  ADD PRIMARY KEY ( maXe );

--
-- Indexes for table  NhaCungCap 
--
ALTER TABLE  NhaCungCap 
  ADD PRIMARY KEY ( maNhaCungCap );

--
-- Indexes for table  PhieuNhap 
--
ALTER TABLE  PhieuNhap 
  ADD PRIMARY KEY ( maPhieu );
  
CREATE INDEX  IX_PhieuNhap_NhaCungCap ON PhieuNhap ( maNhaCungCap );
CREATE INDEX  IX_PhieuNhap_Account ON PhieuNhap ( nguoiTao );

--
-- Indexes for table  PhieuXuat 
--
ALTER TABLE  PhieuXuat 
  ADD PRIMARY KEY ( maPhieu );
  
CREATE INDEX  IX_PhieuXuat_Account ON PhieuXuat ( nguoiTao );

--
-- Constraints for dumped tables
--

--
-- Constraints for table  ChiTietPhieuNhap 
--
ALTER TABLE  ChiTietPhieuNhap 
  ADD CONSTRAINT  FK_ChiTietPhieuNhap_XeMay  FOREIGN KEY ( maXe ) REFERENCES  XeMay  ( maXe ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE  ChiTietPhieuNhap
  ADD CONSTRAINT  FK_ChiTietPhieuNhap_PhieuNhap  FOREIGN KEY ( maPhieu ) REFERENCES  PhieuNhap  ( maPhieu ) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table  ChiTietPhieuXuat 
--
ALTER TABLE  ChiTietPhieuXuat 
  ADD CONSTRAINT  FK_ChiTietPhieuXuat_XeMay  FOREIGN KEY ( maXe ) REFERENCES  XeMay  ( maXe ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE  ChiTietPhieuXuat 
  ADD CONSTRAINT  FK_ChiTietPhieuXuat_PhieuXuat  FOREIGN KEY ( maPhieu ) REFERENCES  PhieuXuat  ( maPhieu ) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table  PhieuNhap 
--
ALTER TABLE  PhieuNhap 
  ADD CONSTRAINT  FK_PhieuNhap_Account  FOREIGN KEY ( nguoiTao ) REFERENCES  Account  ( userName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE  PhieuNhap 
  ADD CONSTRAINT  FK_PhieuNhap_NhaCungCap  FOREIGN KEY ( maNhaCungCap ) REFERENCES  NhaCungCap  ( maNhaCungCap ) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table  PhieuXuat 
--
ALTER TABLE  PhieuXuat 
  ADD CONSTRAINT  FK_PhieuXuat_Account  FOREIGN KEY ( nguoiTao ) REFERENCES  Account  ( userName ) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


