
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 04 2016 г., 19:35
-- Версия сервера: 10.0.20-MariaDB
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u529939229_myfb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Book`
--

CREATE TABLE IF NOT EXISTS `Book` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Image` text NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `ReleaseYear` year(4) NOT NULL,
  `Pledge` int(11) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains data related to the book' AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `Book`
--

INSERT INTO `Book` (`BookID`, `Name`, `Image`, `Genre`, `Author`, `ReleaseYear`, `Pledge`) VALUES
(3, 'Дом, в котором...', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/2/0/204763_25079131.jpg', 'Фэнтези', 'Мариам Петросян', 2013, 378),
(1, 'Фантастические твари и где они обитают', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/i/m/img_0010_11.jpg', 'Фэнтези', 'Джоан Роулинг', 2015, 188),
(2, 'Ведьмак', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/2/8/282445_36812323.jpg', 'Фэнтези', 'Анджей Сапковский', 2012, 868),
(4, 'Песнь Льда и Пламени. Игра престолов', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/0/109825_22843077.jpg', 'Фэнтези', 'Джордж Р. Р. Мартин', 2007, 395),
(5, 'Иван-Царевич для Снегурочки', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_62.jpg', 'Любовный роман', 'Юлия Набокова', 2016, 74),
(6, 'После ссоры', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_52.jpg', 'Любовный роман', 'Анна Тодд', 2016, 97),
(7, 'Все ради любви', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_30.jpg', 'Любовный роман', 'Элис Петерсон', 2016, 163),
(8, 'Апрельский кот', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_27.jpg', 'Любовный роман', 'Татьяна Веденская', 2016, 158),
(9, 'Десять негритят', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/2/1/21_3_97.jpg', 'Детектив', 'Агата Кристи', 2016, 155),
(10, 'Завещание рождественской утки', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_65.jpg', 'Детектив', 'Дарья Донцова', 2016, 56),
(11, 'Симфония апокалипсиса', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_47.jpg', 'Детектив', 'Михаил Вершовский', 2016, 153),
(12, 'Комната с белыми стенами', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/540x/00c1a1eab9920e00d38dc8798e6142c9/c/o/cover1_312_44.jpg', 'Детектив', 'Софи Ханна', 2016, 198),
(13, 'Демон. Противостояние', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/9/_/9_44_49.jpg', 'Фэнтези', 'Маргарита Блинова', 2016, 157),
(14, 'Сурск', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/i/m/img782_52.jpg', 'Фэнтези', 'Владимир Скворцов', 2016, 394),
(15, 'Чароплет', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/0/101_16.jpg', 'Фэнтези', 'Блейк Чарлтон', 2016, 341),
(16, 'Сказки сироты. Города монет и пряностей.', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/6/16_2_18.jpg', 'Фэнтези', 'Кэтрин М. Валенте', 2016, 341),
(17, 'Чаромир', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/9/_/9_44_41.jpg', 'Фэнтези', 'Наталья Косухина', 2016, 153),
(18, 'Шелкопряд', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/2/123_1.jpg', 'Детектив', 'Джоан Роулинг', 2014, 212),
(19, 'Ангелы и демоны', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/3/8/384652_34894888.jpg', 'Детектив', 'Дэн Браун', 2009, 43),
(20, 'Планета Вода', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/i/m/img_0005_19.jpg', 'Детектив', 'Борис Акунин', 2015, 406),
(21, 'Отель', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/0/10_18_57.jpg', 'Детектив', 'Артур Хейли', 2014, 135),
(22, 'Ученик', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/i/m/img365_29.jpg', 'Детектив', 'Тесс Герритсен', 2016, 62),
(23, 'Статский советник', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/4/7/47328_71764024.jpg', 'Детектив', 'Борис Акунин', 2008, 157),
(24, 'До встречи с тобой', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/3/6/363800_67316661.jpg', 'Любовный роман', 'Джоджо Мойес', 2013, 120),
(25, 'Две встречи в Париже', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/6/8/688385_front.jpg', 'Любовный роман', 'Джоджо Мойес', 2016, 97),
(30, 'Конан Дойл', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Conan_doyle.jpg/210px-Conan_doyle.jpg', 'Любовный роман', 'Джек Лондон', 2016, 10000),
(27, 'Унесенные ветром', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/1/0/106930_3474664.jpg', 'Любовный роман', 'Маргарет Митчелл', 2009, 152),
(28, 'После тебя', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/5/8/583866_front.jpg', 'Любовный роман', 'Джоджо Мойес', 2016, 145),
(29, 'Гордость и предубеждение', 'http://img.yakaboo.ua/media/catalog/product/cache/1/image/200x300/234c7c011ba026e66d29567e1be1d1f7/6/1/612694_front.jpg', 'Любовный роман', 'Джейн Остин', 2016, 88);

-- --------------------------------------------------------

--
-- Структура таблицы `Rent`
--

CREATE TABLE IF NOT EXISTS `Rent` (
  `OrderID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `GetDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `Deadline` date NOT NULL,
  KEY `FK_Rent_Book` (`BookID`),
  KEY `FK_Rent_User` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Information about the order';

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Login` (`Login`),
  UNIQUE KEY `Password` (`Password`),
  UNIQUE KEY `Password_2` (`Password`),
  UNIQUE KEY `Password_3` (`Password`),
  UNIQUE KEY `Password_4` (`Password`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Contains user data' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`UserID`, `Status`, `Password`, `Login`) VALUES
(1, 'admin', 'admin333', 'Admin'),
(2, 'reader', 'reader333', 'Reader');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
