-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2021 pada 03.30
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wblokodinasv1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `heading`
--

CREATE TABLE `heading` (
  `id` int(11) NOT NULL,
  `desa_kelurahan` varchar(125) DEFAULT NULL,
  `nama_desa_kelurahan` varchar(125) DEFAULT NULL,
  `kecamatan` varchar(125) DEFAULT NULL,
  `kabupaten_kota` varchar(125) DEFAULT NULL,
  `nama_kabupaten_kota` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `heading`
--

INSERT INTO `heading` (`id`, `desa_kelurahan`, `nama_desa_kelurahan`, `kecamatan`, `kabupaten_kota`, `nama_kabupaten_kota`) VALUES
(1, 'Desa', 'Cinunuk', 'Cileunyi', 'Kabupaten', 'Bandung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `heading`
--
ALTER TABLE `heading`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `heading`
--
ALTER TABLE `heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
