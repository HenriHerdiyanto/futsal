-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 15 Jan 2020 pada 05.58
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id_about` int(11) NOT NULL AUTO_INCREMENT,
  `isi` text NOT NULL,
  PRIMARY KEY (`id_about`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `isi`) VALUES
(1, '<p><strong>Futsal</strong></p>\r\n\r\n<p>Alamat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Jl. Siliwangi No. 90</p>\r\n\r\n<p>Kode Pos &nbsp; &nbsp; &nbsp; : 43356</p>\r\n\r\n<p>Fax/Telp. &nbsp; &nbsp; &nbsp; &nbsp;: 0266906996</p>\r\n'),
(2, '<ul>\r\n	<li>Dilarang membuang puntung rokok yang masih menyala di sembarang tempat</li>\r\n	<li>Dilarang bermain api dan membawa bahan kimia yang membahayakan</li>\r\n	<li>Dilarang membawa minuman keras dan obat-obatan terlarang ke dalam kompleks</li>\r\n	<li>Dilarang mencoret dinding dan merusak fasilitas olah raga&nbsp;</li>\r\n	<li>Dilarang membawa senjata tajam atau senjata api kecuali yang bertugas khusus</li>\r\n	<li>Dilarang berbuat tindakan amoral (judi, asusila dan pornografi lainnya)</li>\r\n	<li>Dilarang membuang sampah atau sisa makanan di sembarang tempat</li>\r\n	<li>Seluruh pengunjung tetap bertanggung jawab terhadap bawaan barang pribadi kecuali dititipkan secara sah dan disertai surat tanda terima</li>\r\n	<li>Kehilangan barang berharga atau barang lainnya yang tidak dititipkan secara sah kepada pengelola yang bertugas di luar tanggung jawab kami</li>\r\n	<li>Untuk menghindari risiko kehilangan barang-barang berharga seperti uang dan perhiasan, sebaiknya tidak dititipkan dan disimpan/diamankan secara pribadi oleh pengunjung sendiri</li>\r\n	<li>Kenyamanan dan keamanan bersama selalu menjadi perhatian kami, namun sebaliknya koordinasi, laporan dan kritik atas segala keterbatasan dan kekurangan pelayanan kami menjadi harapan guna perbaikan selanjutnya.</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `foto` varchar(200) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `email`, `foto`) VALUES
(25, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin boyolali futsal', 'adminboyolalifutsal@gmail.com', '68futsal.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE IF NOT EXISTS `harga` (
  `id_harga` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` varchar(40) NOT NULL,
  `harga` varchar(30) NOT NULL,
  PRIMARY KEY (`id_harga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id_harga`, `waktu`, `harga`) VALUES
(1, 'siang', '80000'),
(2, 'malam', '120000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE IF NOT EXISTS `hari` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`) VALUES
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `jam` time NOT NULL,
  `id_harga` int(11) NOT NULL,
  `jams` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jam`, `id_harga`, `jams`) VALUES
(1, '08:00:00', 1, '08.00-09.00'),
(3, '09:00:00', 1, '09.00-10.00'),
(4, '10:00:00', 1, '10.00-11.00'),
(5, '11:00:00', 1, '11.00-12.00'),
(6, '12:00:00', 1, '12.00-13.00'),
(7, '13:00:00', 1, '13.00-14.00'),
(8, '14:00:00', 1, '14.00-15.00'),
(9, '15:00:00', 1, '15.00-16.00'),
(10, '16:00:00', 1, '16.00-17.00'),
(11, '18:00:00', 2, '18.00-19.00'),
(12, '19:00:00', 2, '19.00-20.00'),
(13, '20:00:00', 2, '20.00-21.00'),
(14, '21:00:00', 2, '21.00-22.00'),
(15, '22:00:00', 2, '22.00-23.00'),
(16, '23:00:00', 2, '23.00-24.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nama_klub` varchar(30) NOT NULL,
  `email` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` char(12) NOT NULL,
  PRIMARY KEY (`id_pelanggan`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`, `nama`, `nama_klub`, `email`, `alamat`, `no_telpon`) VALUES
(15, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', 'test fc', 'testfc@yahoo.com', 'Desa Garawangi No. 195', '021547896'),
(19, 'rojak', '944b2a47cfbde4eb5144d3b9a00063e4', 'Rojak Surdiyana', 'PSBS FC', 'rojaksurdiyana@live.com', 'Desa Margamukti RT.001/RW.005 ', '085794212222'),
(20, 'yana', 'e1ce1e8d0877b06b55b613d5b22b0251', 'Yana Hadiningrat', 'Pesantren FC', 'yanahadiningrat14@gmail.com', 'Ds Cineumbeuy No 178 RT06/RW02', '087745565579'),
(21, 'mulyadi', 'ef34c0dc47139e55c72bb333c3810131', 'mulyadi sumirat', 'Pangumbahan FC', 'mulyadisumingrat@ymail.com', 'Ds Cinagara RT08/RW05', '08565987456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_klub` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` char(12) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(100) NOT NULL,
  `harga` char(10) NOT NULL,
  `dp` char(10) NOT NULL,
  `sisa` char(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id_pemesanan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_admin`, `id_pelanggan`, `id_harga`, `id_jadwal`, `username`, `nama_klub`, `alamat`, `no_telpon`, `tanggal`, `jam`, `harga`, `dp`, `sisa`, `status`) VALUES
(44, 0, 15, 2, 11, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-08-11', '18.00-19.00', '120000', '0', '0', 'Lunas'),
(45, 0, 15, 2, 12, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-08-11', '19.00-20.00', '120000', '0', '0', 'Lunas'),
(46, 25, 0, 2, 13, 'mulyadi', 'Pangumbahan FC', 'Ds Cinagara RT08/RW05', '08565987456', '2016-08-11', '20.00-21.00', '120000', '0', '', 'Lunas'),
(47, 0, 15, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-09-02', '08.00-09.00', '80000', '0', '0', 'Lunas'),
(48, 0, 15, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-09-04', '08.00-09.00', '80000', '0', '0', 'Lunas'),
(49, 0, 15, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-11-01', '08.00-09.00', '80000', '0', '0', 'Lunas'),
(50, 25, 0, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-11-24', '08.00-09.00', '80000', '0', '0', 'Lunas'),
(51, 0, 15, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2016-11-25', '08.00-09.00', '80000', '0', '0', 'Lunas'),
(52, 0, 15, 1, 1, 'user', 'test fc', 'Desa Garawangi No. 195', '021547896', '2017-08-31', '08.00-09.00', '80000', '', '', 'Tertunda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `namafutsal` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `fax` char(20) NOT NULL,
  `no_hp` char(12) NOT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `namafutsal`, `alamat`, `kodepos`, `fax`, `no_hp`) VALUES
(1, 'FUTSAL', 'Cibadak', '43356', '0266906996', '0266906996');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
