
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `localtrainticketbookingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `No.` int(15) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `class` int(5) NOT NULL,
  `type` int(5) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`No.`, `source`, `dest`, `class`, `type`, `Price`) VALUES
(1, 'Patna', 'Bihta', 2, 0, 15),
(2, 'Patna', 'Phulwari', 2, 1, 5),
(3, 'Patna', 'Sachivalaya', 2, 1, 5),
(4, 'Patna', 'Danapur', 2, 1, 10),
(5, 'Patna', 'Neora', 2, 1, 10),
(6, 'Patna', 'Ara', 2, 1, 15),
(7, 'Patna', 'Sadisopur', 2, 1, 15),
(8, 'Patna', 'Sachivalaya', 1, 1, 55),
(9, 'Patna', 'Danapur', 1, 1, 75),
(10, 'Patna', 'Neora', 1, 1, 90),
(11, 'Patna', 'Ara', 1, 1, 110),
(12, 'Patna', 'Sadisopur', 1, 1, 125),
(13, 'Patna', 'Bihta', 1, 1, 150),
(14, 'Patna', 'Phulwari', 1, 1, 55),
(15, 'Phulwari', 'Patna', 2, 1, 5),
(16, 'Phulwari', 'Sachivalaya', 2, 1, 5),
(17, 'Phulwari', 'Danapur', 2, 1, 5),
(18, 'Phulwari', 'Neora', 2, 1, 5),
(19, 'Phulwari', 'Ara', 2, 1, 5),
(20, 'Phulwari', 'Sadisopur', 2, 1, 10),
(21, 'Phulwari', 'Bihta', 2, 1, 10),
(22, 'Phulwari', 'Patna', 1, 1, 55),
(23, 'Phulwari', 'Sachivalaya', 1, 1, 50),
(24, 'Phulwari', 'Danapur', 1, 1, 50),
(25, 'Phulwari', 'Neora', 1, 1, 50),
(26, 'Phulwari', 'Ara', 1, 1, 50),
(27, 'Phulwari', 'Sadisopur', 1, 1, 75),
(28, 'Phulwari', 'Bihta', 1, 1, 75),
(29, 'Sachivalaya', 'Patna', 2, 1, 5),
(30, 'Sachivalaya', 'Phulwari', 2, 1, 5),
(31, 'Sachivalaya', 'Danapur', 2, 1, 5),
(32, 'Sachivalaya', 'Neora', 2, 1, 5),
(33, 'Sachivalaya', 'Ara', 2, 1, 5),
(34, 'Sachivalaya', 'Sadisopur', 2, 1, 10),
(35, 'Sachivalaya', 'Bihta', 2, 1, 10),
(36, 'Sachivalaya', 'Patna', 1, 1, 55),
(37, 'Sachivalaya', 'Phulwari', 1, 1, 50),
(38, 'Sachivalaya', 'Danapur', 1, 1, 50),
(39, 'Sachivalaya', 'Neora', 1, 1, 50),
(40, 'Sachivalaya', 'Ara', 1, 1, 50),
(41, 'Sachivalaya', 'Sadisopur', 1, 1, 50),
(42, 'Sachivalaya', 'Bihta', 1, 1, 75),
(43, 'Danapur', 'Patna', 2, 1, 15),
(44, 'Danapur', 'Phulwari', 2, 1, 5),
(45, 'Danapur', 'Sachivalaya', 2, 1, 5),
(46, 'Danapur', 'Neora', 2, 1, 5),
(47, 'Danapur', 'Ara', 2, 1, 5),
(48, 'Danapur', 'Sadisopur', 2, 1, 10),
(49, 'Danapur', 'Bihta', 2, 1, 10),
(50, 'Danapur', 'Patna', 1, 1, 75),
(51, 'Danapur', 'Phulwari', 1, 1, 50),
(52, 'Danapur', 'Sachivalaya', 1, 1, 50),
(53, 'Danapur', 'Neora', 1, 1, 50),
(54, 'Danapur', 'Ara', 1, 1, 50),
(55, 'Danapur', 'Sadisopur', 1, 1, 50),
(56, 'Danapur', 'Bihta', 1, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Class` int(2) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_No.`, `email`, `source`, `dest`, `Name`, `Class`, `NoOfpass`, `card_no`, `expmonth`, `expyear`, `cvv`, `pin`, `Timestamp`, `Amt`) VALUES
(16, 'aamir@gmail.com', 'Patna', 'Danapur', '2', 0, 2, 7879, 0, 0, 0, 0, '2016-10-09 11:53:31', 40),
(17, 'aamir@gmail.com', 'Phulwari', 'Patna', '1', 0, 1, 0, 0, 0, 0, 0, '2016-10-09 11:55:03', 220),
(18, 'tabish@gmail.com', 'Patna', 'Sachivalaya', '1', 0, 1, 2147483647, 1, 1988, 574, 154, '2019-01-26 19:16:10', 275),
(19, 'zeeshan@gmail.com', 'Patna', 'Sachivalaya', '1', 0, 1, 2147483647, 1, 22, 589, 1254, '2019-01-26 19:32:44', 275);

-- --------------------------------------------------------

--
-- Table structure for table `userdatabase`
--

CREATE TABLE `userdatabase` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdatabase`
--

INSERT INTO `userdatabase` (`UserID`, `Name`, `Email`, `Gender`, `password`, `DoB`, `Joined_on`) VALUES
(15, 'Badshah', 'aamir@gmail.com', 'M', '1234', '1996-09-19', '2016-10-09 11:51:18'),
(16, 'Tabish', 'tabish@gmail.com', 'M', 'q1w2e3r4/', '1986-06-06', '2019-01-26 19:15:22'),
(17, 'Zeeshan', 'zeeshan@gmail.com', 'M', '123456789', '1982-01-22', '2019-01-26 19:31:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`No.`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`T_No.`);

--
-- Indexes for table `userdatabase`
--
ALTER TABLE `userdatabase`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `No.` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userdatabase`
--
ALTER TABLE `userdatabase`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;
