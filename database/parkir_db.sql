-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2026 pada 09.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkir_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_area_parkir`
--

CREATE TABLE `tb_area_parkir` (
  `id_area` int(11) NOT NULL,
  `nama_area` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `terisi` int(11) NOT NULL DEFAULT 0,
  `jenis_khusus` varchar(20) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `status_aktif` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_area_parkir`
--

INSERT INTO `tb_area_parkir` (`id_area`, `nama_area`, `kapasitas`, `terisi`, `jenis_khusus`, `status`, `status_aktif`) VALUES
(6, 'Area A', 20, 0, 'roda 2', 'aktif', 1),
(7, 'Area B', 10, 0, 'roda 4', 'aktif', 1),
(8, 'Area C', 5, 0, 'roda >4', 'aktif', 1),
(20, 'Area D', 2, 0, 'roda 2', 'aktif', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kendaraan`
--

CREATE TABLE `tb_kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `plat_nomor` varchar(15) NOT NULL,
  `jenis_kendaraan` enum('roda 2','roda 4','roda >4') NOT NULL,
  `warna` varchar(30) DEFAULT NULL,
  `pemilik` varchar(50) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kendaraan`
--

INSERT INTO `tb_kendaraan` (`id_kendaraan`, `plat_nomor`, `jenis_kendaraan`, `warna`, `pemilik`, `id_user`) VALUES
(15, 'D 4 CA', 'roda 2', 'Pink', 'Aca', 2),
(16, 'D 54 LSA', 'roda 2', 'Abu', 'Salsa', 2),
(17, 'D 24 ZKA', 'roda 2', 'Coklat', 'Azka', 2),
(18, 'D 4 CA', 'roda >4', 'Pink', 'Aca', 2),
(19, 'D 54 LSA', 'roda >4', 'Abu', 'Salsa', 2),
(20, 'D 24 HRA', 'roda >4', 'Pink', 'Zahra', 17),
(21, 'D 24 ZKA', 'roda 2', 'Pink', 'Ojn', 2),
(22, 'D 4 CA', 'roda 4', 'Abu', 'Aca', 2),
(23, 'D 2823 ABG', 'roda >4', 'Pink', 'Aca', 2),
(24, 'D 54 LSA', 'roda >4', 'Pink', 'Salsa', 2),
(25, '3456', 'roda 2', 'Abu', 'Salsa', 17),
(26, 'D 2622 A', 'roda 2', 'Abu', 'Salsa', 17),
(27, 'D 4 CA', 'roda 2', 'Pink', 'Aca', 2),
(28, 'D 24 HRA', 'roda 2', 'Pink', 'Salsa', 2),
(29, 'D 6873 YX', 'roda 2', 'Pink', 'Ojn', 2),
(30, 'D 6873 YX', 'roda 4', 'Pink', 'Salsa', 2),
(31, 'D 24 HRA', 'roda 2', 'Pink', 'Salsa', 2),
(32, 'D 4 CA', 'roda 2', 'Pink', 'Aca', 2),
(33, 'D 2622 A', 'roda 2', 'Pink', 'Azka', 2),
(34, 'D 2622 A', 'roda 2', 'Abu', 'Salsa', 2),
(35, 'D 2823 ABG', 'roda 4', 'Pink', 'Salsa', 2),
(36, 'D 4 CA', 'roda 2', 'Pink', 'Aca', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log_aktivitas`
--

CREATE TABLE `tb_log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `waktu_aktivitas` datetime DEFAULT current_timestamp(),
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_log_aktivitas`
--

INSERT INTO `tb_log_aktivitas` (`id_log`, `id_user`, `aktivitas`, `waktu_aktivitas`, `waktu`) VALUES
(1, 2, 'Kendaraan keluar: D 54 LSA dari Slot C2', '2026-03-28 22:14:30', '2026-03-28 15:14:30'),
(2, 9, 'Update area + sinkron slot', '2026-03-28 23:02:41', '2026-03-28 16:02:41'),
(3, 9, 'Update area + sinkron slot', '2026-03-28 23:02:55', '2026-03-28 16:02:55'),
(4, 9, 'Update area + sinkron slot', '2026-03-28 23:19:03', '2026-03-28 16:19:03'),
(5, 9, 'Update area + sinkron slot', '2026-03-28 23:21:53', '2026-03-28 16:21:53'),
(6, 9, 'Update area + sinkron slot', '2026-03-28 23:25:39', '2026-03-28 16:25:39'),
(7, 9, 'Update area + sinkron slot', '2026-03-28 23:28:46', '2026-03-28 16:28:46'),
(8, 9, 'Logout dari sistem', '2026-03-28 23:30:18', '2026-03-28 16:30:18'),
(9, 9, 'Login ke sistem', '2026-03-28 23:30:25', '2026-03-28 16:30:25'),
(10, 9, 'Update area + sinkron slot', '2026-03-28 23:32:42', '2026-03-28 16:32:42'),
(11, 9, 'Update area + sinkron slot', '2026-03-28 23:34:22', '2026-03-28 16:34:22'),
(12, 9, 'Logout dari sistem', '2026-03-28 23:34:47', '2026-03-28 16:34:47'),
(13, 2, 'Login ke sistem', '2026-03-28 23:34:55', '2026-03-28 16:34:55'),
(14, 2, 'Masuk: D 4 CA → Area D (D2)', '2026-03-28 23:35:08', '2026-03-28 16:35:08'),
(15, 2, 'Logout dari sistem', '2026-03-28 23:37:15', '2026-03-28 16:37:15'),
(16, 9, 'Login ke sistem', '2026-03-28 23:37:23', '2026-03-28 16:37:23'),
(17, 9, 'Logout dari sistem', '2026-03-28 23:37:33', '2026-03-28 16:37:33'),
(18, 2, 'Login ke sistem', '2026-03-28 23:37:41', '2026-03-28 16:37:41'),
(19, 2, 'Masuk: D 2622 A → Area A (A1)', '2026-03-28 23:38:05', '2026-03-28 16:38:05'),
(20, 2, 'Kendaraan keluar: D 2622 A dari Slot A3', '2026-03-28 23:41:32', '2026-03-28 16:41:32'),
(21, 2, 'Masuk: D 2622 A → Area A (A3)', '2026-03-28 23:44:11', '2026-03-28 16:44:11'),
(22, 2, 'Kendaraan masuk: D 2823 ABG → Area B (B2)', '2026-03-29 10:24:50', '2026-03-29 03:24:50'),
(23, 2, 'Kendaraan keluar: D 4 CA dari Slot A2', '2026-03-29 10:25:05', '2026-03-29 03:25:05'),
(24, 2, 'Kendaraan keluar: D 6873 YX dari Slot B1', '2026-03-29 10:25:12', '2026-03-29 03:25:12'),
(25, 2, 'Kendaraan keluar: D 24 HRA dari Slot D1', '2026-03-29 10:25:18', '2026-03-29 03:25:18'),
(26, 2, 'Kendaraan keluar: D 4 CA dari Slot D2', '2026-03-29 10:25:24', '2026-03-29 03:25:24'),
(27, 2, 'Kendaraan keluar: D 2622 A dari Slot A1', '2026-03-29 10:25:32', '2026-03-29 03:25:32'),
(28, 2, 'Kendaraan keluar: D 2622 A dari Slot A3', '2026-03-29 10:25:41', '2026-03-29 03:25:41'),
(29, 2, 'Kendaraan keluar: D 2823 ABG dari Slot B2', '2026-03-29 10:25:48', '2026-03-29 03:25:48'),
(30, 2, 'Logout dari sistem', '2026-03-29 10:25:58', '2026-03-29 03:25:58'),
(31, 9, 'Login ke sistem', '2026-03-29 10:26:10', '2026-03-29 03:26:10'),
(32, 9, 'Update area + sinkron slot', '2026-03-29 10:31:18', '2026-03-29 03:31:18'),
(33, 9, 'Update area + sinkron slot', '2026-03-29 10:35:30', '2026-03-29 03:35:30'),
(34, 9, 'Update area + sinkron slot', '2026-03-29 10:36:15', '2026-03-29 03:36:15'),
(35, 9, 'Logout dari sistem', '2026-03-29 10:38:39', '2026-03-29 03:38:39'),
(36, 9, 'Login ke sistem', '2026-03-29 10:38:47', '2026-03-29 03:38:47'),
(37, 9, 'Logout dari sistem', '2026-03-29 10:38:53', '2026-03-29 03:38:53'),
(38, 17, 'Login ke sistem', '2026-03-29 10:39:08', '2026-03-29 03:39:08'),
(39, 17, 'Kendaraan masuk: D 4 CA → Area A (A1)', '2026-03-29 10:39:19', '2026-03-29 03:39:19'),
(40, 17, 'Kendaraan keluar: D 4 CA dari Slot A1', '2026-03-29 10:39:32', '2026-03-29 03:39:32'),
(41, 17, 'Logout dari sistem', '2026-03-29 10:39:46', '2026-03-29 03:39:46'),
(42, 11, 'Login ke sistem', '2026-03-29 10:39:54', '2026-03-29 03:39:54'),
(43, 11, 'Logout dari sistem', '2026-03-29 10:44:07', '2026-03-29 03:44:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slot_parkir`
--

CREATE TABLE `tb_slot_parkir` (
  `id_slot` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `kode_slot` varchar(10) NOT NULL,
  `status` enum('kosong','terisi') DEFAULT 'kosong',
  `status_aktif` tinyint(1) DEFAULT 1,
  `aktif` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_slot_parkir`
--

INSERT INTO `tb_slot_parkir` (`id_slot`, `id_area`, `kode_slot`, `status`, `status_aktif`, `aktif`) VALUES
(1, 6, 'A1', 'kosong', 0, 1),
(2, 6, 'A2', 'kosong', 1, 1),
(3, 6, 'A3', 'kosong', 1, 1),
(4, 6, 'A4', 'kosong', 1, 1),
(5, 6, 'A5', 'kosong', 1, 1),
(6, 6, 'A6', 'kosong', 1, 1),
(7, 6, 'A7', 'kosong', 1, 1),
(8, 6, 'A8', 'kosong', 1, 1),
(9, 6, 'A9', 'kosong', 1, 1),
(10, 6, 'A10', 'kosong', 1, 1),
(11, 6, 'A11', 'kosong', 1, 1),
(12, 6, 'A12', 'kosong', 1, 1),
(13, 6, 'A13', 'kosong', 1, 1),
(14, 6, 'A14', 'kosong', 1, 1),
(15, 6, 'A15', 'kosong', 1, 1),
(16, 6, 'A16', 'kosong', 1, 1),
(17, 6, 'A17', 'kosong', 1, 1),
(18, 6, 'A18', 'kosong', 1, 1),
(19, 6, 'A19', 'kosong', 1, 1),
(21, 7, 'B1', 'kosong', 1, 1),
(22, 7, 'B2', 'kosong', 1, 1),
(23, 7, 'B3', 'kosong', 1, 1),
(24, 7, 'B4', 'kosong', 1, 1),
(25, 7, 'B5', 'kosong', 1, 1),
(26, 7, 'B6', 'kosong', 1, 1),
(27, 7, 'B7', 'kosong', 1, 1),
(28, 7, 'B8', 'kosong', 1, 1),
(29, 7, 'B9', 'kosong', 1, 1),
(30, 7, 'B10', 'kosong', 1, 1),
(31, 8, 'C1', 'kosong', 1, 1),
(32, 8, 'C2', 'kosong', 1, 1),
(33, 8, 'C3', 'kosong', 1, 1),
(34, 8, 'C4', 'kosong', 1, 1),
(35, 8, 'C5', 'kosong', 1, 1),
(65, 20, 'D1', 'kosong', 1, 1),
(66, 20, 'D2', 'kosong', 1, 1),
(69, 6, 'A20', 'kosong', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tarif`
--

CREATE TABLE `tb_tarif` (
  `id_tarif` int(11) NOT NULL,
  `jenis_kendaraan` enum('roda 2','roda 4','roda >4') NOT NULL,
  `tarif_per_jam` decimal(10,0) NOT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `status_aktif` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tarif`
--

INSERT INTO `tb_tarif` (`id_tarif`, `jenis_kendaraan`, `tarif_per_jam`, `status`, `status_aktif`) VALUES
(4, 'roda 2', 2000, 'aktif', 0),
(5, 'roda 4', 5000, 'aktif', 1),
(6, 'roda >4', 8000, 'aktif', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_parkir` int(11) NOT NULL,
  `id_kendaraan` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_slot` int(11) DEFAULT NULL,
  `id_tarif` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `waktu_masuk` datetime DEFAULT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `durasi_jam` int(11) DEFAULT NULL,
  `biaya_total` int(11) DEFAULT NULL,
  `status` enum('masuk','keluar') DEFAULT 'masuk'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_parkir`, `id_kendaraan`, `id_area`, `id_slot`, `id_tarif`, `id_user`, `waktu_masuk`, `waktu_keluar`, `durasi_jam`, `biaya_total`, `status`) VALUES
(12, 15, 6, 1, 4, 2, '2026-03-26 00:16:08', '2026-03-26 00:16:26', 1, 2000, 'keluar'),
(13, 16, 6, 2, 4, 2, '2026-03-26 00:16:20', '2026-03-26 10:22:13', 5, 15000, 'keluar'),
(14, 17, 6, 1, 4, 2, '2026-03-26 00:16:46', '2026-03-26 10:21:43', 5, 15000, 'keluar'),
(15, 18, 8, 31, 6, 2, '2026-03-26 00:18:44', '2026-03-26 23:00:08', 17, 136000, 'keluar'),
(16, 19, 8, 32, 6, 2, '2026-03-26 00:18:58', '2026-03-26 23:02:05', 17, 136000, 'keluar'),
(17, 20, 8, 33, 6, 17, '2026-03-26 10:11:16', '2026-03-26 23:20:43', 8, 64000, 'keluar'),
(18, 21, 6, 1, 4, 2, '2026-03-26 23:01:53', '2026-03-27 15:37:03', 11, 22000, 'keluar'),
(19, 22, 7, 21, 5, 2, '2026-03-26 23:20:29', '2026-03-26 23:39:33', 1, 5000, 'keluar'),
(20, 23, 8, 31, 6, 2, '2026-03-26 23:21:02', '2026-03-27 16:59:04', 12, 96000, 'keluar'),
(21, 24, 8, 32, 6, 2, '2026-03-26 23:21:15', '2026-03-28 22:14:30', 41, 328000, 'keluar'),
(22, 25, 6, 2, 4, 17, '2026-03-26 23:25:37', '2026-03-26 23:39:41', 1, 2000, 'keluar'),
(23, 26, 6, 3, 4, 17, '2026-03-26 23:37:37', '2026-03-28 23:41:32', 43, 129000, 'keluar'),
(24, 27, 6, 2, 4, 2, '2026-03-27 12:07:53', '2026-03-29 10:25:05', 41, 123000, 'keluar'),
(27, 30, 7, 21, 5, 2, '2026-03-27 17:13:28', '2026-03-29 10:25:12', 36, 180000, 'keluar'),
(28, 31, 20, 65, 4, 2, '2026-03-27 17:30:23', '2026-03-29 10:25:18', 35, 105000, 'keluar'),
(29, 32, 20, 66, 4, 2, '2026-03-28 23:35:08', '2026-03-29 10:25:24', 5, 15000, 'keluar'),
(30, 33, 6, 1, 4, 2, '2026-03-28 23:38:05', '2026-03-29 10:25:32', 5, 15000, 'keluar'),
(31, 34, 6, 3, 4, 2, '2026-03-28 23:44:11', '2026-03-29 10:25:41', 5, 15000, 'keluar'),
(32, 35, 7, 22, 5, 2, '2026-03-29 10:24:50', '2026-03-29 10:25:48', 1, 5000, 'keluar'),
(33, 36, 6, 1, 4, 17, '2026-03-29 10:39:19', '2026-03-29 10:39:32', 1, 2000, 'keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','petugas','owner') NOT NULL,
  `status_aktif` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_lengkap`, `username`, `password`, `role`, `status_aktif`) VALUES
(2, 'Petugas Parkir', 'petugas', '$2y$10$GGuAFPy92KtRRl2d.ALJWu.PPm2un4BIBmuxXOryq/tM656Xwweda', 'petugas', 0),
(9, 'Administrator', 'admin', '$2y$10$zBcmy3jLq0yjCY8dAPENWewuo1H5gEZ1IZLh/P7OUMJXArNMfVyte', 'admin', 1),
(11, 'Petugas Owner', 'owner', '$2y$10$PJMjgbUWQLA6sWygOflow.Tj3yj6p.2Fz/SOm6qgwiDLF71TIz4i6', 'owner', 1),
(16, 'Administrator', 'admin2', '$2y$10$2McvYl6PHRgHjBDjuGWHsOzm85JEqvzl8A3r3pbcv5q4zeMJg7EMO', 'admin', 1),
(17, 'Petugas Parkir', 'petugas2', '$2y$10$QtKUZs0MI.9nL2ulScFqN.c6unMrh2RuqucnBka9RuJHXIJhjjTKi', 'petugas', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_area_parkir`
--
ALTER TABLE `tb_area_parkir`
  ADD PRIMARY KEY (`id_area`),
  ADD UNIQUE KEY `nama_area` (`nama_area`);

--
-- Indeks untuk tabel `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_log_aktivitas`
--
ALTER TABLE `tb_log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_slot_parkir`
--
ALTER TABLE `tb_slot_parkir`
  ADD PRIMARY KEY (`id_slot`),
  ADD UNIQUE KEY `kode_slot` (`kode_slot`),
  ADD KEY `id_area` (`id_area`);

--
-- Indeks untuk tabel `tb_tarif`
--
ALTER TABLE `tb_tarif`
  ADD PRIMARY KEY (`id_tarif`),
  ADD UNIQUE KEY `jenis_kendaraan` (`jenis_kendaraan`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_parkir`),
  ADD KEY `id_kendaraan` (`id_kendaraan`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_slot` (`id_slot`),
  ADD KEY `id_tarif` (`id_tarif`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `username_3` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_area_parkir`
--
ALTER TABLE `tb_area_parkir`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_log_aktivitas`
--
ALTER TABLE `tb_log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tb_slot_parkir`
--
ALTER TABLE `tb_slot_parkir`
  MODIFY `id_slot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `tb_tarif`
--
ALTER TABLE `tb_tarif`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_parkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  ADD CONSTRAINT `tb_kendaraan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tb_log_aktivitas`
--
ALTER TABLE `tb_log_aktivitas`
  ADD CONSTRAINT `tb_log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_slot_parkir`
--
ALTER TABLE `tb_slot_parkir`
  ADD CONSTRAINT `tb_slot_parkir_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `tb_area_parkir` (`id_area`);

--
-- Ketidakleluasaan untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `tb_kendaraan` (`id_kendaraan`),
  ADD CONSTRAINT `tb_transaksi_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `tb_area_parkir` (`id_area`),
  ADD CONSTRAINT `tb_transaksi_ibfk_3` FOREIGN KEY (`id_slot`) REFERENCES `tb_slot_parkir` (`id_slot`),
  ADD CONSTRAINT `tb_transaksi_ibfk_4` FOREIGN KEY (`id_tarif`) REFERENCES `tb_tarif` (`id_tarif`),
  ADD CONSTRAINT `tb_transaksi_ibfk_5` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
