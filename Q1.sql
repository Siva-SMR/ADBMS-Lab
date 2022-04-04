
--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor` varchar(30) NOT NULL,
  `ayear` year(4) NOT NULL
)

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor`, `ayear`) VALUES
('Cage', 1964),
('HANKS', 1956),
('Magiure', 1975),
('McDormand', 1957);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `director` varchar(30) NOT NULL,
  `dyear` year(4) NOT NULL
)

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director`, `dyear`) VALUES
('Coen', 1954),
('Hanson', 1945),
('Raimi', 1959);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `title` varchar(50) NOT NULL,
  `director` varchar(30) DEFAULT NULL,
  `myear` year(4) DEFAULT NULL,
  `rating` float DEFAULT NULL
)

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`title`, `director`, `myear`, `rating`) VALUES
('Fargo', 'Coen', 1996, 8.2),
('Raising', 'Coen', 1987, 7.6),
('Spiderman', 'Raimi', 2002, 7.4),
('Wonder Boys', 'Hanson', 2000, 7.6);
