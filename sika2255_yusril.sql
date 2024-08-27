-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Agu 2024 pada 02.20
-- Versi server: 10.5.22-MariaDB-cll-lve
-- Versi PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sika2255_yusril`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_tagihan`
--

CREATE TABLE `daftar_tagihan` (
  `id` int(11) NOT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `resi` text DEFAULT NULL,
  `santri_id` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_tagihan`
--

INSERT INTO `daftar_tagihan` (`id`, `bulan`, `jumlah`, `status`, `resi`, `santri_id`, `tanggal`) VALUES
(9, 'Juli', 100000, 'Lunas', '5f58b219ab|https://app.sandbox.midtrans.com/snap/v4/redirection/2158c596-6f9e-4122-8e57-3a3211e451a3', 2, '2024-07-25'),
(10, 'Juli', 100000, 'Lunas', '981ca3bc9c|https://app.sandbox.midtrans.com/snap/v4/redirection/cf87f6fa-4b04-4efa-873a-f10517e5bba0', 2, '2024-07-26'),
(11, 'Juli', 100000, 'Lunas', 'ABCD1234', 3, '2024-07-26'),
(12, 'Juli', 100000, 'Lunas', '559c61c8dc|https://app.sandbox.midtrans.com/snap/v4/redirection/ee457ab2-e72d-45c5-85f2-f6dd02bd1fd8', 7, '2024-07-26'),
(13, 'Juli', 100000, 'Lunas', 'ABCD1234', 4, '2024-07-26'),
(14, 'Juli', 100000, 'Lunas', 'ABCD1234', 2, '2024-07-26'),
(15, 'Juli', 100000, 'Lunas', 'order-id-b29d15b326|https://app.midtrans.com/snap/v4/redirection/3a388532-1c6c-450b-955c-a2aa0c56b0bd', 2, '2024-07-26'),
(16, 'Juli', 100000, 'Lunas', 'ABCD1234', 8, '2024-07-26'),
(17, 'Juli', 100000, 'Lunas', '21f1371d64|https://app.sandbox.midtrans.com/snap/v4/redirection/cbc21b2d-9083-45b9-8910-618579153d21', 6, '2024-07-26'),
(18, 'Juli', 100000, 'Lunas', 'ABCD1234', 3, '2024-07-30'),
(19, 'Juli', 100000, 'Lunas', '3edfae9529|https://app.sandbox.midtrans.com/snap/v4/redirection/ea3d47fa-07a0-4057-8ff3-cc4a5f4b0e26', 8, '2024-07-31'),
(20, 'Juli', 100000, 'Lunas', 'ca31c7fd7f|https://app.sandbox.midtrans.com/snap/v4/redirection/d9c6e2ae-248b-4ec6-be07-d85074bf9572', 9, '2024-07-31'),
(21, 'Juli', 100000, 'belum lunas', 'ABCD1234', 9, '2024-07-31'),
(22, 'Agustus', 100000, 'Lunas', '96760da2f9|https://app.sandbox.midtrans.com/snap/v4/redirection/73073099-17e4-47a8-ba2e-0fba50953a20', 2, '2024-08-07'),
(23, 'Agustus', 300000, 'Lunas', 'order-id-39fa567955|https://app.midtrans.com/snap/v4/redirection/ae4a241d-96f6-4e4f-be67-3ae85cdb57e9', 2, '2024-08-07'),
(24, 'Agustus', 300000, 'belum lunas', 'order-id-e4fa773af8|https://app.midtrans.com/snap/v4/redirection/89467b14-6d94-4e34-87a0-8bbd809b788b', 2, '2024-08-20'),
(25, 'Agustus', 300000, 'belum lunas', 'ABCD1234', 10, '2024-08-20'),
(26, 'Agustus', 300000, 'Lunas', 'order-id-60437943e3|https://app.midtrans.com/snap/v4/redirection/e3a4890d-a420-45b1-b97f-356591785f57', 8, '2024-08-20'),
(27, 'Agustus', 300000, 'Lunas', 'order-id-44e22d1a7d|https://app.midtrans.com/snap/v4/redirection/995d73f0-51da-4cad-b785-b2972d65c4e1', 11, '2024-08-21'),
(28, 'Agustus', 300000, 'belum lunas', 'order-id-59c9ea4f21|https://app.midtrans.com/snap/v4/redirection/fa5b926f-180e-47ba-8979-1e776b759f7e', 5, '2024-08-26'),
(29, 'Agustus', 300000, 'Lunas', 'ABCD1234', 12, '2024-08-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_pengambilan`
--

CREATE TABLE `history_pengambilan` (
  `id` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_1` time DEFAULT NULL,
  `jam_2` time DEFAULT NULL,
  `santri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `history_pengambilan`
--

INSERT INTO `history_pengambilan` (`id`, `hari`, `tanggal`, `jam_1`, `jam_2`, `santri_id`) VALUES
(1, 'Rabu', '2024-07-24', '20:09:40', '20:10:09', 1),
(2, 'Selasa', '2024-07-30', '17:38:10', '17:38:38', 3),
(3, 'Rabu', '2024-07-31', '06:32:03', '06:32:14', 8),
(4, 'Rabu', '2024-07-31', '10:30:13', NULL, 9),
(5, 'Selasa', '2024-08-06', '12:50:51', '12:51:00', 0),
(6, 'Selasa', '2024-08-06', '12:52:07', '14:26:24', 2),
(7, 'Selasa', '2024-08-06', '12:53:12', '12:53:15', 3),
(8, 'Selasa', '2024-08-06', '14:08:58', NULL, 2323),
(9, 'Selasa', '2024-08-06', '14:09:13', '14:10:19', 1),
(10, 'Selasa', '2024-08-06', '14:11:06', NULL, 6666),
(11, 'Selasa', '2024-08-06', '14:11:31', '14:13:26', 9),
(12, 'Selasa', '2024-08-20', '15:15:55', NULL, 2),
(13, 'Selasa', '2024-08-20', '15:16:37', '15:16:47', 10),
(14, 'Rabu', '2024-08-21', '17:55:42', '17:55:52', 5),
(15, 'Rabu', '2024-08-21', '18:26:06', '18:27:21', 11),
(16, 'Senin', '2024-08-26', '12:48:50', '12:49:41', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi_pembayaran`
--

CREATE TABLE `notifikasi_pembayaran` (
  `id` int(11) NOT NULL,
  `jenis_kupon` varchar(50) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `santri_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notifikasi_pembayaran`
--

INSERT INTO `notifikasi_pembayaran` (`id`, `jenis_kupon`, `tanggal_pembayaran`, `santri_id`) VALUES
(1, 'makan', '2024-07-20', 1),
(2, 'makan', '2024-07-20', 1),
(3, 'makan', '2024-07-20', 1),
(4, 'makan', '2024-07-20', 1),
(5, 'makan', '2024-07-20', 1),
(6, 'makan', '2024-07-20', 1),
(7, 'makan', '2024-07-20', 1),
(8, 'makan', '2024-07-20', 1),
(9, 'makan', '2024-07-24', 1),
(10, 'makan', '2024-07-25', 3),
(11, 'makan', '2024-07-25', 7),
(12, 'makan', '2024-07-25', 2),
(13, 'makan', '2024-07-26', 2),
(14, 'makan', '2024-07-26', 2),
(15, 'makan', '2024-07-26', 3),
(16, 'makan', '2024-07-26', 7),
(17, 'makan', '2024-07-26', 4),
(18, 'makan', '2024-07-26', 2),
(19, 'makan', '2024-07-26', 2),
(20, 'makan', '2024-07-26', 2),
(21, 'makan', '2024-07-26', 2),
(22, 'makan', '2024-07-26', 2),
(23, 'makan', '2024-07-26', 2),
(24, 'makan', '2024-07-26', 2),
(25, 'makan', '2024-07-26', 8),
(26, 'makan', '2024-07-26', 6),
(27, 'makan', '2024-07-30', 3),
(28, 'makan', '2024-07-31', 8),
(29, 'makan', '2024-07-31', 9),
(30, 'makan', '2024-07-31', 9),
(31, 'makan', '2024-08-07', 2),
(32, 'makan', '2024-08-07', 2),
(33, 'makan', '2024-08-20', 2),
(34, 'makan', '2024-08-20', 2),
(35, 'makan', '2024-08-20', 2),
(36, 'makan', '2024-08-20', 2),
(37, 'makan', '2024-08-20', 2),
(38, 'makan', '2024-08-20', 2),
(39, 'makan', '2024-08-20', 10),
(40, 'makan', '2024-08-20', 8),
(41, 'makan', '2024-08-21', 11),
(42, 'makan', '2024-08-26', 5),
(43, 'makan', '2024-08-26', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `password`) VALUES
(1, '0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE `santri` (
  `id` int(11) NOT NULL,
  `nama_santri` varchar(100) NOT NULL,
  `asrama` varchar(100) NOT NULL,
  `nama_walisantri` varchar(100) NOT NULL,
  `jatah_ambil_makan_bulan_ini` int(11) NOT NULL,
  `no_hp` varchar(125) NOT NULL,
  `password` varchar(11) NOT NULL,
  `fcm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`id`, `nama_santri`, `asrama`, `nama_walisantri`, `jatah_ambil_makan_bulan_ini`, `no_hp`, `password`, `fcm`) VALUES
(4, 'Lutfi Habibullah', 'N.1', 'rifa', 60, '628986723456', 'lutfi111', 'fOJQVi1ES9GG2JD5JABR66:APA91bGjQzySSripOvziGUbjG4AHhh93lLQBiTBPfw9cdmfrMsGjyw9g5OC75h6LC1rHHY0t_1Yp9g-fJ_P0sxdaBGz0Z7gQL6McWpjvRRXRkUiLJ2OF3aLKpz0RLRaLxx2i7FugrRNs'),
(5, 'Iqbal Maulana', 'N.2', 'imin', 50, '628987012324167', 'iqbal111', 'fOJQVi1ES9GG2JD5JABR66:APA91bGjQzySSripOvziGUbjG4AHhh93lLQBiTBPfw9cdmfrMsGjyw9g5OC75h6LC1rHHY0t_1Yp9g-fJ_P0sxdaBGz0Z7gQL6McWpjvRRXRkUiLJ2OF3aLKpz0RLRaLxx2i7FugrRNs'),
(6, 'Saifudin Zuhri', 'N.3', 'Amin', 60, '628789056321', 'saifudin111', ''),
(11, 'napis mubarok', 'N.4', 'diman', 60, '628098746471', 'napis111', 'fOJQVi1ES9GG2JD5JABR66:APA91bGjQzySSripOvziGUbjG4AHhh93lLQBiTBPfw9cdmfrMsGjyw9g5OC75h6LC1rHHY0t_1Yp9g-fJ_P0sxdaBGz0Z7gQL6McWpjvRRXRkUiLJ2OF3aLKpz0RLRaLxx2i7FugrRNs'),
(12, 'nabawi', 'N.1', 'pii', 60, '628927715277', 'nabawi111', 'fOJQVi1ES9GG2JD5JABR66:APA91bGjQzySSripOvziGUbjG4AHhh93lLQBiTBPfw9cdmfrMsGjyw9g5OC75h6LC1rHHY0t_1Yp9g-fJ_P0sxdaBGz0Z7gQL6McWpjvRRXRkUiLJ2OF3aLKpz0RLRaLxx2i7FugrRNs');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_tagihan`
--
ALTER TABLE `daftar_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history_pengambilan`
--
ALTER TABLE `history_pengambilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi_pembayaran`
--
ALTER TABLE `notifikasi_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_tagihan`
--
ALTER TABLE `daftar_tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `history_pengambilan`
--
ALTER TABLE `history_pengambilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `notifikasi_pembayaran`
--
ALTER TABLE `notifikasi_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
