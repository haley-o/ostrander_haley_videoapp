-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2018 at 03:50 AM
-- Server version: 5.7.19
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
-- Database: `db_movieapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(200) NOT NULL,
  `movie_thumbnail` varchar(200) NOT NULL,
  `movie_video` varchar(200) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_genre` varchar(100) NOT NULL,
  `movie_review` varchar(10) NOT NULL,
  `movie_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `movie_thumbnail`, `movie_video`, `movie_desc`, `movie_genre`, `movie_review`, `movie_user`) VALUES
(1, 'Annabelle', 'annabelle.jpg', 'annabelle.mp4', 'Continually whiteboard 24/365 core competencies for 2.0 architectures. Collaboratively utilize viral innovation through inexpensive customer service. Conveniently deploy 24/7 synergy through team building applications. Proactively redefine mission-critical architectures whereas effective ', 'horror', '3/5', 1),
(2, 'Moana', 'moana.jpg', 'moana.mp4', 'Globally leverage other\'s cross-platform niche markets rather than next-generation deliverables. Conveniently pontificate top-line internal or \"organic\" sources before installed base niche markets. Completely impact installed base human capital vis-a-vis cutting-edge opportunities. Globally harness turnkey strategic theme areas with transparent expertise. Dramatically coordinate resource sucking supply chains whereas multimedia based vortals.\r\n', 'adventure', '5/5', 2),
(3, 'The Babadook', 'babadook.jpg', 'babadook.mp4', 'Distinctively streamline intermandated internal or \"organic\" sources whereas user friendly infomediaries. Distinctively leverage other\'s sticky architectures for interoperable channels. Compellingly fashion worldwide partnersh', 'Horror', '4/5', 1),
(4, 'Cloverfield', 'cloverfield.jpg', 'cloverfield.mp4', 'Holisticly reintermediate clicks-and-mortar outsourcing through cross-platform platforms. Enthusiastically morph collaborative technology after focused metrics. Credibly iterate scalable ', 'Horror', '4/5', 1),
(5, 'The Witch', 'witch.jpg', 'thewitch.mp4', 'Compellingly leverage other\'s unique e-markets rather than standards compliant architectures. Uniquely revolutionize emerging quality vectors before integrated internal or \"organic\" sources. ', 'Horror', '5/5', 1),
(6, 'It Comes at Night', 'itcomesatnight.jpg', 'itcomesatnight.mp4', 'Progressively integrate compelling infrastructures whereas an expanded array of systems. Phosfluorescently harness e-business data with inexpensive manufactured products. Holisticly productize enterprise sources and magnetic ', 'Horror', '5/5', 1),
(7, 'Chappie', 'chappie.jpg', 'chappie.mp4', 'Continually procrastinate high-quality interfaces for impactful expertise. Distinctively strategize plug-and-play e-commerce through real-time human capital. Uniquely revolutionize end-to-end e-services with front-end interfaces. Energistically communicate ', 'Sci-fi', '3/5', 1),
(8, 'Big Hero 6', 'big-hero-6-.jpg', 'bighero6.mp4', 'Dramatically iterate extensive e-services with plug-and-play mindshare. Professionally innovate B2C e-tailers rather than scalable leadership skills. ', 'Animation', '5/5', 2),
(9, 'The Jungle Book', 'jungleBook.jpg', 'junglebook.mp4', 'Efficiently expedite extensive bandwidth vis-a-vis equity invested potentialities. Rapidiously provide access to cost effective content rather than magnetic best practices. Synergistically mesh performance based resources before sustainable testing ', 'Animals', '5/5', 2),
(10, 'Zootopia', 'zootopia.jpg', 'zootopia.mp4', 'Compellingly transition interactive leadership skills via timely markets. Globally visualize enterprise-wide solutions without prospective platforms. Quickly matrix customer directed collaboration and idea-sharing before client-focused mindshare. ', 'Animals', '5/5', 2),
(11, 'Bee Movie', 'bee-movie.jpg', 'beemovie.mp4', 'Rapidiously deploy client-centered infrastructures whereas next-generation supply chains. Quickly communicate go forward markets via multimedia based platforms. Rapidiously optimize equity ', 'Animated', '1/5', 2),
(12, 'Tangled', 'tangled.jpg', 'tangled.mp4', 'Interactively optimize seamless vortals via high-quality experiences. Objectively envisioneer premier infomediaries vis-a-vis future-proof markets. Continually predominate bleeding-edge ', 'Animated', '4/5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`) VALUES
(1, 'Parents'),
(2, 'Kids');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
