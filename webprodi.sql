-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2018 at 02:22 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 5.6.36-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webprodi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id_menu` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `id_group_menu` int(11) NOT NULL,
  `menu` varchar(60) NOT NULL,
  `url` varchar(250) NOT NULL,
  `image` varchar(60) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id_menu`, `kode_unit`, `id_group_menu`, `menu`, `url`, `image`, `kode_bahasa`) VALUES
(1, '67', 1, 'Halaman', 'main/page', 'page.png', 'id'),
(7, '67', 2, 'Berita', 'berita', 'news.png', 'id'),
(8, '67', 2, 'Agenda', 'agenda', 'calendar.png', 'id'),
(9, '67', 2, 'Pengumuman', 'pengumuman', 'announcement.png', 'id'),
(2, '67', 0, 'Dokumen', 'dokumen', 'finder.png', 'id'),
(26, '67', 1, 'Menu', 'main/menu', 'menu.png', 'id'),
(27, '67', 1, 'Laboratorium', 'main/pusatstudi', 'pusatstudi.jpg', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `kode_unit` varchar(4) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `nama_agenda` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `kode_ruang` varchar(64) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bahasa`
--

CREATE TABLE `bahasa` (
  `kode_bahasa` varchar(2) NOT NULL,
  `nama_bahasa` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahasa`
--

INSERT INTO `bahasa` (`kode_bahasa`, `nama_bahasa`, `image`) VALUES
('ar', 'Arabic', 'ar_flag.png'),
('en', 'English', 'uk_flag.png'),
('id', 'Indonesia', 'id_flag.png');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(128) NOT NULL,
  `deskripsi_foto` varchar(128) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `kode_unit` varchar(4) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamus`
--

CREATE TABLE `kamus` (
  `kata` varchar(128) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `terjemahan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus`
--

INSERT INTO `kamus` (`kata`, `kode_bahasa`, `terjemahan`) VALUES
('agenda', 'en', 'event'),
('alamat', 'en', 'address'),
('beranda', 'en', 'home'),
('Berita', 'en', 'News'),
('direktori', 'en', 'directory'),
('dosen', 'en', 'lecturer'),
('Info Jurusan / Program Studi', 'en', 'Department Information'),
('kolom', 'en', 'columns'),
('lainnya', 'en', 'others'),
('liputan', 'en', 'news'),
('pengumuman', 'en', 'announcements'),
('selengkapnya', 'en', 'more');

-- --------------------------------------------------------

--
-- Table structure for table `kolom`
--

CREATE TABLE `kolom` (
  `id_kolom` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorium`
--

CREATE TABLE `laboratorium` (
  `id_lab` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `nama_lab` varchar(250) NOT NULL,
  `deskripsi` text,
  `foto` varchar(128) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `unit_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorium`
--

INSERT INTO `laboratorium` (`id_lab`, `kode_unit`, `nama_lab`, `deskripsi`, `foto`, `menu_url`, `kode_bahasa`, `unit_order`) VALUES
(7, '41', 'Pendidikan Agama Islam', '<p>Ilustrasi Lab PAI</p>\r\n', '20161129_lab_pai.jpg', '', 'id', 0),
(8, '41', 'Pendidikan Bahasa Arab', '<p>Ilustrasi Lab PBA</p>\r\n', '20161129_lab_bahasa.jpg', '', 'id', 0),
(9, '41', 'Pendidikan Raudatul Athfal', '<p>Ilustrasi Lab PGRA</p>\r\n', '20161129_lab_ra.jpg', '', 'id', 0),
(10, '41', 'Pendidikan Guru Madrasah Ibtidaiyah', '<p>Ilustrasi Lab PGMI</p>\r\n', '20161129_lab_pgmi.jpg', '', 'id', 0),
(11, '41', 'Manajemen Pendidikan Islam', '<p>Ilustrasi Lab MPI</p>\r\n', '20161129_lab_manajemen.jpg', '', 'id', 0),
(16, '12', 'LPSE KEMENAG', '<p>coba</p>\r\n', '20170124_download.png', '', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `liputan`
--

CREATE TABLE `liputan` (
  `id_liputan` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(128) NOT NULL,
  `deskripsi_foto` varchar(128) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `kode_unit` varchar(8) NOT NULL,
  `id` int(11) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `kode_unit` varchar(4) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `modul` varchar(64) NOT NULL,
  `jenis_url` enum('Internal','Eksternal') NOT NULL,
  `target` varchar(16) NOT NULL,
  `parent` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `kode_bahasa` varchar(2) NOT NULL DEFAULT 'id',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kode_unit`, `id_menu`, `nama_menu`, `url`, `modul`, `jenis_url`, `target`, `parent`, `menu_order`, `kode_bahasa`, `status`) VALUES
('67', 1, 'Profil', 'page', '', 'Internal', '_blank', 0, 1, 'id', 1),
('67', 2, 'Dokumen', 'dokumen', '', 'Internal', '', 0, 2, 'id', 1),
('67', 3, 'Fasilitas', 'page', '', 'Internal', '', 0, 3, 'id', 1),
('67', 4, 'Unit', 'page', '', 'Internal', '', 0, 4, 'id', 1),
('67', 5, 'Profil', 'page', '', 'Internal', '', 1, 1, 'id', 1),
('67', 6, 'Visi - misi - tujuan', 'page', '', 'Internal', '', 1, 2, 'id', 1),
('67', 11, 'Jurnal Online UIN Sunan Kalijaga', 'page', '', 'Eksternal', '_blank', 3, 3, 'id', 1),
('67', 18, 'Kurikulum', 'page', '', 'Internal', '', 5, 1, 'id', 1),
('67', 19, 'Dosen', 'page', '', 'Internal', '', 5, 2, 'id', 1),
('67', 20, 'Jadwal Kuliah', 'page', '', 'Internal', '', 5, 3, 'id', 1),
('67', 21, 'Jadwal Ujian', 'page', '', 'Internal', '', 5, 4, 'id', 1),
('67', 22, 'Kalender', 'page', '', 'Internal', '', 5, 5, 'id', 1),
('67', 23, 'Pedoman Akademik', 'page', '', 'Internal', '', 5, 6, 'id', 1),
('67', 24, 'Profile', 'page', '', '', '', 0, 1, 'en', 1),
('67', 25, 'Document', 'dokumen', '', '', '', 0, 2, 'en', 1),
('67', 26, 'Facility', 'page', '', '', '', 0, 3, 'en', 1),
('67', 27, 'Unit', 'page', '', '', '', 0, 4, 'en', 1),
('67', 28, 'Profile', 'page', '', '', '', 38, 1, 'en', 1),
('67', 29, 'Vision - Mision - Goals', 'page', '', '', '', 38, 2, 'en', 1),
('67', 30, 'Competence and Achieve', 'page', '', '', '', 38, 3, 'en', 1),
('67', 31, 'Management and Organization', 'page', '', '', '', 38, 4, 'en', 1),
('41', 36, 'Profil', 'page', '', 'Internal', '_self', 0, 5, 'id', 1),
('41', 39, 'Pendaftaran', 'page', '', 'Eksternal', '_blank', 0, 8, 'id', 1),
('41', 40, 'Fungsi dan Layanan', 'page', '', 'Internal', '_self', 0, 9, 'id', 1),
('41', 41, 'Pendukung Akademik (supporting academic)', 'page', '', 'Internal', '_self', 40, 1, 'id', 1),
('41', 42, 'Layanan Penelitian (Research Fasilities)', 'page', '', 'Internal', '_self', 40, 2, 'id', 1),
('41', 43, 'Layanan Publik (Public Services)', 'page', '', 'Internal', '_self', 40, 3, 'id', 1),
('41', 44, 'Data dan Fakta', 'page', '', 'Internal', '_self', 0, 10, 'id', 1),
('41', 45, 'Divisi', 'page', '', 'Internal', '_self', 0, 11, 'id', 1),
('41', 46, 'E-Kaligrafi dan Penulisan Bahasa Arab', 'page', '', 'Internal', '_self', 45, 1, 'id', 1),
('41', 47, 'Sinematografi', 'page', '', 'Internal', '_self', 45, 2, 'id', 1),
('41', 48, 'Fotografi', 'page', '', 'Internal', '_self', 45, 3, 'id', 1),
('41', 49, 'Bahasa', 'page', '', 'Internal', '_self', 45, 4, 'id', 1),
('41', 50, 'Unduhan', 'page', '', 'Internal', '_self', 0, 12, 'id', 1),
('41', 51, 'Journal Edulab', 'page', '', 'Eksternal', '_blank', 45, 5, 'id', 1),
('12', 56, 'HOME', 'page', '', 'Internal', '_self', 0, 13, 'id', 1),
('12', 57, 'REGULASI', 'page', '', 'Eksternal', '_self', 0, 14, 'id', 1),
('12', 58, 'PENGADAAN', 'page', '', 'Internal', '_self', 0, 15, 'id', 1),
('12', 59, 'BERITA', 'page', '', 'Internal', '_self', 0, 16, 'id', 1),
('12', 60, 'UNDANG-UNDANG', 'page', '', 'Internal', '_self', 57, 1, 'id', 1),
('12', 61, 'PERPRES', 'page', '', 'Internal', '_self', 57, 2, 'id', 1),
('12', 62, 'R U P', 'page', '', 'Internal', '_self', 0, 17, 'id', 1),
('12', 63, 'TAHUN 2017', 'page', '', 'Internal', '_self', 62, 1, 'id', 1),
('16', 64, 'Profil', 'page', '', 'Internal', '_self', 0, 18, 'id', 1),
('16', 66, 'Program', 'page', '', 'Internal', '_self', 0, 20, 'id', 1),
('16', 67, 'Publikasi', 'page', '', 'Internal', '_self', 0, 21, 'id', 1),
('16', 71, 'Penelitian', 'page', '', 'Internal', '_self', 0, 23, 'id', 1),
('651', 73, 'Profil', 'page', '', 'Internal', '_self', 0, 24, 'id', 1),
('651', 74, 'Departement', 'page', '', 'Internal', '_self', 0, 25, 'id', 1),
('651', 75, 'Acara', 'page', '', 'Internal', '_self', 0, 26, 'id', 1),
('651', 76, 'Beasiswa', 'page', '', 'Internal', '_self', 0, 27, 'id', 1),
('651', 77, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 28, 'id', 1),
('651', 78, 'Visi dan Misi', 'page', '', 'Internal', '_self', 73, 1, 'id', 1),
('651', 79, 'Struktur Kepengurusan', 'page', '', 'Internal', '_self', 73, 29, 'id', 1),
('651', 80, 'Badan Kepengurusan Harian', 'page', '', 'Internal', '_self', 73, 30, 'id', 1),
('651', 81, 'Seminar', 'page', '', 'Internal', '_self', 75, 1, 'id', 1),
('651', 82, 'Lomba', 'page', '', 'Internal', '_self', 75, 2, 'id', 1),
('651', 83, 'AD /RT', 'page', '', 'Internal', '_self', 77, 1, 'id', 1),
('651', 84, 'Bank Soal UTS', 'page', '', 'Internal', '_self', 77, 2, 'id', 1),
('651', 85, 'Bank Soal UAS', 'page', '', 'Internal', '_self', 77, 29, 'id', 1),
('651', 86, 'Departement Infokom', 'page', '', 'Internal', '_self', 74, 1, 'id', 1),
('651', 87, 'Departement Minat Bakat', 'page', '', 'Internal', '_self', 74, 2, 'id', 1),
('651', 88, 'Departement Sumber Daya Mahasiswa', 'page', '', 'Internal', '_self', 74, 3, 'id', 1),
('651', 89, 'Departement Hubungan Antar Lembaga', 'page', '', 'Internal', '_self', 74, 4, 'id', 1),
('651', 90, 'Departement Danus', 'page', '', 'Internal', '_self', 74, 5, 'id', 1),
('651', 91, 'Departement Advokasi', 'page', '', 'Internal', '_self', 74, 6, 'id', 1),
('15', 92, 'Profil', 'page', '', 'Internal', '_self', 0, 29, 'id', 1),
('15', 94, 'Sambutan Kepala', 'page', '', 'Internal', '_self', 92, 2, 'id', 1),
('15', 95, 'Sejarah', 'page', '', 'Internal', '_self', 92, 30, 'id', 1),
('15', 96, 'Visi dan Misi', 'page', '', 'Internal', '_self', 92, 31, 'id', 1),
('15', 97, 'Divisi', 'page', '', 'Internal', '_self', 0, 32, 'id', 1),
('15', 98, 'Divisi Keuangan', 'page', '', 'Internal', '_self', 97, 1, 'id', 1),
('15', 99, 'Divisi SDM dan Hukum', 'page', '', 'Internal', '_self', 97, 2, 'id', 1),
('15', 100, 'Divisi Aset dan BMN', 'page', '', 'Internal', '_self', 97, 3, 'id', 1),
('15', 101, 'Divisi Teknologi Informasi', 'page', '', 'Internal', '_self', 97, 4, 'id', 1),
('15', 105, 'Download', 'page', '', 'Internal', '_self', 0, 36, 'id', 1),
('15', 106, 'Struktur Organisasi dan Personalia SPI', 'page', '', 'Internal', '_self', 92, 32, 'id', 1),
('15', 107, 'Tugas dan Fungsi', 'page', '', 'Internal', '_self', 92, 33, 'id', 1),
('15', 108, 'Kode Etik', 'page', '', 'Internal', '_self', 92, 34, 'id', 1),
('15', 113, 'Prosedur Pengawasan Internal', 'page', '', 'Internal', '_self', 104, 1, 'id', 1),
('15', 114, 'Pengaduan Masyarakat (Dumas)', 'page', '', 'Internal', '_self', 0, 38, 'id', 1),
('15', 115, 'Whistleblowing System', 'page', '', 'Internal', '_self', 0, 39, 'id', 1),
('15', 116, 'Form WBS', 'page', '', 'Internal', '_self', 115, 1, 'id', 1),
('15', 117, 'Link WBS Kemenag', 'page', '', 'Eksternal', '_self', 115, 2, 'id', 1),
('15', 118, 'Form Dumas', 'page', '', 'Internal', '_self', 114, 1, 'id', 1),
('15', 120, 'Galeri', 'page', '', 'Internal', '_self', 0, 40, 'id', 1),
('15', 121, 'Kunjungan ke BPKP', 'page', '', 'Internal', '_self', 120, 1, 'id', 1),
('15', 122, 'ADTT University Hotel', 'page', '', 'Internal', '_self', 120, 2, 'id', 1),
('16', 124, 'Link', 'page', '', 'Internal', '_self', 0, 41, 'id', 1),
('15', 125, 'Video Profil', 'page', '', 'Internal', '_self', 92, 35, 'id', 1),
('15', 126, 'Peraturan BLU', 'page', '', 'Internal', '_self', 105, 1, 'id', 1),
('69', 130, 'Profil', 'page', '', 'Internal', '_self', 0, 42, 'id', 1),
('61', 131, 'Profil', 'page', '', 'Internal', '_self', 0, 43, 'id', 1),
('61', 132, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 44, 'id', 1),
('61', 133, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 45, 'id', 1),
('61', 134, 'Unit', 'page', '', 'Internal', '_self', 0, 46, 'id', 1),
('69', 135, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 47, 'id', 1),
('69', 136, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 48, 'id', 1),
('69', 137, 'Unit', 'page', '', 'Internal', '_self', 0, 49, 'id', 1),
('69', 138, 'Study Club', 'page', '', 'Internal', '_self', 0, 50, 'id', 1),
('67', 139, 'Pelatihan Kepala Laboratorium Pendidikan', 'page', '', 'Eksternal', '_blank', 3, 4, 'id', 1),
('66', 140, 'Profile', 'page', '', 'Internal', '_self', 0, 51, 'id', 1),
('66', 141, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 52, 'id', 1),
('66', 142, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 53, 'id', 1),
('66', 143, 'Unit', 'page', '', 'Internal', '_self', 0, 54, 'id', 1),
('45', 144, 'Profil', 'page', '', 'Internal', '_self', 0, 55, 'id', 1),
('45', 145, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 56, 'id', 1),
('45', 146, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 57, 'id', 1),
('45', 147, 'Unit', 'page', '', 'Internal', '_self', 0, 58, 'id', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `kode_unit` varchar(4) NOT NULL,
  `id_page` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `foto` varchar(128) DEFAULT NULL,
  `content` text NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`kode_unit`, `id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
('15', 50, 'Struktur Organisasi dan Personalia', '15_20170411_Struktur Organisasi SPI.jpg', '<p><span style="font-size:16px"><strong>Personalia SPI:</strong></span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Kepala</strong>: Budi Ruhiatudin, S.H., M.Hum.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Sekretaris</strong>: Dr. Sriharini, S.Ag., M.Si.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Staf</strong>: Anitasari, S.E.I.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Koordinator Divisi Keuangan</strong>: Suswini, S.E., M.Acc.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Anggota Divisi Keuangan</strong>: Yayu Putri Senjani, S.E., M.Sc.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Koordinator Divisi SDM dan Hukum</strong>: Shaleh, M.Pd.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Anggota&nbsp;Divisi SDM dan Hukum</strong>:</span></p>\r\n\r\n<p><span style="font-size:14px">1. Retno Pandan Arum Kusumawardhani, S.Psi., M.Si, P.si.</span></p>\r\n\r\n<p><span style="font-size:14px">2. Siti Jahroh, S.H.I., M.S.I.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Koordinator Divisi Aset dan BMN</strong>: M. Arsyadi Ridha, S.E., M.Sc.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Anggota Divisi Aset dan BMN</strong>: Rohinah, S.Pd.I., M.A.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Koordinator Divisi Teknologi Informasi</strong>: Sofyan Hadinata, M.Sc.</span></p>\r\n\r\n<p><span style="font-size:14px"><strong>Anggota&nbsp;Divisi Teknologi Informasi</strong>: Nurochman, S.Kom., M.Kom.</span></p>\r\n', 'id'),
('15', 51, 'Tugas dan Fungsi', NULL, '<p style="margin-left:14.2pt"><span style="font-size:16px">Satuan Pengawas Internal (SPI) UIN Sunan Kalijaga Yogyakarta adalah unit internal yang bersifat independen, menjalankan fungsi dan tugas sebagai berikut:</span></p>\r\n\r\n<ol>\r\n	<li><span style="font-size:16px">Merumuskan kebijakan pengendalian internal di lingkungan universitas;</span></li>\r\n	<li><span style="font-size:16px">Merancang pemeriksaan untuk mendeteksi terjadinya penyimpangan dari ketentuan peraturan perundang-undangan, kecurangan (<em>fraud</em>), serta ketidakpatutan (<em>abuse</em>);</span></li>\r\n	<li><span style="font-size:16px">Melakukan pencegahan terhadap kemungkinan terjadinya penyalahgunaan wewenang di lingkungan universitas;</span></li>\r\n	<li><span style="font-size:16px">Melakukan pengawasan internal melalui kegiatan audit, reviu, evaluasi, pemantauan dan kegiatan pengawasan lainnya dalam bidang keuangan, sumber daya manusia, dan sarana prasarana;</span></li>\r\n	<li><span style="font-size:16px">Menyampaikan hasil pengawasan internal kepada rektor;</span></li>\r\n	<li><span style="font-size:16px">Memantau dan mengkoordinasikan tindak lanjut hasil pemeriksaan internal dan eksternal;</span></li>\r\n	<li><span style="font-size:16px">Menyampaikan saran kepada rektor terkait pengelolaan keuangan, sumber daya manusia, dan sarana prasarana.</span></li>\r\n	<li><span style="font-size:16px">Melaksanakan tugas khusus dalam lingkup sistem pengendalian internal yang ditugaskan oleh rektor.</span></li>\r\n</ol>\r\n', 'id'),
('15', 52, 'Kode Etik', NULL, '<p style="margin-left:14.2pt"><span style="font-size:16px">Pengawas dan/atau auditor internal harus memegang teguh, mematuhi dan melaksanakan Kode Etik sebagai berikut:</span></p>\r\n\r\n<ol>\r\n	<li><span style="font-size:16px">Jujur, objektif, independen, dan cermat dalam pengawasan;</span></li>\r\n	<li><span style="font-size:16px">Memiliki integritas dan loyalitas tinggi terhadap UIN Sunan Kalijaga Yogyakarta;</span></li>\r\n	<li><span style="font-size:16px">Menghindari perbuatan yang merugikan atau patut diduga dapat merugikan UIN Sunan Kalijaga Yogyakarta;</span></li>\r\n	<li><span style="font-size:16px">Menghindari aktivitas yang bertentangan dengan kepentingan UIN Sunan Kalijaga Yogyakarta;</span></li>\r\n	<li><span style="font-size:16px">Menghindari situasi dan kondisi yang mengakibatkan tidak dapat melakukan tugas dan kewajiban secara objektif;</span></li>\r\n	<li><span style="font-size:16px">Tidak menerima janji, imbalan dan/atau apapun dari pihak manapun yang terkait langsung atau tidak langsung dengan pengawasan;</span></li>\r\n	<li><span style="font-size:16px">Tidak memanfaatkan data dan informasi yang diperoleh untuk kepentingan atau keuntungan pribadi;</span></li>\r\n	<li><span style="font-size:16px">Tidak menimbulkan atau patut diduga dapat menimbulkan kerugian bagi UIN Sunan Kalijaga Yogyakarta dengan alasan apapun;</span></li>\r\n	<li><span style="font-size:16px">Melaporkan semua hasil pengawasan dan/atau audit kepada rektor dengan mengungkapkan kebenaran dan tidak menyembunyikan hal yang dapat merugikan UIN Sunan Kalijaga Yogyakarta dan/atau dapat melanggar hukum;</span></li>\r\n	<li><span style="font-size:16px">Mematuhi sepenuhnya standar profesi auditor internal, kebijakan rektor dan peraturan perundangan.</span></li>\r\n</ol>\r\n', 'id'),
('15', 53, 'Divisi Keuangan', NULL, '', 'id'),
('15', 54, 'Divisi SDM dan Hukum', NULL, '', 'id'),
('15', 55, 'Divisi Aset dan BMN', NULL, '', 'id'),
('15', 56, 'Divisi Teknologi Informasi', NULL, '', 'id'),
('15', 57, 'Video Profil', NULL, '', 'id'),
('15', 58, 'Peraturan BLU', NULL, '<p><a href="http://spi.uin-suka.ac.id/media/gambar/15_20170414_PP-74-2012%20Perub.%20PP%2023-05,%20pengelolaan%20keuangan%20blu.pdf">PP No. 74 Tahun 2012 Tentang Pengelolaan Keuangan BLU</a></p>\r\n\r\n<p><a href="http://spi.uin-suka.ac.id/media/gambar/15_20170414_PMK-136-PMK.05-2016-Penataan Aset BLU.pdf">PMK No. 136/PMK.05/2016 Tentang Penataan Aset BLU</a></p>\r\n', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `page_univ`
--

CREATE TABLE `page_univ` (
  `id_page` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `foto` varchar(128) DEFAULT NULL,
  `content` text NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_univ`
--

INSERT INTO `page_univ` (`id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
(1, 'Sejarah', NULL, '<b>1951-1960</b><br><b>Periode Rintisan</b><br> Periode ini dimulai dengan Penegerian Fakultas Agama Universitas Islam  Indonesia (UII) menjadi Perguruan Tinggi Agama Islam (PTAIN) yang diatur dengan Peraturan Presiden Nomor 34 Tahun 1950 Tanggal 14 Agustus 1950 dan Peresmian PTAIN pada tanggal 26 September 1951. Pada Periode ini, terjadi pula peleburan PTAIN (didirikan berdasarkan Peraturan Presiden Nomor 34 Tahun 1950) dan ADIA (didirikan berdasarkan Penetapan Menteri Agama Nomor 1 Tahun 1957) dengan diterbitkannya Peraturan Presiden Nomor 11 Tahun 1960 Tanggal 9 Mei 1960 tentang Pembentukan Institut Agama Islam Negeri (IAIN) dengan nama Al-Jami\'ah al-Islamiyah al-Hukumiyah. pada periode ini, PTAIN berada di bawah kepemimpinan KHR Moh Adnan (1951-1959) dan Prof. Dr. H. Mukhtar Yahya (1959-1960)<br><br><b>1960-1972</b><br><b>Periode Peletakan Landasan</b></br> Periode ini ditandai dengan Peresmian IAIN pada tanggal 24 Agustus 1960. Pada periode ini, terjadi pemisahan IAIN. Pertama berpusat di Yogyakarta dan kedua, berpusat di Jakarta berdasarkan Keputusan Agama Nomor 49 Tahun 1963 Tanggal 25 Februari 1963. Pada periode ini, IAIN Yogyakarta diberi nama IAIN Sunan Kalijaga berdasarkan Keputusan Menteri Agama Nomor 26 Tahun 1965 Tanggal 1 Juli 1965. Pada periode ini telah dilakukan pembangunan sarana dan prasarana pendidikan, dimulai dengan pemindahan kampus lama (di Jalan Simanjuntak, yang sekarang menjadi gedung MAN 1 Yogyakarta ) ke kampus baru yang jauh lebih luas (di Jalan Marsda Adisucipto Yogyakarta). Sejumlah gedung fakultas dibangun dan di tengah-tengahnya dibangun pula sebuah masjid yang masih berdiri kokoh. Sistem pendidikan yang berlaku pada periode ini masih bersifat \'bebas\' karena mahasiswa diberi kesempatan untuk maju ujian setelah mereka benar-benar mempersiapkan diri. Adapun materi kurikulumnya masih mengacu pada kurikulum Timur Tengah (Universitas Al-Azhar, Mesir) yang telah dikembangkan pada masa PTAIN. Pada periode ini, IAIN Sunan Kalijaga berada di bawah kepemimpinan Prof. RHA Soenarjo, SH (1960-1972).</br></br> <b>1972-1996</b><br><b>Periode Peletakan Landasan Akademik</b><br>  Pada periode ini, IAIN Sunan Kalijaga dipimpin secara berturut-turut oleh Kolonel Drs. H. Bakri Syahid (1972-1976), Prof. H. Zaini Dahlan, MA (selama 2 masa jabatan: 1976-1980 dan 1980-1983), Prof. Dr. HA Mu\'in Umar (1983-1992) dan Prof. Dr. Simuh (1992-1996). Pada periodeini, pembangunan sarana prasarana fisik kampus meliputi pembangunan gedung Fakultas Dakwah, Perpustakaan, Program Pascasarjana, dan Rektorat dilanjutkan. Sistem pendidikan yang digunakan pada periode ini mulai bergeser dari \'sistem liberal\' ke \'sistem terpimpin\' dengan mengintrodusir \'sistem semester semu\' dan akhirnya \'sistem kredit semester murni\'. Dari segi kurikulum, IAIN Sunan Kalijaga telah mengalami penyesuaian    yang radikal dengan kebutuhan nasional bangsa Indonesia. Jumlah fakultas bertambah menjadi 5 (lima); yaitu Fakultas Adab, Dakwah, Syari\'ah, Tarbiyah dan Ushuluddin. Program Pascasarjana IAIN Sunan Kalijaga dibuka pada periode ini, tepatnya pada tahun akademik 1983/1984. Program Pascasarjana ini telah diawali dengan kegiatan-kegiatan akademik dalam bentuk short courses on Islamic studies dengan nama Post Graduate Course (PGC) dan Studi Purna Sarjana (PPS) yang diselenggarakan tanpa pemberian gelar setingkat Master. Untuk itu, pembukaan Program pAscasarjana pada dasawarsa delapan puluhan tersebut telah mengukuhkan fungsi IAIN Sunan Kalijaga sebagai lembaga akademik tingkat tinggi setingkat di atas Program Strata Satu.<br><br> <b>1996-2001</b><br><b>Periode Pemantapan Akademik dan Manajemen</b><br> Pada periode ini, IAIN Sunan Kalijaga berada di bawah kepemimpinan Prof. Dr. HM. Atho Mudzhar (1997-2001). Pada periode ini, upaya peningkatan mutu akademik, khususnya mutu dosen (tenaga edukatif) dan mutu alumni, terus dilanjutkan. Para dosen dalam jumlah yang besar didorong dan diberikan kesempatan untuk melanjutkan studi, baik untuk tingkat Magister (S2) maupun Doktor (S3) dalam berbagai disiplin ilmu, baik di dalam maupun di luar negeri. Demikian pula peningkatan sumber daya manusia bagi tenaga administratif dilakukan untuk meningkatkan kualitas manajemen dan pelayanan administrasi akademik. Pada periode ini, IAIN Sunan Kalijaga semakin berkonsentrasi untuk meningkatkan orientasi akademiknya dan mengokohkan eksistensinya sebagai lembaga pendidikan tinggi. Jumlah tenaga dosen yang bergelar Doktor dan Guru Besar meningkat disertai dengan peningkatan dalam jumlah koleksi perpustakaan dan sistem layanannya.<br><br> <b>2001-2010</b><br><b>Periode Pengembangan Kelembagaan</b><br> Periode ini dapat disebut sebagai \'Periode Trasformasi\', karena, pada periode ini telah terjadi peristiwa penting dalam perkembangan kelembagaan pendidikan tinggi Islam tertua di tanah air, yaitu Transformasi Institut Agama ISlam Negeri (IAIN) Sunan Kalijaga menjadi Universitas Islam Negeri (UIN) Sunan Kalijaga berdasarkan Keputusan Presiden Nomor 50 Tahun 2004 Tanggal 21 Juni 2004. Deklarasi UIN Sunan Kalijaga dilaksanakan pada tanggal 14 Oktober 2004. Periode ini di bawah kepemimpinan Prof. Dr. HM. Amin Abdullah (2001-2005) dengan Pembantu Rektor Bidang Akademik Prof. Drs. H. Akh. Minhaji, MA., Ph.D, Pembantu Rektor Bidang Administrasi Umum Drs. H. Masyhudi, BBA, M.Si. dan Pembantu Rektor Bidang Kemahasiswaan Prof. Dr. H. Ismail Lubis, MA (Almarhum) yang kemudian digantikan oleh Dr. Maragustam Siregar, MA.Pada periode kedua (2006-2010) dari kepemimpinan Prof. Dr. HM. Amin Abdullah telah dibentuk Pembantu Rektor Bidang Kerja Sama. Dengan ditetapkannya keberadaan Pembantu Rektor Bidang Kerja Sama, maka kepemimpinan UIN Sunan Kalijaga pada periode kedua ini adalah sebagai berikut : PEmbantu Rektor Bidang Akademik, Dr. H. Sukamta, MA, Pembantu Rektor Bidang Administrasi Umum, Dr. H. Tasman Hamami, MA, Pembantu Rektor Bidang Kemahasiswaan, Dr. Maragustam Siregar, MA, dan Pembantu Rektor Bidang Kerja Sama dijabat oleh Prof. Dr. H. Siswanto Masruri, MA.Perubahan Institut menjadi universitas dilakukan untuk mencanangkan sebuah paradigma baru dalam melihat dan melakukan studi terhadap ilmu-ilmu agama dan ilmu-ilmu umum, yaitu paradigma Integrasi interkoneksi. Paradigma ini mensyaratkan adanya upaya untuk mendialogkan secara terbuka dan intensif antara hadlarah an-nas, hadlarah al-ilm, dan hadlarah al-falsafah. Dengan paradigma ini, UIN Sunan Kalijaga semakin menegaskan kepeduliannya terhadap perkembangan masyarakat muslim khususnya dan masyarakat umum pada umumnya. Pemaduan dan pengaitan kedua bidang studi yang sebelumnya dipandang secara dimatral berbeda memungkinkan lahirnya pemahaman Islam yang ramah, demokratis, dan menjadi rahmatan lil \'alamin.<br><br> <b>2010-2014</b><br><b>Periode Kebersamaan dan Kesejahteraan</b><br>Berdasarkan Keputusan Menteri Agama RI Nomor : B.II/3/16522/2010 Tanggal 6 Desember 2010, Guru Besar Fakultas Ushuluddin, Studi Agama dan Pemikiran Islam diberi tugas tambahan sebagai Rektor UIN Sunan Kalijaga Yogyakarta masa jabatan 2010-2014. Periode di bawah kepemimpinan Prof. Dr. H. Musa Asy’arie dibantu oleh empat Pembantu Rektor yaitu:  Pembantu Rektor Bidang Akademik Dr. Sekar Ayu Aryani, M.Ag., Pembantu Rektor Bidang Administrasi Umum Prof. Dr. H. Nizar, M.Ag,. Pembantu Rektor Bidang Kemahasiswaan Dr. H. Ahmad Rifai,. M.Phil., dan Pembantu Rektor Bidang Kerjasama, Prof. Dr. H. Siswanto Masruri, M.A.Seiring dengan perkembangan jaman dan dalam rangka meningkatkan mutu penyelenggaraan dan pelayanan pendidikan tinggi, dinilai organisasi tata kerja Universitas Islam Negeri Sunan Kalijaga Yogyakarta perlu ditata kembali. Oleh karena itu, Organisasi Tata Kerja Universitas Islam Negeri Sunan Kalijaga mengalami perubahan berdasarkan Peraturan Menteri Agama Nomor 26 Tahun 2013. Sesuai dengan Organisasi Tata Kerja Universitas Islam Negeri Sunan Kalijaga yang baru, dalam melaksanakan tugasnya, Rektor  dibantu oleh tiga Wakil Rektor yaitu: Wakil Rektor Bidang Akademik dan Kemahasiswaan Dr. Sekar Ayu Aryani, M.Ag., Wakil Rektor Bidang Administrasi Umum, Perencanaan dan Keuangan, Prof. Dr. H. Nizar, M.Ag.,dan wakil Rektor Bidang Kelembagaan dan Kerja sama Dr. H. Maksudin, MA.', 'id'),
(2, 'Visi - Misi - Tujuan', 'visi-misi-univ.jpg', 'Visi:<br>Unggul dan Terkemuka dalam Pemanduan dan Pengembangan Keislaman dan Keilmuan bagi Peradaban.<br><br>Misi:<br>Memadukan dan mengembangkan studi keislaman, keilmuan, dan keindonesiaan dalam pendidikan dan pengajaran.Mengembangkan budaya ijtihad dalam penelitian multidisipliner yang bermanfaat bagi kepentingan akademik dan masyarakat.Meningkatkan peran serta institusi dalam menyelesaikan persoalan bangsa berdasarkan pada wawasan keislaman dan keilmuan bagi terwujudnya masyarakat madani.Membangun kepercayaan dan mengembangkan kerjasama dengan berbagai pihak untuk meningkatkan kualitas pelaksanaan Tridharma Perguruan Tinggi.<br><br>Tujuan:<br>Menghasilkan sarjana yang mempunyai kemampuan akademis dan profesional yang integratif-interkonektif.Menghasilkan sarjana yang beriman, berakhlak mulia, memiliki kecakapan sosial, manajerial, dan berjiwa kewirausahaan serta rasa tanggung jawab sosial kemasyarakatan.Menghasilkan sarjana yang yang menghargai dan menjiwai nilai-nilai keilmuan dan kemanusiaan.Menjadikan Universitas sebagai pusat studi yang unggul dalam bidang kajian dan penelitian yang integratif-interkonektif.Membangun jaringan yang kokoh dan fungsional dengan para alumni.', 'id'),
(3, 'Core Values', 'corevalues.png', '<br><b>Integratif-Interkonektif:</b><br><br>Sistem keterpaduan dalam pengembangan akademik, manajemen, kemahasiswaan, kerjasama, dan entrepreneurship.<br><br><b>Dedikatif-Inovatif:</b><br><br>Bersikap dedikatif, amanah, pro mutu, berpikir dan bergerak aktif, kreatif, cerdas, dan inovatif; tidak sekadar bekerja rutin dan rajin.<br><br><b>Inklusif-Continuous Improvement:</b><br><br>Bersifat terbuka, akuntabel, dan komit terhadap perubahan dan keberlanjutan.', 'id'),
(4, 'Lambang & Logo', 'lambangdanlogo.jpg', 'Sebagai bagian dari upaya untuk memperbaharui citra UIN Sunan Kalijaga, sejak tahun 2010 dilakukan perubahan lambang dan logo universitas. Lambang dan logo yang baru adalah sebagai berikut.<br><br>\r\n\r\nBentuk dasar lambang dan logo adalah bunga matahari dengan satu tangkai dan dua lembar daun. Kelopak bunga diwujudkan dalam bentuk ornamen klasik bercorak Islam. Helai daun sebelah kiri visualisasi huruf ‘U’, tangkainya huruf ‘I’ dan daun sebelah kanan huruf ‘N’ sehingga dapat dibaca U-I-N.<br><br>\r\n\r\nLambang bercorak bunga menyerupai simbol jaring laba-laba kesalingterkaitan dan keterhubungan antara sains dan agama yang terpatri dalam ikon mozaik pada dinding luar gedung bangunan UIN—diambil dari ornamen pada dinding Istana Alhambra masa Khalifah Bani Umayah di Granada, Spanyol yang mencakup wilayah perbukitan. Istana Alhambra selesai dibangun pada abad ke-14, periode Muhammad Yusuf, 1333-1353 dan periode Muhammad V, Sultan Granada, 1353-1391 pada masa Dinasti Nasar/Daulah Ahmar (1232-1492). Seni ornamen tersebut memberi banyak pengaruh berbagai bangunan di Timur dan Barat. Perpaduan Timur dan Barat ini (La syarqiyyah wa la gharbiyyah) dapat dimaknai sebagai visi dan misi UIN yang ingin menepis dikotomi keilmuan menuju integrasi dan interkoneksi bidang keilmuan menuju keunggulan peradaban.<br><br>\r\n\r\nMotif ornamen merupakan perpaduan cita rasa seni tingkat tinggi dari budaya Islam di Timur Tengah dan budaya Eropa di Barat sebagai simbol integrasi-interkoneksi. Bila dicermati, beberapa ornamen pada bangunan UIN telah mengaplikasikan penggunaan dua buah bentuk 4 persegi sebagai unsur dasar pembentukan ornamen tersebut.<br><br>\r\n\r\nVisual bunga dipilih sebagai bentuk dasar logo karena merupakan simbol keindahan, keharuman, keserasian, keseimbangan dan kebaikan. Allah SWT menyukai keindahan dan keharuman sebab Allah SWT maha indah dan maha harum. Hal ini menyiratkan UIN selalu membawa kesejukan dan keindahan bagi lingkungan sekitar serta keharuman dalam memainkan seluruh kiprahnya. Hal ini juga dapat dimaknai bahwa UIN Sunan Kalijaga benar-benar bermaksud hendak menanamkan spirit dan karakter kemanusiaan yang bersifat rahmatan lil ‘alamin.<br><br>\r\n\r\nKelopak bunga berwarna kuning emas diambil dari jenis logam mulia, menunjukkan kemewahan, kehormatan, kemuliaan, kekekalan, keabadian, kesetiaan dan pengabdian. Menyiratkan ketajaman pikiran, keagungan cita, keluhuran budi, kecemerlangan pikiran dan muatan spiritualitas menuju UIN Sunan Kalijaga yang unggul dan terkemuka. Kemewahan dan kekayaan diwujudkan dalam bentuk kedalaman ilmu, kekayaan budi pekerti, kematangan diri dan kearifan budaya lokal. UIN Sunan Kalijaga hendak menjadi unggul dan terkemuka, namun tetap santun dan rendah hati.<br><br>\r\n\r\nWarna hijau pada daun melambangkan kontinuitas, kesegaran, kealamiahan dan pembaharuan. Hijau merupakan simbol harapan, pertumbuhan, kelahiran, kemakmuran, kesuburan dan regenerasi melalui berbagai inovasi tiada henti.<br><br>\r\n\r\nHijau memiliki sejarah kontinuitas bagi transformasi UIN Sunan Kalijaga. Hijau juga memuat pesan religius, sebab dalam surat Al-Insan (76) : 21 dan Al-Kahfi (18) : 31 dikabarkan penghuni surga mengenakan pakaian berwarna hijau.<br><br>', 'id'),
(5, 'Hymne & Mars', NULL, 'Hymne<br><img alt="" src="http://web.archive.org/web/20171023062718im_/http://www.uin-suka.ac.id/media/content_images/hymne.png" style="border:medium none" width="100%"><br>Hymne Universitas merupakan lagu bernada sedang (bariton), bertempo lambat, berwibawa dan mengandung makna pujian, berjiwa Pancasila dan berdasarkan ajaran Islam serta mencerminkan cita-cita Universitas.<br><br>Mars<br><img  width="100%" alt="" src="http://web.archive.org/web/20171023062718im_/http://www.uin-suka.ac.id/media/content_images/mars.png" style="border:medium none"><br><br>Mars Universitas merupakan lagu bernada sedang (bariton), tinggi (sopran), dan rendah (bas) berkombinasi, bertempo agung, tenang, optimis, berjiwa Pancasila, dan mencerminkan cita-cita Universitas.', 'id'),
(6, 'Bendera & Busana', NULL, '', ''),
(7, 'Film & Jinggle', 'poster_film.jpg', '<br>Film ini menceritakan tentang kehidupan mahasiwa UIN Sunan Kalijaga. Film berukuran 537 MB dalam bentuk rar file', 'id'),
(8, 'Dasar Hukum', NULL, '', 'id'),
(9, 'Manajemen & Organisasi', NULL, '', 'id'),
(10, 'Sarana & Prasarana', 'pau.jpg', 'Tuntutan zaman pada pendidikan tinggi di Indonesia saat ini adalah bahwa sebuah institusi pendidikan harus mampu memberikan kontribusi pada peningkatan nation competiteveness yang menghasilkan “pendidikan berkualitas” bagi keunggulan bangsa.<br><br>\r\n \r\nTuntunan ini dijawab oleh UIN Sunan Kalijaga dengan memformulasikan sejumlah keunggulan sebagai Tempat Pendidikan. Di antara keunggulan itu adalah kajian keilmuan yang integrative-interkonektif, standarisasi mutu lulusan, standarisasi mutu pelayanan, IT yang terintegrasi, kerja sama dalam dan luar negeri, serta Piloting Research Center.<br><br>\r\n \r\nTidak cukup sekedar konsep, sarana dan prasarana yang menunjang untuk merealisasikan formula keunggulan itu telah dibangun juga di UIN Sunan Kalijaga, seperti masjid, perpustakaan, laboratorium, poliklinik, pascasarjana, pusat administrasi, pusat computer, Research Center, Theatrical Class, Student Center, Multipurpose Building, Sport Venue, Campus Service Center, Language and Culture Center, University Club House, University Press, Play Group, Guest House, Training Center, dan Lecture Hall.<br><br>\r\n \r\nSelain dapat menikmati taman dan parkir kendaraan yang memadai, seluruh sivitas akademika UIN Sunan Kalijaga melakukan proses belajar mengajar di gedung-gedung baru yang memiliki ruang-ruang representative dan media pembelajaran yang berbasis IT. Kinerja mereka pun didukung pula dengan adanya anjungan-anjungan computer, anjungan mesin absensi, peralatan laboratorium terpadu, peralatan sistem informasi terpadu, peralatan poliklinik, peralalatan multimedia center, laboratorium psikologi, laboratorium bahasa, dan system pelayanan perpustakaan dengan Electric Library Information Management System (ELIMS), dengan system pengkodean RFID (Radio Frecuncy Identify) yang tercanggih di Indonesia.', 'id'),
(11, 'Corporate Identity', NULL, '', 'id'),
(12, 'Quality Assurance', NULL, '<img src="http://localhost/webunit/asset/img/img_web_uin/sertif_qa.jpg"><br><b>Kebijakan Mutu :</b><br>Sebagai Lembaga Pendidikan Tinggi yang berkualitas, Universitas Islam Negeri Sunan Kalijaga mampu mengembangkan integrasi-interkoneksi studi keislaman dan keilmuan serta menghasilkan lulusan berdaya saing tinggi dan berakhlak mulia.<br><br> <b>Sasaran Mutu :</b><br>Karya penelitian tentang integrasi-interkoneksi studi keislaman dan keilmuan minimal 50%.Karya ilmiah staf edukatif yang dipublikasikan internasional minimal 10 buah per tahun.Lulusan berkarya di masyarakat sesuai dengan bidang keahlian dalam tahun pertama minimal 70%.Tepat waktu studi minimal 80%.Indeks kinerja dosen > 3.0 minimal 90%.Lulusan mampu berkomunikasi global (TOEFL\'s score minimal 450 dan TOAFL\'s score minimal 70 skala 100) minimal 80%.Lulusan mampu mengaplikasikan teknologi informasi minimal 80%.<br><br> <b>Lima Arah Pengembangan :</b><br>Moral-Spiritual Capasity Building (Pembinaan Kapasitas Moral-Spiritual)Intellectual and Academic Capacity Building (Pembinaan Kapasitas Intelektual dan Akademik)Institutional Capacity Building (Pembinaan Kapasitas Institusional)Social Capacity Building (Pembinaan Kapasitas Sosial)Entrepreneurship and Managerial Capasity Building (Pembinaan Kapasitas Kewirausahaan dan Manajerial) <br><br><b>Dua Belas Bidang Pengembangan :</b><br>KelembagaanAkademikKemahasiswaanPenelitian dan PublikasiPengabdian kepada MasyarakatManajemenKetenagaanSarana-PrasaranaKeuanganPerpustakaanTeknologi InformasiKerja Sama <br><br><b>Kerangka Kerja Pengembangan : </b><br><img src="http://localhost/webunit/asset/img/img_web_uin/qa.jpg"><br><br><b>Akreditasi Institusi:</b><br><br><iframe width="100%" height="500px;" name="plugin" id="plugin" src="http://localhost/webunit/asset/img/img_web_uin/dokumen/BAN_PT_UIN_SUKA0001.pdf"></iframe>', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `kode_unit` int(11) NOT NULL,
  `id_pengumuman` int(11) NOT NULL,
  `nama_pengumuman` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pusat_studi`
--

CREATE TABLE `pusat_studi` (
  `id_pusat_studi` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `nama_pusat_studi` varchar(250) NOT NULL,
  `deskripsi` text,
  `menu_url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `unit_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pusat_studi`
--

INSERT INTO `pusat_studi` (`id_pusat_studi`, `kode_unit`, `nama_pusat_studi`, `deskripsi`, `menu_url`, `kode_bahasa`, `unit_order`) VALUES
(1, '67', 'Kelompok Studi Satu', '<p style="text-align:justify">Deskripsi Kelompok Studi Satu</p>\r\n', 'page/pusat_studi/1-INFINITY-IT-CLUB', 'id', 1),
(2, '67', 'Kelompok Studi Dua', '<p style="text-align:justify">Deskripsi Kelompok Studi Dua</p>\r\n', 'page/pusat_studi/2-Kelompok-Studi-Linux-KSL', 'id', 2),
(3, '67', 'Kelompok Studi Tiga', '<p style="text-align:justify">Deskripsi Kelompok Studi Tiga</p>\r\n', 'page/pusat_studi/3-iDept', 'id', 3),
(4, '67', 'Kelompok Studi Empat', '<p>Deskripsi Kelompok Studi Empat</p>\r\n', 'page/pusat_studi/4-Himpunan-Mahasiswa-Program-Studi-HM-PS-TIF', 'id', 4),
(5, '67', 'Kelompok Studi Lima', '<p>Deskripsi Kelompok Studi Lima</p>\r\n', 'page/pusat_studi/9-Informatics Intellegence', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `side_menu`
--

CREATE TABLE `side_menu` (
  `kode_unit` varchar(4) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(64) NOT NULL,
  `url` varchar(128) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `side_menu`
--

INSERT INTO `side_menu` (`kode_unit`, `id_menu`, `nama_menu`, `url`, `kode_bahasa`, `menu_order`) VALUES
('41', 1, 'Pendidikan Agama Islam', 'page/pai', 'id', 1),
('41', 2, 'Pendidikan Bahasa Arab', 'page/pba', 'id', 2),
('41', 3, 'Pendidikan Raodhatul Atfal', 'page/pra', 'id', 3),
('41', 4, 'Pendidikan Guru Madrasah Ibtidaiyah', 'page/pgmi', 'id', 4),
('41', 5, 'Manajemen Pendidikan Islam', 'page/mpi', 'id', 5),
('67', 6, 'Pedoman Akademik', 'page/pedoman_akademik/2', 'id', 6),
('67', 7, 'Curriculum', 'page/kurikulum', 'en', 7),
('67', 8, 'Lecturer', 'page/dosen', 'en', 8),
('67', 9, 'Course Schedule', 'page/jadwal_kuliah', 'en', 9),
('67', 10, 'Exam Schedule', 'page/jadwal_ujian', 'en', 10),
('67', 11, 'Calendar', 'page/kalender', 'en', 11),
('67', 12, 'Academic Guidance', 'page/profil/4/pedoman-akademik', 'en', 12);

-- --------------------------------------------------------

--
-- Table structure for table `slide_2016`
--

CREATE TABLE `slide_2016` (
  `id_slide` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `picture` varchar(128) NOT NULL,
  `background` varchar(16) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `kode_unit` varchar(4) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `kode_prodi` varchar(8) NOT NULL,
  `nama_unit` varchar(255) NOT NULL,
  `subdomain` varchar(64) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama_sidebar_unit` varchar(128) NOT NULL,
  `status_slider_bar` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`kode_unit`, `kode_bahasa`, `kode_prodi`, `nama_unit`, `subdomain`, `alamat`, `telp`, `email`, `nama_sidebar_unit`, `status_slider_bar`) VALUES
('00', '', '', 'PTIPD', 'prodi', '', '', '', '', '0'),
('12', '', '', 'Unit Layanan Pengadaan', 'ulp', 'Jl. Marsda Adisucipto Yogyakarta 55281', '0274-512474', 'ulp@uin-suka.ac.id', 'LPSE', '0'),
('15', '', '', 'Satuan Pengawas Internal', 'spi', 'Jl. Marsda Adisucipto Yogyakarta 55281', '0274-512474', 'spi@uin-suka.ac.id', '', '1'),
('16', 'id', '', 'Center for the Study of Islam and Social Transformation (CISFORM)', 'cisform', 'Gedung Pusat Studi, Rektorat Lama Lt.3, Jl. Marsda Adisucipto, Yogyakarta, 55281', '081804259519', 'cisform.uinsuka@gmail.com', 'CISForm Corner', '0'),
('41', 'id', '', 'Laboratorium Pendidikan', 'labpendidikan', 'Jl. Marsda Adisucipto Yogyakarta 55281', '+62274-512474', 'labpendidikan@uin-suka.ac.id', 'Laboratorium', '0'),
('45', 'id', '', 'Pendidikan Guru Madrasah Ibtidaiyah', 'pgmi', 'Jl. Marsda Adi Sucipto Yogyakarta', '+62-274-512474, +62-274-589621', 'pgmi@uin-suka.ac.id\r\n\r\n', '', '1'),
('51', '', '', 'Filsafat Agama', 'filsafat', '', '', '', '', '0'),
('52', '', '', 'Perbandingan Agama', 'pa', '', '', '', '', '0'),
('53', '', '', 'Ilmu Al-Quran dan Tafsir', 'iat', '', '', '', '', '0'),
('54', '', '', 'Sosiaologi Agama', 'sa', '', '', '', '', '0'),
('55', '', '', 'Ilmu Hadis', 'ilmuhadis', '', '', '', '', '0'),
('61', '', '', 'Matematika', 'matematika', 'Jl. Marsda Adisucipto Yogyakarta 55281', '+62-274-512474, +62-274-589621', 'matematika@uin-suka.ac.id', '', '1'),
('62', '', '', 'Fisika', 'fisika', '', '', '', '', '0'),
('63', '', '', 'Kimia', 'kimia', '', '', '', '', '0'),
('64', '', '', 'Biologi', 'biologi', '', '', '', '', '0'),
('65', '', '', 'Teknik Informatika', 'informatika', '', '', '', '', '0'),
('651', '', '', 'HM-PS Teknik Informatika', 'himatif', 'Jl. Marsda Adi Sucipto Yogyakarta', '+62 85643756855', 'hmpstifuinsuka@gmail.com', '', '1'),
('66', '', '', 'Teknik Industri', 'industri', '', '', '', '', '0'),
('67', 'id', '', 'Pendidikan Kimia', 'pkim', '\nJl. Marsda Adisucipto Yogyakarta 55281', '+62274-512474', 'pkim@uin-suka.ac.id', 'Info Jurusan / Program Studi', '1'),
('68', '', '', 'Pendidikan Biologi', 'pbio', '', '', '', '', '0'),
('69', '', '', 'Pendidikan Fisika', 'pfis', 'Jl. Marsda Adisucipto Yogyakarta 55281', '+62274-512474', 'pfis@uin-suka.ac.id', '', '1'),
('71', '', '', 'Psikologi', 'psikologi', '', '', '', '', '0'),
('72', '', '', 'Sosiologi', 'sosiologi', '', '', '', '', '0'),
('73', '', '', 'Ilmu Komunikasi', 'komunikasi', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(128) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `level` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `kode_unit`, `level`) VALUES
('13650042', '651', 'WPR002'),
('197904172009121004', '12', 'WPR002'),
('197905062006041003', '12', 'WPR002'),
('198012232009011007', '15', 'WPR002'),
('198302220000001201', '12', 'WPR002'),
('198610302011011005', '12', 'WPR002'),
('adminuniv', '100', 'WPR002'),
('admin_industri', '66', 'WPR002'),
('admin_kimia', '63', 'WPR002'),
('admin_matematika', '61', 'WPR002'),
('admin_pfis', '69', 'WPR002'),
('admin_pgmi', '45', 'WPR002'),
('admin_pkim', '67', 'WPR002'),
('cisform', '16', 'WPR002'),
('it', '15', 'WPR002'),
('pksi02', '00', 'WPR001'),
('spi', '15', 'WPR002'),
('tarbiyahweb', '41', 'WPR002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`kode_bahasa`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `kamus`
--
ALTER TABLE `kamus`
  ADD PRIMARY KEY (`kata`);

--
-- Indexes for table `kolom`
--
ALTER TABLE `kolom`
  ADD PRIMARY KEY (`id_kolom`);

--
-- Indexes for table `laboratorium`
--
ALTER TABLE `laboratorium`
  ADD PRIMARY KEY (`id_lab`);

--
-- Indexes for table `liputan`
--
ALTER TABLE `liputan`
  ADD PRIMARY KEY (`id_liputan`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `page_univ`
--
ALTER TABLE `page_univ`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pusat_studi`
--
ALTER TABLE `pusat_studi`
  ADD PRIMARY KEY (`id_pusat_studi`);

--
-- Indexes for table `side_menu`
--
ALTER TABLE `side_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `slide_2016`
--
ALTER TABLE `slide_2016`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`kode_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `kolom`
--
ALTER TABLE `kolom`
  MODIFY `id_kolom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `liputan`
--
ALTER TABLE `liputan`
  MODIFY `id_liputan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `page_univ`
--
ALTER TABLE `page_univ`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pusat_studi`
--
ALTER TABLE `pusat_studi`
  MODIFY `id_pusat_studi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `side_menu`
--
ALTER TABLE `side_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `slide_2016`
--
ALTER TABLE `slide_2016`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
