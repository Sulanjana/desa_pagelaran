-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2021 pada 09.01
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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(120) NOT NULL,
  `jabatan` varchar(120) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `image` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `jabatan`, `no_hp`, `image`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123', 'Admin A', 'Staff Desa', '088213219283', 'default.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', '<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n', 'Sentul International Convention Center', '', '510070sc-elton.jpg', '2012-11-17', '2012-11-17', '2012-08-20', '--', 149, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', '', '209930maroon_live_in_jakarta_2012.jpg', '2012-10-05', '2012-10-05', '2012-08-19', '', 31, 'admin'),
(63, 'Festival Musik Bambu Nusantara 2012', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', '', '85235BambuNusantara2012.jpg', '2012-09-01', '2012-09-02', '2012-08-20', '09.00 - 21.00 Wib', 46, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2011', 'konser-kantata-barock-2011', 'Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta,\r\nJumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya\r\nsetelah 21 tahun vakum dari dunia musik.\r\n<div style=\"overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none; border: medium none\">\r\n<br />\r\n</div>\r\n', '4520kantata_barock.jpg', 'Y', 72, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Festival Seni Terbesar di Dunia', 'festival-seni-terbesar-di-dunia', '', '13festival_seni.jpg', 'Y', 13, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah di Pasar Asemka', 'murah-meriah-di-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran. \r\n', '18asemka.jpg', 'Y', 67, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga', 'karpet-raksasa-dari-bunga', 'Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.\r\n', '92bungaraksasa2.jpg', 'Y', 108, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(50, 'CMS Swarakalibata Ci Developer Team', 'cms-swarakalibata-ci-developer-team', '<p>CodeIgniter atau sering disebut dengan sebutan CI adalah salah satu framework MVC PHP yang sangat populer di dunia web programming. CodeIgniter adalah salah satu framework PHP yang ringan dan berusia hampir 10 tahun (dirilis pada tahun 2006) dan menjadi salah satu framework yang popular di Indonesia.<br />\r\n<br />\r\nPada Swarakalibata Versi Codeigniter tidak ada perubahan pada struktur database dan folder, jadi anda tidak perlu repot-repot unutk migrasi ke Swarakalibata versi Codeigniter. anda masih bisa menggunakan database yang lama tanpa perlu takut data-data pada web yang lama akan hilang. dan untuk template kita masih menggunakan template dari versi sebelumnya yaitu alegro Responsive Template dari orange-themes karena memang template ini sangat banyak sekali peminatnya dan untuk pilihan warna terdiri dari Red, Green, Blue, Orange, Purple, Pink, Tosca and Black. untuk template admin kita menggunakan adminLTE Responsive, juga pada swarakalibata versi Codeigniter untuk keamanannya pun jauh lebih baik dari versi Native.</p>\r\n', 'swarakalibata.jpg', 'Y', 9, '2017-05-20', '23:46:54', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'red');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`, `deskripsi`) VALUES
(25, 'Kerja Sama', '', 'desa_digital.JPG', '2020-11-30', 'Jurusan Teknik Informatika UIN Bandung melaksanakan program desa digital bersama dengan 3 Desa 1 Kelurahan, Muarasanding salah satunya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(687, 63, 'admin', 'Usai Juara di Jepang, Ini Target Kevin/Marcus Selanjutnya', '', '', 'usai-juara-di-jepang-ini-target-kevinmarcus-selanjutnya', 'Y', 'N', 'Y', '<p>Tokyo - Kevin Sanjaya Sukamuljo/Marcus Fernaldi Gideon baru saja menambah koleksi gelar juaranya di Jepang Terbuka Super Series 2017. Mereka kini mengincar hasil yang sama di turnamen berikutnya.</p>\r\n\r\n<p>Kevin/Marcus keluar sebagai juara Jepang Terbuka Super Series usai mengalahkan pasangan tuan rumah Takuto Inoue/Yuki Kaneko dalam laga final yang digelar di Tokyo Metropolitan Gymnasium, Minggu (24/9), dengan skor 21-12, 21-15.</p>\r\n\r\n<p>Bagi Kevin/Marcus, itu adalah gelar keempat yang mereka raih di 2017. Di awal tahun, mereka mengukir prestasi gemilang dengan menjuarai tiga turnamen beruntun yaitu All England, India Terbuka Super Series, dan Malaysia Terbuka Super Series Premier.</p>\r\n\r\n<p>Namun Kevin/Marcus juga sempat mengalami penurunan. Cedera yang dialami Kevin membuat pasangan ganda putra terbaik Indonesia itu tak meraih hasil maksimal di Indonesia Terbuka Super Series Premier dan Kejuaraan Dunia 2017.</p>\r\n\r\n<p>Kevin/Marcus kemudian kembali ke trek dengan mencapai final di Korea Terbuka Super Series 2017 pada pekan lalu kendati harus puas sebagai runner-up. Kevin/Marcus akhirnya kembali naik podium tertinggi di Jepang Terbuka Super Series.</p>\r\n\r\n<p>Usai jadi juara di Jepang, Kevin/Marcus bersiap menghadapi turnamen berikutnya yakni Denmark Terbuka Super Series Premier (17-22 Oktober) dan Prancis Terbuka Super Series (24-29 Oktober). Mereka menargetkan hasil maksimal di kedua turnamen tersebut.</p>\r\n\r\n<p>&quot;Target kedepannya ada Denmark Open dan French Open, itu target terdekat kami,&quot; Marcus mengatakan kepada badmintonindonesia.org.</p>\r\n\r\n<p>&quot;Kalau target besar lainnya tentu masih banyak yang ingin kami raih. Yang pasti saya ingin memberikan yang baik di masa depan,&quot; Kevin menambahkan.</p>\r\n', '', 'Minggu', '2018-12-30', '16:04:34', 'kevinmarcus.jpg', 12, 'olahraga', 'Y'),
(688, 63, 'admin', 'Solidaritas Tanpa Batas untuk Rohingya', '', '', 'solidaritas-tanpa-batas-untuk-rohingya', 'Y', 'Y', 'N', '<p>Kekerasan pecah setelah bentrokan antara kelompok bersenjata dan militer Myanmar akhir Agustus lalu menyebabkan ratusan ribu pengungsi Rohingya melarikan diri ke Bangladesh serta sejumlah negara lainnya. Selain itu, krisis kemanusiaan ini diperkirakan telah menelan 1.000 jiwa.</p>\r\n\r\n<p>Mendengar etnis minoritas Rohingya mendapatkan persekusi di Rakhine Myanmar, kelompok-kelompok Islam di Indonesia geram dan menggalang aksi solidaritas untuk etnis muslim tersebut. Massa menggelar aksi solidaritas untuk Rohingya di Jakarta, Rabu (6/9). Dalam aksinya mereka mengutuk keras pembantaian umat muslim Rohingnya di Myanmar.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Minggu', '2018-12-30', '16:04:28', 'save-rohingya.jpg', 13, 'internasional', 'Y'),
(689, 63, 'admin', 'Spiderwoman dari Grobogan Raih Medali Emas Asian Games 2018', '', '', 'spiderwoman-dari-grobogan-raih-medali-emas-asian-games-2018', 'Y', 'N', 'Y', '<p style=\"text-align:justify\"><strong>Palembang --</strong>&nbsp;Atlet panjat tebing putri Indonesia, Aries Susanti Rahayu atau yang biasa disapa dengan Ayu, berhasil meraih medali emas dari nomor kecepatan putri Asian Games 2018, di Jakabaring Sport City (JSC) Sport Climbing, Palembang, Kamis (23/8/2018) malam.</p>\r\n\r\n<p style=\"text-align:justify\">Medali emas ini sekaligus menjadi yang pertama diperoleh di Palembang, Sumatera Selatan. Kemenangan ini didapat setelah tercipta all Indonesia final yang mempertemukan Aries dengan Puji Lestari.Dalam ajang tersebut, Ayu mampu mengalahkan pemanjat asal Rusia, Elena Timofeeva, dengan catatan waktu 7,51 detik. Atas prestasinya itu, Aries dijuluki &#39;Spiderwoman&#39; dari&nbsp;Indonesia.</p>\r\n\r\n<p style=\"text-align:justify\">Jika melihat perawakannya yang terkesan kalem, memang sulit disangka bahwa wanita berjilbab ini ternyata begitu perkasa dalam memanjat dinding. Ketinggian dinding panjat pun justru membuatnya semakin penasaran untuk ditaklukkan.</p>\r\n\r\n<p style=\"text-align:justify\">Ayu pernah mengomentari julukan &#39;Spiderwoman&#39; yang disematkan kepadanya karena prestasinya tersebut yang sangat cepat merayap di dinding panjatan tersebut.</p>\r\n\r\n<p style=\"text-align:justify\">&quot;Saya terserah dengan yang kasih julukan saja. Menurut saya, julukan itu buat kami semua buat timnas panjat tebing Indonesia. Semua Spiderwoman,&quot; katanya pada Mei lalu. Panjat tebing tampaknya memang sudah akrab dengan wanita 23 tahun tersebut sejak masih remaja. Ia mulai menggeluti panjat tebing dan panjat dinding sejak masih duduk di bangku Sekolah Menengah Pertama.</p>\r\n\r\n<p style=\"text-align:justify\">Aries Susanti, Sang &#39;Spiderwoman&#39; dari Grobogan Peraih EmasAries Susanti Rahayu bakal mendapatkan Rp1,5 miliar dari olahraga yang ia cintainya itu. (REUTERS/Edgar Su)</p>\r\n\r\n<p style=\"text-align:justify\">Bahkan sebelum menggeluti panjat tebing maupun panjat dinding, Ayu banyak menggandrungi olahraga lari sejak masih Sekolah Dasar. Kemudian gurunya di sekolah itu yang memperkenalkannya dengan olahraga panjat tebing.</p>\r\n\r\n<p style=\"text-align:justify\">Wanita kelahiran Desa Taruman, Kecamatan Klambu, Kabupaten Grobogan itu pun mulai menambatkan hatinya di panjat dinding karena baginya olahraga itu sangat memacu adrenalin.</p>\r\n\r\n<p style=\"text-align:justify\">Saking jatuh cinta dengan olahraga itu, Ayu bahkan sampai harus mengorbankan masa-masa kuliahnya. Ia hingga harus berhenti kuliah pada semester tiga di jurusan manajemen Fakultas Ekonomi Universitas Muhammadiyah Semarang demi merintis karier sebagai pemanjat tebing andal.</p>\r\n\r\n<p style=\"text-align:justify\">Berkat prestasinya saat ini di Asian Games 2018, kehidupannya pun kini bakal berubah. Sang &#39;Spiderwoman&#39; bakal mengantongi uang Rp1,5 miliar dari pemerintah sebagai imbalan atas emas yang dipersembahkannya untuk Indonesia.&nbsp;</p>\r\n', '', 'Minggu', '2018-12-30', '15:58:07', 'ayu_panjat_tebing_asian_games.jpg', 12, '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 8),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6),
(31, 'sdfdfsdf', 'lndex.php', '2017-01-27', 7),
(32, 'xxxx', 'lndex.php', '2017-10-11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id`, `gambar`, `foto`) VALUES
(1, 'aqil.png', ''),
(2, 'ILC.jpg', ''),
(3, 'ILC.jpg', ''),
(4, 'ILC1.jpg', 'ILC2.jpg'),
(5, 'if17.jpeg', 'lapur_lulus.jpg'),
(6, 'lapur.jpg', 'LOGO_IF.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '7kantata3.jpg'),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '44kantata4.jpg'),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', '38kantata1.jpg'),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '7kantata2.jpg'),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '85kantata5.jpg'),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '95kantata6.jpg'),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '32kantata7.jpg'),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', '', '45bungaraksasa8.jpg'),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '32kantata8.jpg'),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '89bungaraksasa7.jpg'),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '17bungaraksasa6.JPG'),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '74bungaraksasa5.JPG'),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '22bungaraksasa4.JPG'),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '78bungaraksasa3.JPG'),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '17bungaraksasa1.JPG'),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '22bungaraksasa2.JPG'),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', '34asemka10.jpg'),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', '6asemka9.jpg'),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', '2asemka8.jpg'),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', '82asemka4.jpg'),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', '21asemka7.jpeg'),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', '41asemka1.jpg'),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', '7asemka6.jpeg'),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', '22asemka5.jpeg'),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', '84asemka2.jpg'),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '911.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami', 'tentang-kami', '<p style=\"text-align:justify\">Swarakalibata merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Swarakalibata diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Swarakalibata juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p style=\"text-align:justify\">Konten berita Swarakalibata ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata resmi diluncurkan (Commercial Launch) sebagai portal berita pada 1 Maret 2007) dan merupakan cikal-bakal bisnis online pertama milik PT Php MU Tbk, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. PHPMU juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\r\n\r\n<p style=\"text-align:justify\">Sampai dengan bulan Oktober 2008, Swarakalibata mendapatkan peringkat ke 24 dari Top 100 website terpopuler di Indonesia (Sumber: Alexa.com), peringkat ini terus naik yang disebabkan semakin banyak pengunjung situs yang mengakses Swarakalibata setiap harinya. Selain itu, jumlah pengguna internet yang mencapai 25 juta (Sumber: data APJII per 2005) diperkirakan untuk terus tumbuh dengan signifikan dalam beberapa tahun ke depan.</p>\r\n', '2014-04-07', '', 'admin', 61, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p style=\"text-align:justify\">Swarakalibata merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Swarakalibata diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Swarakalibata juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p style=\"text-align:justify\">Konten berita Swarakalibata ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata resmi diluncurkan (Commercial Launch) sebagai portal berita pada 1 Maret 2007) dan merupakan cikal-bakal bisnis online pertama milik PT Php MU Tbk, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. PHPMU juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\r\n\r\n<p style=\"text-align:justify\">Sampai dengan bulan Oktober 2008, Swarakalibata mendapatkan peringkat ke 24 dari Top 100 website terpopuler di Indonesia (Sumber: Alexa.com), peringkat ini terus naik yang disebabkan semakin banyak pengunjung situs yang mengakses Swarakalibata setiap harinya. Selain itu, jumlah pengguna internet yang mencapai 25 juta (Sumber: data APJII per 2005) diperkirakan untuk terus tumbuh dengan signifikan dalam beberapa tahun ke depan.</p>\r\n', '2014-04-07', '', 'admin', 23, '13:32:28', 'Senin'),
(52, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"margin-left:14.2pt; text-align:justify\">Berdasarkan Surat Keputusan Bupati Kabupaten Garut Nomor 433 Tahun 2008&nbsp; tentang Struktur Organisasi dan Tata Kerja Kelurahan, tersusun atas :</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Kepala Kelurahan</li>\r\n	<li style=\"text-align:justify\">Perangkat Kelurahan :</li>\r\n</ul>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\">Sekretaris Kelurahan</li>\r\n	<li style=\"text-align:justify\">Kepala Seksi Pemerintahan</li>\r\n	<li style=\"text-align:justify\">Kepala Seksi Pembangunan</li>\r\n	<li style=\"text-align:justify\">Kepala Seksi Kemasyarakatan</li>\r\n	<li style=\"text-align:justify\">Kelompok Jabatan Fungsional</li>\r\n</ol>\r\n', '2019-02-11', '', 'admin', 69, '15:21:50', 'Senin'),
(53, 'Sejarah Instansi', 'sejarah-instansi', '<p style=\"text-align:justify\"><strong>Sejarah</strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sejak tahun 1980 Wilayah Muarasanding mengalami perubahan status dari Pemerintahan Desa menjadi organisasi perangkat daerah&nbsp; berupa Kelurahan, secara ideologi, sampai saat ini masih Pancasila dan UUD 1945, kecenderungan Politik terbangun ke dalam: Nasionalis dan agama, dan moderat hal ini terlihat pada pelaksanaan PEMILU </span>&nbsp;&nbsp;&nbsp;<span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">( Pemilu Legislatif, Pilpres 2014 dan Pilkada Kabupaten</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> 201</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4).&nbsp; Kehidupan sosial, Muarasanding terbagi ke dalam&nbsp; 2 bagian masyarakat, yaitu Muara yang masyarakatnya masih bersifat pedesaan dan bagian Sanding yang sudah bersifat perkotaan (perpindahan penduduk aktif, mata pencaharian:&nbsp; buruh, industri,&nbsp; perdagangan, pertanian dan karyawan)</span></p>\r\n', '2019-02-13', '', 'admin', 30, '14:43:03', 'Rabu'),
(60, 'Wilayah Administratif', 'wilayah-administratif', '<p style=\"margin-left:22.5pt; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Secara administratif wilayah Kelurahan Muarasanding terdiri dari :</span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:83.4pt; width:364.5pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:red; width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></strong></p>\r\n			</td>\r\n			<td style=\"background-color:red; width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Nama Kampung</span></strong></p>\r\n			</td>\r\n			<td style=\"background-color:red; width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">RW</span></strong></p>\r\n			</td>\r\n			<td style=\"background-color:red; width:54.0pt\">\r\n			<p><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah RT</span></strong></p>\r\n			</td>\r\n			<td style=\"background-color:red; width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ket</span></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sanding Lebak</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">01</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sanding Lebak</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">02</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cintamaya</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">03</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sanding Tonggoh</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">04</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sanding Tonggoh</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">05</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sanding Tonggoh</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">06</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cangkuang</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">07</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cintadamai</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">08</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Muara</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">09</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Muara</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">11</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sodong</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">11</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">12</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Muara indah</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">12</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">13</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Babakan Somawijaya</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">13</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kamasan</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">15</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Mekarsari</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">15</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">16</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cintamaya</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">16</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n			<td style=\"width:170.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Permata Kharisma Residence</span></p>\r\n			</td>\r\n			<td style=\"width:54.15pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">18</span></p>\r\n			</td>\r\n			<td style=\"width:170.25pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Muarasanding Residence</span></p>\r\n			</td>\r\n			<td style=\"width:53.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">18</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.35pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">19</span></p>\r\n			</td>\r\n			<td style=\"width:170.25pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Garut City Residence</span></p>\r\n			</td>\r\n			<td style=\"width:53.9pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">19</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"width:256.5pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></strong></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">82</span></p>\r\n			</td>\r\n			<td style=\"width:54.0pt\">\r\n			<p style=\"margin-left:21.3pt; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 0, '05:56:09', 'Senin'),
(54, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>VISI DAN MISI<br />\r\nPEMERINTAH KABUPATEN KARAWANG<br />\r\nPERIODE 2016 - 2021</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<strong>VISI :</strong><br />\r\nKARAWANG YANG MANDIRI MAJU ADIL DAN MAKMUR<br />\r\n<strong>MISI :</strong><br />\r\n1. Mewujudkan Aparatur Pemerintah Daerah yang Bersih dan Berwibawa.<br />\r\n2. Mewujudkan Kabupaten Karawang yang Berdaya Saing.<br />\r\n3. Mewujudkan Masyarakat Demokratis Berlandaskan Hukum.<br />\r\n4. Mewujudkan Kabupaten Karawang yang Asri dan Lestari.<br />\r\n5. Membangun Kabupaten Karawang Melalui Penguatan Desa.</p>\r\n', '2019-02-13', '', 'admin', 17, '16:17:33', 'Rabu'),
(55, 'Keadaan Geografis', 'keadaan-geografis', '<p style=\"margin-left:1.0cm; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kelurahan Muarasanding terletak di ketinggian 700 m di atas permukaan air laut dan suhu rata-rata 27&deg; C, dengan keadaan permukaan rata-rata berupa hamparan dataran. Keadaan wilayah sebagai berikut :</span></p>\r\n', '2020-11-30', '', 'admin', 1, '05:51:11', 'Senin'),
(56, 'Batas Wilayah', 'batas-wilayah', '<p style=\"text-align:justify\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Batas Wilayah </span></strong></p>\r\n\r\n<p style=\"margin-left:40.5pt; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kelurahan Muarasanding mempunyai&nbsp; batas-batas wilayah sebagai berikut :</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sebelah Utara berbatasan dengan Kelurahan Paminggir dan Kecamatan Tarogong Kidul;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sebelah Barat berbatasan dengan Kecamatan Tarogong Kidul;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sebelah Selatan berbatasan dengan Kecamatan Cilawu;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sebelah Timur berbatasan dengan Kelurahan Kota Kulon dan Kecamatan Cilawu.</span></li>\r\n</ul>\r\n', '2020-11-30', '', 'admin', 0, '05:51:32', 'Senin'),
(57, 'Luas Wilayah', 'luas-wilayah', '<p style=\"margin-left:40.5pt; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Luas Wilayah Kelurahan Muarasanding seluas 280,9 ha, dengan rincian menurut penggunaan tanah sebagai berikut :</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tanah Sawah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 239,2&nbsp;&nbsp; Ha;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Halaman dan Bangunan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37,0&nbsp;&nbsp; Ha;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kolam &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;1,3 &nbsp; Ha;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kuburan dan lainnya&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 3,4&nbsp;&nbsp; Ha.</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:54.0pt; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Keseluruhan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 280,9&nbsp; Ha. </span></p>\r\n', '2020-11-30', '', 'admin', 0, '05:51:54', 'Senin'),
(58, 'Orbitrasi', 'orbitrasi', '<p style=\"text-align:justify\"><strong>Orbitrasi</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jarak antara Kelurahan terhadap Kecamatan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 Km.</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jarak antara Kelurahan terhadap Ibukota Kabupaten&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 Km.</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jarak antara Kelurahan terhadap Ibukota Propinsi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;65 Km.</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jarak antara Kelurahan terhadap Ibukota Republik Indonesia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 180</span> <span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Km.</span></li>\r\n</ul>\r\n', '2020-11-30', '', 'admin', 0, '05:52:02', 'Senin'),
(59, 'Data Penduduk', 'data-penduduk', '<ol>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Penduduk</span></strong></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Penduduk sampai dengan Bulan Desember 201</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> tercatat sebanyak :1</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2.817</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Jiwa</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Lakilaki&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;6.530</span>&nbsp;&nbsp; <span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">j</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">iwa</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Perempuan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; 6.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">287&nbsp;&nbsp; </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">jiwa</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;12.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">817</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp;&nbsp; jiwa</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:54.0pt; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt; text-align:justify\">&nbsp;</p>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Kepala Keluarga</span></strong></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Kepala Keluarga sampai dengan bulan Desember 201</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> sebanyak </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3.142</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KK, terdiri dari :</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kepala Keluarga Lakilaki&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">0&nbsp;&nbsp; &nbsp; KK</span></li>\r\n	<li><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kepala Keluarga Perempuan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp;138</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp; &nbsp; KK</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:54.0pt; text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3.008</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp; &nbsp; KK</span></p>\r\n', '2020-11-30', '', 'admin', 1, '05:53:45', 'Senin'),
(61, 'Lembaga Kemasyarakatan', 'lembaga-kemasyarakatan', '<p><strong>Lembaga Kemasyarakatan :</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:41.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:yellow; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:yellow; width:195.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Nama Lembaga</span></p>\r\n			</td>\r\n			<td style=\"background-color:yellow; width:134.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah Pengurus</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">LPM</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">28</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">19</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">RT</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">82</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">MUI</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Karang Taruna</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">22</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">BM-ZIS</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">UP-ZIS</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">TP</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> PKK Kelurahan</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">PKK RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">POSYANDU</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">11</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">DKM</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">12</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">IRMA</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">13</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kelompok Tani</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">P 3 A Mitra Cai</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">15</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Desa Siaga</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">16</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">LKM PNPM</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n			<td style=\"width:195.6pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Rumah Sosial</span></p>\r\n			</td>\r\n			<td style=\"width:134.9pt\">\r\n			<p style=\"text-align:right\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">30</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 1, '05:58:19', 'Senin'),
(62, 'Keagamaan', 'keagamaan', '<p><strong>Keagamaan</strong></p>\r\n\r\n<p style=\"margin-left:36.0pt\">. Sarana Keagamaan</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#00b050; width:24.9pt\">\r\n			<p style=\"text-align:center\">No</p>\r\n			</td>\r\n			<td style=\"background-color:#00b050; width:160.15pt\">\r\n			<p style=\"text-align:center\">Nama Sarana</p>\r\n			</td>\r\n			<td style=\"background-color:#00b050; width:169.35pt\">\r\n			<p style=\"text-align:center\">Jumlah</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>Mesjid</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">26</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>Pesantren</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>Pontren</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>TKA</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>Mushola</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>6</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>Madrasah</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">5</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:49.7pt; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:36.0pt\">b. Lembaga Keagamaan</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#00b050; width:24.9pt\">\r\n			<p style=\"text-align:center\">No</p>\r\n			</td>\r\n			<td style=\"background-color:#00b050; width:160.15pt\">\r\n			<p style=\"text-align:center\">Nama Lembaga</p>\r\n			</td>\r\n			<td style=\"background-color:#00b050; width:169.35pt\">\r\n			<p style=\"text-align:center\">Jumlah</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>MUI</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>2</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>BM-ZIS</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>3</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>UP-ZIS</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">17</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>DKM</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">19</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p>5</p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p>IRMA</p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\">17</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:13.5pt\">&nbsp;</p>\r\n', '2020-11-30', '', 'admin', 1, '05:58:44', 'Senin');
INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(63, 'Pendidikan', 'pendidikan', '<p><strong>Pendidikan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1. Pendidikan Formal</span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#92d050; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#92d050; width:160.15pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sarana Pendidikan</span></p>\r\n			</td>\r\n			<td style=\"background-color:#92d050; width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SDN</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SLTP</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SLTA</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">UNIVERSITAS</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:13.5pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:13.5pt\">&nbsp;</p>\r\n\r\n<ol start=\"2\">\r\n	<li><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pendidikan Non Formal</span></li>\r\n</ol>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#92d050; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#92d050; width:160.15pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sarana Pendidikan</span></p>\r\n			</td>\r\n			<td style=\"background-color:#92d050; width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pesantren</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Madrasah</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">TKA</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">LPK</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">PAUD</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 0, '06:01:16', 'Senin'),
(64, 'Kebudayaan', 'kebudayaan', '<p><strong>Kebudayaan</strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#b6dde8; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#b6dde8; width:160.15pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jenis Kebudayaan dan Kesenian Daerah</span></p>\r\n			</td>\r\n			<td style=\"background-color:#b6dde8; width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pencak Silat</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Degung</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kaulinan Barudak</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Gondang</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tagoni</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sholawatan</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 0, '06:01:45', 'Senin'),
(65, 'Kesehatan', 'kesehatan', '<p><strong>Kesehatan</strong></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#f79646; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#f79646; width:160.15pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Sarana Kesehatan</span></p>\r\n			</td>\r\n			<td style=\"background-color:#f79646; width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Puskesmas Pembantu</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Posyandu</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Dokter Praktik</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Bidan Desa</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Bidan Praktik</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pos Siaga / Puskesdes</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ambulance Desa</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kader Kesehatan</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">34</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Apotik / Toko Obat</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:160.15pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Paraji Terlatih</span></p>\r\n			</td>\r\n			<td style=\"width:169.35pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 0, '06:02:13', 'Senin'),
(66, 'Ekonomi', 'ekonomi', '<p><strong>Ekonomi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:31.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1. Lembaga Perekonomian</span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#0070c0; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#0070c0; width:200.65pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Lembaga Ekonomi</span></p>\r\n			</td>\r\n			<td style=\"background-color:#0070c0; width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Koperasi Berbadan Hukum</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pra Koperasi</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Penyedia Pupuk</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Usaha Ekonomi PNPM</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kelompok Usaha Bersama</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14 Klp</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Mina Padi</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kelompok Tani</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:200.65pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jasa Penanggung Keuangan</span></p>\r\n			</td>\r\n			<td style=\"width:128.85pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n\r\n<ol start=\"2\">\r\n	<li><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jenis Perekonomian</span></li>\r\n</ol>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#0070c0; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#0070c0; width:201.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jenis Usaha</span></p>\r\n			</td>\r\n			<td style=\"background-color:#0070c0; width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Lilin</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Peng</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">u</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">saha Dodol</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Wajit/Angleng</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Kerupuk</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10 Klp</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Rangginang</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6 Klp</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Abon/Dendeng</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Roti</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kolam Pemacingan</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Bengkel Mobil/Motor</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Cat / Duko</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">11</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Kayu</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">12</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha Pagar/teralis</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">13</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Warnet</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Wartel</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">15</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Pengusaha mebelair</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">16</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Toko Foto Copy</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">17</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Toko / Warung</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">215</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">18</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Peternak Domba/biri-biri</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">14</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">19</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Peternak Ayam Ras</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">20</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Isi ulang air minum</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">21</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Rias Pengantin</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">22</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Agen </span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">gas elpiji</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">23</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Peternak sapi</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">24</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Showroom&nbsp; Kendaraan bermotor</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">25</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Penginapan</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">26</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Huller</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol start=\"3\">\r\n	<li><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Asset Vital</span></li>\r\n</ol>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid black 1.0pt; margin-left:40.85pt; width:354.4pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#9bbb59; width:24.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">No</span></p>\r\n			</td>\r\n			<td style=\"background-color:#9bbb59; width:201.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jenis Asset</span></p>\r\n			</td>\r\n			<td style=\"background-color:#9bbb59; width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jumlah</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kolam Renang</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Bak Reservoar PDAM</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Gardu Listrik PLN</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tower Telekomunikasi</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SUTET PLN</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tanah Carik</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jalan Desa</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jalan Kabupaten</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Jalan Provinsi</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">10</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SPBU</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">11</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kantor Pemerintah</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:24.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">12</span></p>\r\n			</td>\r\n			<td style=\"width:201.9pt\">\r\n			<p><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tanah dan Bangunan Negara</span></p>\r\n			</td>\r\n			<td style=\"width:127.6pt\">\r\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:54.0pt\">&nbsp;</p>\r\n', '2020-11-30', '', 'admin', 0, '06:03:22', 'Senin');
INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(67, 'Tugas Pokok Dan Fungsi', 'tugas-pokok-dan-fungsi', '<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kegiatan pemerintahan meliputi pembagian tugas dan uraian tugas unit seksi di kelurahan Muarasanding yang terdiri dari :</span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; margin-left:40.85pt; width:15.0cm\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"background-color:#f2dcdb; width:163.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><strong><span style=\"color:black\">Unit/Seksi</span></strong></p>\r\n			</td>\r\n			<td style=\"background-color:#f2dcdb; width:120.45pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><strong><span style=\"color:black\">Target Kegiatan</span></strong></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background-color:#f2dcdb; width:141.2pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><strong><span style=\"color:black\">Hasil Kegiatan</span></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"background-color:#f2dcdb; width:15.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><strong><span style=\"color:black\">SEKRETARIAT KELURAHAN</span></strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">A</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Administrasi dan Tata Usaha Perkantoran</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<ul>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Tata Kelola Agenda Surat Masuk dan Keluar</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penataan Arsip dan Pemeliharaan Dokumen</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyajian Data Kearsipan</span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">200</span><span style=\"color:black\"> surat</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">211 surat</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">B</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Kebersihan, Keamanan dan Ketertiban Kantor</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<ul>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Kebersihan Gedung Kantor</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Pemeliharaan Bangunan Kantor</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Kebersihan Halaman Kantor </span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Keindahan Taman Kantor</span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terpeliharanya gedung dan halaman kantor</span><span style=\"color:black\"> selama 1 tahun</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">C</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Kepegawaian</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<ul>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyusunan DUK Pegawai</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Usulan Kenaikan Pangkat Pegawai</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">&nbsp;Usulan Kenaikan Gaji Berkala</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">&nbsp;Penyusunan SKP Pegawai, Pembinaan disiplin pegawai, </span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Peningkatan Kesejahteraan Pegawai </span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyajian Data Kepegawaian</span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Telah dilaksanakan</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">1 orang pegawai</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">1</span><span style=\"color:black\"> orang pegawai</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">5</span><span style=\"color:black\">&nbsp; orang pegawai</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">2 kegiatan</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">D</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pengelolaan Keuangan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<ul>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyusunan Rencana Biaya Kebutuhan</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">&nbsp;Penyusunan Pertanggungjawaban</span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyajian Data Keuangan,&nbsp; </span></li>\r\n				<li style=\"text-align:justify\"><span style=\"color:black\">Penyusunan Laporan Keuangan</span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">1 dokumen</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">1 dokumen</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"color:black\">1 dokumen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">E</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pengisian Monografi Kelurahan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Terisinya papan monografi kelurahan, profil kelurahan dan potensi kelurahan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Tersajinya data Kelurahan Muarasanding Tahun 2018</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">F</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:8.0pt\"><span style=\"color:black\">Inventarisasi Barang Milik Negara</span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<ul>\r\n				<li style=\"text-align:justify\"><span style=\"font-size:8.0pt\"><span style=\"color:black\">Inventarisasi aset Pemerintah Daerah dan Barang</span></span></li>\r\n				<li style=\"text-align:justify\"><span style=\"font-size:8.0pt\"><span style=\"color:black\">Laporan Mutasi Barang</span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Tersedia/ terpenuhinya kelengkapan data barang / asset daerah thn 201</span></span><span style=\"font-size:8.0pt\"><span style=\"color:black\">7</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Terlakasanya pelaporan barang inventaris / asset daerah tahun 2017</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">G</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pembinaan Pegawai di Lingkup Sekretariat</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">12 orang pegawai</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terbinanya 1</span><span style=\"color:black\">2</span><span style=\"color:black\"> orang pegawai </span><span style=\"color:black\">, teguran pegawai </span><span style=\"color:black\">1</span><span style=\"color:black\"> orang</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">H</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">Penyusunan Perumusan dan Pembuatan Program Kerja</span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"font-size:10.0pt\"><span style=\"color:black\">3 Seksi dan 1 Sekretariat</span></span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"font-size:10.0pt\"><span style=\"color:black\">Tersusunnya Program Kerja Kelurahan Tahun 2018</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"background-color:#f2dcdb; width:163.6pt\">\r\n			<p><strong><span style=\"color:black\">SEKSI PEMERINTAHAN</span></strong></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background-color:#f2dcdb; width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"background-color:#f2dcdb; width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">A</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Kependudukan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">&nbsp;Penyusunan Laporan Kependudukan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pelaksanaan laporan penduduk Pindah, Datang, Mati dan Lahir</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terlaporkannya perkembangan penduduk Kelurahan Muarasanding selama </span><span style=\"color:black\">12 </span><span style=\"color:black\">bulan</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pemutakhiran Data Penduduk</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Data Induk Penduduk Kelurahan Muarasanding Tahun 2017</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terpeliharanya data Induk Penduduk Tahun 2018</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">B</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Penyusunan Monografi Kelurahan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Papan Visual Data</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Data Monografi kelurahan dapat tersusun dalam sebuah buku</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">C</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pajak Bumi dan Bangunan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">DHKP/ Ketetapan Pajak Tahun 2018</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"font-size:9.0pt\"><span style=\"color:black\">Tersusunnya pengelolaan pajak tahun 2018, penyusunan kolektor, jadwal pemungutan, penyetoran ke Bank dan pelaporan ke kecamatan</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">D</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pemilihan Umum/Pilkada</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">PPS dan Sekretariat</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Fasilitasi terbentuknya&nbsp; PPS Kelurahan, Panwaslap dan terbentuknya Sekretariat</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">E.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pelayanan mutasi dan perubahan kepemilikan tanah</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Terlaksananya pelayanan pembuatan akta tanah , hibah dan waris</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">21</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">F.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Penyusunan Laporan Tahunan Kelurahan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Laporan Tahunan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Tersusunnya Laporan Tahunan Tahun 2018</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">G.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pembinaan Kinerja Lembaga Kemasyarakatan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Terbinanya lembaga kemasyarakatan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">2 lembaga</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">H.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pengelolaan Perpustakaan Kelurahan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Tersedianya prasarana dan bahan bacaan yang layak</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">123 judul buku bacaan dan perundangan</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">I.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:center\"><span style=\"color:black\">Fasilitasi penyelenggaraan pemilihan RT/RW</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">RW 04, RW.0</span><span style=\"color:black\">5</span><span style=\"color:black\">, RW. 11, RW. 14</span><span style=\"color:black\">, RW.1</span><span style=\"color:black\">6</span><span style=\"color:black\">, RW.1</span><span style=\"color:black\">7</span><span style=\"color:black\">,RW.1</span><span style=\"color:black\">8</span><span style=\"color:black\">, RW.1</span><span style=\"color:black\">9</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">8 SK </span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">J.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pembinaan ketentraman dan ketertiban</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">19 RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Monitoring kegiatan Siskamling sebanyak 122</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">K.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pembinaan Potensi Perlindungan Masyarakat</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">47 orang Anggota Linmas</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"background-color:#e36c0a; width:163.6pt\">\r\n			<p><strong><span style=\"color:black\">SEKSI PEMBANGUNAN</span></strong></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background-color:#e36c0a; width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"background-color:#e36c0a; width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">A.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Inventarisir dan Penyusunan Rencana Kegiatan Bidang Pembangunan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Rekapitulasi data pembangunan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Terselenggaranya Musrenbang Kelurahan</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Rekapitulasi data Pembangunan</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Tersusunnya RPTK Kelurahan Muarasanding</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><span style=\"font-size:8.0pt\"><span style=\"color:black\">Terbentuknya 4 orang Perwakilan Peserta Musrenbang Kecamatan</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">B.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Inventarisasi Kegiatan Swadaya Murni</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Triwulan I s/d IV Tahun 2018</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terlaporkannya kegiatan swadaya murni di Kelurahan Muarasanding sebanyak 5 kali dalam tahun 2018</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">C</span><span style=\"color:black\">.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pelaksanaan Bulan Bhakti Gotong Royong</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Terselenggaranya Bulan Bhakti Gotong Royong tahun 2018</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terlaporkannya Kegiatan BBGRM tahun 201</span><span style=\"color:black\">8</span><span style=\"color:black\"> ( terdiri dari 21 kegiatan bersifat fisik dan 12 keg.non fisik ) </span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">D</span><span style=\"color:black\">.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Monitoring Kegiatan Pembangunan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Inventarisasi kegiatan pembangunan di Kelurahan Muarasanding</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Telah dilaksanakannya kegiatan monitoring&nbsp; semua kegiatan pembangunan yang ada pada tahun 201</span><span style=\"color:black\">8</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">E</span><span style=\"color:black\">.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:9.0pt\"><span style=\"color:black\">Inventarisasi dan Pemeliharaan Fasilitas Umum</span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">F</span><span style=\"color:black\">.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pembinaan Kehidupan Berkoperasi</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">3 Koperasi di Kelurahan Muarasanding</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terselengggaranya kegiatan Koperasi dan pelaksanaan RAT</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">G</span><span style=\"color:black\">.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Koordinasi, sinkronisasi dan monitoring, Program PNPM-MP</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">LKM, Fasilitator ddan Pokja Kecamatan Garut Kota</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terselenggaranya kegiatan PNPM Tahun 2018 dan Perencanaan Tahun 2018</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" style=\"background-color:#4bacc6; width:163.6pt\">\r\n			<p><strong><span style=\"color:black\">SEKSI KEMASYARAKATAN</span></strong></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background-color:#4bacc6; width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"background-color:#4bacc6; width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"9\" style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">A.</span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" rowspan=\"9\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pembinaan kemasyarakatan</span></p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p style=\"margin-left:15.85pt; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p style=\"margin-left:15.85pt; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Mengikuti kegiatan keagamaan di 18 RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terselengaranya kegiatan sebanyak 48 kali</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Penyusunan jadwal Anjangsana dan sosialisasi program kepemerintahan melalui media yang ada di masyarakat</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terlaksananya anjangsana dan monitoring Yandu di 19 RW sebanyak 19 kali</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Inventarisasi Data Kemasyarakatan :</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">a. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Data Tokoh Masyarakat</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Sebanyak 32 orang</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">b. Data Tokoh Pemuda</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Sebanyak 22 orang</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">c. Data Mesjid/ DKM</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Jumlah Mesjid yang ada sebanyak 2</span><span style=\"color:black\">6</span><span style=\"color:black\"> diantaranya 16 Mesjid Jami / 25&nbsp; DKM</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">d. Data Penggajian Rutin</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terdapat 1</span><span style=\"color:black\">7</span><span style=\"color:black\"> Majelis Taklim yang tersebar di 18 RW</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">e. Data Ikatan Remaja Mesjid</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terdapat 18 IRMA</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">f. Data Sumbangan Sosial di tiap lingkungan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">- Pembagian Beras Raskin Gratis dari Ketua RW.10 sebanyak 3 kali, ke tiap RW se Kelurahan Muarasanding</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">B.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Monitoring penyelenggaraan pendidikan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">a.</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"margin-left:15.85pt; margin-right:0cm; text-align:justify\"><span style=\"color:black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inventarisasi Data sekolah, murid dan guru</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terlaksananya program Wajib Belajar 9 tahun </span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">-&nbsp; </span><span style=\"font-size:10.0pt\"><span style=\"color:black\">Ada 5 Sekolah Dasar</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">Jumlah murid/ anak didik sebanyak....</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">Jumlah guru sebanyak...</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">-Jumlah PAUD sebanyak </span></span><span style=\"font-size:10.0pt\"><span style=\"color:black\">5</span></span></p>\r\n\r\n			<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">Dengan jumlah anak didik sebanyak kurang lebih 320 orang dan guru sebanyak 25 orang.</span></span></p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">b.</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"margin-left:15.85pt; margin-right:0cm; text-align:justify\"><span style=\"color:black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Inventarisasi Data Putus Sekolah</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Berkurangnya angka anak putus sekolah</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">C.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Monitoring masalah-masalah kerawanan sosial</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">D.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pemasyarakatan PHBS </span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Terlaksananya Kegiatan opsih secara rutin di 19 RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Satu minggu satu kali</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">E.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Perumusan dasar kebijakan distribusi dan pengelolaan Bantuan Raskin</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">pendistribusian beras raskin secara lancar di 16 RW pada tahun 2013</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Pada tahun 2018 telah di distribusikan BNPT kepada 290( kpm) sebanyak 2.100 Kg</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">F.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pemeliharaan Data Jamkesmas/Jamkesda</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Data penerima Jamkesmas dan Jamkesda</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Penerima Jamkesmas sebanyak 2.282 orang</span></p>\r\n\r\n			<p><span style=\"color:black\">Penerima Jamkesda sebanyak 360 orang</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">G.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pemeliharaan Data PSKS</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">290 KK </span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Tersalurkannya </span><span style=\"color:black\">PSKS</span><span style=\"color:black\"> dengan aman dan lancar</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">H.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pemeliharaan Data PMKS</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">Tersedianya data PMKS</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">1 dokumen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">J.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p><span style=\"color:black\">Pelaksanaan PHBN/PHBI</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terlaksananya kegiatan PHBI di 19 RW ( Keg. peringatan Maulid Nabi Muhammad. SAW, kegiatan Isro Mi&rsquo;raj ) pada tahun 2018.</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">K.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pembinaan dan Pencegahan, penanggulangan bencana</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">-</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pemetaan Wilayah Potensi Bencana</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Tersedianya peta / data wilayah potensi bencana</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">1 dokumen</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">-</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Inventarsisir Potensi Bencana </span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">3 RW</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terinventarisasinya potensi bencana , 3 RW yang rawan bencana banjir, 1 RW rawan longsor</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">-</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pemetaan Kerawanan Gangguan Kamtibmas</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pencegahan dan antisipasi kerawanan Gangguan Kamtibmas</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terlaksanannya kegiatan Siskamling di 19 RW</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">-</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Mobilisasi Personil Penanggulangan Bencana</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terciptanya keamanan dan ketertiban lingkungan</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Terdapat 1 orang Satgas Linmas dan 32 orang anggota Linmas</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:21.85pt\">\r\n			<p><span style=\"color:black\">-</span></p>\r\n			</td>\r\n			<td style=\"width:115.05pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pelaporan</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p style=\"text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">3 kali</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.7pt\">\r\n			<p><span style=\"color:black\">L.</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:136.9pt\">\r\n			<p style=\"text-align:justify\"><span style=\"color:black\">Pembinaan Lembaga Kemasyarakatan (PKK, Kader KB, Kesehatan dan Posyandu)</span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"width:127.0pt\">\r\n			<p><span style=\"color:black\">PKK, Pokjanal Posyandu</span></p>\r\n			</td>\r\n			<td style=\"width:134.65pt\">\r\n			<p><span style=\"color:black\">Terbinanya PKK dan Kader Posyandu</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-11-30', '', 'admin', 2, '06:06:18', 'Senin'),
(68, 'Surat', 'surat', '<ul>\r\n	<li><strong><a href=\"//localhost/KP/suket/\"><span style=\"color:#000000\">Surat Keterangan</span></a></strong></li>\r\n</ul>\r\n', '2021-03-20', '', 'admin', 0, '22:07:58', 'Sabtu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(39, 'Admin Lokomedia', 'dankrez48@gmail.com', '::1', 'Selamat bergabung di CMS Lokomedia. Jaminan kenyamanan dalam pengelolaan konten website menjadi hal yang kami utamakan. Aapabila anda menemukan kendala, segera hubungi kami.', '2017-01-23', '21:56:12', 'Y'),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y'),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Kelurahan Muarasanding', 'email@email.com', 'http://localhost/lokodinas', '-', '000000', '0202541503', 'Berita Indonesia terkini terpercaya, dan terpopuler, politik, ekonomi, tekno, otomotif, dan olahraga ditulis lengkap dan akurat.', 'berita, internasional, nasional, daerah, olahraga, otomotif, teknologi, news, hiburan, entertainment, indonesia, swarakalibata, lokomedia', 'LOGO_KABUPATEN_GARUT.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15832.29132533111!2d107.88978021701931!3d-7.232533629392369!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68b03140d12fa1%3A0xddf80ac0041dd5c4!2sMuara%20Sanding%2C%20Kec.%20Garut%20Kota%2C%20Kabupaten%20Garut%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1606689950170!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Jasa Pembuatan Website murah', 'admin', 'http://www.lokomedia.web.id', 'banner_asiangames.jpg', '2018-08-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(35, 'link1', 'admin', 'https://members.lokomedia.web.id', 'img1.jpg', '2019-01-12'),
(34, 'link2', 'admin', 'https://google.co.id', 'img2.jpg', '2019-02-22'),
(36, 'link3', 'admin', 'https://members.lokomedia.web.id', 'img3.jpg', '2019-01-12'),
(37, 'link4', 'admin', 'https://members.lokomedia.web.id', 'img4.jpg', '2019-01-12'),
(38, 'link5', 'admin', 'https://members.lokomedia.web.id', 'img5.jpg', '2019-01-12'),
(39, 'link6', 'admin', 'https://members.lokomedia.web.id', 'img6.jpg', '2019-01-12'),
(40, 'link7', 'admin', 'https://members.lokomedia.web.id', 'img7.jpg', '2019-01-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(61, 'Berita Daerah', 'admin', 'berita-daerah', 'Y', 1),
(62, 'Berita OPD', 'admin', 'berita-opd', 'Y', 2),
(63, 'Berita Umum', 'admin', 'berita-umum', 'Y', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'dankrez48@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'dankrez48@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Agung Wicaksana', 'dankrez48@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'dankrez48@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com'),
(153, 662, 'Agung Wicaksana', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'dankrez48@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(162, 687, 'mas marno', '', 'maju terus indonesia', '2017-10-04', '14:32:56', 'Y', 'marnosudrajat@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Lukman Hakim', 'dankrez48@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Lukman Hakim', 'dankrez48@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Lukman Hakim', 'dankrez48@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y'),
(116, 162, 'bandug atmawijaya', 'bandung_api@yahoo.com', 'tidak berprikemanusiaan', '2017-10-04', '10:56:44', 'Y'),
(118, 162, 'maskomen', 'maskomen@ojolali.com', 'komentar testing', '2017-10-04', '13:13:55', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id_link` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `groupname` varchar(20) DEFAULT NULL,
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `link`
--

INSERT INTO `link` (`id_link`, `id_parent`, `nama_menu`, `link`, `aktif`, `groupname`, `urutan`, `deskripsi`, `gambar`, `icon`) VALUES
(1, 0, 'BISNIS KAMI', '', 'Ya', 'satu', 1, NULL, NULL, NULL),
(2, 1, 'Produk Kami', '', 'Ya', '', 1, 'Kegiatan PERTAMINI dalam menyelenggarakan usaha di bidang energi dan petrokimia, terbagi ke dalam dua sector, yaitu Hulu dan Hilir, serta ditunjang oleh kegiatan Anak-Anak Perusahaan dan Perusahaan Patungan.', 'SPBU.jpg', NULL),
(5, 1, 'Pemegang Saham', '', 'Ya', '', 3, 'Pertamini adalah perusahaan energi nasional yang sahamnya 100% dimiliki oleh Pemerintah Republik Indonesia melalui kementerian Badan usaha milik negara(BUMN) selaku pemegang saham.', 'investor_relation.jpg', ''),
(4, 1, 'Energi Terbarukan', '', 'Ya', '', 2, 'Pertamini mengembangkan energi terbarukan seperti solar photovoltaic (solar cell), mikrohidro, green diesel, bio LNG dan lainnya.', 'renew_energy_PGE.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'LOGO_KABUPATEN_GARUT.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`, `deskripsi`) VALUES
(129, 0, 'Profil', '#', 'Ya', 'Bottom', 1, ''),
(150, 0, 'Program', '#', 'Tidak', 'Bottom', 0, ''),
(151, 153, 'Rencana Kerja', '#', 'Ya', 'Bottom', 0, ''),
(149, 134, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Top', 1, ''),
(131, 134, 'Sejarah', 'halaman/detail/sejarah-instansi', 'Ya', 'Top', 1, ''),
(132, 134, 'Visi dan Misi', 'halaman/detail/visi-dan-misi', 'Ya', 'Top', 1, ''),
(153, 150, 'Program Dinas', '#', 'Ya', 'Bottom', 0, ''),
(134, 129, 'Profil Dinas', '#', 'Ya', 'Bottom', 1, ''),
(157, 156, 'Geografis', '', 'Ya', 'Bottom', 2, ''),
(156, 0, 'Wilayah', '#', 'Ya', 'Bottom', 2, ''),
(142, 0, 'MEDIA & INFORMASI', '#', 'Ya', 'Bottom', 0, ''),
(143, 142, 'Berita & Artikel', '#', 'Ya', 'Bottom', 0, ''),
(144, 142, 'AGENDA', '#', 'Ya', 'Bottom', 0, ''),
(145, 144, 'Agenda Kegiatan', 'agenda', 'Ya', 'Bottom', 0, ''),
(146, 143, 'Berita', 'berita', 'Ya', 'Bottom', 0, ''),
(147, 143, 'Galeri', 'albums', 'Ya', 'Bottom', 0, ''),
(148, 143, 'Video', 'playlist', 'Ya', 'Bottom', 0, ''),
(152, 153, 'Rencana Strategis', '#', 'Ya', 'Bottom', 0, ''),
(158, 157, 'Keadaan Geografis', 'halaman/detail/keadaan-geografis', 'Ya', 'Top', 2, ''),
(159, 157, 'Luas Wilayah', 'halaman/detail/luas-wilayah', 'Ya', 'Top', 2, ''),
(160, 157, 'Batas Wilayah', 'halaman/detail/batas-wilayah', 'Ya', 'Top', 2, ''),
(161, 157, 'Orbitrasi', 'halaman/detail/orbitrasi', 'Ya', 'Top', 2, ''),
(162, 0, 'Kependudukan', '#', 'Ya', 'Bottom', 3, ''),
(163, 162, 'Data Penduduk', '#', 'Ya', 'Bottom', 3, ''),
(164, 163, 'Data Penduduk', 'halaman/detail/data-penduduk', 'Ya', 'Top', 3, ''),
(165, 157, 'Wilayah Administratif', 'halaman/detail/wilayah-administratif', 'Ya', 'Top', 2, ''),
(166, 163, 'Lembaga Kemasyarakatan', 'halaman/detail/lembaga-kemasyarakatan', 'Ya', 'Top', 3, ''),
(167, 163, 'Keagamaan', 'halaman/detail/keagamaan', 'Ya', 'Top', 3, ''),
(168, 163, 'Pendidikan', 'halaman/detail/pendidikan', 'Ya', 'Top', 3, ''),
(169, 163, 'Kebudayaan', 'halaman/detail/kebudayaan', 'Ya', 'Top', 3, ''),
(170, 163, 'Kesehatan', 'halaman/detail/kesehatan', 'Ya', 'Top', 3, ''),
(171, 163, 'Ekonomi', 'halaman/detail/ekonomi', 'Ya', 'Top', 3, ''),
(172, 134, 'Tugas Pokok dan Fungsi', 'halaman/detail/tugas-pokok-dan-fungsi', 'Ya', 'Top', 1, ''),
(173, 0, 'Layanan', '#', 'Ya', 'Bottom', 0, ''),
(176, 173, 'Layanan Tersedia', '#', 'Ya', 'Bottom', 1, ''),
(175, 176, 'Surat Keterangan', 'http://localhost/KP/suket/', 'Ya', 'Top', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Alamat Kantor :&nbsp;</strong>Jl. Cimanuk No II</p>\r\n\r\n<p><strong>Telpon :</strong> 0202 541503</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Iklan Sidebar Kiri', 'admin', 'http://www.lokomedia.web.id', 'lokomedia.png', '2017-10-11'),
(2, 'Iklan Sidebar Kanan', 'admin', 'http://www.lokomedia.web.id', 'lawan-korupsi.png', '2018-08-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(61, 'Video Umum', 'admin', 'video-umum', 'karawangku.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapa yang layak jadi juara Liga Champions 2017-2018 ', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Real Madrid', 'Jawaban', 'admin', 35, 'Y'),
(31, 'Juventus', 'Jawaban', 'admin', 7, 'Y'),
(32, 'Manchester City', 'Jawaban', 'admin', 9, 'Y'),
(33, 'Paris Saint Germain', 'Jawaban', 'admin', 10, 'Y'),
(35, 'Manchester United', 'Jawaban', 'admin', 10, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sku`
--

CREATE TABLE `sku` (
  `id_surat_sku` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `jenis_kelamin` varchar(125) NOT NULL,
  `tempat_lahir` varchar(125) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(125) NOT NULL,
  `pekerjaan` varchar(125) NOT NULL,
  `rt` varchar(125) NOT NULL,
  `rw` varchar(125) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kab_kota` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_surat` varchar(125) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sku`
--

INSERT INTO `sku` (`id_surat_sku`, `nama`, `no_nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pekerjaan`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kab_kota`, `alamat`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 'Fauzan Herdika Tubagus Putra', 1234, 'Laki-Laki', 'Bandung', '2012-12-28', 'Islam', 'Wirausaha', '005', '002', 'Muarasanding', 'Garut Kota', 'Kabupaten Garut', 'Muarasanding Regency', 'Surat Keterangan Usaha', '2020-12-04', 'Ditolak'),
(2, 'Fauzan Herdika Tubagus Putra', 1234, 'Laki-Laki', 'Bandung', '2009-12-31', 'Islam', 'Wirausaha', '05', '04', 'Muarasanding', 'Cileunyi', 'Kota Bandung', 'Muarasanding', 'Surat Keterangan Usaha', '2020-12-14', 'Diterima'),
(3, 'Muhammad Aqil Al - Muhtadi', 1111, 'Laki - Laki', 'Bandung', '2000-09-11', 'Islam', 'Mahasiswa', '4', '19', 'Muarasanding', 'Garut Kota', 'Garut', 'Muarasanding Regency', 'Surat Keterangan Usaha', '2021-02-17', 'Diterima'),
(4, 'Muhammad Aqil Al - Muhtadi', 1111, 'Laki - Laki', 'Bandung', '2000-09-11', 'Islam', 'Mahasiswa', '4', '19', 'Muarasanding', 'Garut Kota', 'Garut', 'xdfsds', 'Surat Keterangan Usaha', '2021-03-04', 'Pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_bedanama`
--

CREATE TABLE `sk_bedanama` (
  `id_surat_bedanama` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `nama_kk` varchar(125) NOT NULL,
  `tempat_lahir_kk` varchar(125) NOT NULL,
  `tanggal_lahir_kk` date NOT NULL,
  `jenis_kelamin_kk` varchar(25) NOT NULL,
  `nama_ktp` varchar(125) NOT NULL,
  `tempat_lahir_ktp` varchar(125) NOT NULL,
  `tanggal_lahir_ktp` date NOT NULL,
  `jenis_kelamin_ktp` varchar(25) NOT NULL,
  `keperluan` varchar(25) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_bedanama`
--

INSERT INTO `sk_bedanama` (`id_surat_bedanama`, `no_nik`, `nama`, `nama_kk`, `tempat_lahir_kk`, `tanggal_lahir_kk`, `jenis_kelamin_kk`, `nama_ktp`, `tempat_lahir_ktp`, `tanggal_lahir_ktp`, `jenis_kelamin_ktp`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'aqil ', 'Bandung', '2000-09-11', 'Laki - Laki', 'STAN', 'Surat Keterangan Beda Nama', '2021-02-19', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_belumkerja`
--

CREATE TABLE `sk_belumkerja` (
  `id_surat_belumkerja` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(125) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(25) NOT NULL,
  `status_nikah` varchar(25) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_belumkerja`
--

INSERT INTO `sk_belumkerja` (`id_surat_belumkerja`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status_nikah`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Lajang', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'STAN', 'Surat Keterangan Belum Bekerja', '2021-02-19', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_belummenikah`
--

CREATE TABLE `sk_belummenikah` (
  `id_surat_belummenikah` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_belummenikah`
--

INSERT INTO `sk_belummenikah` (`id_surat_belummenikah`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'STAN', 'Surat Keterangan Belum Menikah', '2021-02-19', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_bmr`
--

CREATE TABLE `sk_bmr` (
  `id_surat_bmr` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `status_nikah` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_bmr`
--

INSERT INTO `sk_bmr` (`id_surat_bmr`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status_nikah`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Lajang', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'STAN', 'Surat Keterangan Belum Memiliki Rumah', '2021-02-19', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_bp`
--

CREATE TABLE `sk_bp` (
  `id_surat_bp` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_bp`
--

INSERT INTO `sk_bp` (`id_surat_bp`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'dsafaad', 'STAN', 'Surat Keterangan Biaya Penguburan', '2021-03-05', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_kehilangan`
--

CREATE TABLE `sk_kehilangan` (
  `id_surat_kehilangan` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `barang_hilang` varchar(100) NOT NULL,
  `no_seri` varchar(100) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_kehilangan`
--

INSERT INTO `sk_kehilangan` (`id_surat_kehilangan`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `barang_hilang`, `no_seri`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'KTP', '34213214', 'Surat Keterangan Kehilangan', '2021-02-20', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_kelakuanbaik`
--

CREATE TABLE `sk_kelakuanbaik` (
  `id_surat_kelakuanbaik` int(11) NOT NULL,
  `no_nik` varchar(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(25) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `RT` int(10) NOT NULL,
  `RW` int(10) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_kelakuanbaik`
--

INSERT INTO `sk_kelakuanbaik` (`id_surat_kelakuanbaik`, `no_nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `RT`, `RW`, `alamat`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(2, '1111', 'Muhammad Aqil Al - Muhtadi', 'Laki - Laki', 'Bandung', '2000-09-11', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'Surat Keterangan Kelakuan Baik', '2021-02-17', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_penghasilan`
--

CREATE TABLE `sk_penghasilan` (
  `id_surat_penghasilan` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `terbilang` varchar(100) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_penghasilan`
--

INSERT INTO `sk_penghasilan` (`id_surat_penghasilan`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `penghasilan`, `terbilang`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(0, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'Rp.500.000,-', 'Lima Ratus Ribu', 'Surat Keterangan Penghasilan', '2021-02-20', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_ptt`
--

CREATE TABLE `sk_ptt` (
  `id_surat_ptt` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_ptt`
--

INSERT INTO `sk_ptt` (`id_surat_ptt`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'Muarasanding Regency', 'Surat Keterangan Pernikahan Tidak Tercatat', '2021-02-22', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sk_rumahrubuh`
--

CREATE TABLE `sk_rumahrubuh` (
  `id_surat_rumahrubuh` int(11) NOT NULL,
  `no_nik` int(16) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `rt` int(50) NOT NULL,
  `rw` int(50) NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `waktu_kejadian` varchar(50) NOT NULL,
  `kerugian` varchar(50) NOT NULL,
  `keperluan` varchar(125) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `tgl_ajukan_surat` date NOT NULL,
  `status_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sk_rumahrubuh`
--

INSERT INTO `sk_rumahrubuh` (`id_surat_rumahrubuh`, `no_nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `pekerjaan`, `kab_kota`, `kecamatan`, `desa`, `rt`, `rw`, `alamat`, `tgl_kejadian`, `waktu_kejadian`, `kerugian`, `keperluan`, `jenis_surat`, `tgl_ajukan_surat`, `status_surat`) VALUES
(1, 1111, 'Muhammad Aqil Al - Muhtadi', 'Bandung', '2000-09-11', 'Laki - Laki', 'Islam', 'Mahasiswa', 'Garut', 'Garut Kota', 'Muarasanding', 4, 19, 'asdasd', '2021-01-01', '08.00 WIB', 'Rp 1.000.000,-', 'PT Garda 29', 'Surat Keterangan Rumah Rubuh', '2021-03-08', 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2017-05-29', 1, '1496031966'),
('::1', '2017-08-04', 2, '1501862778'),
('::1', '2017-08-05', 3, '1501890677'),
('::1', '2017-09-13', 5, '1505272460'),
('::1', '2017-09-22', 5, '1506065936'),
('::1', '2017-09-24', 6, '1506263121'),
('::1', '2017-09-27', 1, '1506491577'),
('::1', '2017-09-28', 20, '1506614988'),
('::1', '2017-09-29', 308, '1506696202'),
('::1', '2017-09-30', 495, '1506783608'),
('::1', '2017-10-01', 77, '1506868529'),
('::1', '2017-10-02', 353, '1506962237'),
('::1', '2017-10-03', 16, '1507035971'),
('::1', '2017-10-04', 159, '1507123395'),
('::1', '2017-10-05', 38, '1507218119'),
('::1', '2017-10-06', 68, '1507275289'),
('::1', '2017-10-07', 1, '1507361033'),
('::1', '2017-10-08', 1, '1507413903'),
('::1', '2017-10-11', 4, '1507704206'),
('::1', '2017-10-31', 8, '1509435169'),
('::1', '2017-11-11', 1, '1510417532'),
('::1', '2017-11-12', 45, '1510481123'),
('::1', '2017-11-13', 38, '1510568837'),
('::1', '2018-08-25', 30, '1535191969'),
('::1', '2018-08-26', 2, '1535246562'),
('::1', '2018-08-27', 7, '1535378738'),
('::1', '2018-08-30', 1, '1535576820'),
('::1', '2018-08-31', 9, '1535732014'),
('110.138.150.110', '2018-12-03', 2, '1543855812'),
('110.138.150.110', '2018-12-04', 11, '1543857572'),
('115.178.251.153', '2018-12-08', 1, '1544231764'),
('141.8.142.101', '2018-12-13', 1, '1544651736'),
('::1', '2018-12-15', 3, '1544864222'),
('::1', '2018-12-20', 47, '1545303770'),
('202.150.144.150', '2018-12-20', 2, '1545304092'),
('125.161.84.181', '2018-12-20', 10, '1545322660'),
('66.96.228.105', '2018-12-21', 1, '1545355325'),
('125.161.84.181', '2018-12-22', 4, '1545434346'),
('182.0.180.19', '2018-12-22', 2, '1545441562'),
('182.0.204.171', '2018-12-22', 1, '1545494525'),
('118.96.92.133', '2018-12-23', 6, '1545515886'),
('114.124.174.146', '2018-12-23', 1, '1545542696'),
('125.161.84.181', '2018-12-23', 2, '1545578365'),
('66.96.228.105', '2018-12-25', 1, '1545723398'),
('66.249.71.76', '2018-12-26', 1, '1545771742'),
('66.249.71.82', '2018-12-26', 1, '1545776597'),
('103.22.251.190', '2018-12-27', 20, '1545898631'),
('180.244.165.111', '2018-12-27', 2, '1545919245'),
('110.138.150.46', '2018-12-27', 6, '1545923315'),
('54.209.60.63', '2018-12-27', 4, '1545923686'),
('54.86.66.252', '2018-12-27', 2, '1545923641'),
('54.175.74.27', '2018-12-27', 2, '1545922745'),
('103.22.251.190', '2018-12-28', 3, '1545958383'),
('103.44.37.205', '2018-12-28', 1, '1546008406'),
('114.124.200.121', '2018-12-28', 1, '1546014138'),
('66.249.71.74', '2018-12-29', 4, '1546093329'),
('95.108.181.111', '2018-12-29', 1, '1546083508'),
('66.249.71.76', '2018-12-29', 3, '1546094904'),
('66.249.71.78', '2018-12-29', 1, '1546088814'),
('66.249.71.80', '2018-12-29', 1, '1546102275'),
('66.249.71.78', '2018-12-30', 7, '1546180864'),
('66.249.71.74', '2018-12-30', 3, '1546133664'),
('66.249.71.76', '2018-12-30', 3, '1546184016'),
('66.249.71.82', '2018-12-30', 3, '1546138236'),
('66.249.71.84', '2018-12-30', 1, '1546135653'),
('180.252.123.89', '2018-12-30', 40, '1546161736'),
('54.209.60.63', '2018-12-30', 5, '1546162023'),
('120.188.83.157', '2018-12-30', 6, '1546144279'),
('54.86.66.252', '2018-12-30', 5, '1546161946'),
('184.72.115.35', '2018-12-30', 4, '1546161969'),
('66.249.71.78', '2018-12-31', 5, '1546271778'),
('103.22.251.190', '2018-12-31', 4, '1546221825'),
('180.252.123.89', '2018-12-31', 15, '1546245979'),
('54.175.74.27', '2018-12-31', 1, '1546242394'),
('66.249.71.76', '2018-12-31', 2, '1546275362'),
('66.249.71.74', '2018-12-31', 4, '1546271554'),
('66.249.71.76', '2019-01-01', 3, '1546281298'),
('66.249.71.78', '2019-01-01', 3, '1546358903'),
('66.249.71.80', '2019-01-01', 2, '1546358238'),
('141.8.142.118', '2019-01-01', 1, '1546290175'),
('37.9.113.33', '2019-01-01', 1, '1546290440'),
('66.249.71.74', '2019-01-01', 2, '1546359634'),
('66.249.71.82', '2019-01-01', 1, '1546351958'),
('66.249.71.78', '2019-01-02', 9, '1546381496'),
('66.249.79.10', '2019-01-02', 1, '1546367648'),
('66.249.71.76', '2019-01-02', 11, '1546382015'),
('66.249.71.74', '2019-01-02', 7, '1546382234'),
('141.8.142.101', '2019-01-02', 1, '1546372600'),
('103.22.251.190', '2019-01-02', 3, '1546420295'),
('202.150.144.150', '2019-01-02', 57, '1546426821'),
('54.209.60.63', '2019-01-02', 2, '1546425896'),
('178.154.171.43', '2019-01-02', 1, '1546412093'),
('54.86.66.252', '2019-01-02', 2, '1546425896'),
('52.71.155.178', '2019-01-02', 1, '1546422347'),
('180.243.245.25', '2019-01-02', 3, '1546444927'),
('180.243.245.25', '2019-01-03', 4, '1546453402'),
('115.178.212.29', '2019-01-03', 2, '1546473425'),
('87.228.16.238', '2019-01-03', 1, '1546471759'),
('103.22.251.190', '2019-01-03', 1, '1546475762'),
('66.249.71.76', '2019-01-03', 1, '1546512495'),
('120.188.81.189', '2019-01-03', 4, '1546518823'),
('66.249.71.78', '2019-01-03', 2, '1546532293'),
('95.108.181.108', '2019-01-03', 1, '1546519335'),
('66.249.71.82', '2019-01-03', 1, '1546519914'),
('66.249.71.74', '2019-01-03', 2, '1546527893'),
('66.249.71.84', '2019-01-03', 3, '1546528804'),
('66.249.71.80', '2019-01-03', 3, '1546532408'),
('66.249.71.78', '2019-01-04', 1, '1546534824'),
('104.248.145.107', '2019-01-04', 1, '1546557103'),
('178.154.171.43', '2019-01-04', 1, '1546557759'),
('66.249.71.76', '2019-01-04', 2, '1546619005'),
('103.22.251.190', '2019-01-04', 1, '1546564131'),
('202.150.144.150', '2019-01-04', 1, '1546581657'),
('37.9.113.33', '2019-01-04', 2, '1546620746'),
('66.249.71.74', '2019-01-04', 2, '1546614909'),
('141.8.142.101', '2019-01-04', 1, '1546620720'),
('180.251.137.168', '2019-01-04', 1, '1546621034'),
('180.251.137.168', '2019-01-05', 25, '1546683617'),
('115.178.216.75', '2019-01-05', 1, '1546623156'),
('66.249.71.74', '2019-01-05', 6, '1546704536'),
('66.249.71.78', '2019-01-05', 4, '1546704014'),
('66.249.71.76', '2019-01-05', 8, '1546703841'),
('66.249.71.80', '2019-01-05', 2, '1546694494'),
('104.248.145.116', '2019-01-05', 1, '1546657479'),
('114.124.182.232', '2019-01-05', 1, '1546659127'),
('5.164.160.213', '2019-01-05', 1, '1546666662'),
('188.166.231.101', '2019-01-05', 1, '1546666747'),
('110.138.149.80', '2019-01-05', 11, '1546668934'),
('52.71.155.178', '2019-01-05', 1, '1546667125'),
('184.72.115.35', '2019-01-05', 3, '1546680722'),
('54.209.60.63', '2019-01-05', 1, '1546680108'),
('128.199.120.251', '2019-01-05', 1, '1546680849'),
('46.0.128.100', '2019-01-05', 1, '1546699582'),
('66.249.71.128', '2019-01-05', 1, '1546704884'),
('66.249.71.76', '2019-01-06', 2, '1546714454'),
('66.249.71.78', '2019-01-06', 1, '1546710191'),
('66.249.71.74', '2019-01-06', 1, '1546714541'),
('180.251.137.168', '2019-01-06', 3, '1546785568'),
('141.8.142.101', '2019-01-06', 1, '1546729850'),
('120.188.80.197', '2019-01-06', 2, '1546755787'),
('66.249.71.82', '2019-01-06', 1, '1546757963'),
('52.71.155.178', '2019-01-06', 1, '1546769595'),
('23.237.4.26', '2019-01-06', 2, '1546775616'),
('37.9.113.33', '2019-01-06', 1, '1546779451'),
('141.8.142.118', '2019-01-06', 1, '1546779452'),
('103.22.251.190', '2019-01-07', 1, '1546826016'),
('202.150.144.150', '2019-01-07', 38, '1546859174'),
('54.209.60.63', '2019-01-07', 1, '1546827241'),
('83.217.214.72', '2019-01-07', 1, '1546846866'),
('52.71.155.178', '2019-01-07', 3, '1546859561'),
('54.175.74.27', '2019-01-07', 2, '1546874023'),
('54.86.66.252', '2019-01-07', 1, '1546859682'),
('180.251.137.168', '2019-01-07', 4, '1546880192'),
('64.62.232.44', '2019-01-07', 2, '1546878448'),
('184.72.115.35', '2019-01-07', 1, '1546880294'),
('180.251.137.168', '2019-01-08', 5, '1546880656'),
('184.72.115.35', '2019-01-08', 2, '1546881582'),
('54.175.74.27', '2019-01-08', 1, '1546881571'),
('52.71.155.178', '2019-01-08', 2, '1546881574'),
('95.220.210.29', '2019-01-08', 1, '1546903469'),
('37.9.113.160', '2019-01-08', 1, '1546926519'),
('180.251.137.168', '2019-01-09', 33, '1546985750'),
('54.209.60.63', '2019-01-09', 6, '1547026088'),
('52.71.155.178', '2019-01-09', 5, '1547026077'),
('54.86.66.252', '2019-01-09', 6, '1547017403'),
('141.8.142.101', '2019-01-09', 1, '1546983406'),
('89.179.106.247', '2019-01-09', 1, '1546986303'),
('66.249.71.84', '2019-01-09', 1, '1546991500'),
('202.150.144.150', '2019-01-09', 13, '1547016954'),
('184.72.115.35', '2019-01-09', 1, '1547017333'),
('103.22.251.190', '2019-01-09', 2, '1547022365'),
('54.175.74.27', '2019-01-09', 2, '1547026082'),
('37.9.113.33', '2019-01-09', 1, '1547049359'),
('37.9.113.33', '2019-01-10', 1, '1547090069'),
('141.8.142.101', '2019-01-10', 1, '1547093177'),
('37.146.193.228', '2019-01-10', 1, '1547127127'),
('141.8.142.101', '2019-01-11', 2, '1547209800'),
('202.150.144.150', '2019-01-11', 1, '1547172971'),
('52.71.155.178', '2019-01-11', 1, '1547173755'),
('23.237.4.26', '2019-01-11', 3, '1547199054'),
('109.173.101.59', '2019-01-11', 1, '1547199506'),
('128.69.144.84', '2019-01-11', 1, '1547214129'),
('110.138.148.38', '2019-01-11', 16, '1547225754'),
('54.86.66.252', '2019-01-11', 1, '1547219107'),
('110.138.148.38', '2019-01-12', 20, '1547303273'),
('52.71.155.178', '2019-01-12', 4, '1547228730'),
('54.86.66.252', '2019-01-12', 5, '1547232009'),
('184.72.115.35', '2019-01-12', 3, '1547229560'),
('89.178.225.19', '2019-01-12', 1, '1547248233'),
('182.1.119.89', '2019-01-12', 5, '1547249832'),
('37.204.142.87', '2019-01-12', 1, '1547277032'),
('176.15.231.136', '2019-01-12', 1, '1547289512'),
('128.204.21.113', '2019-01-12', 1, '1547306851'),
('87.228.16.238', '2019-01-13', 1, '1547320904'),
('37.9.113.14', '2019-01-13', 1, '1547324807'),
('178.154.171.37', '2019-01-13', 1, '1547351095'),
('128.204.35.230', '2019-01-13', 1, '1547366690'),
('87.240.53.31', '2019-01-14', 1, '1547404303'),
('37.110.50.217', '2019-01-14', 1, '1547404303'),
('46.42.160.194', '2019-01-14', 1, '1547422958'),
('202.150.144.150', '2019-01-14', 1, '1547432637'),
('104.194.2.5', '2019-01-14', 2, '1547432689'),
('54.86.66.252', '2019-01-14', 1, '1547433211'),
('110.138.149.40', '2019-01-14', 9, '1547447218'),
('54.209.60.63', '2019-01-14', 1, '1547458935'),
('110.138.148.38', '2019-01-14', 1, '1547461372'),
('141.8.142.101', '2019-01-14', 1, '1547479426'),
('128.68.218.162', '2019-01-15', 1, '1547498440'),
('37.9.113.14', '2019-01-15', 1, '1547520494'),
('222.124.217.26', '2019-01-16', 1, '1547629265'),
('46.188.24.155', '2019-01-16', 1, '1547631248'),
('141.8.142.101', '2019-01-16', 1, '1547638678'),
('37.9.113.33', '2019-01-16', 1, '1547649522'),
('141.8.142.101', '2019-01-17', 2, '1547735025'),
('37.146.193.228', '2019-01-17', 1, '1547665797'),
('36.70.60.2', '2019-01-17', 6, '1547713187'),
('202.150.144.150', '2019-01-17', 3, '1547711426'),
('110.138.148.230', '2019-01-17', 1, '1547730077'),
('5.45.207.60', '2019-01-17', 1, '1547735136'),
('110.138.148.230', '2019-01-18', 1, '1547759471'),
('128.68.218.162', '2019-01-18', 1, '1547766416'),
('202.150.144.150', '2019-01-18', 1, '1547775804'),
('180.252.140.255', '2019-01-22', 1, '1548109830'),
('54.175.74.27', '2019-01-22', 1, '1548110013'),
('87.250.224.114', '2019-01-22', 1, '1548120027'),
('141.8.142.162', '2019-01-22', 1, '1548121656'),
('141.8.142.101', '2019-01-22', 1, '1548156434'),
('87.250.224.124', '2019-01-26', 2, '1548487746'),
('141.8.142.192', '2019-01-26', 1, '1548447970'),
('141.8.142.127', '2019-01-26', 1, '1548480194'),
('213.180.203.29', '2019-01-26', 1, '1548480197'),
('5.255.253.3', '2019-01-26', 1, '1548486810'),
('178.154.244.18', '2019-01-26', 1, '1548487113'),
('66.249.71.76', '2019-01-27', 1, '1548565319'),
('66.249.71.78', '2019-01-28', 1, '1548629575'),
('141.8.142.101', '2019-01-28', 1, '1548680146'),
('115.178.209.32', '2019-01-29', 5, '1548706917'),
('114.6.76.2', '2019-01-29', 1, '1548724521'),
('125.161.106.233', '2019-01-29', 1, '1548728754'),
('103.14.44.130', '2019-01-29', 2, '1548766351'),
('103.233.154.10', '2019-01-29', 3, '1548740261'),
('36.78.75.90', '2019-01-29', 1, '1548746371'),
('163.53.186.2', '2019-01-29', 1, '1548748507'),
('125.161.169.211', '2019-01-29', 1, '1548778687'),
('5.165.47.86', '2019-01-30', 1, '1548794580'),
('37.9.113.86', '2019-01-30', 1, '1548837487'),
('37.9.113.107', '2019-01-30', 1, '1548838129'),
('37.9.113.33', '2019-01-31', 1, '1548874682'),
('95.27.251.93', '2019-01-31', 1, '1548878629'),
('66.249.71.76', '2019-02-02', 2, '1549117511'),
('37.9.113.199', '2019-02-03', 1, '1549204947'),
('141.8.142.103', '2019-02-04', 1, '1549218715'),
('141.8.142.101', '2019-02-04', 1, '1549287944'),
('37.9.113.33', '2019-02-05', 2, '1549345856'),
('66.249.71.76', '2019-02-07', 1, '1549542013'),
('66.249.71.74', '2019-02-08', 1, '1549604666'),
('95.108.181.102', '2019-02-10', 1, '1549804400'),
('37.9.113.14', '2019-02-10', 1, '1549817280'),
('202.150.144.150', '2019-02-11', 9, '1549873334'),
('141.8.142.101', '2019-02-11', 1, '1549892166'),
('202.150.144.150', '2019-02-12', 2, '1549945353'),
('66.249.71.74', '2019-02-13', 1, '1550028418'),
('202.150.144.150', '2019-02-13', 43, '1550055129'),
('141.8.142.101', '2019-02-14', 1, '1550083200'),
('110.137.195.236', '2019-02-14', 47, '1550099094'),
('66.249.71.78', '2019-02-14', 1, '1550094440'),
('141.8.142.101', '2019-02-15', 2, '1550201773'),
('37.9.113.33', '2019-02-15', 1, '1550218437'),
('66.249.71.74', '2019-02-19', 1, '1550517907'),
('141.8.142.103', '2019-02-19', 1, '1550571550'),
('66.249.71.76', '2019-02-19', 1, '1550582647'),
('110.138.148.170', '2019-02-20', 25, '1550654978'),
('202.150.144.150', '2019-02-21', 121, '1550745556'),
('37.9.113.33', '2019-02-21', 1, '1550729109'),
('178.154.244.55', '2019-02-21', 1, '1550750575'),
('37.9.113.107', '2019-02-21', 1, '1550755252'),
('180.243.245.175', '2019-02-21', 4, '1550764556'),
('180.243.245.175', '2019-02-22', 3, '1550770295'),
('202.150.144.150', '2019-02-22', 2, '1550823447'),
('114.124.202.143', '2019-02-22', 1, '1550826428'),
('95.27.184.26', '2019-02-23', 1, '1550889254'),
('110.137.209.112', '2019-02-23', 1, '1550932503'),
('110.138.150.224', '2019-02-24', 15, '1551017356'),
('104.194.2.5', '2019-02-24', 2, '1550944886'),
('66.220.149.5', '2019-02-24', 1, '1550945541'),
('66.220.149.9', '2019-02-24', 1, '1550945541'),
('36.73.145.133', '2019-02-24', 1, '1550945567'),
('125.163.229.7', '2019-02-24', 5, '1550945629'),
('178.128.50.28', '2019-02-24', 1, '1550945644'),
('118.96.153.223', '2019-02-24', 1, '1550945691'),
('36.77.128.166', '2019-02-24', 1, '1550945792'),
('115.164.93.39', '2019-02-24', 3, '1550946546'),
('95.70.207.154', '2019-02-24', 1, '1550945813'),
('36.82.102.60', '2019-02-24', 3, '1550945882'),
('112.215.173.73', '2019-02-24', 5, '1550945916'),
('114.4.216.0', '2019-02-24', 1, '1550945881'),
('223.255.230.71', '2019-02-24', 1, '1550945895'),
('36.74.181.176', '2019-02-24', 3, '1550945949'),
('46.104.40.216', '2019-02-24', 1, '1550945910'),
('223.164.5.161', '2019-02-24', 2, '1550946116'),
('116.206.9.56', '2019-02-24', 6, '1550946174'),
('36.69.139.128', '2019-02-24', 1, '1550946106'),
('182.1.10.196', '2019-02-24', 1, '1550946110'),
('1.200.221.143', '2019-02-24', 1, '1550946115'),
('140.213.4.240', '2019-02-24', 1, '1550946168'),
('180.241.202.99', '2019-02-24', 2, '1550946193'),
('182.0.146.119', '2019-02-24', 3, '1550946300'),
('36.70.185.61', '2019-02-24', 1, '1550946273'),
('182.0.215.119', '2019-02-24', 5, '1550946450'),
('182.1.201.159', '2019-02-24', 1, '1550946507'),
('114.125.11.85', '2019-02-24', 1, '1550946540'),
('139.193.10.41', '2019-02-24', 2, '1550946692'),
('182.253.48.62', '2019-02-24', 6, '1550946780'),
('182.0.242.147', '2019-02-24', 3, '1550946786'),
('182.30.199.223', '2019-02-24', 2, '1550946814'),
('114.125.230.46', '2019-02-24', 1, '1550947037'),
('180.214.232.30', '2019-02-24', 1, '1550947092'),
('180.246.151.206', '2019-02-24', 1, '1550947189'),
('203.78.118.57', '2019-02-24', 4, '1550947289'),
('114.142.172.37', '2019-02-24', 1, '1550947241'),
('114.4.82.33', '2019-02-24', 1, '1550947315'),
('202.80.217.72', '2019-02-24', 16, '1550947603'),
('216.162.47.69', '2019-02-24', 1, '1550947374'),
('139.192.106.123', '2019-02-24', 1, '1550947493'),
('103.44.37.175', '2019-02-24', 1, '1550947498'),
('114.124.235.202', '2019-02-24', 1, '1550947553'),
('202.67.37.2', '2019-02-24', 5, '1550947640'),
('223.255.230.25', '2019-02-24', 3, '1550947770'),
('36.65.226.4', '2019-02-24', 1, '1550947753'),
('120.188.93.55', '2019-02-24', 2, '1550948012'),
('114.124.228.152', '2019-02-24', 3, '1550948281'),
('202.67.35.27', '2019-02-24', 6, '1550948935'),
('36.80.223.16', '2019-02-24', 2, '1550948948'),
('125.166.117.179', '2019-02-24', 2, '1550948756'),
('182.0.173.192', '2019-02-24', 2, '1550948844'),
('180.241.170.165', '2019-02-24', 1, '1550948861'),
('180.249.181.14', '2019-02-24', 1, '1550948923'),
('36.70.245.116', '2019-02-24', 1, '1550948971'),
('54.209.60.63', '2019-02-24', 4, '1550949278'),
('54.86.66.252', '2019-02-24', 5, '1550997517'),
('54.175.74.27', '2019-02-24', 2, '1550949213'),
('36.68.16.165', '2019-02-24', 1, '1550949231'),
('52.71.155.178', '2019-02-24', 3, '1551022410'),
('180.242.22.193', '2019-02-24', 2, '1550949499'),
('116.206.30.38', '2019-02-24', 3, '1550950249'),
('72.14.199.114', '2019-02-24', 1, '1550950278'),
('180.246.134.132', '2019-02-24', 3, '1550950724'),
('36.72.168.229', '2019-02-24', 1, '1550950766'),
('116.206.14.59', '2019-02-24', 1, '1550950790'),
('182.1.202.63', '2019-02-24', 4, '1550951277'),
('111.94.43.162', '2019-02-24', 7, '1550951352'),
('182.1.219.52', '2019-02-24', 1, '1550951310'),
('182.1.216.121', '2019-02-24', 1, '1550951349'),
('103.213.128.96', '2019-02-24', 1, '1550951463'),
('139.193.100.182', '2019-02-24', 3, '1550951632'),
('36.79.101.211', '2019-02-24', 6, '1550951738'),
('114.124.214.231', '2019-02-24', 4, '1550952311'),
('36.73.168.208', '2019-02-24', 2, '1550952499'),
('120.188.37.133', '2019-02-24', 3, '1550952604'),
('36.79.221.145', '2019-02-24', 1, '1550953110'),
('36.75.156.219', '2019-02-24', 7, '1550959856'),
('114.124.241.177', '2019-02-24', 1, '1550953873'),
('114.124.204.176', '2019-02-24', 5, '1550953932'),
('182.1.108.154', '2019-02-24', 4, '1550954741'),
('120.188.74.146', '2019-02-24', 2, '1550954541'),
('180.243.173.1', '2019-02-24', 3, '1550954854'),
('114.125.86.184', '2019-02-24', 4, '1550955135'),
('114.125.86.108', '2019-02-24', 3, '1550955362'),
('114.125.86.164', '2019-02-24', 4, '1550955498'),
('36.83.100.38', '2019-02-24', 2, '1550955635'),
('36.74.38.12', '2019-02-24', 1, '1550955626'),
('182.1.166.176', '2019-02-24', 1, '1550956187'),
('140.213.1.196', '2019-02-24', 1, '1550956284'),
('114.125.26.18', '2019-02-24', 1, '1550956820'),
('180.211.93.218', '2019-02-24', 3, '1550957433'),
('36.65.227.23', '2019-02-24', 1, '1550957624'),
('139.192.201.7', '2019-02-24', 2, '1551004659'),
('182.1.76.5', '2019-02-24', 1, '1550958067'),
('114.125.29.111', '2019-02-24', 1, '1550958120'),
('111.94.201.150', '2019-02-24', 1, '1550958173'),
('114.4.83.150', '2019-02-24', 2, '1550958320'),
('36.70.10.237', '2019-02-24', 1, '1550958673'),
('182.0.151.52', '2019-02-24', 2, '1550958844'),
('114.125.167.78', '2019-02-24', 1, '1550959013'),
('114.125.170.54', '2019-02-24', 1, '1550959139'),
('180.253.150.202', '2019-02-24', 1, '1550959339'),
('182.1.197.90', '2019-02-24', 1, '1550959632'),
('180.243.250.100', '2019-02-24', 2, '1550960076'),
('112.215.219.170', '2019-02-24', 1, '1550960094'),
('203.78.121.125', '2019-02-24', 1, '1550960336'),
('114.4.217.153', '2019-02-24', 4, '1550960658'),
('116.206.8.58', '2019-02-24', 2, '1550960763'),
('61.94.246.246', '2019-02-24', 1, '1550960737'),
('36.83.131.85', '2019-02-24', 1, '1550961032'),
('66.220.149.22', '2019-02-24', 1, '1550961106'),
('114.124.132.14', '2019-02-24', 1, '1550961257'),
('110.138.151.0', '2019-02-24', 1, '1550961264'),
('114.124.200.115', '2019-02-24', 1, '1550961354'),
('36.74.153.128', '2019-02-24', 1, '1550961480'),
('180.244.235.118', '2019-02-24', 8, '1550961662'),
('114.142.172.22', '2019-02-24', 1, '1550961605'),
('115.178.254.42', '2019-02-24', 1, '1550961650'),
('114.5.144.190', '2019-02-24', 4, '1550961852'),
('116.206.42.78', '2019-02-24', 2, '1550961951'),
('114.124.176.190', '2019-02-24', 2, '1550962157'),
('36.73.142.126', '2019-02-24', 1, '1550962325'),
('114.125.39.59', '2019-02-24', 1, '1550962360'),
('182.1.8.237', '2019-02-24', 2, '1550962672'),
('182.1.94.225', '2019-02-24', 1, '1550962722'),
('115.178.223.136', '2019-02-24', 1, '1550962938'),
('180.251.133.244', '2019-02-24', 1, '1550963023'),
('120.188.65.239', '2019-02-24', 1, '1550963037'),
('180.246.150.188', '2019-02-24', 2, '1550963140'),
('182.1.92.211', '2019-02-24', 1, '1550963390'),
('36.71.232.66', '2019-02-24', 1, '1550963413'),
('202.67.45.22', '2019-02-24', 3, '1550963482'),
('116.206.9.26', '2019-02-24', 3, '1551021984'),
('36.80.107.105', '2019-02-24', 1, '1550963725'),
('120.188.66.65', '2019-02-24', 1, '1550963726'),
('36.82.235.134', '2019-02-24', 4, '1550963853'),
('182.1.32.182', '2019-02-24', 1, '1550963918'),
('114.124.177.233', '2019-02-24', 3, '1550963978'),
('116.206.14.49', '2019-02-24', 3, '1550964057'),
('112.215.244.76', '2019-02-24', 1, '1550963991'),
('114.142.168.22', '2019-02-24', 2, '1550964701'),
('114.125.58.200', '2019-02-24', 1, '1550964338'),
('180.253.183.124', '2019-02-24', 1, '1550964340'),
('114.4.213.105', '2019-02-24', 1, '1550964374'),
('182.1.179.84', '2019-02-24', 5, '1550964534'),
('114.5.212.95', '2019-02-24', 2, '1550964669'),
('112.215.239.159', '2019-02-24', 3, '1550964831'),
('202.67.46.237', '2019-02-24', 3, '1550965054'),
('114.124.247.137', '2019-02-24', 1, '1550965214'),
('116.206.29.89', '2019-02-24', 1, '1550965280'),
('112.215.242.204', '2019-02-24', 8, '1550965446'),
('114.124.174.33', '2019-02-24', 1, '1550965428'),
('180.244.235.208', '2019-02-24', 1, '1550965643'),
('125.167.173.218', '2019-02-24', 3, '1550965822'),
('182.1.25.73', '2019-02-24', 2, '1550965941'),
('180.245.113.166', '2019-02-24', 1, '1550966049'),
('120.188.32.62', '2019-02-24', 1, '1550966081'),
('115.178.236.157', '2019-02-24', 1, '1550966180'),
('182.0.139.158', '2019-02-24', 2, '1550966275'),
('114.125.120.142', '2019-02-24', 2, '1550966231'),
('114.124.206.154', '2019-02-24', 1, '1550966309'),
('36.84.227.223', '2019-02-24', 2, '1550966374'),
('173.252.87.21', '2019-02-24', 1, '1550966367'),
('141.0.8.78', '2019-02-24', 2, '1550966642'),
('36.72.251.188', '2019-02-24', 2, '1550966695'),
('114.4.216.210', '2019-02-24', 2, '1550966718'),
('115.178.252.233', '2019-02-24', 1, '1550966780'),
('114.125.54.160', '2019-02-24', 3, '1550967008'),
('114.5.209.52', '2019-02-24', 2, '1550966976'),
('114.4.219.203', '2019-02-24', 1, '1550967002'),
('114.4.212.243', '2019-02-24', 3, '1550967055'),
('182.1.39.246', '2019-02-24', 1, '1550967039'),
('36.81.5.142', '2019-02-24', 2, '1550967361'),
('114.124.177.183', '2019-02-24', 2, '1550967455'),
('140.213.31.175', '2019-02-24', 3, '1550967567'),
('182.1.39.47', '2019-02-24', 2, '1550967660'),
('180.244.88.11', '2019-02-24', 3, '1550967781'),
('36.68.6.154', '2019-02-24', 3, '1550967903'),
('202.67.43.44', '2019-02-24', 2, '1550968001'),
('125.166.177.193', '2019-02-24', 1, '1550968048'),
('114.125.108.116', '2019-02-24', 3, '1550968333'),
('141.0.8.53', '2019-02-24', 1, '1550968153'),
('36.77.84.37', '2019-02-24', 3, '1550968309'),
('114.125.59.236', '2019-02-24', 2, '1550968409'),
('36.90.44.72', '2019-02-24', 1, '1550968389'),
('114.4.221.83', '2019-02-24', 3, '1550968801'),
('114.125.168.45', '2019-02-24', 1, '1550968852'),
('112.215.220.114', '2019-02-24', 3, '1550975644'),
('203.78.119.119', '2019-02-24', 7, '1550969507'),
('180.243.231.91', '2019-02-24', 1, '1550969210'),
('114.124.150.216', '2019-02-24', 1, '1550969519'),
('114.125.100.56', '2019-02-24', 3, '1550969609'),
('36.75.187.65', '2019-02-24', 1, '1550969579'),
('103.10.67.170', '2019-02-24', 2, '1550969651'),
('202.80.216.157', '2019-02-24', 5, '1550969642'),
('36.83.62.155', '2019-02-24', 1, '1550969635'),
('116.206.40.112', '2019-02-24', 1, '1550969640'),
('125.160.79.38', '2019-02-24', 3, '1550969770'),
('180.241.131.21', '2019-02-24', 3, '1550981781'),
('203.78.121.209', '2019-02-24', 4, '1550969866'),
('120.188.37.84', '2019-02-24', 1, '1550969948'),
('114.125.188.116', '2019-02-24', 1, '1550970247'),
('202.67.34.13', '2019-02-24', 5, '1550978470'),
('182.0.142.232', '2019-02-24', 1, '1550970304'),
('114.124.181.130', '2019-02-24', 1, '1550970377'),
('180.249.88.111', '2019-02-24', 2, '1550971824'),
('222.124.59.92', '2019-02-24', 18, '1550970645'),
('111.68.25.33', '2019-02-24', 1, '1550970661'),
('182.1.41.119', '2019-02-24', 7, '1550971265'),
('182.1.42.200', '2019-02-24', 3, '1550971836'),
('182.1.111.250', '2019-02-24', 1, '1550971002'),
('64.233.173.179', '2019-02-24', 1, '1550971075'),
('114.125.215.72', '2019-02-24', 1, '1550971079'),
('64.233.173.183', '2019-02-24', 1, '1550971082'),
('182.1.61.7', '2019-02-24', 1, '1550971188'),
('182.1.47.59', '2019-02-24', 1, '1550971226'),
('125.161.71.105', '2019-02-24', 1, '1550971395'),
('182.0.137.153', '2019-02-24', 1, '1550971773'),
('182.0.146.231', '2019-02-24', 6, '1550971888'),
('115.178.206.2', '2019-02-24', 1, '1550971897'),
('182.1.55.209', '2019-02-24', 1, '1550972017'),
('180.214.232.51', '2019-02-24', 1, '1550972080'),
('114.125.38.59', '2019-02-24', 4, '1550972350'),
('114.4.215.52', '2019-02-24', 1, '1550972113'),
('115.178.205.108', '2019-02-24', 3, '1550972238'),
('180.243.149.235', '2019-02-24', 1, '1550972460'),
('223.255.227.13', '2019-02-24', 4, '1550972638'),
('114.125.189.79', '2019-02-24', 1, '1550972655'),
('115.178.196.253', '2019-02-24', 2, '1550972963'),
('223.255.231.158', '2019-02-24', 1, '1550972938'),
('140.213.0.136', '2019-02-24', 5, '1550973077'),
('180.242.81.164', '2019-02-24', 2, '1550973251'),
('115.178.250.225', '2019-02-24', 2, '1550975778'),
('36.79.10.189', '2019-02-24', 1, '1550973602'),
('182.1.162.18', '2019-02-24', 2, '1550973640'),
('182.1.21.122', '2019-02-24', 2, '1550973653'),
('182.1.24.146', '2019-02-24', 1, '1550973664'),
('103.44.39.75', '2019-02-24', 1, '1550973708'),
('120.188.65.80', '2019-02-24', 1, '1550973713'),
('103.233.145.82', '2019-02-24', 1, '1550973832'),
('36.68.118.121', '2019-02-24', 1, '1550974003'),
('120.188.92.255', '2019-02-24', 1, '1550974069'),
('114.5.213.30', '2019-02-24', 2, '1550974148'),
('115.178.255.0', '2019-02-24', 1, '1550974143'),
('114.125.42.138', '2019-02-24', 2, '1550974275'),
('180.249.202.74', '2019-02-24', 1, '1550974336'),
('125.162.166.143', '2019-02-24', 1, '1550974385'),
('115.132.137.5', '2019-02-24', 1, '1550974419'),
('120.188.67.229', '2019-02-24', 1, '1550974701'),
('116.206.14.55', '2019-02-24', 1, '1550974871'),
('36.82.103.21', '2019-02-24', 1, '1550974901'),
('36.79.248.4', '2019-02-24', 2, '1550975038'),
('36.70.120.57', '2019-02-24', 1, '1550975033'),
('110.136.164.121', '2019-02-24', 1, '1550975083'),
('36.81.62.42', '2019-02-24', 1, '1550975406'),
('36.90.153.67', '2019-02-24', 1, '1550975421'),
('180.253.222.57', '2019-02-24', 2, '1550975573'),
('114.142.172.55', '2019-02-24', 5, '1550976153'),
('36.78.52.110', '2019-02-24', 1, '1550975878'),
('36.78.201.27', '2019-02-24', 1, '1550976123'),
('36.84.240.115', '2019-02-24', 1, '1550976515'),
('180.246.89.78', '2019-02-24', 1, '1550976517'),
('223.255.228.84', '2019-02-24', 1, '1550976749'),
('61.5.120.125', '2019-02-24', 2, '1550979848'),
('101.255.86.66', '2019-02-24', 3, '1550977408'),
('114.4.213.35', '2019-02-24', 2, '1550977418'),
('140.213.18.137', '2019-02-24', 2, '1550977620'),
('182.0.139.26', '2019-02-24', 3, '1550977795'),
('115.178.195.137', '2019-02-24', 1, '1550977969'),
('180.241.191.250', '2019-02-24', 4, '1550978121'),
('125.161.139.224', '2019-02-24', 4, '1550978230'),
('115.178.254.162', '2019-02-24', 1, '1550978324'),
('116.206.8.54', '2019-02-24', 1, '1550978527'),
('182.1.33.168', '2019-02-24', 1, '1550978635'),
('203.190.113.60', '2019-02-24', 1, '1550978841'),
('182.1.85.150', '2019-02-24', 3, '1550978967'),
('36.85.50.90', '2019-02-24', 1, '1550979089'),
('115.178.252.85', '2019-02-24', 2, '1550981137'),
('112.215.173.113', '2019-02-24', 3, '1550979470'),
('140.213.44.204', '2019-02-24', 2, '1550979453'),
('182.1.0.16', '2019-02-24', 3, '1550979520'),
('140.213.7.36', '2019-02-24', 1, '1550979456'),
('36.73.32.209', '2019-02-24', 1, '1550979556'),
('180.244.8.67', '2019-02-24', 1, '1550980101'),
('120.188.83.9', '2019-02-24', 1, '1550980422'),
('114.124.170.110', '2019-02-24', 1, '1550980478'),
('36.90.13.138', '2019-02-24', 2, '1550980536'),
('114.124.230.117', '2019-02-24', 1, '1550980512'),
('110.138.73.66', '2019-02-24', 3, '1550980999'),
('125.167.248.241', '2019-02-24', 2, '1550981229'),
('115.178.218.106', '2019-02-24', 1, '1550981271'),
('114.125.171.49', '2019-02-24', 2, '1550981868'),
('125.160.93.220', '2019-02-24', 5, '1550982372'),
('64.233.173.181', '2019-02-24', 1, '1550982172'),
('125.166.126.194', '2019-02-24', 3, '1550982478'),
('192.99.100.98', '2019-02-24', 1, '1550982472'),
('223.164.5.156', '2019-02-24', 1, '1550982498'),
('36.71.224.91', '2019-02-24', 2, '1550982618'),
('182.1.188.146', '2019-02-24', 4, '1550982761'),
('180.254.122.85', '2019-02-24', 1, '1550982788'),
('182.1.28.156', '2019-02-24', 1, '1550982953'),
('36.73.27.60', '2019-02-24', 1, '1550983097'),
('110.137.116.24', '2019-02-24', 1, '1550983098'),
('180.246.205.3', '2019-02-24', 1, '1550983172'),
('112.215.230.82', '2019-02-24', 1, '1550983223'),
('182.0.211.177', '2019-02-24', 7, '1550983350'),
('125.167.125.42', '2019-02-24', 6, '1550983472'),
('120.188.36.66', '2019-02-24', 1, '1550983733'),
('125.160.196.176', '2019-02-24', 1, '1550983878'),
('36.90.18.69', '2019-02-24', 1, '1550984081'),
('36.65.32.218', '2019-02-24', 1, '1550984476'),
('36.84.62.12', '2019-02-24', 1, '1550984723'),
('180.249.201.238', '2019-02-24', 1, '1550984858'),
('125.165.188.184', '2019-02-24', 1, '1550984890'),
('125.161.136.179', '2019-02-24', 4, '1550985176'),
('36.82.97.208', '2019-02-24', 4, '1550985639'),
('120.188.4.77', '2019-02-24', 1, '1550985564'),
('180.241.228.195', '2019-02-24', 1, '1550985869'),
('223.255.230.50', '2019-02-24', 1, '1550986998'),
('125.161.138.36', '2019-02-24', 2, '1550987242'),
('139.195.13.204', '2019-02-24', 1, '1550987501'),
('110.137.74.239', '2019-02-24', 1, '1550987729'),
('112.215.219.4', '2019-02-24', 3, '1550987911'),
('182.1.19.68', '2019-02-24', 1, '1550987831'),
('114.125.175.106', '2019-02-24', 1, '1550988041'),
('116.206.30.36', '2019-02-24', 1, '1550988230'),
('158.140.187.199', '2019-02-24', 4, '1551022132'),
('182.1.113.24', '2019-02-24', 12, '1550989003'),
('125.162.35.233', '2019-02-24', 3, '1550989210'),
('66.220.149.35', '2019-02-24', 1, '1550989243'),
('66.220.149.20', '2019-02-24', 2, '1551021718'),
('31.13.115.13', '2019-02-24', 1, '1550989266'),
('182.1.54.227', '2019-02-24', 1, '1550989350'),
('180.254.89.184', '2019-02-24', 1, '1550989543'),
('36.71.234.151', '2019-02-24', 8, '1550991440'),
('36.72.28.116', '2019-02-24', 1, '1550990115'),
('36.84.225.226', '2019-02-24', 5, '1550990904'),
('112.215.151.126', '2019-02-24', 1, '1550990874'),
('36.75.223.5', '2019-02-24', 2, '1550992430'),
('36.90.71.71', '2019-02-24', 2, '1550992939'),
('180.245.190.160', '2019-02-24', 3, '1550994154'),
('140.213.13.173', '2019-02-24', 1, '1550996262'),
('114.124.139.115', '2019-02-24', 10, '1550996841'),
('114.125.6.131', '2019-02-24', 1, '1550996642'),
('115.178.198.4', '2019-02-24', 1, '1550996728'),
('114.5.209.93', '2019-02-24', 2, '1550996949'),
('182.1.79.248', '2019-02-24', 2, '1550997144'),
('140.213.47.207', '2019-02-24', 6, '1550998308'),
('112.215.174.112', '2019-02-24', 2, '1551021046'),
('140.213.58.58', '2019-02-24', 3, '1550997733'),
('111.95.224.105', '2019-02-24', 4, '1550997759'),
('180.241.203.178', '2019-02-24', 3, '1550998230'),
('36.76.173.213', '2019-02-24', 1, '1550998695'),
('116.206.14.44', '2019-02-24', 1, '1550998949'),
('114.124.168.182', '2019-02-24', 5, '1550999145'),
('182.1.106.240', '2019-02-24', 2, '1550999852'),
('140.213.3.33', '2019-02-24', 1, '1550999826'),
('182.1.40.230', '2019-02-24', 3, '1550999994'),
('182.1.174.202', '2019-02-24', 3, '1551000080'),
('223.255.230.54', '2019-02-24', 3, '1551000447'),
('114.4.212.73', '2019-02-24', 1, '1551000483'),
('114.4.222.247', '2019-02-24', 1, '1551000578'),
('36.65.217.125', '2019-02-24', 1, '1551001019'),
('36.84.228.238', '2019-02-24', 4, '1551001123'),
('182.253.150.166', '2019-02-24', 2, '1551001174'),
('36.70.228.75', '2019-02-24', 6, '1551001239'),
('180.254.91.0', '2019-02-24', 3, '1551001265'),
('110.138.148.21', '2019-02-24', 1, '1551001890'),
('114.142.169.43', '2019-02-24', 1, '1551001924'),
('114.124.244.186', '2019-02-24', 1, '1551001992'),
('114.125.68.85', '2019-02-24', 1, '1551002198'),
('182.0.196.126', '2019-02-24', 1, '1551002405'),
('182.0.231.133', '2019-02-24', 2, '1551002510'),
('36.85.235.121', '2019-02-24', 2, '1551002677'),
('140.213.13.168', '2019-02-24', 1, '1551002721'),
('182.1.76.127', '2019-02-24', 1, '1551002779'),
('114.124.136.247', '2019-02-24', 1, '1551003044'),
('36.70.17.154', '2019-02-24', 1, '1551003180'),
('114.124.173.226', '2019-02-24', 1, '1551003255'),
('182.0.205.177', '2019-02-24', 1, '1551004123'),
('203.78.119.157', '2019-02-24', 1, '1551004127'),
('203.78.117.20', '2019-02-24', 3, '1551004217'),
('120.188.34.52', '2019-02-24', 2, '1551004510'),
('36.84.228.150', '2019-02-24', 1, '1551004432'),
('66.249.71.84', '2019-02-24', 1, '1551004539'),
('36.81.190.37', '2019-02-24', 1, '1551005167'),
('36.79.248.59', '2019-02-24', 1, '1551005271'),
('182.1.33.36', '2019-02-24', 1, '1551005294'),
('180.243.230.186', '2019-02-24', 1, '1551005676'),
('114.124.213.137', '2019-02-24', 1, '1551005791'),
('115.178.237.252', '2019-02-24', 1, '1551005819'),
('140.213.46.65', '2019-02-24', 2, '1551006045'),
('61.5.94.112', '2019-02-24', 1, '1551006164'),
('182.253.62.80', '2019-02-24', 1, '1551006221'),
('114.124.145.1', '2019-02-24', 1, '1551006265'),
('140.213.58.6', '2019-02-24', 1, '1551006432'),
('180.241.35.226', '2019-02-24', 2, '1551023968'),
('140.213.17.115', '2019-02-24', 1, '1551006518'),
('182.1.37.80', '2019-02-24', 1, '1551006730'),
('173.252.87.15', '2019-02-24', 1, '1551006968'),
('36.90.41.180', '2019-02-24', 1, '1551007410'),
('158.140.187.208', '2019-02-24', 5, '1551007534'),
('36.72.255.34', '2019-02-24', 2, '1551007793'),
('182.1.74.98', '2019-02-24', 1, '1551007780'),
('36.83.75.180', '2019-02-24', 3, '1551007921'),
('120.188.33.9', '2019-02-24', 2, '1551008214'),
('114.125.7.83', '2019-02-24', 1, '1551008220'),
('115.178.253.126', '2019-02-24', 1, '1551008291'),
('116.206.29.36', '2019-02-24', 1, '1551008333'),
('36.70.106.29', '2019-02-24', 2, '1551008782'),
('36.75.52.133', '2019-02-24', 1, '1551008542'),
('111.94.216.185', '2019-02-24', 2, '1551008640'),
('125.167.43.78', '2019-02-24', 1, '1551008706'),
('36.85.28.157', '2019-02-24', 8, '1551008919'),
('118.98.121.66', '2019-02-24', 1, '1551009045'),
('36.73.118.86', '2019-02-24', 1, '1551009076'),
('114.124.136.168', '2019-02-24', 1, '1551009151'),
('182.253.163.35', '2019-02-24', 1, '1551009480');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('125.161.130.120', '2019-02-24', 3, '1551009570'),
('103.114.35.2', '2019-02-24', 5, '1551010232'),
('36.68.148.151', '2019-02-24', 1, '1551010219'),
('114.124.182.58', '2019-02-24', 2, '1551010418'),
('114.125.7.23', '2019-02-24', 5, '1551011104'),
('125.161.136.35', '2019-02-24', 1, '1551010809'),
('36.69.210.179', '2019-02-24', 10, '1551012123'),
('114.125.189.67', '2019-02-24', 2, '1551011230'),
('182.1.194.142', '2019-02-24', 1, '1551011534'),
('120.188.74.179', '2019-02-24', 1, '1551011638'),
('203.78.114.250', '2019-02-24', 1, '1551011644'),
('118.136.140.206', '2019-02-24', 1, '1551011678'),
('114.125.190.187', '2019-02-24', 1, '1551011777'),
('120.188.64.18', '2019-02-24', 7, '1551011964'),
('203.78.117.59', '2019-02-24', 2, '1551012039'),
('182.0.247.92', '2019-02-24', 1, '1551012213'),
('182.1.38.231', '2019-02-24', 3, '1551012589'),
('27.54.118.178', '2019-02-24', 3, '1551012768'),
('36.74.40.116', '2019-02-24', 1, '1551012808'),
('182.1.106.93', '2019-02-24', 1, '1551012890'),
('36.82.98.83', '2019-02-24', 1, '1551012950'),
('112.215.235.194', '2019-02-24', 8, '1551013379'),
('202.80.214.192', '2019-02-24', 2, '1551013140'),
('115.178.209.179', '2019-02-24', 1, '1551013162'),
('158.140.187.210', '2019-02-24', 1, '1551013461'),
('114.125.38.91', '2019-02-24', 3, '1551013513'),
('125.167.58.134', '2019-02-24', 1, '1551013491'),
('114.125.7.227', '2019-02-24', 1, '1551013594'),
('180.253.61.164', '2019-02-24', 5, '1551014308'),
('158.140.187.213', '2019-02-24', 1, '1551013807'),
('139.193.69.81', '2019-02-24', 1, '1551013830'),
('146.185.158.24', '2019-02-24', 2, '1551013964'),
('115.178.206.171', '2019-02-24', 1, '1551013883'),
('36.76.83.199', '2019-02-24', 2, '1551014212'),
('36.85.200.125', '2019-02-24', 4, '1551017099'),
('139.0.145.29', '2019-02-24', 1, '1551014355'),
('114.125.230.250', '2019-02-24', 1, '1551014394'),
('116.206.40.49', '2019-02-24', 3, '1551014561'),
('202.80.214.204', '2019-02-24', 1, '1551014713'),
('36.79.250.87', '2019-02-24', 1, '1551015024'),
('110.137.179.232', '2019-02-24', 2, '1551015109'),
('140.213.40.101', '2019-02-24', 2, '1551015296'),
('115.178.223.6', '2019-02-24', 4, '1551015441'),
('180.245.41.208', '2019-02-24', 3, '1551015725'),
('114.125.28.94', '2019-02-24', 1, '1551015696'),
('36.79.251.86', '2019-02-24', 3, '1551015858'),
('61.5.4.43', '2019-02-24', 1, '1551016071'),
('182.1.104.220', '2019-02-24', 1, '1551016124'),
('36.71.78.238', '2019-02-24', 2, '1551016178'),
('182.1.113.175', '2019-02-24', 1, '1551016195'),
('116.206.29.31', '2019-02-24', 1, '1551016235'),
('36.73.33.158', '2019-02-24', 1, '1551016451'),
('115.178.217.150', '2019-02-24', 1, '1551016612'),
('111.95.170.48', '2019-02-24', 1, '1551016626'),
('114.124.243.218', '2019-02-24', 1, '1551016660'),
('182.1.76.163', '2019-02-24', 1, '1551016879'),
('115.178.211.227', '2019-02-24', 3, '1551017045'),
('180.254.145.112', '2019-02-24', 1, '1551016912'),
('180.252.94.91', '2019-02-24', 1, '1551017167'),
('36.72.232.98', '2019-02-24', 1, '1551017277'),
('125.162.186.62', '2019-02-24', 2, '1551017454'),
('114.125.12.57', '2019-02-24', 1, '1551017447'),
('114.142.168.10', '2019-02-24', 1, '1551017450'),
('103.213.131.236', '2019-02-24', 1, '1551017468'),
('124.158.184.2', '2019-02-24', 2, '1551017857'),
('110.138.151.243', '2019-02-24', 1, '1551017901'),
('36.79.250.36', '2019-02-24', 1, '1551018043'),
('140.213.9.239', '2019-02-24', 2, '1551018125'),
('112.215.200.110', '2019-02-24', 1, '1551018135'),
('36.82.102.188', '2019-02-24', 7, '1551018317'),
('179.236.106.120', '2019-02-24', 1, '1551018374'),
('114.142.168.36', '2019-02-24', 1, '1551018620'),
('125.162.73.231', '2019-02-24', 3, '1551019018'),
('116.206.42.69', '2019-02-24', 1, '1551019184'),
('119.82.244.114', '2019-02-24', 3, '1551019420'),
('203.78.119.181', '2019-02-24', 1, '1551019421'),
('36.75.29.29', '2019-02-24', 1, '1551019435'),
('202.80.212.152', '2019-02-24', 1, '1551019513'),
('114.5.213.90', '2019-02-24', 1, '1551019528'),
('66.220.149.11', '2019-02-24', 2, '1551021719'),
('182.0.174.77', '2019-02-24', 1, '1551019630'),
('112.215.220.64', '2019-02-24', 1, '1551019696'),
('118.96.95.122', '2019-02-24', 1, '1551019754'),
('139.193.164.74', '2019-02-24', 1, '1551019779'),
('180.252.148.219', '2019-02-24', 1, '1551019843'),
('125.165.62.146', '2019-02-24', 1, '1551019858'),
('36.65.206.97', '2019-02-24', 1, '1551019889'),
('140.213.48.85', '2019-02-24', 1, '1551020128'),
('182.0.196.94', '2019-02-24', 1, '1551020166'),
('180.241.99.17', '2019-02-24', 2, '1551022564'),
('115.178.235.87', '2019-02-24', 2, '1551020729'),
('115.178.237.240', '2019-02-24', 3, '1551020790'),
('110.138.117.205', '2019-02-24', 1, '1551020703'),
('36.84.132.10', '2019-02-24', 4, '1551020812'),
('114.124.202.169', '2019-02-24', 5, '1551021100'),
('182.1.57.24', '2019-02-24', 1, '1551020820'),
('180.244.113.13', '2019-02-24', 3, '1551020859'),
('112.215.243.142', '2019-02-24', 1, '1551020855'),
('223.255.231.136', '2019-02-24', 1, '1551020990'),
('114.124.179.177', '2019-02-24', 3, '1551021035'),
('180.248.30.124', '2019-02-24', 2, '1551021150'),
('103.112.163.23', '2019-02-24', 1, '1551021216'),
('114.124.175.213', '2019-02-24', 1, '1551021366'),
('203.78.116.20', '2019-02-24', 1, '1551021533'),
('114.125.12.78', '2019-02-24', 1, '1551021566'),
('182.1.72.94', '2019-02-24', 3, '1551021743'),
('103.44.37.95', '2019-02-24', 1, '1551021720'),
('36.77.146.214', '2019-02-24', 1, '1551021733'),
('139.192.202.135', '2019-02-24', 1, '1551021749'),
('202.80.216.240', '2019-02-24', 2, '1551021886'),
('114.5.208.14', '2019-02-24', 1, '1551021859'),
('115.178.237.204', '2019-02-24', 1, '1551021877'),
('110.137.169.231', '2019-02-24', 3, '1551022091'),
('36.75.179.139', '2019-02-24', 1, '1551022118'),
('114.5.209.26', '2019-02-24', 5, '1551022256'),
('115.178.254.218', '2019-02-24', 1, '1551022201'),
('36.65.229.244', '2019-02-24', 1, '1551022273'),
('182.1.73.49', '2019-02-24', 5, '1551022922'),
('112.215.153.202', '2019-02-24', 1, '1551023163'),
('125.164.128.145', '2019-02-24', 1, '1551023172'),
('45.115.73.12', '2019-02-24', 1, '1551023814'),
('114.124.176.87', '2019-02-24', 5, '1551023902'),
('36.65.107.189', '2019-02-24', 5, '1551024147'),
('120.188.64.202', '2019-02-24', 1, '1551024278'),
('202.67.33.10', '2019-02-24', 2, '1551024415'),
('175.106.8.243', '2019-02-24', 1, '1551024775'),
('114.5.147.179', '2019-02-24', 1, '1551024955'),
('125.167.147.147', '2019-02-24', 2, '1551025162'),
('114.124.213.94', '2019-02-24', 1, '1551025174'),
('125.165.150.190', '2019-02-24', 10, '1551025449'),
('115.178.236.154', '2019-02-24', 1, '1551025433'),
('36.37.131.41', '2019-02-24', 20, '1551026742'),
('120.188.81.71', '2019-02-24', 2, '1551025624'),
('140.213.56.92', '2019-02-24', 1, '1551025733'),
('118.136.56.208', '2019-02-24', 1, '1551025981'),
('36.76.235.192', '2019-02-24', 1, '1551026007'),
('115.178.196.153', '2019-02-24', 1, '1551026017'),
('125.165.128.64', '2019-02-24', 1, '1551026033'),
('115.178.234.109', '2019-02-24', 1, '1551026165'),
('114.125.60.25', '2019-02-24', 1, '1551026286'),
('116.206.8.60', '2019-02-24', 12, '1551026702'),
('103.3.220.36', '2019-02-24', 1, '1551026461'),
('36.77.253.4', '2019-02-24', 2, '1551026526'),
('110.138.150.81', '2019-02-24', 2, '1551026628'),
('180.252.173.178', '2019-02-24', 1, '1551026558'),
('120.188.81.199', '2019-02-24', 1, '1551026632'),
('114.124.138.73', '2019-02-25', 2, '1551028003'),
('114.125.7.23', '2019-02-25', 1, '1551027777'),
('114.124.137.181', '2019-02-25', 1, '1551027822'),
('114.4.78.184', '2019-02-25', 1, '1551028362'),
('114.125.63.166', '2019-02-25', 1, '1551028391'),
('110.137.17.19', '2019-02-25', 3, '1551028482'),
('182.1.176.61', '2019-02-25', 1, '1551028454'),
('114.125.220.214', '2019-02-25', 2, '1551028696'),
('120.188.87.250', '2019-02-25', 1, '1551028730'),
('182.1.50.16', '2019-02-25', 1, '1551028975'),
('140.213.46.135', '2019-02-25', 5, '1551029121'),
('36.78.243.88', '2019-02-25', 2, '1551029223'),
('182.1.24.214', '2019-02-25', 1, '1551029115'),
('101.255.36.46', '2019-02-25', 1, '1551029252'),
('116.93.119.178', '2019-02-25', 2, '1551029515'),
('180.254.168.198', '2019-02-25', 1, '1551029487'),
('114.5.213.104', '2019-02-25', 1, '1551029542'),
('110.138.219.49', '2019-02-25', 3, '1551029713'),
('36.90.78.80', '2019-02-25', 1, '1551029710'),
('112.215.171.79', '2019-02-25', 2, '1551029893'),
('110.137.163.15', '2019-02-25', 3, '1551030126'),
('140.213.48.12', '2019-02-25', 1, '1551030191'),
('115.178.210.222', '2019-02-25', 5, '1551030536'),
('202.67.33.46', '2019-02-25', 1, '1551030684'),
('182.0.241.45', '2019-02-25', 1, '1551030858'),
('148.64.56.66', '2019-02-25', 1, '1551031085'),
('120.188.81.220', '2019-02-25', 2, '1551031417'),
('114.125.23.45', '2019-02-25', 2, '1551031669'),
('36.82.103.75', '2019-02-25', 1, '1551032448'),
('140.213.35.197', '2019-02-25', 1, '1551033651'),
('120.188.6.165', '2019-02-25', 1, '1551033751'),
('182.1.52.1', '2019-02-25', 1, '1551033944'),
('180.253.90.222', '2019-02-25', 3, '1551054294'),
('175.158.50.96', '2019-02-25', 1, '1551034634'),
('180.247.25.41', '2019-02-25', 5, '1551060131'),
('120.188.81.63', '2019-02-25', 1, '1551036526'),
('8.37.71.47', '2019-02-25', 1, '1551038287'),
('140.213.13.217', '2019-02-25', 2, '1551039257'),
('114.124.197.183', '2019-02-25', 1, '1551039275'),
('180.248.152.26', '2019-02-25', 2, '1551039958'),
('115.178.221.221', '2019-02-25', 1, '1551041516'),
('180.249.203.204', '2019-02-25', 1, '1551041589'),
('114.124.237.102', '2019-02-25', 1, '1551041991'),
('139.193.237.229', '2019-02-25', 1, '1551042239'),
('36.90.13.153', '2019-02-25', 1, '1551043520'),
('112.215.241.47', '2019-02-25', 2, '1551043609'),
('114.124.242.130', '2019-02-25', 1, '1551044091'),
('115.178.215.91', '2019-02-25', 1, '1551044145'),
('114.124.241.138', '2019-02-25', 5, '1551044442'),
('36.74.238.75', '2019-02-25', 1, '1551044449'),
('180.251.114.75', '2019-02-25', 3, '1551045718'),
('54.86.66.252', '2019-02-25', 5, '1551053602'),
('182.1.121.204', '2019-02-25', 2, '1551047033'),
('139.193.32.210', '2019-02-25', 2, '1551047669'),
('182.1.44.165', '2019-02-25', 1, '1551047997'),
('103.44.37.159', '2019-02-25', 1, '1551048111'),
('158.140.187.221', '2019-02-25', 1, '1551048274'),
('112.215.235.8', '2019-02-25', 3, '1551048691'),
('114.4.219.248', '2019-02-25', 2, '1551048914'),
('180.251.217.78', '2019-02-25', 2, '1551048999'),
('36.68.137.207', '2019-02-25', 1, '1551049335'),
('114.125.70.177', '2019-02-25', 1, '1551049382'),
('110.138.151.40', '2019-02-25', 1, '1551049675'),
('36.76.27.221', '2019-02-25', 1, '1551049817'),
('46.101.92.175', '2019-02-25', 1, '1551051131'),
('180.214.233.125', '2019-02-25', 1, '1551051307'),
('36.75.169.36', '2019-02-25', 1, '1551051640'),
('141.0.8.141', '2019-02-25', 2, '1551051711'),
('180.254.128.174', '2019-02-25', 1, '1551051759'),
('116.206.9.53', '2019-02-25', 1, '1551051954'),
('103.24.212.93', '2019-02-25', 1, '1551052702'),
('36.76.244.175', '2019-02-25', 10, '1551052846'),
('115.178.205.165', '2019-02-25', 3, '1551053112'),
('118.97.134.134', '2019-02-25', 1, '1551053312'),
('36.73.33.217', '2019-02-25', 4, '1551053569'),
('184.72.115.35', '2019-02-25', 1, '1551053578'),
('54.175.74.27', '2019-02-25', 3, '1551078314'),
('114.4.218.213', '2019-02-25', 7, '1551054034'),
('114.124.141.139', '2019-02-25', 1, '1551053928'),
('114.125.198.40', '2019-02-25', 2, '1551055137'),
('182.1.3.226', '2019-02-25', 1, '1551056234'),
('118.96.164.136', '2019-02-25', 1, '1551056247'),
('114.124.168.147', '2019-02-25', 5, '1551056406'),
('36.78.120.136', '2019-02-25', 4, '1551056626'),
('115.178.254.157', '2019-02-25', 6, '1551056784'),
('114.6.72.90', '2019-02-25', 1, '1551057069'),
('114.125.100.172', '2019-02-25', 1, '1551057169'),
('140.213.8.169', '2019-02-25', 3, '1551057311'),
('103.18.78.98', '2019-02-25', 4, '1551057600'),
('125.163.241.117', '2019-02-25', 1, '1551057867'),
('103.215.25.50', '2019-02-25', 8, '1551057928'),
('36.85.32.47', '2019-02-25', 1, '1551057883'),
('203.24.50.142', '2019-02-25', 17, '1551058071'),
('202.65.115.90', '2019-02-25', 1, '1551057897'),
('182.1.100.190', '2019-02-25', 2, '1551058115'),
('103.95.7.9', '2019-02-25', 1, '1551058269'),
('103.31.207.25', '2019-02-25', 2, '1551058871'),
('112.215.170.158', '2019-02-25', 2, '1551058961'),
('36.84.226.2', '2019-02-25', 2, '1551059285'),
('114.125.200.39', '2019-02-25', 6, '1551061224'),
('66.96.232.222', '2019-02-25', 1, '1551059134'),
('114.124.169.217', '2019-02-25', 2, '1551059234'),
('66.220.149.13', '2019-02-25', 1, '1551059243'),
('64.233.173.181', '2019-02-25', 1, '1551059631'),
('115.178.193.240', '2019-02-25', 5, '1551060099'),
('104.143.209.100', '2019-02-25', 1, '1551060169'),
('114.125.20.70', '2019-02-25', 1, '1551060269'),
('202.182.174.138', '2019-02-25', 3, '1551060897'),
('116.206.38.50', '2019-02-25', 1, '1551060493'),
('116.206.14.30', '2019-02-25', 1, '1551060704'),
('114.125.59.25', '2019-02-25', 1, '1551061053'),
('66.220.149.19', '2019-02-25', 2, '1551061117'),
('66.220.149.10', '2019-02-25', 1, '1551061116'),
('31.13.115.12', '2019-02-25', 1, '1551061126'),
('202.150.144.150', '2019-02-25', 1, '1551061127'),
('182.1.104.154', '2019-02-25', 1, '1551061155'),
('103.18.30.52', '2019-02-25', 1, '1551061515'),
('202.146.232.118', '2019-02-25', 2, '1551061784'),
('114.124.179.17', '2019-02-25', 1, '1551061793'),
('36.85.71.180', '2019-02-25', 5, '1551062244'),
('110.76.148.86', '2019-02-25', 1, '1551062346'),
('118.136.148.201', '2019-02-25', 3, '1551062491'),
('116.206.15.16', '2019-02-25', 3, '1551062661'),
('114.5.147.179', '2019-02-25', 8, '1551063160'),
('180.252.68.183', '2019-02-25', 2, '1551063274'),
('103.111.53.52', '2019-02-25', 1, '1551063670'),
('103.17.76.51', '2019-02-25', 1, '1551064354'),
('115.178.253.98', '2019-02-25', 2, '1551065448'),
('116.206.40.56', '2019-02-25', 1, '1551065452'),
('140.213.44.164', '2019-02-25', 7, '1551065887'),
('139.228.188.147', '2019-02-25', 4, '1551065915'),
('36.72.219.126', '2019-02-25', 1, '1551065877'),
('116.206.40.89', '2019-02-25', 2, '1551065984'),
('114.125.188.88', '2019-02-25', 4, '1551066062'),
('103.73.72.74', '2019-02-25', 1, '1551066315'),
('103.105.128.99', '2019-02-25', 1, '1551066556'),
('120.188.85.236', '2019-02-25', 1, '1551066561'),
('118.96.185.21', '2019-02-25', 4, '1551066865'),
('36.77.155.110', '2019-02-25', 1, '1551066799'),
('223.255.229.16', '2019-02-25', 1, '1551066872'),
('103.5.148.4', '2019-02-25', 1, '1551067597'),
('158.140.167.199', '2019-02-25', 4, '1551068180'),
('103.10.105.229', '2019-02-25', 1, '1551068183'),
('36.82.97.103', '2019-02-25', 4, '1551068558'),
('182.0.201.105', '2019-02-25', 4, '1551068558'),
('120.188.33.248', '2019-02-25', 3, '1551074058'),
('121.101.129.18', '2019-02-25', 3, '1551069042'),
('36.72.148.139', '2019-02-25', 1, '1551069394'),
('36.82.102.82', '2019-02-25', 2, '1551069475'),
('124.81.107.194', '2019-02-25', 6, '1551069530'),
('185.26.180.169', '2019-02-25', 1, '1551069535'),
('82.145.221.156', '2019-02-25', 4, '1551069620'),
('123.231.247.42', '2019-02-25', 1, '1551070716'),
('36.70.134.72', '2019-02-25', 4, '1551071026'),
('114.125.8.164', '2019-02-25', 1, '1551071017'),
('36.84.242.199', '2019-02-25', 1, '1551071072'),
('139.194.82.90', '2019-02-25', 1, '1551071676'),
('66.249.71.82', '2019-02-25', 1, '1551071678'),
('180.241.61.11', '2019-02-25', 1, '1551071786'),
('139.255.146.48', '2019-02-25', 1, '1551071974'),
('202.67.46.27', '2019-02-25', 1, '1551072174'),
('36.71.234.47', '2019-02-25', 3, '1551072394'),
('114.125.102.110', '2019-02-25', 1, '1551072560'),
('36.72.219.154', '2019-02-25', 4, '1551072660'),
('103.76.23.243', '2019-02-25', 1, '1551072641'),
('115.178.255.209', '2019-02-25', 2, '1551073730'),
('203.142.76.250', '2019-02-25', 3, '1551074576'),
('141.0.9.30', '2019-02-25', 1, '1551074545'),
('118.99.97.242', '2019-02-25', 3, '1551075031'),
('114.124.199.183', '2019-02-25', 1, '1551075213'),
('139.192.146.91', '2019-02-25', 1, '1551075671'),
('66.220.149.25', '2019-02-25', 1, '1551075683'),
('182.253.143.7', '2019-02-25', 9, '1551076066'),
('36.90.153.123', '2019-02-25', 3, '1551076153'),
('182.1.203.124', '2019-02-25', 1, '1551076205'),
('118.97.161.114', '2019-02-25', 2, '1551076378'),
('178.62.92.29', '2019-02-25', 3, '1551078586'),
('182.0.197.189', '2019-02-25', 1, '1551079313'),
('125.165.42.109', '2019-02-25', 1, '1551079470'),
('125.165.33.199', '2019-02-25', 5, '1551080101'),
('115.178.253.163', '2019-02-25', 3, '1551081754'),
('182.253.141.155', '2019-02-25', 5, '1551082583'),
('182.0.169.7', '2019-02-25', 1, '1551082572'),
('180.249.181.41', '2019-02-25', 1, '1551082770'),
('202.162.43.21', '2019-02-25', 3, '1551083034'),
('66.220.149.1', '2019-02-25', 1, '1551083039'),
('66.220.149.30', '2019-02-25', 1, '1551083039'),
('112.215.220.34', '2019-02-25', 1, '1551083382'),
('114.4.217.170', '2019-02-25', 8, '1551100199'),
('120.188.77.120', '2019-02-25', 1, '1551086366'),
('140.213.41.155', '2019-02-25', 1, '1551087458'),
('112.215.45.84', '2019-02-25', 7, '1551087773'),
('115.124.86.58', '2019-02-25', 6, '1551087793'),
('182.1.183.130', '2019-02-25', 1, '1551087979'),
('140.213.34.247', '2019-02-25', 1, '1551089424'),
('36.84.62.54', '2019-02-25', 1, '1551089989'),
('115.178.201.117', '2019-02-25', 23, '1551090365'),
('117.102.66.73', '2019-02-25', 1, '1551090417'),
('120.188.76.177', '2019-02-25', 3, '1551093256'),
('182.0.238.68', '2019-02-25', 1, '1551093481'),
('202.67.36.2', '2019-02-25', 1, '1551097807'),
('103.208.137.246', '2019-02-25', 14, '1551104433'),
('116.206.38.40', '2019-02-25', 11, '1551101617'),
('120.188.33.183', '2019-02-25', 1, '1551099705'),
('116.206.29.52', '2019-02-25', 1, '1551101538'),
('182.0.230.109', '2019-02-25', 1, '1551102132'),
('116.206.28.53', '2019-02-25', 1, '1551102577'),
('182.1.53.2', '2019-02-25', 1, '1551102795'),
('112.215.151.213', '2019-02-25', 1, '1551103847'),
('72.14.199.114', '2019-02-25', 1, '1551104420'),
('42.108.232.72', '2019-02-25', 1, '1551106252'),
('103.10.67.173', '2019-02-25', 3, '1551111252'),
('180.241.237.171', '2019-02-25', 1, '1551107390'),
('140.213.58.88', '2019-02-25', 1, '1551107451'),
('182.1.41.95', '2019-02-25', 1, '1551108876'),
('114.125.46.203', '2019-02-25', 1, '1551110358'),
('114.125.100.70', '2019-02-25', 1, '1551111740'),
('140.213.13.208', '2019-02-25', 2, '1551112220'),
('103.78.115.54', '2019-02-25', 3, '1551113954'),
('36.77.76.90', '2019-02-26', 1, '1551114124'),
('52.71.155.178', '2019-02-26', 1, '1551114622'),
('54.175.74.27', '2019-02-26', 1, '1551114627'),
('36.81.7.116', '2019-02-26', 1, '1551116795'),
('180.249.202.149', '2019-02-26', 1, '1551116949'),
('140.213.32.186', '2019-02-26', 1, '1551117838'),
('94.180.142.152', '2019-02-26', 1, '1551119505'),
('114.124.133.47', '2019-02-26', 2, '1551120388'),
('::1', '2019-02-26', 3, '1551123551'),
('::1', '2020-06-25', 45, '1593029213'),
('::1', '2020-11-28', 3, '1606559032'),
('::1', '2020-11-29', 1, '1606620987'),
('::1', '2020-11-30', 24, '1606700312'),
('::1', '2020-12-11', 1, '1607646938'),
('::1', '2020-12-14', 5, '1607929040'),
('::1', '2021-02-17', 5, '1613566582'),
('::1', '2021-02-18', 1, '1613586043'),
('::1', '2021-02-19', 1, '1613731698'),
('::1', '2021-03-04', 2, '1614862049'),
('::1', '2021-03-05', 2, '1614952849'),
('::1', '2021-03-06', 2, '1615015129'),
('::1', '2021-03-20', 15, '1616255426'),
('::1', '2021-03-21', 5, '1616310806');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(37, 'Film', '', 'film', 25),
(40, 'Internasional', '', 'internasional', 28),
(41, 'Bola', '', 'bola', 21),
(43, 'Selebritis', '', 'selebritis', 9),
(49, 'Palestina', 'admin', 'palestina', 6),
(55, 'Asian Games', 'admin', 'asian-games', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1),
(39, 'DPPKB', 'admin', 'dppkb', 0),
(40, 'Kegiatan', 'admin', 'kegiatan', 0),
(41, 'Wisata', 'admin', 'wisata', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(17, 3, 'hari ke 2', 'hay.smart,solusindo@gmail.com', 'Tesssss', '2015-05-29', '05:41:12'),
(19, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Testing untuk Berikan jawaban,....', '2015-06-01', '15:44:10'),
(20, 0, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'I absolutely love image or text sliders written using pure css code. Likewise, i always hated slow loading sliders using jquery or javascript to use in my wordpress themes or html websites. I have compiled some cool css sliders from codepen/github for use in your website or in themes, many are responsive too. A word of advise: Please make sure to test all sliders in Safari, Chrome and FF before deployment.', '2017-01-24', '16:27:59'),
(23, 20, 'Admin Lokomedia', 'dankrez48@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(25, 0, 'BangToyyib', 'toyyib@gmail.com', 'saya ingin bertanya, berapa 1 + 1?', '2017-10-06', '08:19:33'),
(26, 25, 'Admin Lokomedia', 'admin@lokomedia.web.id', '1+1 adalah 2', '2017-10-06', '08:26:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(27, 'dinas 1', 'admin', 'Admin Lokomedia', 'dinas-1', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `no_kk` bigint(20) NOT NULL,
  `no_nik` bigint(16) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(30) NOT NULL,
  `kepala_keluarga` varchar(128) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `RT` varchar(7) NOT NULL,
  `RW` varchar(7) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `no_kk`, `no_nik`, `nama`, `password`, `agama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `pendidikan`, `pekerjaan`, `kewarganegaraan`, `kepala_keluarga`, `provinsi`, `kab_kota`, `kecamatan`, `desa`, `RT`, `RW`, `kode_pos`, `alamat`, `is_active`, `image`) VALUES
(1196, 1111, 1111, 'Muhammad Aqil Al - Muhtadi', '$2y$10$ByAv3CdbvEL0Co.mYWOA0uyoX7ewEvbGE.hbM2f/a928nu8zsuUzO', 'Islam', 'Bandung', '2000-09-11', 'Laki - Laki', '', 'Mahasiswa', '', '', '', 'Garut', 'Garut Kota', 'Muarasanding', '4', '19', 0, 'Muarasanding Regency', 1, 'default.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'admin', 'Admin Desa', 'admin@lokomedia.web.id', '085716129917', 'lokomedia.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(176, 61, 'admin', 'Visit Karawang', 'visit-karawang', '<p>Salah satu Kabupaten yang terletak di Provinsi Jawa Barat yang terkenal sebagai Lumbung Padi Nasional. Kota Pangkal Perjuangan. Kota Industri terbesar se Asia Tenggara.</p>\r\n\r\n<p>BANGGA JADI URANG KARAWANG. Banyak sejarah, kekayaan yang KARAWANG miliki.</p>\r\n', '', '', 'https://www.youtube.com/watch?v=GYfEZwbopIQ', 11, 'Rabu', '2019-01-09', '16:06:47', 'wisata'),
(177, 61, 'admin', 'Kuliner Karawang', 'kuliner-karawang', '<p>Acara &quot;Tau Gak Sih&quot; Trans 7 meliput wisata kuliner di Karawang</p>\r\n', '', '', 'https://www.youtube.com/watch?v=y-zy7RW9P4E', 4, 'Rabu', '2019-01-09', '16:09:32', 'wisata');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indeks untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indeks untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indeks untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indeks untuk tabel `sku`
--
ALTER TABLE `sku`
  ADD PRIMARY KEY (`id_surat_sku`);

--
-- Indeks untuk tabel `sk_bedanama`
--
ALTER TABLE `sk_bedanama`
  ADD PRIMARY KEY (`id_surat_bedanama`);

--
-- Indeks untuk tabel `sk_belumkerja`
--
ALTER TABLE `sk_belumkerja`
  ADD PRIMARY KEY (`id_surat_belumkerja`);

--
-- Indeks untuk tabel `sk_belummenikah`
--
ALTER TABLE `sk_belummenikah`
  ADD PRIMARY KEY (`id_surat_belummenikah`);

--
-- Indeks untuk tabel `sk_bmr`
--
ALTER TABLE `sk_bmr`
  ADD PRIMARY KEY (`id_surat_bmr`);

--
-- Indeks untuk tabel `sk_bp`
--
ALTER TABLE `sk_bp`
  ADD PRIMARY KEY (`id_surat_bp`);

--
-- Indeks untuk tabel `sk_kehilangan`
--
ALTER TABLE `sk_kehilangan`
  ADD PRIMARY KEY (`id_surat_kehilangan`);

--
-- Indeks untuk tabel `sk_kelakuanbaik`
--
ALTER TABLE `sk_kelakuanbaik`
  ADD PRIMARY KEY (`id_surat_kelakuanbaik`);

--
-- Indeks untuk tabel `sk_penghasilan`
--
ALTER TABLE `sk_penghasilan`
  ADD PRIMARY KEY (`id_surat_penghasilan`);

--
-- Indeks untuk tabel `sk_ptt`
--
ALTER TABLE `sk_ptt`
  ADD PRIMARY KEY (`id_surat_ptt`);

--
-- Indeks untuk tabel `sk_rumahrubuh`
--
ALTER TABLE `sk_rumahrubuh`
  ADD PRIMARY KEY (`id_surat_rumahrubuh`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_nik` (`no_nik`),
  ADD KEY `no_kk` (`no_kk`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `sku`
--
ALTER TABLE `sku`
  MODIFY `id_surat_sku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sk_bedanama`
--
ALTER TABLE `sk_bedanama`
  MODIFY `id_surat_bedanama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_belumkerja`
--
ALTER TABLE `sk_belumkerja`
  MODIFY `id_surat_belumkerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_belummenikah`
--
ALTER TABLE `sk_belummenikah`
  MODIFY `id_surat_belummenikah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_bmr`
--
ALTER TABLE `sk_bmr`
  MODIFY `id_surat_bmr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_bp`
--
ALTER TABLE `sk_bp`
  MODIFY `id_surat_bp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_kehilangan`
--
ALTER TABLE `sk_kehilangan`
  MODIFY `id_surat_kehilangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sk_kelakuanbaik`
--
ALTER TABLE `sk_kelakuanbaik`
  MODIFY `id_surat_kelakuanbaik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sk_ptt`
--
ALTER TABLE `sk_ptt`
  MODIFY `id_surat_ptt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sk_rumahrubuh`
--
ALTER TABLE `sk_rumahrubuh`
  MODIFY `id_surat_rumahrubuh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1197;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
