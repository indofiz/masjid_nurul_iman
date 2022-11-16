-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 09:32 PM
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
-- Table structure for table `profil_masjid`
--

CREATE TABLE `profil_masjid` (
  `id_profil` int(10) NOT NULL,
  `upload_img` varchar(100) NOT NULL,
  `alamat_profil` text NOT NULL,
  `telp_profil` varchar(13) NOT NULL,
  `email_profil` varchar(50) NOT NULL,
  `norek_profil` varchar(100) NOT NULL,
  `desk_profil` text NOT NULL,
  `bank_an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_masjid`
--

INSERT INTO `profil_masjid` (`id_profil`, `upload_img`, `alamat_profil`, `telp_profil`, `email_profil`, `norek_profil`, `desk_profil`, `bank_an`) VALUES
(1, '4e2b2626b1cd9e8d4673fc833deff03c.jpg', 'Jalan Selangkat RT 006 / RW 002 Kelurahan Selindung Baru Kecamatan Gabek Kota Pangkalpinang, 33117', '0841234213', 'Masjid@gmail.com', '023234432423', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eleifend vitae ut laoreet ipsum est scelerisque. Platea porta sem diam amet, vivamus sit in lobortis. Imperdiet fames vitae condimentum nec eu. Pellentesque dignissim quis porttitor egestas. Nulla ac a arcu viverra elementum, platea elementum. Mollis feugiat elit tempus etiam rhoncus vitae facilisis pulvinar. Mi ut urna quam aliquam in ultrices turpis. Ut auctor est et nunc consectetur. Molestie nunc diam ultricies ante cursus sed nulla cras. Est ornare at ullamcorper tincidunt amet. Eu tincidunt libero massa nulla at tempor felis. Vestibulum urna non sit senectus viverra pellentesque massa gravida erat. Faucibus pretium mi donec vel tristique risus. Aliquet risus aliquam, facilisi nullam hac. Nisl ut amet, posuere interdum mauris felis, justo, id erat. Commodo consectetur eu purus viverra sed. Nibh ac sed integer cras tincidunt nec mattis porta. Eu risus nulla condimentum enim sit duis integer tortor. Diam etiam pharetra nunc pulvinar non morbi. ', 'Della');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profil_masjid`
--
ALTER TABLE `profil_masjid`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profil_masjid`
--
ALTER TABLE `profil_masjid`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
