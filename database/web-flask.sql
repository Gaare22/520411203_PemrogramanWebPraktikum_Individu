-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 17.54
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-flask`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `username`, `email`, `password`) VALUES
(3, 'Terak', 'te@ra', '12345'),
(14, 'Tegar', 'Tegar@Rakasiwi', 'scrypt:32768:8:1$kkOrVuhnb9PfpZmN$e618929c502b01ac8695a5a592911798d9159fc6cd5234957ebc679dc621729e4a90c6329755d8149a65cde0326d95c82ad889c73b33bfe7875483f6b97263d3'),
(15, 'Rakasiwi', 'Tegaar@e', 'scrypt:32768:8:1$qsZdJHDK8Me8flsh$8b2f73a2a71257894dcd041b6f231bfa6f2f4b4e0f01746ea0a2c770d386894f95540c758917ddfec87b9384f7ceee6984373a9f78454d82a2b7fa36f1dccead'),
(16, 'KKK', 'kkk@123', 'scrypt:32768:8:1$bLoBVKP5xqqEYwJh$8f3a79e68591495d987a9771216723d7e3f2771c205687e10aaeec1b0bf519d45b642813f6fc892a4b9076ace0bee0764cbe740d5e3f39f4626103314f568e9d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
