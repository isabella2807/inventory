-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Jul 2019 pada 16.27
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_medis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `tarif` varchar(20) NOT NULL,
  `biaya_resep` varchar(30) NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` text NOT NULL,
  `resep` text NOT NULL,
  `total_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `id_pasien`, `id_dokter`, `tanggal_bayar`, `tarif`, `biaya_resep`, `keluhan`, `diagnosa`, `resep`, `total_bayar`) VALUES
(36, 5, 5, '2019-06-20', '50000', '5000', 'aascs', 'asas', '', '55000'),
(37, 4, 1, '2019-06-22', '400000', '36000', 'dsahdhjas', 'sajfhshf', 'bfdnfnds', '436000'),
(38, 2, 2, '2019-06-23', '52000', '31000', 'hgfgff', 'ghghghg', 'bjhhjv', '83000'),
(40, 1, 1, '2019-06-23', '400000', '31500', 'mata kabur', 'mata tua', 'gunakan tiga klai sehari ', '498500'),
(44, 4, 1, '2019-06-23', '400000', '18500', '11111111', '11111111', '1111111111', '452500'),
(46, 1, 5, '2019-06-23', '50000', '1000', 'sakit kepala', 'mbuohhh', 'orauruss\r\n', '51000'),
(47, 3, 5, '2019-06-23', '50000', '36000', 'sakit mata', 'mata kebanyakan natap layar pc atau handphone', 'teteskan pada mata 3kali sehari\r\n', '86000'),
(48, 6, 5, '2019-06-24', '50000', '180000', 'mata gatal', 'pengaruh debu ', 'gunakan setiap mata gatal 2 sampai 3 tetes', '230000'),
(49, 1, 5, '2019-06-24', '50000', '25000', 'perut perih', 'asam lambung naik ', 'minum 3 kali sehari sebelum makan', '75000'),
(50, 8, 7, '2019-06-24', '50000', '34000', 'Sakit kepala ', 'kelelahan ', 'minum 3 kali sehari setelah makan , jangan lupa istirahat yang cukup', '84000'),
(51, 9, 1, '2019-07-03', '400000', '13500', 'Mata Linu ', 'Rabun Jauh', 'Teteskan 3 kali sehari ', '413500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `lahir_dokter` date NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tarif` varchar(20) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `lahir_dokter`, `alamat`, `telepon`, `tarif`, `spesialis`, `keterangan`) VALUES
(1, 'Dr. Neasly', '1967-05-08', 'Washington DC', '+632145678900', '400000', 'Mata', ''),
(2, 'Dr. Kang', '1980-09-05', 'Korea Selatan', '+688145674231', '52000', 'Tenggorokan', ''),
(5, 'Dr. Habibie', '1987-04-13', 'Jl. Soekarno-Hatta Jakarta Selatan', '087634431221', '50000', 'Umum', ''),
(6, 'Imam Supardi', '1976-04-03', 'jalan imam bonjol desa mejayan', '087654321990', '40000', 'Dokter Anak ', 'bekerja selama 2 tahun'),
(7, 'Dr. Muhammad Ali', '1976-09-12', 'Jalan Madiun raya kota madiun ', '081209098765', '50000', 'dokter anak', 'Buka Klinik di kota madiun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kategori` enum('Kapsul','Pil','Sirup','Tetes','Antibiotik') NOT NULL,
  `harga_obat` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `kategori`, `harga_obat`, `stok`, `keterangan`) VALUES
(1, 'Alleterol tipe 2', 'Kapsul', '18000', 80, 'Obat mata untuk meringankan mata nyeri akibat sering menatap layar komputer atau handphone'),
(2, 'Promag', 'Kapsul', '500', 50, 'Meredakan sakit perut seperti Maag dll\r\n'),
(3, 'Alleterol', 'Kapsul', '13500', 11, 'Obat untuk mengatasi gatal gatal pada mata karena debu '),
(6, 'Paracetamol', 'Kapsul', '1000', 100, 'Obat untuk meringankan demam'),
(7, 'Revannol', 'Kapsul', '12000', 8, 'Antibiotik pada luka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `lahir_pasien` date NOT NULL,
  `keluarga_pasien` varchar(50) NOT NULL,
  `alamat_pasien` text NOT NULL,
  `jk_pasien` enum('L','P') NOT NULL,
  `telepon_pasien` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `lahir_pasien`, `keluarga_pasien`, `alamat_pasien`, `jk_pasien`, `telepon_pasien`) VALUES
(1, 'Joe Taslim', '2019-05-02', 'Alexander Graham Bell', 'Jalan Pangkostrad rt 10 rw 5 ', 'L', '082147483640   '),
(2, 'Cut Rita', '2009-11-08', 'Cut Aggie', 'Jl. Pangkostrad RT.010 RW.008 Desa Lubuk Banten Kecamatan Banten Kabupaten Banten', 'P', '082147483647'),
(3, 'Qwuery', '1990-09-12', 'Script', 'localhost no. 3340 RT. 01 Rw. 02 Okee', 'L', '082332215656'),
(4, 'Sangkuriang', '2011-02-01', 'Dayang Sumbi', 'Toba, Sumatera Barat', 'L', '082145368787'),
(5, 'Endang', '1998-12-11', 'sutikno', 'Desa Blabakan Kecamatan Wungu Kabupaten Madiun', 'P', '0351-2112310'),
(6, 'sukijan', '1950-12-12', 'soekemi', 'Desa kalliabu kecamatan mejayan kabupaten madiun', 'L', '087654543232'),
(7, 'Shinta permatasari', '1991-12-12', 'Debyana', 'Desa kaliurang kecamatan wonoasri', 'P', '08555544443'),
(8, 'arman', '2112-02-12', 'painem', 'Desa Klecorejo rt 10 rw 5  kecamatan mejayan kabupaten madiun', 'L', '033214566666'),
(9, 'Isabelle', '2002-12-28', 'Sony ', 'Desa Kaliabu Kecamatan Mejayan', 'P', '081292278830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id_pelayanan` int(11) NOT NULL,
  `nama_pelayanan` varchar(50) NOT NULL,
  `biaya_pelayanan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelayanan`
--

INSERT INTO `pelayanan` (`id_pelayanan`, `nama_pelayanan`, `biaya_pelayanan`) VALUES
(1, 'suntik', ' 17000'),
(2, 'injeksi', '25000'),
(3, 'Infus', '50000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_layanan`
--

CREATE TABLE `pembayaran_layanan` (
  `id_pembayaran_layanan` int(11) NOT NULL,
  `id_bayar` int(11) NOT NULL,
  `id_pelayanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_layanan`
--

INSERT INTO `pembayaran_layanan` (`id_pembayaran_layanan`, `id_bayar`, `id_pelayanan`) VALUES
(3, 54, 1),
(4, 57, 1),
(5, 57, 1),
(6, 57, 1),
(7, 59, 1),
(8, 59, 1),
(9, 61, 1),
(10, 61, 1),
(11, 62, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_obat`
--

CREATE TABLE `pembayaran_obat` (
  `id_pembayaran_obat` int(11) NOT NULL,
  `id_bayar` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_obat`
--

INSERT INTO `pembayaran_obat` (`id_pembayaran_obat`, `id_bayar`, `id_obat`, `jumlah`) VALUES
(41, 30, 6, 13),
(42, 30, 3, 2),
(43, 36, 2, 10),
(44, 37, 1, 2),
(45, 38, 1, 1),
(46, 38, 6, 13),
(47, 39, 3, 1),
(48, 39, 2, 1),
(52, 40, 1, 1),
(53, 40, 3, 1),
(54, 41, 1, 1),
(55, 42, 2, 1),
(56, 42, 1, 1),
(57, 42, 3, 1),
(58, 43, 2, 1),
(59, 43, 3, 1),
(60, 44, 1, 1),
(61, 44, 2, 1),
(62, 45, 2, 1),
(63, 0, 1, 1),
(64, 0, 6, 1),
(65, 0, 3, 1),
(66, 46, 6, 1),
(67, 47, 1, 2),
(68, 48, 1, 10),
(69, 49, 2, 50),
(70, 50, 7, 2),
(71, 50, 6, 10),
(72, 51, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lvl`
--

CREATE TABLE `tbl_lvl` (
  `id_level` int(11) NOT NULL,
  `level_user` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lvl`
--

INSERT INTO `tbl_lvl` (`id_level`, `level_user`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_level`, `first_name`, `last_name`, `email`, `phone`, `user`, `pass`) VALUES
(1, 1, 'Putri', 'Isabella', 'admin@gmail.com', '081292278830', '@admin', 'admin123'),
(2, 2, 'Sony', 'Saputra', 'user@gmail.com', '081252243091', '@user', 'user123'),
(3, 1, 'admin', 'admin', 'adminadmin@gmail.com', '08125224300', '@adminadmin', '@adminadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indexes for table `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  ADD PRIMARY KEY (`id_pembayaran_layanan`),
  ADD KEY `id_pelayanan` (`id_pelayanan`);

--
-- Indexes for table `pembayaran_obat`
--
ALTER TABLE `pembayaran_obat`
  ADD PRIMARY KEY (`id_pembayaran_obat`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `tbl_lvl`
--
ALTER TABLE `tbl_lvl`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  MODIFY `id_pembayaran_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pembayaran_obat`
--
ALTER TABLE `pembayaran_obat`
  MODIFY `id_pembayaran_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tbl_lvl`
--
ALTER TABLE `tbl_lvl`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bayar`
--
ALTER TABLE `bayar`
  ADD CONSTRAINT `bayar_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `bayar_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`);

--
-- Ketidakleluasaan untuk tabel `pembayaran_layanan`
--
ALTER TABLE `pembayaran_layanan`
  ADD CONSTRAINT `pembayaran_layanan_ibfk_1` FOREIGN KEY (`id_pelayanan`) REFERENCES `pelayanan` (`id_pelayanan`);

--
-- Ketidakleluasaan untuk tabel `pembayaran_obat`
--
ALTER TABLE `pembayaran_obat`
  ADD CONSTRAINT `pembayaran_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`);

--
-- Ketidakleluasaan untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tbl_lvl` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
