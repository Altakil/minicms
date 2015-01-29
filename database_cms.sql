-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 11 2014 г., 11:55
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `database_cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `Author` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `id_news`, `Author`, `text`) VALUES
(1, 1, 'NEO', 'qqqqqqqqqqqqqqqqqqqqqqq'),
(7, 2, 'aaaaaaaaa', 'aaaaaaaaaaa'),
(6, 2, 'aaaaaaaaaaa', 'aaaaaaaaaaa'),
(5, 2, 'aaaaaaaaa', 'aaaaaaaaaaa'),
(8, 2, 'aaaaaaaaaaa', 'aaaaaaaaaaa'),
(9, 3, 'Alex', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum 11111 111111'),
(19, 3, 'qqq', 'Текст повідомлення...qqq'),
(20, 3, 'qq', 'Текст повідомлення...qq'),
(21, 3, 'rrr', 'Текст повідомлrrrrrrrrrrrrrrr'),
(11, 3, 'qqq', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola 111 11111'),
(12, 1, 'sdfsd', 'Текст повідомлення...'),
(13, 1, 'sdfsd', 'Текст повідомлення...'),
(14, 1, 'ккккк', 'ффффффф'),
(15, 2, 'nix', 'nix Текст повідомлення...'),
(16, 5, 'Alex', 'My message'),
(17, 1, 'tttt', 'Текст повідомлення...'),
(18, 6, 'aaaaaa', 'Текст повідомлення...'),
(22, 3, 'mmmmmmm', 'Текст повідомлення...'),
(23, 3, 'Author', 'Текст повідомлення...'),
(24, 28, 'autor', 'Текст повідомлення...'),
(25, 28, 'author', 'text');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `url_img`, `date_created`) VALUES
(1, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit22', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...2244</p>', '/template/img/img_for_post.jpg', '2014-12-30'),
(2, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit11', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '2014-11-25'),
(3, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '/template/img/img_for_post.jpg', '2014-11-27'),
(4, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... ', '/template/img/img_for_post.jpg', '2014-11-27'),
(5, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... ', '/template/img/img_for_post.jpg', '2014-11-27'),
(6, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... ', '/template/img/img_for_post.jpg', '2014-11-27'),
(7, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', '', '2014-11-27'),
(8, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit', '', '2014-11-28'),
(10, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '0000-00-00'),
(11, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum \r\n', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '2014-11-28'),
(12, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '0000-00-00'),
(13, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum \r\n', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '2014-11-28'),
(14, '', '', '', '0000-00-00'),
(15, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum \r\n', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '2014-11-28'),
(16, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '0000-00-00'),
(17, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum \r\n', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '2014-11-28'),
(18, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum \r\n', 'Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... \r\n', '', '2014-11-28'),
(19, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit1', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '0000-00-00'),
(20, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit1', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '0000-00-00'),
(21, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit1', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '0000-00-00'),
(22, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit1', '<p>Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '0000-00-00'),
(23, 'Lorem ippsum dola sit amit Lorem ippsum dola sit amit sit amit sit amit1', '<p><span style="text-decoration: underline;">Lorem ippsum</span> dola sit amit Lorem <strong>ippsum</strong> dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit<sup> Lorem ippsum dola sit amitLorem i</sup>ppsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>\r\n<table style="height: 150px;" width="582">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;">name</td>\r\n<td style="text-align: center;">caption</td>\r\n<td style="text-align: center;">name-cell</td>\r\n<td style="text-align: center;">name-cell</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;">11</td>\r\n<td style="text-align: center;">22</td>\r\n<td style="text-align: center;">33</td>\r\n<td style="text-align: center;">44</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="text-decoration: underline;">Lorem ippsum</span> dola sit amit Lorem <strong>ippsum</strong> dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit<sup> Lorem ippsum dola sit amitLorem i</sup>ppsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit... Lorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit amitLorem ippsum dola sit amit Lorem ippsum dola sit...</p>', '/template/img/img_for_post.jpg', '2014-10-10'),
(28, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n<p>aaaaaaaaaaaaaa<img src="../template/img_temp/8.jpg" alt="" width="1600" height="1200" /></p>', '/template/img_temp/8.jpg', '2014-12-04');

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`id`, `id_post`, `rating`) VALUES
(56, 2, 5),
(51, 2, 5),
(50, 2, 5),
(8, 1, 2),
(10, 3, 4),
(11, 3, 4),
(12, 2, 2),
(13, 2, 5),
(14, 2, 1),
(49, 2, 5),
(48, 2, 1),
(17, 1, 1),
(18, 1, 1),
(19, 1, 1),
(20, 5, 3),
(21, 5, 4),
(47, 2, 2),
(53, 2, 5),
(46, 2, 5),
(25, 4, 5),
(26, 7, 4),
(27, 7, 3),
(28, 6, 2),
(29, 6, 4),
(30, 6, 4),
(31, 6, 5),
(32, 6, 5),
(33, 6, 5),
(34, 6, 3),
(58, 5, 3),
(52, 2, 5),
(37, 6, 1),
(44, 2, 4),
(55, 2, 5),
(57, 2, 4),
(59, 5, 4),
(65, 3, 5),
(61, 1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `email`) VALUES
(9, 'ddd', '6512bd43d9caa6e02c990b0a82652dca', 'mnw055@yandex.ru'),
(8, 'alex', '3588b8a8010f88846007457cf3cb87fd', 'mnw055@yandex.ru'),
(7, 'fffff', '633de4b0c14ca52ea2432a3c8a5c4c31', 'mnw055@yandex.ru'),
(6, 'qqqq', '099b3b060154898840f0ebdfb46ec78f', 'mnw055@yandex.ru'),
(10, 'linux', '6512bd43d9caa6e02c990b0a82652dca', 'mnw055@yandex.ru'),
(14, 'alex2222', '6512bd43d9caa6e02c990b0a82652dca', 'mnw055@yandex.ru'),
(16, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'mnw055@yandex.ru'),
(31, 'f', '8fa14cdd754f91cc6554c9e71929cce7', 'mnw055@yandex.ru');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
