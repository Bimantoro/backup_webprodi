

CREATE TABLE IF NOT EXISTS `admin_menu` (
`id_menu` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `id_group_menu` int(11) NOT NULL,
  `menu` varchar(60) NOT NULL,
  `url` varchar(250) NOT NULL,
  `image` varchar(60) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `agenda` (
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`kode_unit`, `id_agenda`, `nama_agenda`, `deskripsi`, `kode_ruang`, `tempat`, `tgl_mulai`, `tgl_selesai`, `lampiran`, `tgl_posting`, `kode_bahasa`, `counter`) VALUES
('67', 1, 'The openSUSE Asia Summit 2016 ', '', '', '', '2016-10-01 08:00:00', '2016-10-02 08:00:00', '', '2016-09-06 07:40:10', 'id', 105),
('67', 19, 'tambah satu agenda', 'testing', 'FAIB-3-308', 'ADAB FAIB-308', '2016-11-10 08:00:00', '2016-11-11 16:00:00', '20161109_arab1.jpg', '2016-11-09 05:42:40', 'id', 0),
('67', 20, 'tambah agenda ke dua', 'testing 2', '', 'PASCASARJANA PPS-409', '2016-11-11 08:00:00', '2018-11-11 16:00:00', '67_20180524_', '2018-05-23 21:13:48', 'id', 0),
('41', 22, 'Rapat', 'Rapat Pendaftaran Online PPL', '', 'Ruang Pertemuan Lt2', '2016-12-01 08:00:00', '2016-12-01 16:00:00', '20161201-logo_uin.jpg', '2016-12-01 03:56:50', 'id', 0),
('41', 24, 'coba tambah agenda 1', 'ini adalah agenda pertama', 'PPS-2-201', 'PASCASARJANA PPS-201', '2016-12-01 08:00:00', '2016-12-02 14:00:00', '20161201_arab2.jpg', '2016-12-01 03:52:28', 'id', 0),
('15', 25, 'Reviu tugas dan fungsi pegawai', '', 'PAU-3-301', 'PUSAT ADMINISTRASI UNIVERSITAS Ruang Rapat PAU Lantai 3', '2017-04-03 08:00:00', '2017-04-28 16:00:00', '15_20170407_', '2017-04-07 07:23:07', 'id', 0),
('67', 28, 'urunan lagi', 'aaa', '', '', '2018-05-23 08:00:00', '2018-05-24 08:00:00', '67_20180523_logo autumn.jpg', '2018-05-22 23:35:42', 'id', 0),
('45', 29, 'Satu', 'tentang', '', '', '2018-05-22 08:00:00', '2018-05-23 08:00:00', '45_20180524_Untitled-1.jpg', '2018-05-23 21:06:27', 'id', 0),
('45', 30, 'Agenda', 'a', '', '', '2018-05-23 08:00:00', '2018-05-31 08:00:00', '45_20180524_pkim.jpg', '2018-05-23 21:11:54', 'id', 0),
('67', 31, 'tambah agenda baru', '', '', '', '2018-05-23 08:00:00', '2019-05-31 08:00:00', '67_20180524_', '2018-05-23 21:20:09', 'id', 0),
('45', 32, 'tambah', '', '', '', '2018-05-24 13:00:00', '2018-05-25 11:00:00', '45_20180524_', '2016-05-23 17:00:00', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bahasa`
--

CREATE TABLE IF NOT EXISTS `bahasa` (
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

CREATE TABLE IF NOT EXISTS `berita` (
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `kode_unit`, `judul`, `ringkasan`, `isi`, `foto`, `deskripsi_foto`, `tgl_posting`, `kode_bahasa`, `counter`) VALUES
(32, '41', 'Seminar Internasional " Parenting with Love and Piece"', 'Seminar Internasional &quot; Parenting with Love and Piece&quot;', '&lt;div class=&quot;isi&quot; style=&quot;font-weight:normal&quot;&gt;\r\n&lt;div class=&quot;isi&quot; style=&quot;font-weight:normal&quot;&gt;\r\n&lt;p&gt;&lt;strong&gt;Yogyakarta(22/11)&lt;/strong&gt;, &lt;em&gt;&amp;ldquo;Education is the most powerfull weapon you can use to change the world. Education begins in the home&amp;rdquo;&lt;/em&gt; (Tillman, 2014) Sebuah kutipan penuh makna yang disampaikan Narasumber Dr. Rani Anggraeni Dewi dalam acara Seminar internasional &amp;quot;&lt;em&gt;Parenting with Love and Peace&amp;quot;&lt;/em&gt; yang diselenggarakan Oleh Program Studi PGRA/PIAUD FITK UIN Sunan Kalijaga Yogyakarta bekerjasama dengan STPI Bina Insan Mulia Yogyakarta, ALIVE International, The Asia Foundation, serta PUSAM UMY Yogyakarta, disamping itu hadir juga sebagai narasumber pada acara ini Kana Gopal dari Singapura, I Wayan Rustiana, Philip Yusenda dan sebaginya.&lt;/p&gt;\r\n\r\n&lt;p&gt;Dalam acara yang deselenggarakan pada tanggal 22 November 2016 bertempat di teatrikal Fakultas Sains dan Teknologi UIN Sunan Kalijaga Yogyakarta, narasumber mengajak peserta untuk mencermati berbagai kasus kekerasan baik fisik maupun non fisik yang semakin marak terjadi dilingkungan masyarakat bahkan dilingkungan sekolah, penyimpangan perilaku orang dewasa dan anak-anak juga banyak terjadi. Tentunya hal ini sangat memprihatinkan dan memerlukan penyikapan dan penanganan dengan intens, pengejaran dan penenaman nilai mutlak harus dilakukan bahkan sejak dari Rumah sebagai Lingkungan belajar anak. Oleh karenanya pola pengasuhan hendaknya dibangun dengan penuh kesadaran sehingga mampu menghadirkan makna dan nilai-nilai luhur, dalam Bahasa lain Conscious Perenting yang berlandaskan pengalaman atual yang berhubungan dengan anak.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lebih lanjut Dr. Rani menyampaikan 9 jurus Pengeasuhan berbasis nilai mengutp Tilma, 2014: Sembilan jurus tersebut adalah: 1, Pentingna bermain dan &amp;ldquo;waktu kita&amp;rdquo;, 2. Memuji dan Membengun sikap positif, 3. Keseimbangan, disiplin dan cinta, 4. Mendengar aktif dan mendengar dengan hati, 5. Ritual keluarga hadapi perubahan, 6. Pikir dulu sebelum berkata &amp;ldquo;tidak&amp;rdquo;, 7. Stabilkan Emosi dan Komunikasi, kuatkan cinta, 8. Waktu Rehat, waktu berfikir. 9 waktu untuk menjadi. Dalam akhir acara narasumber mengingatkan bahwa mengasuh anak bukan sekedar mengasuh manusia kecil, namun bermakna jauh di balim itu. Dan pengasuhan adalah misi spiritual &lt;em&gt;&amp;ldquo; men are spiritual being seeking experience as human being&amp;rdquo;. &lt;/em&gt;&lt;strong&gt;*Ha*&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '20161130_SEMINAR INTERNATIONAL LOVE.JPG', 'Seminar Internasional " Parenting with Love and Piece"', '2016-11-30 01:54:50', 'id', 108),
(36, '41', 'Fungsi dan Layanan Lab FITK', 'Fungsi dan Layanan Lab FITK', '&lt;p&gt;Fungsi dan Layanan Lab FITK&lt;/p&gt;\r\n', '20161202_Capture.JPG', 'Fungsi dan Layanan Lab FITK', '2016-12-02 00:42:26', 'id', 99),
(37, '41', 'Pelatihan E Kaligrafi,Evaluasi Proses Plp II', 'evaluasi proses PLP II 2016', '&lt;p&gt;E Kaligrafi&lt;/p&gt;\r\n\r\n&lt;p&gt;Evaluasi Proses Program Latihan Profesi II&lt;/p&gt;\r\n', '41_20161216_fgg.jpg', '', '2016-12-20 01:16:44', 'id', 143),
(38, '41', 'kunjungan Lab MP UNY', 'kunjungan Lab MP UNY', '&lt;p&gt;kunjungan Lab MP UNY&lt;/p&gt;\r\n', '41_20161216_photovisi-download.jpg', 'kunjungan Lab MP UNY', '2016-12-16 08:25:50', 'id', 117),
(39, '41', 'evaluasi proses PLP II 2016', 'evaluasi proses PLP II 2016', '&lt;p&gt;evaluasi proses PLP II 2016&lt;/p&gt;\r\n', '41_20161220_evaluasi proses PLP II 2016.JPG', '', '2016-12-20 06:59:00', 'id', 184),
(40, '41', 'kunjungan Lab MP UNY', 'kunjungan Lab MP UNY', '&lt;p&gt;kunjungan Lab MP UNY&lt;/p&gt;\r\n', '41_20161220_kunjungan Lab MP UNY.JPG', '', '2016-12-20 06:59:37', 'id', 230),
(41, '41', 'Pelatihan Penulisan Bahasa Arab', 'Pelatihan Penulisan Bahasa Arab', '&lt;p&gt;Pelatihan Penulisan Bahasa Arab&lt;/p&gt;\r\n', '41_20161220_Pelatihan Penulisan Bahasa Arab.JPG', '', '2016-12-20 07:01:10', 'id', 175),
(42, '41', 'Praktik Magang III di Lokasi', 'Praktik Magang III di Lokasi', '&lt;p&gt;Praktik Magang III di Lokasi&lt;/p&gt;\r\n', '41_20161220_Praktik Magang III di Lokasi.JPG', '', '2016-12-20 07:01:47', 'id', 206),
(43, '41', 'Pelatihan Kaligrafi', 'Pelatihan Kaligrafi', '&lt;p&gt;Pelatihan Kaligrafi&lt;/p&gt;\r\n', '41_20161220_Kaligrafi.JPG', '', '2016-12-20 07:04:08', 'id', 154),
(44, '16', 'CISForm Luncurkan Komik Jihad di STIM Ngruki Sukoharjo', 'ringkasan', '&lt;p style=&quot;text-align:justify&quot;&gt;Jihad memiliki makna yang luas. Namun kerap disalahartikan oleh oknum tertentu untuk mengubah pola pikir generasi muda ke arah negatif. Akibatnya, tindak radikalisme dan terorisme sering terjadi di Indonesia.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Demi memudahkan generasi muda dalam memahami jihad, Pusat Studi Islam dan Transformasi Sosial (CIS Form) UIN Sunan Kalijaga meluncurkan komik dan film anti-ideologi ultra konservtif di Sekolah Tinggi Islam Al Mukmin (STIM) Ngruki, Kamis (27/10).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Direktur CIS Form Muhammad Wildan menerangkan, jihad memiliki makna yang luas. Ia berkata dengan diluncurkannya komik berjudul&amp;nbsp;&lt;em&gt;&amp;ldquo;Si Gun Pingin Jihad dan Rindu Khilafah&lt;/em&gt;&amp;rdquo; bertujuan agar remaja muslim berjihad secara kontekstual dan positif, dengan memaksimalkan potensinya dalam belajar.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Diangkatnya komik ini juga berdasarkan hasil riset Pusat Studi CIS Form, sebagai upaya mengatasi berbagai penyebaran radikalisme dan ideologi ultra konservatif.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&amp;ldquo;Mahasiswa, siswa SLTA, santri pesantren dan remaja masjid adalah generasi muda yang sering mempunyai idialisme tinggi. Termasuk semangat dalam beragama Islam. Di usia anak muda yang akrab dengan&amp;nbsp;&lt;em&gt;gadget&lt;/em&gt;&amp;nbsp;saat ini, biasanya ideologi ultra konservatif lebih mudah disebarkan.&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&amp;ldquo;Komik ini merupakan&amp;nbsp;&lt;em&gt;counter narrative&lt;/em&gt;&amp;nbsp;yang belum banyak dilakukan oleh para pemangku kepentingan untuk mereduksi kemungkinan tersebarnya ideologi ekstrem kanan,&amp;rdquo; ungkapnya, Kamis (27/10/2016).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Dengan komik tersebut, diharapakan generasi muda akan memahami jihad dengan cara yang lebih ringan. &amp;ldquo;Kami mencetak sekitar 5.000 eksemplar komik dan persebarannya baru tingkat lokal Jogja dan Solo. Nanti rencana akan ke NTB,&amp;rdquo; kata Wildan (https://joglosemar.co/2016/10/cis-form-luncurkan-komik-jihad-stim-ngruki-sukoharjo.html)&lt;/p&gt;\r\n', '16_20170208_B1.jpg', 'Kegiatan Launching Komik', '2017-02-08 07:56:32', 'id', 111),
(46, '651', 'UINIC 1.0', 'UINIC merupakan sebuah event yang diadakan oleh Himpunan Mahasiswa Teknik Informatika UIN Sunan Kalijaga', '&lt;p&gt;&lt;span style=&quot;color:rgb(102, 102, 102); font-family:open sans,arial,sans-serif; font-size:14px&quot;&gt;UINIC 1.0&amp;nbsp;merupakan serangkaian acara IT yang mengusung tema smart solution&amp;nbsp;dan diselenggarakan oleh Program Teknik Studi Informatika, dan Himpunan Mahasiswa Teknik Informatika UIN Sunan Kalijaga Yogyakarta. UINIC 1.0&amp;nbsp;juga menghadirkan seminar dan talkshow dengan topik smart solution, kompetisi IT berupa ide pengembangan perangkat lunak dan pengembangan inovasi untuk mahasiswa dan pelajar, Workshop untuk mengasah para programmer dalam kemampuan pemrograman, workshop berkerja sama dengan Dicoding yang sudah terbukti banyak mencetak para programmer handal, IT Expo yang memamerkan karya dari pihak pelaku industri kecil dalam bidang keilmuan Teknik Informatika dan ditutup dengan Malam Inagurasu. Dengan adanya UINIC 1.0, diharapkan masyarakat dapat lebih mengenal smart solution diberbagai bidang&amp;nbsp;dan potensi teknologi informasi dalam mendukung kehidupan yang lebih baik.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Info lengkap kunjungi&lt;br /&gt;\r\n&lt;a href=&quot;http://uinic.id&quot;&gt;uinic.id&lt;/a&gt;&lt;/p&gt;\r\n', '651_20170327_USSC-banner-web.jpeg', '', '2017-03-27 07:06:39', 'id', 106),
(48, '16', 'CALL FOR BOOK CHAPTERS “ISLAMISME DAN POST-ISLAMISME DI INDONESIA”', '', '&lt;p style=&quot;text-align:justify&quot;&gt;CISForm (&lt;em&gt;Center for the Study of Islam and Social Transformation&lt;/em&gt;) UIN Sunan Kalijaga mengundang para pakar, peneliti, akademisi, praktisi, dan masyarakat umum untuk berpartisipasi mengirimkan karya tulis ilmiah untuk diterbitkan dalam bentuk buku (&lt;em&gt;edited volume&lt;/em&gt;) dengan tema &amp;ldquo;Islamisme dan Post-Islamisme di Indonesia&amp;rdquo; (editor Dr. Moh. Nur Ichwan, dan Dr. Muhammad Wildan) yang akan terbit pada Oktober 2017. Kegiatan ini terbuka untuk umum sesuai dengan prosedur yang telah ditetapkan.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;A. Sub Tema&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Sub tema bahasan mencakup hal sebagai berikut:&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Konsep, sejarah, dan problematika Islamisme dan Post-Islamisme di Indonesia;&lt;/li&gt;\r\n	&lt;li&gt;Gerakan Post-Islamisme kontemporer;&lt;/li&gt;\r\n	&lt;li&gt;Islamisme dan/atau Post-Islamisme dalam Ormas Islam&lt;em&gt;&amp;nbsp;mainstream&lt;/em&gt;&amp;nbsp;di Indonesia;&lt;/li&gt;\r\n	&lt;li&gt;Gerakan Islamisme dan Post-Islamisme di akar rumput;&lt;/li&gt;\r\n	&lt;li&gt;Pemuda, radikalisme, terorisme, dan radikalisasi;&lt;/li&gt;\r\n	&lt;li&gt;Tema-tema lain yang relevan dengan Islamisme dan Post-Islamisme di Indonesia.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;B. Ketentuan&lt;/strong&gt;&amp;nbsp;&amp;nbsp;&lt;strong&gt;Umum.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Ketentuan umum penulisan CISForm: Islamisme dan Post-Islamisme di Indonesia, adalah sebagai berikut:&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li style=&quot;text-align:justify&quot;&gt;Perserta mengirimkan abstrak ke panitia, maksimal 250 kata (Inggris/Indonesia) dan melampirkan CV data diri, dikirmkan melalui email:&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;mailto:cisform.uinsuka@gmail.com&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 136, 204); text-decoration-line: none; outline: none !important;&quot;&gt;cisform.uinsuka@gmail.com&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;dan di-cc ke;&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;mailto:moh.ichwan@uin-suka.ac.id&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 136, 204); text-decoration-line: none; outline: none !important;&quot;&gt;moh.ichwan@uin-suka.ac.id&lt;/a&gt;&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li style=&quot;text-align:justify&quot;&gt;Pengirim abstrak terpilih akan dihubungi lebih lanjut oleh panitia untuk mengikuti Konferensi/Workshop &amp;ldquo;Islamisme dan Post-Islamisme di Indonesia&amp;rdquo; yang akan diadakan oleh CISForm.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align:justify&quot;&gt;Artikel/tulisan yang diajukan merupakan karya original, bukan plagiasi, dan belum pernah dipublikasikan sebelumnya.&lt;/li&gt;\r\n	&lt;li style=&quot;text-align:justify&quot;&gt;Artikel/tulisan yang diterbitkan berhak mendapat honor dari panitia.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;C. Tanggal-tanggal Penting&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Pengumpulan abstrak 10 April s/d 10 Juni 2017&lt;/li&gt;\r\n	&lt;li&gt;Pengumuman penulis terpilih 15 Juni 2017&lt;/li&gt;\r\n	&lt;li&gt;&lt;em&gt;Due date&amp;nbsp;&lt;/em&gt;draft artikel 10 Agustus 2017&lt;/li&gt;\r\n	&lt;li&gt;Konferensi/Workshop 10 Agustus 2017&lt;/li&gt;\r\n	&lt;li&gt;&lt;em&gt;Due date&amp;nbsp;&lt;/em&gt;artikel final 10 September 2017&lt;/li&gt;\r\n	&lt;li&gt;Cetak dan publikasi Oktober 2017&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;Kontak panitia:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;085329042761 (Ishak) &amp;nbsp;&amp;nbsp;&lt;/strong&gt;atau&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;email:&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;mailto:cisform.uinsuka@gmail.com&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 136, 204); text-decoration-line: none; outline: none !important;&quot;&gt;cisform.uinsuka@gmail.com&lt;/a&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:5.9pt&quot;&gt;Demikian pengumuman &lt;em&gt;Call for Book Chapter &lt;/em&gt;ini kami sampaikan. Terima kasih atas partisipasi Saudara dalam penulisan karya tulis atau penyebarluasan pengumuman ini.&lt;/p&gt;\r\n', '16_20170408_Call For Book Chapters.jpg', 'Pamflet Call For Book Chapters', '2017-04-08 09:59:22', 'id', 88),
(49, '16', 'NABI MUHAMMAD SEORANG FEMINIS', '', '&lt;p style=&quot;text-align:center&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;strong&gt;Alimatul Qibtiyah, Ph.D&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Tidak berlebihan rasanya kalau kita katakan bahwa Nabi Muhammad adalah seorang feminist atau pelopor gerakan perempuan di dunia Islam. Rosulullah menggunakan prinsip keadilan dan persamaan dalam menata dan membangun masyarakat Islam di Madinah. Prinisp-prinsip itu jugalah yang digunakan dalam melihat relasi laki-dan perempuan. Kehidupan masyarakat sebelum Islam datang sangat patriarchi (&lt;em&gt;male center&lt;/em&gt;) yaitu lebih mengutamakan laki-laki dan menilai rendah perempuan.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Suatu hari sahabat Umar Bin Khatab tertawa dan setelah itu menangis. Dia tertawa karena ingat saat dirinya belum masuk Islam pernah membuat tuhan dari makanan dan saat dibawa jalan-jalan dan merasa capek dia makan bagian anggota tubuh tuhan itu. Dia merasa geli dan bodoh dengan perbuatannya itu. Dia menangis karena saat masih hidup dalam budaya jahiliyah dia telah mengubur anak perempuannya hidup-hidup karena dia merasa malu mempunyai anak perempuan. Dia sangat menyesali perbuatan itu dan dia sering menangis jika teringat akan kebodohan dan kekejian yang dilakukan pada anak perempuannya.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Jaman pra-Islam menjadi perempuan tidak hanya memalukan namun juga tidak mempunyai hak yang sama dengan laki-laki seperti hak mendapatkan warisan dan hak menikah lagi bagi para janda. Selain itu juga kabanyakan perempuan hanya diposisikan sebagai objek sexual. Hal ini terlihat dengan tidak adanya batasan polygamy bagi masyarakat pra-Islam. Sebelum ayat&amp;nbsp; poligami turun (Q. S. &lt;em&gt;An nisa&amp;rsquo;&lt;/em&gt;, 3, 20, dan 129), banyak sahabat nabi yang mempunyai istri lebih dari empat, dan rasululah memintanya untuk memilih empat saja dengan ketentuan bahwa tetap menegakkan keadilan. Dengan demikian maka ayat poligami adalah ayat yang mengindikasikan &lt;em&gt;batasan&lt;/em&gt; dan &lt;em&gt;syarat&lt;/em&gt; yang harus diperhatikan untuk berpoligami bukan sebagai &lt;em&gt;anjuran&lt;/em&gt;.&amp;nbsp; Selain itu karena turunnya ayat poligami adalah setelah perang uhud dimana ada 10% sahabat muslim laki-laki Nabi yang meninggal dunia, maka spirit poligami adalah sebagai strategi untuk mengatasi persoalan ekonomi dan sosial para janda dan anak yatim yang ditinggal mati bapaknya di perang uhud. Salah satu cirri masyarakat patriarchi adalah tidak memberikan proteksi atau perlindungan pada perempuan termasuk janda. Kalau keamanan janda terancam maka keamanan dan keselamatan anak yatim dari janda itupun juga terancam. Oleh karena itu poligami bisa dilakukan jika bisa berbuat adil kepada para istri dan anak-anaknya dan juga karena beralasan untuk memberikan perlindungan pada perempuan dan anak yatim yang secara budaya tidak diuntungkan.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Jika diihat lebih cermat lagi, alasan poligami yang dilakukan rasulullah sebenarnya bukan karena alasan sexual, reproduksi, dan juga bukan karena jumlah perempuan lebih banyak daripada laki-laki. Rosulullah poligami setelah Khadijah, istri pertama, meninggal. Selama 25 tahun menikah dengan khadijah Nabi dikaruniai anak laki-laki dan perempuan. Namun hanya Fatimah, anak perempuanya saja yang masih hidup sampai dewasa bahkan sampai menikah. Semua anak laki-laki beliau meninggal di usia yang masih kanak-kanak. Sebenarnya dia bisa melakukan poligami untuk mendapatkan anak laki-laki di saat Khadijah masih hidup, karena budaya poligami adalah budaya yang sudah mengakar dan biasa dilakukan oleh bangsa Arab. Dan Nabi berasal dari suku Quraisy yaitu salah satu suku terpandang di Arab saat itu. Namun beliau tidak melakukannya. Jadi kalau ada yang melakukan poligami karena alasan reproduksi atau pengen punya anak, maka sebenarnya bukan poligami ala rasulullah.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Nabi Muhammad adalah seorang feminist juga dapat dilihat dari bentuk penghormatan terhadap ibu atau perempuan. Di saat Nabi ditanya oleh para sahabat, siapa orang yang paling dihormati, beliau menjawabnya ibu. Bahkan Nabi sampai mengatakannya tiga kali, baru yang keempat kalinya adalah bapak. Hal ini bukan berarti Nabi membedakan kedudukan laki-laki dan perempuan baik di mata Allah, di masyarakat atau di keluarga, tetapi hal ini disampaikan guna merespon budaya saat itu yang tidak menghargai perempuan terutama ibu yang telah mengandung anaknya selama sembilan bulan. Dengan mengatakan penghormatannya ke ibu tiga kali dan baru ke bapak, beliau menekankan bahwa perempuan adalah sosok manusia yang terhormat, bernilai serta bermartabat sebagaimana laki-laki. Dengan demikian Nabi berusaha mengangkat posisi perempuan terutama ibu pada posisi yang mulia dan bermartabat di masyarakat Arab saat itu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Terakhir Nabi juga menganjurkan untuk berbuat baik pada pasangan baik suami atau istri. Hal ini diungkapkan dalam Qur&amp;rsquo;an surat &lt;em&gt;Al baqoroh&lt;/em&gt;/2:187 bahwa istri adalah pakaian bagi suami dan suami adalah pakaian bagi istri. Dalam Qur&amp;rsquo;an &lt;em&gt;An Nisa&amp;rsquo;&lt;/em&gt;/4:19 juga disampaikan agar memperlakukan istri dengan cara yang makruf atau baik. Dari dua text ini mengindikasikan bahwa laki-laki dan perempuan mempunyai hak kenyamanan dan kesenangan yang sama dalam keluarga, baik secara phisik, psikis, maupun sexual. Tidak hanya mempunyai keadilan dalam mendapatkan gizi, dan kasih saying, tetapi juga hak untuk mendapatkan kepuasan sexual.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Dengan menyimak sekilas tentang apa yang dilakukan Nabi terhadap kedudukan, hak, dan pengakuan perempuan, maka sebelum para feminists Barat menabuh gendangnya di awal abad 21, tepatnya 1920 untuk memperjuangkan perempuan agar mempunyai hak memilih dalam pemilihan umum, maka Nabi Muhammad di akhir abad enam masehi sudah melakukan perubahan sosial yang berdasarkan keadilan dan persamaan hak terhadap laki-laki dan perempuan. Oleh karena itu marilah kita contoh Nabi Muhammad dalam menegakkan dan memperjuangkan keadilan laki-laki dan perempuan di masyarakat guna membangun masyarakat madani.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:right&quot;&gt;&lt;strong&gt;Penulis: Anggota Cisfrom, Dosen KPI Fakultas Dakwah dan Komunikasi UIN Sunan Kalijaga, &lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:right&quot;&gt;&lt;strong&gt;Ketua LPPA Pimpinan Pusat &amp;lsquo;Aisyiyah.&lt;/strong&gt;&lt;/p&gt;\r\n', '16_20170503_alim.jpg', '', '2017-05-03 06:50:14', 'id', 53),
(51, '67', 'testing tanggal', 'testing tanggal', '&lt;p&gt;cuman testing tanggal&lt;/p&gt;\r\n', '67_20180523_wagon.jpg', 'testing tanggal', '2018-05-22 23:51:33', 'id', 21),
(52, '67', 'judul berita kedua', 'ini adalah berita kedua testing', '&lt;p&gt;ini testing lagi&lt;/p&gt;\r\n', '67_20180523_danangpresentasi.JPG', 'foto tidak jelas', '2018-04-02 01:32:49', 'id', 82),
(55, '45', 'Silahkan dihapus Berita ini', 'Bagi mahasiswa UIN Sunan Kalijaga Yogyakarta yang telah melakukan pembayaran UKT/SPP Semester Genap 2017/2018 dan juga bagi mahaiswa penerima beasiswa bidimisi/kerjasama, harap perhatiakan baik-baik pengumuman mengenai jadwal pengisian KRS Semester Genap 2017/2018 sebagaimana telah dicantumkan di lamanhttp://akademik.uin-suka.ac.id/page/pengumuman/detail/981/pengumuman-jadwal-pengisian-krs-semester-genap-ta-20172018 Hanya mahasiswa yang memiliki jadwal pengisian KRS seperti tertera dalam pengumuman yang dapat login ke laman akademik.uin-suka.ac.id selama masa pengisianKRS. ', '&lt;p&gt;Bagi mahasiswa UIN Sunan Kalijaga Yogyakarta yang telah melakukan pembayaran UKT/SPP Semester Genap 2017/2018 dan juga bagi mahaiswa penerima beasiswa bidimisi/kerjasama, harap perhatiakan baik-baik pengumuman mengenai jadwal pengisian KRS Semester Genap 2017/2018 sebagaimana telah dicantumkan di lamanhttp://akademik.uin-suka.ac.id/page/pengumuman/detail/981/pengumuman-jadwal-pengisian-krs-semester-genap-ta-20172018 Hanya mahasiswa yang memiliki jadwal pengisian KRS seperti tertera dalam pengumuman yang dapat login ke laman akademik.uin-suka.ac.id selama masa pengisianKRS.&lt;/p&gt;\r\n', '45_20180524_341.jpg', 'foto', '2018-05-23 21:00:25', 'id', 0),
(57, '67', 'test 123', '231 ', '&lt;p&gt;weqwewsa&lt;/p&gt;\r\n', '67_20180524_jazz.jpg', 'qweq', '2018-05-29 22:22:20', 'id', 1),
(58, '67', 'awfefef', 'awefawef', '&lt;p&gt;dsfadfafds&lt;/p&gt;\r\n', '67_20180524_holdenkingwoord.jpg', 'wefwes', '2018-05-24 22:22:51', 'id', 0),
(59, '67', 'asdfasdfasdfasdf', 'asdfasdfa', '&lt;p&gt;adafasdfaweawefawef&lt;/p&gt;\r\n', '67_20180524_holdenkingwoord.jpg', 'adfadsfads', '2018-05-22 22:23:09', 'id', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `kode_unit` varchar(4) NOT NULL,
`id_dokumen` int(11) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`kode_unit`, `id_dokumen`, `kode_bahasa`, `nama_dokumen`, `tahun`, `nama_file`, `tgl_posting`) VALUES
('', 3, 'id', 'dokumen 4', '2016', '20161024-', '2016-10-24 05:42:00'),
('41', 4, 'id', 'Panduan Magang I', '2016', '41_20161219_Buku Panduan Magang I 2016.pdf', '2016-12-18 20:33:45'),
('41', 5, 'id', 'Panduan Magang III', '2016', '41_20161219_Buku  MAGANG III 2016.pdf', '2016-12-19 08:32:46'),
('41', 6, 'id', 'Panduan Magang II', '2016', '41_20161219_Buku magang II 2016.pdf', '2016-12-19 08:37:19'),
('41', 7, 'id', 'Panduan PKL (PGMI)', '2016', '41_20161219_Buku Panduan PKL 2016.pdf', '2016-12-19 08:38:52'),
('41', 8, 'id', 'Profil Lab', '2016', '41_20161220_Profile Lab Pendidikan FITK 2016.pdf', '2016-12-20 01:15:05'),
('41', 9, 'id', 'Pra Program Latihan Profesi I (PLP)', '2016', '41_20161222_pra program plp 1.png', '2016-12-22 08:47:47'),
('41', 10, 'id', 'Kesediyaan  Menjadi Lokasi PLP I', '2016', '41_20161222_KESEDIYAAN0001.pdf', '2016-12-22 08:48:35'),
('16', 11, 'id', 'Modul Advokasi Sosial. Muhammad Wildan dkk. 2014', '2014', '16_20170407_Modul Advokasi Sosial - CISForm.pdf', '2017-04-07 02:10:41'),
('16', 13, 'id', 'Modul Leadership. Moch Nur Ichwan dkk. 2012', '2012', '16_20170407_Modul Leadership - CISForm.pdf', '2017-04-07 02:13:37'),
('16', 14, 'id', 'Islamism and Democratization in the Post 212. Muhammad Wildan. 2017', '2017', '16_20170407_Islamism and Democratization in the Post 411 Adn 212 Rallies of Indonesia.pdf', '2017-04-07 02:16:32'),
('16', 15, 'id', 'MUI, Gerakan Islam dan Umat Mengambang. Moch Nur Ichwan. 2017', '2017', '16_20170407_MUI, Gerakan Islamis, dan Umat Mengambang.pdf', '2017-04-07 02:19:20'),
('16', 16, 'id', 'Perempuan dan Media Dalam ABI. Alimatul Qibtiyah. 2017', '2017', '16_20170407_Perempuan dan Media  dalam Aksi “Bela Islam”.pdf', '2017-04-07 02:21:25'),
('16', 17, 'id', 'ABI. Keshalehan Populer dan Identitas Muslim Perkotaan. Muhammad Wildan. 2017', '2017', '16_20170407_Wildan_Jurnal+MAARIF_2017_aksi 212 kesalehan populer.pdf.pdf', '2017-04-07 02:25:42'),
('15', 19, 'id', 'PP Nomor 74 Tahun 2012', '2012', '15_20170414_PP-74-2012 Perub. PP 23-05, pengelolaan keuangan blu.pdf', '2017-04-13 22:09:28'),
('15', 20, 'id', 'PMK Nomor 136/PMK.05/2016 Tentang Penataan Aset BLU', '2016', '15_20170414_PMK-136-PMK.05-2016-Penataan Aset BLU.pdf', '2017-04-14 00:53:41'),
('67', 39, 'id', 'isiin', '', '67_20180523_laporan_mhs_biodata_pilih-1523930973.pdf', '2018-05-23 02:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `kamus`
--

CREATE TABLE IF NOT EXISTS `kamus` (
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

CREATE TABLE IF NOT EXISTS `kolom` (
`id_kolom` int(11) NOT NULL,
  `kode_unit` varchar(8) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kolom`
--

INSERT INTO `kolom` (`id_kolom`, `kode_unit`, `judul`, `ringkasan`, `isi`, `tgl_posting`, `kode_bahasa`, `counter`) VALUES
(1, '67', 'Uji coba kolom 1', 'coba sekali aja', 'ini adalah isi kolom', '2016-10-05 06:55:55', 'id', 0),
(7, '67', 'test judul', 'test ringkasan', '&lt;p&gt;test isi&lt;/p&gt;\r\n', '2016-11-09 03:35:30', 'id', 0),
(8, '67', 'judul kolom pendidikan kimia', 'ringkasan kolom pendidikan kimia', '&lt;p&gt;isi kolom pendidikan kimia&lt;/p&gt;\r\n', '2016-11-10 03:54:31', 'id', 0),
(9, '67', 'testing tanggal', 'testing tanggal', '&lt;p&gt;testing&lt;/p&gt;\r\n', '2018-01-02 02:40:37', 'id', 0),
(11, '45', 'Delete aja kolomnya', 'rungkas aja', '&lt;p&gt;isissisisisisisisissisi&lt;/p&gt;\r\n', '2018-05-24 01:58:13', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laboratorium`
--

CREATE TABLE IF NOT EXISTS `laboratorium` (
`id_lab` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `nama_lab` varchar(250) NOT NULL,
  `deskripsi` text,
  `foto` varchar(128) NOT NULL,
  `menu_url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `unit_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `liputan` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `liputan`
--

INSERT INTO `liputan` (`id_liputan`, `kode_unit`, `judul`, `ringkasan`, `isi`, `foto`, `deskripsi_foto`, `tgl_posting`, `kode_bahasa`, `counter`) VALUES
(1, '67', 'Uji Coba Liputan', 'coba aja', 'yayayayayyaya', '', '', '2016-10-05 06:49:30', 'id', 37),
(20, '', 'test liputan 3', 'test liputan 3', 'test liputan 3', '20161021_4.JPG', 'test liputan 3', '2016-10-20 23:27:26', 'id', 0),
(21, '67', 'testing tanggal', 'testing tanggal ringkas', '&lt;p&gt;testing&lt;/p&gt;\r\n', '67_20180523_aby.jpg', 'testing', '2018-01-02 02:37:21', 'id', 1),
(22, '45', 'Liputan dihapus aja', 'Bagi mahasiswa UIN Sunan Kalijaga Yogyakarta yang telah melakukan pembayaran UKT/SPP Semester Genap 2017/2018 dan juga bagi mahaiswa penerima beasiswa bidimisi/kerjasama, harap perhatiakan baik-baik pengumuman mengenai jadwal pengisian KRS Semester Genap 2017/2018 sebagaimana telah dicantumkan di lamanhttp://akademik.uin-suka.ac.id/page/pengumuman/detail/981/pengumuman-jadwal-pengisian-krs-semester-genap-ta-20172018 Hanya mahasiswa yang memiliki jadwal pengisian KRS seperti tertera dalam pengumuman yang dapat login ke laman akademik.uin-suka.ac.id selama masa pengisianKRS. ', '&lt;p&gt;Bagi mahasiswa UIN Sunan Kalijaga Yogyakarta yang telah melakukan pembayaran UKT/SPP Semester Genap 2017/2018 dan juga bagi mahaiswa penerima beasiswa bidimisi/kerjasama, harap perhatiakan baik-baik pengumuman mengenai jadwal pengisian KRS Semester Genap 2017/2018 sebagaimana telah dicantumkan di lamanhttp://akademik.uin-suka.ac.id/page/pengumuman/detail/981/pengumuman-jadwal-pengisian-krs-semester-genap-ta-20172018 Hanya mahasiswa yang memiliki jadwal pengisian KRS seperti tertera dalam pengumuman yang dapat login ke laman akademik.uin-suka.ac.id selama masa pengisianKRS.&lt;/p&gt;\r\n', '45_20180524_341.jpg', 'foto', '2018-05-22 21:01:49', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
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

CREATE TABLE IF NOT EXISTS `menu` (
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`kode_unit`, `id_menu`, `nama_menu`, `url`, `modul`, `jenis_url`, `target`, `parent`, `menu_order`, `kode_bahasa`, `status`) VALUES
('67', 1, 'Profil', 'page/profil/1/profil', '', 'Internal', '_blank', 0, 1, 'id', 1),
('67', 2, 'Dokumen', 'dokumen', '', 'Internal', '', 0, 2, 'id', 1),
('67', 3, 'Fasilitas', '#', '', 'Internal', '', 0, 3, 'id', 1),
('67', 4, 'Unit', '', '', 'Internal', '', 0, 4, 'id', 1),
('67', 5, 'Profil', 'page/prodi/2-Profil-Program-Studi-Teknik-Informatika', '', 'Internal', '', 1, 1, 'id', 1),
('67', 6, 'Visi - misi - tujuan', 'page/prodi/3-Visi-Misi-Tujuan', '', 'Internal', '', 1, 2, 'id', 1),
('67', 11, 'Jurnal Online UIN Sunan Kalijaga', 'http://journal.uin-suka.ac.id', '', 'Eksternal', '_blank', 3, 3, 'id', 1),
('67', 18, 'Kurikulum', 'page/kurikulum', '', 'Internal', '', 5, 1, 'id', 1),
('67', 19, 'Dosen', 'page/dosen', '', 'Internal', '', 5, 2, 'id', 1),
('67', 20, 'Jadwal Kuliah', 'page/jadwal_kuliah', '', 'Internal', '', 5, 3, 'id', 1),
('67', 21, 'Jadwal Ujian', 'page/jadwal_ujian', '', 'Internal', '', 5, 4, 'id', 1),
('67', 22, 'Kalender', 'page/kalender', '', 'Internal', '', 5, 5, 'id', 1),
('67', 23, 'Pedoman Akademik', 'page/pedoman_akademik/2', '', 'Internal', '', 5, 6, 'id', 1),
('67', 24, 'Profile', '', '', '', '', 0, 1, 'en', 1),
('67', 25, 'Document', '', '', '', '', 0, 2, 'en', 1),
('67', 26, 'Facility', '', '', '', '', 0, 3, 'en', 1),
('67', 27, 'Unit', '', '', '', '', 0, 4, 'en', 1),
('67', 28, 'Profile', '', '', '', '', 38, 1, 'en', 1),
('67', 29, 'Vision - Mision - Goals', '', '', '', '', 38, 2, 'en', 1),
('67', 30, 'Competence and Achieve', '', '', '', '', 38, 3, 'en', 1),
('67', 31, 'Management and Organization', '', '', '', '', 38, 4, 'en', 1),
('41', 36, 'Profil', 'page/prodi/9', '', 'Internal', '_self', 0, 5, 'id', 1),
('41', 39, 'Pendaftaran', 'http://tarbiyah.nusagates.com/pendaftaran-plp-i/', '', 'Eksternal', '_blank', 0, 8, 'id', 1),
('41', 40, 'Fungsi dan Layanan', 'page/prodi/12', '', 'Internal', '_self', 0, 9, 'id', 1),
('41', 41, 'Pendukung Akademik (supporting academic)', 'page/prodi/13', '', 'Internal', '_self', 40, 1, 'id', 1),
('41', 42, 'Layanan Penelitian (Research Fasilities)', 'page/prodi/14', '', 'Internal', '_self', 40, 2, 'id', 1),
('41', 43, 'Layanan Publik (Public Services)', 'page/prodi/15', '', 'Internal', '_self', 40, 3, 'id', 1),
('41', 44, 'Data dan Fakta', '', '', 'Internal', '_self', 0, 10, 'id', 1),
('41', 45, 'Divisi', '', '', 'Internal', '_self', 0, 11, 'id', 1),
('41', 46, 'E-Kaligrafi dan Penulisan Bahasa Arab', 'page/prodi/16', '', 'Internal', '_self', 45, 1, 'id', 1),
('41', 47, 'Sinematografi', '', '', 'Internal', '_self', 45, 2, 'id', 1),
('41', 48, 'Fotografi', '', '', 'Internal', '_self', 45, 3, 'id', 1),
('41', 49, 'Bahasa', '', '', 'Internal', '_self', 45, 4, 'id', 1),
('41', 50, 'Unduhan', 'dokumen', '', 'Internal', '_self', 0, 12, 'id', 1),
('41', 51, 'Journal Edulab', 'http://ejournal.uin-suka.ac.id/tarbiyah/edulab', '', 'Eksternal', '_blank', 45, 5, 'id', 1),
('12', 56, 'HOME', 'page/unit/19', '', 'Internal', '_self', 0, 13, 'id', 1),
('12', 57, 'REGULASI', 'www.uin-suka.ac.id', '', 'Eksternal', '_self', 0, 14, 'id', 1),
('12', 58, 'PENGADAAN', '', '', 'Internal', '_self', 0, 15, 'id', 1),
('12', 59, 'BERITA', '', '', 'Internal', '_self', 0, 16, 'id', 1),
('12', 60, 'UNDANG-UNDANG', '', '', 'Internal', '_self', 57, 1, 'id', 1),
('12', 61, 'PERPRES', '', '', 'Internal', '_self', 57, 2, 'id', 1),
('12', 62, 'R U P', '', '', 'Internal', '_self', 0, 17, 'id', 1),
('12', 63, 'TAHUN 2017', '', '', 'Internal', '_self', 62, 1, 'id', 1),
('16', 64, 'Profil', 'page/prodi/23', '', 'Internal', '_self', 0, 18, 'id', 1),
('16', 66, 'Program', 'page/prodi/25', '', 'Internal', '_self', 0, 20, 'id', 1),
('16', 67, 'Publikasi', 'dokumen', '', 'Internal', '_self', 0, 21, 'id', 1),
('16', 71, 'Penelitian', 'page/prodi/28', '', 'Internal', '_self', 0, 23, 'id', 1),
('651', 73, 'Profil', '', '', 'Internal', '_self', 0, 24, 'id', 1),
('651', 74, 'Departement', '', '', 'Internal', '_self', 0, 25, 'id', 1),
('651', 75, 'Acara', '', '', 'Internal', '_self', 0, 26, 'id', 1),
('651', 76, 'Beasiswa', '', '', 'Internal', '_self', 0, 27, 'id', 1),
('651', 77, 'Dokumen', '', '', 'Internal', '_self', 0, 28, 'id', 1),
('651', 78, 'Visi dan Misi', 'page/prodi/33', '', 'Internal', '_self', 73, 1, 'id', 1),
('651', 79, 'Struktur Kepengurusan', 'page/prodi/34', '', 'Internal', '_self', 73, 29, 'id', 1),
('651', 80, 'Badan Kepengurusan Harian', 'page/prodi/35', '', 'Internal', '_self', 73, 30, 'id', 1),
('651', 81, 'Seminar', '', '', 'Internal', '_self', 75, 1, 'id', 1),
('651', 82, 'Lomba', '', '', 'Internal', '_self', 75, 2, 'id', 1),
('651', 83, 'AD /RT', '', '', 'Internal', '_self', 77, 1, 'id', 1),
('651', 84, 'Bank Soal UTS', '', '', 'Internal', '_self', 77, 2, 'id', 1),
('651', 85, 'Bank Soal UAS', '', '', 'Internal', '_self', 77, 29, 'id', 1),
('651', 86, 'Departement Infokom', 'page/prodi/36', '', 'Internal', '_self', 74, 1, 'id', 1),
('651', 87, 'Departement Minat Bakat', 'page/prodi/37', '', 'Internal', '_self', 74, 2, 'id', 1),
('651', 88, 'Departement Sumber Daya Mahasiswa', 'page/prodi/38', '', 'Internal', '_self', 74, 3, 'id', 1),
('651', 89, 'Departement Hubungan Antar Lembaga', 'page/prodi/39', '', 'Internal', '_self', 74, 4, 'id', 1),
('651', 90, 'Departement Danus', 'page/prodi/40', '', 'Internal', '_self', 74, 5, 'id', 1),
('651', 91, 'Departement Advokasi', 'page/prodi/41', '', 'Internal', '_self', 74, 6, 'id', 1),
('15', 92, 'Profil', '', '', 'Internal', '_self', 0, 29, 'id', 1),
('15', 94, 'Sambutan Kepala', 'page/prodi/47', '', 'Internal', '_self', 92, 2, 'id', 1),
('15', 95, 'Sejarah', 'page/prodi/48', '', 'Internal', '_self', 92, 30, 'id', 1),
('15', 96, 'Visi dan Misi', 'page/prodi/46', '', 'Internal', '_self', 92, 31, 'id', 1),
('15', 97, 'Divisi', '', '', 'Internal', '_self', 0, 32, 'id', 1),
('15', 98, 'Divisi Keuangan', 'page/prodi/53', '', 'Internal', '_self', 97, 1, 'id', 1),
('15', 99, 'Divisi SDM dan Hukum', 'page/prodi/54', '', 'Internal', '_self', 97, 2, 'id', 1),
('15', 100, 'Divisi Aset dan BMN', 'page/prodi/55', '', 'Internal', '_self', 97, 3, 'id', 1),
('15', 101, 'Divisi Teknologi Informasi', 'page/prodi/56', '', 'Internal', '_self', 97, 4, 'id', 1),
('15', 105, 'Download', '', '', 'Internal', '_self', 0, 36, 'id', 1),
('15', 106, 'Struktur Organisasi dan Personalia SPI', 'page/prodi/50', '', 'Internal', '_self', 92, 32, 'id', 1),
('15', 107, 'Tugas dan Fungsi', 'page/prodi/51', '', 'Internal', '_self', 92, 33, 'id', 1),
('15', 108, 'Kode Etik', 'page/prodi/52', '', 'Internal', '_self', 92, 34, 'id', 1),
('15', 113, 'Prosedur Pengawasan Internal', '', '', 'Internal', '_self', 104, 1, 'id', 1),
('15', 114, 'Pengaduan Masyarakat (Dumas)', '', '', 'Internal', '_self', 0, 38, 'id', 1),
('15', 115, 'Whistleblowing System', '', '', 'Internal', '_self', 0, 39, 'id', 1),
('15', 116, 'Form WBS', '', '', 'Internal', '_self', 115, 1, 'id', 1),
('15', 117, 'Link WBS Kemenag', 'http://wbs.kemenag.go.id/', '', 'Eksternal', '_self', 115, 2, 'id', 1),
('15', 118, 'Form Dumas', '', '', 'Internal', '_self', 114, 1, 'id', 1),
('15', 120, 'Galeri', '', '', 'Internal', '_self', 0, 40, 'id', 1),
('15', 121, 'Kunjungan ke BPKP', 'page/prodi/49', '', 'Internal', '_self', 120, 1, 'id', 1),
('15', 122, 'ADTT University Hotel', '', '', 'Internal', '_self', 120, 2, 'id', 1),
('16', 124, 'Link', 'page/prodi/45', '', 'Internal', '_self', 0, 41, 'id', 1),
('15', 125, 'Video Profil', 'page/prodi/57', '', 'Internal', '_self', 92, 35, 'id', 1),
('15', 126, 'Peraturan BLU', 'page/prodi/58', '', 'Internal', '_self', 105, 1, 'id', 1),
('69', 130, 'Profil', 'page', '', 'Internal', '_self', 0, 42, 'id', 1),
('61', 131, 'Profil', 'page', '', 'Internal', '_self', 0, 43, 'id', 1),
('61', 132, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 44, 'id', 1),
('61', 133, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 45, 'id', 1),
('61', 134, 'Unit', 'page', '', 'Internal', '_self', 0, 46, 'id', 1),
('69', 135, 'Dokumen', 'dokumen', '', 'Internal', '_self', 0, 47, 'id', 1),
('69', 136, 'Fasilitas', 'page', '', 'Internal', '_self', 0, 48, 'id', 1),
('69', 137, 'Unit', 'page', '', 'Internal', '_self', 0, 49, 'id', 1),
('69', 138, 'Study Club', 'page', '', 'Internal', '_self', 0, 50, 'id', 1),
('67', 139, 'Pelatihan Kepala Laboratorium Pendidikan', 'http://www.pelatihanlab-uinsuka.info/', '', 'Eksternal', '_blank', 3, 4, 'id', 1),
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

CREATE TABLE IF NOT EXISTS `page` (
  `kode_unit` varchar(4) NOT NULL,
`id_page` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `foto` varchar(128) DEFAULT NULL,
  `content` text NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`kode_unit`, `id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
('67', 2, 'Profil Program Studi Pendidikan Kimia', '', '<table border="1" cellpadding="1" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Nama/kode</strong></td>\r\n			<td>\r\n			<p style="text-align:center">Program Studi:<strong> Pendidikan Kimia (S1)/6160403200102</strong></p>\r\n\r\n			<p style="text-align:center"><strong>(Sesuai Nomenklatur Permendikbud No. 154 Tahun 2014)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Nomor SK pendirian</strong></td>\r\n			<td>\r\n			<p style="text-align:center">SK Direktur Jendral Kelembagaan Agama Islam No. E/58/1999, tanggal 20 Maret 2001</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Izin</strong></td>\r\n			<td style="text-align:center">E/47/2001, tanggal 20 Maret 2001</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Areditasi</strong></td>\r\n			<td style="text-align:center"><strong>A</strong>, No. 197/SK/BAN-PT/Ak-XVI/S/IX/2013</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Gelar</strong></td>\r\n			<td>\r\n			<p style="text-align:center">Sarjana Pendidikan (S.Pd.)</p>\r\n\r\n			<p style="text-align:center"><strong>(Sesuai Nomenklatur Permendikbud No. 154 Tahun 2014)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Masa Studi</strong></td>\r\n			<td style="text-align:center">4 tahun</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Deskripsi</strong></td>\r\n			<td style="text-align:center">Program Studi Pendidikan Kimia menyelenggarakan pendidikan, pelatihan, penelitian, dan pengabdian kepada masyarakat dengan tujuan menghasilkan lulusan dalam bidang pembelajaran kimia untuk jenjang pendidikan menengah dengan kualifikasi sarjana pendidikan (S1).</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><strong>Pofil Lulusan</strong></td>\r\n			<td>\r\n			<p>&nbsp; &nbsp;1. Pendidik&nbsp;bidang studi kimia</p>\r\n\r\n			<p>&nbsp; &nbsp;2. Pengelola lembaga pendidikan formal dan non formal</p>\r\n\r\n			<p>&nbsp; &nbsp;3. Penulis/editor buku sekolah bidang kimia/IPA atau sains populer</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'id'),
('67', 3, 'Visi - Misi - Tujuan', '', '<div class="article-content">\r\n<p>VISI</p>\r\n\r\n<p>Unggul dan terkemuka dalam pemaduan serta pengembangan studi keislaman dan keilmuan dalam bidang Pendidikan Kimia</p>\r\n\r\n<p>MISI</p>\r\n\r\n<p>1. Mengembangkan pendidikan dan pengajaran dalam bidang Pendidikan Kimia yang intregatif dan interkonektif yang berkribadian ZIKR (Zero Base, Iman, Konsisten, Result Oriented).</p>\r\n\r\n<p>2. Mengembangkan penelitian yang berkualitas dalam bidang Pendidikan Kimia.</p>\r\n\r\n<p>3. Memberikan pelayanan kepada masyarakat dalam bidang Pendidikan Kimia.</p>\r\n\r\n<p>4. Mengembangkan kerjasama program studi dengan berbagai pihak dalam rangka mewujudkan Tri Dharma Perguruan Tinggi dalam bidang Pendidikan Kimia</p>\r\n\r\n<p>TUJUAN</p>\r\n\r\n<p>A. Tujuan Umum</p>\r\n\r\n<p>1. Meningkatkan kualitas hasil pendidikan, hasil penelitian dan peran serta lembaga pendidikan dalam program riil penanganan masalah sosial-kemasyarakatan khususnya di bidang Pendidikan Kimia dan Sains.</p>\r\n\r\n<p>2. Meningkatkan efisiensi dan efektivitas pemanfaatan sumber daya.</p>\r\n\r\n<p>3. Meningkatkan kualitas proses layanan secara berkelanjutan yang berorientasi pelanggan.</p>\r\n\r\n<p>4. Meningkatkan kapabilitas dan kompetensi dosen serta pegawai</p>\r\n\r\n<p>B. Tujuan Khusus</p>\r\n\r\n<p>1. Menghasilkan sarjana Pendidikan Kimia yang integratif-interkonektif, mempunyai kemampuan akademik dan/atau profesional, serta mampu menerapkan dan/atau mengembangkan kemampuan tersebut di dunia pendidikan.</p>\r\n\r\n<p>2. Menghasilkan sarjana Pendidikan Kimia yang beriman-berakhlak mulia, memiliki kecakapan sosial dan manajerial, berjiwa enterpreneurship serta rasa tanggungjawab sosial&nbsp;kemasyarakatan.</p>\r\n\r\n<p>3. Menghasikan sarjana Pendidikan Kimia yang menghargai nilai-nilai keilmuan dan kemanusiaan.</p>\r\n</div>\r\n', 'id'),
('41', 9, 'Profil', '41_20170103_Nothing-is-IMPOSSIBLE.jpg', '<p>PENDAHULUAN</p>\r\n\r\n<p style="text-align:justify"><span style="font-size:16px">Keselarasan teori dan praktik dalam proses belajar mengajar di Perguruan Tinggi ditentukan oleh optimalisasi Laboratorium. Laboratorium sebagai unit penunjang akademik pada lembaga pendidikan, perlu didesain secara sistematis dalam menjalankan amanat undang-undang dan sesuai dengan kebutuhan.&nbsp;</span><span style="font-size:16px">Keberadaan laboratorium yang efektif dan efisien dapat mendorong akselerasi Tridharma Perguruan Tinggi.&nbsp;</span><span style="font-size:16px">Laboratorium melalui ranah praktikum, penelitian dan pengabdian diharapkan meningkatkan kompetensi mahasiswa dan&nbsp;</span><span style="font-size:16px">membuka peluang baru dalam mendorong sivitas akademik untuk menghasilkan karya-karya ilmiah yang bermanfaat bagi masyarakat.&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:16px">Berdasarkan Peraturan Menteri Agama Republik Indonesia Nomor 26 tahun 2013 tentang Organisasi dan Tata Kerja Universitas Islam Negeri Sunan Kalijaga Yogyakarta disebutkan bahwa o</span><span style="font-size:16px">rganisasi Fakultas terdiri atas:&nbsp;</span><span style="font-size:16px">a. Dekan dan Wakil Dekan; b. Jurusan; c. Laboratorium; dan d. Bagian Tata Usaha. Maka Laboratorium dalam Fakultas Ilmu Tarbiyah dan Keguruan yang disebut Laboratorium Pendidikan adalah organisasi yang sah. Berdasarkan&nbsp;</span><span style="font-size:16px">Peraturan Menteri Negara Pendayagunaan Aparatur Negara Dan Reformasi Birokrasi Nomor 03 Tahun 2010 Tentang Jabatan Fungsional Pranata Laboratorium Pendidikan dan Angka Kreditnya dalam&nbsp;</span><span style="font-size:16px">Pasal 1 ayat 3 disebutkan bahwa&nbsp;</span><span style="font-size:16px">Laboratorium pendidikan yang selanjutnya disebut laboratorium adalah unit penunjang akademik pada lembaga pendidikan, berupa ruangan tertutup atau terbuka, bersifat permanen atau bergerak, dikelola secara sistematis untuk kegiatan pengujian, kalibrasi, dan/atau produksi dalam skala terbatas, dengan menggunakan peralatan dan bahan berdasarkan metode keilmuan tertentu, dalam rangka pelaksanaan pendidikan, penelitian, dan/atau pengabdian kepada masyarakat.</span></p>\r\n', 'id'),
('41', 12, 'Fungsi dan Layanan Lab', '', '<p><strong><span style="font-size:14px">Fungsi dan Layanan Lab FITK</span></strong></p>\r\n\r\n<div style="margin-left:.38in;">1.&nbsp; Academic Supporting Facilities (Pendukung Akademik)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Magang I, II, dan III (PAI,PBA,PGMI, PGRA)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Program Latihan Profesi (PLP) I dan II (MPI)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Praktik Kerja Lapangan/PKL&nbsp; (PGMI)</div>\r\n\r\n<div style="margin-left:.38in;">2.&nbsp; Riset Fasilites (Layanan Penelitian)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Penelitian Pengembangan</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; media/multimedia/elearning, e kaligrafi, e tahfids, e tilawah, kemahiran berbahasa, dan Kawasan teknologi pembelajaran</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Lab school</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Standarisasi laboratorium PAI</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Pengemb. Pusat sumber belajar</div>\r\n\r\n<div style="margin-left:.38in;">3. Public Services Fasilities (Layanan Publik)&nbsp;&nbsp;</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Validasi bahan ajar</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Validasi instrumen penelitian</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Klinik pembelajaran</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Terjemah abstrak, jurnal, makalah</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Olah data penelitian</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Fotografi, sinematografi</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Analisis butir soal</div>\r\n', 'id'),
('41', 13, 'Pendukung Akademik (supporting academic)', '', '<p>Academic Supporting Facilities (Pendukung Akademik)</p>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Magang I, II, dan III (PAI,PBA,PGMI, PGRA)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Program Latihan Profesi (PLP) I dan II (MPI)</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Praktik Kerja Lapangan/PKL&nbsp; (PGMI)</div>\r\n', 'id'),
('41', 14, 'Layanan Penelitian (Riset Fasilities)', '', '<p>Riset Fasilites (Layanan Penelitian)</p>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Penelitian Pengembangan</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; media/multimedia/elearning, e kaligrafi, e tahfids, e tilawah, kemahiran berbahasa, dan Kawasan teknologi pembelajaran</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Lab school</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Standarisasi laboratorium PAI</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp;&nbsp; &bull; Pengemb. Pusat sumber belajar</div>\r\n', 'id'),
('41', 15, 'Public Services Fasilities (Layanan Publik)  ', '', '<p>Public Services Fasilities (Layanan Publik)&nbsp;&nbsp;</p>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Validasi bahan ajar</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Validasi instrumen penelitian</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Klinik pembelajaran</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Terjemah abstrak, jurnal, makalah</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Olah data penelitian</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Fotografi, sinematografi</div>\r\n\r\n<div style="margin-left:.38in;">&nbsp;&nbsp; &bull; Analisis butir soal</div>\r\n', 'id');
INSERT INTO `page` (`kode_unit`, `id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
('41', 16, 'tes', '', '<p><img alt="" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEBLAEsAAD/4RDARXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAExAAIAAAAuAAAIVgEyAAIAAAAUAAAIhIdpAAQAAAABAAAImOocAAcAAAgMAAAASgAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE1pY3Jvc29mdCBXaW5kb3dzIFBob3RvIFZpZXdlciA2LjMuOTYwMC4xNzQxNQAyMDE1OjEyOjA0IDEwOjQyOjUzAAAB6hwABwAACAwAAAiqAAAAABzqAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/4TG4aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHhtcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgNi4zLjk2MDAuMTc0MTU8L3htcDpDcmVhdG9yVG9vbD48L3JkZjpEZXNjcmlwdGlvbj48L3JkZjpSREY+PC94OnhtcG1ldGE+DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8P3hwYWNrZXQgZW5kPSd3Jz8+/9sAQwAFBAMDBAQEBAQFBwYFBQUHBwcHCAwPEQwJCwsPFhMREQ8REhIRFRoUExccHRoYIRgREx8fHx0i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', 'id');
INSERT INTO `page` (`kode_unit`, `id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
('12', 19, 'Halaman 1', NULL, '', 'id'),
('16', 23, 'Profil', '16_20170209_Untitled-1.jpg', '<p style="text-align:justify">Pusat Studi Islam dan Transformasi Sosial <strong>(CIS<em>Form</em>) </strong>adalah lembaha penelitian dibawah Universitas Islam Negeri (UIN) Sunan Kalijaga. CISForm sebagai lembaga penelitian berbasis masyarakat, lembaga ini melakukan ilmiah interdisipliner sehingga kajiannya tidak hanya memenuhi standart akademik namun juga memiliki relevansi sosial. Tugas utama CISForm adalah mengembangkan penelitian interdisipliner dan mengkaji isu-isu aktual dalam konteks Islam Indonesia, khususunya dalam keterkaitannya dengan proses modetransformasi sosial yang terus bergulir. Laju modernisasi dan globalisasi disertai pergeseran rasionalitas dan solidaritas memang membuka ragam peluang bagi kemajuan sosial, ekonomi dan budaya.</p>\r\n\r\n<p style="text-align:justify">Namun disaat yang sama menghantarkan pada berlimpahnya berbagai masalah yang tidak diharapakan umat islam itu sendiri. Masalah tersebut dikaitkan dengan proses sekularisasi yang muncul ketika agama sebagai institusi mengalama erosi dan peniadaan. Dalam konteks ini, kalangan akedimisi diharapkan menunjukan minat dan komitmen mereka untuk bekerja keras untuk mengkaji masalah yang ada serta menawarkan solusinya.</p>\r\n\r\n<p style="text-align:justify">CISForm memposisikan sebagai pusat penelitian interdisipliner yang berupaya melengkapi lembaga-lembaga serupa di Indonesia, yang berminat pada isu-isu multukularisme, dialog antar agama, serta pertentanagan antar Islam dan budaya lokal. CISForm sangat memperhatikan keragaman permasalahan sosial yang menghantui lingkup luas dalam masyarakat Muslim di Indonesia seperti : kemiskinan, keterbelakangan dan kekerasan.</p>\r\n\r\n<p style="text-align:justify">CISForm juga fokus pada beragam kegiatan akibat derasnya proses transformasi sosial yang kerap memarginalkan pihak tertentu. Selain itu, CISForm terus mengupayakan kontribusi Islam sebagai agama mayoritas di Indonesia untuk mampu berkiprah dalam mengurangi dan mengatasi permasalahan tersebut.</p>\r\n\r\n<p style="text-align:justify">Lembaga ini mengembangkan program-program yang menghasilkan publikasi berupa buku, jurnal dan karya-karya yang dapat diakses para akademisi secara luas baik luar negeri maupun dalam negeri. Publikasi tersebut diharapakan memperkuat UIN Sunan Kalikaga dalam percaturan wacana agama dan proses transformasi sosial. Pemahaman yang komprsehensif dan mendalam, mengenai su-isu tersebut akan memberikan landasan yang kokoh bagi lahirnya solutif alternatif melalui berbagai program seperti advokasi, pembelajaran dan pemberdayaan komunitas.</p>\r\n\r\n<p style="text-align:justify">Sebagai bagian dari pengembangan program dan kegiatan, CISForm membangun kerjasama yang solid dengan pusat studi dan lembaga riset lainnya, LSM, intansi pemerintah, dan lembaga internasional lainnya. Perhatian yang penuh dari lembaga-lembaga tersebut terhadap isu-isu terkini di Indonesia akan menjadi modal penting bagi CISForm dalam membangun kerjasama yang saling bermanfaat.</p>\r\n', 'id'),
('16', 25, 'Program', '16_20170209_web program.jpg', '<p style="text-align:justify">Fokus utama CIS<em>Form</em> meliputi tema-tema kontemporer yang relevan secara akademis dan sosial.</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify">Penelitian bertujuan untuk mempromosikan kajian interdisipli tentang islam dan transformasi sosial di Indonesia terkait berbagai fenomena yang berkembang di masyarakat muslim Indonesia, terutama tentang radikalisme, deradikalisasi, isu-isu syariah, pendidikan islam, budaya remaja muslim, lingkungan dan bencana alama, Islam dan politik lokal, religious governance dan teologi sosial</li>\r\n	<li style="text-align:justify">Pendidikan dan Pendampingan bagi masyarakat muslim indonesia dan menghadapi dinamika dan tantangan dalam merespon modernitas, globalisasi, program pengembangan komunitas, serta penyebaran nilai-nilai progresif islam.</li>\r\n	<li style="text-align:justify">Publikasi untuk menyebarluaskan hasil penelitian atau kajian islam dan transformasi sosial, serta nilai islam progresif melalui penerbitan buku, buklet, newsletter dan makalah.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'id'),
('16', 28, 'Program', NULL, '<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color:#808080"><strong>Program Umum CISForm</strong></span></p>\r\n\r\n<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Fokus utama CISForm meliputi tema-tema kontemporer yang relevan secara akdemis dan sosial.</p>\r\n\r\n<ol>\r\n	<li style="text-align: justify;">Penelitian bertujuan untuk mempromosikan kajian interdisipli tentang islam dan transformasi sosial di Indonesia terkait berbagai fenomena yang berkembang di masyarakat muslim Indonesia, terutama tentang radikalisme, deradikalisasi, isu-isu syariah, pendidikan islam, budaya remaja muslim, lingkungan dan bencana alama, Islam dan politik lokal, religious governance dan teologi sosial</li>\r\n	<li style="text-align: justify;">Pendidikan dan Pendampingan bagi masyarakat muslim indonesia dan menghadapi dinamika dan tantangan dalam merespon modernitas, globalisasi, program pengembangan komunitas, serta penyebaran nilai-nilai progresif islam.</li>\r\n	<li style="text-align: justify;">Publikasi untuk menyebarluaskan hasil penelitian atau kajian islam dan transformasi sosial, serta nilai islam progresif melalui penerbitan buku, buklet, newsletter dan makalah.</li>\r\n</ol>\r\n', 'id'),
('16', 31, 'Penelitian', NULL, '', 'id'),
('651', 33, 'Visi dan Misi', NULL, '', 'id'),
('651', 34, 'Struktur Kepengurusan', NULL, '', 'id'),
('651', 35, 'Badan Kepengurusan Harian', NULL, '', 'id'),
('651', 36, 'Departement Infokom', NULL, '', 'id'),
('651', 37, 'Departement Minat Bakat', NULL, '', 'id'),
('651', 38, 'Departement Sumber Daya Mahasiswa', NULL, '', 'id'),
('651', 39, 'Departement Hubungan Antar Lembaga', NULL, '', 'id'),
('651', 40, 'Departement Danus', NULL, '', 'id'),
('651', 41, 'Departement Advokasi', NULL, '', 'id'),
('16', 45, 'Link', NULL, '<p><a href="http://www.pewforum.org">http://www.pewforum.org</a></p>\r\n\r\n<p><a href="http://www.understandingconflict.org/en.html">http://www.understandingconflict.org/en.html</a></p>\r\n\r\n<p><a href="http://www.hedayah.ae">http://www.hedayah.ae</a></p>\r\n', 'id'),
('15', 46, 'Visi dan Misi', NULL, '<p><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px"><strong>Visi:</strong></span></span></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">&quot;Menjadi mitra profesional dalam membangun dan mengelola sumber daya UIN Sunan Kalijaga Yogyakarta yang amanah dan akuntabel menuju terciptanya tata kelola universitas yang baik&quot;</span></span></p>\r\n\r\n<p><strong><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px">Misi:</span></span></strong></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px">1. Mendorong dan mendukung terwujudnya akuntabilitas publik berbagai aktivitas pengelolaan sumber daya universitas.</span></span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px">2. Meningkatkan kepatuhan pengelolaan sumber daya universitas terhadap peraturan perundang-undangan yang berlaku.</span></span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px">3. Menilai dan meminimalkan risiko pengelolaan sumber daya universitas.</span></span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><span style="font-size:16px">4. Mendorong peningkatkan kinerja universitas dalam melaksanakan Tri Dharma Perguruan Tinggi.</span></span></p>\r\n\r\n<p><strong><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Tujuan:</span></span></strong></p>\r\n\r\n<p><span style="font-size:16px"><span style="font-family:tahoma,geneva,sans-serif">Tujuan Satuan Pengawas Internal (SPI) UIN Sunan Kalijaga Yogyakarta adalah mewujudkan, menciptakan dan memelihara lingkungan pengendalian yang menimbulkan perilaku positif dan kondusif di lingkungan UIN Sunan Kalijaga Yogyakarta.</span></span></p>\r\n', 'id'),
('15', 47, 'Sambutan Kepala', NULL, '', 'id'),
('15', 48, 'Sejarah', NULL, '', 'id'),
('15', 49, 'Kunjungan ke BPKP', '15_20170410_kunjungan_ke_BPKP.jpg', '', 'id'),
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

CREATE TABLE IF NOT EXISTS `page_univ` (
`id_page` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `foto` varchar(128) DEFAULT NULL,
  `content` text NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_univ`
--

INSERT INTO `page_univ` (`id_page`, `title`, `foto`, `content`, `kode_bahasa`) VALUES
(1, 'Sejarah', NULL, '<b>1951-1960</b><br><b>Periode Rintisan</b><br> Periode ini dimulai dengan Penegerian Fakultas Agama Universitas Islam  Indonesia (UII) menjadi Perguruan Tinggi Agama Islam (PTAIN) yang diatur dengan Peraturan Presiden Nomor 34 Tahun 1950 Tanggal 14 Agustus 1950 dan Peresmian PTAIN pada tanggal 26 September 1951. Pada Periode ini, terjadi pula peleburan PTAIN (didirikan berdasarkan Peraturan Presiden Nomor 34 Tahun 1950) dan ADIA (didirikan berdasarkan Penetapan Menteri Agama Nomor 1 Tahun 1957) dengan diterbitkannya Peraturan Presiden Nomor 11 Tahun 1960 Tanggal 9 Mei 1960 tentang Pembentukan Institut Agama Islam Negeri (IAIN) dengan nama Al-Jami''ah al-Islamiyah al-Hukumiyah. pada periode ini, PTAIN berada di bawah kepemimpinan KHR Moh Adnan (1951-1959) dan Prof. Dr. H. Mukhtar Yahya (1959-1960)<br><br><b>1960-1972</b><br><b>Periode Peletakan Landasan</b></br> Periode ini ditandai dengan Peresmian IAIN pada tanggal 24 Agustus 1960. Pada periode ini, terjadi pemisahan IAIN. Pertama berpusat di Yogyakarta dan kedua, berpusat di Jakarta berdasarkan Keputusan Agama Nomor 49 Tahun 1963 Tanggal 25 Februari 1963. Pada periode ini, IAIN Yogyakarta diberi nama IAIN Sunan Kalijaga berdasarkan Keputusan Menteri Agama Nomor 26 Tahun 1965 Tanggal 1 Juli 1965. Pada periode ini telah dilakukan pembangunan sarana dan prasarana pendidikan, dimulai dengan pemindahan kampus lama (di Jalan Simanjuntak, yang sekarang menjadi gedung MAN 1 Yogyakarta ) ke kampus baru yang jauh lebih luas (di Jalan Marsda Adisucipto Yogyakarta). Sejumlah gedung fakultas dibangun dan di tengah-tengahnya dibangun pula sebuah masjid yang masih berdiri kokoh. Sistem pendidikan yang berlaku pada periode ini masih bersifat ''bebas'' karena mahasiswa diberi kesempatan untuk maju ujian setelah mereka benar-benar mempersiapkan diri. Adapun materi kurikulumnya masih mengacu pada kurikulum Timur Tengah (Universitas Al-Azhar, Mesir) yang telah dikembangkan pada masa PTAIN. Pada periode ini, IAIN Sunan Kalijaga berada di bawah kepemimpinan Prof. RHA Soenarjo, SH (1960-1972).</br></br> <b>1972-1996</b><br><b>Periode Peletakan Landasan Akademik</b><br>  Pada periode ini, IAIN Sunan Kalijaga dipimpin secara berturut-turut oleh Kolonel Drs. H. Bakri Syahid (1972-1976), Prof. H. Zaini Dahlan, MA (selama 2 masa jabatan: 1976-1980 dan 1980-1983), Prof. Dr. HA Mu''in Umar (1983-1992) dan Prof. Dr. Simuh (1992-1996). Pada periodeini, pembangunan sarana prasarana fisik kampus meliputi pembangunan gedung Fakultas Dakwah, Perpustakaan, Program Pascasarjana, dan Rektorat dilanjutkan. Sistem pendidikan yang digunakan pada periode ini mulai bergeser dari ''sistem liberal'' ke ''sistem terpimpin'' dengan mengintrodusir ''sistem semester semu'' dan akhirnya ''sistem kredit semester murni''. Dari segi kurikulum, IAIN Sunan Kalijaga telah mengalami penyesuaian    yang radikal dengan kebutuhan nasional bangsa Indonesia. Jumlah fakultas bertambah menjadi 5 (lima); yaitu Fakultas Adab, Dakwah, Syari''ah, Tarbiyah dan Ushuluddin. Program Pascasarjana IAIN Sunan Kalijaga dibuka pada periode ini, tepatnya pada tahun akademik 1983/1984. Program Pascasarjana ini telah diawali dengan kegiatan-kegiatan akademik dalam bentuk short courses on Islamic studies dengan nama Post Graduate Course (PGC) dan Studi Purna Sarjana (PPS) yang diselenggarakan tanpa pemberian gelar setingkat Master. Untuk itu, pembukaan Program pAscasarjana pada dasawarsa delapan puluhan tersebut telah mengukuhkan fungsi IAIN Sunan Kalijaga sebagai lembaga akademik tingkat tinggi setingkat di atas Program Strata Satu.<br><br> <b>1996-2001</b><br><b>Periode Pemantapan Akademik dan Manajemen</b><br> Pada periode ini, IAIN Sunan Kalijaga berada di bawah kepemimpinan Prof. Dr. HM. Atho Mudzhar (1997-2001). Pada periode ini, upaya peningkatan mutu akademik, khususnya mutu dosen (tenaga edukatif) dan mutu alumni, terus dilanjutkan. Para dosen dalam jumlah yang besar didorong dan diberikan kesempatan untuk melanjutkan studi, baik untuk tingkat Magister (S2) maupun Doktor (S3) dalam berbagai disiplin ilmu, baik di dalam maupun di luar negeri. Demikian pula peningkatan sumber daya manusia bagi tenaga administratif dilakukan untuk meningkatkan kualitas manajemen dan pelayanan administrasi akademik. Pada periode ini, IAIN Sunan Kalijaga semakin berkonsentrasi untuk meningkatkan orientasi akademiknya dan mengokohkan eksistensinya sebagai lembaga pendidikan tinggi. Jumlah tenaga dosen yang bergelar Doktor dan Guru Besar meningkat disertai dengan peningkatan dalam jumlah koleksi perpustakaan dan sistem layanannya.<br><br> <b>2001-2010</b><br><b>Periode Pengembangan Kelembagaan</b><br> Periode ini dapat disebut sebagai ''Periode Trasformasi'', karena, pada periode ini telah terjadi peristiwa penting dalam perkembangan kelembagaan pendidikan tinggi Islam tertua di tanah air, yaitu Transformasi Institut Agama ISlam Negeri (IAIN) Sunan Kalijaga menjadi Universitas Islam Negeri (UIN) Sunan Kalijaga berdasarkan Keputusan Presiden Nomor 50 Tahun 2004 Tanggal 21 Juni 2004. Deklarasi UIN Sunan Kalijaga dilaksanakan pada tanggal 14 Oktober 2004. Periode ini di bawah kepemimpinan Prof. Dr. HM. Amin Abdullah (2001-2005) dengan Pembantu Rektor Bidang Akademik Prof. Drs. H. Akh. Minhaji, MA., Ph.D, Pembantu Rektor Bidang Administrasi Umum Drs. H. Masyhudi, BBA, M.Si. dan Pembantu Rektor Bidang Kemahasiswaan Prof. Dr. H. Ismail Lubis, MA (Almarhum) yang kemudian digantikan oleh Dr. Maragustam Siregar, MA.Pada periode kedua (2006-2010) dari kepemimpinan Prof. Dr. HM. Amin Abdullah telah dibentuk Pembantu Rektor Bidang Kerja Sama. Dengan ditetapkannya keberadaan Pembantu Rektor Bidang Kerja Sama, maka kepemimpinan UIN Sunan Kalijaga pada periode kedua ini adalah sebagai berikut : PEmbantu Rektor Bidang Akademik, Dr. H. Sukamta, MA, Pembantu Rektor Bidang Administrasi Umum, Dr. H. Tasman Hamami, MA, Pembantu Rektor Bidang Kemahasiswaan, Dr. Maragustam Siregar, MA, dan Pembantu Rektor Bidang Kerja Sama dijabat oleh Prof. Dr. H. Siswanto Masruri, MA.Perubahan Institut menjadi universitas dilakukan untuk mencanangkan sebuah paradigma baru dalam melihat dan melakukan studi terhadap ilmu-ilmu agama dan ilmu-ilmu umum, yaitu paradigma Integrasi interkoneksi. Paradigma ini mensyaratkan adanya upaya untuk mendialogkan secara terbuka dan intensif antara hadlarah an-nas, hadlarah al-ilm, dan hadlarah al-falsafah. Dengan paradigma ini, UIN Sunan Kalijaga semakin menegaskan kepeduliannya terhadap perkembangan masyarakat muslim khususnya dan masyarakat umum pada umumnya. Pemaduan dan pengaitan kedua bidang studi yang sebelumnya dipandang secara dimatral berbeda memungkinkan lahirnya pemahaman Islam yang ramah, demokratis, dan menjadi rahmatan lil ''alamin.<br><br> <b>2010-2014</b><br><b>Periode Kebersamaan dan Kesejahteraan</b><br>Berdasarkan Keputusan Menteri Agama RI Nomor : B.II/3/16522/2010 Tanggal 6 Desember 2010, Guru Besar Fakultas Ushuluddin, Studi Agama dan Pemikiran Islam diberi tugas tambahan sebagai Rektor UIN Sunan Kalijaga Yogyakarta masa jabatan 2010-2014. Periode di bawah kepemimpinan Prof. Dr. H. Musa Asy’arie dibantu oleh empat Pembantu Rektor yaitu:  Pembantu Rektor Bidang Akademik Dr. Sekar Ayu Aryani, M.Ag., Pembantu Rektor Bidang Administrasi Umum Prof. Dr. H. Nizar, M.Ag,. Pembantu Rektor Bidang Kemahasiswaan Dr. H. Ahmad Rifai,. M.Phil., dan Pembantu Rektor Bidang Kerjasama, Prof. Dr. H. Siswanto Masruri, M.A.Seiring dengan perkembangan jaman dan dalam rangka meningkatkan mutu penyelenggaraan dan pelayanan pendidikan tinggi, dinilai organisasi tata kerja Universitas Islam Negeri Sunan Kalijaga Yogyakarta perlu ditata kembali. Oleh karena itu, Organisasi Tata Kerja Universitas Islam Negeri Sunan Kalijaga mengalami perubahan berdasarkan Peraturan Menteri Agama Nomor 26 Tahun 2013. Sesuai dengan Organisasi Tata Kerja Universitas Islam Negeri Sunan Kalijaga yang baru, dalam melaksanakan tugasnya, Rektor  dibantu oleh tiga Wakil Rektor yaitu: Wakil Rektor Bidang Akademik dan Kemahasiswaan Dr. Sekar Ayu Aryani, M.Ag., Wakil Rektor Bidang Administrasi Umum, Perencanaan dan Keuangan, Prof. Dr. H. Nizar, M.Ag.,dan wakil Rektor Bidang Kelembagaan dan Kerja sama Dr. H. Maksudin, MA.', 'id'),
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
(12, 'Quality Assurance', NULL, '<img src="http://localhost/webunit/asset/img/img_web_uin/sertif_qa.jpg"><br><b>Kebijakan Mutu :</b><br>Sebagai Lembaga Pendidikan Tinggi yang berkualitas, Universitas Islam Negeri Sunan Kalijaga mampu mengembangkan integrasi-interkoneksi studi keislaman dan keilmuan serta menghasilkan lulusan berdaya saing tinggi dan berakhlak mulia.<br><br> <b>Sasaran Mutu :</b><br>Karya penelitian tentang integrasi-interkoneksi studi keislaman dan keilmuan minimal 50%.Karya ilmiah staf edukatif yang dipublikasikan internasional minimal 10 buah per tahun.Lulusan berkarya di masyarakat sesuai dengan bidang keahlian dalam tahun pertama minimal 70%.Tepat waktu studi minimal 80%.Indeks kinerja dosen > 3.0 minimal 90%.Lulusan mampu berkomunikasi global (TOEFL''s score minimal 450 dan TOAFL''s score minimal 70 skala 100) minimal 80%.Lulusan mampu mengaplikasikan teknologi informasi minimal 80%.<br><br> <b>Lima Arah Pengembangan :</b><br>Moral-Spiritual Capasity Building (Pembinaan Kapasitas Moral-Spiritual)Intellectual and Academic Capacity Building (Pembinaan Kapasitas Intelektual dan Akademik)Institutional Capacity Building (Pembinaan Kapasitas Institusional)Social Capacity Building (Pembinaan Kapasitas Sosial)Entrepreneurship and Managerial Capasity Building (Pembinaan Kapasitas Kewirausahaan dan Manajerial) <br><br><b>Dua Belas Bidang Pengembangan :</b><br>KelembagaanAkademikKemahasiswaanPenelitian dan PublikasiPengabdian kepada MasyarakatManajemenKetenagaanSarana-PrasaranaKeuanganPerpustakaanTeknologi InformasiKerja Sama <br><br><b>Kerangka Kerja Pengembangan : </b><br><img src="http://localhost/webunit/asset/img/img_web_uin/qa.jpg"><br><br><b>Akreditasi Institusi:</b><br><br><iframe width="100%" height="500px;" name="plugin" id="plugin" src="http://localhost/webunit/asset/img/img_web_uin/dokumen/BAN_PT_UIN_SUKA0001.pdf"></iframe>', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
  `kode_unit` int(11) NOT NULL,
`id_pengumuman` int(11) NOT NULL,
  `nama_pengumuman` varchar(255) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kode_bahasa` varchar(4) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`kode_unit`, `id_pengumuman`, `nama_pengumuman`, `nama_file`, `url`, `tgl_posting`, `kode_bahasa`, `counter`) VALUES
(67, 1, 'Lomba Karya Ilmiah Bank Indonesia', '', 'http://uin-suka.ac.id/id/web/pengumuman/detail/1339/lomba-karya-ilmiah-bank-indonesia', '2016-09-07 03:46:47', 'id', 36),
(0, 3, 'pengumuman 2', '20161023-', 'http://uin-suka.ac.id', '2016-10-23 01:42:53', 'id', 0),
(0, 4, 'pengumuman 3', '20161021_ngawi.jpg', '', '2016-10-21 02:04:29', 'id', 3),
(0, 5, 'coba pasang pengumuman', '20161027_coba_pgm.jpg', '', '2016-10-27 03:08:37', 'id', 49),
(67, 8, 'Coba upload pengumuman', '20161109_arab2.jpg', '', '2016-11-09 04:20:46', 'id', 64),
(41, 12, 'Profile Lab Pendidikan FITK 2016', '41_20161220_Profile Lab Pendidikan FITK 2016.pdf', '', '2016-12-20 07:06:20', 'id', 225),
(41, 13, 'Buku Magang II 2016', '41_20161220_Buku magang II 2016 Februari.pdf', '', '2016-12-20 07:09:29', 'id', 208),
(41, 14, 'Kesediyaan Menjadi Lokasi PLP 1', '_20161222_KESEDIYAAN0001.pdf', '', '2016-12-21 20:43:39', 'id', 205),
(41, 15, 'Pra Program Latihan Profesi I (PLP I)', '_20161222_pra program plp 1.png', '', '2016-12-21 20:45:45', 'id', 167),
(41, 17, 'Pembekalan Program Latihan Profesi I (PLP I)', '41_20170303_pengumuman plp 1.png', '', '2017-03-03 08:02:42', 'id', 196),
(41, 18, 'Buku Magang II', '41_20170309_Buku Magang II.pdf', '', '2017-03-09 03:16:59', 'id', 217),
(41, 20, 'Evaluasi Proses Magang II tahun 2017', '41_20170421_scan0007.pdf', '', '2017-04-21 06:18:06', 'id', 76),
(67, 22, 'testing tanggal', '67_20180523_brio.jpg', 'www.uin-suka.ac.id', '2018-01-01 00:48:25', 'id', 280),
(67, 24, 'testing pdf', '67_20180523_PIAGAM DANANG AJI.pdf', '', '2018-05-23 01:05:27', 'id', 30),
(45, 25, 'Pengumuman', '45_20180524_UIN-SunanKalijaga-Brosur-PMB-2015.pdf', '', '2018-05-13 21:05:11', 'id', 0),
(67, 26, 'testing lagi ', '67_20180524_PIAGAM DANANG AJI.pdf', '', '2018-05-22 22:30:33', 'id', 0),
(67, 27, 'test pagination', '67_20180524_PIAGAM DANANG AJI.pdf', '', '2018-05-07 22:30:48', 'id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pusat_studi`
--

CREATE TABLE IF NOT EXISTS `pusat_studi` (
`id_pusat_studi` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `nama_pusat_studi` varchar(250) NOT NULL,
  `deskripsi` text,
  `menu_url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `unit_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `side_menu` (
  `kode_unit` varchar(4) NOT NULL,
`id_menu` int(11) NOT NULL,
  `nama_menu` varchar(64) NOT NULL,
  `url` varchar(128) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `slide_2016` (
`id_slide` int(11) NOT NULL,
  `kode_unit` varchar(4) NOT NULL,
  `picture` varchar(128) NOT NULL,
  `background` varchar(16) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `url` varchar(255) NOT NULL,
  `kode_bahasa` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_2016`
--

INSERT INTO `slide_2016` (`id_slide`, `kode_unit`, `picture`, `background`, `tgl_mulai`, `tgl_selesai`, `url`, `kode_bahasa`) VALUES
(9, '651', '651_20170407_UPC-banner.jpg', '#f53016', '2017-04-07', '2017-05-15', 'http://uinic.id/uinic-programming-competition/', 'id'),
(10, '651', '651_20170407_USSC-banner-web.jpg', '#00aabb', '2017-04-07', '2017-05-14', 'http://uinic.id/uinic-smart-solution-competition/', 'id'),
(11, '15', '15_20170411_jembatan_uin_edit.jpg', '#00aabb', '2017-04-01', '2017-12-31', '', 'id'),
(12, '15', '15_20170411_masjid-uin-sunan-kalijaga.jpg', '#00aabb', '2017-04-01', '2017-12-31', '', 'id'),
(13, '67', '67_20180523_pfis.jpg', '#00aabb', '2018-05-23', '2018-05-24', 'page/prodi/61', 'id'),
(14, '67', '67_20180523_pkim.jpg', '#bbb400', '2018-05-23', '2018-05-24', 'page/prodi/61', 'id'),
(16, '69', '69_20180523_dosen_pfis.jpg', '#000000', '2018-05-23', '2018-06-23', '', 'id'),
(17, '69', '69_20180523_maskam.jpg', '#000000', '2018-05-23', '2018-06-23', '', 'id'),
(18, '45', '45_20180524_pkim.jpg', '#00aabb', '2018-05-23', '2018-07-28', '', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
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

CREATE TABLE IF NOT EXISTS `user` (
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
('admin_mat', '61', 'WPR002'),
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
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `kolom`
--
ALTER TABLE `kolom`
MODIFY `id_kolom` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `laboratorium`
--
ALTER TABLE `laboratorium`
MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `liputan`
--
ALTER TABLE `liputan`
MODIFY `id_liputan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `page_univ`
--
ALTER TABLE `page_univ`
MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pusat_studi`
--
ALTER TABLE `pusat_studi`
MODIFY `id_pusat_studi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `side_menu`
--
ALTER TABLE `side_menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `slide_2016`
--
ALTER TABLE `slide_2016`
MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
