-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2022 pada 02.12
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mandiri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('admin@admin', 'Daniel adriano', 'tukanggaming76@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`idKategori`, `namaKategori`) VALUES
(1, 'Pria'),
(2, 'Wanita'),
(3, 'Anak-anak'),
(4, 'Couple'),
(5, 'Sarimbit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_keranjang`
--

CREATE TABLE `tabel_keranjang` (
  `idKeranjang` varchar(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` varchar(11) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `idKomen` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `path` varchar(50) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `ukuran`, `keterangan`, `kategori`, `harga`, `stock`, `path`, `size`) VALUES
(22, 'Kaos Adidas Jersey', 'bajupria2', 'XL', 'Kaos Adidas Jersey Bahan kualitas premium', 'pria', 80000, 100, 'image/bajupria2.png', 48168),
(23, 'Adidas Pria Juventus Jersey', 'bajupria3', 'XL', 'Adidas Pria Juventus Jersey Pendek', 'pria', 80000, 100, 'image/bajupria3.png', 77418),
(24, 'Kaos Brand Puma Lengan Pendek Premium', 'bajupria4', 'XL', 'Kaos Brand Puma Lengan Pendek Kualitas Premium', 'pria', 80000, 100, 'image/bajupria4.png', 46758),
(25, 'Sepatu Jogging Pria', 'sepatupria1', '42', 'Sepatu Jogging Pria', 'pria', 155000, 100, 'image/sepatupria1.png', 138829),
(26, 'Sepatu Bola Pria', 'sepatupria3', '42', 'Sepatu Bola Pria Berkualitas', 'pria', 155000, 100, 'image/sepatupria3.png', 401299),
(27, 'Sepatu Sports Pria New', 'sepatupria2', '42', 'Sepatu Sports Pria New', 'pria', 155000, 100, 'image/sepatupria2.png', 116487),
(28, 'Nike Shoes', 'sepatupria4', '42', 'Nike Shoes', 'pria', 155000, 100, 'image/sepatupria4.png', 82566),
(29, 'Baju Sport Wanita Lengan Panjang', 'bajuwanita1', 'L', 'Baju Sport Wanita Lengan Panjang', 'wanita', 80000, 100, 'image/bajuwanita1.png', 96000),
(30, 'Celana Sport Wanita', 'celanawanita1', 'L', 'Celana Sport Wanita', 'wanita', 80000, 100, 'image/celanawanita1.png', 134794),
(31, 'Baju Sport Wanita Adidas', 'bajuwanita2', 'L', 'Baju Sport Wanita Adidas', 'wanita', 80000, 100, 'image/bajuwanita2.png', 312814),
(32, 'Celana Sport Wanita Panjang', 'celanawanita2', '30', 'Celana Sport Wanita Panjang', 'wanita', 80000, 100, 'image/celanawanita2.png', 86826),
(37, 'Baju Olahraga Couple 2', '5f8db0a769f6e6b07c3d51cdd1654c6c', 'L', 'Baju Olahraga Couple 2 Berkualitas', 'couple', 80000, 100, 'image/5f8db0a769f6e6b07c3d51cdd1654c6c.png', 231476),
(38, 'Baju Olahraga Couple 3', '09579c6ae7bac8a75b47ebecdfb85620', 'L', 'Baju Olahraga Couple 3 Berkualtias', 'couple', 80000, 100, 'image/09579c6ae7bac8a75b47ebecdfb85620.png', 172140),
(39, 'Baju Olahraga Couple 4', '532593baf3e732c9ecdffb23a3e52876', 'XL', 'Baju Olahraga Couple 4 Berkualitas', 'couple', 80000, 100, 'image/532593baf3e732c9ecdffb23a3e52876.png', 174912),
(40, 'Baju Anak Laki Laki Sport Hitam', '05c44705d28ee81b38c5df1c36b407a0', 'L', 'Baju Anak Laki Laki Sport Hitam', 'anak', 80000, 100, 'image/05c44705d28ee81b38c5df1c36b407a0.png', 83056),
(41, 'Sepatu Sport Anak Laki Laki', 'f4eacecf8864fe475e16027c23280e46', 'L', 'Sepatu Sport Anak Laki Laki', 'anak', 80000, 100, 'image/f4eacecf8864fe475e16027c23280e46.png', 69693),
(42, 'Baju Anak Perempuan Sport', '9d1acc76c8ec516e50d6b02349c91a3a', 'L', 'Baju Anak Perempuan Sport', 'anak', 80000, 100, 'image/9d1acc76c8ec516e50d6b02349c91a3a.png', 87595),
(43, 'Sepatu Sport Anak Perempuan/Laki', '0097d50eaa7abbc24da66cc35fb8efe4', 'L', 'Sepatu Sport Anak Perempuan/Laki', 'anak', 80000, 100, 'image/0097d50eaa7abbc24da66cc35fb8efe4.png', 43956),
(45, 'Raket Original Yonex', 'bede29f7366eba8f6da44db0306db2de', 'S', 'Raket Original Yonex', 'alat', 80000, 100, 'image/bede29f7366eba8f6da44db0306db2de.png', 71920);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(3, '1', '0', '0000-00-00', 2623000),
(4, '1', '0', '2017-06-07', 123000),
(5, '1', '0', '2017-06-07', 100000),
(6, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>, Kategori : sarimbit, Jumlah : 1<br>', '2019-12-05', 223000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_trolly`
--

INSERT INTO `tabel_trolly` (`idTrolly`, `idUser`, `idProduk`, `jumlah`, `harga`) VALUES
(1, 4, 28, 1, 205000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int(11) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indeks untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indeks untuk tabel `tabel_keranjang`
--
ALTER TABLE `tabel_keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indeks untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`idKomen`);

--
-- Indeks untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indeks untuk tabel `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `idKomen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
