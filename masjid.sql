-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 09:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `arisan_kurban`
--

CREATE TABLE `arisan_kurban` (
  `id_arisan` int(50) NOT NULL,
  `id_donatur` int(50) NOT NULL,
  `tahun_periode` varchar(9) NOT NULL,
  `biaya` int(20) NOT NULL,
  `terbayar` int(20) NOT NULL,
  `status_arisan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arisan_kurban`
--

INSERT INTO `arisan_kurban` (`id_arisan`, `id_donatur`, `tahun_periode`, `biaya`, `terbayar`, `status_arisan`) VALUES
(1, 2, '2022', 12000000, 0, '0'),
(2, 3, '2022', 10000000, 1000000, '0'),
(3, 1, '2022', 13000000, 13000000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `berita_donasi`
--

CREATE TABLE `berita_donasi` (
  `id_berita` int(50) NOT NULL,
  `judul_berita` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `deskripsi_berita` text NOT NULL,
  `gambar_berita` varchar(100) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_donasi`
--

INSERT INTO `berita_donasi` (`id_berita`, `judul_berita`, `tanggal_mulai`, `tanggal_selesai`, `deskripsi_berita`, `gambar_berita`, `status`) VALUES
(1, 'Nganggung Bersama Warga Gabek', '2022-11-10', '2022-11-15', 'Makan makan bersama memperingati maulid nabi muhammad saw', 'Nganggung_Bersama_Warga_Gabekbec63a7b-d985-46f5-afbb-b4382e2a5712_169.jpeg', NULL),
(2, 'Idul Fitri', '2022-11-01', '2022-11-09', 'Dalam rangka merayakan hari raya idul fitri pada bulan ini maka di diberitahukan kepada warga yang ingin berdonasi', 'Idul_Fitriforeground.jpg', NULL),
(3, 'Acara Bersih Bersih', '2022-11-26', '2022-11-29', 'Kepada warga yang ingin mendonasikan perlengkapan masjid dipersilahkan ya', 'Acara_Bersih_Bersihfoto-secara-de-facto-pangkalpinang-pernah-jadi-ibu-kota-ri.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cicil_arisan_kurban`
--

CREATE TABLE `cicil_arisan_kurban` (
  `id_cicil_arisan` int(50) NOT NULL,
  `id_arisan` int(50) NOT NULL,
  `tanggal_cicil` date NOT NULL,
  `nominal_cicil` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cicil_arisan_kurban`
--

INSERT INTO `cicil_arisan_kurban` (`id_cicil_arisan`, `id_arisan`, `tanggal_cicil`, `nominal_cicil`) VALUES
(1, 3, '2022-11-11', 5000000),
(2, 3, '2022-11-10', 4000000),
(3, 3, '2022-11-11', 4000000),
(4, 2, '2022-11-11', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `jamaah`
--

CREATE TABLE `jamaah` (
  `id_jamaah` int(50) NOT NULL,
  `nama_jamaah` varchar(30) NOT NULL,
  `telepon_jamaah` varchar(13) NOT NULL,
  `alamat_jamaah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jamaah`
--

INSERT INTO `jamaah` (`id_jamaah`, `nama_jamaah`, `telepon_jamaah`, `alamat_jamaah`) VALUES
(1, 'Jamaah 1', '084663421323', 'Jalan Jambu Merah'),
(2, 'Jemaah 2', '08231232321', 'Jalan Nanas Hijau'),
(3, 'Jemaah 3', '08232324214', 'Jalan Bioskop Lama');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pemasukan`
--

CREATE TABLE `kategori_pemasukan` (
  `id_kategori_masuk` int(11) NOT NULL,
  `nama_kategori_masuk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_pemasukan`
--

INSERT INTO `kategori_pemasukan` (`id_kategori_masuk`, `nama_kategori_masuk`) VALUES
(1, 'Sumbangan Masyarakat'),
(2, 'Sumbangan Pemerintah');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengeluaran`
--

CREATE TABLE `kategori_pengeluaran` (
  `id_kategori_keluar` int(11) NOT NULL,
  `nama_kategori_keluar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_pengeluaran`
--

INSERT INTO `kategori_pengeluaran` (`id_kategori_keluar`, `nama_kategori_keluar`) VALUES
(1, 'Biaya Bulanan'),
(2, 'Perbaikan Masjid');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(50) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `pj_layanan` varchar(100) NOT NULL,
  `kontak_layanan` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `pj_layanan`, `kontak_layanan`) VALUES
(1, 'Layanan 1', 'Juliansyah', '08317434234'),
(2, 'Layanan 2', 'Mas Edi', '08234314445');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` int(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `id_kategori`, `tanggal`, `nominal`, `keterangan`, `jenis`) VALUES
(1, 1, '2022-11-11', '10000000', 'Dari masyarakat duren 3', 'pemasukan'),
(2, 1, '2022-10-12', '12000000', 'Dari Masyarakat Nanas 4', 'pemasukan'),
(3, 2, '2022-11-09', '30000000', 'Dari Pemkot Kota pangkalpinang', 'pemasukan');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `id_kategori`, `tanggal`, `nominal`, `keterangan`, `jenis`) VALUES
(1, 1, '2022-11-11', '1200000', 'Biaya Listrik air, dan membersihkan karpet', 'pengeluaran'),
(2, 2, '2022-11-11', '12000000', 'Memperbaiki genteng gudang', 'pengeluaran');

-- --------------------------------------------------------

--
-- Table structure for table `profil_masjid`
--

CREATE TABLE `profil_masjid` (
  `id_profil` int(10) NOT NULL,
  `upload_img` varchar(100) NOT NULL,
  `alamat_profil` text NOT NULL,
  `telp_profil` varchar(13) NOT NULL,
  `email_profil` varchar(50) NOT NULL,
  `norek_profil` varchar(100) NOT NULL,
  `desk_profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_masjid`
--

INSERT INTO `profil_masjid` (`id_profil`, `upload_img`, `alamat_profil`, `telp_profil`, `email_profil`, `norek_profil`, `desk_profil`) VALUES
(1, 'gambar_profil.jpg', 'Jalan Selangkat RT 006 / RW 002 Kelurahan Selindung Baru Kecamatan Gabek Kota Pangkalpinang, 33117', '0841234213', 'Masjid@gmail.com', '023234432423', 'dd kk');

-- --------------------------------------------------------

--
-- Table structure for table `sdm_masjid`
--

CREATE TABLE `sdm_masjid` (
  `id_sdm` int(3) NOT NULL,
  `foto_bagan` varchar(100) NOT NULL,
  `jumlah_pengurus` int(3) NOT NULL,
  `jumlah_remaja_masjid` int(3) NOT NULL,
  `jumlah_imam_utama` int(3) NOT NULL,
  `jumlah_imam_cadangan` int(3) NOT NULL,
  `jumlah_muadzin` int(3) NOT NULL,
  `jumlah_khatib` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdm_masjid`
--

INSERT INTO `sdm_masjid` (`id_sdm`, `foto_bagan`, `jumlah_pengurus`, `jumlah_remaja_masjid`, `jumlah_imam_utama`, `jumlah_imam_cadangan`, `jumlah_muadzin`, `jumlah_khatib`) VALUES
(1, 'bagan_pengurus1.jpg', 2, 2, 23, 5, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id_user` int(10) NOT NULL,
  `id_jamaah` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id_user`, `id_jamaah`, `username`, `password`, `role`) VALUES
(1, 1, 'sekretaris', 'sekretaris', 'Sekretaris'),
(2, 2, 'admin', 'admin', 'Admin'),
(3, 3, 'bendahara', 'bendahara', 'Bendahara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arisan_kurban`
--
ALTER TABLE `arisan_kurban`
  ADD PRIMARY KEY (`id_arisan`);

--
-- Indexes for table `berita_donasi`
--
ALTER TABLE `berita_donasi`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `cicil_arisan_kurban`
--
ALTER TABLE `cicil_arisan_kurban`
  ADD PRIMARY KEY (`id_cicil_arisan`);

--
-- Indexes for table `jamaah`
--
ALTER TABLE `jamaah`
  ADD PRIMARY KEY (`id_jamaah`);

--
-- Indexes for table `kategori_pemasukan`
--
ALTER TABLE `kategori_pemasukan`
  ADD PRIMARY KEY (`id_kategori_masuk`);

--
-- Indexes for table `kategori_pengeluaran`
--
ALTER TABLE `kategori_pengeluaran`
  ADD PRIMARY KEY (`id_kategori_keluar`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_masjid`
--
ALTER TABLE `profil_masjid`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `sdm_masjid`
--
ALTER TABLE `sdm_masjid`
  ADD PRIMARY KEY (`id_sdm`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arisan_kurban`
--
ALTER TABLE `arisan_kurban`
  MODIFY `id_arisan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita_donasi`
--
ALTER TABLE `berita_donasi`
  MODIFY `id_berita` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cicil_arisan_kurban`
--
ALTER TABLE `cicil_arisan_kurban`
  MODIFY `id_cicil_arisan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jamaah`
--
ALTER TABLE `jamaah`
  MODIFY `id_jamaah` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_pemasukan`
--
ALTER TABLE `kategori_pemasukan`
  MODIFY `id_kategori_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_pengeluaran`
--
ALTER TABLE `kategori_pengeluaran`
  MODIFY `id_kategori_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil_masjid`
--
ALTER TABLE `profil_masjid`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sdm_masjid`
--
ALTER TABLE `sdm_masjid`
  MODIFY `id_sdm` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
