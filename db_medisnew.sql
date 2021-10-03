-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Jun 2019 pada 05.15
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
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `lahir_dokter` date NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tarif` varchar(20) NOT NULL,
  `spesialis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `lahir_dokter`, `alamat`, `telepon`, `tarif`, `spesialis`) VALUES
(1, 'Dr. Neasly', '1967-05-08', 'Washington DC', '+632145678900', '40000', 'Mata'),
(2, 'Dr. Kang', '1980-09-05', 'Korea Selatan', '+688145674231', '52000', 'Tenggorokan'),
(4, 'Dr. Ahmad', '1212-12-12', 'Indonesia', '085467321998', '100000', 'Jantung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `kode_obat` varchar(20) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kategori` enum('Kapsul','Pil','Sirup','Tetes','Antibiotik') NOT NULL,
  `harga_obat` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama_obat`, `kategori`, `harga_obat`, `stok`) VALUES
('OBT002', 'Promag', 'Pil', '500', 100),
('OBT003', 'Alletrol', 'Tetes', '13500', 12);

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
(1, 'Jos Taslim', '2019-05-02', 'Alexander', 'Jl. Pangkostrad RT.007 RW.008 Desa Lubuk Banten Kecamatan Banten Kabupaten Banten', 'L', '082147483640'),
(2, 'Cut Rita', '2009-11-08', 'Cut Aggie', 'Jl. Pangkostrad RT.010 RW.008 Desa Lubuk Banten Kecamatan Banten Kabupaten Banten', 'P', '082147483647'),
(3, 'Qwuery', '1990-09-12', 'Script', 'localhost no. 3340 RT. 01 Rw. 02 Okee', 'L', '082332215656'),
(4, 'Sangkuriang', '2011-02-01', 'Dayang Sumbi', 'Toba, Sumatera Barat', 'L', '082145368787');

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
(1, 'Suntik', '23000'),
(2, 'Rawat Inap ', '50000');

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
-- Struktur dari tabel `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `no_daftar` varchar(20) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`no_daftar`, `id_pasien`, `id_dokter`, `keluhan`, `tgl_daftar`) VALUES
('00000000001', 1, 1, 'Sakit Gigi', '2019-05-30'),
('00000000002', 3, 4, 'Sakit Kepala Migrain perut kembung', '2019-05-17'),
('00000000003', 3, 1, '1234567890', '1111-11-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_level`, `nama`, `email`, `user`, `pass`) VALUES
(1, 1, 'administrator', 'admin@gmail.com', '@admin', 'admin123'),
(2, 2, 'user', 'user@gmail.com', '@user', 'user123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

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
-- Indexes for table `tbl_lvl`
--
ALTER TABLE `tbl_lvl`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`no_daftar`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`);

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
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_lvl`
--
ALTER TABLE `tbl_lvl`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD CONSTRAINT `tbl_pendaftaran_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`),
  ADD CONSTRAINT `tbl_pendaftaran_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tbl_lvl` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
