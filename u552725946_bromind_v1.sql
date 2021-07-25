-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 19 Des 2020 pada 19.08
-- Versi server: 10.4.15-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u552725946_bromind_v1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_menu`
--

CREATE TABLE `access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `access_menu`
--

INSERT INTO `access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(6, 2, 4),
(12, 1, 3),
(14, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `featured`
--

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `featured`
--

INSERT INTO `featured` (`id`, `product_id`) VALUES
(1, 17),
(2, 16),
(3, 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_sidebar`
--

CREATE TABLE `menu_sidebar` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_sidebar`
--

INSERT INTO `menu_sidebar` (`id`, `menu`) VALUES
(1, 'Leader'),
(2, 'Admin'),
(3, 'Menu Management'),
(4, 'Website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `comment`, `date_created`) VALUES
(1, 'Customer 1', 'customer1@email.com', 'Enak banget menu yang ada di BroMind, tempat nyaman, bisa buat kerja bareng temen, buat nyantai.', 160858531),
(2, 'Customer 2', 'customer2@gmail.com', 'Enak beud guys, bisa pesen online tinggal nunggu di rumah langsung nyampe deh.', 200858531),
(3, 'Customer 3', 'customer3@gmail.com', 'Aing nyoba ning kono, jian enak tenan. Kon rasakne dewe jal, lak gak percoyo karo aku. Enek rego, enek rupo.', 180858531),
(4, 'Customer 4', 'customer4@gmail.com', 'I always dolanan at the BroMind Cafe for sekedar nyangkruk lan ngopi with my konco2 from Meduro.', 12354366),
(5, 'Customer 5', 'customer5@email.com', 'Beh, pokok e jos gandoss kotos2 sampek bledos, wedooss', 214252525),
(6, 'Customer 6', 'customer6@email.com', 'Beh, pokok e jos gandoss kotos2 sampek bledos, wedooss', 224252525),
(7, 'Customer 7', 'customer7@email.com', 'Enak banget menu yang ada di BroMind, tempat nyaman, bisa buat kerja bareng temen, buat nyantai.', 20058531),
(8, 'Customer 8', 'customer8@gmail.com', 'Enak beud guys, bisa pesen online tinggal nunggu di rumah langsung nyampe deh.', 20858531),
(9, 'Agung', 'agung@gmail.com', 'Mbuh lah', 1607854711),
(10, 'Mbuh lah', 'mbuh@gmail.com', 'Lahlah', 1607854748),
(11, 'Mas Bowo', 'bowo@gmail.com', 'Jajal sik', 1608403177);

-- --------------------------------------------------------

--
-- Struktur dari tabel `page`
--

CREATE TABLE `page` (
  `no` int(10) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `page`
--

INSERT INTO `page` (`no`, `link`, `id`) VALUES
(1, 'story', 'story'),
(2, 'menu', 'menu'),
(3, 'contact', 'contact'),
(4, 'https://www.youtube.com/user/mahapatih8', 'youtube');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_type` varchar(128) NOT NULL,
  `product_img` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_type`, `product_img`, `price`, `description`) VALUES
(35, 'Es Kopi', 'Baverage', 'product1.jpeg', 17000, 'Kopi dengan es yang cocok diminum pada siang dan sore hari yang sangat menyegarkan'),
(36, 'Kopi Hitam', 'Baverage', 'product2.jpeg', 10000, 'Kopi hitam dengan biji kopi asli cocok untuk menemani hari santai mu'),
(37, 'Cappuchino', 'Baverage', 'product3.jpeg', 15000, 'Kopi cappuccino hangat dengan rasa yang nikmat membuat aktivitas menjadi semangat'),
(38, 'Jus Alpukat', 'Baverage', 'product4.jpeg', 10000, 'Minuman dari buah alpukat segar yang kaya akan vitamin membuat mood mu ceria'),
(39, 'French Fries', 'Food', 'product5.jpeg', 15000, 'Kentang goreng yang renyah, cocok dinikmati Bersama teman-teman'),
(40, 'Roti Goreng', 'Food', 'product6.jpeg', 15000, 'Roti goreng yang renyah dan nikmat, kerenyahan tambahan didapat jika kita menyantapnya selagi panas'),
(41, 'Roti Bakar', 'Food', 'product7.jpeg', 15000, 'Roti bakar dengan varian selai yang enak cocok untuk teman ngopi'),
(42, 'Mie Rebus', 'Food', 'product8.jpeg', 10000, 'Mie kuah adalah makanan yang sangat familiar di Indonesia, makanan yang cocok dinikmati saat cuaca hujan'),
(43, 'Jus Jeruk', 'Baverage', 'product9.jpeg', 10000, 'Minuman dari buah Jeruk segar yang kaya akan vitamin C membuat mood mu ceria'),
(44, 'Espresso', 'Baverage', 'product10.jpeg', 20000, 'Dalam Bahasa italia, espresso berarti “cepat”, karena kopi ini disajikan cepat dan memiliki rasa yang khas, lebih baik dinikmati selagi hangat'),
(45, 'Teh Manis Panas', 'Baverage', 'product11.jpeg', 4000, 'Minuman yang sangat cocok dinikmati pada cuaca hujan atau pagi hari, membuat harimu makin berenergi positif'),
(46, 'Es Coklat', 'Baverage', 'product12.jpeg', 8000, 'Minuman coklat dengan sensasi dingin dan manis menambah warna di setiap detik kesibukanmu.'),
(47, 'Es Kopi', 'Baverage', 'product1.jpeg', 17000, 'Kopi dengan es yang cocok diminum pada siang dan sore hari yang sangat menyegarkan'),
(48, 'Kopi Hitam', 'Baverage', 'product2.jpeg', 10000, 'Kopi hitam dengan biji kopi asli cocok untuk menemani hari santai mu'),
(49, 'Cappuchino', 'Baverage', 'product3.jpeg', 15000, 'Kopi cappuccino hangat dengan rasa yang nikmat membuat aktivitas menjadi semangat'),
(50, 'Jus Alpukat', 'Baverage', 'product4.jpeg', 10000, 'Minuman dari buah alpukat segar yang kaya akan vitamin membuat mood mu ceria'),
(51, 'French Fries', 'Food', 'product5.jpeg', 15000, 'Kentang goreng yang renyah, cocok dinikmati Bersama teman-teman'),
(52, 'Roti Goreng', 'Food', 'product6.jpeg', 15000, 'Roti goreng yang renyah dan nikmat, kerenyahan tambahan didapat jika kita menyantapnya selagi panas'),
(53, 'Roti Bakar', 'Food', 'product7.jpeg', 15000, 'Roti bakar dengan varian selai yang enak cocok untuk teman ngopi'),
(54, 'Mie Rebus', 'Food', 'product8.jpeg', 10000, 'Mie kuah adalah makanan yang sangat familiar di Indonesia, makanan yang cocok dinikmati saat cuaca hujan'),
(55, 'Jus Jeruk', 'Baverage', 'product9.jpeg', 10000, 'Minuman dari buah Jeruk segar yang kaya akan vitamin C membuat mood mu ceria'),
(56, 'Espresso', 'Baverage', 'product10.jpeg', 20000, 'Dalam Bahasa italia, espresso berarti “cepat”, karena kopi ini disajikan cepat dan memiliki rasa yang khas, lebih baik dinikmati selagi hangat'),
(57, 'Teh Manis Panas', 'Baverage', 'product11.jpeg', 4000, 'Minuman yang sangat cocok dinikmati pada cuaca hujan atau pagi hari, membuat harimu makin berenergi positif'),
(58, 'Es Coklat', 'Baverage', 'product12.jpeg', 8000, 'Minuman coklat dengan sensasi dingin dan manis menambah warna di setiap detik kesibukanmu.'),
(59, 'Es Kopi', 'Baverage', 'product1.jpeg', 17000, 'Kopi dengan es yang cocok diminum pada siang dan sore hari yang sangat menyegarkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `promo_img` varchar(128) NOT NULL,
  `promo_name` varchar(128) NOT NULL,
  `promo_detail` varchar(256) NOT NULL,
  `period` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `promo_img`, `promo_name`, `promo_detail`, `period`) VALUES
(1, 'gopay.png', 'Promo GOPAY 5%', 'Setiap pembelian dengan menggunakan GOPAY, akan mendapat potongan harga subtotal sebesar 5%', '17 August - 30 Desember 2020'),
(2, 'ovo.png', 'Promo OVO 10%', 'Setiap pembelian dengan menggunakan OVO, akan mendapat potongan harga subtotal sebesar 10%', '17 August - 30 Desember 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `fav_food` varchar(128) NOT NULL,
  `fav_baverg` varchar(128) NOT NULL,
  `on_income` int(11) NOT NULL,
  `off_income` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `spending` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `fav_food`, `fav_baverg`, `on_income`, `off_income`, `income`, `spending`, `profit`, `date_created`) VALUES
(1, 'Gedhang goreng', 'Cupang cake', 10000, 50000, 60000, 50000, 10000, 1604001699),
(2, 'kentang fried', 'water cupang', 200000, 500000, 700000, 100000, 600000, 1604101699),
(4, 'Risoles', 'Kopi hitam', 500000, 10000000, 10500000, 500000, 10000000, 1604201699),
(5, 'Gedhang goreng', 'Kopi hitam', 250000, 1500000, 1750000, 250000, 1500000, 1604301699),
(6, 'Sego pecel', 'Bir Pletok', 1000000, 600000, 1600000, 300000, 1300000, 1604401731),
(7, 'Gado-gado', 'Luwak White Coffee', 510000, 100000, 610000, 150000, 460000, 1604501817),
(8, 'Nasi Rames', 'Kopi hitam', 200000, 5000000, 5200000, 10000, 5190000, 1604611699),
(9, 'Gedhang goreng', 'Cupang cake', 1000000, 50000, 1050000, 50000, 1000000, 1604701699),
(10, 'kentang fried', 'water cupang', 200000, 500000, 700000, 100000, 600000, 1604801699),
(11, 'Risoles', 'Kopi hitam', 500000, 1000000, 1500000, 500000, 1000000, 1604901699),
(12, 'Gedhang goreng', 'Kopi hitam', 250000, 1500000, 1750000, 250000, 1500000, 1605001699),
(13, 'Sego pecel', 'Bir Pletok', 1000000, 600000, 1600000, 300000, 1300000, 1605101731),
(14, 'Gado-gado', 'Luwak White Coffee', 5100000, 1000000, 6100000, 150000, 5950000, 1605201817),
(15, 'Nasi Rames', 'Kopi hitam', 200000, 5000000, 5200000, 10000, 5190000, 1605300699),
(16, 'Gedhang goreng', 'Bir Pletok', 400000, 600000, 1000000, 50000, 950000, 1605401699),
(17, 'Gedhang goreng', 'Kopi hitam', 500000, 600000, 1100000, 80000, 1020000, 1605509798),
(18, 'Sego Thiwul', 'Bir Pletok', 1000000, 1500000, 2500000, 500000, 2000000, 1605609798),
(20, 'Ratatouli', 'Le Sereal', 3500000, 50000, 3550000, 500000, 3050000, 1606350600),
(21, 'Gado-gado', 'Bintang Toejdoe', 2500000, 6000000, 8500000, 10000, 8490000, 1606447278);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Leader'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `story`
--

INSERT INTO `story` (`id`, `image`, `p1`, `p2`) VALUES
(1, 'resto.png', 'Bromind Cafe didirikan pada Juli 2014, Asal usul nama Bromind Cafe dari temen-temen broadcasting dan teman-teman film yang diambil nama depan nya yaitu “Bro” dan “Mind” nya diambil dari nama Mahapatih Indonesia. Bromind Cafe sejak awal berdiri sudah berada di Jl.KSU Kebon Duren Kalimulya, Depok, Jawa Barat.  Awal mula berdirinya Bromind Cafe untuk kantin dan tempat berkumpul agar teman-teman bisa bersosialisasi, fungsi awalnya ada maintenance sebagai lembaga khusus yang berdiri. Bromind Cafe sempat mengalami jatuh bangun selama tiga bulan, juga sempat bangkrut dan tidak ada modal, Pernah suplay modal sampai tiga kali, Sempat juga kehabisan dana. ', 'Memang, proses bisnis itu tidak gampang, dua tahun memberi kepercayaan kepada orang yang tidak lain adalah saudara sendiri untuk menjalankan bisnis ini. Tiba-tiba Bromind ditutup karna saudara tersebut pulang kampung dan sempat ada kesulitan dana, tapi mau tidak mau usaha harus tetap berjalan. Dan semenjak jatuh bangun akhirnya Bromind memiliki 3 karyawan, yang setelah itu dipercayakan oleh Mas Anton.\r\n\r\nPesan dari Mas Anton “Jika ingin memulai bisnis, jangan pernah melibatkan pertemanan ataupun saudara. Karena bakal ada konfliknya, usahakan mendirikan sendiri atau lebih baik dengan orang lain”.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard Leader', 'leader', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Dashboard Admin', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(3, 3, 'Menu', 'menu', 'fas fa-fw fa-folder', 1),
(4, 3, 'Submenu', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 3, 'Role', 'leader/role', 'fas fa-fw fa-user-tie', 1),
(9, 4, 'Information', 'website', 'fas fa-fw fa-info-circle', 1),
(10, 4, 'Product', 'product', 'fas fa-fw fa-store', 1),
(11, 4, 'Story', 'website/story', 'fas fa-fw fa-hourglass-half', 1),
(12, 4, 'Message', 'website/message', 'fas fa-fw fa-comments', 1),
(13, 4, 'Promo', 'website/promo', 'fas fa-fw fa-percentage', 1),
(14, 4, 'Report', 'report', 'fas fa-fw fa-chart-line', 1),
(15, 1, 'Employees', 'leader/employees', 'fas fa-fw fa-users', 1),
(16, 1, 'My Profile', 'leader/profile', 'fas fa-fw fa-user', 1),
(17, 1, 'Edit Profile', 'leader/editprofile', 'fas fa-fw fa-user-edit', 1),
(18, 1, 'Change Password', 'leader/changepassword', 'fas fa-fw fa-key', 1),
(19, 2, 'My Profile', 'admin/profile', 'fas fa-fw fa-user', 1),
(20, 2, 'Edit Profile', 'admin/editprofile', 'fas fa-fw fa-user-edit', 1),
(21, 2, 'Change Password', 'admin/changepassword', 'fas fa-fw fa-key', 1),
(22, 1, 'Leader Account', 'leader/account', 'fas fa-fw fa-shield-alt', 1),
(23, 4, 'Featured Product', 'website/featured', 'fas fa-fw fa-star', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Ardhiansyah Malik', 'ardhiansyahmalik1200@gmail.com', '$2y$10$zCADow/2tk7XaClNrahel.8odHNXjDodQXA6NJM7JZ7ipHpL6FfyK', 'profil1.png', 1, 1, 1605620051),
(11, 'admin1', 'admin1@gmail.com', '$2y$10$Qcjov3u/pQXlCoOlgtWOfeh/.w9uljoTANnfaBDa6laXFVxHmnC5q', 'default.png', 2, 1, 1605858257),
(12, 'admin02', 'admin02@gmail.com', '$2y$10$OPj5ZTlSWKrdwRJcIUgDkuWUkwbBiBiZ/H5ZESkKTHaHnXLW4EDdW', 'rebana.png', 2, 1, 1605858457),
(13, 'admin03', 'admin03@gmail.com', '$2y$10$MWoGqQbXeF//kF8Gbp6Kk.hh3l/59NrxBF1RN4OEflK9hmCeaU4qi', 'cartoon-chef-logo-7552122.jpg', 2, 1, 1605858483),
(14, 'admin04', 'admin04@gmail.com', '$2y$10$ewppiIoRzlnwaFcduFRkE.eWc9U/7/vEBx7SFXmUD1uttJ1cTkdQ2', 'icon.png', 2, 1, 1605858508),
(15, 'admin05', 'admin05@gmail.com', '$2y$10$UeH72wvRsailghDahhUHTuNqFmP7f.HbQks1Yi3ECSfh8quM7WEEW', 'default.png', 2, 1, 1605858531),
(16, 'Ardh_Malik', 'ardhmalik1200@gmail.com', '$2y$10$lLYck2d1k2mw6usOlNTR8uwPi1WFilaXwftWVRpnxAZkaT56aWS8i', 'async.png', 2, 1, 1605983078),
(18, 'Fake Leader', 'fakeleader@gmail.com', '$2y$10$8TWfYRkIYoElIen1vZalrOaIJ3Li6zUw8k.PnoF/x2YcBTr8bXYtO', 'default.png', 1, 1, 1606055231),
(20, 'Fake Leader 02', 'benerfake@gmail.com', '$2y$10$bewKLYtUa4QYL6lAGNrg1e/j5Oi30Z1Q8HaiUoat4x8a.JSpE0wBW', 'default.png', 1, 1, 1606255758),
(21, 'Fake Leader 03', 'fakeakun@gmail.com', '$2y$10$78dYUSqZyJE3UFbp7kIxuOLoDuP92HU23C6.tPknWdijrXBSbwfQi', 'default.png', 1, 1, 1607055838),
(22, 'Fake Leader 04', 'akunfake@gmail.com', '$2y$10$nWgjZjOpB/MOyytt/27NnukyQiKuyP84N9UyJK.WWhlMlnXLxQcJa', 'default.png', 1, 0, 1607355880),
(25, 'Fake Leader 05', 'fakebener@gmail.com', '$2y$10$V3Gq19e9qLtGhubHRkrfzOr36EmXiTs4vLfHX7IUgNGUIGRNlQKiC', 'default.png', 1, 1, 1608057697);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(9, 'admin1@gmail.com', 'MrRq6kRGbJDS7eKxPiMl8EdmmuLFSk7GbuZxj7ukGjE=', 1605858257),
(12, 'akunfake@gmail.com', 'vParjJopFEBY/aBQhQNpHkUlfc+h48h0i4dhONe/Uio=', 1606055880);

-- --------------------------------------------------------

--
-- Struktur dari tabel `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `logo` varchar(128) NOT NULL,
  `head` varchar(128) NOT NULL,
  `loc_img` varchar(128) NOT NULL,
  `location` varchar(192) NOT NULL,
  `maps` varchar(128) NOT NULL,
  `fb` varchar(192) NOT NULL,
  `ig` varchar(192) NOT NULL,
  `yt` varchar(192) NOT NULL,
  `wa` varchar(192) NOT NULL,
  `senju` varchar(50) NOT NULL,
  `sabtu` varchar(50) NOT NULL,
  `weekend` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `website`
--

INSERT INTO `website` (`id`, `logo`, `head`, `loc_img`, `location`, `maps`, `fb`, `ig`, `yt`, `wa`, `senju`, `sabtu`, `weekend`) VALUES
(1, 'logo.png', 'BroMind Cafe', 'resto 1.png', 'Jl. KSU Kebon Duren Kalimulya, Ruko Tran Depok Cyber Village No. R26, Kalimulya, Cilodong, Depok City, West Java 16413', 'https://goo.gl/maps/skCg3pkQ3VKxLCDx5', 'https://www.facebook.com/BroMind8', 'https://www.instagram.com/bromindcafe/', 'https://www.youtube.com/user/mahapatih8', 'https://wa.me/message/4M42AXBU247XK1', '3 PM - 1 AM', '3 PM - 3 AM', '3 PM - 12 PM');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menu_sidebar`
--
ALTER TABLE `menu_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
