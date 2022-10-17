-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 07:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-government`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul_berita` varchar(115) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `isi_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul_berita`, `hari`, `tanggal`, `foto`, `isi_berita`) VALUES
(21, 'Samsat Weleri', 'Rabu,', '2022-03-23', '774-samsat.jpg', 'Layanan samsat kendal hadir di Kecamatan Weleri '),
(24, 'RAPAT KOORDINASI LINTAS SEKTORAL BIDANG KESEHATAN PUSKESMAS ', 'Selasa,', '2022-05-31', '896-RAPAT KOORDINASI LINTAS SEKTORAL BIDANG KESEHATAN PUSKESMAS WELERI .jpg', 'Kecamatan Weleri menyelenggarakan Rapat Koordinasi Linsek Bidang Kesehatan Puskesmas Weleri 1 dan 2. Rapat tersebut diikutu oleh Forkompimcam, Kapus Weleri 1 dan 2, TKSK Kecamatan Weleri, Ketua TP PKK Kecamatan Weleri, Kepala Desa se Kecamatan Weleri dan Ketua TP Desa PKK Kecamatan Weleri bersama Bidan Desa dan Kader Kesehatan. Camat Weleri Marwoto sebagai moderator memimpin acara Rapat Koordinasi tersebut. Kapus Weleri 1 dan 2 memaparkan pelayanan kesehatan di Puskesmas masing-masing salah satunya Pijat Bayi yang akan dimulai pelayanannya tanggal 1 Juni 2022 di Puskesmas Weleri 1.'),
(25, 'Pemberangkatan Peserta Lomba MTQ ke XXIX wakil dari Kecamatan Weleri', 'Selasa,', '2022-05-31', '881-Pemberangkatan Peserta Lomba MTQ ke XXIX wakil dari Kecamatan Weleri.jpg', 'Pemberangkatan Peserta Lomba MTQ ke XXIX wakil dari Kecamatan Weleri. Semoga diberi kelancaran dan kemudahan membawa nama baik Kecamatan Weleri aamiin.');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) NOT NULL,
  `jawaban` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'HALLO Hallo hallo HALO Halo halo', 'Hallo juga, ada yang bisa saya bantu?  '),
(2, 'Siang siang SIANG SELAMAT SIANG Selamat Siang selamat siang', 'Selamat Siang, ada yang bisa saya bantu?'),
(3, 'Pagi pagi PAGI SELAMAT PAGI Selamat Pagi selamat pagi', 'Selamat Pagi, ada yang bisa saya bantu?'),
(4, 'Sore sore SORE SELAMAT SORE Selamat Sore selamat sore', 'Selamat Sore, ada yang bisa saya bantu?'),
(5, 'HaiHayHAIHAY', 'Hay nama saya AIPES, ada yang bisa saya bantu?'),
(6, 'Assalamualaikum', 'Waalaikumsalam'),
(7, 'siap Siap SIAP', 'Baiklah jika sudah jelas, jika belum bisa baca dibagian Panduan Chatbot AIPES ya. terimakasih'),
(8, 'Terimakasih terimakasih TERIMAKASIH Makasih MAKASIH makasih Terimakasi TERIMAKASI Terima Kasi terima kasi TERIMA KASI', 'Sama-sama :)'),
(10, 'Bisa bantu saya? BISA BANTU SAYA? Bisa bantu saya?', 'Siap!...apa yang bisa saya lakukan untuk membantu anda?'),
(11, 'permohonan kk baru Permohonan KK Baru PERMOHONAN KK BARU', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa, \r\n(3)Fotocopy KTP salah satu anggota keluarga yang masih berlaku, \r\n(4)Fotocpy surat nikah, \r\n(5)Fotocopy akta kelahiran/surat kenal lahir seluruh anggota keluarga, \r\n(6)Fotocopy ijazah seluruh anggota keluarga, \r\n(7)Form permohonan KK diisi lengkap.'),
(12, 'permohonan perpanjangan kk Permohonan Perpanjangan KK PERMOHONAN PERMOHONAN KK', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa, \r\n(3)Surat kehilangan dari kepolisian, \r\n(4)Fotocopy KTP Kepala Keluarga, \r\n(5)Formulir permohonan penggantian KK, \r\n(6)Fotocopy surat nikah, \r\n(7)Fotocopy akta kalahiran/surat kenal lahir seluruh anggota keluarga,\r\n(8)Fotocopy ijazah seluruh anggota keluarga.'),
(13, 'permohonan penggantian kk Permohonan Penggantian KK PERMOHONAN PENGGANTIAN KK', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)Surat kehilangan dari kepolisian,\r\n(4)Fotocopy KTP Kepala Keluarga,\r\n(5)Formulir permohonan penggantian KK,\r\n(6)Fotocopy surat nikah,\r\n(7)Fotocopy akta kelahiran/surat kenal lahir seluruh anggota keluarga,\r\n(8)Fotocopy Ijazah seluruh anggota keluarga.'),
(14, 'permohonan ktp baru Permohonan KTP Baru PERMOHONAN KTP BARU', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)Fotocopy KK SIAK,\r\n(4)Formulir permohonan KTP diisi lengkap.'),
(15, 'permohonan penggantian ktp Permohonan Penggantian Ktp PERMOHONAN PENGGANTIAN KTP', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)Surat kehilangan dari kepolisian,\r\n(4)Fotocopy KK SIAK,\r\n(5)Formulir permohonan KTP diisi lengkap.'),
(16, 'pengantar pindah penduduk Pengantar Pindah Penduduk PENGANTAR PINDAH PENDUDUK', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)KTP Asli,\r\n(4)KK Asli,\r\n(5)SKCK dari kepolisian bagi yang pindah antar Kabupaten,\r\n(6)Pas Foto ukuran 4×6 sebanyak 4 lembar,\r\n(7)Mengisi Formulir Permohonan Pindah tempat.'),
(17, 'permohonan akta kelahiran Permohonan Akta Kelahiran PERMOHONAN AKTA KELAHIRAN', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)FC KK,\r\n(4)FC KTP Orang tua/ Pemohon yang masih berlaku,\r\n(5)FC Surat Nikah dilegalisir KUA,\r\n(6)Surat Kenal Lahir dari Desa/RSU/Bidan/Dokter penolong kelahiran,\r\n(7)FC Akta Cerai (jika orang tua telah bercerai),\r\n(8)Surat Kematian orang tua (jika orang tua sudah meninggal),\r\n(9)Form permohonan Akta diisi lengkap.'),
(18, 'pengantar nikah Pengantar Nikah PENGANTAR NIKAH', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)FC KTP,\r\n(4)FC KK,\r\n(5)Surat Keterangan belum pernah nikah diketahui Kades,\r\n(6)Pas foto ukuran 2×3 sebanyak 7 lembar,\r\n(7)Surat talak/akta cerai/surat kematian bagi janda/duda,\r\n(8)Form permohonan Nikah dari desa diisi lengkap.'),
(19, 'pengantar talak/cerai Pengantar Talak/Cerai PENGANTAR TALAK/CERAI', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)Fotocopy KTP,\r\n(4)Fotocopy Surat Nikah/Duplikat Surat Nikah bermaterai 6000,\r\n(5)Surat Nikah asli.'),
(20, 'permohonan skck Permohonan Skck PERMOHONAN SKCK', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)KTP Asli,\r\n(4)Pas Foto ukuran 4×6 untuk SKCK terbitan Polres sebanyak 9 lembar, untuk SKCK terbitan Polsek 5 lembar.'),
(21, 'permohonan izin kegiatan/keramaian Permohonan Izin Kegiatan/Keramaian PERMOHONAN IZIN KEGIATAN/KERAMAIAN', '(1)Pengantar RT/RW,\r\n(2)Pengantar Desa,\r\n(3)FC KTP,\r\n(4)FC KK,\r\n(5)Proposal kegiatan (untuk kegiatan besar).'),
(22, 'pengesahan sktm/surat keterangan tidak mampu Pengesahan Sktm/Surat Keterangan Tidak Mampu PENGESAHAN SKTM/SURAT KETERANGAN TIDAK MAMPU', '(1)Pengantar RT/RW,\r\n(2)Surat Keterangan Desa,\r\n(3)Foto copy KTP,\r\n(4)Fotocopy KK,\r\n(5)Foto rumah,\r\n(6)Form SKTM dari Puskesmas.'),
(23, 'BATALKAN Batalkan batalkan BATALKAN PENGAJUAN Batalkan Pengajuan batalkan pengajuan', 'Baik, jika anda ingin membatalkan pengajuan dapat menghubungi admin melalui WhatsApp +6281904341046 dengan menyebutkan No.Pendaftaran / No. Pengajuan anda'),
(24, 'BANTUAN Bantuan bantuan PUSAT BANTUAN Pusat Bantuan pusat bantuan', 'Pusat bantuan dapat menghubungi admin ya melalui WhatsApp +6281904341046, admin akan merespon anda sesuai jam kerja :)'),
(25, 'MALAM Malam malam SELAMAT MALAM Selamat Malam selamat malam', 'Selamat Malam, ada yang bisa saya bantu?'),
(26, 'permohonan surat Permohonan Surat PERMOHONAN SURAT', 'Silahkan baca di bagian Tata Cara Pengajuan :)'),
(27, 'pengajuan surat Pengajuan Surat PENGAJUAN SURAT', 'Silahkan baca di bagian Tata Cara Pengajuan :)'),
(28, 'ok Ok OK ', 'Baiklah jika sudah jelas, jika belum bisa baca dibagian Panduan Chatbot AIPES ya. terimakasih'),
(29, 'berita Berita BERITA berita kecamatan weleri Berita Kecamatan Weleri BERITA KECAMATAN WELERI', 'Silahkan kunjungi menu Beranda jika ingin melihat daftar Berita Kecamatan Weleri'),
(30, 'Ini Siapa ini siapa INI SIAPA siapa? Siapa? SIAPA? Dengan Siapa? dengan siapa? DENGAN SIAPA?', 'Hay, perkenalkan saya \"AIPES\" bot Kecamatan Weleri yang siap membantu anda 24 jam :)'),
(31, 'galeri Galeri GALERI galeri kecamatan weleri Galeri Kecamatan Weleri GALERI KECAMATAN WELERI', 'Silahkan kunjungi menu Beranda jika ingin melihat daftar Galeri Kecamatan Weleri'),
(32, 'hahahahahahaha HaHaHaHaHaHa HAHAHAHAHAHA', 'Kenapa kewata? apakah AIPES lucu :)'),
(33, 'wkwkwkwkwk WkWkWkWkWkWk WKWKWKWKWKWKWKWK', 'Kenapa kewata? apakah AIPES lucu :)'),
(34, 'siapa saya? Siapa Saya? SIAPA SAYA? siapa saya Siapa Saya SIAPA SAYA siapa aku Siapa Aku SIAPA AKU siapa aku? Siapa Aku? SIAPA AKU? siapakah aku? Siapakah Aku? SIAPAKAH AKU? siapakah aku Siapakah Aku SIAPAKAH AKU', 'Hallo, maaf AIPES tidak tau nama kamu nih. salam kenal ya'),
(35, 'pelayanan surat Pelayanan Surat PELAYANAN SURAT', 'Silahkan pilih menu \'Pelayanan Surat\' diatas ya jika ingin mengajukan surat permohonan, jangan lupa lengkapi dahulu syarat yang dibutuhkan untuk dibawa ke kantor. untuk mengecek syarat bisa di baca dibagian panduan \'Tata Cara Pengajuan\''),
(36, 'cek pengajuan Cek Pengajuan CEK PENGAJUAN cek pengajuan status Cek Pengajuan Status CEK PENGAJUAN STATUS cek pengajuan surat Cek Pengajuan Surat CEK PENGAJUAN SURAT', 'Silahkan pilih menu \'Cek Pengajuan\' diatas ya jika ingin melihat sampai mana status pengajuan kamu, untuk keterangan status bisa di baca dibagian panduan \'Keterangan Status Pengajuan\'');

-- --------------------------------------------------------

--
-- Table structure for table `counterdb`
--

CREATE TABLE `counterdb` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `counter` varchar(20) NOT NULL,
  `browser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counterdb`
--

INSERT INTO `counterdb` (`id`, `tanggal`, `ip_address`, `counter`, `browser`) VALUES
(8, '2022-04-10', '::1', '1', 'Chrome/Opera'),
(9, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(10, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(11, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(12, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(13, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(14, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(15, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(16, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(17, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(18, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(19, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(20, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(21, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(22, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(23, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(24, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(25, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(26, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(27, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(28, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(29, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(30, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(31, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(32, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(33, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(34, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(35, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(36, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(37, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(38, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(39, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(40, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(41, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(42, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(43, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(44, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(45, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(46, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(47, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(48, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(49, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(50, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(51, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(52, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(53, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(54, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(55, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(56, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(57, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(58, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(59, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(60, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(61, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(62, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(63, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(64, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(65, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(66, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(67, '2022-04-19', '::1', '1', 'Chrome/Opera'),
(68, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(69, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(70, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(71, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(72, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(73, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(74, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(75, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(76, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(77, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(78, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(79, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(80, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(81, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(82, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(83, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(84, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(85, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(86, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(87, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(88, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(89, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(90, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(91, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(92, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(93, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(94, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(95, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(96, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(97, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(98, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(99, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(100, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(101, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(102, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(103, '2022-04-21', '::1', '1', 'Chrome/Opera'),
(104, '2022-05-09', '::1', '1', 'Chrome/Opera'),
(105, '2022-05-09', '::1', '1', 'Chrome/Opera'),
(106, '2022-05-09', '::1', '1', 'Chrome/Opera'),
(107, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(108, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(109, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(110, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(111, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(112, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(113, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(114, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(115, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(116, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(117, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(118, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(119, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(120, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(121, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(122, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(123, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(124, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(125, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(126, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(127, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(128, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(129, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(130, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(131, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(132, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(133, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(134, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(135, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(136, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(137, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(138, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(139, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(140, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(141, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(142, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(143, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(144, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(145, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(146, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(147, '2022-05-14', '::1', '1', 'Chrome/Opera'),
(148, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(149, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(150, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(151, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(152, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(153, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(154, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(155, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(156, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(157, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(158, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(159, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(160, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(161, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(162, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(163, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(164, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(165, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(166, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(167, '2022-05-16', '::1', '1', 'Chrome/Opera'),
(168, '2022-05-17', '::1', '1', 'Chrome/Opera'),
(169, '2022-05-17', '::1', '1', 'Chrome/Opera'),
(170, '2022-05-17', '::1', '1', 'Chrome/Opera'),
(171, '2022-05-17', '::1', '1', 'Chrome/Opera'),
(172, '2022-05-17', '::1', '1', 'Chrome/Opera'),
(173, '2022-05-18', '::1', '1', 'Chrome/Opera'),
(174, '2022-05-19', '::1', '1', 'Chrome/Opera'),
(175, '2022-05-19', '::1', '1', 'Chrome/Opera'),
(176, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(177, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(178, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(179, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(180, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(181, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(182, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(183, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(184, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(185, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(186, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(187, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(188, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(189, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(190, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(191, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(192, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(193, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(194, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(195, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(196, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(197, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(198, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(199, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(200, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(201, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(202, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(203, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(204, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(205, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(206, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(207, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(208, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(209, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(210, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(211, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(212, '2022-05-26', '::1', '1', 'Chrome/Opera'),
(213, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(214, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(215, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(216, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(217, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(218, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(219, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(220, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(221, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(222, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(223, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(224, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(225, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(226, '2022-05-27', '127.0.0.1', '1', 'Chrome/Opera'),
(227, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(228, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(229, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(230, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(231, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(232, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(233, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(234, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(235, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(236, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(237, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(238, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(239, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(240, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(241, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(242, '2022-05-27', '::1', '1', 'Chrome/Opera'),
(243, '2022-06-03', '::1', '1', 'Chrome/Opera'),
(244, '2022-06-03', '::1', '1', 'Chrome/Opera'),
(245, '2022-06-03', '::1', '1', 'Chrome/Opera'),
(246, '2022-06-03', '::1', '1', 'Chrome/Opera'),
(247, '2022-06-03', '::1', '1', 'Chrome/Opera'),
(248, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(249, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(250, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(251, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(252, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(253, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(254, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(255, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(256, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(257, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(258, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(259, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(260, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(261, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(262, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(263, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(264, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(265, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(266, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(267, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(268, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(269, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(270, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(271, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(272, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(273, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(274, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(275, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(276, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(277, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(278, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(279, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(280, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(281, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(282, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(283, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(284, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(285, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(286, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(287, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(288, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(289, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(290, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(291, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(292, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(293, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(294, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(295, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(296, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(297, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(298, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(299, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(300, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(301, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(302, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(303, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(304, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(305, '2022-06-13', '::1', '1', 'Chrome/Opera'),
(306, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(307, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(308, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(309, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(310, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(311, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(312, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(313, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(314, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(315, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(316, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(317, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(318, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(319, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(320, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(321, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(322, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(323, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(324, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(325, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(326, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(327, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(328, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(329, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(330, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(331, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(332, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(333, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(334, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(335, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(336, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(337, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(338, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(339, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(340, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(341, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(342, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(343, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(344, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(345, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(346, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(347, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(348, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(349, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(350, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(351, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(352, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(353, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(354, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(355, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(356, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(357, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(358, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(359, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(360, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(361, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(362, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(363, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(364, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(365, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(366, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(367, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(368, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(369, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(370, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(371, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(372, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(373, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(374, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(375, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(376, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(377, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(378, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(379, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(380, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(381, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(382, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(383, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(384, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(385, '2022-06-14', '::1', '1', 'Chrome/Opera'),
(386, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(387, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(388, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(389, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(390, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(391, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(392, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(393, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(394, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(395, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(396, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(397, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(398, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(399, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(400, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(401, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(402, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(403, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(404, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(405, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(406, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(407, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(408, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(409, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(410, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(411, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(412, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(413, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(414, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(415, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(416, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(417, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(418, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(419, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(420, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(421, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(422, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(423, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(424, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(425, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(426, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(427, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(428, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(429, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(430, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(431, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(432, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(433, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(434, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(435, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(436, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(437, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(438, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(439, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(440, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(441, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(442, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(443, '2022-06-15', '::1', '1', ''),
(444, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(445, '2022-06-15', '::1', '1', ''),
(446, '2022-06-15', '::1', '1', ''),
(447, '2022-06-15', '::1', '1', ''),
(448, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(449, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(450, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(451, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(452, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(453, '2022-06-15', '::1', '1', ''),
(454, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(455, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(456, '2022-06-15', '::1', '1', ''),
(457, '2022-06-15', '::1', '1', ''),
(458, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(459, '2022-06-15', '::1', '1', ''),
(460, '2022-06-15', '::1', '1', ''),
(461, '2022-06-15', '::1', '1', ''),
(462, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(463, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(464, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(465, '2022-06-15', '::1', '1', 'Chrome/Opera'),
(466, '2022-06-15', '::1', '1', 'Safari'),
(467, '2022-06-15', '::1', '1', 'Safari'),
(468, '2022-06-15', '::1', '1', 'Safari'),
(469, '2022-06-15', '::1', '1', 'Safari'),
(470, '2022-06-15', '::1', '1', 'Safari'),
(471, '2022-06-15', '::1', '1', 'Safari'),
(472, '2022-06-15', '::1', '1', 'Safari'),
(473, '2022-06-15', '::1', '1', 'Safari'),
(474, '2022-06-15', '::1', '1', 'Safari'),
(475, '2022-06-15', '::1', '1', 'Safari'),
(476, '2022-06-15', '::1', '1', 'Safari'),
(477, '2022-06-15', '::1', '1', 'Safari'),
(478, '2022-06-15', '::1', '1', 'Safari'),
(479, '2022-06-15', '::1', '1', 'Safari'),
(480, '2022-06-15', '::1', '1', 'Safari'),
(481, '2022-06-15', '::1', '1', 'Safari'),
(482, '2022-06-15', '::1', '1', 'Safari'),
(483, '2022-06-15', '::1', '1', 'Safari'),
(484, '2022-06-15', '::1', '1', 'Safari'),
(485, '2022-06-15', '::1', '1', 'Safari'),
(486, '2022-06-15', '::1', '1', 'Safari'),
(487, '2022-06-15', '::1', '1', 'Safari'),
(488, '2022-06-15', '::1', '1', 'Safari'),
(489, '2022-06-15', '::1', '1', 'Safari'),
(490, '2022-06-15', '::1', '1', 'Safari'),
(491, '2022-06-15', '::1', '1', 'Safari'),
(492, '2022-06-15', '::1', '1', 'Safari'),
(493, '2022-06-15', '::1', '1', 'Safari'),
(494, '2022-06-15', '::1', '1', 'Safari'),
(495, '2022-06-15', '::1', '1', 'Safari'),
(496, '2022-06-15', '::1', '1', 'Safari'),
(497, '2022-06-15', '::1', '1', 'Safari'),
(498, '2022-06-15', '::1', '1', 'Safari'),
(499, '2022-06-15', '::1', '1', 'Safari'),
(500, '2022-06-15', '::1', '1', 'Safari'),
(501, '2022-06-15', '::1', '1', 'Safari'),
(502, '2022-06-15', '::1', '1', 'Safari'),
(503, '2022-06-15', '::1', '1', 'Safari'),
(504, '2022-06-15', '::1', '1', 'Safari'),
(505, '2022-06-15', '::1', '1', 'Safari'),
(506, '2022-06-15', '::1', '1', 'Safari'),
(507, '2022-06-15', '::1', '1', 'Safari'),
(508, '2022-06-15', '::1', '1', 'Safari'),
(509, '2022-06-15', '::1', '1', 'Safari'),
(510, '2022-06-15', '::1', '1', 'Safari'),
(511, '2022-06-16', '::1', '1', 'Safari'),
(512, '2022-06-16', '::1', '1', 'Safari'),
(513, '2022-06-16', '::1', '1', 'Safari'),
(514, '2022-06-16', '::1', '1', 'Safari'),
(515, '2022-06-16', '::1', '1', 'Safari'),
(516, '2022-06-16', '::1', '1', 'Safari'),
(517, '2022-06-16', '::1', '1', 'Safari'),
(518, '2022-06-16', '::1', '1', 'Safari'),
(519, '2022-06-16', '::1', '1', 'Safari'),
(520, '2022-06-16', '::1', '1', 'Safari'),
(521, '2022-06-16', '::1', '1', 'Safari'),
(522, '2022-06-22', '::1', '1', 'Safari'),
(523, '2022-06-22', '::1', '1', 'Safari'),
(524, '2022-06-22', '::1', '1', 'Safari'),
(525, '2022-06-22', '::1', '1', 'Safari'),
(526, '2022-06-22', '::1', '1', 'Safari'),
(527, '2022-06-22', '::1', '1', 'Safari'),
(528, '2022-06-22', '::1', '1', 'Safari'),
(529, '2022-06-22', '::1', '1', 'Safari'),
(530, '2022-06-22', '::1', '1', 'Safari'),
(531, '2022-06-22', '::1', '1', 'Safari'),
(532, '2022-06-22', '::1', '1', 'Safari'),
(533, '2022-06-25', '::1', '1', 'Safari'),
(534, '2022-06-25', '::1', '1', 'Safari'),
(535, '2022-06-25', '::1', '1', 'Safari'),
(536, '2022-06-25', '::1', '1', 'Safari'),
(537, '2022-06-25', '::1', '1', 'Safari'),
(538, '2022-06-25', '::1', '1', 'Safari'),
(539, '2022-06-25', '::1', '1', 'Safari'),
(540, '2022-06-25', '::1', '1', 'Safari'),
(541, '2022-06-25', '::1', '1', 'Safari'),
(542, '2022-06-25', '::1', '1', 'Safari'),
(543, '2022-06-25', '::1', '1', 'Safari'),
(544, '2022-06-25', '::1', '1', 'Safari'),
(545, '2022-06-25', '::1', '1', 'Safari'),
(546, '2022-06-26', '::1', '1', 'Safari'),
(547, '2022-06-26', '::1', '1', 'Safari'),
(548, '2022-06-26', '::1', '1', 'Safari'),
(549, '2022-06-26', '::1', '1', 'Safari'),
(550, '2022-06-26', '::1', '1', 'Safari'),
(551, '2022-06-26', '::1', '1', 'Safari'),
(552, '2022-06-26', '::1', '1', 'Safari'),
(553, '2022-06-26', '::1', '1', 'Safari'),
(554, '2022-06-26', '::1', '1', 'Safari'),
(555, '2022-06-26', '::1', '1', 'Safari'),
(556, '2022-06-26', '::1', '1', 'Safari'),
(557, '2022-06-26', '::1', '1', 'Safari'),
(558, '2022-06-27', '::1', '1', 'Safari'),
(559, '2022-06-27', '::1', '1', 'Safari'),
(560, '2022-06-27', '::1', '1', 'Safari'),
(561, '2022-06-27', '::1', '1', 'Safari'),
(562, '2022-06-27', '::1', '1', 'Safari'),
(563, '2022-06-27', '::1', '1', 'Safari'),
(564, '2022-06-27', '::1', '1', 'Safari'),
(565, '2022-06-27', '::1', '1', 'Safari'),
(566, '2022-06-27', '::1', '1', 'Safari'),
(567, '2022-06-27', '::1', '1', 'Safari'),
(568, '2022-06-27', '::1', '1', 'Safari'),
(569, '2022-06-27', '::1', '1', 'Safari'),
(570, '2022-06-27', '::1', '1', 'Safari'),
(571, '2022-06-27', '::1', '1', 'Safari'),
(572, '2022-06-27', '::1', '1', 'Safari'),
(573, '2022-06-27', '::1', '1', 'Safari'),
(574, '2022-06-27', '::1', '1', 'Safari'),
(575, '2022-06-27', '::1', '1', 'Safari'),
(576, '2022-06-27', '::1', '1', 'Safari'),
(577, '2022-06-27', '::1', '1', 'Safari'),
(578, '2022-06-27', '::1', '1', 'Safari'),
(579, '2022-06-27', '::1', '1', 'Safari'),
(580, '2022-06-27', '::1', '1', 'Safari'),
(581, '2022-06-27', '::1', '1', 'Safari'),
(582, '2022-06-27', '::1', '1', 'Safari'),
(583, '2022-06-27', '::1', '1', 'Safari'),
(584, '2022-06-27', '::1', '1', 'Safari'),
(585, '2022-06-27', '::1', '1', 'Safari'),
(586, '2022-06-27', '::1', '1', 'Safari'),
(587, '2022-06-27', '::1', '1', 'Safari'),
(588, '2022-06-27', '::1', '1', 'Safari'),
(589, '2022-06-27', '::1', '1', 'Safari'),
(590, '2022-06-27', '::1', '1', 'Safari'),
(591, '2022-06-27', '::1', '1', 'Safari'),
(592, '2022-06-27', '::1', '1', 'Safari'),
(593, '2022-06-27', '::1', '1', 'Safari'),
(594, '2022-06-27', '::1', '1', 'Safari'),
(595, '2022-06-27', '::1', '1', 'Safari'),
(596, '2022-06-27', '::1', '1', 'Safari'),
(597, '2022-06-27', '::1', '1', 'Safari'),
(598, '2022-06-27', '::1', '1', 'Safari'),
(599, '2022-06-27', '::1', '1', 'Safari'),
(600, '2022-06-27', '::1', '1', 'Safari'),
(601, '2022-06-27', '::1', '1', 'Safari'),
(602, '2022-06-27', '::1', '1', 'Safari'),
(603, '2022-06-27', '::1', '1', 'Safari'),
(604, '2022-06-27', '::1', '1', 'Safari'),
(605, '2022-06-27', '::1', '1', 'Safari'),
(606, '2022-06-27', '::1', '1', 'Safari'),
(607, '2022-06-27', '::1', '1', 'Safari'),
(608, '2022-06-27', '::1', '1', 'Safari'),
(609, '2022-06-27', '::1', '1', 'Safari'),
(610, '2022-06-27', '::1', '1', 'Safari'),
(611, '2022-06-27', '::1', '1', 'Safari'),
(612, '2022-06-27', '::1', '1', 'Safari'),
(613, '2022-06-27', '::1', '1', 'Safari'),
(614, '2022-06-27', '::1', '1', 'Safari'),
(615, '2022-06-27', '::1', '1', 'Safari'),
(616, '2022-06-27', '::1', '1', 'Safari'),
(617, '2022-06-27', '::1', '1', 'Safari'),
(618, '2022-06-27', '::1', '1', 'Safari'),
(619, '2022-06-27', '::1', '1', 'Safari'),
(620, '2022-06-27', '::1', '1', 'Safari'),
(621, '2022-06-27', '::1', '1', 'Safari'),
(622, '2022-06-27', '::1', '1', 'Safari'),
(623, '2022-06-27', '::1', '1', 'Safari'),
(624, '2022-06-27', '::1', '1', 'Safari'),
(625, '2022-06-27', '::1', '1', 'Safari'),
(626, '2022-06-27', '::1', '1', 'Safari'),
(627, '2022-06-27', '::1', '1', 'Safari'),
(628, '2022-06-27', '::1', '1', 'Safari'),
(629, '2022-06-27', '::1', '1', 'Safari'),
(630, '2022-06-27', '::1', '1', 'Safari'),
(631, '2022-06-27', '::1', '1', 'Safari'),
(632, '2022-06-27', '::1', '1', 'Safari'),
(633, '2022-06-27', '::1', '1', 'Safari'),
(634, '2022-06-27', '::1', '1', 'Safari'),
(635, '2022-06-27', '::1', '1', 'Safari'),
(636, '2022-06-27', '::1', '1', 'Safari'),
(637, '2022-06-27', '::1', '1', 'Safari'),
(638, '2022-06-27', '::1', '1', 'Safari'),
(639, '2022-06-27', '::1', '1', 'Safari'),
(640, '2022-06-27', '::1', '1', 'Safari'),
(641, '2022-06-27', '::1', '1', 'Safari'),
(642, '2022-06-27', '::1', '1', 'Safari'),
(643, '2022-06-27', '::1', '1', 'Safari'),
(644, '2022-06-27', '::1', '1', 'Safari'),
(645, '2022-06-27', '::1', '1', 'Safari'),
(646, '2022-06-27', '::1', '1', 'Safari'),
(647, '2022-06-27', '::1', '1', 'Safari'),
(648, '2022-06-27', '::1', '1', 'Safari'),
(649, '2022-06-27', '::1', '1', 'Safari'),
(650, '2022-06-27', '::1', '1', 'Safari'),
(651, '2022-06-27', '::1', '1', 'Safari'),
(652, '2022-06-27', '::1', '1', 'Safari'),
(653, '2022-06-27', '::1', '1', 'Safari'),
(654, '2022-06-27', '::1', '1', 'Safari'),
(655, '2022-06-27', '::1', '1', 'Safari'),
(656, '2022-06-27', '::1', '1', 'Safari'),
(657, '2022-06-27', '::1', '1', 'Safari'),
(658, '2022-06-27', '::1', '1', 'Safari'),
(659, '2022-06-27', '::1', '1', 'Safari'),
(660, '2022-06-27', '::1', '1', 'Safari'),
(661, '2022-06-27', '::1', '1', 'Safari'),
(662, '2022-06-27', '::1', '1', 'Safari'),
(663, '2022-06-27', '::1', '1', 'Safari'),
(664, '2022-06-27', '::1', '1', 'Safari'),
(665, '2022-06-27', '::1', '1', 'Safari'),
(666, '2022-06-27', '::1', '1', 'Safari'),
(667, '2022-06-27', '::1', '1', 'Safari'),
(668, '2022-06-27', '::1', '1', 'Safari'),
(669, '2022-06-27', '::1', '1', 'Safari'),
(670, '2022-06-27', '::1', '1', 'Safari'),
(671, '2022-06-27', '::1', '1', 'Safari'),
(672, '2022-06-27', '::1', '1', 'Safari'),
(673, '2022-06-27', '::1', '1', 'Safari'),
(674, '2022-06-27', '::1', '1', 'Safari'),
(675, '2022-06-27', '::1', '1', 'Safari'),
(676, '2022-06-27', '::1', '1', 'Safari'),
(677, '2022-06-27', '::1', '1', 'Safari'),
(678, '2022-06-27', '::1', '1', 'Safari'),
(679, '2022-06-27', '::1', '1', 'Safari'),
(680, '2022-06-27', '::1', '1', 'Safari'),
(681, '2022-06-27', '::1', '1', 'Safari'),
(682, '2022-06-27', '::1', '1', 'Safari'),
(683, '2022-06-27', '::1', '1', 'Safari'),
(684, '2022-06-27', '::1', '1', 'Safari'),
(685, '2022-06-27', '::1', '1', 'Safari'),
(686, '2022-06-27', '::1', '1', 'Safari'),
(687, '2022-06-27', '::1', '1', 'Safari'),
(688, '2022-06-27', '::1', '1', 'Safari'),
(689, '2022-06-27', '::1', '1', 'Safari'),
(690, '2022-06-27', '::1', '1', 'Safari'),
(691, '2022-06-27', '::1', '1', 'Safari'),
(692, '2022-06-27', '::1', '1', 'Safari'),
(693, '2022-06-27', '::1', '1', 'Safari'),
(694, '2022-06-27', '::1', '1', 'Safari'),
(695, '2022-06-27', '::1', '1', 'Safari'),
(696, '2022-06-27', '::1', '1', 'Safari'),
(697, '2022-06-27', '::1', '1', 'Safari'),
(698, '2022-06-27', '::1', '1', 'Safari'),
(699, '2022-06-27', '::1', '1', 'Safari'),
(700, '2022-06-27', '::1', '1', 'Safari'),
(701, '2022-06-27', '::1', '1', 'Safari'),
(702, '2022-06-27', '::1', '1', 'Safari'),
(703, '2022-06-27', '::1', '1', 'Safari'),
(704, '2022-06-27', '::1', '1', 'Safari'),
(705, '2022-06-27', '::1', '1', 'Safari'),
(706, '2022-06-27', '::1', '1', 'Safari'),
(707, '2022-06-27', '::1', '1', 'Safari'),
(708, '2022-06-27', '::1', '1', 'Safari'),
(709, '2022-06-27', '::1', '1', 'Safari'),
(710, '2022-06-27', '::1', '1', 'Safari'),
(711, '2022-06-27', '::1', '1', 'Safari'),
(712, '2022-06-27', '::1', '1', 'Safari'),
(713, '2022-06-27', '::1', '1', 'Safari'),
(714, '2022-06-27', '::1', '1', 'Safari'),
(715, '2022-06-27', '::1', '1', 'Safari'),
(716, '2022-06-27', '::1', '1', 'Safari'),
(717, '2022-06-27', '::1', '1', 'Safari'),
(718, '2022-06-27', '::1', '1', 'Safari'),
(719, '2022-06-27', '::1', '1', 'Safari'),
(720, '2022-06-27', '::1', '1', 'Safari'),
(721, '2022-06-27', '::1', '1', 'Safari'),
(722, '2022-06-27', '::1', '1', 'Safari'),
(723, '2022-06-27', '::1', '1', 'Safari'),
(724, '2022-06-27', '::1', '1', 'Safari'),
(725, '2022-06-27', '::1', '1', 'Safari'),
(726, '2022-06-27', '::1', '1', 'Safari'),
(727, '2022-06-27', '::1', '1', 'Safari'),
(728, '2022-06-27', '::1', '1', 'Safari'),
(729, '2022-06-27', '::1', '1', 'Safari'),
(730, '2022-06-27', '::1', '1', 'Safari'),
(731, '2022-06-27', '::1', '1', 'Safari'),
(732, '2022-06-27', '::1', '1', 'Safari'),
(733, '2022-06-27', '::1', '1', 'Safari'),
(734, '2022-06-27', '::1', '1', 'Safari'),
(735, '2022-06-27', '::1', '1', 'Safari'),
(736, '2022-06-27', '::1', '1', 'Safari'),
(737, '2022-06-27', '::1', '1', 'Safari'),
(738, '2022-06-27', '::1', '1', 'Safari'),
(739, '2022-06-27', '::1', '1', 'Safari'),
(740, '2022-06-27', '::1', '1', 'Safari'),
(741, '2022-06-27', '::1', '1', 'Safari'),
(742, '2022-06-27', '::1', '1', 'Safari'),
(743, '2022-06-27', '::1', '1', 'Safari'),
(744, '2022-06-27', '::1', '1', 'Safari'),
(745, '2022-06-27', '::1', '1', 'Safari'),
(746, '2022-06-27', '::1', '1', 'Safari'),
(747, '2022-06-27', '::1', '1', 'Safari'),
(748, '2022-06-27', '::1', '1', 'Safari'),
(749, '2022-06-27', '::1', '1', 'Safari'),
(750, '2022-06-27', '::1', '1', 'Safari'),
(751, '2022-06-27', '::1', '1', 'Safari'),
(752, '2022-06-27', '::1', '1', 'Safari'),
(753, '2022-06-27', '::1', '1', 'Safari'),
(754, '2022-06-27', '::1', '1', 'Safari'),
(755, '2022-06-27', '::1', '1', 'Safari'),
(756, '2022-06-27', '::1', '1', 'Safari'),
(757, '2022-06-28', '::1', '1', 'Safari'),
(758, '2022-06-28', '::1', '1', 'Safari'),
(759, '2022-06-28', '::1', '1', 'Safari'),
(760, '2022-06-28', '::1', '1', 'Safari'),
(761, '2022-06-28', '::1', '1', 'Safari'),
(762, '2022-06-28', '::1', '1', 'Safari'),
(763, '2022-06-28', '::1', '1', 'Safari'),
(764, '2022-06-28', '::1', '1', 'Safari'),
(765, '2022-06-28', '::1', '1', 'Safari'),
(766, '2022-06-28', '::1', '1', 'Safari'),
(767, '2022-06-28', '::1', '1', 'Safari'),
(768, '2022-06-28', '::1', '1', 'Safari'),
(769, '2022-06-28', '::1', '1', 'Safari'),
(770, '2022-06-28', '::1', '1', 'Safari'),
(771, '2022-06-28', '::1', '1', 'Safari'),
(772, '2022-06-28', '::1', '1', 'Safari'),
(773, '2022-06-28', '::1', '1', 'Safari'),
(774, '2022-06-29', '::1', '1', 'Safari'),
(775, '2022-06-29', '::1', '1', 'Safari'),
(776, '2022-06-30', '::1', '1', 'Safari'),
(777, '2022-06-30', '::1', '1', 'Safari'),
(778, '2022-06-30', '::1', '1', 'Safari'),
(779, '2022-07-01', '::1', '1', 'Safari'),
(780, '2022-07-01', '::1', '1', 'Safari'),
(781, '2022-07-01', '::1', '1', 'Safari'),
(782, '2022-07-01', '::1', '1', 'Safari'),
(783, '2022-07-02', '::1', '1', 'Safari'),
(784, '2022-07-03', '::1', '1', 'Safari'),
(785, '2022-07-04', '::1', '1', 'Safari'),
(786, '2022-07-04', '::1', '1', 'Safari'),
(787, '2022-07-04', '::1', '1', 'Safari'),
(788, '2022-07-04', '::1', '1', 'Safari'),
(789, '2022-07-05', '::1', '1', 'Safari'),
(790, '2022-07-06', '::1', '1', 'Safari'),
(791, '2022-07-07', '::1', '1', 'Safari'),
(792, '2022-07-07', '::1', '1', 'Safari'),
(793, '2022-07-07', '::1', '1', 'Safari'),
(794, '2022-07-07', '::1', '1', 'Safari'),
(795, '2022-07-08', '::1', '1', 'Safari'),
(796, '2022-07-11', '::1', '1', 'Safari'),
(797, '2022-07-11', '::1', '1', 'Safari'),
(798, '2022-07-11', '::1', '1', 'Safari'),
(799, '2022-07-12', '::1', '1', 'Safari'),
(800, '2022-07-12', '::1', '1', 'Safari'),
(801, '2022-07-14', '::1', '1', 'Safari'),
(802, '2022-07-14', '::1', '1', 'Safari'),
(803, '2022-07-14', '::1', '1', 'Safari'),
(804, '2022-07-14', '::1', '1', 'Safari'),
(805, '2022-07-14', '::1', '1', 'Safari'),
(806, '2022-07-14', '::1', '1', 'Safari'),
(807, '2022-07-14', '::1', '1', 'Safari'),
(808, '2022-07-14', '::1', '1', 'Safari'),
(809, '2022-07-14', '::1', '1', 'Safari'),
(810, '2022-07-14', '::1', '1', 'Safari'),
(811, '2022-07-14', '::1', '1', 'Safari'),
(812, '2022-07-14', '::1', '1', 'Safari'),
(813, '2022-07-17', '::1', '1', 'Safari'),
(814, '2022-07-17', '::1', '1', 'Safari'),
(815, '2022-07-17', '::1', '1', 'Safari'),
(816, '2022-07-21', '::1', '1', 'Safari'),
(817, '2022-07-22', '::1', '1', 'Safari'),
(818, '2022-07-22', '::1', '1', 'Safari'),
(819, '2022-07-25', '::1', '1', 'Safari'),
(820, '2022-07-27', '::1', '1', 'Safari'),
(821, '2022-07-27', '::1', '1', 'Safari'),
(822, '2022-07-28', '::1', '1', 'Safari'),
(823, '2022-07-28', '::1', '1', 'Safari'),
(824, '2022-07-28', '::1', '1', 'Safari'),
(825, '2022-07-28', '::1', '1', 'Safari'),
(826, '2022-07-28', '::1', '1', 'Safari'),
(827, '2022-07-28', '::1', '1', 'Safari'),
(828, '2022-07-28', '::1', '1', 'Safari'),
(829, '2022-07-28', '::1', '1', 'Safari'),
(830, '2022-07-28', '::1', '1', 'Safari'),
(831, '2022-07-28', '::1', '1', 'Safari'),
(832, '2022-07-28', '::1', '1', 'Safari'),
(833, '2022-07-28', '::1', '1', 'Safari'),
(834, '2022-07-31', '::1', '1', 'Safari'),
(835, '2022-07-31', '::1', '1', 'Safari'),
(836, '2022-07-31', '::1', '1', 'Safari'),
(837, '2022-07-31', '::1', '1', 'Safari'),
(838, '2022-07-31', '::1', '1', 'Safari'),
(839, '2022-07-31', '::1', '1', 'Safari'),
(840, '2022-07-31', '::1', '1', 'Safari'),
(841, '2022-07-31', '::1', '1', 'Safari'),
(842, '2022-07-31', '::1', '1', 'Safari'),
(843, '2022-07-31', '::1', '1', 'Safari'),
(844, '2022-07-31', '::1', '1', 'Safari'),
(845, '2022-07-31', '::1', '1', 'Safari'),
(846, '2022-07-31', '::1', '1', 'Safari'),
(847, '2022-07-31', '::1', '1', 'Safari'),
(848, '2022-07-31', '::1', '1', 'Safari'),
(849, '2022-07-31', '::1', '1', 'Safari'),
(850, '2022-07-31', '::1', '1', 'Safari'),
(851, '2022-07-31', '::1', '1', 'Safari'),
(852, '2022-07-31', '::1', '1', 'Safari'),
(853, '2022-07-31', '::1', '1', 'Safari'),
(854, '2022-07-31', '::1', '1', 'Safari'),
(855, '2022-07-31', '::1', '1', 'Safari'),
(856, '2022-07-31', '::1', '1', 'Safari'),
(857, '2022-07-31', '::1', '1', 'Safari'),
(858, '2022-07-31', '::1', '1', 'Safari'),
(859, '2022-07-31', '::1', '1', 'Safari'),
(860, '2022-07-31', '::1', '1', 'Safari'),
(861, '2022-07-31', '::1', '1', 'Safari'),
(862, '2022-07-31', '::1', '1', 'Safari'),
(863, '2022-07-31', '::1', '1', 'Safari'),
(864, '2022-07-31', '::1', '1', 'Safari'),
(865, '2022-07-31', '::1', '1', 'Safari'),
(866, '2022-07-31', '::1', '1', 'Safari'),
(867, '2022-07-31', '::1', '1', 'Safari'),
(868, '2022-07-31', '::1', '1', 'Safari'),
(869, '2022-07-31', '::1', '1', 'Safari'),
(870, '2022-07-31', '::1', '1', 'Safari'),
(871, '2022-07-31', '::1', '1', 'Safari'),
(872, '2022-07-31', '::1', '1', 'Safari'),
(873, '2022-07-31', '::1', '1', 'Safari'),
(874, '2022-07-31', '::1', '1', 'Safari'),
(875, '2022-07-31', '::1', '1', 'Safari'),
(876, '2022-07-31', '::1', '1', 'Safari'),
(877, '2022-07-31', '::1', '1', 'Safari'),
(878, '2022-07-31', '::1', '1', 'Safari'),
(879, '2022-07-31', '::1', '1', 'Safari'),
(880, '2022-07-31', '::1', '1', 'Safari'),
(881, '2022-07-31', '::1', '1', 'Safari'),
(882, '2022-07-31', '::1', '1', 'Safari'),
(883, '2022-07-31', '::1', '1', 'Safari'),
(884, '2022-07-31', '::1', '1', 'Safari'),
(885, '2022-07-31', '::1', '1', 'Safari'),
(886, '2022-07-31', '::1', '1', 'Safari'),
(887, '2022-07-31', '::1', '1', 'Safari'),
(888, '2022-07-31', '::1', '1', 'Safari'),
(889, '2022-07-31', '::1', '1', 'Safari'),
(890, '2022-07-31', '::1', '1', 'Safari'),
(891, '2022-07-31', '::1', '1', 'Safari'),
(892, '2022-07-31', '::1', '1', 'Safari'),
(893, '2022-07-31', '::1', '1', 'Safari'),
(894, '2022-07-31', '::1', '1', 'Safari'),
(895, '2022-07-31', '::1', '1', 'Safari'),
(896, '2022-07-31', '::1', '1', 'Safari'),
(897, '2022-07-31', '::1', '1', 'Safari'),
(898, '2022-07-31', '::1', '1', 'Safari'),
(899, '2022-07-31', '::1', '1', 'Safari'),
(900, '2022-08-02', '::1', '1', 'Safari'),
(901, '2022-08-02', '::1', '1', 'Safari'),
(902, '2022-08-02', '::1', '1', 'Safari'),
(903, '2022-08-02', '::1', '1', 'Safari'),
(904, '2022-08-03', '::1', '1', 'Safari'),
(905, '2022-08-04', '::1', '1', 'Safari'),
(906, '2022-08-07', '::1', '1', 'Safari'),
(907, '2022-08-07', '::1', '1', 'Safari'),
(908, '2022-08-07', '::1', '1', 'Safari'),
(909, '2022-08-15', '::1', '1', 'Safari'),
(910, '2022-08-15', '::1', '1', 'Safari'),
(911, '2022-08-15', '::1', '1', 'Safari'),
(912, '2022-08-15', '::1', '1', 'Safari'),
(913, '2022-08-15', '::1', '1', 'Safari'),
(914, '2022-08-15', '::1', '1', 'Safari'),
(915, '2022-08-15', '::1', '1', 'Safari'),
(916, '2022-08-15', '::1', '1', 'Safari'),
(917, '2022-08-15', '::1', '1', 'Safari'),
(918, '2022-08-16', '::1', '1', 'Safari'),
(919, '2022-08-16', '::1', '1', 'Safari'),
(920, '2022-08-16', '::1', '1', 'Safari'),
(921, '2022-08-16', '::1', '1', 'Safari'),
(922, '2022-08-17', '::1', '1', 'Safari'),
(923, '2022-08-17', '::1', '1', 'Safari'),
(924, '2022-08-17', '::1', '1', 'Safari'),
(925, '2022-08-17', '::1', '1', 'Safari'),
(926, '2022-08-24', '::1', '1', 'Safari'),
(927, '2022-08-27', '::1', '1', 'Safari'),
(928, '2022-08-27', '::1', '1', 'Safari'),
(929, '2022-08-27', '::1', '1', 'Safari'),
(930, '2022-08-27', '::1', '1', 'Safari');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto`, `keterangan`) VALUES
(30, '569-foto_bersama.jpg', 'Foto Bersama Pegawai Memperingati Hari Sumpah Pemuda 28 Oktober 2021, Di Pendopo Kecamatan Weleri.'),
(31, '987-magang-usm.jpg', 'Foto bersama anak magang Universitas Semarang 01 November 2021');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul_informasi` varchar(115) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `isi_informasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `judul_informasi`, `hari`, `tanggal`, `foto`, `isi_informasi`) VALUES
(3, 'UMKM WELERI NAIK KELAS', 'Selasa,', '2022-05-24', '791-UMKM WELERI NAIK KELAS.jpg', 'Haiii haiii haiii Warga Weleri dan sekitarnya,,,Yuk kunjungi Stand UMKM Kecamatan Weleri di Pasar Malam Desa Sambongsari tepatnya di Lapangan Desa Sambongsari. Stand kita ada di dekat pintu masuk ya, jangan sampai kelewatan ada banyak produk dari Pelaku UMKM Kecamatan Weleri lhooo.Yang mau datang untuk *nglarisi* monggo, yang mau ikut menitipkan produknya juga bisa ya langsung hubungi koordinator UMKM Kecamatan Weleri'),
(4, 'PEKAN RAYA KENDAL', 'Jumat,', '2022-07-21', '729-21293286107_179438947819752_6751579818542937760_n.jpg', 'PEKAN RAYA KENDAL DALAM RANGKA PERINGATAN HARI JADI KABUPATEN KENDAL.');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `jabatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `foto`, `nama`, `nip`, `jabatan`) VALUES
(2, '714-Balya_page-0001.png', 'BALYA, A.Md', '198911182019031005', 'PELAKSANA'),
(3, '628-Seti_page-0001.png', 'SETI', '197102022006042021', 'PENGADMINTRASI KEUANGAN'),
(4, '848-Eko Basuki_page-0001.png', 'EKO BASUKI', '19691120200961003', 'PELAKSANA'),
(5, '708-Arief Hendro Susetiyo_page-0001.png', 'ARIEF HENDRO SUSETIYO', '196811191991021002', 'PELAKSANA'),
(6, '919-Dwi Sri Windiyawati_page-0001.png', 'DWI SRI WINDYAWATI', '197505272007012008', 'ANALIS PEMBERDAYAAN MASYARAKAT & KELEMBAGAAN'),
(7, '577-A.Munadhirin_page-0001.png', 'A MUNADHIRIN', '196805202007011037', 'PELAKSANA');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan_surat`
--

CREATE TABLE `pelayanan_surat` (
  `no_pendaftar` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengajuan` varchar(20) NOT NULL,
  `progres` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelayanan_surat`
--

INSERT INTO `pelayanan_surat` (`no_pendaftar`, `nama`, `alamat`, `jenis_kelamin`, `jenis_surat`, `no_telepon`, `email`, `keterangan`, `tanggal_pengajuan`, `progres`) VALUES
('SRT26557568', 'Muhammad Mbappe', 'Jl. paris saint german, blok 6 gedung D', 'Laki-Laki', 'Permohonan Akta Kelahiran', '0873636632772', 'muhammad_mbappe@gmail.com', 'syarat berkas sudah lengkap, kapan bisa ke kantor untuk penyerahan pengajuan?', '2022-08-16', 'Proses'),
('SRT95284055', 'Muhammad Teguh Rizkiono', 'Jl. Taruna Weleri, Kendal', 'Laki-Laki', 'Permohonan KTP Baru', '082139563034', 'teguhriki58@gmail.com', 'sudah', '2022-08-24', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterdb`
--
ALTER TABLE `counterdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelayanan_surat`
--
ALTER TABLE `pelayanan_surat`
  ADD PRIMARY KEY (`no_pendaftar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `counterdb`
--
ALTER TABLE `counterdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
