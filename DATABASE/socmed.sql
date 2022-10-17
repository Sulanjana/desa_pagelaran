-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2021 pada 03.29
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
-- Struktur dari tabel `socmed`
--

CREATE TABLE `socmed` (
  `id` int(11) NOT NULL,
  `instagram` varchar(125) DEFAULT NULL,
  `facebook` varchar(125) DEFAULT NULL,
  `youtube` varchar(125) DEFAULT NULL,
  `whatsapp` varchar(125) DEFAULT NULL,
  `embed_ig` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `socmed`
--

INSERT INTO `socmed` (`id`, `instagram`, `facebook`, `youtube`, `whatsapp`, `embed_ig`) VALUES
(1, 'https://www.instagram.com/', 'https://www.facebook.com/', 'https://www.youtube.com/', '083122457098', '<div class=\"taggbox-container\" style=\" width:75%;height:100%;overflow: auto;\"><div class=\"taggbox-socialwall\" data-wall-id=\"53043\" view-url=\"https://widget.taggbox.com/53043\">  </div><script src=\"https://widget.taggbox.com/embed.min.js\" type=\"text/javascript\"></script></div>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `socmed`
--
ALTER TABLE `socmed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `socmed`
--
ALTER TABLE `socmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
